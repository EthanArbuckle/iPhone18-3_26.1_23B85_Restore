id sub_222789510(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_222794F78(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22278887C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_222794F78(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        sub_22279F470();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_222789CEC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_222789688(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_222794F78(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_222788AE4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_222794F78(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        result = sub_22279F470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_222789E4C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

_OWORD *sub_222789804(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22279EF70();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2227828C4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_2227898C4()
{
  v1 = v0;
  v28 = sub_22279EF70();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v3);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
  v5 = *v0;
  v6 = sub_22279EFF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v31 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v30;
        v22 = *(v30 + 72) * v20;
        v23 = v27;
        v24 = v28;
        (*(v30 + 16))(v27, *(v5 + 48) + v22, v28);
        v20 *= 32;
        sub_22278B474(*(v5 + 56) + v20, v32);
        v25 = v29;
        (*(v21 + 32))(*(v29 + 48) + v22, v23, v24);
        result = sub_2227828C4(v32, (*(v25 + 56) + v20));
        v15 = v31;
      }

      while (v31);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v26[0];
        v7 = v29;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v31 = (v19 - 1) & v19;
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

void *sub_222789B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
  v2 = *v0;
  v3 = sub_22279EFF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2227829D0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22278B474(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2227828C4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_222789CEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
  v2 = *v0;
  v3 = sub_22279EFF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_222789E4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
  v2 = *v0;
  v3 = sub_22279EFF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_222789FB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22278A0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019ED8, &qword_2227A1040);
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
    v10 = MEMORY[0x277D84F90];
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

unsigned __int8 *sub_22278A1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22279ED30();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22278A788();
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
      result = sub_22279EEF0();
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

uint64_t sub_22278A788()
{
  v0 = sub_22279ED40();
  v4 = sub_22278A808(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22278A808(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22279ECC0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22279EE10();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22278A960(v9, 0);
  v12 = sub_22278A9D4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22279ECC0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22279EEF0();
LABEL_4:

  return sub_22279ECC0();
}

void *sub_22278A960(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019EE8, &qword_2227A1058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_22278A9D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22278ABF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22279ED10();
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
          result = sub_22279EEF0();
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

    result = sub_22278ABF4(v12, a6, a7);
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

    result = sub_22279ECF0();
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

uint64_t sub_22278ABF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22279ED20();
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
    v5 = MEMORY[0x223DBFF50](15, a1 >> 16);
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

char *sub_22278AC70(char *a1, int64_t a2, char a3)
{
  result = sub_22278AC90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22278AC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019EE0, &unk_2227A1048);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22278AD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E78, &unk_2227A0B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22278ADFC()
{
  result = qword_280BC4440;
  if (!qword_280BC4440)
  {
    sub_222782C2C(255, qword_280BC4448, off_2784B4108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BC4440);
  }

  return result;
}

uint64_t sub_22278AE64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22278414C(a1, a2);
  }

  return a1;
}

uint64_t sub_22278AE78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22278AECC()
{
  result = qword_27D019E80;
  if (!qword_27D019E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E80);
  }

  return result;
}

unint64_t sub_22278AF20()
{
  result = qword_27D019E90;
  if (!qword_27D019E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E90);
  }

  return result;
}

unint64_t sub_22278AF74()
{
  result = qword_27D019EA0;
  if (!qword_27D019EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EA0);
  }

  return result;
}

unint64_t sub_22278AFC8()
{
  result = qword_27D019EB0;
  if (!qword_27D019EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EB0);
  }

  return result;
}

unint64_t sub_22278B020()
{
  result = qword_27D019EB8;
  if (!qword_27D019EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22278B0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22278B104(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22278B164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22278B1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CBOREncoder.DateEncodingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CBOREncoder.DateEncodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22278B36C()
{
  result = qword_27D019EC0;
  if (!qword_27D019EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EC0);
  }

  return result;
}

unint64_t sub_22278B3C4()
{
  result = qword_27D019EC8;
  if (!qword_27D019EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EC8);
  }

  return result;
}

unint64_t sub_22278B41C()
{
  result = qword_27D019ED0;
  if (!qword_27D019ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019ED0);
  }

  return result;
}

uint64_t sub_22278B474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22278B4D0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;

      sub_22278A1FC(v33, a2, 8);

      return v33;
    }

    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = result;
        v5 = sub_22279EEF0();
        result = v35;
        v3 = v36;
      }

      v6 = *v5;
      if (v6 == 43)
      {
        if (v3 >= 1)
        {
          v20 = v3 - 1;
          if (v20)
          {
            if (v5)
            {
              v21 = 0;
              v22 = v5 + 1;
              do
              {
                v23 = (*v22 & 0xF8) == 0x30 && (v21 - 0x1000000000000000) >> 61 == 7;
                v13 = !v23;
                if (!v23)
                {
                  break;
                }

                v21 = (*v22++ - 48) | (8 * v21);
                --v20;
              }

              while (v20);
              goto LABEL_92;
            }

            goto LABEL_76;
          }

LABEL_91:
          v13 = 1;
          goto LABEL_92;
        }

        goto LABEL_98;
      }

      if (v6 != 45)
      {
        if (v3)
        {
          if (v5)
          {
            v28 = 0;
            do
            {
              v29 = (*v5 & 0xF8) == 0x30 && (v28 - 0x1000000000000000) >> 61 == 7;
              v13 = !v29;
              if (!v29)
              {
                break;
              }

              v28 = (*v5++ - 48) | (8 * v28);
              --v3;
            }

            while (v3);
            goto LABEL_92;
          }

          goto LABEL_76;
        }

        goto LABEL_91;
      }

      if (v3 >= 1)
      {
        v7 = v3 - 1;
        if (v7)
        {
          if (v5)
          {
            v8 = 0;
            v9 = v5 + 1;
            while ((*v9 & 0xF8) == 0x30 && (v8 - 0x1000000000000000) >> 61 == 7)
            {
              v11 = *v9 - 48;
              v12 = __OFSUB__(8 * v8, v11);
              v8 = 8 * v8 - v11;
              if (v12)
              {
                break;
              }

              v13 = 0;
              ++v9;
              if (!--v7)
              {
                goto LABEL_92;
              }
            }

            goto LABEL_91;
          }

LABEL_76:
          v13 = 0;
LABEL_92:
          v38 = v13;
          return result;
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v37[0] = result;
    v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v2)
      {
LABEL_99:
        __break(1u);
        return result;
      }

      v24 = v2 - 1;
      if (v24)
      {
        v25 = 0;
        v26 = v37 + 1;
        do
        {
          v27 = (*v26 & 0xF8) == 0x30 && (v25 - 0x1000000000000000) >> 61 == 7;
          v19 = !v27;
          if (!v27)
          {
            break;
          }

          v25 = (*v26++ - 48) | (8 * v25);
          --v24;
        }

        while (v24);
        goto LABEL_90;
      }
    }

    else if (result == 45)
    {
      if (!v2)
      {
        goto LABEL_97;
      }

      v14 = v2 - 1;
      if (v14)
      {
        v15 = 0;
        v16 = v37 + 1;
        while ((*v16 & 0xF8) == 0x30 && (v15 - 0x1000000000000000) >> 61 == 7)
        {
          v18 = *v16 - 48;
          v12 = __OFSUB__(8 * v15, v18);
          v15 = 8 * v15 - v18;
          if (v12)
          {
            break;
          }

          v19 = 0;
          ++v16;
          if (!--v14)
          {
            goto LABEL_90;
          }
        }
      }
    }

    else if (v2)
    {
      v30 = 0;
      v31 = v37;
      do
      {
        v32 = (*v31 & 0xF8) == 0x30 && (v30 - 0x1000000000000000) >> 61 == 7;
        v19 = !v32;
        if (!v32)
        {
          break;
        }

        v30 = (*v31++ - 48) | (8 * v30);
        --v2;
      }

      while (v2);
      goto LABEL_90;
    }

    v19 = 1;
LABEL_90:
    v38 = v19;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22278B834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22278B87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22278B8D4()
{
  result = qword_27D019EF0;
  if (!qword_27D019EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EF0);
  }

  return result;
}

unint64_t sub_22278B92C()
{
  result = qword_27D019EF8;
  if (!qword_27D019EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EF8);
  }

  return result;
}

unint64_t sub_22278B984()
{
  result = qword_27D019F00;
  if (!qword_27D019F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F00);
  }

  return result;
}

void sub_22278BA54(unint64_t a1)
{
  v1 = a1;
  while (v1 >= 4)
  {
    v1 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
  }

  v2 = qword_2227A19B8[v1];

  JUMPOUT(0x223DC0720);
}

uint64_t sub_22278BAAC(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder) != 1)
  {
    goto LABEL_12;
  }

  v6 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (!*(v7 + 16))
    {
      goto LABEL_10;
    }

    v10 = sub_222794F78(a1);
    if ((v11 & 1) == 0)
    {

      goto LABEL_10;
    }

    v12 = *(*(v7 + 56) + 8 * v10);
    swift_unknownObjectRetain();

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v8 = a1;
  v9 = sub_22279EFB0();

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList;
  swift_beginAccess();
  v14 = a1;
  MEMORY[0x223DBFFB0]();
  if (*((*(v3 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_22279EDB0();
    swift_endAccess();
LABEL_12:
    v15 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    swift_beginAccess();
    v16 = *(v3 + v15);
    if ((v16 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v16 < 0)
    {
      v17 = *(v3 + v15);
    }

    else
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain();
    v18 = sub_22279EFA0();
    if (!__OFADD__(v18, 1))
    {
      *(v3 + v15) = sub_222788018(v17, v18 + 1);
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    sub_22279EDA0();
  }

  v19 = *(v3 + v15);
  swift_unknownObjectRetain();
LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + v15);
  sub_222789688(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v15) = v22;
  return swift_endAccess();
}

id sub_22278BCFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CBORDictionary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CBOREncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v0 + 24) = 2;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t CBOREncoder.init()()
{
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v0 + 24) = 2;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t CBOREncoder.__allocating_init(userInfo:dictionaryEncodingStrategy:dateEncodingStrategy:)(uint64_t a1, uint64_t *a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a2;
  v8 = *a3;
  *(result + 16) = a1;
  *(result + 24) = v7;
  *(result + 32) = v8;
  return result;
}

uint64_t CBOREncoder.init(userInfo:dictionaryEncodingStrategy:dateEncodingStrategy:)(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *a2;
  v5 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_22278BEB4()
{
  (*(*v0 + 176))(&v3);
  if (v3 < 4)
  {
    return qword_2227A19D8[v3];
  }

  v2 = *(v3 + 16);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    sub_222793908(v3);
    return 0;
  }

  if (v2 == 2)
  {
    goto LABEL_7;
  }

  if (v2 == 3)
  {
    sub_222793908(v3);
    return 1;
  }

LABEL_10:
  result = sub_22279EFD0();
  __break(1u);
  return result;
}

void *sub_22278BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 168))(a1, 0, 1, a2, a3);
  if (!v4)
  {
    v6 = result;
    v7 = sub_22278BEB4();
    v8 = [objc_opt_self() dataWithCBOR:v6 encodingKeyOrder:v7];

    v9 = sub_22279EC10();
    return v9;
  }

  return result;
}

void *sub_22278C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 168))(a1, a2, 0, a3, a4);
  if (!v5)
  {
    v7 = result;
    v8 = sub_22278BEB4();
    v9 = [objc_opt_self() dataWithCBOR:v7 encodingKeyOrder:v8];

    v10 = sub_22279EC10();
    return v10;
  }

  return result;
}

void (*sub_22278C134(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5))(uint64_t *, uint64_t, uint64_t)
{
  LODWORD(v49) = a3;
  v48 = a2;
  v9 = sub_22279EED0();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _CBOREncoder();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = MEMORY[0x277D84F90];
  *(v14 + 24) = v15;
  swift_weakAssign();
  v52 = a4;
  v53 = a5;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(&v50);
  v17 = *(a4 - 8);
  v18 = *(v17 + 16);
  v19 = v17 + 16;
  v18(v16, a1, a4);
  v20 = sub_22278C668(&v50);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    return v18;
  }

  v21 = v20;
  v45 = v19;
  v46 = a1;
  v47 = v13;
  v44 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  if (!v21)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_22279EE60();

    v50 = 0x6576656C20706F54;
    v51 = 0xEA0000000000206CLL;
    v26 = a4;
    v27 = sub_22279F5B0();
    v28 = v18;
    MEMORY[0x223DBFF30](v27);

    MEMORY[0x223DBFF30](0x6F74206C69616620, 0xEE0065646F6E6520);
    v24 = v47;
    sub_22279EE90();
    v18 = sub_22279EEE0();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v30[3] = v26;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30);
    v28(boxed_opaque_existential_1Tm, v46, v26);
    v33 = v54;
    v34 = v44;
    (*(v54 + 16))(v30 + v31, v24, v44);
    (*(*(v18 - 1) + 104))(v30, *MEMORY[0x277D841A8], v18);
    swift_willThrow();
LABEL_10:

    (*(v33 + 8))(v24, v34);
    return v18;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v46;
  v24 = v47;
  if (!v22)
  {
    v35 = a4;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_22279EE60();

    v50 = 0x6576656C20706F54;
    v51 = 0xEA0000000000206CLL;
    v36 = sub_22279F5B0();
    v49 = v18;
    MEMORY[0x223DBFF30](v36);

    MEMORY[0x223DBFF30](0x6F74206C69616620, 0xEE0065646F6E6520);
    sub_22279EE90();
    v18 = sub_22279EEE0();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v38[3] = v35;
    v40 = __swift_allocate_boxed_opaque_existential_1Tm(v38);
    v49(v40, v23, v35);
    v33 = v54;
    v41 = v38 + v39;
    v34 = v44;
    (*(v54 + 16))(v41, v24, v44);
    (*(*(v18 - 1) + 104))(v38, *MEMORY[0x277D841A8], v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  if ((v49 & 1) == 0)
  {
    v25 = [objc_opt_self() cborWithInteger_];
    [v18 setTag_];
  }

  return v18;
}

uint64_t sub_22278C668(void *a1)
{
  v4 = sub_22279EED0();
  v108 = *(v4 - 8);
  v5 = *(v108 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22279EC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == v9)
  {
    sub_222783A04(a1, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 200))(v104);

      v28 = LOBYTE(v104[0]);
      v29 = sub_22279EC20();
      v30 = objc_opt_self();
      v31 = &selRef_cborWithDateTime_;
      if (!v28)
      {
        v31 = &selRef_cborWithFullDate_;
      }

      v18 = [v30 *v31];

      (*(v10 + 8))(v14, v9);
      return v18;
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = DynamicType;
  if (DynamicType == MEMORY[0x277CC9318] || DynamicType == sub_222782C2C(0, &qword_280BC4438, 0x277CBEA90))
  {
    sub_222783A04(a1, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    v25 = v104[0];
    v26 = v104[1];
    v27 = sub_22279EC00();
    v18 = [objc_opt_self() cborWithData_];

    sub_22278414C(v25, v26);
    return v18;
  }

  if (v16 == &type metadata for CBORCodableWrapper)
  {
    sub_222783A04(a1, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    return v104[0];
  }

  swift_beginAccess();
  v17 = *(v1 + 16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v90 = *(v1 + 16);
    }

    v18 = sub_22279EFA0();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v106 = type metadata accessor for _CBOREncoder();
  v107 = sub_222793F1C(&qword_280BC4550, type metadata accessor for _CBOREncoder);
  v105[0] = v1;
  v101 = v1;

  sub_22279EC70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    v21 = v101;
    v22 = *(v101 + 16);
    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v91 = *(v101 + 16);
      }

      if (v18 >= sub_22279EFA0())
      {
        goto LABEL_14;
      }
    }

    else if (v18 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      swift_willThrow();
      return v18;
    }

    swift_beginAccess();
    v23 = *(v21 + 16);
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v93 = *(v21 + 16);
      }

      if (sub_22279EFA0())
      {
LABEL_12:
        result = sub_222792E0C();
        if (result)
        {
          swift_endAccess();
          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        goto LABEL_86;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_82:
    if (!sub_22279EFA0())
    {
      goto LABEL_83;
    }

    goto LABEL_26;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  v32 = v101;
  v33 = *(v101 + 16);
  if (!(v33 >> 62))
  {
    if (v18 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v33 < 0)
  {
    v92 = *(v101 + 16);
  }

  if (v18 >= sub_22279EFA0())
  {
    return 0;
  }

LABEL_24:
  swift_beginAccess();
  v34 = *(v32 + 16);
  if (v34 >> 62)
  {
    goto LABEL_82;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_26:
  result = sub_222792E0C();
  if (result)
  {
    v18 = result;
    swift_endAccess();
    type metadata accessor for _CBORDictionary();
    swift_unknownObjectRetain();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {
      v105[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D60, &qword_2227A0648);
      if (!swift_dynamicCast())
      {
        return v18;
      }

      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v40 = sub_22279ED70();

      v41 = [objc_opt_self() cborWithArray_];
LABEL_37:
      v45 = v41;
      swift_unknownObjectRelease();

      return v45;
    }

    v36 = v35;
    swift_unknownObjectRelease();
    sub_222783A04(a1, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F48, &qword_2227A15E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v103 = 0;
      memset(v102, 0, sizeof(v102));
      sub_222793F64(v102);
      goto LABEL_36;
    }

    sub_2227759E4(v102, v105);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_32:
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
LABEL_36:
      v42 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
      swift_beginAccess();
      v43 = *(v36 + v42);

      sub_22278E1F4(v44);

      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      sub_22278ADFC();
      v40 = sub_22279EC50();

      v41 = [objc_opt_self() cborWithDictionary_];
      goto LABEL_37;
    }

    v38 = Strong;
    (*(*Strong + 176))(v104);
    v39 = v104[0];
    sub_222793908(v104[0]);
    if (v39 < 4)
    {

      goto LABEL_32;
    }

    v99 = v36;
    v46 = v106;
    v47 = v107;
    __swift_project_boxed_opaque_existential_1(v105, v106);
    v48 = *(v47 + 16);
    v94[2] = v38;
    v49 = v47;
    v19 = v99;
    v50 = v48(v38, v46, v49);
    v51 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList;
    swift_beginAccess();
    v52 = *(v19 + v51);
    *(v19 + v51) = MEMORY[0x277D84F90];

    v53 = *(v50 + 16);
    v95 = v51;
    if (!v53)
    {

      v20 = v101;
LABEL_57:
      v67 = *(v19 + v51);
      if (!(v67 >> 62))
      {
        v101 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
        v68 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
        swift_beginAccess();
        v69 = *(v19 + v68);
        if ((v69 & 0xC000000000000001) != 0)
        {
          if (v69 < 0)
          {
            v70 = *(v19 + v68);
          }

          v71 = *(v19 + v68);

          v72 = sub_22279EFA0();
        }

        else
        {
          v72 = *(v69 + 16);
        }

        v73 = v95;
        if (v101 == v72)
        {
          v74 = v99;
          v75 = *(v99 + v68);

          sub_22278E1F4(v76);

          v77 = *(v74 + v73);
          sub_222782C2C(0, qword_280BC4448, off_2784B4108);
          sub_22278ADFC();

          v78 = sub_22279EC50();

          v79 = sub_22279ED70();

          v80 = [objc_opt_self() cborWithDictionary:v78 keyOrderList:v79];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1Tm(v105);
          return v80;
        }

        else
        {
          swift_beginAccess();
          v81 = v20[3];

          sub_22279EE90();
          v82 = sub_22279EEE0();
          swift_allocError();
          v84 = v83;
          v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
          v86 = a1[3];
          v87 = __swift_project_boxed_opaque_existential_1(a1, v86);
          v84[3] = v86;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v84);
          (*(*(v86 - 8) + 16))(boxed_opaque_existential_1Tm, v87, v86);
          v89 = v108;
          (*(v108 + 16))(v84 + v85, v8, v4);
          (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D841A8], v82);
          swift_willThrow();
          swift_unknownObjectRelease();

          (*(v89 + 8))(v8, v4);
          __swift_destroy_boxed_opaque_existential_1Tm(v105);
        }

        return v18;
      }

LABEL_84:
      v101 = sub_22279EFA0();
      goto LABEL_59;
    }

    v100 = v53;
    v97 = objc_opt_self();
    v94[1] = v50;
    v54 = v50 + 32;
    v96 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    swift_beginAccess();
    while (1)
    {
      sub_222783A04(v54, v104);
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      sub_22279F550();
      v57 = sub_22279ECA0();

      v58 = [v97 cborWithUTF8String_];

      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v59 = v99;
      v60 = *(v99 + v96);
      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = v58;
        if (v60 < 0)
        {
          v62 = *(v99 + v96);
        }

        v63 = *(v99 + v96);

        v98 = v61;
        v56 = v61;
        v64 = sub_22279EFB0();

        if (!v64)
        {
          goto LABEL_44;
        }

        swift_unknownObjectRelease();
        v59 = v99;
      }

      else
      {
        if (!*(v60 + 16))
        {

          goto LABEL_45;
        }

        v65 = *(v99 + v96);

        sub_222794F78(v58);
        if ((v66 & 1) == 0)
        {

          goto LABEL_45;
        }

        v98 = v58;
      }

      v55 = v95;
      swift_beginAccess();
      v98 = v98;
      MEMORY[0x223DBFFB0]();
      if (*((*(v59 + v55) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v59 + v55) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22279EDA0();
      }

      v56 = v98;
      sub_22279EDB0();
      swift_endAccess();
LABEL_44:

LABEL_45:
      v20 = v101;
      v54 += 40;
      if (!--v100)
      {

        v19 = v99;
        v51 = v95;
        goto LABEL_57;
      }
    }
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t static CBOREncoder.DictionaryEncodingStrategy.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        goto LABEL_17;
      }

      sub_222793908(2uLL);
      v5 = 2;
    }

    else
    {
      if (v2 != 3)
      {
LABEL_10:
        if (v3 >= 4)
        {
          v6 = *(v2 + 16);
          v8 = *(v3 + 16);
          v9 = v6;
          sub_2227938F8(v3);
          sub_2227938F8(v2);
          v4 = static CBOREncoder.DictionaryEncodingStrategy.== infix(_:_:)(&v9, &v8);
          sub_222793908(v2);
          sub_222793908(v3);
          return v4 & 1;
        }

LABEL_17:
        sub_2227938F8(*a2);
        sub_2227938F8(v2);
        sub_222793908(v2);
        sub_222793908(v3);
        v4 = 0;
        return v4 & 1;
      }

      if (v3 != 3)
      {
        goto LABEL_17;
      }

      sub_222793908(3uLL);
      v5 = 3;
    }

LABEL_16:
    sub_222793908(v5);
    v4 = 1;
    return v4 & 1;
  }

  if (!v2)
  {
    if (v3)
    {
      goto LABEL_17;
    }

    sub_222793908(0);
    v5 = 0;
    goto LABEL_16;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    goto LABEL_17;
  }

  v4 = 1;
  sub_222793908(1uLL);
  sub_222793908(1uLL);
  return v4 & 1;
}

void CBOREncoder.DictionaryEncodingStrategy.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
    sub_22278BA54(v3);
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  MEMORY[0x223DC0720](v2);
}

uint64_t CBOREncoder.DictionaryEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      MEMORY[0x223DC0720](v2);
      return sub_22279F4F0();
    }
  }

  v3 = *(v1 + 16);
  MEMORY[0x223DC0720](1);
  sub_22278BA54(v3);
  return sub_22279F4F0();
}

void sub_22278D6AC()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
    sub_22278BA54(v3);
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  MEMORY[0x223DC0720](v2);
}

uint64_t sub_22278D730()
{
  v1 = *v0;
  sub_22279F4C0();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      MEMORY[0x223DC0720](v2);
      return sub_22279F4F0();
    }
  }

  v3 = *(v1 + 16);
  MEMORY[0x223DC0720](1);
  sub_22278BA54(v3);
  return sub_22279F4F0();
}

unint64_t sub_22278D7DC@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = v3;
  return sub_2227938F8(v3);
}

unint64_t sub_22278D824(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  return sub_222793908(v3);
}

uint64_t CBOREncoder.DateEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_22278D948@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_22278D98C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t CBOREncoder.deinit()
{
  v1 = *(v0 + 16);

  sub_222793908(*(v0 + 24));
  return v0;
}

uint64_t CBOREncoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_222793908(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_22278DA84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_22278DAD4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  return v2 == *(*(v0 + 24) + 16);
}

uint64_t sub_22278DB5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_22278DBA4()
{
  v1 = v0;
  v2 = (v0 + 2);
  if ((*(*v0 + 184))())
  {
    swift_beginAccess();
    v3 = sub_22278DDBC();
    swift_endAccess();
    v4 = v3;
LABEL_12:
    swift_beginAccess();
    v11 = v1[3];
    type metadata accessor for _CBOREncoderKeyContainer();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v9 = v4;
    swift_getWitnessTable();
    sub_22279F080();

    return;
  }

  swift_beginAccess();
  v5 = *v2;
  if (!(*v2 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 < 0)
  {
    v10 = *v2;
  }

  v6 = sub_22279EFA0();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  v2 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v2 + 32);
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_18:

  MEMORY[0x223DC00C0](v2, v5);

LABEL_10:
  type metadata accessor for _CBORDictionary();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v4 = v8;
    swift_unknownObjectRetain();
    goto LABEL_12;
  }

LABEL_21:
  swift_unknownObjectRelease();
  __break(1u);
}

id sub_22278DDBC()
{
  v1 = type metadata accessor for _CBORDictionary();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  v4 = MEMORY[0x277D84F90];
  *&v2[v3] = sub_2227814B8(MEMORY[0x277D84F90]);
  *&v2[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v4;
  v2[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
  v8.receiver = v2;
  v8.super_class = v1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x223DBFFB0]();
  if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22279EDA0();
  }

  sub_22279EDB0();
  return v5;
}

void sub_22278DEA0(void *a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + 2);
  if ((*(*v1 + 184))())
  {
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    MEMORY[0x223DBFFB0]();
    if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22279EDA0();
    }

    sub_22279EDB0();
    swift_endAccess();
    v6 = v5;
    goto LABEL_14;
  }

  swift_beginAccess();
  v7 = *v4;
  if (!(*v4 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 < 0)
  {
    v12 = *v4;
  }

  v8 = sub_22279EFA0();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_7:
  v4 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:

  MEMORY[0x223DC00C0](v4, v7);

LABEL_12:
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v6 = v10;
    swift_unknownObjectRetain();
LABEL_14:
    swift_beginAccess();
    v11 = v2[3];
    a1[3] = &type metadata for _CBOREncoderUnkeyedContainer;
    a1[4] = sub_222793E58();

    *a1 = v11;
    a1[1] = v6;
    a1[2] = v2;
    return;
  }

LABEL_23:
  swift_unknownObjectRelease();
  __break(1u);
}

uint64_t sub_22278E0C4()
{
  v1 = *v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 104))(result);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22278E174@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _CBOREncoder();
  a1[4] = sub_222793F1C(qword_280BC4558, type metadata accessor for _CBOREncoder);
  *a1 = v3;
}

uint64_t sub_22278E1F4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v1 = a1;
    }

    v2 = ~(v1 >> 1) & 0x4000000000000000 | v1;
  }

  else
  {
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_22278ADFC();

    v3 = sub_22279EF80();
    return ~(v3 >> 1) & 0x4000000000000000 | v3;
  }

  return v2;
}

void sub_22278E298(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 8);
  v11 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v6 + 16))(v9, a1, v5);
  v12 = *(a2 + 24);
  v13 = sub_222793008(v9, v11, v5);
  v14 = [objc_opt_self() cborNil];
  sub_22278BAAC(v13, v14);
}

void sub_22278E3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = objc_opt_self();
  v17 = &selRef_cborTrue;
  if ((v6 & 1) == 0)
  {
    v17 = &selRef_cborFalse;
  }

  v18 = [v16 *v17];
  sub_22278BAAC(v15, v18);
}

void sub_22278E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a2;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a3, v7);
  v14 = *(a4 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = sub_22279ECA0();
  v17 = [objc_opt_self() cborWithUTF8String_];

  sub_22278BAAC(v15, v17);
}

void sub_22278E6B8(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a1, v7);
  v14 = *(a2 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithDouble_];
  sub_22278BAAC(v15, v16);
}

void sub_22278E814(uint64_t a1, uint64_t a2, float a3)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a1, v7);
  v14 = *(a2 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = objc_opt_self();
  *&v17 = a3;
  v18 = [v16 cborWithFloat_];
  sub_22278BAAC(v15, v18);
}

void sub_22278E970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v15, v16);
}

void sub_22278EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v15, v16);
}

void sub_22278EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v15, v16);
}

void sub_22278ED78(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v19 = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 8);
  v14 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v9 + 16))(v12, a2, v8);
  v15 = *(a3 + 24);
  v16 = sub_222793008(v12, v14, v8);
  v17 = [objc_opt_self() *v19];
  sub_22278BAAC(v16, v17);
}

void sub_22278EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v15, v16);
}

void sub_22278F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v15, v16);
}

void sub_22278F17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a2, v7);
  v14 = *(a3 + 24);
  v15 = sub_222793008(v11, v13, v7);
  v16 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v15, v16);
}

uint64_t sub_22278F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v43 = a5;
  v36 = a3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - v14;
  v40 = v5;
  v16 = *(v5 + 16);
  v17 = *(v8 + 16);
  v37 = v18;
  v17(&v35 - v14);
  swift_beginAccess();
  v19 = *(v16 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 24) = v19;
  v41 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_222789FB0(0, v19[2] + 1, 1, v19);
    *(v16 + 24) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_222789FB0((v21 > 1), v22 + 1, 1, v19);
    *(v16 + 24) = v19;
  }

  (v17)(v12, v15, v7);
  v35 = v17;
  v23 = *(v36 + 24);
  sub_222793174(v22, v12, (v16 + 24), v7, v23);
  (*(v8 + 8))(v15, v7);
  *(v16 + 24) = v19;
  swift_endAccess();
  v24 = v40;
  v25 = *(v40 + 8);
  v26 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v35(v12, v37, v7);
  v27 = sub_222793008(v12, v26, v7);
  v28 = v41;
  v42[3] = v41;
  v42[4] = v43;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v42);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1Tm, v38, v28);
  v30 = v39;
  v31 = sub_22278C668(v42);
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v32 = v24;
  }

  else
  {
    v39 = v23;
    if (!v31)
    {
      v31 = [objc_opt_self() cborNil];
    }

    v33 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_22278BAAC(v27, v33);

    swift_unknownObjectRelease();
    v32 = v24;
  }

  return sub_22278F600(v32);
}

uint64_t sub_22278F600(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 24) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22278F6B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v46 = a4;
  v47 = a5;
  v45 = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v41 - v17;
  v19 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v43 = v11;
  v20 = *(v11 + 16);
  v42 = a2;
  v48 = v20;
  v20(v18, a2, v10);
  v44 = *(a3 + 24);
  v21 = sub_222793008(v18, v19, v10);
  v22 = v7[1];
  v23 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v24 = *(v22 + v23);
  v49 = v21;
  if ((v24 & 0xC000000000000001) == 0)
  {
    if (*(v24 + 16))
    {

      v27 = sub_222794F78(v49);
      if (v28)
      {
        v26 = *(*(v24 + 56) + 8 * v27);
        swift_unknownObjectRetain();

        goto LABEL_7;
      }
    }

LABEL_10:
    v32 = type metadata accessor for _CBORDictionary();
    v33 = objc_allocWithZone(v32);
    v34 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    v35 = MEMORY[0x277D84F90];
    *&v33[v34] = sub_2227814B8(MEMORY[0x277D84F90]);
    *&v33[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v35;
    v33[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
    v51.receiver = v33;
    v51.super_class = v32;
    v31 = objc_msgSendSuper2(&v51, sel_init);
    sub_22278BAAC(v49, v31);

    v30 = v48;
    goto LABEL_11;
  }

  v25 = v21;
  v26 = sub_22279EFB0();

  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_7:
  ObjectType = swift_getObjectType();
  *&v52 = v26;
  sub_2227828C4(&v52, &v54);
  sub_22278B474(&v54, &v52);
  type metadata accessor for _CBORDictionary();
  v29 = swift_dynamicCast();
  v30 = v48;
  if (!v29)
  {
    __break(1u);
    return;
  }

  sub_2227828C4(&v54, &v52);
  swift_dynamicCast();
  v31 = v50;
LABEL_11:
  v30(v15, v42, v10);
  v36 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_222789FB0(0, v36[2] + 1, 1, v36);
    *v7 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_222789FB0((v38 > 1), v39 + 1, 1, v36);
    *v7 = v36;
  }

  v30(v18, v15, v10);
  sub_222793174(v39, v18, v7, v10, v44);
  (*(v43 + 8))(v15, v10);
  *v7 = v36;
  v40 = v7[2];
  *&v54 = v36;
  *(&v54 + 1) = v31;
  v55 = v40;
  type metadata accessor for _CBOREncoderKeyContainer();

  swift_getWitnessTable();
  sub_22279F080();
  sub_22278FB28(v7);
}

uint64_t sub_22278FB28(void *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *v1 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22278FBA8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38 - v15;
  v17 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v18 = *(v9 + 16);
  v39 = a1;
  v41 = v18;
  v42 = v9 + 16;
  v18(v16, a1, v8);
  v19 = *(a2 + 24);
  v40 = v16;
  v43 = sub_222793008(v16, v17, v8);
  v20 = v4[1];
  v21 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*(v22 + 16))
    {

      v29 = sub_222794F78(v43);
      if (v30)
      {
        v28 = *(*(v22 + 56) + 8 * v29);
        swift_unknownObjectRetain();

        goto LABEL_7;
      }
    }

LABEL_10:
    v31 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    sub_22278BAAC(v43, v31);

    goto LABEL_11;
  }

  v23 = v19;
  v24 = a3;
  v25 = v13;
  v26 = v9;
  v27 = v43;
  v28 = sub_22279EFB0();

  v9 = v26;
  v13 = v25;
  a3 = v24;
  v19 = v23;

  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_7:
  ObjectType = swift_getObjectType();
  *&v45 = v28;
  sub_2227828C4(&v45, v47);
  sub_22278B474(v47, &v45);
  sub_222782C2C(0, qword_27D019F60, 0x277CBEB18);
  if (!swift_dynamicCast())
  {
    __break(1u);
    return;
  }

  sub_2227828C4(v47, &v45);
  swift_dynamicCast();
  v31 = v44;
LABEL_11:
  v41(v13, v39, v8);
  v32 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_222789FB0(0, v32[2] + 1, 1, v32);
    *v4 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_222789FB0((v34 > 1), v35 + 1, 1, v32);
    *v4 = v32;
  }

  v36 = v40;
  v41(v40, v13, v8);
  sub_222793174(v35, v36, v4, v8, v19);
  (*(v9 + 8))(v13, v8);
  *v4 = v32;
  v37 = v4[2];
  a3[3] = &type metadata for _CBOREncoderUnkeyedContainer;
  a3[4] = sub_222793E58();
  *a3 = v32;
  a3[1] = v31;
  a3[2] = v37;

  sub_22278FB28(v4);
}

uint64_t sub_22278FFD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  result = sub_22278B4D0(0x7265707573, 0xE500000000000000);
  if (v5)
  {
    v8 = result;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = *(v1 + 8);
    v13 = type metadata accessor for _CBORReferenceEncoder();
    v14 = swift_allocObject();
    v15 = sub_222793370(v3, v8, v9, v10, v11 & 1, v12, v14);
    a1[3] = v13;
    result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder);
    a1[4] = result;
    *a1 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2227900D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _CBORReferenceEncoder();
  v14 = *(v3 + 8);
  v13 = *(v3 + 16);
  (*(v8 + 16))(v11, a1, v7);
  v15 = *(a2 + 24);

  v16 = sub_22279320C(v13, v11, v14, v12, v7, v15);
  a3[3] = v12;
  result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder);
  a3[4] = result;
  *a3 = v16;
  return result;
}

uint64_t sub_2227906B0(double a1)
{
  v3 = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *&v16 = 0x3A6D657449;
  *(&v16 + 1) = 0xE500000000000000;
  v19 = [v5 count];
  v7 = sub_22279F090();
  MEMORY[0x223DBFF30](v7);

  swift_beginAccess();
  v8 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_222789FB0(0, v8[2] + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_222789FB0((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &type metadata for CBORCodingKey;
  v18 = sub_222782F30();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x3A6D657449;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v8[2] = v11 + 1;
  sub_2227759E4(&v16, &v8[5 * v11 + 4]);
  *(v6 + 24) = v8;
  swift_endAccess();
  v17 = MEMORY[0x277D839F8];
  v18 = MEMORY[0x277D83A08];
  *&v16 = a1;
  v13 = sub_22278C668(&v16);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    return sub_22278F600(v3);
  }

  v14 = v13;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  if (v14)
  {
    [v5 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_2227908B8(float a1)
{
  v3 = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *&v16 = 0x3A6D657449;
  *(&v16 + 1) = 0xE500000000000000;
  v19 = [v5 count];
  v7 = sub_22279F090();
  MEMORY[0x223DBFF30](v7);

  swift_beginAccess();
  v8 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_222789FB0(0, v8[2] + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_222789FB0((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &type metadata for CBORCodingKey;
  v18 = sub_222782F30();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x3A6D657449;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v8[2] = v11 + 1;
  sub_2227759E4(&v16, &v8[5 * v11 + 4]);
  *(v6 + 24) = v8;
  swift_endAccess();
  v17 = MEMORY[0x277D83A90];
  v18 = MEMORY[0x277D83AA0];
  *&v16 = a1;
  v13 = sub_22278C668(&v16);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    return sub_22278F600(v3);
  }

  v14 = v13;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  if (v14)
  {
    [v5 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_222790AC0(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  v19 = *(v3 + 8);
  *&v21 = 0x3A6D657449;
  *(&v21 + 1) = 0xE500000000000000;
  v24 = [v19 count];
  v8 = sub_22279F090();
  MEMORY[0x223DBFF30](v8);

  swift_beginAccess();
  v9 = *(v7 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 24) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_222789FB0(0, v9[2] + 1, 1, v9);
    *(v7 + 24) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_222789FB0((v11 > 1), v12 + 1, 1, v9);
  }

  v22 = &type metadata for CBORCodingKey;
  v23 = sub_222782F30();
  v13 = swift_allocObject();
  *&v21 = v13;
  *(v13 + 16) = 0x3A6D657449;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v9[2] = v12 + 1;
  sub_2227759E4(&v21, &v9[5 * v12 + 4]);
  *(v7 + 24) = v9;
  swift_endAccess();
  v22 = a2;
  v23 = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v21);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_1Tm, a1, a2);
  v15 = v25;
  v16 = sub_22278C668(&v21);
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return sub_22278F600(v4);
  }

  v17 = v16;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  if (v17)
  {
    [v19 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v4);
  }

  __break(1u);
  return result;
}

void sub_222790CEC()
{
  v1 = v0;
  v2 = type metadata accessor for _CBORDictionary();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  v5 = MEMORY[0x277D84F90];
  *&v3[v4] = sub_2227814B8(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v5;
  v3[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
  v20.receiver = v3;
  v20.super_class = v2;
  v6 = objc_msgSendSuper2(&v20, sel_init);
  v7 = [*(v1 + 8) count];
  *&v15 = 0x3A6D657449;
  *(&v15 + 1) = 0xE500000000000000;
  v19 = v7;
  v8 = sub_22279F090();
  MEMORY[0x223DBFF30](v8);

  v9 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_222789FB0(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_222789FB0((v10 > 1), v11 + 1, 1, v9);
  }

  v17 = &type metadata for CBORCodingKey;
  v18 = sub_222782F30();
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = 0x3A6D657449;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v9[2] = v11 + 1;
  sub_2227759E4(&v15, &v9[5 * v11 + 4]);
  *v1 = v9;
  v13 = *(v1 + 16);
  *&v15 = v9;
  *(&v15 + 1) = v6;
  v16 = v13;
  type metadata accessor for _CBOREncoderKeyContainer();

  v14 = v6;
  swift_getWitnessTable();
  sub_22279F080();
  sub_22278FB28(v1);
}

uint64_t sub_222790F28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v5 = [*(v1 + 8) count];
  *&v13 = 0x3A6D657449;
  *(&v13 + 1) = 0xE500000000000000;
  v16 = v5;
  v6 = sub_22279F090();
  MEMORY[0x223DBFF30](v6);

  v7 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_222789FB0(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_222789FB0((v8 > 1), v9 + 1, 1, v7);
  }

  v14 = &type metadata for CBORCodingKey;
  v15 = sub_222782F30();
  v10 = swift_allocObject();
  *&v13 = v10;
  *(v10 + 16) = 0x3A6D657449;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v7[2] = v9 + 1;
  sub_2227759E4(&v13, &v7[5 * v9 + 4]);
  *v2 = v7;
  v11 = v2[2];
  a1[3] = &type metadata for _CBOREncoderUnkeyedContainer;
  a1[4] = sub_222793E58();
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v11;

  return sub_22278FB28(v2);
}

void sub_2227910E0()
{
  v1 = *(v0 + 8);
  v2 = [objc_opt_self() cborNil];
  [v1 addObject_];
}

void sub_22279114C(char a1)
{
  v3 = *(v1 + 8);
  v4 = objc_opt_self();
  v5 = &selRef_cborTrue;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_cborFalse;
  }

  v6 = [v4 *v5];
  [v3 addObject_];
}

void sub_2227911D0()
{
  v1 = *(v0 + 8);
  v2 = sub_22279ECA0();
  v3 = [objc_opt_self() cborWithUTF8String_];

  [v1 addObject_];
}

void sub_22279127C(char a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_2227912F0(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_222791364(int a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_2227913F0(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_222791464(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_2227914D8(unsigned int a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_22279154C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_opt_self() *a4];
  [v5 addObject_];
}

uint64_t sub_222791918@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1 + 8;
  v3 = *(v1 + 8);
  v4 = *(v5 + 8);

  v6 = [v3 count];
  v7 = type metadata accessor for _CBORReferenceEncoder();
  swift_allocObject();
  v8 = sub_2227928FC(v4, v6, v3);
  a1[3] = v7;
  result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder);
  a1[4] = result;
  *a1 = v8;
  return result;
}

void sub_2227919E0(char a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = &selRef_cborTrue;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_cborFalse;
  }

  v6 = [v4 *v5];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791ACC()
{
  v1 = v0;
  v2 = sub_22279ECA0();
  v3 = [objc_opt_self() cborWithUTF8String_];

  v4 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v4);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791BB0(char a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791C8C(__int16 a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791D68(int a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791E44(unsigned __int8 a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791F20(unsigned __int16 a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791FFC(unsigned int a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

uint64_t sub_2227920D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_22279EED0();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a2;
  v31[4] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v31);
  v15 = *(a2 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v16(boxed_opaque_existential_1Tm, a1, a2);
  v18 = sub_22278C668(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (v4)
  {
    return swift_willThrow();
  }

  v28 = v17;
  v29 = v16;
  v30 = a1;
  if (!v18)
  {
    swift_beginAccess();
    v21 = *(v5 + 24);

    sub_22279EE90();
    v22 = sub_22279EEE0();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v24[3] = a2;
    v26 = __swift_allocate_boxed_opaque_existential_1Tm(v24);
    v29(v26, v30, a2);
    v27 = v32;
    (*(v32 + 16))(v24 + v25, v13, v9);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D841A8], v22);
    swift_willThrow();
    (*(v27 + 8))(v13, v9);
    return swift_willThrow();
  }

  v20 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v20);
  if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_2227923CC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

void sub_222792410()
{
  v1 = *v0;
  v2 = [objc_opt_self() cborNil];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_22279252C(double a1)
{
  v2 = *v1;
  v3 = [objc_opt_self() cborWithDouble_];
  v4 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v4);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222792610(float a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  *&v5 = a1;
  v6 = [v4 cborWithFloat_];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_2227927E4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *v4;
  v6 = [objc_opt_self() *a4];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

uint64_t sub_2227928FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a3;
  *(v4 + 56) = a2;
  *(v4 + 64) = 0;
  swift_beginAccess();
  v8 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(v4 + 16) = MEMORY[0x277D84F90];
    *(v4 + 24) = v8;
    swift_weakAssign();

    v10 = a3;

    *&v17 = 0x3A6D657449;
    *(&v17 + 1) = 0xE500000000000000;
    v20 = a2;
    swift_retain_n();
    v11 = sub_22279F090();
    MEMORY[0x223DBFF30](v11);

    swift_beginAccess();
    v12 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_222789FB0(0, v12[2] + 1, 1, v12);
      *(v4 + 24) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_222789FB0((v14 > 1), v15 + 1, 1, v12);
    }

    v18 = &type metadata for CBORCodingKey;
    v19 = sub_222782F30();
    v16 = swift_allocObject();
    *&v17 = v16;
    *(v16 + 16) = 0x3A6D657449;
    *(v16 + 24) = 0xE500000000000000;
    *(v16 + 32) = 0;
    *(v16 + 40) = 1;
    v12[2] = v15 + 1;
    sub_2227759E4(&v17, &v12[5 * v15 + 4]);
    *(v4 + 24) = v12;
    swift_endAccess();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_222792B18()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[2];
    }

    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v3 = *(v0[3] + 16);
  v4 = v0[5];
  swift_beginAccess();
  return v2 == v3 + ~*(*(v4 + 24) + 16);
}

void sub_222792BD0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  sub_222793EC4(v2, v3, v4);
}

uint64_t sub_222792C04()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (!v3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
      goto LABEL_12;
    }

LABEL_21:
    result = sub_22279EFD0();
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    v7 = v0[2];
  }

  v3 = sub_22279EFA0();
  if (v3 != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  swift_beginAccess();
  v4 = v0[2];
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 < 0)
  {
    v16 = v0[2];
  }

  if (!sub_22279EFA0())
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = sub_222792E0C();
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  swift_endAccess();
LABEL_12:
  v8 = v0[6];
  v9 = v0[7];
  if (v1[8])
  {
    v10 = v8;
    v11 = v9;
    sub_22278BAAC(v11, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    [v8 insertObject:v6 atIndex:v1[7]];
    swift_unknownObjectRelease();
  }

  v12 = v1[2];

  v13 = v1[3];

  swift_weakDestroy();
  v14 = v1[5];

  sub_222793EC4(v1[6], v1[7], *(v1 + 64));
  return v1;
}

uint64_t sub_222792DDC()
{
  v0 = sub_222792C04();

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

unint64_t sub_222792E0C()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_222792F2C();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_22279EFA0();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_222792E9C(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_222792E9C(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_22279EFA0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_222792E9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_222792FA4(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_222792F2C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_222792FA4(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222792FA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

id sub_222793008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 32))(v7);
  v8 = sub_22279F570();
  if (v9)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22279F550();
    v11 = sub_22279ECA0();

    v12 = [ObjCClassFromMetadata cborWithUTF8String_];
  }

  else
  {
    v12 = [swift_getObjCClassFromMetadata() cborWithInteger_];
  }

  (*(v4 + 8))(v7, a3);
  return v12;
}

uint64_t sub_222793174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2227759E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22279320C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - v16;
  (*(v10 + 32))(&v21 - v16);
  type metadata accessor for _CBORReferenceEncoder();
  v18 = swift_allocObject();
  (*(v10 + 16))(v14, v17, a5);
  v19 = sub_2227935E4(a1, v14, a3, v18, a5, a6);
  (*(v10 + 8))(v17, a5);
  return v19;
}

uint64_t sub_222793370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  *(a7 + 40) = a1;
  v14 = objc_opt_self();

  v26 = a4;
  if (a5)
  {

    v15 = sub_22279ECA0();

    v16 = [v14 cborWithUTF8String_];
  }

  else
  {
    v16 = [v14 cborWithInteger_];
  }

  *(a7 + 48) = a6;
  *(a7 + 56) = v16;
  *(a7 + 64) = 1;
  swift_beginAccess();
  v17 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(a7 + 16) = MEMORY[0x277D84F90];
    *(a7 + 24) = v17;
    swift_weakAssign();
    v19 = a6;
    v20 = v16;

    swift_beginAccess();
    v21 = *(a7 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 24) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_222789FB0(0, v21[2] + 1, 1, v21);
      *(a7 + 24) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_222789FB0((v23 > 1), v24 + 1, 1, v21);
    }

    v28 = &type metadata for CBORCodingKey;
    v29 = sub_222782F30();
    v25 = swift_allocObject();
    *&v27 = v25;
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    *(v25 + 32) = v26;
    *(v25 + 40) = a5 & 1;
    v21[2] = v24 + 1;
    sub_2227759E4(&v27, &v21[5 * v24 + 4]);
    *(a7 + 24) = v21;
    swift_endAccess();

    return a7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2227935E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - v17;
  (*(v11 + 32))(&v32 - v17);
  *(a4 + 40) = a1;
  v19 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v37 = v11;
  v20 = *(v11 + 16);
  v34 = v18;
  v35 = v20;
  v20(v15, v18, a5);

  v36 = a6;
  v21 = sub_222793008(v15, v19, a5);
  v22 = a3;
  *(a4 + 48) = a3;
  *(a4 + 56) = v21;
  *(a4 + 64) = 1;
  swift_beginAccess();
  v23 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(a4 + 16) = MEMORY[0x277D84F90];
    *(a4 + 24) = v23;
    v25 = (a4 + 24);
    swift_weakAssign();
    v33 = v22;
    v26 = v21;

    swift_beginAccess();
    v27 = *(a4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 24) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_222789FB0(0, v27[2] + 1, 1, v27);
      *v25 = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_222789FB0((v29 > 1), v30 + 1, 1, v27);
      *v25 = v27;
    }

    v31 = v34;
    v35(v15, v34, a5);
    sub_222793174(v30, v15, (a4 + 24), a5, v36);
    *(a4 + 24) = v27;
    swift_endAccess();

    (*(v37 + 8))(v31, a5);

    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2227938F8(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_222793908(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_22279391C()
{
  result = qword_27D019F10;
  if (!qword_27D019F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F10);
  }

  return result;
}

unint64_t sub_222793974()
{
  result = qword_27D019F18;
  if (!qword_27D019F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CBORLibrary11CBOREncoderC26DictionaryEncodingStrategyO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222793C6C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222793CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_222793D1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222793DA0(uint64_t a1, unsigned int a2)
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

uint64_t sub_222793DE8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222793E58()
{
  result = qword_27D019F38;
  if (!qword_27D019F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F38);
  }

  return result;
}

void sub_222793EC4(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_222793F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222793F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F50, &qword_2227A15F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222793FCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CBOR.EncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a5;
  v62 = a4;
  v64 = a3;
  v7 = sub_22279EEA0();
  v63 = *(v7 - 8);
  v8 = v63[8];
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v61 = *(a2 - 8);
  v13 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v56 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v67;
  sub_22279F500();
  if (v26)
  {
    goto LABEL_14;
  }

  v59 = v21;
  v60 = v12;
  v57 = v24;
  v58 = v17;
  v67 = a1;
  v27 = v66;
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  sub_222784278();
  sub_22279F2A0();
  v28 = v68[0];
  if (![v68[0] isEmbeddedCBORData] || (v29 = objc_msgSend(v28, sel_data)) == 0)
  {
    v44 = v60;
    sub_22279EE90();
    v45 = sub_22279EEB0();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v47 = type metadata accessor for CBOR.EncodedCBOR();
    v49 = v63;
    (v63[2])(v47 + v48, v44, v7);
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();

    (v49[1])(v44, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    a1 = v67;
LABEL_14:
    v55 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v63 = v28;
  v30 = v29;
  v31 = sub_22279EC10();
  v33 = v32;

  v34 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  v35 = sub_22279F510();
  v36 = v64;
  if (qword_27D019D40 != -1)
  {
    swift_once();
  }

  v37 = sub_22279EF70();
  v38 = __swift_project_value_buffer(v37, qword_27D01A160);
  v39 = v65;
  v40 = v59;
  if (!*(v35 + 16) || (v41 = sub_222794ED0(v38), (v42 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22278B474(*(v35 + 56) + 32 * v41, v68);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v43 = 0;
    goto LABEL_13;
  }

  v43 = v70;
LABEL_13:
  type metadata accessor for CBORDecoder();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  sub_222775F8C(v39, v43, v39, v36, v40);

  sub_22278414C(v31, v33);
  v52 = *(v61 + 32);
  v53 = v57;
  v52(v57, v40, v39);
  v54 = v58;
  v52(v58, v53, v39);
  v52(v27, v54, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v55 = v67;
  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t CBOR.EncodedCBOR.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for CBOREncoder();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v6 + 24) = 2;
  *(v6 + 32) = 0;
  v7 = sub_22278BFA0(v2, *(a2 + 16), *(a2 + 32));
  if (v3)
  {
  }

  v10 = v7;
  v11 = v8;
  sub_22278AE78(v7, v8);
  v12 = sub_22279EC00();
  v13 = [objc_opt_self() cborWithEmbeddedCBORData_];

  sub_22278414C(v10, v11);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v15[6] = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_22278AECC();
  sub_22279F2D0();
  sub_22278414C(v10, v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t CBOR.EncodedCBORTag24Data.decode()(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for CBORDecoder();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  sub_222775D30(*(a1 + 16), v4, v3, *(a1 + 16), *(a1 + 24));
}

uint64_t CBOR.EncodedCBORTag24Data.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CBOR.EncodedCBORTag24Data.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v8 = sub_22279EEA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (v5)
  {
    goto LABEL_8;
  }

  v31 = v9;
  v32 = a1;
  v30 = v13;
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_222784278();
  sub_22279F2A0();
  v15 = v37;
  if (![v37 isEmbeddedCBORData] || objc_msgSend(v15, sel_type) != 2)
  {
    v21 = v15;
    v22 = v30;
    sub_22279EE90();
    v23 = sub_22279EEB0();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v25 = type metadata accessor for CBOR.EncodedCBOR();
    v27 = v31;
    (*(v31 + 16))(v25 + v26, v22, v8);
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();

    (*(v27 + 8))(v22, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    a1 = v32;
LABEL_8:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  v16 = [objc_opt_self() dataWithCBOR_];
  v17 = sub_22279EC10();
  v19 = v18;

  *a5 = v17;
  a5[1] = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v20 = v32;
  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t CBOR.EncodedCBORTag24Data.encode(to:)(void *a1, void *a2)
{
  v5 = sub_22279EED0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = v2[1];
  v13 = sub_22279EC00();
  v14 = [objc_opt_self() cborWithEncodedTag24Data_];

  if (v14)
  {
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22279F530();
    v25 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_22278AECC();
    sub_22279F2D0();

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_22279EE90();
    v17 = sub_22279EEE0();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v21 = a2[2];
    v22 = a2[3];
    v23 = a2[4];
    v24 = type metadata accessor for CBOR.EncodedCBOR();
    v19[3] = swift_getMetatypeMetadata();
    *v19 = v24;
    (*(v6 + 16))(v19 + v20, v10, v5);
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D841A8], v17);
    swift_willThrow();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_222794EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CBOR.EncodedCBOR<>.== infix(_:_:)();
}

unint64_t sub_222794ED0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22279EF70();
  v5 = sub_22279EC80();

  return sub_222794FBC(a1, v5);
}

unint64_t sub_222794F34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22279EE30();

  return sub_222795154(a1, v5);
}

unint64_t sub_222794F78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22279EDE0();

  return sub_22279521C(a1, v5);
}

unint64_t sub_222794FBC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_22279EF70();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_22279EC90();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_222795154(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2227829D0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DC0090](v9, a1);
      sub_22278291C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22279521C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_222795D80();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22279EDF0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2227952E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22279EBC0();
    if (v10)
    {
      v11 = sub_22279EBE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22279EBD0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22279EBC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22279EBE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22279EBD0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222795510(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2227956A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22278414C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2227952E0(v14, a3, a4, &v13);
  v10 = v4;
  sub_22278414C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2227956A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22279EBC0();
  v11 = result;
  if (result)
  {
    result = sub_22279EBE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22279EBD0();
  sub_2227952E0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_222795758(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22278AE78(a3, a4);
          return sub_222795510(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2227958C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222795938(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_222795A78(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_222795C80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222795CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_222795D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_222795D80()
{
  result = qword_280BC4448[0];
  if (!qword_280BC4448[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280BC4448);
  }

  return result;
}

id _getRFC3339DateFormatter(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  if (a1)
  {
    v4 = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
  }

  else
  {
    v4 = @"yyyy-MM-dd";
  }

  [v2 setDateFormat:v4];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v5];

  return v2;
}

void sub_22279C19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}