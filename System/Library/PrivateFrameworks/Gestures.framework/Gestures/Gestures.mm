uint64_t sub_18E67D6B8()
{
  v32 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v1 = type metadata accessor for GesturePhase();
  v2 = sub_18E72B438();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = type metadata accessor for RingBuffer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - v10;
  v12 = *(v1 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v0 + qword_1EAC8DC80);
  v33 = v0;
  v31 = qword_1EAC8DC88;
  if ((*(v0 + qword_1EAC8DC88) & 4) != 0)
  {
    GestureNode.phase.getter(&v28 - v17);
  }

  else
  {
    sub_18E67DBC8(v11);
    sub_18E67DE08(v6, v5);
    (*(v7 + 8))(v11, v6);
    v20 = *(v12 + 48);
    if (v20(v5, 1, v1) == 1)
    {
      GestureNode.phase.getter(v18);
      if (v20(v5, 1, v1) != 1)
      {
        (*(v29 + 8))(v5, v30);
      }
    }

    else
    {
      (*(v12 + 32))(v18, v5, v1);
    }
  }

  (*(v12 + 16))(v16, v18, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v26 = *(v12 + 8);
      v26(v16, v1);
      v27 = *(v33 + v31);
      v26(v18, v1);
      if ((v27 & 8) != 0)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v12 + 8))(v18, v1);
      return 0;
    }

    else
    {
      (*(v12 + 8))(v18, v1);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    (*(v12 + 8))(v18, v1);
    (*(*(v32 - 8) + 8))(v16);
    return 4;
  }

  else
  {
    (*(*(v32 - 8) + 8))(v16);
    v22 = *(v33 + v31);
    (*(v12 + 8))(v18, v1);
    v23 = 2;
    if ((v22 & 2) != 0)
    {
      v23 = 3;
    }

    v24 = 2;
    if ((v22 & 8) != 0)
    {
      v24 = 3;
    }

    if ((v22 & 4) != 0)
    {
      return v24;
    }

    else
    {
      return v23;
    }
  }
}

uint64_t sub_18E67DB4C(void *a1)
{
  v1 = a1;
  v2 = sub_18E67D6B8();

  return v2;
}

unint64_t sub_18E67DBC8@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 368) == MEMORY[0x1E69E7CA8] + 8)
  {
    v8 = *(v1 + 272);
    v9 = *(v1 + 280);
    v10 = (v1 + 296);
    *a1 = *(v1 + 256);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    v11 = *(v1 + 288);
    *(a1 + 32) = v11;
    *(a1 + 40) = *v10;

    return sub_18E6AA03C(v9, v11);
  }

  else
  {
    v3 = v1 + *(*v1 + 384);
    v4 = *(type metadata accessor for GesturePhaseQueue() + 32);
    type metadata accessor for GesturePhase();
    v5 = type metadata accessor for RingBuffer();
    v6 = *(*(v5 - 8) + 16);

    return v6(a1, v3 + v4, v5);
  }
}

void *sub_18E67DD1C(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 16);
  v11 = *(v9 - 8) + 16;
  v12 = *(*(v9 - 8) + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;

  v10(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E67DE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  if (sub_18E72B378())
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v2 + 8);
    result = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
      return result;
    }

    sub_18E68BD30(result, a1);
    v5 = 0;
  }

  v8 = *(*(*(a1 + 16) - 8) + 56);

  return v8(a2, v5, 1);
}

uint64_t sub_18E67DEC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E67E390();
  *a1 = result;
  return result;
}

_BYTE *sub_18E67DEF4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v5 > v6)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 4;
  if (v8 >= 4)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 4;
    v8 = v11 + 4;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_20:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      (*(v4 + 16))(__dst);
      v13 = 2;
      goto LABEL_32;
    }

    if (v8 == 3)
    {
      v14 = *a2;
      sub_18E683B80(*a2);
      *__dst = v14;
      v13 = 3;
      goto LABEL_32;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      __dst[v7] = 0;
      return __dst;
    }

    if (v8 == 1)
    {
      (*(v4 + 16))(__dst);
      v13 = 1;
LABEL_32:
      __dst[v7] = v13;
      return __dst;
    }
  }

  return memcpy(__dst, a2, v7 + 1);
}

unint64_t GestureNode.phase.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 368) == MEMORY[0x1E69E7CA8] + 8)
  {
    v8 = *(v1 + 240);
    *a1 = v8;
    v9 = *(v1 + 248);
    *(a1 + 8) = v9;

    return sub_18E6AA03C(v8, v9);
  }

  else
  {
    v3 = v1 + *(*v1 + 384);
    v4 = *(type metadata accessor for GesturePhaseQueue() + 28);
    v5 = type metadata accessor for GesturePhase();
    v6 = *(*(v5 - 8) + 16);

    return v6(a1, v3 + v4, v5);
  }
}

uint64_t sub_18E67E1E8(uint64_t a1, uint64_t a2)
{
  v3 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);

  return v6(v7);
}

void sub_18E67E268(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v2 = ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 4;
  if (v3 >= 4)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_19;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 4;
    v3 = v6 + 4;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_19:
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
      return;
    }

LABEL_25:
    (*(*(*(a2 + 16) - 8) + 8))();
    return;
  }

  if (v3 == 2)
  {
    goto LABEL_25;
  }

  if (v3 == 3)
  {
    sub_18E683B98(*a1);
  }
}

id gfGestureNodeCreateDefault(key:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DB20, &qword_18E72CA70);
  swift_allocObject();
  sub_18E67E4B8(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v8 = 0;
  sub_18E67E780(&v8);
  v7 = 1;
  sub_18E67E780(&v7);
  v6 = 2;
  sub_18E67E780(&v6);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DB28, &qword_18E72CA78));

  v4 = sub_18E6825E4(v3, a1);

  swift_unknownObjectUnownedAssign();

  return v4;
}

id GFGestureNodeCreateDefault(uint64_t a1)
{
  v1 = gfGestureNodeCreateDefault(key:)(a1);

  return v1;
}

uint64_t sub_18E67E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 232) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 248) = 4;
  *(v4 + 280) = 0;
  *(v4 + 288) = 4;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 256) = xmmword_18E72CA60;
  sub_18E6AA03C(0, 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8DD60, &unk_18E7318B0);
  v9 = sub_18E72B1F8();
  *(v9 + 16) = 5;
  *(v9 + 32) = 0;
  *(v9 + 40) = 4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 4;
  *(v9 + 64) = 0;
  *(v9 + 72) = 4;
  *(v9 + 80) = 0;
  *(v9 + 88) = 4;
  *(v9 + 96) = 0;
  *(v9 + 104) = 4;
  *(v4 + 272) = v9;
  v11 = a1;
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  return sub_18E67E5EC(&v11, a2, a3, a4);
}

uint64_t sub_18E67E5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (qword_1ED6F8830 != -1)
  {
LABEL_11:
    swift_once();
  }

  v9 = dword_1ED6F8938;
  do
  {
    v10 = v9 + 1;
    if (v9 == -1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v11 = v9;
    atomic_compare_exchange_strong_explicit(&dword_1ED6F8938, &v11, v10, memory_order_relaxed, memory_order_relaxed);
    v12 = v11 == v9;
    v9 = v11;
  }

  while (!v12);
  *(v4 + 16) = v10;
  *(v4 + 64) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  swift_unknownObjectWeakInit();
  *(v4 + 104) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  swift_unknownObjectUnownedInit();
  *(v4 + 144) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  swift_unknownObjectUnownedInit();
  *(v4 + 152) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = v13;
  *(v4 + 176) = MEMORY[0x1E69E7CD0];
  v14 = *(v4 + 40);
  *(v4 + 40) = v8;

  v15 = *(v4 + 32);
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  v16 = *(a4 + 16);
  if (v16)
  {
    v17 = a4 + 32;
    do
    {
      v18 = *(v17 + 1);
      v19 = *(v17 + 2);
      v20 = *(v17 + 8);
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v27[0] = *v17;
      v27[1] = v18;
      v27[2] = v19;
      v24 = v20;
      v25 = v21;
      v26 = v22;
      sub_18E67EEC4(v20, v21, v22);
      sub_18E67E800(v27, &v24);
      sub_18E682A3C(v24, v25, v26);
      v17 += 32;
      --v16;
    }

    while (v16);
  }

  return v4;
}

uint64_t sub_18E67E780(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_18E6A8C70(v1 | 0x20000, 0, 0, 3);
  sub_18E682A3C(0, 0, 3);
  sub_18E6A8C70(v1 | 0x20100, 0, 0, 3);

  return sub_18E682A3C(0, 0, 3);
}

uint64_t sub_18E67E800(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1[1];
  v45 = a1[2];
  v46 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = v3[2];
  v47 = v7[2];
  v48 = (v3 + 2);
  v9 = *v3;
  v8 = v3[1];
  v10 = *(v8 + 16);
  if (*v3)
  {
    v11 = *v3;

    v43 = v8;
    v12 = sub_18E726AA0(v4, v5, v6, v8 + 32, v10, (v9 + 16), v9 + 32);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_32;
  }

  if (!v10)
  {
LABEL_32:
    sub_18E67ED20(v4, v5, v6);
    v43 = v3[1];
    v31 = *(v43 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v7;
    v15 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E681264(0, v7[2] + 1, 1);
      v7 = *v48;
    }

    v16 = v47;
    v18 = v45;
    v17 = v46;
    v12 = v31 - 1;
    v34 = v7[2];
    v33 = v7[3];
    if (v34 >= v33 >> 1)
    {
      sub_18E681264((v33 > 1), v34 + 1, 1);
      v7 = *v48;
    }

    v7[2] = v34 + 1;
    v7[v34 + 4] = MEMORY[0x1E69E7CD0];
    goto LABEL_37;
  }

  v42 = v3;
  v43 = v3[1];
  v12 = 0;
  v19 = (v8 + 48);
  while (1)
  {
    v24 = *(v19 - 2);
    v23 = *(v19 - 1);
    v25 = *v19;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        if (v6 == 2)
        {
          sub_18E67EEC4(v4, v5, 2);
          sub_18E67EEC4(v24, v23, 2);
          sub_18E67EEC4(v4, v5, 2);
          sub_18E67EEC4(v24, v23, 2);
          v30 = sub_18E7098C0(v24, v4);
          sub_18E682A3C(v24, v23, 2);
          sub_18E682A3C(v4, v5, 2);
          sub_18E682A3C(v4, v5, 2);
          sub_18E682A3C(v24, v23, 2);
          if ((v30 & 1) != 0 && v23 == v5)
          {
LABEL_30:
            v3 = v42;
            goto LABEL_3;
          }

          goto LABEL_9;
        }

        sub_18E67EEC4(v4, v5, v6);
        v20 = v24;
        v21 = v23;
        v22 = 2;
        goto LABEL_8;
      }

      if (v6 == 3)
      {
        sub_18E682A3C(*(v19 - 2), *(v19 - 1), 3);
        sub_18E682A3C(v4, v5, 3);
        if (v24 == v4)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      goto LABEL_7;
    }

    if (*v19)
    {
      break;
    }

    if (!v6)
    {
      sub_18E682A3C(*(v19 - 2), *(v19 - 1), 0);
      sub_18E682A3C(v4, v5, 0);
      if (v24 == v4)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    }

LABEL_7:
    v20 = v4;
    v21 = v5;
    v22 = v6;
LABEL_8:
    sub_18E67EEC4(v20, v21, v22);
    sub_18E682A3C(v24, v23, v25);
    sub_18E682A3C(v4, v5, v6);
LABEL_9:
    v19 += 24;
    if (v10 == ++v12)
    {
      v3 = v42;
      goto LABEL_32;
    }
  }

  if (v6 != 1)
  {
    sub_18E67EEC4(v4, v5, v6);
    v20 = v24;
    v21 = v23;
    v22 = 1;
    goto LABEL_8;
  }

  if (v24 != v4 || v23 != v5)
  {
    v27 = *(v19 - 2);
    v28 = *(v19 - 1);
    v29 = sub_18E72B7C8();
    sub_18E67EEC4(v4, v5, 1);
    sub_18E67EEC4(v24, v23, 1);
    sub_18E682A3C(v24, v23, 1);
    sub_18E682A3C(v4, v5, 1);
    if (v29)
    {
      goto LABEL_30;
    }

    goto LABEL_9;
  }

  sub_18E67EEC4(v4, v5, 1);
  sub_18E67EEC4(v4, v5, 1);
  sub_18E682A3C(v4, v5, 1);
  sub_18E682A3C(v4, v5, 1);
  v3 = v42;
LABEL_3:
  v16 = v47;
  v15 = v48;
  v18 = v45;
  v17 = v46;
LABEL_37:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18E726554(v7);
  }

  v35 = v7[v12 + 4];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v35;
  if (v44)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  sub_18E681CA0(v37 | (v18 << 16) | v17, v36, &v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18E726554(v7);
  }

  v38 = v7[2];
  v7[v12 + 4] = v49;
  *v15 = v7;
  v39 = v50;
  if (v16 >= v38)
  {
    return (v39 & 0xFF00) == 512;
  }

  v49 = sub_18E681284(v43, v7);
  sub_18E6813C4(&v49, sub_18E684CE0);
  v40 = v49[2];
  if (v40 == v7[2])
  {
    sub_18E681448((v49 + 4), v40, v3);

    return (v39 & 0xFF00) == 512;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18E67ED20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;
  sub_18E67EEC4(a1, a2, a3);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_18E67F004(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_18E67F004((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 24 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  v4[1] = v9;
  if (!*v4)
  {
    if (v13 < 0xF)
    {
      return result;
    }

    return sub_18E71A3F4(sub_18E7265DC);
  }

  if (MEMORY[0x193AD1300](*(*v4 + 16) & 0x3FLL) <= v13)
  {
    return sub_18E71A3F4(sub_18E7265DC);
  }

  v15 = *v4;
  result = swift_isUniquelyReferenced_native();
  v16 = *v4;
  if ((result & 1) == 0)
  {
    if (!v16)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v17 = *v4;
    v18 = sub_18E72ADC8();

    *v4 = v18;
    v16 = v18;
  }

  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v16 + 16);
  v20 = *(*v8 + 16) + ~(*(v16 + 24) >> 6);

  return sub_18E72AD58();
}

uint64_t sub_18E67EEC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

char *sub_18E67EEE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
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

char *sub_18E67F004(char *a1, int64_t a2, char a3)
{
  result = sub_18E67EEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E67F04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 3 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v20);
      MEMORY[0x193AD1DF0](v21);
      sub_18E72B8A8();
      if (v22 != 2)
      {
        MEMORY[0x193AD1DF0](v22 & 1);
      }

      result = sub_18E72B8E8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 3 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E67F2CC(uint64_t *a1, uint64_t (*a2)(uint64_t *, void *, uint64_t *, uint64_t *))
{
  v4 = a1[1];
  result = sub_18E72B768();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD40, &qword_18E731FF8);
        v7 = sub_18E72B1F8();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_18E729880(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_18E68205C(0, v4, 1, a1, a2);
  }

  return result;
}

void sub_18E67F50C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v0 = 0xC000000000000001;
    sub_18E683A1C(&v0, 1);
  }
}

uint64_t sub_18E67F5E8(uint64_t a1, uint64_t a2)
{
  v164 = *(a2 + 16);
  v5 = type metadata accessor for GesturePhase();
  v159 = type metadata accessor for RingBufferIterator();
  v145 = *(v159 - 8);
  v6 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v135 - v7;
  v8 = sub_18E72B438();
  v148 = *(v8 - 8);
  v149 = v8;
  v9 = *(v148 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v135 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v135 - v14;
  v15 = type metadata accessor for RingBuffer();
  v160 = *(v15 - 1);
  v16 = *(v160 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v147 = (&v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v135 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v135 - v22);
  v24 = *(v5 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v155 = &v135 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v163 = &v135 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v154 = &v135 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v140 = &v135 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v141 = &v135 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v142 = &v135 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v150 = &v135 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v135 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v135 - v45;
  v47 = sub_18E683BC8(a1, a2);
  v162 = a2;
  v48 = *(a2 + 32);
  v49 = v2;
  v50 = &v2[v48];
  v165 = v24;
  if (v47)
  {
    swift_getWitnessTable();
    result = sub_18E72B378();
    if (result)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v52 = v15[11];
    v53 = *&v50[v52];
    v54 = v53 - 1;
    if (__OFSUB__(v53, 1))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v55 = *v50;
    v56 = __OFADD__(v54, *v50);
    v57 = v54 + *v50;
    if (v56)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (!v55)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v55 == -1 && v57 == 0x8000000000000000)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    result = v57 % v55;
    *&v50[v52] = v57 % v55;
    v58 = *(v50 + 1);
    v56 = __OFSUB__(v58, 1);
    v59 = v58 - 1;
    if (v56)
    {
      goto LABEL_84;
    }

    *(v50 + 1) = v59;
    v60 = *(v50 + 2);
    sub_18E72B298();
    v61 = v165;
    result = (*(v165 + 8))(v46, v5);
    v62 = a1;
    v63 = v49;
LABEL_30:
    v96 = &v63[*(v162 + 32)];
    v98 = *v96;
    v97 = *(v96 + 1);
    if (v97 == *v96)
    {
      v99 = v15[10];
      v100 = *&v96[v99];
      v56 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v56)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (!v97)
      {
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
        goto LABEL_93;
      }

      if (v97 == -1 && v101 == 0x8000000000000000)
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      *&v96[v99] = v101 % v97;
    }

    else
    {
      v56 = __OFADD__(v97, 1);
      v102 = v97 + 1;
      if (v56)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      *(v96 + 1) = v102;
    }

    v103 = v15[11];
    v104 = *&v96[v103];
    v105 = sub_18E72B278();
    sub_18E72B1D8();
    v106 = *(v96 + 2);
    sub_18E68E2C0(v104, v106);
    (*(v61 + 24))(v106 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v104, v62, v5);
    result = nullsub_1(v105);
    if (__OFADD__(v104, 1))
    {
      __break(1u);
    }

    else if (v98)
    {
      if (v98 != -1 || v104 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *&v96[v103] = (v104 + 1) % v98;
        return result;
      }

      goto LABEL_88;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v64 = v160;
  v65 = *(v160 + 16);
  v138 = v50;
  v161 = v15;
  v65(v23, v50, v15);
  v66 = *(v24 + 16);
  v139 = a1;
  v151 = v66;
  v152 = v24 + 16;
  v66(v44, a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = v23;
  v146 = v23;
  if (EnumCaseMultiPayload <= 2)
  {
    v63 = v49;
    if (EnumCaseMultiPayload)
    {
      v69 = v156;
      (*(*(v164 - 8) + 8))(v44);
    }

    else
    {
      (*(*(v164 - 8) + 8))(v44);
      v69 = v156;
    }

    goto LABEL_24;
  }

  v63 = v49;
  v69 = v156;
  if ((EnumCaseMultiPayload - 4) < 2)
  {
LABEL_24:
    v15 = v161;
    sub_18E67DE08(v161, v69);
    v61 = v165;
    v92 = *(v165 + 48);
    if (v92(v69, 1, v5) == 1)
    {
      v93 = v155;
      v151(v155, &v63[*(v162 + 28)], v5);
      v94 = v92(v69, 1, v5);
      v95 = v93;
      v62 = v139;
      if (v94 != 1)
      {
        (*(v148 + 8))(v69, v149);
      }
    }

    else
    {
      v95 = v155;
      (*(v61 + 32))(v155, v69, v5);
      v62 = v139;
    }

    if ((sub_18E680724(v62, v5) & 1) == 0)
    {
      v107 = v154;
      v108 = v151;
      v151(v154, v95, v5);
      v109 = v153;
      v108(v153, v62, v5);
      type metadata accessor for GesturePhaseQueue.InvalidTransition();
      swift_getWitnessTable();
      swift_allocError();
      sub_18E68498C(v107, v109, v110);
      swift_willThrow();
      (*(v61 + 8))(v95, v5);
      return (*(v160 + 8))(v146, v15);
    }

    (*(v61 + 8))(v95, v5);
    result = (*(v64 + 40))(v138, v146, v15);
    goto LABEL_30;
  }

  v70 = *(v165 + 8);
  v137 = v165 + 8;
  v136 = v70;
  v70(v44, v5);
  v71 = v150;
  v151(v150, &v63[*(v162 + 28)], v5);
  v72 = swift_getEnumCaseMultiPayload();
  if (v72 > 2)
  {
    v142 = v63;
    v73 = v147;
    if ((v72 - 4) >= 2)
    {
      v136(v71, v5);
    }

    goto LABEL_22;
  }

  v73 = v147;
  if (v72 != 1)
  {
    v142 = v63;
    (*(*(v164 - 8) + 8))(v71);
LABEL_22:
    v78 = *v68;
    v79 = v161;
    v80 = v154;
    v151(v154, v68 + v161[9], v5);
    sub_18E680594(v78, v80, v5, v73);
    v81 = v158;
    sub_18E68065C(v79, v158);
    v82 = v157;
    v83 = v159;
    sub_18E684690(v159, v157);
    v84 = *(v165 + 48);
    v150 = (v165 + 48);
    v85 = v84;
    v86 = v84(v82, 1, v5);
    v87 = v163;
    if (v86 != 1)
    {
      v147 = *(v165 + 32);
      v143 = v165 + 40;
      (v147)(v163, v82, v5);
      while (1)
      {
        result = sub_18E69806C(v87, v164);
        if (result)
        {
          v112 = *v73;
          v111 = v73[1];
          if (v111 == *v73)
          {
            v113 = v161[10];
            v114 = *(v73 + v113);
            v56 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v56)
            {
              goto LABEL_90;
            }

            if (!v111)
            {
              goto LABEL_91;
            }

            if (v111 == -1 && v115 == 0x8000000000000000)
            {
              goto LABEL_95;
            }

            *(v73 + v113) = v115 % v111;
          }

          else
          {
            v56 = __OFADD__(v111, 1);
            v116 = v111 + 1;
            if (v56)
            {
              goto LABEL_89;
            }

            v73[1] = v116;
          }

          v117 = v161[11];
          v118 = *(v73 + v117);
          v119 = sub_18E72B278();
          sub_18E72B1D8();
          v120 = v73[2];
          sub_18E68E2C0(v118, v120);
          (*(v165 + 40))(v120 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v118, v163, v5);
          result = nullsub_1(v119);
          if (__OFADD__(v118, 1))
          {
            goto LABEL_78;
          }

          if (!v112)
          {
            goto LABEL_79;
          }

          if (v112 == -1 && v118 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_92;
          }

          *(v73 + v117) = (v118 + 1) % v112;
          v81 = v158;
          v83 = v159;
          v82 = v157;
          v87 = v163;
        }

        else
        {
          v136(v87, v5);
        }

        sub_18E684690(v83, v82);
        if (v85(v82, 1, v5) == 1)
        {
          break;
        }

        (v147)(v87, v82, v5);
      }
    }

    (*(v145 + 8))(v81, v83);
    v64 = v160;
    v88 = v161;
    v89 = *(v160 + 32);
    v90 = v144;
    v89(v144, v73, v161);
    v91 = v146;
    (*(v64 + 8))(v146, v88);
    v89(v91, v90, v88);
    v69 = v156;
    v63 = v142;
    goto LABEL_24;
  }

  v74 = *(*(v164 - 8) + 8);
  v74(v71);
  v75 = v143;
  v76 = v161;
  sub_18E67DE08(v161, v143);
  v77 = v165;
  if ((*(v165 + 48))(v75, 1, v5) == 1)
  {
    (*(v148 + 8))(v75, v149);
    v64 = v160;
    goto LABEL_24;
  }

  v121 = v142;
  (*(v77 + 32))(v142, v75, v5);
  v122 = v141;
  v151(v141, v121, v5);
  v123 = swift_getEnumCaseMultiPayload();
  if (v123 > 2)
  {
    if ((v123 - 4) >= 2)
    {
      v136(v122, v5);
    }

    goto LABEL_67;
  }

  v124 = v146;
  if (v123 <= 1)
  {
    (v74)(v122, v164);
LABEL_67:
    v136(v121, v5);
    v64 = v160;
    goto LABEL_24;
  }

  (v74)(v122, v164);
  swift_getWitnessTable();
  result = sub_18E72B378();
  if (result)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v125 = v76[11];
  v126 = *(v124 + v125);
  v127 = v126 - 1;
  v64 = v160;
  if (__OFSUB__(v126, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v128 = *v124;
  v56 = __OFADD__(v127, *v124);
  v129 = v127 + *v124;
  if (v56)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!v128)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v128 == -1 && v129 == 0x8000000000000000)
  {
    goto LABEL_101;
  }

  result = v129 % v128;
  *(v124 + v125) = v129 % v128;
  v130 = v124[1];
  v56 = __OFSUB__(v130, 1);
  v131 = v130 - 1;
  if (!v56)
  {
    v124[1] = v131;
    v132 = v124[2];
    v133 = v140;
    sub_18E72B298();
    v134 = v136;
    v136(v133, v5);
    v134(v121, v5);
    goto LABEL_24;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_18E680594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[1] = 0;
  result = type metadata accessor for RingBuffer();
  *(a4 + *(result + 40)) = 0;
  *(a4 + *(result + 44)) = 0;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *a4 = a1;
    a4[2] = sub_18E6844A4(a2, a1, a3);
    v10 = *(*(a3 - 8) + 32);
    v11 = a4 + *(v9 + 36);

    return v10(v11, a2, a3);
  }

  return result;
}

uint64_t sub_18E68065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  return sub_18E6845A8(v6, a2);
}

uint64_t sub_18E680724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v33 - v19;
  v21 = *(v18 + 48);
  v34 = v6;
  v22 = *(v6 + 16);
  v23 = v3;
  v24 = v21;
  v22(v20, v23, v4);
  v22(&v20[v24], a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v22(v14, v20, v4);
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 1)
      {
        if (!v26)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      if (v26 == 2)
      {
        goto LABEL_25;
      }

      if (v26 != 3)
      {
LABEL_31:
        (*(*(*(v4 + 16) - 8) + 8))(v14);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = v33;
      v22(v33, v20, v4);
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          goto LABEL_25;
        }

LABEL_13:
        if (v26 != 1)
        {
          goto LABEL_31;
        }

LABEL_25:
        v30 = *(v4 + 16);
        v31 = *(*(v30 - 8) + 8);
        v31(&v20[v24], v30);
        v31(v14, v30);
        goto LABEL_30;
      }

LABEL_24:
      v16 = v34;
      (*(v34 + 8))(&v20[v24], v4);
      (*(*(*(v4 + 16) - 8) + 8))(v14);
      v29 = 1;
      goto LABEL_33;
    }

    v22(v10, v20, v4);
    v27 = swift_getEnumCaseMultiPayload();
    (*(*(*(v4 + 16) - 8) + 8))(v10);
    if (v27 != 4)
    {
      goto LABEL_32;
    }

LABEL_30:
    v29 = 1;
    v16 = v34;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v28 = swift_getEnumCaseMultiPayload();
  if (v28 <= 1)
  {
    if (v28 >= 2)
    {
      goto LABEL_32;
    }

LABEL_29:
    (*(*(*(v4 + 16) - 8) + 8))(&v20[v24]);
    goto LABEL_30;
  }

  if (v28 == 2)
  {
    goto LABEL_29;
  }

  if (v28 != 3)
  {
LABEL_32:
    v29 = 0;
    v4 = TupleTypeMetadata2;
    goto LABEL_33;
  }

  v16 = v34;
  (*(v34 + 8))(&v20[v24], v4);
  v29 = 1;
LABEL_33:
  (*(v16 + 8))(v20, v4);
  return v29;
}

uint64_t sub_18E680BF0(char *a1, uint64_t *a2, uint64_t (*a3)(char *, uint64_t *), void (*a4)(char *, uint64_t, uint64_t *))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v16 = *a1;
  v17 = v7;
  v18 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result = a3(&v16, &v13);
  if (result)
  {
    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      a4(&v16, v4, &v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18E680CBC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18E72AE18();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *a1;
  return (*(*v3 + 344))(&v9, a2);
}

uint64_t sub_18E680FFC()
{
  if (qword_1ED6F7FC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F9348 != 1)
  {
    return 0;
  }

  if (qword_1ED6F7F70 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F7EF1)
  {
    return 1;
  }

  if (qword_1ED6F7F80 != -1)
  {
    swift_once();
  }

  explicit = atomic_load_explicit(qword_1ED6F7F88, memory_order_acquire);
  switch(explicit)
  {
    case 0uLL:
      v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v6 = sub_18E72AFC8();
      v0 = [v5 initWithSuiteName_];

      if (v0)
      {
        v7 = sub_18E72AFC8();
        v2 = [v0 BOOLForKey_];

        v1 = 1;
        if (v2)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        atomic_store(v8, qword_1ED6F7F88);
        if (qword_1ED6F7F58 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      return 0;
    case 1uLL:
      return 1;
    case 2uLL:
      return 0;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_17:
  v9 = v2;
  v10 = 0;
  atomic_compare_exchange_strong_explicit(&byte_1ED6F7F60, &v10, v1, memory_order_acquire, memory_order_acquire);
  if (!v10)
  {
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    v12 = sub_18E72AFC8();
    CFNotificationCenterAddObserver(v11, 0, sub_18E6BE368, v12, 0, CFNotificationSuspensionBehaviorHold);
  }

  return v9;
}

void *sub_18E681264(void *a1, int64_t a2, char a3)
{
  result = sub_18E67F028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E681284(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD20, &qword_18E731FA8);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 1;
    }

    v9 = v8 >> 5;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = (a1 + 48);
      v14 = v4 - 1;
      while (1)
      {
        v15 = &v6[v11];
        v16 = *(v13 - 2);
        v17 = *(v13 - 1);
        v18 = *v12;
        v15[4] = v16;
        v15[5] = v17;
        v19 = *v13;
        *(v15 + 48) = *v13;
        v15[7] = v18;
        sub_18E67EEC4(v16, v17, v19);
        if (!v14)
        {
          break;
        }

        v13 += 24;

        v11 += 4;
        --v14;
        ++v12;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }
  }

  else
  {
    v2 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v6[3];
  if (v21 < 2)
  {
    return v6;
  }

  v22 = v21 >> 1;
  v23 = __OFSUB__(v22, v2);
  v24 = v22 - v2;
  if (!v23)
  {
    v6[2] = v24;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6813C4(void **a1, uint64_t (*a2)(uint64_t *, void *, uint64_t *, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_18E726540(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_18E67F2CC(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_18E681448(size_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_18E682224(a1, a2, sub_18E681534);
  v7 = sub_18E682558();
  v8 = sub_18E68154C(v6, 0, 1, v7, sub_18E726744);
  if (*(v6 + 16) <= 0xFuLL)
  {

    v8 = 0;
  }

  v10 = *a3;
  v9 = a3[1];
  *a3 = v8;
  a3[1] = v6;

  v11 = sub_18E6815D4(a1, a2, sub_18E682570);
  v12 = a3[2];
  a3[2] = v11;
}

uint64_t sub_18E681534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_18E67EEC4(v3, v2, v4);
}

uint64_t sub_18E68154C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x193AD1330](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x193AD1340](v10, a4);
    sub_18E696DE8(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_18E6815D4(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = result;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v8 = *(MEMORY[0x1E69E7CC0] + 24);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD30, &qword_18E731FE0);
      v6 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v6);
      v7 = result - 32;
      if (result < 32)
      {
        v7 = result - 25;
      }

      v8 = 2 * (v7 >> 3);
      v6[2] = a2;
      v6[3] = v8;
      if (v4)
      {
LABEL_6:
        if ((a2 & 0x8000000000000000) == 0)
        {
          v9 = v4 + 32 * a2;
          if (v4)
          {
LABEL_8:
            v10 = (v8 >> 1) - a2;
            v11 = a2 - 1;
            v12 = v6 + 5;
            if (v4 == v9)
            {
LABEL_11:
              __break(1u);
            }

            else
            {
              while (1)
              {
                v13 = *(v4 + 8);
                v14 = *(v4 + 24);
                v15 = *(v4 + 16);
                v37 = *v4;
                v38 = v13;
                v39 = v15;
                v40 = v14;
                sub_18E67EEC4(v37, v13, v15);

                a3(&v36, &v37);
                sub_18E682A3C(v37, v38, v39);

                *(v12 - 1) = v36;
                if (!v11)
                {
                  break;
                }

                --v11;
                ++v12;
                v4 += 32;
                if (v4 == v9)
                {
                  goto LABEL_11;
                }
              }
            }

            v16 = v4 + 32;
            if (v16 == v9)
            {
              goto LABEL_30;
            }

            while (1)
            {
              v17 = *(v16 + 8);
              v18 = *(v16 + 24);
              v19 = *(v16 + 16);
              v37 = *v16;
              v38 = v17;
              v39 = v19;
              v40 = v18;
              sub_18E67EEC4(v37, v17, v19);

              a3(&v36, &v37);
              sub_18E682A3C(v37, v38, v39);

              v20 = v36;
              if (!v10)
              {
                v21 = v6[3];
                if (((v21 >> 1) + 0x4000000000000000) < 0)
                {
                  goto LABEL_39;
                }

                v22 = a3;
                v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
                if (v23 <= 1)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = v23;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD30, &qword_18E731FE0);
                v25 = swift_allocObject();
                v26 = _swift_stdlib_malloc_size(v25);
                v27 = v26 - 32;
                if (v26 < 32)
                {
                  v27 = v26 - 25;
                }

                v28 = v27 >> 3;
                v25[2] = v24;
                v25[3] = 2 * (v27 >> 3);
                v29 = (v25 + 4);
                v30 = v6[3] >> 1;
                if (v6[2])
                {
                  v31 = v6 + 4;
                  if (v25 != v6 || v29 >= v31 + 8 * v30)
                  {
                    memmove(v25 + 4, v31, 8 * v30);
                  }

                  v6[2] = 0;
                }

                v12 = (v29 + 8 * v30);
                v10 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

                v6 = v25;
                a3 = v22;
              }

              v32 = __OFSUB__(v10--, 1);
              if (v32)
              {
                goto LABEL_38;
              }

              v16 += 32;
              *v12++ = v20;
              if (v16 == v9)
              {
                goto LABEL_30;
              }
            }
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_40;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      if (v4)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v10 = 0;
LABEL_30:
  v33 = v6[3];
  if (v33 < 2)
  {
    return v6;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v10);
  v35 = v34 - v10;
  if (!v32)
  {
    v6[2] = v35;
    return v6;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_18E6818BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 3 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v20);
      MEMORY[0x193AD1DF0](v21);
      sub_18E72B8A8();
      if (v22 != 2)
      {
        MEMORY[0x193AD1DF0](v22 & 1);
      }

      result = sub_18E72B8E8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 3 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_18E681B6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_18E681CA0@<X0>(unsigned int a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a1;
  v8 = BYTE2(a1);
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v7);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  v11 = HIWORD(a1) & 1;
  v40 = a3;
  sub_18E72B8A8();
  if (v8 != 2)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  v12 = a1 & 0x100;
  v13 = sub_18E72B8E8();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = 1;
    do
    {
      v18 = (*(v9 + 48) + 3 * v15);
      if (*v18 == v7 && (((v12 != 0) ^ v18[1]) & 1) == 0)
      {
        v19 = v18[2];
        if (v19 == 2)
        {
          if (v8 == 2)
          {
            goto LABEL_12;
          }
        }

        else if (v8 != 2 && v11 == (v19 & 1))
        {
LABEL_12:
          v17 = 0;
          v20 = 1;
          goto LABEL_15;
        }
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v17 = 1;
  }

LABEL_15:
  v21 = *(v9 + 16);
  result = v21 + v17;
  if (__OFADD__(v21, v17))
  {
    __break(1u);
    goto LABEL_43;
  }

  v23 = *(v9 + 24);
  if (v23 >= result && (a2 & 1) != 0)
  {
    v24 = v41;
    if (v20)
    {
LABEL_19:
      v25 = (*(*v24 + 48) + 3 * v15);
      v26 = v25[1];
      v27 = v25[2];
      *v40 = *v25;
      v40[1] = v26;
      v40[2] = v27;
      *v25 = v7;
      v25[1] = BYTE1(v12);
      v25[2] = BYTE2(a1);
      return result;
    }

    goto LABEL_40;
  }

  v39 = v20;
  if (a2)
  {
    v24 = v41;
    sub_18E6818BC(result);
  }

  else
  {
    if (v23 >= result)
    {
      result = sub_18E6C7174();
      v24 = v41;
      if (v39)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }

    v24 = v41;
    sub_18E67F04C(result);
  }

  v28 = *v24;
  v29 = *(*v24 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v7);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  sub_18E72B8A8();
  if (v8 != 2)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  result = sub_18E72B8E8();
  v30 = -1 << *(v28 + 32);
  v15 = result & ~v30;
  if (((*(v28 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_39:
    if (v39)
    {
      goto LABEL_44;
    }

LABEL_40:
    v34 = *v24;
    *(*v24 + 8 * (v15 >> 6) + 56) |= 1 << v15;
    v35 = (*(v34 + 48) + 3 * v15);
    *v35 = v7;
    v35[1] = BYTE1(v12);
    v35[2] = BYTE2(a1);
    v36 = *(v34 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      *(v34 + 16) = v38;
      v40[2] = 0;
      *v40 = 512;
      return result;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v31 = ~v30;
  while (1)
  {
    v32 = (*(v28 + 48) + 3 * v15);
    if (*v32 != v7 || (((v12 != 0) ^ v32[1]) & 1) != 0)
    {
      goto LABEL_31;
    }

    v33 = v32[2];
    if (v33 != 2)
    {
      break;
    }

    if (v8 == 2)
    {
      goto LABEL_37;
    }

LABEL_31:
    v15 = (v15 + 1) & v31;
    if (((*(v28 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v8 == 2 || v11 != (v33 & 1))
  {
    goto LABEL_31;
  }

LABEL_37:
  if (v39)
  {
    goto LABEL_19;
  }

LABEL_44:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

uint64_t sub_18E68205C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t *, void *, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 32 * a3 - 32;
    v9 = result - a3;
    v26 = *a4;
LABEL_3:
    v24 = v8;
    v25 = a3;
    v10 = v7 + 32 * a3;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v23 = v9;
    while (1)
    {
      v28 = v9;
      v16 = *v8;
      v15 = *(v8 + 8);
      v17 = *(v8 + 24);
      v18 = *(v8 + 16);
      v33[0] = v11;
      v33[1] = v12;
      v34 = v13;
      v35 = v14;
      v30[0] = v16;
      v30[1] = v15;
      v31 = v18;
      v32 = v17;
      v36 = v11;
      v29 = v12;
      sub_18E67EEC4(v11, v12, v13);

      sub_18E67EEC4(v16, v15, v18);

      v19 = v6;
      v20 = a5(v33, &v35, v30, &v32);
      sub_18E682A3C(v16, v15, v18);

      sub_18E682A3C(v36, v29, v13);

      if (v19)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        v6 = 0;
        v7 = v26;
LABEL_10:
        a3 = v25 + 1;
        v8 = v24 + 32;
        v9 = v23 - 1;
        if (v25 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
      }

      v7 = v26;
      if (!v26)
      {
        __break(1u);
        return result;
      }

      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v13 = *(v8 + 48);
      v14 = *(v8 + 56);
      v21 = *(v8 + 16);
      *(v8 + 32) = *v8;
      *(v8 + 48) = v21;
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 16) = v13;
      *(v8 + 24) = v14;
      v8 -= 32;
      v9 = v28 + 1;
      v6 = 0;
      if (v28 == -1)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

size_t sub_18E682224(size_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = result;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = *(MEMORY[0x1E69E7CC0] + 24);
      if (result)
      {
LABEL_4:
        if ((a2 & 0x8000000000000000) == 0)
        {
          v38 = v4 + 32 * a2;
          if (v4)
          {
            goto LABEL_6;
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
      v6 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v6);
      v7 = 2 * ((result - 32) / 24);
      v6[2] = a2;
      v6[3] = v7;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      if (v4)
      {
LABEL_6:
        v8 = (v7 >> 1) - a2;
        v9 = a2 - 1;
        v37 = v6;
        v10 = (v6 + 7);
        while (v4 != v38)
        {
          v11 = *(v4 + 8);
          v12 = *(v4 + 24);
          v13 = *(v4 + 16);
          v42 = *v4;
          v43 = v11;
          v44 = v13;
          v45 = v12;
          sub_18E67EEC4(v42, v11, v13);

          a3(&v39, &v42);
          v14 = v39;
          v15 = v40;
          v16 = v41;
          sub_18E682A3C(v42, v43, v44);

          *(v10 - 24) = v14;
          *(v10 - 16) = v15;
          *(v10 - 8) = v16;
          if (!v9)
          {
            v4 += 32;
            goto LABEL_13;
          }

          --v9;
          v10 += 24;
          v4 += 32;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  if (result)
  {
    v10 = MEMORY[0x1E69E7CC0] + 32;
    v38 = result;
LABEL_13:
    while (v4 != v38)
    {
      v17 = *(v4 + 8);
      v18 = *(v4 + 24);
      v19 = *(v4 + 16);
      v42 = *v4;
      v43 = v17;
      v44 = v19;
      v45 = v18;
      sub_18E67EEC4(v42, v17, v19);

      a3(&v39, &v42);
      v21 = v39;
      v20 = v40;
      v22 = v41;
      sub_18E682A3C(v42, v43, v44);

      if (!v8)
      {
        v23 = v37[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v24 = a3;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
        v27 = swift_allocObject();
        v28 = (_swift_stdlib_malloc_size(v27) - 32) / 24;
        v27[2] = v26;
        v27[3] = 2 * v28;
        v29 = (v27 + 4);
        v30 = v37[3] >> 1;
        v31 = 3 * v30;
        if (v37[2])
        {
          if (v27 != v37 || v29 >= &v37[v31 + 4])
          {
            memmove(v27 + 4, v37 + 4, 24 * v30);
          }

          v37[2] = 0;
        }

        v10 = v29 + v31 * 8;
        v8 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v37 = v27;
        a3 = v24;
      }

      v33 = __OFSUB__(v8--, 1);
      if (v33)
      {
        goto LABEL_39;
      }

      *v10 = v21;
      *(v10 + 8) = v20;
      *(v10 + 16) = v22;
      v10 += 24;
      v4 += 32;
    }
  }

  result = v37;
  v34 = v37[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v8);
    v36 = v35 - v8;
    if (v33)
    {
LABEL_42:
      __break(1u);
      return result;
    }

    v37[2] = v36;
  }

  return result;
}

uint64_t sub_18E682570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  sub_18E67EEC4(*a1, v4, v6);
  sub_18E682A3C(v3, v4, v6);
  *a2 = v5;
}

id sub_18E6825E4(uint64_t a1, uint64_t a2)
{
  *&v2[qword_1EAC8DC88] = 0;
  *&v2[qword_1EAC8DC80] = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  *&v2[OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_platformKey] = a2;
  v2[OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_isValueless] = 1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AnyGestureNodeShim();

  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  *(a1 + 120) = sub_18E6A6034;
  *(a1 + 128) = 0;
  sub_18E6826D0(v6);
  return v5;
}

uint64_t sub_18E6826D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E682704(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_18E682758();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E682758()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_18E6827BC(Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_18E6827BC(uint64_t a1)
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v4 = result;
      result = swift_unknownObjectRelease();
      if (v4 == a1)
      {
        return result;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v5 = *(v1 + qword_1EAC8DC80);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
    Strong = swift_getWitnessTable();
  }

  *(v5 + 192) = Strong;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18E6828A0()
{
  sub_18E682A2C();
}

uint64_t sub_18E6828C8(char a1)
{
  v3 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 184);
  if (a1)
  {
    v5 = v3(v8);
    if ((*v4 & 2) == 0)
    {
      v6 = *v4 | 2;
LABEL_6:
      *v4 = v6;
    }
  }

  else
  {
    v5 = v3(v8);
    if ((*v4 & 2) != 0)
    {
      v6 = *v4 & 0xFFFFFFFFFFFFFFFDLL;
      goto LABEL_6;
    }
  }

  v5(v8, 0);
}

void (*GestureNode.options.modify(void *a1))(void *a1)
{
  *a1 = *(v1 + 48);
  a1[1] = v1;
  return sub_18E682A60;
}

uint64_t sub_18E682A3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

void sub_18E682A60(void *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 48);
  *(v1 + 48) = *a1;
  v3 = v2;
  sub_18E68388C(&v3);
}

uint64_t sub_18E682A9C(uint64_t a1, int a2)
{
  v3 = v2;
  v79 = a2;
  isa = v3->isa;
  v6 = sub_18E72AE18();
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(isa + 46);
  v12 = type metadata accessor for GesturePhase();
  v13 = sub_18E72B438();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v71 - v15;
  v89 = type metadata accessor for GesturePhaseQueue();
  v81 = *(v89 - 8);
  v16 = *(v81 + 64);
  v17 = MEMORY[0x1EEE9AC00](v89);
  v19 = &v71 - v18;
  v20 = *(v12 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v82 = &v71 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v90 = v12;
  v91 = v20;
  v29 = *(v20 + 16);
  v88 = (&v71 - v30);
  v29();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = Strong;
    v75 = v3[24].isa;
    v32 = v90;
    (v29)(v28, a1, v90);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        swift_unknownObjectRelease();
        (*(v91 + 8))(v28, v32);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v76 = v10;
    v73 = *(v11 - 8);
    v34 = *(v73 + 8);
    v74 = v11;
    v34(v28, v11);
    v35 = v81;
    v36 = v89;
    (*(v81 + 16))(v19, v3 + *(v3->isa + 48), v89);
    v37 = *(v36 + 32);
    v38 = type metadata accessor for RingBuffer();
    v39 = v83;
    sub_18E67DE08(v38, v83);
    v72 = *(v91 + 48);
    if (v72(v39, 1, v32) == 1)
    {
      v40 = &v19[*(v36 + 28)];
      v71 = v3;
      v41 = v82;
      (v29)(v82, v40, v32);
      v42 = v41;
      v3 = v71;
      (*(v35 + 8))(v19, v36);
      v43 = v72(v39, 1, v32);
      v44 = v91;
      if (v43 != 1)
      {
        (*(v77 + 8))(v39, v78);
      }
    }

    else
    {
      (*(v35 + 8))(v19, v36);
      v44 = v91;
      v42 = v82;
      (*(v91 + 32))(v82, v39, v32);
    }

    v45 = v84;
    (*(v44 + 32))(v84, v42, v32);
    v46 = swift_getEnumCaseMultiPayload();
    v47 = v74;
    if (v46 <= 2)
    {
      v44 = v73;
LABEL_17:
      (*(v44 + 8))(v45, v47);
      v10 = v76;
      goto LABEL_18;
    }

    if (v46 == 3)
    {
      v47 = v32;
      goto LABEL_17;
    }

    v10 = v76;
    if (v46 == 4)
    {
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    ObjectType = swift_getObjectType();
    v49 = (*(v75 + 2))(v3, ObjectType);
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
      v50 = v88;
      (*(v91 + 8))(v88, v90);
      *v50 = 0xC000000000000002;
      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_19:
  v51 = v3 + *(v3->isa + 48);
  v52 = v88;
  v53 = v87;
  sub_18E67F5E8(v88, v89);
  if (v53)
  {
    return (*(v91 + 8))(v52, v90);
  }

  if (sub_18E680FFC())
  {
    v55 = v85;
    v56 = v86;
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v57 = qword_1EAC8E570;
  }

  else
  {
    v55 = v85;
    v56 = v86;
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v57 = qword_1ED6F7FA0;
  }

  v58 = __swift_project_value_buffer(v55, v57);
  (*(v56 + 16))(v10, v58, v55);

  v59 = v10;
  v60 = sub_18E72ADF8();
  v61 = sub_18E72B3E8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92 = v63;
    *v62 = 136315138;
    v76 = v59;
    v64 = AnyGestureNode.debugLabel.getter();
    v66 = sub_18E6C5E8C(v64, v65, &v92);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_18E67C000, v60, v61, "%s enqueued phase", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v67 = v63;
    v52 = v88;
    MEMORY[0x193AD25C0](v67, -1, -1);
    MEMORY[0x193AD25C0](v62, -1, -1);

    (*(v86 + 8))(v76, v55);
  }

  else
  {

    (*(v56 + 8))(v59, v55);
  }

  v68 = v91;
  if (swift_unknownObjectUnownedLoadStrong())
  {
    sub_18E68E224(v3, v79 & 1);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = v3[24].isa;
    v70 = swift_getObjectType();
    (*(v69 + 3))(v3, v52, v70, v69);
    swift_unknownObjectRelease();
  }

  return (*(v68 + 8))(v52, v90);
}

void sub_18E683358(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v4 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v4 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = 8 * v5;
  v7 = *(a1 + v5);
  v8 = v7 - 4;
  if (v7 < 4)
  {
LABEL_20:
    if (v7 > 1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v5 <= 3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 4;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *a1;
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (*(a1 + 2) << 16);
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *a1;
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v7 = v10 + 4;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *a1;
  if (v5 >= 4)
  {
    goto LABEL_19;
  }

LABEL_24:
  v7 = (v10 | (v8 << v6)) + 4;
  if (v7 > 1)
  {
LABEL_25:
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        goto LABEL_30;
      }

      v20 = *(*(a2 + 16) - 8);
      sub_18E683B98(*a1);
      goto LABEL_29;
    }

LABEL_28:
    v20 = *(*(a2 + 16) - 8);
    (*(v3 + 8))(a1, *(a2 + 16));
LABEL_29:
    v3 = v20;
    goto LABEL_30;
  }

LABEL_21:
  if (v7 < 2)
  {
    goto LABEL_28;
  }

LABEL_30:
  v11 = *(v3 + 80) & 0xF8 | 7;
  v12 = ((a1 + v5 + v11 + 1) & ~v11);
  v13 = v12[v5];
  v14 = v13 - 4;
  if (v13 < 4)
  {
    goto LABEL_44;
  }

  if (v5 <= 3)
  {
    v15 = v5;
  }

  else
  {
    v15 = 4;
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    v16 = *v12;
  }

  else if (v15 == 2)
  {
    v16 = *v12;
  }

  else if (v15 == 3)
  {
    v16 = *v12 | (v12[2] << 16);
  }

  else
  {
    v16 = *v12;
  }

  v17 = (v16 | (v14 << v6)) + 4;
  v13 = v16 + 4;
  if (v5 < 4)
  {
    v13 = v17;
  }

LABEL_44:
  if (v13 <= 1)
  {
    if (v13 >= 2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (v13 == 2)
  {
LABEL_52:
    v19 = *(v3 + 8);

    v19();
    return;
  }

  if (v13 == 3)
  {
    v18 = *v12;

    sub_18E683B98(v18);
  }
}

uint64_t sub_18E683604(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))() + 16);

  v18 = v8;
  v19 = 0;
  v9 = sub_18E684B74(a1, a2, &v18, &v20);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = (*((*v7 & *v4) + 0x78))(v9);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  (*(*v16 + 256))(&v20);

  return sub_18E682A3C(v13, v14, v15);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void GestureNode.options.setter(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = *a1;
  v3 = v2;
  sub_18E68388C(&v3);
}

void sub_18E68388C(_BYTE *a1)
{
  if (((((*a1 & 1) == 0) ^ *(v1 + 48)) & 1) == 0)
  {
    v2 = 0xC000000000000000;
    sub_18E683A1C(&v2, 1);
  }
}

uint64_t GestureNode.container.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  sub_18E67F50C();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E683934(char a1)
{
  v3 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 184);
  if (a1)
  {
    v5 = v3(v8);
    if ((*v4 & 1) == 0)
    {
      v6 = *v4 | 1;
LABEL_6:
      *v4 = v6;
    }
  }

  else
  {
    v5 = v3(v8);
    if (*v4)
    {
      v6 = *v4 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_6;
    }
  }

  v5(v8, 0);
}

void sub_18E683A1C(unint64_t *a1, char a2)
{
  v5 = *(*v2 + 368);
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v12 - v9);
  v11 = *a1;
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {
    sub_18E683B80(v11);
    sub_18E6964A4(v11, 3u, a2 & 1);
    sub_18E683B98(v11);
  }

  else
  {
    *v10 = v11;
    swift_storeEnumTagMultiPayload();
    sub_18E683B80(v11);
    sub_18E682A9C(v10, a2 & 1);
    (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_18E683B80(unint64_t result)
{
  if (result >> 62 == 2)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_18E683B98(unint64_t a1)
{
  if (a1 >> 62 == 2)
  {
  }
}

uint64_t sub_18E683BC8(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v89 = *(a2 + 16);
  v4 = type metadata accessor for GesturePhase();
  v84 = type metadata accessor for RingBufferIterator();
  v74 = *(v84 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v70 - v6;
  v7 = type metadata accessor for RingBuffer();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v85 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v70 - v11;
  v12 = sub_18E72B438();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - v18;
  v20 = *(v4 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v70 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v76 = &v70 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v80 = &v70 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v70 - v33;
  v77 = a2;
  v78 = v2;
  v35 = (v2 + *(a2 + 32));
  v86 = v7;
  sub_18E67DE08(v7, v19);
  v87 = v20[6];
  if (v87(v19, 1, v4) == 1)
  {
    (*(v13 + 8))(v19, v12);
    return 0;
  }

  v36 = v20[4];
  v79 = v34;
  v71 = v36;
  v36(v34, v19, v4);
  v81 = v20;
  v37 = v20[2];
  v37(v32, v90, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v47 = v81;
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (v81[1])(v32, v4);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v89 - 8) + 8))(v32);
LABEL_13:
    v47 = v81;
LABEL_14:
    (v47[1])(v79, v4);
    return 0;
  }

  v39 = *(*(v89 - 8) + 8);
  v39(v32);
  v40 = v80;
  v37(v80, v79, v4);
  v41 = swift_getEnumCaseMultiPayload();
  if (v41 > 2)
  {
    v47 = v81;
    if ((v41 - 4) >= 2)
    {
      (v81[1])(v40, v4);
    }

    goto LABEL_14;
  }

  if (v41 != 1)
  {
    (v39)(v40, v89);
    goto LABEL_13;
  }

  (v39)(v40, v89);
  v42 = v76;
  v37(v76, (v78 + *(v77 + 28)), v4);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 > 2)
  {
    v44 = v85;
    v45 = v88;
    if ((v43 - 4) >= 2)
    {
      (v81[1])(v42, v4);
    }
  }

  else
  {
    v44 = v85;
    v45 = v88;
    if (v43 == 1)
    {
      (v39)(v42, v89);
      (v81[1])(v79, v4);
      return 1;
    }

    (v39)(v42, v89);
  }

  v90 = *v35;
  v48 = v86;
  v49 = v75;
  v37(v75, v35 + v86[9], v4);
  sub_18E680594(v90, v49, v4, v44);
  v50 = v83;
  sub_18E68065C(v48, v83);
  v51 = v82;
  v52 = v84;
  sub_18E684690(v84, v82);
  if (v87(v51, 1, v4) == 1)
  {
LABEL_23:
    (*(v74 + 8))(v50, v52);
    (v81[1])(v79, v4);
    v54 = v72;
    v53 = v73;
    v55 = v86;
    (*(v73 + 32))(v72, v44, v86);
    v56 = *(v54 + 1);
    (*(v53 + 8))(v54, v55);
    return v56 > 1;
  }

  v57 = (v81 + 1);
  v90 = (v81 + 5);
  while (1)
  {
    v71(v45, v51, v4);
    result = sub_18E71F718(v45, v89);
    if ((result & 1) == 0)
    {
      (*v57)(v45, v4);
      goto LABEL_26;
    }

    v59 = *v44;
    v58 = v44[1];
    if (v58 == *v44)
    {
      v60 = v86[10];
      v61 = *(v44 + v60);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_44;
      }

      if (!v58)
      {
        goto LABEL_45;
      }

      if (v58 == -1 && v63 == 0x8000000000000000)
      {
        goto LABEL_47;
      }

      *(v44 + v60) = v63 % v58;
    }

    else
    {
      v62 = __OFADD__(v58, 1);
      v64 = v58 + 1;
      if (v62)
      {
        goto LABEL_43;
      }

      v44[1] = v64;
    }

    v65 = v86[11];
    v66 = *(v44 + v65);
    v67 = sub_18E72B278();
    sub_18E72B1D8();
    v68 = v44[2];
    sub_18E68E2C0(v66, v68);
    (v81[5])(v68 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + v81[9] * v66, v88, v4);
    result = nullsub_1(v67);
    v69 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    v50 = v83;
    v52 = v84;
    if (!v59)
    {
      goto LABEL_42;
    }

    if (v59 == -1 && v69 == 0x8000000000000000)
    {
      goto LABEL_46;
    }

    v44 = v85;
    *(v85 + v65) = v69 % v59;
    v51 = v82;
    v45 = v88;
LABEL_26:
    sub_18E684690(v52, v51);
    if (v87(v51, 1, v4) == 1)
    {
      goto LABEL_23;
    }
  }

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
  return result;
}

uint64_t sub_18E6844A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E72B1E8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_18E72B278();
    return v8;
  }

  return result;
}

uint64_t sub_18E6845A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RingBuffer();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = *(a1 + *(v4 + 40));
  v7 = type metadata accessor for RingBufferIterator();
  *(a2 + *(v7 + 28)) = v6;
  v8 = *(a1 + 8);
  result = (*(v5 + 8))(a1, v4);
  *(a2 + *(v7 + 32)) = v8;
  return result;
}

uint64_t sub_18E684690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a2);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v37 - v10;
  v13 = *(v12 + 24);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v9);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 40);
  v22 = *(v2 + v21);
  v23 = v22 < 1;
  v24 = v22 - 1;
  if (!v23)
  {
    v39 = v24;
    v40 = v21;
    v41 = v15;
    v25 = *(v17 + 16);
    v43 = v17 + 16;
    v44 = v16;
    v42 = v25;
    v25(v11, v2, a1);
    v26 = *(v11 + 2);
    v27 = type metadata accessor for RingBuffer();
    v28 = *(*(v27 - 8) + 8);

    v28(v11, v27);
    v38 = *(a1 + 28);
    v29 = *(v2 + v38);
    sub_18E72B298();

    v31 = __OFADD__(v29, 1);
    v32 = v29 + 1;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      v42(v8, v2, a1);
      v33 = *v8;
      result = (v28)(v8, v27);
      if (v33)
      {
        if (v32 != 0x8000000000000000 || v33 != -1)
        {
          v34 = v39;
          *(v2 + v38) = v32 % v33;
          v35 = v41;
          *(v2 + v40) = v34;
          (*(v44 + 32))(v35, v19, v13);
          return (*(v44 + 56))(v35, 0, 1, v13);
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v36 = *(v16 + 56);

  return v36(v15, 1, 1, v13);
}

uint64_t sub_18E68498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GesturePhase();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for GesturePhaseQueue.InvalidTransition() + 28);

  return v9(v7, a2, v6);
}

void sub_18E684A54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v11 = a1;
  a6(a3, a4, a5);
  swift_unknownObjectRelease();
}

uint64_t sub_18E684AE4(uint64_t a1, uint64_t (*a2)(char *, uint64_t *), void (*a3)(char *, uint64_t, uint64_t *))
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v17[0] = *a1;
  v17[1] = v5;
  v17[2] = v6;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  sub_18E67EEC4(v8, v7, v9);
  sub_18E680BF0(v17, &v14, a2, a3);
  v10 = v14;
  v11 = v15;
  v12 = v16;

  return sub_18E682A3C(v10, v11, v12);
}

unint64_t sub_18E684B74@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 16);
  if (a2)
  {
    if (a2 != 1)
    {
      sub_18E72B5C8();

      v10 = GFGestureRelationRole.description.getter(a2);
      MEMORY[0x193AD15C0](v10);

      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (result < 6)
  {
    *a4 = 0x20201010000uLL >> (8 * result);
    *(a4 + 1) = result & 1;
    *(a4 + 2) = v6;
    *(a4 + 8) = v4;
    *(a4 + 24) = v5;
    return result;
  }

  v7 = result;
  sub_18E72B5C8();

  v8 = GFGestureRelationType.description.getter(v7);
  MEMORY[0x193AD15C0](v8);

LABEL_9:
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t sub_18E684CE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a4;
  v9 = *(a1 + 16);
  v10 = *(a3 + 16);
  v16 = *a1;
  v17 = v4;
  v18 = v9;
  v19 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  sub_18E67EEC4(v16, v4, v9);

  sub_18E67EEC4(v6, v7, v10);

  LOBYTE(v5) = _s8Gestures18GestureNodeMatcherO1loiySbAC_ACtFZ_0(&v16, &v12);
  sub_18E682A3C(v12, v13, v14);

  sub_18E682A3C(v16, v17, v18);

  return v5 & 1;
}

uint64_t _s8Gestures18GestureNodeMatcherO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    v8 = v3;
    v9 = v2;
    v10 = 0;
    goto LABEL_6;
  }

  if (!*(a2 + 16))
  {
    sub_18E67EEC4(*a1, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 0;
LABEL_16:
    sub_18E682A3C(v12, v13, v14);
    return 0;
  }

  if (v4 == 1)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, 1);
    v8 = v3;
    v9 = v2;
    v10 = 1;
LABEL_6:
    sub_18E682A3C(v8, v9, v10);
    sub_18E682A3C(v6, v5, v7);
    return 1;
  }

  if (v7 == 1)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), 1);
    sub_18E67EEC4(v3, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 1;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), 2);
    if (v4 == 2)
    {
      sub_18E67EEC4(v3, v2, 2);
      sub_18E682A3C(v3, v2, 2);
      sub_18E682A3C(v6, v5, 2);
      return v5 == 0;
    }

    sub_18E67EEC4(v3, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 2;
    goto LABEL_16;
  }

  if (v4 == 2)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, 2);
    v8 = v3;
    v9 = v2;
    v10 = 2;
    goto LABEL_6;
  }

  if (v4 != 3 || v7 != 3)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, v4);
    v8 = v3;
    v9 = v2;
    v10 = v4;
    goto LABEL_6;
  }

  sub_18E682A3C(*a1, v2, 3);
  sub_18E682A3C(v6, v5, 3);
  return v6 == 0;
}

unint64_t sub_18E685090()
{
  result = qword_1ED6F7F20;
  if (!qword_1ED6F7F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F7F20);
  }

  return result;
}

char *sub_18E6850DC(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = sub_18E72B518();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6._rawValue = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    result = sub_18E6853AC(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = a1;
    v8 = 0;
    v2 = v17;
    v6._rawValue = rawValue;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AD1B60](v8, a2);
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      rawValue = v6._rawValue;
      v13 = *(v6._rawValue + 2);
      v12 = *(v6._rawValue + 3);
      if (v13 >= v12 >> 1)
      {
        sub_18E6853AC((v12 > 1), v13 + 1, 1);
        v2 = v17;
        v6._rawValue = rawValue;
      }

      ++v8;
      *(v6._rawValue + 2) = v13 + 1;
      *(v6._rawValue + v13 + 4) = v11;
    }

    while (v5 != v8);
    a1 = v16;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))();
  if (a1)
  {
    v14 = *(v6._rawValue + 2);
    if (v14)
    {
      v15 = 32;
      do
      {
        sub_18E695BE4(&rawValue, *(v6._rawValue + v15));
        v15 += 8;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    AnyGestureNode.stopTrackingEvents(with:)(v6);
  }
}

char *sub_18E6852A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED90, &unk_18E731FC0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18E6853AC(char *a1, int64_t a2, char a3)
{
  result = sub_18E6852A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall AnyGestureNode.stopTrackingEvents(with:)(Swift::OpaquePointer with)
{
  if (*(*(v1 + 176) + 16))
  {
    v2 = *(with._rawValue + 2);
    if (v2)
    {
      v3 = (with._rawValue + 32);
      do
      {
        v4 = *v3++;
        sub_18E685424(v4, &v5);
        --v2;
      }

      while (v2);
    }
  }
}

unint64_t sub_18E685424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  result = sub_18E72B8E8();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v15 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E6C72D0();
      v14 = v15;
    }

    *a2 = *(*(v14 + 48) + 8 * v9);
    result = sub_18E685538(v9);
    v11 = 0;
    *v2 = v15;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v11 = 1;
  }

  *(a2 + 8) = v11;
  return result;
}

unint64_t sub_18E685538(unint64_t result)
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

    v9 = sub_18E72B4A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_18E72B888();
        MEMORY[0x193AD1DF0](v12);
        v13 = sub_18E72B8E8() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_18E6856E0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x188);
  v5 = type metadata accessor for GesturePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v43 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v43 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v44 = v10;
    v45 = v6;
    v23 = *(v6 + 16);
    v48 = a1;
    v23(v20, a1, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) >= 2)
      {
        (*(v45 + 8))(v20, v5);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        swift_unknownObjectRelease();
        return (*(*(v4 - 8) + 8))(v20, v4);
      }

      (*(*(v4 - 8) + 8))(v20, v4);
    }

    v25 = qword_1EAC8DC88;
    v26 = *(v2 + qword_1EAC8DC88);
    if ((v26 & 4) == 0)
    {
      *(v2 + qword_1EAC8DC88) = v26 | 4;
    }

    v23(v18, v48, v5);
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 > 2)
    {
      if ((v27 - 4) >= 2)
      {
        v28 = *v18;
        v29 = *v18 + 0x4000000000000000;
        if (*v18 >> 62 == 3)
        {
          v31 = v29 > 3;
          v30 = (*v18 + 0x3FFFFFFFFFFFFFFDLL) < 0;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          v32 = 1;
        }

        else
        {
          v32 = v29 == 2;
          v30 = (*v18 + 0x3FFFFFFFFFFFFFFELL) < 0;
        }

        if (!v32)
        {
          sub_18E683B98(v28);
          v42 = [v22 respondsToSelector_];
          v34 = v48;
          if (v42)
          {
            [v22 gestureNodeWillAbort_];
          }

LABEL_28:
          [v22 gestureNode:v2 didUpdatePhase:sub_18E67D6B8()];
          swift_unknownObjectRelease();
          v35 = v47;
          v23(v47, v34, v5);
          v36 = swift_getEnumCaseMultiPayload();
          if (v36 >= 3)
          {
            if (v36 - 4 >= 2)
            {
              (*(v45 + 8))(v35, v5);
            }

            v39 = v44;
            v23(v44, v34, v5);
            result = swift_getEnumCaseMultiPayload();
            if (result > 2)
            {
              if (result != 3)
              {
                v38 = 0x1EAC8D000uLL;
                if (result == 4)
                {
                  *(v2 + qword_1EAC8DC88) = 0;
                }

                goto LABEL_40;
              }

              result = (*(v45 + 8))(v39, v5);
            }

            else
            {
              result = (*(*(v4 - 8) + 8))(v39, v4);
            }

            v38 = 0x1EAC8D000uLL;
          }

          else
          {
            result = (*(*(v4 - 8) + 8))(v35, v4);
            v37 = *(v2 + v25);
            v38 = 0x1EAC8D000;
            if ((v37 & 8) == 0)
            {
              *(v2 + v25) = v37 | 8;
            }
          }

LABEL_40:
          v40 = *(v38 + 3208);
          v41 = *(v2 + v40);
          if ((v41 & 4) != 0)
          {
            *(v2 + v40) = v41 & 0xFFFFFFFFFFFFFFFBLL;
          }

          return result;
        }

        sub_18E683B98(v28);
      }
    }

    else
    {
      (*(*(v4 - 8) + 8))(v18, v4);
    }

    v23(v15, v46, v5);
    v33 = swift_getEnumCaseMultiPayload();
    v34 = v48;
    if (v33 > 2)
    {
      if ((v33 - 4) >= 2)
      {
        (*(v45 + 8))(v15, v5);
      }
    }

    else if (v33)
    {
      (*(*(v4 - 8) + 8))(v15, v4);
    }

    else
    {
      (*(*(v4 - 8) + 8))(v15, v4);
      [v22 gestureNodeWillUnblock_];
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_18E685C74(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v180 = a2;
  v214 = *v3;
  v5 = v214;
  v6 = sub_18E72AE18();
  v206 = *(v6 - 8);
  isa = v206[8].isa;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v204 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v171 - v10;
  v12 = *(v5 + 368);
  v13 = type metadata accessor for GesturePhase();
  v212 = *(v13 - 8);
  v14 = *(v212 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v197 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v199 = &v171 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v209 = (&v171 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v205 = &v171 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v210 = &v171 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v196 = &v171 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v179 = &v171 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v175 = &v171 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v174 = &v171 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v171 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v198 = &v171 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v211 = &v171 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v201 = &v171 - v40;
  v41 = sub_18E72B438();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v207 = &v171 - v43;
  v44 = type metadata accessor for RingBufferIterator();
  v176 = *(v44 - 8);
  v45 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v202 = &v171 - v46;
  v47 = type metadata accessor for RingBuffer();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v171 - v51;
  if (v50 == MEMORY[0x1E69E7CA8] + 8)
  {
    v65 = v180;

    return sub_18E6C46E8(a1, v65);
  }

  v178 = a1;
  v200 = v44;
  v173 = v35;
  v172 = v11;
  v203 = v6;
  v53 = v3 + *(v214 + 384);
  v195 = v50;
  v194 = type metadata accessor for GesturePhaseQueue();
  v54 = *(v194 + 32);
  v208 = v53;
  v55 = &v53[v54];
  v56 = v48[2];
  v56(v52, &v53[v54], v47);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v53) = sub_18E72B378();
  v57 = v48[1];
  result = v57(v52, v47);
  if (v53)
  {
    return result;
  }

  v216 = 1;
  v192 = v55;
  v56(v52, v55, v47);
  v59 = v202;
  sub_18E68065C(v47, v202);
  v57(v52, v47);
  v60 = v207;
  v61 = v200;
  sub_18E684690(v200, v207);
  v62 = v212;
  v63 = *(v212 + 48);
  v191 = v212 + 48;
  v190 = v63;
  if (v63(v60, 1, v13) == 1)
  {
    (*(v176 + 8))(v59, v61);
    return sub_18E688410(v216);
  }

  v185 = v47;
  v66 = 0;
  v69 = *(v62 + 32);
  v67 = v62 + 32;
  v68 = v69;
  v70 = (v67 - 16);
  v214 = v67 - 24;
  v189 = v195 - 8;
  v183 = (v67 + 8);
  v187 = v206 + 2;
  v188 = v206 + 1;
  *&v64 = 136315650;
  v177 = v64;
  v213 = v3;
  v71 = v201;
  v72 = v211;
  v186 = (v67 - 16);
  v184 = v69;
  v212 = v67;
  v69(v201, v207, v13);
  while (1)
  {
    v74 = *(v194 + 28);
    v75 = *v70;
    (*v70)(v72, &v74[v208], v13);
    v76 = v198;
    v77 = v75;
    v75(v198, v71, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      break;
    }

    v80 = v199;
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*v214)(v76, v13);
    }

LABEL_16:
    v81 = v185;
    v82 = v192;
    if (sub_18E72B378())
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
LABEL_45:
      v137 = qword_1EAC8E570;
      goto LABEL_51;
    }

    v81 = *(v81 + 40);
    v83 = *(v82 + v81);
    v84 = v82[2];
    sub_18E72B298();
    if (__OFADD__(v83, 1))
    {
      goto LABEL_66;
    }

    v85 = *v82;
    if (!*v82)
    {
      goto LABEL_67;
    }

    if (v83 == 0x7FFFFFFFFFFFFFFFLL && v85 == -1)
    {
      goto LABEL_69;
    }

    *(v82 + v81) = (v83 + 1) % v85;
    v87 = v82[1];
    v88 = __OFSUB__(v87, 1);
    v89 = v87 - 1;
    if (v88)
    {
      goto LABEL_68;
    }

    v82[1] = v89;
    v90 = v196;
    v68(v196, v210, v13);
    v91 = v208;
    (*v183)(&v74[v208], v90, v13);
    v92 = v77;
    v77(v205, &v74[v91], v13);
    v93 = swift_getEnumCaseMultiPayload();
    if (v93 > 2)
    {
      v94 = v211;
      v95 = v209;
      v96 = v213;
      if (v93 == 3)
      {
        (*v214)(v205, v13);
      }

      else if (v93 == 4)
      {
        v97 = v213[22];

        v96[22] = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v94 = v211;
      v95 = v209;
      (*(*(v195 - 8) + 8))(v205, v195);
    }

    v77(v95, &v74[v91], v13);
    if (sub_18E680FFC())
    {
      v98 = qword_1EAC8E570;
      v99 = v204;
      v100 = v197;
      if (qword_1EAC8D8F8 != -1)
      {
        swift_once();
        v98 = qword_1EAC8E570;
      }
    }

    else
    {
      v98 = qword_1ED6F7FA0;
      v99 = v204;
      v100 = v197;
      if (qword_1ED6F7F98 != -1)
      {
        swift_once();
        v98 = qword_1ED6F7FA0;
      }
    }

    v101 = v203;
    v102 = __swift_project_value_buffer(v203, v98);
    (v187->isa)(v99, v102, v101);
    v92(v80, v94, v13);
    v92(v100, v95, v13);

    v103 = v80;
    v104 = sub_18E72ADF8();
    v105 = sub_18E72B3E8();

    v206 = v104;
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v215 = v182;
      *v106 = v177;
      v107 = AnyGestureNode.debugLabel.getter();
      v109 = sub_18E6C5E8C(v107, v108, &v215);
      v181 = v105;
      v110 = v100;
      v111 = v109;

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      v112 = v179;
      v92(v179, v103, v13);
      v113 = *v214;
      (*v214)(v103, v13);
      v114 = GesturePhase.description.getter(v13);
      v116 = v115;
      v113(v112, v13);
      v117 = sub_18E6C5E8C(v114, v116, &v215);

      *(v106 + 14) = v117;
      *(v106 + 22) = 2080;
      v92(v112, v110, v13);
      v113(v110, v13);
      v118 = GesturePhase.description.getter(v13);
      v120 = v119;
      v113(v112, v13);
      v121 = sub_18E6C5E8C(v118, v120, &v215);

      *(v106 + 24) = v121;
      v122 = v206;
      _os_log_impl(&dword_18E67C000, v206, v181, "%s updated phase: %s -> %s", v106, 0x20u);
      v123 = v182;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v123, -1, -1);
      v124 = v106;
      v125 = v213;
      MEMORY[0x193AD25C0](v124, -1, -1);

      (v188->isa)(v204, v203);
      v71 = v201;
      v126 = v202;
    }

    else
    {
      v113 = *v214;
      (*v214)(v100, v13);
      v113(v103, v13);

      (v188->isa)(v99, v101);
      v71 = v201;
      v126 = v202;
      v125 = v213;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v72 = v211;
    v128 = v207;
    v68 = v184;
    if (Strong)
    {
      sub_18E6EF5C4(v125);
      swift_unknownObjectRelease();
    }

    v129 = swift_unknownObjectWeakLoadStrong();
    v130 = v209;
    if (v129)
    {
      v131 = *(v125 + 24);
      ObjectType = swift_getObjectType();
      v133 = *(v131 + 32);
      v134 = v131;
      v128 = v207;
      v133(v125, v130, v72, ObjectType, v134);
      swift_unknownObjectRelease();
    }

    v113(v130, v13);
    v113(v72, v13);
    v113(v71, v13);
    sub_18E684690(v200, v128);
    v66 = 1;
    v73 = v190(v128, 1, v13);
    v70 = v186;
    if (v73 == 1)
    {
      goto LABEL_60;
    }

    v68(v71, v128, v13);
  }

  (*(*(v195 - 8) + 8))(v76);
  v79 = sub_18E69C624(&v216, v178);
  v80 = v199;
  if (!v79)
  {
    goto LABEL_16;
  }

  v135 = v208;
  v136 = sub_18E69E13C(*(v79 + 16), v194);
  if (v136)
  {
    v77(v173, &v74[v135], v13);
    if (sub_18E680FFC())
    {
      v82 = v172;
      v81 = v175;
      v74 = v174;
      v68 = v203;
      if (qword_1EAC8D8F8 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    v82 = v172;
    v81 = v175;
    v74 = v174;
    v68 = v203;
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v137 = qword_1ED6F7FA0;
LABEL_51:
    v139 = __swift_project_value_buffer(v68, v137);
    (v187->isa)(v82, v139, v68);
    v140 = v77;
    v77(v74, v211, v13);
    v77(v81, v173, v13);
    v141 = v213;

    v142 = sub_18E72ADF8();
    v143 = sub_18E72B3E8();

    LODWORD(v212) = v143;
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = v214;
      v209 = v142;
      v146 = v144;
      v210 = swift_slowAlloc();
      v215 = v210;
      *v146 = v177;
      v147 = AnyGestureNode.debugLabel.getter();
      v149 = sub_18E6C5E8C(v147, v148, &v215);

      *(v146 + 4) = v149;
      *(v146 + 12) = 2080;
      v150 = v179;
      v140(v179, v74, v13);
      v151 = *v145;
      (*v145)(v74, v13);
      v152 = GesturePhase.description.getter(v13);
      v153 = v175;
      v154 = v152;
      v156 = v155;
      v151(v150, v13);
      v157 = sub_18E6C5E8C(v154, v156, &v215);

      *(v146 + 14) = v157;
      *(v146 + 22) = 2080;
      v140(v150, v153, v13);
      v151(v153, v13);
      v158 = GesturePhase.description.getter(v13);
      v160 = v159;
      v151(v150, v13);
      v161 = sub_18E6C5E8C(v158, v160, &v215);
      v162 = v213;

      *(v146 + 24) = v161;
      v163 = v209;
      _os_log_impl(&dword_18E67C000, v209, v212, "%s updated phase: %s -> %s", v146, 0x20u);
      v164 = v210;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v164, -1, -1);
      MEMORY[0x193AD25C0](v146, -1, -1);

      (v188->isa)(v172, v203);
    }

    else
    {
      v162 = v141;
      v151 = *v214;
      (*v214)(v81, v13);
      v151(v74, v13);

      (v188->isa)(v82, v203);
    }

    v165 = v201;
    v126 = v202;
    v166 = swift_unknownObjectUnownedLoadStrong();
    v167 = v173;
    if (v166)
    {
      sub_18E6EF5C4(v162);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v168 = *(v162 + 24);
      v169 = swift_getObjectType();
      v170 = v211;
      (*(v168 + 32))(v162, v167, v211, v169, v168);

      swift_unknownObjectRelease();
    }

    else
    {

      v170 = v211;
    }

    v151(v167, v13);
    v151(v170, v13);
    v151(v165, v13);
    v125 = v213;
LABEL_60:
    (*(v176 + 8))(v126, v200);
    goto LABEL_61;
  }

  v138 = *v214;
  (*v214)(v211, v13);
  v138(v71, v13);
  (*(v176 + 8))(v202, v200);
  v125 = v213;
  if ((v66 & 1) == 0)
  {
    return sub_18E688410(v216);
  }

LABEL_61:
  if (swift_unknownObjectUnownedLoadStrong())
  {
    sub_18E687048(v125);
    swift_unknownObjectRelease();
  }

  return sub_18E688410(v216);
}

void sub_18E687048(void *a1)
{
  v2 = v1;
  sub_18E687170(&v13);
  if (v14 == 4 && v13 == 0)
  {

    sub_18E68FEDC(a1);
  }

  else
  {
    sub_18E69E818(v13, v14);
    sub_18E687170(&v13);
    v5 = v14 & 0xFE;
    sub_18E69E818(v13, v14);
    if (v5 == 2)
    {
      v6 = &v11;
      sub_18E68737C(&v11);
      v7 = v12;
      if (v12 == 255)
      {
        v6 = &v13;
        sub_18E687170(&v13);
        v7 = v14;
      }

      v8 = v7 & 0xFE;
      sub_18E69E818(*v6, v7);
      if (v8 == 2)
      {
        v9 = *(v2 + 112);
        v10 = sub_18E687600(a1);
        sub_18E687F10(v10);
      }

      sub_18E6880B0(&v13, a1);
    }
  }
}

unint64_t sub_18E687170@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 368);
  v4 = type metadata accessor for GesturePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  if (v3 == MEMORY[0x1E69E7CA8] + 8)
  {
    v10 = *(v1 + 240);
    *a1 = v10;
    v11 = *(v1 + 248);
    *(a1 + 8) = v11;

    return sub_18E6AA03C(v10, v11);
  }

  else
  {
    GestureNode.phase.getter(v8);
    sub_18E6872AC(v4, a1);
    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_18E6872AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) == MEMORY[0x1E69E7CA8] + 8)
  {
    if (*(*(result - 8) + 64) == 9)
    {
      v5 = *v2;
      *a2 = *v2;
      v6 = *(v2 + 8);
      *(a2 + 8) = v6;

      return sub_18E6AA03C(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return GesturePhase.mapValue<A>(_:)(nullsub_1, v3, v4);
  }

  return result;
}

unint64_t sub_18E68737C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 368);
  v4 = type metadata accessor for GesturePhase();
  v5 = type metadata accessor for RingBuffer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = sub_18E72B438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if (v3 == MEMORY[0x1E69E7CA8] + 8)
  {

    return sub_18E6C4348(a1);
  }

  else
  {
    sub_18E67DBC8(v9);
    sub_18E67DE08(v5, v14);
    (*(v6 + 8))(v9, v5);
    v15 = *(v4 - 8);
    if ((*(v15 + 48))(v14, 1, v4) == 1)
    {
      result = (*(v11 + 8))(v14, v10);
      *a1 = 0;
      *(a1 + 8) = -1;
    }

    else
    {
      sub_18E6872AC(v4, &v18);
      result = (*(v15 + 8))(v14, v4);
      v17 = v19;
      *a1 = v18;
      *(a1 + 8) = v17;
    }
  }

  return result;
}

char *sub_18E687600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 32) != 1)
  {
    v18 = *(v4 + 16);

    v19 = MEMORY[0x1E69E7CC0];
    if (v18 && (v20 = sub_18E6879CC(a1), (v21 & 1) != 0))
    {
      v22 = *(*(v4 + 56) + 8 * v20);
    }

    else if (v19 >> 62 && sub_18E72B518())
    {
      v22 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CD0];
    }

    v23 = sub_18E687AA8(v22);

    if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
    {
      v24 = sub_18E72B518();
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = *(v23 + 16);
      if (v24)
      {
LABEL_22:
        result = sub_18E687EF0(0, v24 & ~(v24 >> 63), 0);
        if ((v24 & 0x8000000000000000) == 0)
        {
          v25 = 0;
          v13 = v19;
          do
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x193AD1B60](v25, v23);
            }

            else
            {
              v26 = *(v23 + 8 * v25 + 32);
            }

            v27 = *(v19 + 16);
            v28 = *(v19 + 24);

            if (v27 >= v28 >> 1)
            {
              sub_18E687EF0((v28 > 1), v27 + 1, 1);
            }

            ++v25;
            *(v19 + 16) = v27 + 1;
            v29 = v19 + 16 * v27;
            *(v29 + 32) = v26;
            *(v29 + 40) = a1;
          }

          while (v24 != v25);

          return v13;
        }

        __break(1u);
        goto LABEL_41;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72CA20;
  *(inited + 32) = a1;

  v6 = sub_18E68D820(inited);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();

  v8 = sub_18E68C78C(v6, 1u, sub_18E6BFA58, a1, v4, v3);

  if (!*(v8 + 16))
  {
    goto LABEL_37;
  }

  v9 = *(v8 + 32);

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v10 = sub_18E72B518();
  if (!v10)
  {
LABEL_37:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_18E687EF0(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v30;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AD1B60](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = *(v30 + 16);
      v16 = *(v30 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_18E687EF0((v16 > 1), v15 + 1, 1);
      }

      ++v12;
      *(v30 + 16) = v15 + 1;
      v17 = v30 + 16 * v15;
      *(v17 + 32) = v14;
      *(v17 + 40) = a1;
    }

    while (v10 != v12);

    return v13;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_18E6879CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_18E72B888();
  v4 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v4);
  v5 = sub_18E72B8E8();

  return sub_18E687A3C(a1, v5);
}

unint64_t sub_18E687A3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_18E687AA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_18E72B518();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_18E687D54(v2, 0);

    v1 = sub_18E687B58(&v5, v3 + 4, v2, v1);
    sub_18E687EE8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_18E687B58(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_18E72B4D8();
  type metadata accessor for AnyGestureNode();
  sub_18E6A2ECC();
  result = sub_18E72B2D8();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_18E72B548())
      {
        goto LABEL_30;
      }

      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_18E687D54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_18E687DDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8EE28, &unk_18E72F6F0);
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

char *sub_18E687EF0(char *a1, int64_t a2, char a3)
{
  result = sub_18E687DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E687F10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v5 = *(**v2 + 304);

      v7 = &v10;
      v8 = v5(&v10, v6);
      v9 = v11;
      if (v11 == 255)
      {
        v7 = &v12;
        (*(*v4 + 296))(&v12, v8);
        v9 = v13;
      }

      sub_18E69E818(*v7, v9);
      if (v9 < 3)
      {
        v12 = v4[4] | 0x4000000000000000;
        sub_18E680CBC(&v12, 0);
      }

      else
      {
        (*(*v3 + 296))(&v12);
        if (!v13)
        {
          sub_18E6880B0(&v12, v3);

          goto LABEL_5;
        }

        sub_18E69E818(v12, v13);
      }

LABEL_5:

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_18E6880B0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_18E72B528();

    if (v8)
    {

      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_18E72B518();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_18E6C6434(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_18E688420(v20 + 1);
    }

    sub_18E6C6B38(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_18E72B888();
  v11 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v11);
  v12 = sub_18E72B8E8();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_18E6882B4(v18, v14, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v15 = ~v13;
  while (*(*(v6 + 48) + 8 * v14) != a2)
  {
    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v14);

  return 0;
}

uint64_t sub_18E6882B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E688420(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18E68F640();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18E68CF28(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_18E72B888();
  v10 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v10);
  result = sub_18E72B8E8();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = result & ~v11;
    result = type metadata accessor for AnyGestureNode();
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

uint64_t sub_18E688410(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_18E688420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_18E72B888();
      v20 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v20);
      result = sub_18E72B8E8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_18E688698(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v201 = sub_18E72AE18();
  v8 = *(v201 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v201);
  v180 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v192 = &v180 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v180 - v15;
  if (*(v3 + 144))
  {
    return result;
  }

  v17 = *(v3 + 128);
  v200 = (v4 + 128);
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = sub_18E72B518();

    if (!v18)
    {
LABEL_6:
      v19 = *(v4 + 136);
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v20 = *(v4 + 136);
        }

        v21 = *(v4 + 136);

        v22 = sub_18E72B518();

        if (!v22)
        {
          return result;
        }
      }

      else if (!*(v19 + 16))
      {
        return result;
      }
    }
  }

  else if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  if (*(*(v4 + 152) + 16))
  {
    return result;
  }

  *(v4 + 144) = 1;
  v23 = *(v4 + 16);
  if (v23)
  {
    v24 = *(v4 + 24);

    v23(v25);
    sub_18E6826D0(v23);
  }

  if (sub_18E680FFC())
  {
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_173;
    }

    goto LABEL_18;
  }

  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED6F7FA0;
LABEL_22:
  v27 = v201;
  v28 = __swift_project_value_buffer(v201, v26);
  v29 = *(v8 + 16);
  v198 = v8 + 16;
  v197 = v29;
  v29(v16, v28, v27);
  sub_18E69130C(a1, a2, v5);
  v30 = sub_18E72ADF8();
  v31 = sub_18E72B3E8();
  sub_18E691480(a1, a2, v5);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v205 = v33;
    *v32 = 136315138;
    v34 = sub_18E6F045C(a1, a2, v5);
    v36 = sub_18E6C5E8C(v34, v35, &v205);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_18E67C000, v30, v31, "Update began: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x193AD25C0](v33, -1, -1);
    MEMORY[0x193AD25C0](v32, -1, -1);
  }

  v37 = *(v8 + 8);
  v199 = v8 + 8;
  v196 = v37;
  v37(v16, v201);
  v38 = *(v4 + 96);
  v39 = *(v4 + 104);
  __swift_project_boxed_opaque_existential_1((v4 + 72), v38);
  v40 = (*(v39 + 8))(v38, v39);
  sub_18E69163C(v40, v41);
  sub_18E692080();
  v8 = -1;
  *&v42 = 136315394;
  v188 = v42;
  v43 = v200;
  v181 = v4;
  while (1)
  {
    v202 = 0;
    v44 = *v43;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v45 = sub_18E72B518();

      if (!v45)
      {
        goto LABEL_29;
      }
    }

    else if (!*(v44 + 16))
    {
LABEL_29:
      v46 = *(v4 + 136);
      if ((v46 & 0xC000000000000001) != 0)
      {
        if (v46 < 0)
        {
          v47 = *(v4 + 136);
        }

        v48 = *(v4 + 136);

        v49 = sub_18E72B518();

        if (!v49)
        {
          goto LABEL_160;
        }
      }

      else if (!*(v46 + 16))
      {
        goto LABEL_160;
      }
    }

    v50 = *(v4 + 32);
    if (v50)
    {
      v51 = *(v4 + 40);

      v50(v52);
      sub_18E6826D0(v50);
    }

    v53 = *(v4 + 120);

    sub_18E68F554();

    v182 = MEMORY[0x1E69E7CD0];
    v189 = MEMORY[0x1E69E7CD0];
    v54 = v200;
LABEL_39:
    v55 = *v54;
    if ((v55 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v55 + 16))
    {
      goto LABEL_43;
    }

LABEL_133:
    v205 = sub_18E687AA8(v189);
    v5 = v202;
    sub_18E68F94C(&v205);
    if (v5)
    {

      __break(1u);
      return result;
    }

    v16 = v205;
    if ((v205 & 0x8000000000000000) != 0 || (v205 & 0x4000000000000000) != 0)
    {
      a2 = sub_18E72B518();
      if (a2)
      {
LABEL_137:
        if (a2 < 1)
        {
          __break(1u);
LABEL_173:
          swift_once();
LABEL_18:
          v26 = qword_1EAC8E570;
          goto LABEL_22;
        }

        a1 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v159 = MEMORY[0x193AD1B60](a1, v16);
          }

          else
          {
            v159 = *(v16 + 8 * a1 + 32);
          }

          ++a1;
          sub_18E689A70(v159);

          MEMORY[0x1EEE9AC00](v160);
          *(&v180 - 2) = v4;
          *(&v180 - 1) = v159;
          (*(*v159 + 360))(sub_18E6F236C);
        }

        while (a2 != a1);
      }
    }

    else
    {
      a2 = *(v205 + 16);
      if (a2)
      {
        goto LABEL_137;
      }
    }

    v161 = *v200;
    if ((*v200 & 0xC000000000000001) != 0)
    {
      if (v161 < 0)
      {
        v162 = *v200;
      }

      v163 = *v200;

      v164 = sub_18E72B518();
    }

    else
    {
      v164 = *(v161 + 16);
    }

    v43 = v200;
    if (!v164)
    {
      v165 = *(v4 + 136);
      if ((v165 & 0xC000000000000001) != 0)
      {
        if (v165 < 0)
        {
          v166 = *(v4 + 136);
        }

        v167 = *(v4 + 136);

        v168 = sub_18E72B518();

        v43 = v200;
        if (v168)
        {
LABEL_156:
          v170 = *(v4 + 136);
          *(v4 + 136) = MEMORY[0x1E69E7CD0];
          sub_18E68BD94(v170);
          v43 = v200;
        }
      }

      else
      {
        v169 = *(v165 + 16);
        v43 = v200;
        if (v169)
        {
          goto LABEL_156;
        }
      }
    }
  }

  v56 = sub_18E72B518();

  if (!v56)
  {
    goto LABEL_133;
  }

LABEL_43:
  v57 = *(v4 + 32);
  if (v57)
  {
    v58 = *(v4 + 40);

    v57(v59);
    sub_18E6826D0(v57);
  }

  v54 = v200;
  v60 = *v200;
  if ((*v200 & 0xC000000000000001) != 0)
  {
    if (v60 < 0)
    {
      v61 = *v200;
    }

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    v54 = v200;
    sub_18E72B2D8();
    v60 = v207;
    v62 = v208;
    v63 = v209;
    a1 = v210;
    v64 = v211;
  }

  else
  {
    v65 = -1 << *(v60 + 32);
    v62 = v60 + 56;
    v63 = ~v65;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v64 = v67 & *(v60 + 56);
    v68 = *v200;

    a1 = 0;
  }

  v69 = (v63 + 64) >> 6;
  v187 = v60;
  v186 = v62;
  v185 = v63;
  v184 = v69;
  while (2)
  {
    if (v60 < 0)
    {
      v77 = sub_18E72B548();
      if (!v77)
      {
        goto LABEL_38;
      }

      v203 = v77;
      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      v76 = v205;
      v191 = a1;
      v190 = v64;
LABEL_64:
      v193 = v76;
      if (!v76)
      {
LABEL_38:
        sub_18E687EE8();
        goto LABEL_39;
      }

      v78 = *v54;
      if ((*v54 & 0xC000000000000001) != 0)
      {
        if (v78 < 0)
        {
          v79 = *v54;
        }

        else
        {
          v79 = v78 & 0xFFFFFFFFFFFFFF8;
        }

        v80 = *v54;

        v81 = v193;

        v82 = sub_18E72B558();

        v83 = v192;
        if (v82)
        {
          sub_18E6C6D9C(v79, v81);
        }

        v84 = v81;
      }

      else
      {
        v85 = *(v78 + 40);
        sub_18E72B888();
        v86 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v86);
        v87 = sub_18E72B8E8();
        v88 = v78 + 56;
        v89 = -1 << *(v78 + 32);
        v90 = v87 & ~v89;
        v83 = v192;
        if ((*(v78 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
        {
          v91 = ~v89;
          v92 = *(v78 + 48);
          v84 = v193;
          while (*(v92 + 8 * v90) != v193)
          {
            v90 = (v90 + 1) & v91;
            if (((*(v88 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_82;
            }
          }

          v93 = *v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = *v54;
          v205 = *v54;
          *v54 = 0x8000000000000000;
          v96 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18E68F640();
            v95 = v205;
          }

          v97 = *(*(v95 + 48) + 8 * v90);
          sub_18E68F790(v90);
          *v96 = v205;
        }

        else
        {
          v84 = v193;
        }
      }

LABEL_82:

      v98 = v189;
      if ((v189 & 0xC000000000000001) != 0)
      {
        if (v189 < 0)
        {
          v99 = v189;
        }

        else
        {
          v99 = v189 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();

        v100 = sub_18E72B528();

        if (!v100)
        {
          v110 = sub_18E72B518();
          if (__OFADD__(v110, 1))
          {
            goto LABEL_159;
          }

          v111 = sub_18E6C6434(v99, v110 + 1);
          v203 = v111;
          v112 = v111[2];
          if (v111[3] <= v112)
          {
            sub_18E688420(v112 + 1);
            v111 = v203;
          }

          v113 = v111[5];
          v114 = v111;
          sub_18E72B888();

          v115 = sub_18E72AFA8();
          MEMORY[0x193AD1DF0](v115);
          v116 = sub_18E72B8E8();
          v117 = v114 + 7;
          v182 = v114;
          v118 = -1 << *(v114 + 32);
          v119 = v116 & ~v118;
          v120 = v119 >> 6;
          if (((-1 << v119) & ~v114[(v119 >> 6) + 7]) != 0)
          {
            v121 = __clz(__rbit64((-1 << v119) & ~v114[(v119 >> 6) + 7])) | v119 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v122 = 0;
            v123 = (63 - v118) >> 6;
            do
            {
              if (++v120 == v123 && (v122 & 1) != 0)
              {
                goto LABEL_158;
              }

              v124 = v120 == v123;
              if (v120 == v123)
              {
                v120 = 0;
              }

              v122 |= v124;
              v125 = v117[v120];
            }

            while (v125 == -1);
            v121 = __clz(__rbit64(~v125)) + (v120 << 6);
          }

          *(v117 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
          v126 = v182;
          *(*(v182 + 48) + 8 * v121) = v84;
          ++*(v126 + 16);

          v98 = v126;
          goto LABEL_108;
        }

        v203 = v100;
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
      }

      else
      {
        v101 = *(v189 + 40);
        sub_18E72B888();

        v102 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v102);
        v103 = sub_18E72B8E8();
        v104 = -1 << *(v98 + 32);
        v105 = v103 & ~v104;
        if (((*(v98 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
        {
LABEL_92:
          v107 = v182;
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v205 = v107;
          v109 = sub_18E6882B4(v84, v105, v108);
          v98 = v205;
          v182 = v205;
LABEL_108:
          v127 = (*(*v84 + 304))(&v203, v109);
          v128 = v204;
          v189 = v98;
          if (v204 == 255)
          {
            (*(*v84 + 296))(&v205, v127);
            v129 = v205;
            v128 = v206;
          }

          else
          {
            v129 = v203;
            v205 = v203;
          }

          v130 = v128 & 0xFE;
          sub_18E69E818(v129, v128);
          if (v130 == 2)
          {
            v131 = *(v4 + 112);
            v132 = sub_18E687600(v84);
            v133 = *(v132 + 2);
            v183 = v132;
            if (v133)
            {
              v134 = (v132 + 40);
              while (1)
              {
                v136 = *(v134 - 1);
                v135 = *v134;
                v137 = *(**v134 + 304);

                v139 = &v203;
                v140 = v137(&v203, v138);
                v141 = v204;
                if (v204 == 255)
                {
                  v139 = &v205;
                  (*(*v135 + 296))(&v205, v140);
                  v141 = v206;
                }

                sub_18E69E818(*v139, v141);
                if (v141 < 3)
                {
                  break;
                }

                (*(*v136 + 296))(&v205);
                if (v206)
                {
                  sub_18E69E818(v205, v206);
LABEL_126:

                  goto LABEL_115;
                }

                sub_18E6880B0(&v205, v136);

LABEL_115:

LABEL_116:
                v134 += 2;
                if (!--v133)
                {
                  goto LABEL_54;
                }
              }

              v205 = v135[4] | 0x4000000000000000;
              v142 = v202;
              (*(*v136 + 344))(&v205, 0);
              v202 = v142;
              if (v142)
              {
                if (sub_18E680FFC())
                {
                  v143 = qword_1EAC8E570;
                  if (qword_1EAC8D8F8 != -1)
                  {
                    swift_once();
                    v143 = qword_1EAC8E570;
                  }
                }

                else
                {
                  v143 = qword_1ED6F7FA0;
                  if (qword_1ED6F7F98 != -1)
                  {
                    swift_once();
                    v143 = qword_1ED6F7FA0;
                  }
                }

                v144 = v201;
                v145 = __swift_project_value_buffer(v201, v143);
                v197(v83, v145, v144);

                v146 = v202;
                v147 = v202;
                v148 = sub_18E72ADF8();
                v149 = sub_18E72B3E8();

                if (os_log_type_enabled(v148, v149))
                {
                  v150 = swift_slowAlloc();
                  v151 = swift_slowAlloc();
                  v195 = swift_slowAlloc();
                  v205 = v195;
                  *v150 = v188;
                  v194 = v148;
                  v152 = AnyGestureNode.debugLabel.getter();
                  v154 = sub_18E6C5E8C(v152, v153, &v205);

                  *(v150 + 4) = v154;
                  *(v150 + 12) = 2112;
                  v155 = v146;
                  v156 = _swift_stdlib_bridgeErrorToNSError();
                  *(v150 + 14) = v156;
                  *v151 = v156;
                  v157 = v194;
                  _os_log_impl(&dword_18E67C000, v194, v149, "%s couldn't fail node: %@", v150, 0x16u);
                  sub_18E68B548(v151, &qword_1EAC8EDC0, &unk_18E731720);
                  MEMORY[0x193AD25C0](v151, -1, -1);
                  v158 = v195;
                  __swift_destroy_boxed_opaque_existential_0(v195);
                  MEMORY[0x193AD25C0](v158, -1, -1);
                  MEMORY[0x193AD25C0](v150, -1, -1);

                  v83 = v192;
                }

                else
                {
                }

                v196(v83, v201);

                v202 = 0;
                goto LABEL_116;
              }

              goto LABEL_126;
            }

LABEL_54:

            v4 = v181;
            v8 = -1;
          }

          a1 = v191;
          v64 = v190;
          v54 = v200;
          v60 = v187;
          v62 = v186;
          v69 = v184;
          continue;
        }

        v106 = ~v104;
        while (*(*(v98 + 48) + 8 * v105) != v84)
        {
          v105 = (v105 + 1) & v106;
          if (((*(v98 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_108;
    }

    break;
  }

  v70 = a1;
  v71 = v64;
  v72 = a1;
  if (v64)
  {
LABEL_61:
    v73 = __clz(__rbit64(v71));
    v190 = (v71 - 1) & v71;
    v74 = *(v60 + 48);
    v191 = v72;
    v75 = *(v74 + ((v72 << 9) | (8 * v73)));

    goto LABEL_64;
  }

  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v69)
    {
      goto LABEL_38;
    }

    v71 = *(v62 + 8 * v72);
    ++v70;
    if (v71)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  v171 = *(v4 + 48);
  if (v171)
  {
    v172 = *(v4 + 56);

    v171(v173);
    sub_18E6826D0(v171);
  }

  if (sub_18E680FFC())
  {
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v174 = qword_1EAC8E570;
  }

  else
  {
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v174 = qword_1ED6F7FA0;
  }

  v175 = v201;
  v176 = __swift_project_value_buffer(v201, v174);
  v197(v180, v176, v175);
  v177 = sub_18E72ADF8();
  v178 = sub_18E72B3E8();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_18E67C000, v177, v178, "Update ended", v179, 2u);
    MEMORY[0x193AD25C0](v179, -1, -1);
  }

  result = (v196)(v180, v201);
  *(v4 + 144) = 0;
  return result;
}

unint64_t sub_18E689A70(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_18E72B558();

    if (v6)
    {
      v7 = sub_18E6C6D9C(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_18E72B888();
  v10 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v10);
  v11 = sub_18E72B8E8();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (*(*(v3 + 48) + 8 * v13) != a1)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E68F640();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v13);
  sub_18E68F790(v13);
  result = v18;
  *v1 = v19;
  return result;
}

uint64_t destroy for FailureDependencyGraph.Edge(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_18E689C20(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 16);
  v11 = *(v9 - 8) + 16;
  v12 = *(*(v9 - 8) + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;

  v10(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((((v15 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v19 = ((a1 + v18) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E689D58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t *sub_18E689E34(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v8)
  {
    v8 = *(v6 + 64);
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  v11 = *(__dst + v9);
  v12 = v11 - 4;
  if (v11 < 4)
  {
LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v11 >= 2)
    {
      goto LABEL_30;
    }

LABEL_29:
    (*(v6 + 8))(__dst, v5);
    goto LABEL_30;
  }

  if (v9 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (*(__dst + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    v11 = v14 + 4;
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *__dst;
  if (v9 >= 4)
  {
    goto LABEL_20;
  }

LABEL_25:
  v11 = (v14 | (v12 << v10)) + 4;
  if (v11 <= 1)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v11 == 2)
  {
    goto LABEL_29;
  }

  if (v11 == 3)
  {
    sub_18E683B98(*__dst);
  }

LABEL_30:
  v15 = *(__src + v9);
  v16 = v15 - 4;
  if (v15 < 4)
  {
    goto LABEL_44;
  }

  if (v9 <= 3)
  {
    v17 = v9;
  }

  else
  {
    v17 = 4;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (*(__src + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_43;
  }

  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = *__src;
  if (v9 >= 4)
  {
LABEL_43:
    v15 = v18 + 4;
LABEL_44:
    if (v15 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_50:
  v15 = (v18 | (v16 << v10)) + 4;
  if (v15 > 1)
  {
LABEL_51:
    if (v15 == 2)
    {
      (*(v6 + 32))(__dst, __src, v5);
      v19 = 2;
      goto LABEL_58;
    }

    if (v15 == 3)
    {
      *__dst = *__src;
      v19 = 3;
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_45:
  if (!v15)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v9) = 0;
    return __dst;
  }

  if (v15 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v19 = 1;
LABEL_58:
    *(__dst + v9) = v19;
    return __dst;
  }

LABEL_54:

  return memcpy(__dst, __src, v9 + 1);
}

id sub_18E68A150()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  (*(v1 + 296))(&v5);

  if (v6 != 3)
  {
    return 0;
  }

  v2 = v5;
  v3 = sub_18E68A28C();
  sub_18E69E818(v2, 3);
  return v3;
}

id sub_18E68A28C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = v1;
      v4 = 0xD000000000000013;
      v6 = 0x800000018E73A6F0;
      v5 = 1;
      goto LABEL_8;
    }

    v3 = v1;
    v4 = 0x646564756C637845;
    v5 = 0;
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    v7 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = sub_18E68A4B0(7, 0x6D6F74737543, 0xE600000000000000, 0x100000000, (v1 & 0x3FFFFFFFFFFFFFFFLL));
    sub_18E683B98(v1);
    return v8;
  }

  if (v1 <= 0xC000000000000001)
  {
    if (v1 != 0xC000000000000000)
    {
      v3 = 0x100000000;
      v4 = 0xD000000000000016;
      v6 = 0x800000018E73A6D0;
      v5 = 3;
      goto LABEL_8;
    }

    v3 = 0x100000000;
    v4 = 0x64656C6261736944;
    v5 = 2;
LABEL_4:
    v6 = 0xE800000000000000;
    goto LABEL_8;
  }

  if (v1 == 0xC000000000000002)
  {
    v3 = 0x100000000;
    v4 = 0xD000000000000021;
    v6 = 0x800000018E73A6A0;
    v5 = 4;
  }

  else
  {
    v3 = 0x100000000;
    if (v1 == 0xC000000000000003)
    {
      v4 = 0x646574726F6241;
      v5 = 5;
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000018E73A680;
      v5 = 6;
      v4 = 0xD000000000000012;
    }
  }

LABEL_8:

  return sub_18E68A4B0(v5, v4, v6, v3, 0);
}

id sub_18E68A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E748, qword_18E72E4C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  v11 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_18E72AFD8();
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v13;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_18E68A73C(inited);
  swift_setDeallocating();
  sub_18E68A9AC(inited + 32);
  if ((a4 & 0x100000000) == 0)
  {
    v34 = v12;
    *&v33 = sub_18E72B778();
    *(&v33 + 1) = v14;
    sub_18E68A8E4(&v33, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18E68AAAC(v30, 0x4E646574616C6572, 0xED0000444965646FLL, isUniquelyReferenced_nonNull_native);
  }

  if (a5)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17 = sub_18E72AFD8();
    v19 = v18;
    swift_getErrorValue();
    v20 = v31;
    v21 = v32;
    v34 = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
    sub_18E68A8E4(&v33, v30);
    v23 = a5;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_18E68AAAC(v30, v17, v19, v24);
  }

  v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v26 = sub_18E72AFC8();
  v27 = sub_18E72AEC8();

  v28 = [v25 initWithDomain:v26 code:a1 userInfo:v27];

  return v28;
}

unint64_t sub_18E68A73C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
    v3 = sub_18E72B738();
    v4 = a1 + 32;

    while (1)
    {
      sub_18E6D4CCC(v4, &v13, &qword_1EAC8E750, &qword_18E72EA00);
      v5 = v13;
      v6 = v14;
      result = sub_18E68A86C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18E68A8E4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_18E68A86C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_18E72B888();
  _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  v6 = sub_18E72B8E8();

  return sub_18E68A8F4(a1, a2, v6);
}

_OWORD *sub_18E68A8E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_18E68A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_18E72B7C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_18E68A9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E750, &qword_18E72EA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_18E68AA7C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *sub_18E68AAAC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18E68A86C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18E70CCD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18E68ABFC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_18E68A86C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_18E72B818();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_18E68A8E4(a1, v23);
  }

  else
  {
    sub_18E68AEB4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_18E68ABFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
  v36 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_18E68A8E4(v25, v37);
      }

      else
      {
        sub_18E69F7B4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_18E72B888();
      _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      result = sub_18E72B8E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_18E68A8E4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_18E68AEB4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_18E68A8E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_18E68B020(unint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    v16 = 0;
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);

    sub_18E68B228(a1, 0, v13, v12, &v16);

    return v16;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72CA20;
  *(inited + 32) = a1;

  v6 = sub_18E68D820(inited);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();

  v8 = sub_18E68C78C(v6, 0, sub_18E6BFA50, a1, v3, v4);

  if (!*(v8 + 16))
  {

    return 0;
  }

  v9 = *(v8 + 32);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < 0)
  {
    v14 = *(v8 + 32);
  }

  result = sub_18E72B518();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v15 = MEMORY[0x193AD1B60](0, v9);

    return v15;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18E68B228(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a4;
  if (a2 == 2)
  {
    goto LABEL_4;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

LABEL_4:
    if (!*(a4 + 16))
    {
      return result;
    }

    result = sub_18E6879CC(result);
    if ((v7 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!*(a3 + 16))
  {
    return result;
  }

  result = sub_18E6879CC(result);
  if ((v9 & 1) == 0)
  {
    return result;
  }

  v6 = a3;
LABEL_10:
  v10 = *(*(v6 + 56) + 8 * result);

  sub_18E68B2D8(v11, a5);
}

uint64_t sub_18E68B2D8(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v2 = v28;
    v4 = v29;
    v5 = v30;
    v6 = v31;
    v7 = v32;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  while (v2 < 0)
  {
    v17 = sub_18E72B548();
    if (!v17)
    {
      return sub_18E687EE8();
    }

    v24 = v17;
    type metadata accessor for AnyGestureNode();
    v16 = swift_dynamicCast();
    v15 = v26;
    v13 = v6;
    v14 = v7;
    if (!v26)
    {
      return sub_18E687EE8();
    }

LABEL_18:
    v18 = &v24;
    v19 = (*(*v15 + 304))(&v24, v16);
    v20 = v25;
    if (v25 == 255)
    {
      v18 = &v26;
      (*(*v15 + 296))(&v26, v19);
      v20 = v27;
    }

    if (v20 <= 2)
    {
      if (v20 != 2)
      {
LABEL_25:
        v22 = *a2;
        *a2 = v15;

        return sub_18E687EE8();
      }
    }

    else
    {
      v21 = *v18;
      if (v20 == 3)
      {
        sub_18E69E818(v21, 3);
      }

      else if (v21)
      {
        goto LABEL_25;
      }
    }

    v6 = v13;
    v7 = v14;
  }

  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_18E687EE8();
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_18E687EE8();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E68B548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18E68B64C(void *a1)
{
  v2 = sub_18E72AFD8();
  v4 = v3;
  v5 = a1;
  sub_18E68B6EC(v2, v4);

  return 1;
}

void sub_18E68B6EC(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v63 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x188);
  v3 = type metadata accessor for GesturePhase();
  v4 = sub_18E72B438();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = type metadata accessor for RingBuffer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v62 = *(v3 - 8);
  v18 = *(v62 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v48 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v51 = v2;
  v28 = *(v2 + qword_1EAC8DC80);
  sub_18E67DBC8(v17);
  sub_18E67DE08(v10, v9);
  v29 = *(v11 + 8);
  v56 = v10;
  v57 = v11 + 8;
  v30 = v10;
  v31 = v62;
  v54 = v29;
  v29(v17, v30);
  v32 = *(v31 + 48);
  v33 = v32(v9, 1, v3);
  v61 = v28;
  if (v33 == 1)
  {
    GestureNode.phase.getter(v27);
    if (v32(v9, 1, v3) != 1)
    {
      (*(v48 + 8))(v9, v49);
    }
  }

  else
  {
    (*(v31 + 32))(v27, v9, v3);
  }

  v34 = *(v31 + 32);
  v34(v25, v27, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*(v62 + 8))(v25, v3);
      return;
    }
  }

  else
  {
    (*(*(v63 - 8) + 8))(v25, v63);
  }

  v50 = v34;
  v36 = v55;
  sub_18E67DBC8(v55);
  v37 = v59;
  v38 = v32;
  v39 = v56;
  sub_18E67DE08(v56, v59);
  v54(v36, v39);
  if (v38(v37, 1, v3) == 1)
  {
    v40 = v58;
    GestureNode.phase.getter(v58);
    v41 = v38(v37, 1, v3);
    v42 = v50;
    if (v41 != 1)
    {
      (*(v48 + 8))(v37, v49);
    }
  }

  else
  {
    v40 = v58;
    v42 = v50;
    v50(v58, v37, v3);
  }

  v43 = v60;
  v42(v60, v40, v3);
  v44 = swift_getEnumCaseMultiPayload();
  if (v44 <= 2)
  {
    (*(*(v63 - 8) + 8))(v43, v63);
    goto LABEL_19;
  }

  if (v44 == 3)
  {
    (*(v62 + 8))(v43, v3);
    goto LABEL_19;
  }

  if (v44 != 4)
  {
LABEL_19:
    sub_18E690AE0();
    type metadata accessor for GestureNodeShim.Failure();
    swift_getWitnessTable();
    v45 = swift_allocError();
    v46 = v53;
    *v47 = v52;
    v47[1] = v46;

    GestureNode.fail(with:)(v45);
  }
}

uint64_t sub_18E68BD30(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2[1] <= result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v2 + *(a2 + 40));
  if (__OFADD__(v3, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 + result != 0x8000000000000000 || *v2 != -1)
  {
    v5 = v2[2];
    v6 = *(a2 + 16);
    return sub_18E72B298();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18E68BD94(uint64_t a1)
{
  v3 = sub_18E72AE18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v1;
  v8 = v1[14];
  v9 = sub_18E68C46C(a1);
  v66 = v9[2];
  if (!v66)
  {
  }

  v11 = 0;
  v65 = v9 + 4;
  v58 = (v4 + 8);
  v59 = (v4 + 16);
  *&v10 = 136315394;
  v57 = v10;
  v60 = v7;
  v61 = v3;
  v64 = v9;
  while (1)
  {
    if (v11 >= v9[2])
    {
      goto LABEL_42;
    }

    v14 = &v65[2 * v11];
    v16 = *v14;
    v15 = v14[1];
    if (!v15)
    {
      break;
    }

    v17 = v14[1];
    swift_retain_n();

    if (sub_18E680FFC())
    {
      v18 = qword_1EAC8E570;
      if (qword_1EAC8D8F8 != -1)
      {
        swift_once();
        v18 = qword_1EAC8E570;
      }
    }

    else
    {
      v18 = qword_1ED6F7FA0;
      if (qword_1ED6F7F98 != -1)
      {
        swift_once();
        v18 = qword_1ED6F7FA0;
      }
    }

    v24 = __swift_project_value_buffer(v3, v18);
    (*v59)(v7, v24, v3);

    v25 = v7;
    v26 = sub_18E72ADF8();
    v27 = sub_18E72B3E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v28 = v57;
      v29 = AnyGestureNode.debugLabel.getter();
      v31 = sub_18E6C5E8C(v29, v30, &v70);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;

      v33 = sub_18E6EE4B8(v32);

      v34 = MEMORY[0x193AD16E0](v33, &type metadata for GestureNodeID);
      v36 = v35;

      v37 = sub_18E6C5E8C(v34, v36, &v70);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_18E67C000, v26, v27, "%s is blocking reset of the subgraph: %s", v28, 0x16u);
      v38 = v62;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v38, -1, -1);
      v39 = v28;
      v3 = v61;
      MEMORY[0x193AD25C0](v39, -1, -1);

      v7 = v60;
      (*v58)(v60, v3);
    }

    else
    {

      (*v58)(v25, v3);
      v7 = v25;
    }

    v12 = v67[12];
    v13 = v67[13];
    __swift_project_boxed_opaque_existential_1(v67 + 9, v12);
    (*(v13 + 8))(v12, v13);
    sub_18E68DE20(v16, v15);

LABEL_5:
    v9 = v64;
    if (++v11 == v66)
    {
    }
  }

  v63 = *v14;
  if ((v16 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    v19 = v72;
    v20 = v73;
    v22 = v74;
    v21 = v75;
    v23 = v76;
  }

  else
  {
    v40 = -1 << *(v16 + 32);
    v20 = v16 + 56;
    v22 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v23 = v42 & *(v16 + 56);
    swift_bridgeObjectRetain_n();
    v21 = 0;
    v19 = v16;
  }

  v62 = v22;
  v43 = (v22 + 64) >> 6;
  while (v19 < 0)
  {
    v50 = sub_18E72B548();
    if (!v50 || (v68 = v50, type metadata accessor for AnyGestureNode(), v49 = swift_dynamicCast(), v48 = v70, v46 = v21, v47 = v23, !v70))
    {
LABEL_36:
      sub_18E687EE8();
      sub_18E68F304(v63);

      v7 = v60;
      v3 = v61;
      goto LABEL_5;
    }

LABEL_32:
    v51 = &v68;
    v52 = (*(*v48 + 304))(&v68, v49);
    v53 = v69;
    if (v69 == 255)
    {
      v51 = &v70;
      (*(*v48 + 296))(&v70, v52);
      v53 = v71;
    }

    v54 = *v51;
    v55 = v53 & 0xFE;
    sub_18E69E818(v54, v53);
    if (v55 == 2)
    {
      (*(*v48 + 352))();
    }

    v21 = v46;
    v23 = v47;
  }

  v44 = v21;
  v45 = v23;
  v46 = v21;
  if (v23)
  {
LABEL_28:
    v47 = (v45 - 1) & v45;
    v48 = *(*(v19 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));

    if (!v48)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      goto LABEL_36;
    }

    v45 = *(v20 + 8 * v46);
    ++v44;
    if (v45)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_18E68C46C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = sub_18E68C78C(a1, 2u, 0, 0, v4, v3);

  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v35 = MEMORY[0x1E69E7CC0];
  result = sub_18E68D800(0, v6, 0);
  v8 = 0;
  v9 = v35;
  v27 = v5;
  v28 = v5 + 32;
  v26 = v6;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      goto LABEL_39;
    }

    v30 = v9;
    v10 = *(v28 + 8 * v8);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v24 = *(v28 + 8 * v8);
      }

      v11 = sub_18E72B518();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      break;
    }

    v13 = 0;
LABEL_29:
    v20 = sub_18E68D820(v10);

    v9 = v30;
    v35 = v30;
    v22 = *(v30 + 16);
    v21 = *(v30 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_18E68D800((v21 > 1), v22 + 1, 1);
      v9 = v35;
    }

    ++v8;
    *(v9 + 16) = v22 + 1;
    v23 = v9 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v13;
    if (v8 == v6)
    {
      v25 = v9;

      return v25;
    }
  }

  v29 = v8;
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x193AD1B60](v12, v10);
    v13 = result;
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_37;
    }

LABEL_13:
    v15 = (*v13 + 296);
    v16 = *v15;
    (*v15)(&v33);
    if (!v34)
    {
      goto LABEL_28;
    }

    sub_18E69E818(v33, v34);
    v17 = &v31;
    result = (*(*v13 + 304))(&v31);
    v18 = v32;
    if (v32 == 255)
    {
      v17 = &v33;
      result = (v16)(&v33, result);
      v18 = v34;
    }

    if (v18 <= 2)
    {
      if (v18 != 2)
      {
        if (v18 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v19 = *v17;
      if (v18 == 3)
      {
        sub_18E69E818(v19, 3);
      }

      else if (v19)
      {
        goto LABEL_28;
      }
    }

    ++v12;
    if (v14 == v11)
    {
      v13 = 0;
LABEL_28:
      v6 = v26;
      v5 = v27;
      v8 = v29;
      goto LABEL_29;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

  v13 = *(v10 + 8 * v12 + 32);

  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_13;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18E68C78C(uint64_t a1, unsigned int a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v42[0] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E68D978(&qword_1ED6F7F48);
    result = sub_18E72B2D8();
    v8 = v42[1];
    v10 = v42[2];
    v11 = v42[3];
    v12 = v42[4];
    v13 = v42[5];
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  v39 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v23 = sub_18E72B548();
  if (!v23)
  {
LABEL_38:
    sub_18E687EE8();

    return v39;
  }

  v41 = v23;
  type metadata accessor for AnyGestureNode();
  swift_dynamicCast();
  v22 = v40[0];
  while (1)
  {
    v24 = v42[0];
    if ((v42[0] & 0xC000000000000001) != 0)
    {

      v18 = sub_18E72B558();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    else if (*(v42[0] + 16))
    {
      v25 = *(v42[0] + 40);
      sub_18E72B888();
      v26 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v26);
      v27 = sub_18E72B8E8();
      v28 = -1 << *(v24 + 32);
      v29 = v27 & ~v28;
      if ((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (*(*(v24 + 48) + 8 * v29) != v22)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_10:

        if (v8 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }
    }

LABEL_27:
    LOBYTE(v41) = 1;
    v40[0] = MEMORY[0x1E69E7CC0];
    sub_18E68CB70(a3);
    sub_18E68CB80(v22, v42, a2, v40, a5, a6, a3, a4, &v41);
    sub_18E6826D0(a3);
    v31 = v40[0];
    if (v40[0] >> 62)
    {
      if (!sub_18E72B518())
      {
LABEL_37:

        goto LABEL_10;
      }
    }

    else if (!*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v41 & 1) == 0)
    {
      goto LABEL_37;
    }

    v35 = a5;
    v32 = a6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_18E68D5C0(0, v39[2] + 1, 1, v39);
    }

    v34 = v39[2];
    v33 = v39[3];
    if (v34 >= v33 >> 1)
    {
      v39 = sub_18E68D5C0((v33 > 1), v34 + 1, 1, v39);
    }

    v39[2] = v34 + 1;
    v39[v34 + 4] = v31;
    a6 = v32;
    a5 = v35;
    if (v8 < 0)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (!v13)
    {
      break;
    }

    v19 = v12;
LABEL_18:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = *(*(v8 + 48) + ((v19 << 9) | (8 * v21)));
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_38;
    }

    v13 = *(v10 + 8 * v19);
    ++v20;
    if (v13)
    {
      v12 = v19;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E68CB70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E68CB80(uint64_t a1, uint64_t *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 (*a7)(uint64_t *), uint64_t a8, _BYTE *a9)
{
  v14 = *a2;
  sub_18E68CB70(a7);
  if (!sub_18E68CE2C(a1, v14))
  {

    sub_18E6880B0(v35, a1);

    if (sub_18E68D150(a1, a4, a7, a8, a9))
    {
      v15 = sub_18E68D214(a1, a3, a5, a6);
      v34 = v15;
      v30 = a4;
      if (v15 >> 62)
      {
        goto LABEL_28;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
      {
        v17 = 0;
        while ((v34 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193AD1B60](v17, v34);
          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
            goto LABEL_26;
          }

LABEL_14:
          if (v18 != a1)
          {
            v20 = *a2;
            if ((*a2 & 0xC000000000000001) != 0)
            {
              if (v20 < 0)
              {
                v21 = *a2;
              }

              v22 = sub_18E72B558();

              if ((v22 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (!*(v20 + 16))
              {
                goto LABEL_7;
              }

              v23 = *(v20 + 40);
              sub_18E72B888();
              v24 = sub_18E72AFA8();
              MEMORY[0x193AD1DF0](v24);
              v25 = sub_18E72B8E8();
              v26 = -1 << *(v20 + 32);
              v27 = v25 & ~v26;
              if (((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_7;
              }

              v28 = ~v26;
              while (*(*(v20 + 48) + 8 * v27) != a1)
              {
                v27 = (v27 + 1) & v28;
                if (((*(v20 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }
            }

            sub_18E68CB70(a7);
            sub_18E68CB80(v18, a2, a3, v30, a5, a6, a7, a8, a9);
            sub_18E6826D0(a7);
          }

LABEL_7:

          if (v17 == i)
          {
            goto LABEL_29;
          }
        }

        if (v17 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v18 = *(v34 + 32 + 8 * v17);

        v19 = __OFADD__(v17++, 1);
        if (!v19)
        {
          goto LABEL_14;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        ;
      }

LABEL_29:
    }
  }

  return sub_18E6826D0(a7);
}

BOOL sub_18E68CE2C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_18E72B558();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (v5 = *(a2 + 40), sub_18E72B888(), v7 = sub_18E72AFA8(), MEMORY[0x193AD1DF0](v7), v8 = sub_18E72B8E8(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(a2 + 48) + 8 * v10);
      result = v12 == a1;
      if (v12 == a1)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E68CF28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_18E72B888();

      v19 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v19);
      result = sub_18E72B8E8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E68D150(uint64_t a1, void *a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4, _BYTE *a5)
{
  v11 = a1;
  if (a3 && (v7 = a3(&v11)) != 0)
  {
    if (v7 != 1)
    {
      *a5 = 0;
    }
  }

  else
  {

    MEMORY[0x193AD16B0](v8);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18E72B1B8();
    }

    sub_18E72B218();
  }

  return 1;
}

void *sub_18E68D214(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (*(a3 + 16))
      {
        v6 = sub_18E6879CC(a1);
        if (v7)
        {
          v8 = *(a3 + 56);
LABEL_9:
          v10 = *(v8 + 8 * v6);

          goto LABEL_24;
        }
      }

      goto LABEL_10;
    }

    v11 = MEMORY[0x1E69E7CC0];
    if (*(a4 + 16) && (v12 = a1, v13 = sub_18E6879CC(a1), a1 = v12, (v14 & 1) != 0))
    {
      v23 = *(*(a4 + 56) + 8 * v13);

      a1 = v12;
      if (!*(a3 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v11 >> 62)
      {
        v22 = a1;
        if (sub_18E72B518())
        {
          v15 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v15 = MEMORY[0x1E69E7CD0];
        }

        a1 = v22;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CD0];
      }

      v23 = v15;
      if (!*(a3 + 16))
      {
        goto LABEL_21;
      }
    }

    v16 = sub_18E6879CC(a1);
    if (v17)
    {
      v18 = *(*(a3 + 56) + 8 * v16);

LABEL_23:
      sub_18E68D3E0(v19);
      v10 = v23;
      goto LABEL_24;
    }

LABEL_21:
    if (v11 >> 62 && sub_18E72B518())
    {
      v19 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CD0];
    }

    goto LABEL_23;
  }

  if (*(a4 + 16))
  {
    v6 = sub_18E6879CC(a1);
    if (v9)
    {
      v8 = *(a4 + 56);
      goto LABEL_9;
    }
  }

LABEL_10:
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18E72B518())
  {
    v10 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

LABEL_24:
  v20 = sub_18E687AA8(v10);

  return v20;
}

uint64_t sub_18E68D3E0(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E68D978(&qword_1ED6F7F48);
    result = sub_18E72B2D8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_18E687EE8();
    }

    while (1)
    {
      sub_18E6880B0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18E72B548())
      {
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_18E687EE8();
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_18E687EE8();
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}