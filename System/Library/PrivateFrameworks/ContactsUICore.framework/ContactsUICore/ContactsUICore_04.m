uint64_t sub_1A32B6410()
{
  v1 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v60;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A32B6EF8;
  *(v3 + 24) = v2;
  v58 = sub_1A32B7C20;
  v59 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1A3402438;
  v57 = &block_descriptor_13;
  v4 = _Block_copy(&aBlock);
  sub_1A34C9010();

  CGPathApplyWithBlock(v0, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v60;

  if (v6[2] <= 2uLL)
  {
  }

  v53 = v6[4];
  v52 = v6[5];

  v60 = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = &v60;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A32B7C24;
  *(v8 + 24) = v7;
  v58 = sub_1A32B7C20;
  v59 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1A3402438;
  v57 = &block_descriptor_24;
  v9 = _Block_copy(&aBlock);
  sub_1A34C9010();

  CGPathApplyWithBlock(v0, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_18;
  }

  v11 = v60;

  v12 = v11[2];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  *(inited + 32) = *&v53;
  *(inited + 40) = *&v52;
  aBlock = v11;
  v55 = (v11 + 4);
  v56 = 1;
  v57 = v13;
  sub_1A32B7964(inited);
  swift_setDeallocating();
  v16 = *&v52;
  v15 = *&v53;
  result = aBlock;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = (v57 >> 1) - v56;
  if (v57 >> 1 == v56)
  {
    return swift_unknownObjectRelease();
  }

  if ((v57 >> 1) > v56)
  {
    if (v20 >= 4)
    {
      v21 = v56 + (v20 & 0xFFFFFFFFFFFFFFFCLL);
      v22 = vdupq_lane_s64(v53, 0);
      v23 = vdupq_lane_s64(v52, 0);
      v24 = (v55 + 16 * v56 + 32);
      __asm { FMOV            V1.2D, #0.5 }

      v30 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v31 = v22;
        v32 = v24 - 4;
        v61 = vld2q_f64(v32);
        v33 = vextq_s8(v23, v61.val[1], 8uLL);
        *v22.f64 = vld2q_f64(v24);
        v34 = vextq_s8(v61.val[1], v23, 8uLL);
        v35 = vextq_s8(v31, v61.val[0], 8uLL);
        v36 = vextq_s8(v61.val[0], v22, 8uLL);
        v37 = vaddq_f64(v33, v61.val[1]);
        v38 = vaddq_f64(v34, v23);
        v39 = vmulq_f64(vmulq_f64(vsubq_f64(v35, v61.val[0]), v37), _Q1);
        v40 = vmulq_f64(vmulq_f64(vsubq_f64(v36, v22), v38), _Q1);
        v41 = vaddq_f64(v35, v61.val[0]);
        v42 = vsubq_f64(vmulq_f64(v35, v61.val[1]), vmulq_f64(v33, v61.val[0]));
        v61.val[0] = vsubq_f64(vmulq_f64(v36, v23), vmulq_f64(v34, v22));
        v61.val[1] = vmulq_f64(v41, v42);
        v43 = vmulq_f64(vaddq_f64(v36, v22), v61.val[0]);
        v44 = vmulq_f64(v37, v42);
        v61.val[0] = vmulq_f64(v38, v61.val[0]);
        v17 = v17 + v44.f64[0] + v44.f64[1] + v61.val[0].f64[0] + v61.val[0].f64[1];
        v18 = v18 + v61.val[1].f64[0] + v61.val[1].f64[1] + v43.f64[0] + v43.f64[1];
        v19 = v19 + v39.f64[0] + v39.f64[1] + v40.f64[0] + v40.f64[1];
        v24 += 8;
        v30 -= 4;
      }

      while (v30);
      if (v20 == (v20 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return swift_unknownObjectRelease();
      }

      v15 = v22.f64[1];
      v16 = v23.f64[1];
    }

    else
    {
      v21 = v56;
    }

    v45 = (v57 >> 1) - v21;
    v46 = (v55 + 16 * v21 + 8);
    do
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v49 = v16 + *v46;
      v19 = v19 + (v15 - v47) * v49 * 0.5;
      v50 = v15 + v47;
      v51 = v15 * *v46 - v16 * v47;
      v18 = v18 + v50 * v51;
      v17 = v17 + v49 * v51;
      v46 += 2;
      v15 = v47;
      v16 = v48;
      --v45;
    }

    while (v45);
    return swift_unknownObjectRelease();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A32B6934()
{
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v1 = swift_allocObject();
  *(v1 + 16) = &v21;
  *(v1 + 24) = &v22;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1A32B6EE0;
  *(v2 + 24) = v1;
  v20[4] = sub_1A32B6EE8;
  v20[5] = v2;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A3402438;
  v20[3] = &block_descriptor_1;
  v3 = _Block_copy(v20);
  sub_1A34C9010();

  CGPathApplyWithBlock(v0, v3);
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v2 = v22;
    if (!(v22 >> 62))
    {
      v6 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_17:
      v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

      return v8;
    }
  }

  result = sub_1A34CD9B0();
  v6 = result;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v6 >= 1)
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A58EF310](v7, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v7 + 32);
      }

      v10 = v9;
      sub_1A32B6410();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A32986E8(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_1A32986E8((v17 > 1), v18 + 1, 1, v8);
      }

      ++v7;
      *(v8 + 2) = v18 + 1;
      v19 = &v8[40 * v18];
      *(v19 + 4) = v10;
      *(v19 + 5) = v12;
      *(v19 + 6) = v14;
      *(v19 + 7) = v16;
      v19[64] = v16 < 0.0;
    }

    while (v6 != v7);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_1A32B6BF0(int *a1, id *a2, void *a3)
{
  v3 = *a1;
  if (*a1 <= 1)
  {
    if (v3)
    {
      if (v3 != 1 || !*a2)
      {
        return;
      }

      v10 = *a2;
      sub_1A34CD6E0();
    }

    else
    {
      Mutable = CGPathCreateMutable();
      v9 = *a2;
      *a2 = Mutable;

      if (!*a2)
      {
        return;
      }

      v10 = *a2;
      sub_1A34CD6D0();
    }
  }

  else if (v3 == 2)
  {
    if (!*a2)
    {
      return;
    }

    v10 = *a2;
    sub_1A34CD6C0();
  }

  else
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if (!*a2 || (CGPathCloseSubpath(*a2), (v6 = *a2) == 0))
        {
          CGPathCreateMutable();
          v6 = 0;
        }

        MEMORY[0x1A58EEB60](v6);
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A34CD390();
        }

        sub_1A34CD3B0();
      }

      return;
    }

    if (!*a2)
    {
      return;
    }

    v10 = *a2;
    sub_1A34CD6F0();
  }
}

double sub_1A32B6E3C(double a1)
{
  v2 = sub_1A32B6934();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 1.0 - a1;
    v5 = (v2 + 64);
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = *(v5 - 3);
      v10 = *(v5 - 2);
      v11 = *(v5 - 1);
      v12 = *v5;
      v5 += 5;
      if (v12)
      {
        v13 = v4;
      }

      else
      {
        v13 = 1.0;
      }

      v7 = v7 + v11 * v13;
      v8 = v8 + v11 * (v9 * v13);
      v6 = v6 + v11 * (v10 * v13);
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  return v8 / v7;
}

uint64_t sub_1A32B6F00(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1A34CDE40();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1A3444530(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 16 * v14), 16 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A32B7078(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 16 * a2;
  v36 = v10;
  v37 = (v19 + 16 * a3);
  result = sub_1A32B7540(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 16 * v21);
    v23 = &v22[16 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 16 * a2);
    }

    v35(v19, a3);
    v24 = &v23[16 * v38];
    if (v37 != v24 || v37 >= &v24[16 * v14])
    {
      memmove(v37, v24, 16 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 16 * v21), 16 * a2);
    result = (a4)(&v18[16 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 16 * v28), 16 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-16 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;

  return sub_1A34C9010();
}

uint64_t sub_1A32B72AC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1A32B7364(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1A3444530(v6, v25);
}

uint64_t sub_1A32B7540(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v7 != v9 + 16 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1A33A0214(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_1A32B76A0(uint64_t result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_49;
  }

  v30 = v2[2];
  v6 = *(result + 16);
  if (v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_50:
      __break(1u);
      return result;
    }

    v7 = result + 32;
    v8 = a2 + 1;
    v9 = *(result + 32 + 16 * a2);
    v29 = v2;
    while (!__OFADD__(v5, 1))
    {
      v31 = v9;
      v10 = v7;
      v33 = sub_1A32B7364(v5, v5 + 1, *v2, v2[1], v30, v4);
      v11 = sub_1A32B7524();
      sub_1A32B7078(&v33, v5, 0, v11);

      v12 = v2[2];
      v4 = v2[3];
      v13 = (v4 >> 1) - v12;
      if (__OFSUB__(v4 >> 1, v12))
      {
        goto LABEL_43;
      }

      v28 = v4 >> 1;
      v30 = v2[2];
      v14 = v2[1] + 16 * v12;
      if (v4)
      {
        sub_1A34CDE40();
        swift_unknownObjectRetain();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
          swift_unknownObjectRelease();
          v15 = MEMORY[0x1E69E7CC0];
        }

        v16 = *(v15 + 16);
        if (v14 + 16 * v13 == v15 + 16 * v16 + 32)
        {
          v18 = *(v15 + 24);

          v19 = (v18 >> 1) - v16;
          v20 = __OFADD__(v13, v19);
          v17 = v13 + v19;
          if (v20)
          {
            goto LABEL_48;
          }

          v7 = v10;
        }

        else
        {

          v17 = v13;
        }

        v2 = v29;
      }

      else
      {
        v17 = (v4 >> 1) - v12;
      }

      v9 = v31;
      if (v5 >= v17)
      {
        v21 = 0;
        v20 = __OFSUB__(v5, v13);
        v22 = v5 - v13;
        if (v20)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *(v14 + 16 * v5++) = v31;
        if (v8 == v6)
        {
          v9 = 0uLL;
          v21 = 1;
          v8 = v6;
          v20 = __OFSUB__(v5, v13);
          v22 = v5 - v13;
          if (v20)
          {
            goto LABEL_44;
          }
        }

        else
        {
          while (1)
          {
            if (v8 >= v6)
            {
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v23 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_41;
            }

            v24 = v5;
            v9 = *(v7 + 16 * v8);
            if (v17 == v5)
            {
              break;
            }

            *(v14 + 16 * v5++) = v9;
            ++v8;
            if (v23 == v6)
            {
              v9 = 0uLL;
              v8 = v6;
              goto LABEL_31;
            }
          }

          ++v8;
          v5 = v17;
LABEL_31:
          v21 = v24 < v17;
          v20 = __OFSUB__(v5, v13);
          v22 = v5 - v13;
          if (v20)
          {
            goto LABEL_44;
          }
        }
      }

      if (v22)
      {
        v32 = v9;
        sub_1A34CDE40();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x1E69E7CC0];
        }

        v25 = *(result + 16);
        v20 = __OFADD__(v25, v22);
        v26 = v25 + v22;
        if (v20)
        {
          goto LABEL_45;
        }

        *(result + 16) = v26;

        v27 = v28 + v22;
        if (__OFADD__(v28, v22))
        {
          goto LABEL_46;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v4 = v4 & 1 | (2 * v27);
        v2 = v29;
        v29[3] = v4;
        v9 = v32;
      }

      if (v21)
      {
        return result;
      }
    }

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
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1A32B7964(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_1A34CDE40();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_1A32B6F00(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_35;
  }

  v18 = (v1[1] + 16 * v16 + 16 * v17);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  if (v18 != (v19 + 16 * v20 + 32))
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_41:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (v24 < v6)
  {
    goto LABEL_37;
  }

  result = memcpy(v18, (v5 + 32), 16 * v6);
  if (v6 <= 0)
  {
    goto LABEL_28;
  }

  result = v17 + v6;
  if (__OFADD__(v17, v6))
  {
    goto LABEL_39;
  }

  result = sub_1A32B72AC(result);
LABEL_28:
  if (v6 == v24)
  {

    return sub_1A32B76A0(v5, v6);
  }

  return result;
}

uint64_t sub_1A32B7B74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32B7BBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A32B7C28()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A32B7D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A32BB4B0(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A34CB5F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A34CD650();
    v14 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A32B7F54(uint64_t a1)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v9 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_1A32B80A8(uint64_t a1)
{
  v2 = sub_1A32B7C28();
  swift_getKeyPath();
  sub_1A32BB0A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v3 = *(v2 + 44);

  if (v3 & 1) == 0 && (v4 = *(sub_1A32B7C28() + 24), , , v5 = sub_1A3335964(0, v4), , (v5) && (v6 = *(sub_1A32B7C28() + 24), , , v7 = sub_1A3335964(1, v6), , (v7))
  {
    return sub_1A32B7F54(a1);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1A32B81F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v138 = sub_1A34CB100();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1A34CB530();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1A34CB8C0();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A34CB5F0();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v87 - v8;
  v9 = *(a1 + 16);
  v140 = *(a1 + 24);
  v10 = v9;
  v11 = sub_1A34CC8A0();
  v121 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  sub_1A34CB970();
  v14 = sub_1A34CAC30();
  v125 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v87 - v15;
  sub_1A34CB6F0();
  v112 = v14;
  v16 = sub_1A34CAC30();
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v87 - v17;
  v117 = v16;
  v18 = sub_1A34CAC30();
  v107 = v18;
  v129 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F40);
  WitnessTable = swift_getWitnessTable();
  v97 = WitnessTable;
  v22 = sub_1A32BB0A0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v155 = WitnessTable;
  v156 = v22;
  v23 = swift_getWitnessTable();
  v105 = v23;
  v24 = sub_1A32BB0A0(&unk_1EB0C0708, MEMORY[0x1E6980270]);
  v153 = v23;
  v154 = v24;
  v116 = swift_getWitnessTable();
  v151 = v116;
  v152 = MEMORY[0x1E697E5C0];
  v25 = swift_getWitnessTable();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F48);
  v27 = sub_1A32BB0E8();
  v147 = v26;
  v148 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v147 = v18;
  v148 = v20;
  v110 = v20;
  v149 = v25;
  v150 = OpaqueTypeConformance2;
  v29 = v25;
  v109 = v25;
  v108 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v106 = &v87 - v31;
  v147 = v18;
  v148 = v20;
  v149 = v29;
  v150 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v103 = OpaqueTypeMetadata2;
  v147 = OpaqueTypeMetadata2;
  v148 = MEMORY[0x1E69815C0];
  v33 = MEMORY[0x1E69815C0];
  v149 = v32;
  v150 = MEMORY[0x1E6981568];
  v34 = v32;
  v104 = v32;
  v35 = MEMORY[0x1E6981568];
  v36 = swift_getOpaqueTypeMetadata2();
  v115 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v102 = &v87 - v37;
  v147 = OpaqueTypeMetadata2;
  v148 = v33;
  v149 = v34;
  v150 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v98 = v36;
  v147 = v36;
  v148 = v38;
  v39 = v38;
  v99 = v38;
  v40 = swift_getOpaqueTypeMetadata2();
  v113 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v96 = &v87 - v41;
  v147 = v36;
  v148 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v91 = v40;
  v147 = v40;
  v148 = v42;
  v43 = v42;
  v92 = v42;
  v44 = swift_getOpaqueTypeMetadata2();
  v95 = v44;
  v111 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v90 = &v87 - v45;
  v147 = v40;
  v148 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v94 = v46;
  v93 = sub_1A32BB1DC();
  v147 = v44;
  v148 = &type metadata for BackButtonHidingAdaptor;
  v149 = v46;
  v150 = v93;
  v100 = MEMORY[0x1E697D2F0];
  v47 = swift_getOpaqueTypeMetadata2();
  v101 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v88 = &v87 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v89 = &v87 - v50;
  v51 = v114;
  v87 = v10;
  v144 = v10;
  v145 = v140;
  v146 = v114;
  sub_1A34CB280();
  sub_1A34CC890();
  v52 = v118;
  sub_1A34CC1F0();
  (*(v121 + 8))(v13, v11);
  v53 = sub_1A34CBAB0();
  v54 = v122;
  sub_1A32B7D68(a1, v122);
  v55 = v126;
  v56 = v123;
  v57 = v127;
  (*(v126 + 104))(v123, *MEMORY[0x1E697FF40], v127);
  LOBYTE(v13) = sub_1A34CB5E0();
  v58 = *(v55 + 8);
  v58(v56, v57);
  v58(v54, v57);
  if (v13)
  {
    v59 = 0x4039000000000000;
  }

  else
  {
    v59 = 0;
  }

  v60 = v120;
  v61 = v112;
  sub_1A32B9384(v53, v59, 0, v112, v105);
  (*(v125 + 8))(v52, v61);
  v62 = sub_1A32B7C28();
  swift_getKeyPath();
  v147 = v62;
  sub_1A32BB0A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v63 = v124;
  v64 = v117;
  sub_1A34CC360();
  (*(v128 + 8))(v60, v64);
  v141 = v87;
  v142 = v140;
  v143 = v51;
  v65 = v106;
  v66 = v107;
  sub_1A34CC380();
  (*(v129 + 8))(v63, v66);
  v147 = sub_1A34CC4E0();
  v67 = v130;
  sub_1A34CB8B0();
  v68 = v102;
  v69 = v103;
  sub_1A34CC110();
  (*(v131 + 8))(v67, v132);

  (*(v119 + 8))(v65, v69);
  v70 = sub_1A34CBA80();
  v71 = v133;
  sub_1A34CB500();
  v72 = v96;
  v73 = v98;
  MEMORY[0x1A58ED7D0](v70, 0x4030000000000000, 0, v71, v98, v99);
  (*(v134 + 8))(v71, v135);
  (*(v115 + 8))(v68, v73);
  v74 = v137;
  v75 = v136;
  v76 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x1E697C438], v138);
  v77 = v90;
  v78 = v91;
  sub_1A34CC260();
  (*(v74 + 8))(v75, v76);
  (*(v113 + 8))(v72, v78);
  v79 = v88;
  v80 = v95;
  v81 = v94;
  v82 = v93;
  sub_1A34CC190();
  (*(v111 + 8))(v77, v80);
  v147 = v80;
  v148 = &type metadata for BackButtonHidingAdaptor;
  v149 = v81;
  v150 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v89;
  sub_1A3345BC8(v79, v47, v83);
  v85 = *(v101 + 8);
  v85(v79, v47);
  sub_1A3345BC8(v84, v47, v83);
  return (v85)(v84, v47);
}

uint64_t sub_1A32B928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualIdentityEditorContainer();
  sub_1A3345BC8(a1 + *(v9 + 48), a2, a3);
  sub_1A3345BC8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A32B9384(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A34CB6F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1A34CA460();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_1A34CB6E0();
  MEMORY[0x1A58EDBC0](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A32B94C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F58);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - v8;
  v9 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F50);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F48);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for VisualIdentityEditorContainer();
  sub_1A32B80A8(v17);
  if (sub_1A34CA5B0())
  {
    v18 = v31;
    (*(v7 + 56))(v13, 1, 1, v31);
    v19 = sub_1A3284D0C(&qword_1EB0C10F0, &qword_1EB0C5F50);
    v35 = v32;
    v36 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A58ECCE0](v13, v18, OpaqueTypeConformance2);
    sub_1A31FF2DC(v13);
  }

  else
  {
    v21 = sub_1A34CB450();
    MEMORY[0x1EEE9AC00](v21);
    *(&v29 - 4) = a2;
    *(&v29 - 3) = a3;
    *(&v29 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F60);
    sub_1A32BB254();
    sub_1A34CA680();
    v22 = sub_1A3284D0C(&qword_1EB0C10F0, &qword_1EB0C5F50);
    v23 = v30;
    v24 = v32;
    MEMORY[0x1A58ECCD0](v11, v32, v22);
    v25 = v31;
    (*(v7 + 16))(v13, v23, v31);
    (*(v7 + 56))(v13, 0, 1, v25);
    v35 = v24;
    v36 = v22;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A58ECCE0](v13, v25, v26);
    sub_1A31FF2DC(v13);
    (*(v7 + 8))(v23, v25);
    (*(v29 + 8))(v11, v24);
  }

  v27 = sub_1A32BB0E8();
  MEMORY[0x1A58ECCD0](v16, v34, v27);
  return sub_1A31FF2DC(v16);
}

uint64_t sub_1A32B9948@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A32BB0A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v16 = sub_1A34CA600();
  v3 = v2;
  sub_1A34CCC80();
  sub_1A34CA760();
  v4 = sub_1A32B7C28();
  swift_getKeyPath();
  sub_1A34C99A0();

  if (*(v4 + 40))
  {
  }

  else
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    v5 = *(v4 + 42);

    v6 = 5.0;
    if (v5 == 2)
    {
      goto LABEL_5;
    }
  }

  v6 = 0.0;
LABEL_5:
  v7 = v3 & 1;
  v8 = sub_1A32B7C28();
  swift_getKeyPath();
  sub_1A34C99A0();

  if (*(v8 + 40))
  {
  }

  else
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    v9 = *(v8 + 42);

    v10 = 0.0;
    if (v9 == 2)
    {
      goto LABEL_9;
    }
  }

  v10 = 1.0;
LABEL_9:
  v11 = sub_1A34CCCB0();
  v12 = sub_1A32B7C28();
  swift_getKeyPath();
  sub_1A34C99A0();

  if (*(v12 + 40))
  {

    v14 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    v15 = *(v12 + 42);

    v14 = v15 == 2;
  }

  *a1 = v16;
  *(a1 + 8) = v7;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v14;
  return result;
}

uint64_t sub_1A32B9CAC(void *a1, void *a2, uint64_t a3, char a4)
{
  v21[1] = a2;
  v7 = sub_1A34CB0B0();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a1;
  v12 = [a1 selectedSegmentIndex];
  sub_1A34C9010();
  v13 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A34CD650();
    v14 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    v13 = v22;
  }

  swift_getKeyPath();
  v22 = v13;
  sub_1A32BB0A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v15 = *(v13 + 40);

  if (v12 != v15)
  {
    sub_1A34C9010();
    v16 = a3;
    if ((a4 & 1) == 0)
    {
      sub_1A34CD650();
      v17 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
      v16 = v22;
    }

    swift_getKeyPath();
    v22 = v16;
    sub_1A34C99A0();

    v18 = *(v16 + 40);

    [v21[0] setSelectedSegmentIndex_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F30);
  sub_1A34CB810();
  v19 = v23;
  swift_beginAccess();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4 & 1;
  sub_1A34C9010();
}

uint64_t sub_1A32B9FE8(uint64_t a1, void *a2)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 selectedSegmentIndex];
  swift_beginAccess();
  if (v9 == 1)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    sub_1A34C9010();
    if ((v14 & 1) == 0)
    {
      sub_1A34CD650();
      v15 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v13 = v18;
    }

    if ((sub_1A3335964(1, *(v13 + 24)) & 1) == 0)
    {
      goto LABEL_12;
    }

    LOBYTE(v18) = 1;
    goto LABEL_11;
  }

  if (!v9)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    sub_1A34C9010();
    if ((v11 & 1) == 0)
    {
      sub_1A34CD650();
      v12 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v10 = v18;
    }

    if ((sub_1A3335964(0, *(v10 + 24)) & 1) == 0)
    {
      goto LABEL_12;
    }

    LOBYTE(v18) = 0;
LABEL_11:
    sub_1A335493C(&v18);
LABEL_12:
  }

  return swift_endAccess();
}

uint64_t sub_1A32BA2F0()
{

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1A32BA36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A32BA3B4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A32BA42C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for IdentityTypePicker.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;

  return sub_1A34C9010();
}

uint64_t sub_1A32BA490(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1A32BA4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32BA8C8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A32BA51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32BA8C8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A32BA580()
{
  sub_1A32BA8C8();
  sub_1A34CB3A0();
  __break(1u);
}

unint64_t sub_1A32BA5AC()
{
  result = qword_1EB0C24C8;
  if (!qword_1EB0C24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C24C8);
  }

  return result;
}

uint64_t sub_1A32BA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A32BB520();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A32BA66C()
{
  sub_1A32BA6A8();
  sub_1A34CB0E0();
  return v1;
}

unint64_t sub_1A32BA6A8()
{
  result = qword_1EB0C1710;
  if (!qword_1EB0C1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1710);
  }

  return result;
}

id sub_1A32BA6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000016, 0x80000001A350C1B0);
  v3 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  v5 = sub_1A3332448(v1, 0, 0, 0xD000000000000016, 0x80000001A350C1D0);
  *(v0 + 88) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v8 = sub_1A34CD350();

  v9 = [v7 initWithItems_];

  [v9 _setUseGlass_];
  v10 = v9;
  v11 = sub_1A34CD0E0();
  [v10 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F30);
  sub_1A34CB810();
  [v10 addTarget:v13 action:sel_valueChanged_ forControlEvents:4096];

  return v10;
}

unint64_t sub_1A32BA8C8()
{
  result = qword_1EB0C24D0;
  if (!qword_1EB0C24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C24D0);
  }

  return result;
}

void sub_1A32BA948()
{
  sub_1A32BAFB8(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A32BAFB8(319, &qword_1ED8534C8, MEMORY[0x1E697FF50]);
    if (v1 <= 0x3F)
    {
      sub_1A32BB00C();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A32BAA40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A34CB5F0() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v15 = ((v11 + ((v7 + ((v13 + 16) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v9 > 0xFE)
      {
        v24 = *(v8 + 48);

        return v24((v11 + ((v7 + ((a1 + v14 + 9) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v11);
      }

      else
      {
        v23 = *(a1 + 8);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
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

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1A32BACA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A34CB5F0() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = ((v13 + ((v9 + ((v15 + 16) & ~(v15 | 7)) + 24) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
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

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
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
LABEL_48:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v24 = *(v10 + 56);

    v24((v13 + ((v9 + (&a1[v16 + 9] & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v13, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_1A32BAFB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A34CA5F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A32BB00C()
{
  if (!qword_1EB0C1160)
  {
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1160);
    }
  }
}

uint64_t sub_1A32BB0A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A32BB0E8()
{
  result = qword_1EB0C0798;
  if (!qword_1EB0C0798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F50);
    sub_1A3284D0C(&qword_1EB0C10F0, &qword_1EB0C5F50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0798);
  }

  return result;
}

unint64_t sub_1A32BB1DC()
{
  result = qword_1EB0C2120;
  if (!qword_1EB0C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2120);
  }

  return result;
}

unint64_t sub_1A32BB254()
{
  result = qword_1EB0C0A30;
  if (!qword_1EB0C0A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F60);
    sub_1A32BB30C();
    sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A30);
  }

  return result;
}

unint64_t sub_1A32BB30C()
{
  result = qword_1EB0C0B00;
  if (!qword_1EB0C0B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F68);
    sub_1A32BB398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B00);
  }

  return result;
}

unint64_t sub_1A32BB398()
{
  result = qword_1EB0C0C50;
  if (!qword_1EB0C0C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F70);
    sub_1A32BB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C50);
  }

  return result;
}

unint64_t sub_1A32BB424()
{
  result = qword_1EB0C0F28;
  if (!qword_1EB0C0F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F78);
    sub_1A32BA5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F28);
  }

  return result;
}

uint64_t sub_1A32BB4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A32BB520()
{
  result = qword_1EB0C5F88;
  if (!qword_1EB0C5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C5F88);
  }

  return result;
}

uint64_t sub_1A32BB584()
{
  v0 = type metadata accessor for _AppExtensionHostView(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RemotePosterClientView.Model(0);
  sub_1A32BEB58(&qword_1EB0C6128, type metadata accessor for RemotePosterClientView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  *v2 = swift_getKeyPath();
  sub_1A32BEB58(&qword_1EB0C60B0, type metadata accessor for _AppExtensionHostView);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 1) = 0;
  *(v2 + 16) = 0;
  sub_1A34CC1F0();
  return sub_1A32BEDD4(v2, type metadata accessor for _AppExtensionHostView);
}

uint64_t sub_1A32BB75C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();
}

uint64_t sub_1A32BB7E0()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore22RemotePosterClientView5Model__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A32BB888@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemotePosterClientView.Model(0);
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

void sub_1A32BB8C8(uint64_t a1)
{
  v2 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v88 - v6;
  v101 = sub_1A34C9780();
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60C8);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  v109 = sub_1A34C9F60();
  v98 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v96 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D8);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C60E0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v91 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v88 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v88 - v34;
  v36 = *(v3 + 48);
  v99 = 1;
  v37 = v36(a1, 1, v2, v33);
  v106 = v2;
  v107 = v36;
  v110 = v3 + 48;
  if (v37 == 1)
  {
    goto LABEL_16;
  }

  v95 = v20;
  sub_1A328D790(a1, v26, &unk_1EB0C5FB8);
  v38 = (v36)(v26, 1, v2);
  v89 = v15;
  v88 = a1;
  if (v38 == 1)
  {
    sub_1A3288FDC(v26, &unk_1EB0C5FB8);
    v39 = 1;
    v40 = v98;
  }

  else
  {
    v40 = v98;
    (*(v98 + 16))(v35, v26, v109);
    sub_1A32BEDD4(v26, type metadata accessor for _AppExtensionHostView.Configuration);
    v39 = 0;
  }

  v41 = *(v40 + 56);
  v42 = 1;
  v41(v35, v39, 1, v109);
  v43 = OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_configuration;
  v44 = v108;
  swift_beginAccess();
  if (!(v36)(v44 + v43, 1, v106))
  {
    (*(v40 + 16))(v31, v108 + v43, v109);
    v42 = 0;
  }

  v45 = v109;
  v41(v31, v42, 1, v109);
  v46 = *(v93 + 48);
  v47 = v97;
  sub_1A328D790(v35, v97, &unk_1EB0C60E0);
  sub_1A328D790(v31, v47 + v46, &unk_1EB0C60E0);
  v48 = *(v40 + 48);
  if (v48(v47, 1, v45) != 1)
  {
    v50 = v91;
    sub_1A328D790(v47, v91, &unk_1EB0C60E0);
    v51 = v48(v47 + v46, 1, v109);
    a1 = v88;
    if (v51 != 1)
    {
      v52 = v96;
      v53 = v109;
      (*(v40 + 32))(v96, v47 + v46, v109);
      sub_1A32BEB58(&qword_1EB0C60F0, MEMORY[0x1E6966C58]);
      v99 = sub_1A34CD040();
      v54 = *(v40 + 8);
      v54(v52, v53);
      sub_1A3288FDC(v31, &unk_1EB0C60E0);
      sub_1A3288FDC(v35, &unk_1EB0C60E0);
      v54(v91, v53);
      sub_1A3288FDC(v97, &unk_1EB0C60E0);
      v99 ^= 1u;
      v2 = v106;
      v20 = v95;
      v15 = v89;
      goto LABEL_15;
    }

    sub_1A3288FDC(v31, &unk_1EB0C60E0);
    sub_1A3288FDC(v35, &unk_1EB0C60E0);
    (*(v40 + 8))(v50, v109);
    v15 = v89;
    goto LABEL_12;
  }

  sub_1A3288FDC(v31, &unk_1EB0C60E0);
  v47 = v97;
  sub_1A3288FDC(v35, &unk_1EB0C60E0);
  v49 = v48(v47 + v46, 1, v109);
  v15 = v89;
  a1 = v88;
  if (v49 != 1)
  {
LABEL_12:
    sub_1A3288FDC(v47, &qword_1EB0C60D8);
    v99 = 1;
    goto LABEL_13;
  }

  sub_1A3288FDC(v47, &unk_1EB0C60E0);
  v99 = 0;
LABEL_13:
  v2 = v106;
  v20 = v95;
LABEL_15:
  v36 = v107;
LABEL_16:
  sub_1A328D790(a1, v23, &unk_1EB0C5FB8);
  v55 = v2;
  if ((v36)(v23, 1, v2) == 1)
  {
    sub_1A3288FDC(v23, &unk_1EB0C5FB8);
    v56 = 1;
  }

  else
  {
    v57 = *&v23[*(v2 + 24)];
    sub_1A32BEDD4(v23, type metadata accessor for _AppExtensionHostView.Configuration);
    v58 = [v57 id];

    sub_1A34C9760();
    v56 = 0;
  }

  v59 = v103;
  v60 = *(v103 + 56);
  v61 = 1;
  v62 = v15;
  v63 = v15;
  v64 = v101;
  v60(v62, v56, 1, v101);
  v65 = v108 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_configuration;
  swift_beginAccess();
  v66 = (v107)(v65, 1, v55);
  v67 = v102;
  if (!v66)
  {
    v68 = [*(v65 + *(v55 + 24)) id];
    sub_1A34C9760();

    v61 = 0;
  }

  v60(v67, v61, 1, v64);
  v69 = *(v100 + 48);
  v70 = v105;
  sub_1A328D790(v63, v105, &qword_1EB0C60D0);
  sub_1A328D790(v67, v70 + v69, &qword_1EB0C60D0);
  v71 = *(v59 + 48);
  if (v71(v70, 1, v64) == 1)
  {
    sub_1A3288FDC(v67, &qword_1EB0C60D0);
    v72 = v105;
    sub_1A3288FDC(v63, &qword_1EB0C60D0);
    if (v71(v72 + v69, 1, v64) == 1)
    {
      sub_1A3288FDC(v72, &qword_1EB0C60D0);
      v73 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v74 = v94;
    sub_1A328D790(v70, v94, &qword_1EB0C60D0);
    if (v71(v70 + v69, 1, v64) != 1)
    {
      v95 = v20;
      v76 = v103;
      v77 = v90;
      (*(v103 + 32))(v90, v70 + v69, v64);
      sub_1A32BEB58(&qword_1EB0C2A38, MEMORY[0x1E69695A8]);
      v78 = v70;
      v79 = sub_1A34CD040();
      v80 = *(v76 + 8);
      v80(v77, v64);
      sub_1A3288FDC(v102, &qword_1EB0C60D0);
      sub_1A3288FDC(v63, &qword_1EB0C60D0);
      v80(v74, v64);
      v20 = v95;
      sub_1A3288FDC(v78, &qword_1EB0C60D0);
      v73 = v79 ^ 1;
LABEL_28:
      v75 = v106;
      if (((v99 | v73) & 1) == 0)
      {
        return;
      }

      goto LABEL_29;
    }

    sub_1A3288FDC(v102, &qword_1EB0C60D0);
    v72 = v105;
    sub_1A3288FDC(v63, &qword_1EB0C60D0);
    (*(v103 + 8))(v74, v64);
  }

  sub_1A3288FDC(v72, &qword_1EB0C60C8);
  v75 = v106;
LABEL_29:
  v81 = *(v108 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_hostViewController);
  sub_1A328D790(v65, v20, &unk_1EB0C5FB8);
  if ((v107)(v20, 1, v75) == 1)
  {
    v82 = sub_1A34CD7D0();
    (*(*(v82 - 8) + 56))(v104, 1, 1, v82);
    v83 = v81;
  }

  else
  {
    v84 = v92;
    sub_1A32BEAF4(v20, v92);
    (*(v98 + 16))(v96, v84, v109);
    v85 = v81;

    v86 = v104;
    sub_1A34CD7C0();
    sub_1A32BEDD4(v84, type metadata accessor for _AppExtensionHostView.Configuration);
    v87 = sub_1A34CD7D0();
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  }

  sub_1A34CD7E0();
}

char *sub_1A32BC75C()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_hostViewController;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];
  *&v0[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_connection] = 0;
  v2 = &v0[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_configuration;
  v4 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _AppExtensionHostView.Coordinator(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [*&v5[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_hostViewController] setDelegate_];
  return v5;
}

void sub_1A32BC870(void *a1)
{
  v3 = type metadata accessor for CatalystPosterXPCClientConnection(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = objc_allocWithZone(v3);
  v6 = a1;
  v7 = [v5 init];
  v8 = &v7[qword_1EB0CBC88];
  swift_beginAccess();
  v9 = *v8;
  *v8 = sub_1A32BED00;
  v8[1] = v4;
  v10 = v7;
  sub_1A32142B0(v9);

  v11 = *(v1 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_connection);
  *(v1 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_connection) = v10;

  sub_1A32BCA7C();
}

id sub_1A32BC960(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [a1 makeXPCConnectionWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1A34C9580();

    swift_willThrow();
  }

  return v1;
}

void sub_1A32BCA7C()
{
  v1 = sub_1A34CCE90();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34CCED0();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v15 = *&v0[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_connection];
  if (v15)
  {
    v25 = v2;
    v16 = OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_configuration;
    swift_beginAccess();
    sub_1A328D790(&v0[v16], v14, &unk_1EB0C5FB8);
    if ((*(v9 + 48))(v14, 1, v8))
    {
      sub_1A3288FDC(v14, &unk_1EB0C5FB8);
    }

    else
    {
      sub_1A32BEBA0(v14, v11);
      v17 = v15;
      sub_1A3288FDC(v14, &unk_1EB0C5FB8);
      v18 = *&v11[*(v8 + 24)];
      sub_1A32BEDD4(v11, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_1A31EC194(0, &qword_1ED854B50);
      v19 = sub_1A34CD750();
      v20 = swift_allocObject();
      v20[2] = v17;
      v20[3] = v18;
      v20[4] = v0;
      aBlock[4] = sub_1A32BEC04;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A32A5AB4;
      aBlock[3] = &block_descriptor_2;
      v21 = _Block_copy(aBlock);
      v22 = v17;
      v23 = v18;
      v24 = v0;

      sub_1A34CCEB0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A32BEB58(&qword_1ED854650, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
      sub_1A328B67C();
      sub_1A34CD960();
      MEMORY[0x1A58EEF80](0, v7, v4, v21);
      _Block_release(v21);

      (*(v25 + 8))(v4, v1);
      (*(v26 + 8))(v7, v27);
    }
  }
}

uint64_t sub_1A32BCF00(char *a1, void *a2, void *a3)
{
  v6 = *&a1[qword_1EB0CBC90];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A32BEC18;
  *(v8 + 24) = v7;
  v14[4] = sub_1A32BEC24;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A32BD70C;
  v14[3] = &block_descriptor_45;
  v9 = _Block_copy(v14);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  sub_1A34C9010();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A32BD078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_1A32BE230();
  aBlock[4] = CGPointMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A345B2FC;
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  sub_1A34CD920();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6118);
  result = swift_dynamicCast();
  if (result)
  {
    [v18[1] setContact:a2 salientContentRectangle:{*(a3 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect), *(a3 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect + 8), *(a3 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect + 16), *(a3 + OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect + 24)}];
    v13 = sub_1A34CD4A0();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_1A34CD450();
    v14 = a1;
    v15 = sub_1A34CD440();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_1A33A13AC(0, 0, v8, &unk_1A34DD6E0, v16);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A32BD2E0()
{
  v1 = sub_1A34CDBC0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A34CD450();
  v0[5] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A32BD3D0, v3, v2);
}

uint64_t sub_1A32BD3D0()
{
  sub_1A34CDEC0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A32BD49C;

  return sub_1A32F1C40(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A32BD49C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_1A32BD6A0;
  }

  else
  {
    v8 = sub_1A32BD634;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A32BD634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32BD6A0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A32BD734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AppExtensionHostView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A32BD7CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60B8);
  sub_1A34CBA20();
  v0 = *&v2[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_hostViewController];

  return v0;
}

id sub_1A32BD83C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for _AppExtensionHostView.Coordinator(0)) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A32BD8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32BEB58(&qword_1EB0C60F8, type metadata accessor for _AppExtensionHostView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A32BD944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32BEB58(&qword_1EB0C60F8, type metadata accessor for _AppExtensionHostView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A32BD9D8()
{
  sub_1A32BEB58(&qword_1EB0C60F8, type metadata accessor for _AppExtensionHostView);
  sub_1A34CB940();
  __break(1u);
}

uint64_t CatalystPosterXPCClientConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EB0EDA88;
  v4 = sub_1A34C9780();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CatalystPosterXPCClientConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB0EDA90;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CatalystPosterXPCClientConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EB0EDA90;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A32BDC04;
}

void sub_1A32BDC04(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

Swift::Void __swiftcall CatalystPosterXPCClientConnection.handleServerDisconnect()()
{
  v1 = v0 + qword_1EB0EDA90;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

id CatalystPosterXPCClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalystPosterXPCClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  sub_1A34C8A90();
  *&v0[qword_1EB0EDA90 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1A32BDDA8(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_1A34C8A90();
  *&a1[qword_1EB0EDA90 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = a1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A32BDE14()
{
  v1 = qword_1EB0EDA88;
  v2 = sub_1A34C9780();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_1EB0EDA90;

  return sub_1A31F08B0(v3);
}

id CatalystPosterXPCClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A32BDEEC()
{
  sub_1A32BE3F4(319, &qword_1EB0C5FB0, &unk_1EB0C5FB8, &unk_1A34DD438, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A32BDFD0()
{
  sub_1A32BE084();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A32BE084()
{
  if (!qword_1EB0C6058)
  {
    type metadata accessor for _AppExtensionHostView.Configuration(255);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C6058);
    }
  }
}

uint64_t sub_1A32BE0FC(uint64_t a1)
{
  v2 = qword_1EB0EDA88;
  v3 = sub_1A34C9780();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + qword_1EB0EDA90;

  return sub_1A31F08B0(v4);
}

uint64_t sub_1A32BE198()
{
  result = sub_1A34C9780();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A32BE230()
{
  v1 = v0 + qword_1EB0CBC98;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
LABEL_5:
    swift_endAccess();
    v8 = v3;
    return v4;
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    v6 = sub_1A34C9010();
    v5(&v9, v6);
    sub_1A32142B0(v5);
    v7 = v9;
    *v1 = v9;
    v4 = v7;
    v3 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A32BE344()
{
  sub_1A32BE3F4(319, &qword_1EB0C1188, &qword_1EB0C6090, &unk_1A34E7AB0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A32BE084();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A32BE3F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A32BE480()
{
  result = sub_1A34C9F60();
  if (v1 <= 0x3F)
  {
    result = sub_1A31EC194(319, &qword_1ED854E70);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A32BE570()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();
}

uint64_t sub_1A32BE5EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1A328D790(a1, &v9 - v6, &unk_1EB0C5FB8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A328D790(v7, v4, &unk_1EB0C5FB8);
  sub_1A34C9010();
  sub_1A34CA380();
  return sub_1A3288FDC(v7, &unk_1EB0C5FB8);
}

uint64_t sub_1A32BE71C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1A34CB0B0();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60B8);
  sub_1A34CBA20();
  v11 = v35;
  v12 = *v1;
  v13 = *(v1 + 8);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v16 = *(v1 + 32);
  if (*(v1 + 33) == 1)
  {
    v37 = *v1;
    v38 = v13;
    v39 = v15;
    v40 = v14;
    if ((v16 & 1) == 0)
    {
LABEL_3:
      v17 = v39;
      v18 = v40;
      v19 = v37;
      v20 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    v30 = *(v1 + 32);
    v29 = v14;
    sub_1A34C9010();
    sub_1A34CD650();
    v31 = v8;
    v21 = sub_1A34CBA30();
    v32 = v7;
    v22 = v21;
    sub_1A34CA210();

    v7 = v32;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32BEA78(v12, v13, v15, v29, v30, 0);
    (*(v33 + 8))(v10, v31);
    if ((v41 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
LABEL_6:
  v23 = &v11[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect];
  v42 = *&v11[OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_salientRect];
  *v23 = v19;
  *(v23 + 1) = v20;
  *(v23 + 2) = v17;
  *(v23 + 3) = v18;
  if (!CGRectEqualToRect(*&v19, v42))
  {
    sub_1A32BCA7C();
  }

  sub_1A34CBA20();
  v24 = v36;
  v25 = type metadata accessor for _AppExtensionHostView(0);
  sub_1A328D790(v1 + *(v25 + 20), v7, &unk_1EB0C5FB8);
  v26 = OBJC_IVAR____TtCV14ContactsUICore21_AppExtensionHostView11Coordinator_configuration;
  swift_beginAccess();
  sub_1A328D790(v24 + v26, v4, &unk_1EB0C5FB8);
  swift_beginAccess();
  sub_1A32BEA84(v7, v24 + v26);
  swift_endAccess();
  sub_1A32BB8C8(v4);

  sub_1A3288FDC(v4, &unk_1EB0C5FB8);
  return sub_1A3288FDC(v7, &unk_1EB0C5FB8);
}

uint64_t sub_1A32BEA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A32BEA84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32BEAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32BEB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32BEBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32BEC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3292050;

  return sub_1A32BD2E0();
}

uint64_t sub_1A32BED1C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A32BED64(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A32BEDD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A32BEE34()
{
  result = qword_1EB0C6130;
  if (!qword_1EB0C6130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6138);
    sub_1A32BEB58(&qword_1EB0C60B0, type metadata accessor for _AppExtensionHostView);
    sub_1A32BEB58(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6130);
  }

  return result;
}

uint64_t type metadata accessor for DetailsBodyText()
{
  result = qword_1EB0C27C0;
  if (!qword_1EB0C27C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A32BEFA4()
{
  sub_1A32BF070(319, &qword_1EB0C1190);
  if (v0 <= 0x3F)
  {
    sub_1A32BF070(319, &qword_1EB0C1130);
    if (v1 <= 0x3F)
    {
      sub_1A32BF0BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A32BF070(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A34CA5F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A32BF0BC()
{
  if (!qword_1EB0C1150)
  {
    sub_1A34CB240();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1150);
    }
  }
}

uint64_t sub_1A32BF130()
{
  sub_1A34CBB20();
  v0 = sub_1A34CBBE0();

  qword_1EB0ED9C0 = v0;
  return result;
}

double sub_1A32BF178@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DetailsBodyText();
  v4 = (v1 + v3[7]);
  v5 = v4[1];
  if (*(v1 + v3[9]) == 1)
  {
    *&v33 = *v4;
    *(&v33 + 1) = v5;
    *&v34 = 0;
    *(&v34 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v35) = 0;
  }

  else
  {
    *&v28[0] = *v4;
    *(&v28[0] + 1) = v5;
    sub_1A328A95C();

    *&v33 = sub_1A34CBE30();
    *(&v33 + 1) = v7;
    *&v34 = v6 & 1;
    *(&v34 + 1) = v8;
    LOBYTE(v35) = 1;
  }

  sub_1A34CB3E0();
  v25 = v28[0];
  v26 = v28[1];
  v9 = v29;
  if (*(v1 + v3[8]) == 1)
  {
    if (qword_1EB0C27D0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB0ED9C0;
    sub_1A34C9010();
  }

  else
  {
    sub_1A34546F8(v28);
    v10 = v30;
    sub_1A34C9010();
    sub_1A3292144(v28);
  }

  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v31[176] = v9;
  sub_1A34CCC90();
  sub_1A34CADA0();
  *&v32[55] = v36;
  *&v32[71] = v37;
  *&v32[87] = v38;
  *&v32[103] = v39;
  *&v32[7] = v33;
  *&v32[23] = v34;
  *&v32[39] = v35;
  sub_1A34546F8(v28);
  sub_1A31EE4BC(v31, v27);
  sub_1A3292144(v28);
  v12 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = sub_1A34CA770();
  __swift_destroy_boxed_opaque_existential_0(v27);
  v17 = v26;
  *a1 = v25;
  *(a1 + 16) = v17;
  *(a1 + 32) = v9;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  v18 = *&v32[80];
  *(a1 + 129) = *&v32[64];
  *(a1 + 145) = v18;
  *(a1 + 161) = *&v32[96];
  v19 = *&v32[111];
  v20 = *&v32[16];
  *(a1 + 65) = *v32;
  *(a1 + 81) = v20;
  result = *&v32[32];
  v22 = *&v32[48];
  *(a1 + 97) = *&v32[32];
  *(a1 + 113) = v22;
  *(a1 + 176) = v19;
  *(a1 + 184) = v16;
  return result;
}

unint64_t sub_1A32BF4C4()
{
  result = qword_1EB0C0A20;
  if (!qword_1EB0C0A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6148);
    sub_1A32BF57C();
    sub_1A3284D0C(&qword_1EB0C0700, &unk_1EB0C8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A20);
  }

  return result;
}

unint64_t sub_1A32BF57C()
{
  result = qword_1EB0C0AE8;
  if (!qword_1EB0C0AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6150);
    sub_1A32BF608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AE8);
  }

  return result;
}

unint64_t sub_1A32BF608()
{
  result = qword_1EB0C0C20;
  if (!qword_1EB0C0C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6158);
    sub_1A32BF6C0();
    sub_1A3284D0C(&qword_1EB0C06A0, &qword_1EB0C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C20);
  }

  return result;
}

unint64_t sub_1A32BF6C0()
{
  result = qword_1EB0C0EE8;
  if (!qword_1EB0C0EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6160);
    sub_1A32BF778();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EE8);
  }

  return result;
}

unint64_t sub_1A32BF778()
{
  result = qword_1EB0C0870;
  if (!qword_1EB0C0870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0870);
  }

  return result;
}

uint64_t sub_1A32BF7F4()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDAA0);
  __swift_project_value_buffer(v0, qword_1EB0EDAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "emoji";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1A34CA190();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1A34CA1A0();
}

uint64_t sub_1A32BF960()
{
  while (1)
  {
    result = sub_1A34CA010();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1A34CA080();
    }
  }

  return result;
}

uint64_t sub_1A32BF9D0()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1A34CA160(), !v1))
  {
    type metadata accessor for EmojiRecipe_Recipe();
    return sub_1A34C9F90();
  }

  return result;
}

uint64_t sub_1A32BFA64@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return sub_1A34C9FA0();
}

uint64_t sub_1A32BFAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A32BFB14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1A32BFBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32C00BC(&qword_1EB0C6188, type metadata accessor for EmojiRecipe_Recipe);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32BFC58@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4758 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA1C0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0EDAA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A32BFD00(uint64_t a1)
{
  v2 = sub_1A32C00BC(&qword_1EB0C6A10, type metadata accessor for EmojiRecipe_Recipe);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A32BFD6C()
{
  sub_1A34CDF20();
  sub_1A34CCFE0();
  return sub_1A34CDF70();
}

uint64_t sub_1A32BFDC4()
{
  sub_1A32C00BC(&qword_1EB0C6A10, type metadata accessor for EmojiRecipe_Recipe);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32BFE40()
{
  sub_1A34CDF20();
  sub_1A34CCFE0();
  return sub_1A34CDF70();
}

uint64_t sub_1A32BFE94(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1A34CDE30() & 1) == 0)
  {
    return 0;
  }

  sub_1A34C9FB0();
  sub_1A32C00BC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t type metadata accessor for EmojiRecipe_Recipe()
{
  result = qword_1EB0C61A0;
  if (!qword_1EB0C61A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32C00BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32C012C()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

CNContactsAppIntentDependencyManager __swiftcall CNContactsAppIntentDependencyManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void _sSo36CNContactsAppIntentDependencyManagerC14ContactsUICoreE05setupbC12Dependencies4withySo09CNIntentsB15ActionPerformer_p_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  type metadata accessor for ContactEntityProvider();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1A31EADB4(v2, a1);
  swift_unknownObjectRelease();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  sub_1A34CDA40();
  sub_1A34C9010();
  sub_1A34C8AD0();

  sub_1A31EAE60(v9);
  if (a1)
  {
    if (qword_1EB0C1280 != -1)
    {
      swift_once();
    }

    v3 = sub_1A34CA250();
    __swift_project_value_buffer(v3, qword_1EB0ECFF0);
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Registered ContactEntityProvider.key with intentActionPerformer";
LABEL_10:
      _os_log_impl(&dword_1A31E6000, v4, v5, v7, v6, 2u);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1EB0C1280 != -1)
    {
      swift_once();
    }

    v8 = sub_1A34CA250();
    __swift_project_value_buffer(v8, qword_1EB0ECFF0);
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Registered ContactEntityProvider.key";
      goto LABEL_10;
    }
  }
}

unint64_t type metadata accessor for CNContactsAppIntentDependencyManager()
{
  result = qword_1EB0C61B0;
  if (!qword_1EB0C61B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C61B0);
  }

  return result;
}

uint64_t sub_1A32C0558()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDAB8);
  __swift_project_value_buffer(v0, qword_1EB0EDAB8);
  return sub_1A34CA240();
}

uint64_t sub_1A32C05D8()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDAD0);
  __swift_project_value_buffer(v0, qword_1EB0EDAD0);
  return sub_1A34CA240();
}

uint64_t sub_1A32C0658()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDAE8);
  __swift_project_value_buffer(v0, qword_1EB0EDAE8);
  return sub_1A34CA240();
}

uint64_t sub_1A32C06DC()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDB00);
  __swift_project_value_buffer(v0, qword_1EB0EDB00);
  return sub_1A34CA240();
}

uint64_t WidgetType.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t ContactCardWidgetViewModel.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactCardWidgetViewModel.collapsedDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ContactCardWidgetViewModel.collapsedDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_1A32C08B4()
{
  result = qword_1EB0C61C0;
  if (!qword_1EB0C61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C61C0);
  }

  return result;
}

uint64_t sub_1A32C0918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32C0960(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1A32C09CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32C0A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A32C0A80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32C0AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A32C0B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A3288FDC(a3, &qword_1EB0C6110);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3288FDC(a3, &qword_1EB0C6110);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C0E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6200);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1A3288FDC(a3, &qword_1EB0C6110);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3288FDC(a3, &qword_1EB0C6110);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6200);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1A3288FDC(a3, &qword_1EB0C6110);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3288FDC(a3, &qword_1EB0C6110);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C1460()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED020);
  __swift_project_value_buffer(v0, qword_1EB0ED020);
  return sub_1A34CA240();
}

id sub_1A32C14E4()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

int64x2_t sub_1A32C1514()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (qword_1EB0C4788 != -1)
  {
    swift_once();
  }

  *&xmmword_1EB0ED408 = sub_1A343F8EC(v2, v4, *&qword_1EB0EDB18, unk_1EB0EDB20);
  *(&xmmword_1EB0ED408 + 1) = v5;
  qword_1EB0ED418 = 0;
  byte_1EB0ED420 = 1;
  result = vdupq_n_s64(1uLL);
  xmmword_1EB0ED428 = result;
  return result;
}

double sub_1A32C1600()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (!v1)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
  }

  return 9.0;
}

uint64_t sub_1A32C16CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[47] = a2;
  v5[48] = a5;
  v5[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  v5[49] = swift_task_alloc();
  v6 = sub_1A34C9780();
  v5[50] = v6;
  v5[51] = *(v6 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  sub_1A34CD450();
  v5[56] = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  v5[57] = v8;
  v5[58] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A32C184C, v8, v7);
}

uint64_t sub_1A32C184C()
{
  v47 = v0;
  if (qword_1EB0C1298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = sub_1A34CA250();
  *(v0 + 472) = __swift_project_value_buffer(v2, qword_1EB0ED020);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD620();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136315394;
    v11 = v6[1];
    v10 = v6[2];
    *(v0 + 288) = *v6;
    *(v0 + 304) = v11;
    *(v0 + 320) = v10;
    v12 = sub_1A34CD170();
    v14 = sub_1A31EE23C(v12, v13, &v46);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (v7)
    {
      v15 = [v3 id];
      sub_1A34C9760();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v18 = *(v0 + 432);
    v17 = *(v0 + 440);
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    (*(v20 + 56))(v17, v16, 1, v19);
    sub_1A328D790(v17, v18, &qword_1EB0C60D0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1A3288FDC(*(v0 + 432), &qword_1EB0C60D0);
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v23 = *(v0 + 416);
      v24 = *(v0 + 424);
      v45 = v9;
      v26 = *(v0 + 400);
      v25 = *(v0 + 408);
      (*(v25 + 32))(v24, *(v0 + 432), v26);
      (*(v25 + 16))(v23, v24, v26);
      v22 = sub_1A34CD170();
      v21 = v27;
      (*(v25 + 8))(v24, v26);
      v9 = v45;
    }

    sub_1A3288FDC(*(v0 + 440), &qword_1EB0C60D0);
    v28 = sub_1A31EE23C(v22, v21, &v46);

    *(v8 + 14) = v28;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Generating poster snapshot for preset: %s contact: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v9, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  if (*(v0 + 376))
  {
    v29 = [objc_allocWithZone(CNUIPRUISIncomingCallPosterContext) initWithContact:v3 showName:1];
  }

  else
  {
    v29 = [objc_opt_self() emptyContext];
  }

  *(v0 + 480) = v29;
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = [objc_opt_self() contentsOnlySnapshotDefinitionWithContext:v29 attachmentIdentifiers:0];
  *(v0 + 488) = v33;
  v34 = [objc_allocWithZone(CNUIPRUISPosterSnapshotDescriptor) initWithUserInterfaceStyle:*(v32 + 32) interfaceOrientation:*(v32 + 40) snapshotDefinition:v33];
  *(v0 + 496) = v34;
  [v34 setCanvasBounds_];
  v35 = [objc_allocWithZone(CNUIPRUISPosterSnapshotRequest) initWithPosterConfiguration:v30 snapshotDescriptor:v34];
  *(v0 + 504) = v35;
  v36 = [objc_allocWithZone(CNUIPRUISPosterSnapshotController) init];
  *(v0 + 512) = v36;
  sub_1A34CD460();
  v37 = sub_1A34CD4A0();
  (*(*(v37 - 8) + 56))(v31, 0, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v36;
  v38[5] = v35;
  v39 = v36;
  v40 = v35;
  v41 = sub_1A32C2C88(0, 0, v31, &unk_1A34DDFA0, v38);
  *(v0 + 520) = v41;
  sub_1A3288FDC(v31, &qword_1EB0C6110);
  v42 = swift_task_alloc();
  *(v0 + 528) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61E8);
  *v42 = v0;
  v42[1] = sub_1A32C1DC4;

  return MEMORY[0x1EEE6DA40](v0 + 352, v41, v43);
}

uint64_t sub_1A32C1DC4()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return MEMORY[0x1EEE6DFA0](sub_1A32C1EE4, v3, v2);
}

uint64_t sub_1A32C1EE4()
{
  v34 = v0;
  v1 = *(v0 + 352);
  if (!v1)
  {
LABEL_17:
    v27 = *(v0 + 504);
    v26 = *(v0 + 512);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_1A32C22E0;
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61F0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A32C34F0;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v28;
    [v26 executeSnapshotRequest:v27 completion:v0 + 80];
    v4 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v4);
  }

  v2 = [*(v0 + 352) snapshotLevelSets];
  sub_1A32C71E4();
  v3 = sub_1A34CD370();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v4 = sub_1A34CD9B0();
  if (!v4)
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A58EF310](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v1 snapshotForLevelSet_];

  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = sub_1A34CA230();
  v9 = sub_1A34CD630();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 504);
  v12 = *(v0 + 512);
  v13 = *(v0 + 488);
  v32 = *(v0 + 496);
  v14 = *(v0 + 480);
  if (v10)
  {
    v31 = *(v0 + 504);
    v15 = *(v0 + 368);
    v16 = swift_slowAlloc();
    v30 = v14;
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    v19 = v15[1];
    v18 = v15[2];
    *(v0 + 240) = *v15;
    *(v0 + 256) = v19;
    *(v0 + 272) = v18;
    v20 = sub_1A34CD170();
    v29 = v12;
    v22 = sub_1A31EE23C(v20, v21, &v33);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1A31E6000, v8, v9, "Returning cached snapshot bundle for preset: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1A58F1010](v17, -1, -1);
    MEMORY[0x1A58F1010](v16, -1, -1);
  }

  else
  {
  }

  v23 = *(*(v0 + 368) + 24);

  v24 = *(v0 + 8);

  return v24(v7, v23);
}

uint64_t sub_1A32C22E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 464);
  v4 = *(v1 + 456);
  if (v2)
  {
    v5 = sub_1A32C27F8;
  }

  else
  {
    v5 = sub_1A32C2410;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A32C2410()
{
  v45 = v0;

  v1 = *(v0 + 344);
  v2 = [v1 posterSnapshotBundle];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 snapshotLevelSets];
    sub_1A32C71E4();
    v5 = sub_1A34CD370();

    if (v5 >> 62)
    {
      result = sub_1A34CD9B0();
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1A58EF310](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v7 = *(v5 + 32);
        }

        v8 = v7;

        v9 = [v3 snapshotForLevelSet_];

        if (v9)
        {
          v10 = *(v0 + 504);
          v11 = sub_1A34CA230();
          v12 = sub_1A34CD630();

          v13 = os_log_type_enabled(v11, v12);
          v14 = *(v0 + 504);
          v15 = *(v0 + 512);
          v16 = *(v0 + 496);
          v17 = *(v0 + 480);
          if (v13)
          {
            v18 = *(v0 + 368);
            v42 = *(v0 + 488);
            v43 = *(v0 + 480);
            v19 = swift_slowAlloc();
            v41 = v16;
            v20 = swift_slowAlloc();
            v40 = v15;
            v21 = swift_slowAlloc();
            v44 = v21;
            *v19 = 138412546;
            *(v19 + 4) = v14;
            *v20 = v14;
            *(v19 + 12) = 2080;
            v22 = *v18;
            v23 = v18[2];
            *(v0 + 208) = v18[1];
            *(v0 + 224) = v23;
            *(v0 + 192) = v22;
            v39 = v14;
            v24 = sub_1A34CD170();
            v26 = sub_1A31EE23C(v24, v25, &v44);

            *(v19 + 14) = v26;
            _os_log_impl(&dword_1A31E6000, v11, v12, "Returning generated snapshot bundle for request: %@ preset: %s", v19, 0x16u);
            sub_1A3288FDC(v20, &unk_1EB0C6C40);
            MEMORY[0x1A58F1010](v20, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v21);
            MEMORY[0x1A58F1010](v21, -1, -1);
            MEMORY[0x1A58F1010](v19, -1, -1);
          }

          else
          {
          }

          v32 = *(*(v0 + 368) + 24);
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v34 = *(v0 + 504);
    v33 = *(v0 + 512);
    v36 = *(v0 + 488);
    v35 = *(v0 + 496);
    v37 = *(v0 + 480);

    goto LABEL_15;
  }

LABEL_10:
  v28 = *(v0 + 504);
  v27 = *(v0 + 512);
  v30 = *(v0 + 488);
  v29 = *(v0 + 496);
  v31 = *(v0 + 480);

LABEL_15:
  v9 = 0;
  v32 = 0;
LABEL_16:

  v38 = *(v0 + 8);

  return v38(v9, v32);
}

uint64_t sub_1A32C27F8()
{
  v36 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);

  swift_willThrow();
  v3 = v2;
  v4 = v1;
  v5 = sub_1A34CA230();
  v6 = sub_1A34CD640();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 504);
    v33 = *(v0 + 512);
    v31 = *(v0 + 488);
    v32 = *(v0 + 496);
    v34 = *(v0 + 480);
    v9 = *(v0 + 368);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v10 = 136315650;
    v30 = v7;
    *(v0 + 360) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v14 = sub_1A34CD170();
    v16 = sub_1A31EE23C(v14, v15, v35);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v8;
    *(v10 + 22) = 2080;
    v17 = *v9;
    v18 = v9[2];
    *(v0 + 160) = v9[1];
    *(v0 + 176) = v18;
    *(v0 + 144) = v17;
    v19 = v8;
    v20 = sub_1A34CD170();
    v22 = sub_1A31EE23C(v20, v21, v35);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1A31E6000, v5, v6, "Error generating snapshot: %s request: %@ preset: %s", v10, 0x20u);
    sub_1A3288FDC(v11, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v12, -1, -1);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  else
  {
    v23 = *(v0 + 536);
    v25 = *(v0 + 504);
    v24 = *(v0 + 512);
    v26 = *(v0 + 496);
    v27 = *(v0 + 480);
  }

  v28 = *(v0 + 8);

  return v28(0, 0);
}

uint64_t sub_1A32C2B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A32C2B9C, 0, 0);
}

uint64_t sub_1A32C2B9C()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 32) currentSnapshotBundleForRequest:*(v0 + 40) error:v0 + 16];
  v2 = *(v0 + 16);
  if (!v1)
  {
    v3 = v2;
    v4 = sub_1A34C9580();

    swift_willThrow();
    v1 = 0;
  }

  **(v0 + 24) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A32C2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61E8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A328D790(a3, v25 - v10, &qword_1EB0C6110);
  v12 = sub_1A34CD4A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1A34C9010();
  if (v14 == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0C6110);
  }

  else
  {
    sub_1A34CD490();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A34CD3E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A34CD190() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61F8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61F8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A32C34F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x1EEE6DEE8](v8, v9);
  }

  else
  {
    if (a3)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      v12[1] = a3;
      v13 = a2;
      v14 = a3;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v7);
  }
}

void *sub_1A32C35D0()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C61E0, type metadata accessor for DynamicPosterSnapshot);
  sub_1A34C99A0();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A32C3680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C61E0, type metadata accessor for DynamicPosterSnapshot);
  sub_1A34C99A0();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;

  return v4;
}

uint64_t sub_1A32C3740()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C61E0, type metadata accessor for DynamicPosterSnapshot);
  sub_1A34C9990();
}

uint64_t sub_1A32C3814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v16;
  *(v8 + 184) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 152) = sub_1A34CD450();
  *(v8 + 160) = sub_1A34CD440();
  v12 = swift_task_alloc();
  *(v8 + 168) = v12;
  *v12 = v8;
  v12[1] = sub_1A32C38F0;

  return sub_1A32C16CC(a7, a8, v13, 0, a6);
}

uint64_t sub_1A32C38F0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 104) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = a1;
  *(v3 + 176) = a1;

  v5 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A32C3A3C, v5, v4);
}

uint64_t sub_1A32C3A3C()
{
  v30 = v0;
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    v4 = *(v0 + 144);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3 & 1;
    *(v0 + 112) = v4;
    sub_1A32C5ECC(&qword_1EB0C61E0, type metadata accessor for DynamicPosterSnapshot);
    sub_1A34C9990();
  }

  else
  {
    if (qword_1EB0C1298 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 128);
    v7 = sub_1A34CA250();
    __swift_project_value_buffer(v7, qword_1EB0ED020);
    v8 = v6;
    v9 = sub_1A34CA230();
    v10 = sub_1A34CD640();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      v13 = *(v0 + 184);
      v14 = *(v0 + 120) & 1;
      v15 = HIDWORD(*(v0 + 120));
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136315394;
      *(v0 + 64) = v14;
      *(v0 + 68) = v15;
      *(v0 + 72) = v13;
      *(v0 + 80) = v11;
      v18 = v11;
      v19 = sub_1A34CD170();
      v21 = sub_1A31EE23C(v19, v20, v29);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = *v12;
      v23 = v12[2];
      *(v0 + 32) = v12[1];
      *(v0 + 48) = v23;
      *(v0 + 16) = v22;
      v24 = sub_1A34CD170();
      v26 = sub_1A31EE23C(v24, v25, v29);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_1A31E6000, v9, v10, "Could not generate high fidelity snapshot from configuration: %s preset: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v17, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1A32C3D30()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore21DynamicPosterSnapshot___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1A32C3E08()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C61E0, type metadata accessor for DynamicPosterSnapshot);
  sub_1A34C99A0();

  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void *sub_1A32C3EB8()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
  sub_1A34C99A0();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A32C3F68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
  sub_1A34C99A0();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;

  return v4;
}

uint64_t sub_1A32C4028()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
  sub_1A34C9990();
}

uint64_t sub_1A32C40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v16;
  *(v8 + 184) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 152) = sub_1A34CD450();
  *(v8 + 160) = sub_1A34CD440();
  v12 = swift_task_alloc();
  *(v8 + 168) = v12;
  *v12 = v8;
  v12[1] = sub_1A32C41D8;

  return sub_1A32C16CC(a7, a8, v13, 0, a6);
}

uint64_t sub_1A32C41D8(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 104) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = a1;
  *(v3 + 176) = a1;

  v5 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A32C4324, v5, v4);
}

uint64_t sub_1A32C4324()
{
  v30 = v0;
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    v4 = *(v0 + 144);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    *(v0 + 112) = v4;
    sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
    sub_1A34C9990();
  }

  else
  {
    if (qword_1EB0C1298 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 128);
    v7 = sub_1A34CA250();
    __swift_project_value_buffer(v7, qword_1EB0ED020);
    v8 = v6;
    v9 = sub_1A34CA230();
    v10 = sub_1A34CD640();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      v13 = *(v0 + 184);
      v14 = *(v0 + 120) & 1;
      v15 = HIDWORD(*(v0 + 120));
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136315394;
      *(v0 + 64) = v14;
      *(v0 + 68) = v15;
      *(v0 + 72) = v13;
      *(v0 + 80) = v11;
      v18 = v11;
      v19 = sub_1A34CD170();
      v21 = sub_1A31EE23C(v19, v20, v29);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = *v12;
      v23 = v12[2];
      *(v0 + 32) = v12[1];
      *(v0 + 48) = v23;
      *(v0 + 16) = v22;
      v24 = sub_1A34CD170();
      v26 = sub_1A31EE23C(v24, v25, v29);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_1A31E6000, v9, v10, "Could not generate snapshot from configuration: %s preset: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v17, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1A32C4614()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore19AsyncPosterSnapshot___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A32C46EC()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1A32C4780()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
  sub_1A34C99A0();

  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

uint64_t sub_1A32C4830()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v1 = *(v0 + 16);
  sub_1A34C9010();
  return v1;
}

uint64_t sub_1A32C48E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_1A34DDF78;
  a2[1] = v6;
  return sub_1A34C9010();
}

uint64_t sub_1A32C49B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A32C4AA4;

  return v5();
}

uint64_t sub_1A32C4AA4(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A32C4BC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C9010();
  sub_1A34C9990();
}

uint64_t sub_1A32C4CE0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1A32C4DD0;

  return v4(v1 + 16);
}

uint64_t sub_1A32C4DD0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 16);
  v4 = *(v2 + 8);
  v5 = *(v1 + 24);

  return v4(v3, v5);
}

uint64_t sub_1A32C4EE4()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  return sub_1A34C9010();
}

uint64_t sub_1A32C4F88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  *a2 = *(v3 + 32);
  return sub_1A34C9010();
}

uint64_t sub_1A32C5034(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
    sub_1A34C9990();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A34C9010();
  v3 = sub_1A34CD4B0();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

void *sub_1A32C51BC()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1A32C526C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;

  return v4;
}

uint64_t sub_1A32C532C()
{
  swift_getKeyPath();
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C9990();
}

uint64_t sub_1A32C5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_1A34CD450();
  v4[5] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A32C5498, v6, v5);
}

uint64_t sub_1A32C5498()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[8] = OBJC_IVAR____TtC14ContactsUICore18LazyPosterSnapshot___observationRegistrar;
  v0[2] = v1;
  v0[9] = sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v2 = *(v1 + 16);
  v0[10] = *(v1 + 24);
  sub_1A34C9010();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1A32C5618;

  return v5();
}

uint64_t sub_1A32C5618(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A32C5768, v6, v5);
}

uint64_t sub_1A32C5768()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);

  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v0 + 24) = v3;
  sub_1A34C9990();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A32C5864(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 128) = a2;
  *(v5 + 88) = a1;
  v9 = swift_task_alloc();
  *(v5 + 112) = v9;
  *v9 = v5;
  v9[1] = sub_1A32C5920;

  return sub_1A32C16CC(a4, a5, v10, 0, a3);
}

uint64_t sub_1A32C5920(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 129) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A32C5A24, 0, 0);
}

uint64_t sub_1A32C5A24()
{
  v27 = v0;
  if (*(v0 + 120))
  {
    v1 = *(v0 + 129);
  }

  else
  {
    if (qword_1EB0C1298 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 96);
    v3 = sub_1A34CA250();
    __swift_project_value_buffer(v3, qword_1EB0ED020);
    v4 = v2;
    v5 = sub_1A34CA230();
    v6 = sub_1A34CD640();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 96);
      v8 = *(v0 + 104);
      v9 = *(v0 + 128);
      v10 = *(v0 + 88) & 1;
      v11 = HIDWORD(*(v0 + 88));
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315394;
      *(v0 + 64) = v10;
      *(v0 + 68) = v11;
      *(v0 + 72) = v9;
      *(v0 + 80) = v7;
      v14 = v7;
      v15 = sub_1A34CD170();
      v17 = sub_1A31EE23C(v15, v16, &v26);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v18 = *v8;
      v19 = v8[2];
      *(v0 + 32) = v8[1];
      *(v0 + 48) = v19;
      *(v0 + 16) = v18;
      v20 = sub_1A34CD170();
      v22 = sub_1A31EE23C(v20, v21, &v26);

      *(v12 + 14) = v22;
      _os_log_impl(&dword_1A31E6000, v5, v6, "Could not generate snapshot from configuration: %s preset: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    v1 = 0;
  }

  v23 = *(v0 + 8);
  v24 = *(v0 + 120);

  return v23(v24, v1);
}

uint64_t sub_1A32C5C54()
{

  v1 = OBJC_IVAR____TtC14ContactsUICore18LazyPosterSnapshot___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A32C5D30()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A32C5DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32C5E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1A32C5E7C()
{
  v0 = sub_1A32C6A74();
  v1 = v0;
  return v0;
}

uint64_t sub_1A32C5ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32C5F14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A32C600C;

  return v6(a1);
}

uint64_t sub_1A32C600C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A32C6104(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1A32C7948;

  return v5(v2 + 16);
}

uint64_t sub_1A32C61F8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1A32C62EC;

  return v5(v2 + 16);
}

uint64_t sub_1A32C62EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A32C641C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A32C6510;

  return v5(v2 + 32);
}

uint64_t sub_1A32C6510()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A32C6624(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1A32C6718;

  return v5(v2 + 16);
}

uint64_t sub_1A32C6718()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v7 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A32C6834(unint64_t a1, int a2, void *a3, _OWORD *a4, void *a5)
{
  v6 = v5;
  v24 = a2;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1A34C99D0();
  swift_getKeyPath();
  v25 = v5;
  v26 = 0;
  v27 = 0;
  v28 = v5;
  sub_1A32C5ECC(&qword_1EB0C2468, type metadata accessor for AsyncPosterSnapshot);
  sub_1A34C9990();

  v15 = sub_1A34CD4A0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1A34CD450();
  v16 = a5;
  sub_1A34C9010();
  v17 = a3;
  v18 = sub_1A34CD440();
  v19 = swift_allocObject();
  v20 = a4[1];
  *(v19 + 56) = *a4;
  v21 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v18;
  *(v19 + 24) = v21;
  *(v19 + 32) = v10 & 1;
  *(v19 + 36) = v11;
  *(v19 + 40) = v24;
  *(v19 + 48) = v17;
  *(v19 + 72) = v20;
  *(v19 + 88) = a4[2];
  *(v19 + 104) = a5;
  *(v19 + 112) = v6;
  sub_1A32C0B38(0, 0, v14, &unk_1A34DDFE8, v19);

  return v6;
}

uint64_t sub_1A32C6A74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  swift_getKeyPath();
  v13 = v0;
  sub_1A32C5ECC(&qword_1EB0C24B8, type metadata accessor for LazyPosterSnapshot);
  sub_1A34C99A0();

  v5 = *(v0 + 40);
  if (!v5)
  {
    swift_getKeyPath();
    v13 = v0;
    sub_1A34C99A0();

    if (!*(v0 + 32))
    {
      v6 = sub_1A34CD4A0();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      sub_1A34CD450();
      sub_1A34C9010();
      v7 = sub_1A34CD440();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E85E0];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v1;
      v10 = sub_1A32C0B38(0, 0, v4, &unk_1A34DDF18, v8);
      sub_1A32C5034(v10);
    }
  }

  return v5;
}

uint64_t sub_1A32C6C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A32C5400(a1, v4, v5, v6);
}

uint64_t sub_1A32C6D24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return sub_1A32C5F14(a1, v4);
}

uint64_t sub_1A32C6DF4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A32C6EA0;

  return sub_1A32C4CE0(v2);
}

uint64_t sub_1A32C6EA0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1A32C6FA4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  sub_1A34C9010();
}

uint64_t sub_1A32C6FE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292050;

  return sub_1A32C49B8(a1, v4);
}

void sub_1A32C709C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v1 + 40);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  v5 = v2;
}

void sub_1A32C70DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v5 = v2;
}

uint64_t sub_1A32C711C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A32C2B08(a1, v4, v5, v7, v6);
}

unint64_t sub_1A32C71E4()
{
  result = qword_1EB0C0168;
  if (!qword_1EB0C0168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C0168);
  }

  return result;
}

uint64_t sub_1A32C7230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return sub_1A32C6104(a1, v4);
}

uint64_t sub_1A32C72E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32) | (*(v1 + 36) << 32);
  v9 = *(v1 + 104);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A3292C58;

  return sub_1A32C40FC(a1, v4, v5, v8, v6, v7, v1 + 56, v9);
}

uint64_t sub_1A32C73E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return sub_1A32C6624(a1, v4);
}

uint64_t sub_1A32C7498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return sub_1A32C61F8(a1, v4);
}

uint64_t sub_1A32C7550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292050;

  return sub_1A32C61F8(a1, v4);
}

uint64_t sub_1A32C7608()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  sub_1A34C9010();
}

uint64_t sub_1A32C7644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return sub_1A32C641C(a1, v4);
}

uint64_t sub_1A32C76FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A32C7740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvatarShape(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AvatarShape(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A32C78F4()
{
  result = qword_1EB0C6208;
  if (!qword_1EB0C6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6208);
  }

  return result;
}

id AvatarBorderStyle.color.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AvatarBorderStyle.init(color:width:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

double sub_1A32C7A34@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1A34DAA20;
  return result;
}

uint64_t sub_1A32C7A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A32C7ED0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.preferredAvatarBorderStyle.getter()
{
  sub_1A32C7D90();

  return sub_1A34CB0E0();
}

double sub_1A32C7AF0@<D0>(_OWORD *a1@<X8>)
{
  sub_1A32C7D90();
  sub_1A34CB0E0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A32C7B40(id *a1)
{
  sub_1A32C7DE4(*a1);
  sub_1A32C7D90();
  return sub_1A34CB0F0();
}

void (*EnvironmentValues.preferredAvatarBorderStyle.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1A32C7D90();
  sub_1A34CB0E0();
  return sub_1A32C7C64;
}

void sub_1A32C7C64(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[2] = v4;
  v3[3] = v5;
  if (a2)
  {
    sub_1A32C7DE4(v4);
    sub_1A34CB0F0();
    sub_1A32C7DF4(*v3);
  }

  else
  {
    sub_1A34CB0F0();
  }

  free(v3);
}

BOOL _s14ContactsUICore17AvatarBorderStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v3)
    {
      type metadata accessor for CGColor(0);
      sub_1A32C7FA8();
      v5 = v3;
      v6 = sub_1A34C9B50();

      if (v6)
      {
        return v2 == v4;
      }
    }
  }

  else if (!v3)
  {
    return v2 == v4;
  }

  return 0;
}

unint64_t sub_1A32C7D90()
{
  result = qword_1ED854B88;
  if (!qword_1ED854B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854B88);
  }

  return result;
}

id sub_1A32C7DE4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1A32C7DF4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1A32C7E04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A32C7E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1A32C7ED0()
{
  result = qword_1EB0C6210;
  if (!qword_1EB0C6210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6218);
    sub_1A32C7F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6210);
  }

  return result;
}

unint64_t sub_1A32C7F54()
{
  result = qword_1EB0C6220;
  if (!qword_1EB0C6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6220);
  }

  return result;
}

unint64_t sub_1A32C7FA8()
{
  result = qword_1EB0C6228;
  if (!qword_1EB0C6228)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6228);
  }

  return result;
}

uint64_t type metadata accessor for ScaledRoundedRectangle()
{
  result = qword_1EB0C2158;
  if (!qword_1EB0C2158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32C8074()
{
  result = sub_1A34CB200();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A32C80F4()
{
  result = qword_1EB0C6230;
  if (!qword_1EB0C6230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6230);
  }

  return result;
}

double sub_1A32C8158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  v7 = sub_1A34CAD60();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3 * a3;
  v11 = *(a1 + 20);
  v13 = *(v12 + 28);
  v14 = sub_1A34CB200();
  (*(*(v14 - 8) + 16))(v9 + v13, v3 + v11, v14);
  *v9 = v10;
  v9[1] = v10;
  sub_1A34CAD40();
  sub_1A32C851C(v9);
  result = *&v18;
  v16 = v19;
  *a2 = v18;
  *(a2 + 16) = v16;
  *(a2 + 32) = v20;
  return result;
}

double sub_1A32C82A8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1A32C82B4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1A32C82E0;
}

double sub_1A32C82E0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_1A32C82F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32C8578(&qword_1EB0C6248);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A32C8374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A32C8578(&qword_1EB0C6248);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A32C83F4(uint64_t a1)
{
  v2 = sub_1A32C8578(&qword_1EB0C6248);

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A32C8460()
{
  result = qword_1EB0C6240;
  if (!qword_1EB0C6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6240);
  }

  return result;
}

uint64_t sub_1A32C851C(uint64_t a1)
{
  v2 = sub_1A34CAD60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A32C8578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScaledRoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A32C85BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SharedProfileLink();
  sub_1A328D790(v1 + *(v10 + 24), v9, &qword_1EB0C58B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA980();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SharedProfileLink.init(animationCoordinator:sharedProfileController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = type metadata accessor for SharedProfileLink();
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = 0;
  v6 = v4[10];
  sub_1A34CC730();
  *(a2 + v6) = v9;
  v7 = a2 + v4[11];
  sub_1A34CC730();
  *v7 = v9;
  *(v7 + 8) = *(&v9 + 1);
  *(a2 + v4[7]) = a1;
  type metadata accessor for SharedProfileLinkViewModel();
  return sub_1A34CA500();
}

uint64_t sub_1A32C8904@<X0>(void *a1@<X8>)
{
  type metadata accessor for SharedProfileLinkViewModel();
  swift_allocObject();
  v2 = sub_1A34C9010();
  v3 = sub_1A32F22A4(v2);

  *a1 = v3;
  return result;
}

uint64_t SharedProfileLink.init(sharedProfileController:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedProfileLinkAnimationCoordinator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x3FF0000000000000;
  sub_1A34C99D0();

  return SharedProfileLink.init(animationCoordinator:sharedProfileController:)(v2, a1);
}

uint64_t SharedProfileLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SharedProfileLink();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6250);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6258);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = v61 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6260);
  MEMORY[0x1EEE9AC00](v71);
  v69 = v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6268);
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v72 = v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6270);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v70 = v61 - v16;
  v76 = v4;
  v17 = v1 + *(v4 + 36);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
  v68 = v17;
  sub_1A34CA510();
  v18 = v82;
  swift_getKeyPath();
  v82 = v18;
  v66 = sub_1A32CD4CC(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  LODWORD(v17) = *(v18 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact);

  if (v17 == 1)
  {
    sub_1A32CCE00(v2, v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedProfileLink);
    v62 = *(v62 + 80);
    v61[1] = v5;
    v19 = (v62 + 16) & ~v62;
    v20 = swift_allocObject();
    v21 = sub_1A32CCD98(v6, v20 + v19, type metadata accessor for SharedProfileLink);
    v61[0] = a1;
    MEMORY[0x1EEE9AC00](v21);
    v61[-2] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6290);
    v75 = v2;
    sub_1A32CC208();
    sub_1A34CC790();
    v22 = sub_1A3284D0C(&qword_1EB0C2EB8, &qword_1EB0C6250);
    v23 = sub_1A32CC37C();
    sub_1A34CBEB0();
    (*(v63 + 8))(v9, v7);
    v82 = v7;
    v83 = &type metadata for PlatterButtonStyle;
    v84 = v22;
    v85 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = v69;
    v25 = v65;
    sub_1A34CC1F0();
    (*(v64 + 8))(v11, v25);
    v26 = v75;
    v27 = (v75 + *(v76 + 44));
    v28 = *v27;
    v29 = *(v27 + 1);
    v80 = v28;
    v81 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC760();
    v30 = v82;
    v65 = v83;
    LODWORD(v64) = v84;
    sub_1A32CCE00(v26, v6, type metadata accessor for SharedProfileLink);
    v31 = swift_allocObject();
    sub_1A32CCD98(v6, v31 + v19, type metadata accessor for SharedProfileLink);
    KeyPath = swift_getKeyPath();
    v33 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62A8) + 36));
    *v33 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
    swift_storeEnumTagMultiPayload();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62B0);
    v35 = v33 + v34[9];
    v36 = v65;
    *v35 = v30;
    *(v35 + 1) = v36;
    v35[16] = v64;
    v37 = (v33 + v34[10]);
    *v37 = CGPointMake;
    v37[1] = 0;
    v38 = (v33 + v34[11]);
    *v38 = sub_1A32CC3D0;
    v38[1] = v31;
    v39 = v75;
    sub_1A32CCE00(v75, v6, type metadata accessor for SharedProfileLink);
    v40 = swift_allocObject();
    sub_1A32CCD98(v6, v40 + v19, type metadata accessor for SharedProfileLink);
    v41 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62B8) + 36));
    *v41 = sub_1A32CC440;
    v41[1] = v40;
    v41[2] = 0;
    v41[3] = 0;
    sub_1A32CCE00(v39, v6, type metadata accessor for SharedProfileLink);
    v42 = swift_allocObject();
    sub_1A32CCD98(v6, v42 + v19, type metadata accessor for SharedProfileLink);
    v43 = v6;
    v44 = v71;
    v45 = (v24 + *(v71 + 36));
    *v45 = 0;
    v45[1] = 0;
    v45[2] = sub_1A32CC448;
    v45[3] = v42;
    sub_1A34CA510();
    v46 = v82;
    swift_getKeyPath();
    v82 = v46;
    sub_1A34C99A0();

    LOBYTE(v42) = *(v46 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__shouldReveal);

    LOBYTE(v82) = v42;
    v47 = v75;
    sub_1A32CCE00(v75, v43, type metadata accessor for SharedProfileLink);
    v48 = swift_allocObject();
    sub_1A32CCD98(v43, v48 + v19, type metadata accessor for SharedProfileLink);
    v49 = sub_1A32CC534();
    v50 = v72;
    sub_1A34CC3B0();

    sub_1A3288FDC(v24, &qword_1EB0C6260);
    v51 = *(v47 + *(v76 + 28));
    swift_getKeyPath();
    v82 = v51;
    sub_1A32CD4CC(&qword_1EB0C2F70, type metadata accessor for SharedProfileLinkAnimationCoordinator);
    sub_1A34C99A0();

    swift_beginAccess();
    v79 = *(v51 + 16) > 0.2;
    sub_1A32CCE00(v47, v43, type metadata accessor for SharedProfileLink);
    v52 = swift_allocObject();
    sub_1A32CCD98(v43, v52 + v19, type metadata accessor for SharedProfileLink);
    v82 = v44;
    v83 = MEMORY[0x1E69E6370];
    v84 = v49;
    v85 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    v53 = v70;
    v54 = v74;
    a1 = v61[0];
    sub_1A34CC3B0();

    (*(v73 + 8))(v50, v54);
    v56 = v77;
    v55 = v78;
    (*(v77 + 32))(a1, v53, v78);
    v57 = 0;
    v58 = v55;
    v59 = v56;
  }

  else
  {
    v57 = 1;
    v59 = v77;
    v58 = v78;
  }

  return (*(v59 + 56))(a1, v57, 1, v58);
}

uint64_t sub_1A32C9500()
{
  v1 = v0;
  v2 = sub_1A34CB0B0();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for SharedProfileLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
  sub_1A34CA510();

  if (qword_1EB0C2E98 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB0EDA38;
  sub_1A34C9710();
  v15 = sub_1A34C9720();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_1A328D790(v12, v9, &qword_1EB0C63B0);
  sub_1A328D790(v9, v6, &qword_1EB0C63B0);
  v16 = sub_1A34CDE70();

  v17 = sub_1A34CD0E0();

  [v14 setObject:v16 forKey:v17];
  swift_unknownObjectRelease();

  sub_1A3288FDC(v9, &qword_1EB0C63B0);
  sub_1A3288FDC(v12, &qword_1EB0C63B0);
  v18 = [objc_opt_self() currentEnvironment];
  v19 = [v18 featureFlags];

  LODWORD(v18) = [v19 isFeatureEnabled_];
  swift_unknownObjectRelease();
  if (v18 && ([objc_opt_self() multiplePhoneNumbersTiedToAppleID] & 1) == 0)
  {
    v25 = (v1 + *(v13 + 44));
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v32) = v26;
    v33 = v27;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    return sub_1A34CC750();
  }

  else
  {
    v20 = *(v1 + 24);
    if (*(v1 + 40) == 1)
    {
      v21 = sub_1A34C9010();
    }

    else
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v22 = sub_1A34CBA30();
      sub_1A34CA210();

      v23 = v28;
      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A32B56DC();
      v21 = (*(v29 + 8))(v23, v30);
      v20 = v32;
    }

    v20(v21);
  }
}

uint64_t sub_1A32C994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62A0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6298);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - v8;
  *v6 = sub_1A34CB110();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6340);
  sub_1A32C9C00(a1, &v6[*(v10 + 44)]);
  sub_1A3284D0C(&qword_1EB0C2EB0, &qword_1EB0C62A0);
  sub_1A34CC1F0();
  sub_1A3288FDC(v6, &qword_1EB0C62A0);
  v11 = *(a1 + *(type metadata accessor for SharedProfileLink() + 28));
  swift_getKeyPath();
  v14[1] = v11;
  sub_1A32CD4CC(&qword_1EB0C2F70, type metadata accessor for SharedProfileLinkAnimationCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  v12 = 0.0;
  if (*(v11 + 16) >= 0.7)
  {
    swift_getKeyPath();
    v14[0] = v11;
    sub_1A34C99A0();

    v12 = (*(v11 + 16) + -0.7) / 0.3;
  }

  sub_1A32005AC(v9, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6290);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1A32C9C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6348);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v53 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6350);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6358);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v53 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6360);
  MEMORY[0x1EEE9AC00](v55);
  v14 = (&v53 - v13);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6368);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6370);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v64 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v53 - v20;
  v54 = type metadata accessor for SharedProfileLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
  sub_1A34CA510();
  v21 = v72;
  swift_getKeyPath();
  v72 = v21;
  sub_1A32CD4CC(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v22 = *(v21 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);

  v23 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v24 = sub_1A32F27E4(v22, 1);
  v14[3] = v23;
  v25 = sub_1A32CD4CC(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  *v14 = v24;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = v25;
  sub_1A34CA510();
  v26 = v72;
  swift_getKeyPath();
  v72 = v26;
  sub_1A34C99A0();

  v27 = *(v26 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);

  v28 = [v27 id];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6378);
  sub_1A34C9760();

  sub_1A34CCC80();
  sub_1A34CA760();
  v29 = v55;
  v30 = (v14 + *(v55 + 36));
  v31 = v70;
  *v30 = v69;
  v30[1] = v31;
  v30[2] = v71;
  LOBYTE(v72) = 0;
  sub_1A34CCD60();
  v32 = sub_1A32CCF18();
  v33 = sub_1A32CCEC4();
  sub_1A34CC210();
  sub_1A3288FDC(v14, &qword_1EB0C6360);
  v72 = v29;
  v73 = &type metadata for VisualIdentityType;
  v74 = v32;
  v75 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v63;
  v35 = v56;
  sub_1A34CC1F0();
  (*(v57 + 8))(v16, v35);
  sub_1A34CCC80();
  sub_1A34CA760();
  v54 = v72;
  v55 = v74;
  v57 = v76;
  v56 = v77;
  v80 = 1;
  v79 = v73;
  v78 = v75;
  *v8 = sub_1A34CB290();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6380);
  sub_1A32CA5D0(a1, &v8[*(v36 + 44)]);
  v37 = sub_1A34CBBD0();
  KeyPath = swift_getKeyPath();
  v39 = &v8[*(v58 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  sub_1A32CCFD0();
  v40 = v65;
  sub_1A34CC1F0();
  sub_1A3288FDC(v8, &qword_1EB0C6350);
  v41 = sub_1A34CC5E0();
  v42 = sub_1A34CB590();
  v66 = v41;
  v67 = v42;
  v68 = xmmword_1A34DE300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6390);
  sub_1A32CD0B4();
  v43 = v60;
  sub_1A34CC1F0();

  v44 = v64;
  sub_1A3200624(v34, v64);
  LOBYTE(v29) = v80;
  LOBYTE(v32) = v79;
  LOBYTE(v8) = v78;
  v45 = v59;
  sub_1A328D790(v40, v59, &qword_1EB0C6358);
  v46 = v61;
  sub_1A328D790(v43, v61, &qword_1EB0C6348);
  v47 = v62;
  sub_1A3200624(v44, v62);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63A8);
  v49 = v47 + v48[12];
  *v49 = 0;
  *(v49 + 8) = v29;
  *(v49 + 9) = v66;
  *(v49 + 12) = *(&v66 + 3);
  *(v49 + 16) = v54;
  *(v49 + 24) = v32;
  *(v49 + 25) = *v82;
  *(v49 + 28) = *&v82[3];
  *(v49 + 32) = v55;
  *(v49 + 40) = v8;
  *(v49 + 44) = *&v81[3];
  *(v49 + 41) = *v81;
  v50 = v56;
  *(v49 + 48) = v57;
  *(v49 + 56) = v50;
  sub_1A328D790(v45, v47 + v48[16], &qword_1EB0C6358);
  v51 = v47 + v48[20];
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_1A328D790(v46, v47 + v48[24], &qword_1EB0C6348);
  sub_1A3288FDC(v43, &qword_1EB0C6348);
  sub_1A3288FDC(v65, &qword_1EB0C6358);
  sub_1A3288FDC(v63, &qword_1EB0C6370);
  sub_1A3288FDC(v46, &qword_1EB0C6348);
  sub_1A3288FDC(v45, &qword_1EB0C6358);
  return sub_1A3288FDC(v64, &qword_1EB0C6370);
}

uint64_t sub_1A32CA5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50[2] = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = v50 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v52 = v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = v50 - v9;
  v50[3] = *(type metadata accessor for SharedProfileLink() + 36);
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
  sub_1A34CA510();
  v10 = sub_1A32F04B4();
  v12 = v11;

  v56 = v10;
  v57 = v12;
  sub_1A328A95C();
  v13 = sub_1A34CBE30();
  v15 = v14;
  v17 = v16;
  sub_1A34CBB70();
  v18 = sub_1A34CBD30();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1A328A9B0(v13, v15, v17 & 1);

  v56 = v18;
  v57 = v20;
  v58 = v22 & 1;
  v59 = v24;
  sub_1A34CC1F0();
  sub_1A328A9B0(v18, v20, v22 & 1);

  sub_1A34CA510();
  v25 = sub_1A32F05FC();
  v27 = v26;

  v56 = v25;
  v57 = v27;
  v28 = sub_1A34CBE30();
  v30 = v29;
  LOBYTE(v27) = v31;
  sub_1A34CBB10();
  v32 = sub_1A34CBE10();
  v34 = v33;
  v36 = v35;

  sub_1A328A9B0(v28, v30, v27 & 1);

  LODWORD(v56) = sub_1A34CB590();
  v37 = sub_1A34CBDF0();
  v39 = v38;
  LOBYTE(v30) = v40;
  v42 = v41;
  sub_1A328A9B0(v32, v34, v36 & 1);

  v56 = v37;
  v57 = v39;
  v58 = v30 & 1;
  v59 = v42;
  v43 = v52;
  sub_1A34CC1F0();
  sub_1A328A9B0(v37, v39, v30 & 1);

  v44 = v51;
  v45 = v53;
  sub_1A328D790(v51, v53, &qword_1EB0C5988);
  v46 = v54;
  sub_1A328D790(v43, v54, &qword_1EB0C5988);
  v47 = v55;
  sub_1A328D790(v45, v55, &qword_1EB0C5988);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5990);
  sub_1A328D790(v46, v47 + *(v48 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v43, &qword_1EB0C5988);
  sub_1A3288FDC(v44, &qword_1EB0C5988);
  sub_1A3288FDC(v46, &qword_1EB0C5988);
  return sub_1A3288FDC(v45, &qword_1EB0C5988);
}

uint64_t sub_1A32CAA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6310);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v79 - v3;
  v96 = sub_1A34CB790();
  v86 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6318);
  v87 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v79 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6320);
  v89 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v88 = &v79 - v6;
  v7 = sub_1A34CA980();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v79 - v10;
  v11 = type metadata accessor for VisualIdentityEditor();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v79 - v15;
  v16 = type metadata accessor for SharedProfileLink();
  v118 = *(a1 + *(v16 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6328);
  sub_1A34CC740();
  v102 = a1;
  v90 = v16;
  if (v115)
  {
    v80 = *(v16 + 36);
    v83 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
    sub_1A34CA520();
    v17 = *(&v118 + 1);
    v18 = v118;
    v19 = v119;
    swift_getKeyPath();
    v103 = __PAIR128__(v17, v18);
    *&v104 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6330);
    sub_1A34CC920();

    v82 = *v114;
    v81 = *&v114[8];

    sub_1A34CA520();
    v20 = v118;
    v21 = v119;
    swift_getKeyPath();
    v112 = v20;
    v113 = v21;
    sub_1A34CC920();

    v115 = v109;
    v116 = v110;
    v117[0] = v111[0];
    *(v117 + 9) = *(v111 + 9);

    v22 = sub_1A34CCD60();
    *v13 = 0;
    v23 = v11[6];
    *&v13[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
    swift_storeEnumTagMultiPayload();
    v24 = &v13[v11[7]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    v24[16] = 0;
    v25 = &v13[v11[10]];
    LOBYTE(v106) = 0;
    sub_1A34CC730();
    v26 = *(&v118 + 1);
    *v25 = v118;
    *(v25 + 1) = v26;
    v27 = &v13[v11[12]];
    LOBYTE(v106) = 0;
    sub_1A34CC730();
    v28 = *(&v118 + 1);
    *v27 = v118;
    *(v27 + 1) = v28;
    v29 = v11[13];
    *&v106 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5AC0);
    sub_1A34CC730();
    *&v13[v29] = v118;
    *(v13 + 1) = v22;
    v13[16] = 0;
    v30 = &v13[v11[8]];
    *v30 = v82;
    *(v30 + 8) = v81;
    v106 = v115;
    v107 = v116;
    v108[0] = v117[0];
    *(v108 + 9) = *(v117 + 9);
    sub_1A34CC970();
    v31 = &v13[v11[9]];
    v32 = v119;
    *v31 = v118;
    *(v31 + 1) = v32;
    *(v31 + 2) = v120[0];
    *(v31 + 41) = *(v120 + 9);
    type metadata accessor for VisualIdentityEditorViewModel();
    sub_1A34CA500();
    v33 = v11;
  }

  else
  {
    v83 = v11;
    *&v81 = *(v16 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
    sub_1A34CA520();
    v34 = v118;
    v35 = v119;
    swift_getKeyPath();
    v36 = a1;
    *v114 = v34;
    *&v114[16] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6330);
    sub_1A34CC920();

    v37 = *(&v112 + 1);
    v82 = v112;
    v80 = v113;

    sub_1A34CA520();
    v38 = v118;
    v39 = v119;
    swift_getKeyPath();
    *&v105[5] = v38;
    v105[7] = v39;
    sub_1A34CC920();

    v109 = v106;
    v110 = v107;
    v111[0] = v108[0];
    *(v111 + 9) = *(v108 + 9);

    v119 = v110;
    v120[0] = v111[0];
    *(v120 + 9) = *(v111 + 9);
    v118 = v109;
    *&v81 = *(v36 + v90[8]);
    v40 = sub_1A34CCD60();
    v90 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    if (qword_1EB0C2248 != -1)
    {
      swift_once();
    }

    v41 = qword_1EB0C2250;
    v79 = sub_1A33BE0A8(&unk_1F161A6C8);
    *v13 = 0;
    v33 = v83;
    v42 = v83[6];
    *&v13[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
    swift_storeEnumTagMultiPayload();
    v43 = &v13[v33[7]];
    *v43 = swift_getKeyPath();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v44 = &v13[v33[10]];
    LOBYTE(v103) = 0;

    sub_1A34CC730();
    v45 = *(&v115 + 1);
    *v44 = v115;
    *(v44 + 1) = v45;
    v46 = &v13[v33[12]];
    LOBYTE(v103) = 0;
    sub_1A34CC730();
    v47 = *(&v115 + 1);
    *v46 = v115;
    *(v46 + 1) = v47;
    v48 = v33[13];
    *&v103 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5AC0);
    sub_1A34CC730();
    *&v13[v48] = v115;
    *(v13 + 1) = v40;
    v13[16] = 0;
    v49 = &v13[v33[8]];
    v50 = v82;
    *v49 = v82;
    *(v49 + 1) = v37;
    v51 = v80;
    *(v49 + 2) = v80;
    v103 = v109;
    v104 = v110;
    *v105 = v111[0];
    *(&v105[1] + 1) = *(v111 + 9);
    sub_1A34C9010();
    sub_1A34C9010();
    v52 = v51;
    sub_1A328D790(&v109, &v115, &qword_1EB0C6338);
    sub_1A34CC970();
    v53 = &v13[v33[9]];
    v54 = v116;
    *v53 = v115;
    *(v53 + 1) = v54;
    *(v53 + 2) = v117[0];
    *(v53 + 41) = *(v117 + 9);
    v55 = swift_allocObject();
    *(v55 + 16) = v50;
    *(v55 + 24) = v37;
    *(v55 + 32) = v52;
    *(v55 + 40) = 1;
    v56 = v119;
    *(v55 + 48) = v118;
    *(v55 + 64) = v56;
    *(v55 + 80) = v120[0];
    *(v55 + 89) = *(v120 + 9);
    *(v55 + 112) = v90;
    *(v55 + 120) = 1;
    v57 = v79;
    *(v55 + 128) = v41;
    *(v55 + 136) = v57;
    type metadata accessor for VisualIdentityEditorViewModel();
    sub_1A34CA500();
  }

  v58 = v13;
  v59 = v95;
  sub_1A32CCD98(v58, v95, type metadata accessor for VisualIdentityEditor);
  v60 = v91;
  sub_1A32C85BC(v91);
  v61 = v92;
  sub_1A34CA970();
  v62 = sub_1A34CA950();
  v63 = *(v93 + 8);
  v64 = v61;
  v65 = v94;
  v63(v64, v94);
  v63(v60, v65);
  if (v62)
  {
    LOBYTE(v115) = 0;
    sub_1A34CCD60();
    sub_1A32CCEC4();
    v66 = v84;
    sub_1A34CB420();
    v67 = sub_1A32CD4CC(&qword_1EB0C22D0, type metadata accessor for VisualIdentityEditor);
    v68 = MEMORY[0x1E697C950];
    v69 = v85;
    v70 = v96;
    sub_1A34CC170();
    (*(v86 + 8))(v66, v70);
    *&v115 = v33;
    *(&v115 + 1) = v70;
    *&v116 = v67;
    *(&v116 + 1) = v68;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v88;
    v73 = v97;
    sub_1A34CC240();
    (*(v87 + 8))(v69, v73);
    v74 = v89;
    v75 = v99;
    (*(v89 + 16))(v100, v72, v99);
    swift_storeEnumTagMultiPayload();
    *&v115 = v73;
    *(&v115 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
    (*(v74 + 8))(v72, v75);
  }

  else
  {
    sub_1A32CCE00(v59, v100, type metadata accessor for VisualIdentityEditor);
    swift_storeEnumTagMultiPayload();
    v76 = sub_1A32CD4CC(&qword_1EB0C22D0, type metadata accessor for VisualIdentityEditor);
    *&v115 = v33;
    *(&v115 + 1) = v96;
    *&v116 = v76;
    *(&v116 + 1) = MEMORY[0x1E697C950];
    v77 = swift_getOpaqueTypeConformance2();
    *&v115 = v97;
    *(&v115 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
  }

  return sub_1A32CCE68(v59);
}

uint64_t sub_1A32CB7A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController);
  swift_getKeyPath();
  sub_1A32CD4CC(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
  sub_1A34C99A0();

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

uint64_t sub_1A32CB884(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v8 = v2;
  v9 = v1;
  v10 = v3;
  v11 = v4;
  v12 = v5;

  return sub_1A32EE894(v7);
}

uint64_t sub_1A32CB8E4(uint64_t a1, char a2)
{
  type metadata accessor for SharedProfileLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
  sub_1A34CA510();
  sub_1A32EF258(a2);
}

void sub_1A32CB958(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = *a3;
    if (*(a3 + 16) == 1)
    {
      v11 = sub_1A34C9010();
    }

    else
    {
      v12 = v7;
      sub_1A34C9010();
      sub_1A34CD650();
      v13 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A32B56DC();
      v11 = (*(v6 + 8))(v9, v12);
      v10 = v14;
    }

    v10(v11);
  }
}

uint64_t sub_1A32CBADC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  sub_1A34CB740();
  v6 = sub_1A34CBA90();
  sub_1A34CA460();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62E8) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_1A34CCC80();
  v18 = v17;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62F0) + 36);
  if (sub_1A34CB750())
  {
    v20 = *MEMORY[0x1E697F468];
    v21 = sub_1A34CB200();
    (*(*(v21 - 8) + 104))(v5, v20, v21);
    sub_1A34CC4D0();
    v22 = sub_1A34CC540();

    *&v5[*(v2 + 52)] = v22;
    *&v5[*(v2 + 56)] = 256;
    sub_1A32CCD20(v5, v19);
    (*(v3 + 56))(v19, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v19, 1, 1, v2);
    v20 = *MEMORY[0x1E697F468];
  }

  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62F8) + 36));
  *v23 = v16;
  v23[1] = v18;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6300) + 36);
  v25 = sub_1A34CB200();
  (*(*(v25 - 8) + 104))(v24, v20, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6308);
  *(v24 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A32CBDF4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A32CD4CC(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  *a3 = *(v5 + *a2);
  return result;
}

double sub_1A32CBF30@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1A34CB0E0();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1A32CBFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a2);
  sub_1A34C9010();
  return sub_1A34CB0F0();
}

double keypath_getTm@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1A34CB0E0();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for SharedProfileLink()
{
  result = qword_1EB0C3038;
  if (!qword_1EB0C3038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A32CC0B8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32CD4CC(&qword_1EB0C2F70, type metadata accessor for SharedProfileLinkAnimationCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

unint64_t sub_1A32CC208()
{
  result = qword_1EB0C2EF8;
  if (!qword_1EB0C2EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6290);
    sub_1A32CC294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2EF8);
  }

  return result;
}

unint64_t sub_1A32CC294()
{
  result = qword_1EB0C2F28;
  if (!qword_1EB0C2F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6298);
    sub_1A3284D0C(&qword_1EB0C2EB0, &qword_1EB0C62A0);
    sub_1A32CD4CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F28);
  }

  return result;
}

unint64_t sub_1A32CC37C()
{
  result = qword_1EB0C3030;
  if (!qword_1EB0C3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C3030);
  }

  return result;
}

uint64_t sub_1A32CC3D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedProfileLink() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A32CAA24(v4, a1);
}

void sub_1A32CC4B4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SharedProfileLink() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A32CB958(a1, a2, v6);
}

unint64_t sub_1A32CC534()
{
  result = qword_1EB0C2EE0;
  if (!qword_1EB0C2EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6260);
    sub_1A32CC5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2EE0);
  }

  return result;
}

unint64_t sub_1A32CC5C0()
{
  result = qword_1EB0C2EE8;
  if (!qword_1EB0C2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62B8);
    sub_1A32CC64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2EE8);
  }

  return result;
}

unint64_t sub_1A32CC64C()
{
  result = qword_1EB0C2F08;
  if (!qword_1EB0C2F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62A8);
    sub_1A32CC704();
    sub_1A3284D0C(&unk_1EB0C2F80, &qword_1EB0C62B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F08);
  }

  return result;
}

unint64_t sub_1A32CC704()
{
  result = qword_1EB0C2F38;
  if (!qword_1EB0C2F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6250);
    sub_1A3284D0C(&qword_1EB0C2EB8, &qword_1EB0C6250);
    sub_1A32CC37C();
    swift_getOpaqueTypeConformance2();
    sub_1A32CD4CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F38);
  }

  return result;
}

void sub_1A32CC890()
{
  sub_1A32CC9FC();
  if (v0 <= 0x3F)
  {
    sub_1A32CCA60(319, &qword_1ED8534D0, MEMORY[0x1E697E398], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SharedProfileLinkAnimationCoordinator();
      if (v2 <= 0x3F)
      {
        sub_1A32CCA60(319, &qword_1EB0C2F50, type metadata accessor for SharedProfileLinkViewModel, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1A32CCAC4(319, &qword_1EB0C2EC0);
          if (v4 <= 0x3F)
          {
            sub_1A32CCAC4(319, &qword_1ED853490);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A32CC9FC()
{
  if (!qword_1ED8534C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5C80);
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8534C0);
    }
  }
}

void sub_1A32CCA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A32CCAC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A34CC770();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A32CCB10()
{
  result = qword_1EB0C62D0;
  if (!qword_1EB0C62D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6260);
    sub_1A32CC534();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C62D0);
  }

  return result;
}

uint64_t sub_1A32CCC38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A32CCC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A32CCCDC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A32CCD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32CCD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32CCE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32CCE68(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentityEditor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32CCEC4()
{
  result = qword_1ED853680;
  if (!qword_1ED853680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853680);
  }

  return result;
}

unint64_t sub_1A32CCF18()
{
  result = qword_1EB0C2F20;
  if (!qword_1EB0C2F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6360);
    sub_1A3284D0C(&qword_1EB0C2EA8, &qword_1EB0C6378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F20);
  }

  return result;
}

unint64_t sub_1A32CCFD0()
{
  result = qword_1EB0C2F18;
  if (!qword_1EB0C2F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6350);
    sub_1A3284D0C(&qword_1EB0C2EA0, &qword_1EB0C6388);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F18);
  }

  return result;
}

unint64_t sub_1A32CD0B4()
{
  result = qword_1EB0C2F00;
  if (!qword_1EB0C2F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6390);
    sub_1A32CD140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F00);
  }

  return result;
}

unint64_t sub_1A32CD140()
{
  result = qword_1EB0C2F30;
  if (!qword_1EB0C2F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6398);
    sub_1A3284D0C(&qword_1EB0C2EC8, &qword_1EB0C63A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F30);
  }

  return result;
}

unint64_t sub_1A32CD1F8()
{
  result = qword_1EB0C3000;
  if (!qword_1EB0C3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C3000);
  }

  return result;
}

unint64_t sub_1A32CD24C()
{
  result = qword_1EB0C3048;
  if (!qword_1EB0C3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C3048);
  }

  return result;
}

unint64_t sub_1A32CD2A0()
{
  result = qword_1EB0C2EF0;
  if (!qword_1EB0C2EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6300);
    sub_1A32CD358();
    sub_1A3284D0C(&qword_1EB0C2ED0, &qword_1EB0C6308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2EF0);
  }

  return result;
}

unint64_t sub_1A32CD358()
{
  result = qword_1EB0C2F10;
  if (!qword_1EB0C2F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62F0);
    sub_1A32CD410();
    sub_1A3284D0C(&qword_1EB0C2ED8, &qword_1EB0C62F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F10);
  }

  return result;
}

unint64_t sub_1A32CD410()
{
  result = qword_1EB0C2F40;
  if (!qword_1EB0C2F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C62E8);
    sub_1A32CD4CC(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F40);
  }

  return result;
}

uint64_t sub_1A32CD4CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A32CD55C()
{
  sub_1A32CD678(319, &qword_1EB0C63E0, type metadata accessor for MonogramRecipe_Path.Command, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A34C9FB0();
    if (v1 <= 0x3F)
    {
      sub_1A32CD678(319, &qword_1EB0C63E8, type metadata accessor for MonogramRecipe_Point, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A32CD678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A32CD724()
{
  sub_1A32CD678(319, &qword_1EB0C6400, type metadata accessor for MonogramRecipe_Point, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A34C9FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A32CD820()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A32CD8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D1620();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1A32CD948@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1A32CD980()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1A34DF238[result];
  }

  return result;
}

uint64_t sub_1A32CD9B8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

void sub_1A32CD9F4(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1A34DF238[v2];
  }

  *a1 = v2;
}

uint64_t sub_1A32CDA18()
{
  sub_1A34CDF20();
  sub_1A34CCFE0();
  return sub_1A34CDF70();
}

uint64_t sub_1A32CDA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D14B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1A32CDAD0()
{
  sub_1A34CDF20();
  sub_1A34CCFE0();
  return sub_1A34CDF70();
}

BOOL sub_1A32CDB38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1A34DF238[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1A34DF238[v3];
  }

  return v2 == v3;
}

unint64_t sub_1A32CDB74()
{
  result = qword_1EB0C6418;
  if (!qword_1EB0C6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6418);
  }

  return result;
}

unint64_t sub_1A32CDBCC()
{
  result = qword_1EB0C6420;
  if (!qword_1EB0C6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6420);
  }

  return result;
}

unint64_t sub_1A32CDC24()
{
  result = qword_1EB0C6428;
  if (!qword_1EB0C6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6428);
  }

  return result;
}

uint64_t sub_1A32CDC88()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDB28);
  __swift_project_value_buffer(v0, qword_1EB0EDB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SFPro";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SFProCondensed";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SFProExpanded";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SFProCompactRounded";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SFProRounded";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NewYork";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CDF74()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDB40);
  __swift_project_value_buffer(v0, qword_1EB0EDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DCA90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CE138()
{
  while (1)
  {
    result = sub_1A34CA010();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1A34CA060();
    }
  }

  return result;
}

uint64_t sub_1A32CE1B8()
{
  if (*v0 == 0.0 || (result = sub_1A34CA140(), !v1))
  {
    if (v0[1] == 0.0 || (result = sub_1A34CA140(), !v1))
    {
      type metadata accessor for MonogramRecipe_Point(0);
      return sub_1A34C9F90();
    }
  }

  return result;
}

uint64_t sub_1A32CE2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D0A64(&qword_1EB0C64E0, type metadata accessor for MonogramRecipe_Point);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32CE398(uint64_t a1)
{
  v2 = sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A32CE404()
{
  sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32CE480(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1A34C9FB0();
  sub_1A32D0A64(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t sub_1A32CE554(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A34DCA90;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1A34CA190();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 6;
  v18[16] = 2;
  v17();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CE714()
{
  result = sub_1A34CA010();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for MonogramRecipe_Path.Command(0);
        sub_1A32D0A64(&qword_1EB0C6468, type metadata accessor for MonogramRecipe_Path.Command);
        sub_1A34CA090();
      }

      else if (result == 2)
      {
        sub_1A32CE814();
      }

      result = sub_1A34CA010();
    }
  }

  return result;
}

uint64_t sub_1A32CE814()
{
  type metadata accessor for MonogramRecipe_Path(0);
  type metadata accessor for MonogramRecipe_Point(0);
  sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
  return sub_1A34CA0A0();
}

uint64_t sub_1A32CE8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for MonogramRecipe_Path.Command(0), sub_1A32D0A64(&qword_1EB0C6468, type metadata accessor for MonogramRecipe_Path.Command), result = sub_1A34CA170(), !v4))
  {
    result = sub_1A32CE9C4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for MonogramRecipe_Path(0);
      return sub_1A34C9F90();
    }
  }

  return result;
}

uint64_t sub_1A32CE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MonogramRecipe_Point(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MonogramRecipe_Path(0);
  sub_1A328D790(a1 + *(v12 + 24), v7, &qword_1EB0C63C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3288FDC(v7, &qword_1EB0C63C8);
  }

  sub_1A32D17AC(v7, v11, type metadata accessor for MonogramRecipe_Point);
  sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
  sub_1A34CA180();
  return sub_1A32D1814(v11, type metadata accessor for MonogramRecipe_Point);
}

uint64_t sub_1A32CEBD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1A34C9FA0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for MonogramRecipe_Point(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1A32CECA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D0A64(&qword_1EB0C64D8, type metadata accessor for MonogramRecipe_Path);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32CED40(uint64_t a1)
{
  v2 = sub_1A32D0A64(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A32CEDAC()
{
  sub_1A32D0A64(&qword_1EB0C5BA0, type metadata accessor for MonogramRecipe_Path);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32CEE4C()
{
  result = sub_1A34CA010();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1A32D14B4();
        sub_1A34CA040();
      }

      else if (result == 2)
      {
        type metadata accessor for MonogramRecipe_Point(0);
        sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point);
        sub_1A34CA090();
      }

      result = sub_1A34CA010();
    }
  }

  return result;
}

uint64_t sub_1A32CEF64()
{
  if (!*v0 || (sub_1A32D14B4(), result = sub_1A34CA120(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for MonogramRecipe_Point(0), sub_1A32D0A64(&qword_1EB0C6498, type metadata accessor for MonogramRecipe_Point), result = sub_1A34CA170(), !v1))
    {
      type metadata accessor for MonogramRecipe_Path.Command(0);
      return sub_1A34C9F90();
    }
  }

  return result;
}

uint64_t sub_1A32CF098@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  return sub_1A34C9FA0();
}

uint64_t sub_1A32CF120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D0A64(&qword_1EB0C64F0, type metadata accessor for MonogramRecipe_Path.Command);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32CF1C0(uint64_t a1)
{
  v2 = sub_1A32D0A64(&qword_1EB0C6468, type metadata accessor for MonogramRecipe_Path.Command);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A32CF22C()
{
  sub_1A32D0A64(&qword_1EB0C6468, type metadata accessor for MonogramRecipe_Path.Command);

  return sub_1A34CA0F0();
}

uint64_t sub_1A32CF2AC()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDB88);
  __swift_project_value_buffer(v0, qword_1EB0EDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MOVE_TO";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LINE_TO";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CURVE_TO";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CLOSE_PATH";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CF518()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDBA0);
  __swift_project_value_buffer(v0, qword_1EB0EDBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DD060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weight";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "width";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A32CF72C()
{
  result = sub_1A34CA010();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1A34CA070();
      }

      else if (result == 1)
      {
        sub_1A32D1620();
        sub_1A34CA040();
      }

      result = sub_1A34CA010();
    }
  }

  return result;
}

uint64_t sub_1A32CF7F8()
{
  if (!*v0 || (sub_1A32D1620(), result = sub_1A34CA120(), !v1))
  {
    if (*(v0 + 16) == 0.0 || (result = sub_1A34CA150(), !v1))
    {
      if (*(v0 + 24) == 0.0 || (result = sub_1A34CA150(), !v1))
      {
        type metadata accessor for MonogramRecipe_Font(0);
        return sub_1A34C9F90();
      }
    }
  }

  return result;
}

uint64_t sub_1A32CF900@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1A34C9FA0();
}

uint64_t sub_1A32CF940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A32CF9B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1A32CFA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A32D0A64(&qword_1EB0C6500, type metadata accessor for MonogramRecipe_Font);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A32CFB1C(uint64_t a1)
{
  v2 = sub_1A32D0A64(&qword_1EB0C5C60, type metadata accessor for MonogramRecipe_Font);

  return MEMORY[0x1EEE15928](a1, v2);
}