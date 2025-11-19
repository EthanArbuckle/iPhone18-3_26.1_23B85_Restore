unint64_t sub_255F7F03C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255F95990())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255F7F0F4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_255F76EC4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_255F957A0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_255F957E0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unsigned __int8 *sub_255F7F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_255F7E008();

  result = sub_255F955B0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_255F79190();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255F957E0();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_255F7F7CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_255F957E0();
  }

  result = sub_255F80988(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_255F7F894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B580, &qword_255F96C68);
    v3 = sub_255F95850();

    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_255F7EF4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 12 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255F7F9B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_255F95500();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_255F955C0();
}

unint64_t sub_255F7FA60(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
LABEL_77:

    goto LABEL_78;
  }

  v114 = a6;
  v115 = a2 >> 14;
  v113 = a5;
  v8 = sub_255F95700();
  if ((v8 ^ v9) < 0x4000)
  {
LABEL_6:

    goto LABEL_7;
  }

  v10 = v9;
  v6 = v8;
  while (1)
  {
    sub_255F956F0();
    v11 = sub_255F953F0();

    if ((v11 & 1) == 0)
    {
      break;
    }

    v6 = sub_255F956B0();
    if ((v6 ^ v10) < 0x4000)
    {
      goto LABEL_6;
    }
  }

  if (v115 == v6 >> 14)
  {
    goto LABEL_7;
  }

  if (sub_255F956F0() == 45 && v19 == 0xE100000000000000)
  {
  }

  else
  {
    v20 = sub_255F95990();

    if ((v20 & 1) == 0)
    {
      v22 = 0;
      goto LABEL_17;
    }
  }

  v21 = sub_255F956B0();
  if (v115 == v21 >> 14)
  {
LABEL_7:
    sub_255F7E008();

    v12 = sub_255F955B0();
    v14 = v13;
    v15 = 0x8000000255F9CEA0;
    sub_255F796F4();
    swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    v17 = 0xD00000000000004ALL;
    goto LABEL_8;
  }

  v6 = v21;
  v22 = 1;
LABEL_17:
  sub_255F956F0();
  v23 = sub_255F953E0();

  if ((v23 & 0x100) != 0)
  {
    goto LABEL_7;
  }

  sub_255F956F0();
  v24 = sub_255F95400();

  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  v110 = v22;
  if (v115 == v6 >> 14)
  {
    goto LABEL_79;
  }

  v25 = 0.0;
  while (1)
  {
    if (v27 = sub_255F956F0(), v28 = v26, v27 == 2573) && v26 == 0xE200000000000000 || (result = sub_255F95990(), (result))
    {
    }

    else
    {
      if ((v28 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if ((v28 & 0x1000000000000000) != 0)
      {
        v30 = sub_255F95480();
      }

      else
      {
        v30 = sub_255F95790() << 16;
      }

      if (v30 >> 14 != 4 * v29)
      {
        goto LABEL_45;
      }

      result = sub_255F7F0F4(v27, v28);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_152;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_45:

        v33 = v115;
LABEL_46:
        v42 = v6 >> 14;
        if (v6 >> 14 == v33)
        {
          goto LABEL_79;
        }

        goto LABEL_81;
      }

      result = sub_255F7F0F4(v27, v28);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_153;
      }

      v31 = result;

      if ((v31 & 0xFFFFFF00) != 0)
      {
        goto LABEL_144;
      }
    }

    sub_255F956F0();
    v32 = sub_255F95400();

    v33 = v115;
    if ((v32 & 1) == 0)
    {
      goto LABEL_46;
    }

    v34 = sub_255F956F0();
    v36 = sub_255F795FC(v34, v35);

    if (!v36)
    {
      goto LABEL_151;
    }

    v25 = v25 * 10.0 + 0.0;
    result = sub_255F956B0();
    v6 = result;
    v37 = result >> 14;
    if (v25 >= 255.0)
    {
      break;
    }

    if (v37 == v115)
    {
      goto LABEL_46;
    }
  }

  if (v115 < v37)
  {
    goto LABEL_147;
  }

  v39 = sub_255F95700();
  v41 = v40;
  v111 = v38 >> 14;
  if (v38 >> 14 == v39 >> 14)
  {
    v6 = a2;
  }

  else
  {
    v43 = v38;
    v6 = v39;
    do
    {
      v44 = v39;
      v45 = v43;
      v46 = v41;
      v48 = sub_255F956F0();
      v49 = v47;
      if (v48 != 2573 || v47 != 0xE200000000000000)
      {
        result = sub_255F95990();
        if ((result & 1) == 0)
        {
          v50 = v48;
          if ((v49 & 0x2000000000000000) != 0)
          {
            v51 = HIBYTE(v49) & 0xF;
          }

          else
          {
            v51 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (!v51)
          {
            goto LABEL_145;
          }

          if ((v49 & 0x1000000000000000) != 0)
          {
            v56 = sub_255F95480();
          }

          else
          {
            if ((v49 & 0x2000000000000000) != 0)
            {
              v53 = v50;
            }

            else
            {
              if ((v50 & 0x1000000000000000) != 0)
              {
                v52 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v52 = sub_255F957E0();
              }

              v53 = *v52;
            }

            v54 = v53;
            v55 = (__clz(~v53) - 24) << 16;
            if (v54 < 0)
            {
              v56 = v55;
            }

            else
            {
              v56 = 65541;
            }
          }

          if (v56 >> 14 != 4 * v51)
          {
            goto LABEL_77;
          }

          result = sub_255F7F0F4(v50, v49);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_157;
          }

          if ((result & 0xFFFFFF80) != 0)
          {
            goto LABEL_77;
          }

          result = sub_255F7F0F4(v50, v49);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_158;
          }

          if ((result & 0xFFFFFF00) != 0)
          {
            goto LABEL_146;
          }
        }
      }

      v57 = sub_255F95400();

      if ((v57 & 1) == 0)
      {
        goto LABEL_78;
      }

      v39 = v44;
      v41 = v46;
      v58 = sub_255F956B0();
      v43 = v45;
      v6 = v58;
    }

    while (v111 != v58 >> 14);
    v6 = a2;
  }

LABEL_78:

  v42 = v6 >> 14;
  v33 = v115;
  if (v6 >> 14 == v115)
  {
LABEL_79:
    sub_255F7E008();

    v59 = sub_255F955B0();
    v61 = v60;
    v15 = 0x8000000255F9D030;
    sub_255F796F4();
    swift_allocError();
    *v16 = v59;
    *(v16 + 8) = v61;
    v17 = 0xD000000000000039;
    goto LABEL_8;
  }

  v25 = 255.0;
LABEL_81:
  v62 = v114;
  if (v114)
  {
    if (sub_255F956F0() == 46 && v63 == 0xE100000000000000)
    {
LABEL_84:

      goto LABEL_86;
    }

    v64 = sub_255F95990();

    if (v64)
    {
      goto LABEL_86;
    }

    if (sub_255F956F0() == 37 && v68 == 0xE100000000000000)
    {
      goto LABEL_84;
    }

    v69 = sub_255F95990();

    if (v69)
    {
LABEL_86:
      sub_255F7E008();

      v65 = sub_255F955B0();
      v67 = v66;
      v15 = 0x8000000255F9CFE0;
      sub_255F796F4();
      swift_allocError();
      *v16 = v65;
      *(v16 + 8) = v67;
      v17 = 0xD000000000000049;
      goto LABEL_8;
    }
  }

  if (sub_255F956F0() == 46 && v70 == 0xE100000000000000)
  {

    goto LABEL_94;
  }

  v71 = sub_255F95990();

  if ((v71 & 1) == 0)
  {
LABEL_110:
    if (v62 != 2 && (v62 & 1) == 0)
    {
      if (sub_255F956F0() == 37 && v86 == 0xE100000000000000)
      {
      }

      else
      {
        v91 = sub_255F95990();

        if ((v91 & 1) == 0)
        {
          sub_255F7E008();

          v103 = sub_255F955B0();
          v105 = v104;
          v15 = 0x8000000255F9CF40;
          sub_255F796F4();
          swift_allocError();
          *v16 = v103;
          *(v16 + 8) = v105;
          v17 = 0xD000000000000048;
          goto LABEL_8;
        }
      }
    }

    if (sub_255F956F0() == 37 && v92 == 0xE100000000000000)
    {
    }

    else
    {
      v93 = sub_255F95990();

      if ((v93 & 1) == 0)
      {
LABEL_125:
        if (v33 < v6 >> 14)
        {
          goto LABEL_150;
        }

        v94 = sub_255F95700();
        if ((v94 ^ v95) < 0x4000)
        {
LABEL_130:
        }

        else
        {
          v96 = v95;
          v97 = v94;
          while (1)
          {
            sub_255F956F0();
            v98 = sub_255F953F0();

            if ((v98 & 1) == 0)
            {
              break;
            }

            v97 = sub_255F956B0();
            if ((v97 ^ v96) < 0x4000)
            {
              goto LABEL_130;
            }
          }

          if (v115 != v97 >> 14)
          {
            if (sub_255F956F0() == v113 && v102 == 0xE100000000000000)
            {

              goto LABEL_138;
            }

            v106 = sub_255F95990();

            if (v106)
            {
LABEL_138:
              result = sub_255F956B0();
              if (v110)
              {
                return result;
              }

              v107 = round(v25);
              if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v107 > -1.0)
                {
                  if (v107 < 4294967300.0)
                  {
                    return result;
                  }

                  goto LABEL_156;
                }

LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
                return result;
              }

LABEL_154:
              __break(1u);
              goto LABEL_155;
            }
          }
        }

        sub_255F7E008();

        v99 = sub_255F955B0();
        v101 = v100;
        v15 = 0x8000000255F9CEF0;
        sub_255F796F4();
        swift_allocError();
        *v16 = v99;
        *(v16 + 8) = v101;
        v17 = 0xD000000000000045;
LABEL_8:
        *(v16 + 16) = v17;
        *(v16 + 24) = v15;
        *(v16 + 32) = 0;
        return swift_willThrow();
      }
    }

    if (v25 / 100.0 * 255.0 <= 255.0)
    {
      v25 = v25 / 100.0 * 255.0;
    }

    else
    {
      v25 = 255.0;
    }

    result = sub_255F956B0();
    v6 = result;
    goto LABEL_125;
  }

LABEL_94:
  if (v33 < v42)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  result = sub_255F95700();
  v73 = v72 >> 14;
  v74 = result >> 14;
  if (result >> 14 != v72 >> 14)
  {
    v108 = result >> 14;
    while (1)
    {
      v109 = v74;
      if (sub_255F956F0() == 37 && v75 == 0xE100000000000000)
      {
        break;
      }

      v112 = sub_255F95990();

      if (v112)
      {
        goto LABEL_104;
      }

      result = sub_255F956B0();
      v74 = result >> 14;
      if (result >> 14 == v73)
      {
        goto LABEL_105;
      }
    }

LABEL_104:
    v73 = v109;
LABEL_105:
    v74 = v108;
  }

  if (v73 < v74)
  {
    goto LABEL_149;
  }

  v76 = sub_255F95700();
  v78 = v77;
  v80 = v79;
  v82 = v81;

  v83 = sub_255F956E0();
  v84 = MEMORY[0x259C53FE0](v76, v78, v80, v82);
  LOBYTE(v78) = sub_255F795FC(v84, v85);

  v62 = v114;
  if ((v78 & 1) != 0 && v83 >= 1)
  {
    v6 = sub_255F956C0();

    v25 = v25 + 0.0;
    v33 = v115;
    goto LABEL_110;
  }

  sub_255F7E008();

  v87 = sub_255F955B0();
  v89 = v88;
  sub_255F796F4();
  swift_allocError();
  *v90 = v87;
  *(v90 + 8) = v89;
  *(v90 + 16) = 0xD000000000000043;
  *(v90 + 24) = 0x8000000255F9CF90;
  *(v90 + 32) = 0;
  swift_willThrow();
}

uint64_t sub_255F80988(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_255F76E48(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_255F95570();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_255F76E48(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_255F76E48(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_255F95570();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t StyleSheet.Color.debugDescription.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v7 = *v0;
  v3 = sub_255F95980();
  MEMORY[0x259C540A0](v3);

  MEMORY[0x259C540A0](8236, 0xE200000000000000);
  v4 = sub_255F95980();
  MEMORY[0x259C540A0](v4);

  MEMORY[0x259C540A0](8236, 0xE200000000000000);
  v5 = sub_255F95980();
  MEMORY[0x259C540A0](v5);

  MEMORY[0x259C540A0](41, 0xE100000000000000);
  return 677537650;
}

uint64_t StyleSheet.Font.Size.debugDescription.getter()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    v5 = *v0;
    return StyleSheet.Font.Size.Absolute.rawValue.getter();
  }

  else
  {
    v2 = *v0;
    sub_255F95640();
    v3 = StyleSheet.Font.Size.Unit.rawValue.getter();
    MEMORY[0x259C540A0](v3);

    return 0;
  }
}

uint64_t StyleSheet.Font.Specified.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B588, &qword_255F96C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255F96C70;
  if (v3 == 13)
  {
    v8 = 0;
    v9 = 0;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  else
  {
    v9 = sub_255F7BE3C();
    *(inited + 32) = v3;
    v8 = &type metadata for StyleSheet.Font.Weight;
  }

  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = 0x746867696577;
  *(inited + 80) = 0xE600000000000000;
  if (v4 == 3)
  {
    v10 = 0;
    v11 = 0;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0;
  }

  else
  {
    v11 = sub_255F7C038();
    *(inited + 88) = v4;
    v10 = &type metadata for StyleSheet.Font.Style;
  }

  *(inited + 112) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x656C797473;
  *(inited + 136) = 0xE500000000000000;
  v39 = v6;
  v37 = v1;
  v38 = v2;
  if (v5 == 2)
  {
    v12 = 0;
    v13 = 0;
    *(inited + 144) = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  else
  {
    v13 = sub_255F7C1FC();
    *(inited + 144) = v5 & 1;
    v12 = &type metadata for StyleSheet.Font.Variant;
  }

  v14 = 0;
  *(inited + 168) = v12;
  *(inited + 176) = v13;
  v40 = MEMORY[0x277D84F90];
  v15 = inited + 32;
  *(inited + 184) = 0x746E6169726176;
  *(inited + 192) = 0xE700000000000000;
  v16 = &qword_255F96C90;
  do
  {
    if (v14 <= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v14;
    }

    v18 = -v17;
    v19 = v15 + 56 * v14++;
    while (1)
    {
      if (v18 + v14 == 1)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_255F8154C(v19, &v46, &qword_27F81B590, &qword_255F96C88);
      v20 = v48;
      v21 = v49;
      sub_255F8154C(&v46, &v41, &qword_27F81B598, &qword_255F96C90);
      if (AssociatedTypeWitness)
      {
        break;
      }

      sub_255F815B4(&v41, &qword_27F81B598, &qword_255F96C90);
      sub_255F815B4(&v46, &qword_27F81B590, &qword_255F96C88);
      ++v14;
      v19 += 56;
      if (v14 == 4)
      {
        goto LABEL_24;
      }
    }

    sub_255F7AF30(&v41, &v43);
    MEMORY[0x259C540A0](v20, v21);
    MEMORY[0x259C540A0](8250, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v41);
    sub_255F95600();
    sub_255F95830();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    sub_255F815B4(&v46, &qword_27F81B590, &qword_255F96C88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_255F7DEFC(0, *(v40 + 2) + 1, 1, v40);
    }

    v23 = *(v40 + 2);
    v22 = *(v40 + 3);
    if (v23 >= v22 >> 1)
    {
      v40 = sub_255F7DEFC((v22 > 1), v23 + 1, 1, v40);
    }

    *(v40 + 2) = v23 + 1;
    v24 = &v40[16 * v23];
    *(v24 + 4) = 0;
    *(v24 + 5) = 0xE000000000000000;
    v15 = inited + 32;
  }

  while (v14 != 3);
LABEL_24:

  if (v38 > 0xFB)
  {
    v25 = v39;
    v16 = v40;
    if (!v39)
    {
      goto LABEL_36;
    }

LABEL_32:
    v46 = 0x203A796C696D6166;
    v47 = 0xE800000000000000;
    v43 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
    v31 = sub_255F95420();
    MEMORY[0x259C540A0](v31);

    v18 = v46;
    inited = v47;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_255F7DEFC((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      *(v34 + 4) = v18;
      *(v34 + 5) = inited;
      goto LABEL_36;
    }

LABEL_38:
    v16 = sub_255F7DEFC(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x259C540A0](0x203A657A6973, 0xE600000000000000);
  v43 = v37;
  v44 = v38;
  sub_255F95830();
  v26 = v46;
  v27 = v47;
  v16 = v40;
  v25 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_255F7DEFC(0, *(v40 + 2) + 1, 1, v40);
  }

  v29 = *(v16 + 2);
  v28 = *(v16 + 3);
  if (v29 >= v28 >> 1)
  {
    v16 = sub_255F7DEFC((v28 > 1), v29 + 1, 1, v16);
  }

  *(v16 + 2) = v29 + 1;
  v30 = &v16[16 * v29];
  *(v30 + 4) = v26;
  *(v30 + 5) = v27;
  if (v39)
  {
    goto LABEL_32;
  }

LABEL_36:
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
  sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
  v35 = sub_255F95420();

  return v35;
}

uint64_t sub_255F8154C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F815B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
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

uint64_t StyleSheet.Font.debugDescription.getter()
{
  if (v0[1] < 0)
  {
    v3 = *v0;
    return StyleSheet.Font.System.rawValue.getter();
  }

  else
  {
    v2 = *v0;
    v4 = v0[2];
    sub_255F95830();
    return 0;
  }
}

uint64_t sub_255F81710()
{
  if (v0[1] < 0)
  {
    v3 = *v0;
    return StyleSheet.Font.System.rawValue.getter();
  }

  else
  {
    v2 = *v0;
    v4 = v0[2];
    sub_255F95830();
    return 0;
  }
}

unint64_t StyleSheet.Rule.Declaration.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = 0;
      MEMORY[0x259C540A0](0x696C612D74786574, 0xEC000000203A6E67);
      goto LABEL_10;
    }

    if (v4 == 4)
    {
      MEMORY[0x259C540A0](0x2D746E6F66, 0xE500000000000000);
      sub_255F95830();
      return 0;
    }

    if (!v2)
    {
      return 0;
    }

    sub_255F957B0();

    v9 = 0xD000000000000016;
    v8 = sub_255F95470();
    MEMORY[0x259C540A0](v8);

LABEL_15:
    MEMORY[0x259C540A0](41, 0xE100000000000000);
    return v9;
  }

  if (!*(v0 + 32))
  {
    v6 = v0[3];
    sub_255F957B0();

    v9 = 0x3A64696C61766E69;
    MEMORY[0x259C540A0](v1, v2);
    MEMORY[0x259C540A0](8236, 0xE200000000000000);
    MEMORY[0x259C540A0](v3, v6);
    goto LABEL_15;
  }

  if (v4 != 1)
  {
    if ((v2 & 0x100000000) == 0)
    {
      sub_255F957B0();

      v9 = 0xD000000000000012;
      v7 = StyleSheet.Color.debugDescription.getter();
      MEMORY[0x259C540A0](v7);

      return v9;
    }

    return 0;
  }

  v9 = 0;
  MEMORY[0x259C540A0](0x203A726F6C6F63, 0xE700000000000000);
LABEL_10:
  sub_255F95830();
  return v9;
}

uint64_t StyleSheet.Rule.debugDescription.getter()
{
  if (v0[5])
  {
    return 0x656C75722040;
  }

  v2 = v0[1];
  v3 = *v0;
  v7 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5B0, &qword_255F96C98);
  sub_255F81E98();
  v4 = sub_255F95420();
  v6 = v5;

  MEMORY[0x259C540A0](2683, 0xE200000000000000);
  MEMORY[0x259C540A0](v4, v6);

  MEMORY[0x259C540A0](32010, 0xE200000000000000);
  return v3;
}

unint64_t sub_255F81B74@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 32);
  result = StyleSheet.Rule.Declaration.debugDescription.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_255F81BB8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_255F81BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x259C540A0](*a1, a1[1]);
  result = MEMORY[0x259C540A0](59, 0xE100000000000000);
  *a2 = 2105376;
  a2[1] = 0xE300000000000000;
  return result;
}

uint64_t StyleSheet.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_255F82090(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      if (*(v3 + 32))
      {
        v4 = 0xE600000000000000;
        v5 = 0x656C75722040;
      }

      else
      {
        v4 = *v3;
        v6 = *(v3 - 8);
        v17 = *(v3 + 8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5B0, &qword_255F96C98);
        sub_255F81E98();
        v7 = sub_255F95420();
        v9 = v8;

        MEMORY[0x259C540A0](2683, 0xE200000000000000);
        MEMORY[0x259C540A0](v7, v9);

        MEMORY[0x259C540A0](32010, 0xE200000000000000);
        v5 = v6;
      }

      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_255F82090((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 16 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v4;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
  sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
  v13 = sub_255F95420();
  v15 = v14;

  MEMORY[0x259C540A0](v13, v15);

  MEMORY[0x259C540A0](10, 0xE100000000000000);
  return 0;
}

unint64_t sub_255F81E98()
{
  result = qword_27F81B5B8;
  if (!qword_27F81B5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5B0, &qword_255F96C98);
    sub_255F81F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B5B8);
  }

  return result;
}

unint64_t sub_255F81F1C()
{
  result = qword_27F81B5C0;
  if (!qword_27F81B5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5C8, &qword_255F96CA0);
    sub_255F81FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B5C0);
  }

  return result;
}

unint64_t sub_255F81FA0()
{
  result = qword_27F81B5D0;
  if (!qword_27F81B5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5D8, &qword_255F96CA8);
    sub_255F8203C(&qword_27F81B5E0, &qword_27F81B5E8, &qword_255F96CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B5D0);
  }

  return result;
}

uint64_t sub_255F8203C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_255F82090(char *a1, int64_t a2, char a3)
{
  result = sub_255F820B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F820B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B540, &unk_255F99E40);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_255F821D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v120 = a1 + 32;
  v121 = *(a1 + 16);
  v119 = a2 + 32;
  while (1)
  {
    v6 = v4 + 48 * v3;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    LOBYTE(v6) = *(v6 + 40);
    v12 = v5 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v147[0] = v8;
    v147[1] = v7;
    v147[2] = v10;
    v147[3] = v9;
    v134 = v9;
    v135 = v17;
    v147[4] = v11;
    v148 = v6;
    v149 = v14;
    v150 = v13;
    v151 = v15;
    v152 = v16;
    v153 = v17;
    v154 = v18;
    v136 = v15;
    if ((v6 & 1) == 0)
    {
      break;
    }

    if ((v18 & 1) == 0)
    {
      v105 = v14;
      v106 = v13;
      v107 = 0;
LABEL_52:
      sub_255F8ECE8(v105, v106, v15, v16, v17, v107);
      v111 = v8;
      v112 = v7;
      v113 = v10;
      v114 = v134;
      v115 = v11;
      v116 = 1;
LABEL_55:
      sub_255F8ECE8(v111, v112, v113, v114, v115, v116);
      sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
      return 0;
    }

    v131 = v8;
    if (v8 != v14 || v7 != v13)
    {
      v19 = v16;
      v20 = v10;
      v21 = v7;
      v22 = v11;
      v23 = v5;
      v24 = v4;
      v25 = v14;
      v26 = v13;
      v27 = sub_255F95990();
      v13 = v26;
      v14 = v25;
      v4 = v24;
      v5 = v23;
      v11 = v22;
      v7 = v21;
      v10 = v20;
      v8 = v131;
      v17 = v135;
      v15 = v136;
      v16 = v19;
      if ((v27 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v10 != v15 || v134 != v16)
    {
      v28 = v16;
      v29 = v10;
      v30 = v7;
      v31 = v11;
      v32 = v5;
      v33 = v4;
      v34 = v14;
      v35 = v13;
      v36 = sub_255F95990();
      v13 = v35;
      v14 = v34;
      v4 = v33;
      v5 = v32;
      v11 = v31;
      v7 = v30;
      v10 = v29;
      v8 = v131;
      v17 = v135;
      v15 = v136;
      v16 = v28;
      if ((v36 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v37 = *(v11 + 16);
    if (v37 != *(v17 + 16))
    {
LABEL_49:
      v105 = v14;
      v106 = v13;
      v107 = 1;
      goto LABEL_52;
    }

    if (v37)
    {
      if (v11 != v17)
      {
        v122 = v3;
        v82 = v16;
        v83 = v15;
        v84 = v13;
        sub_255F8ECE8(v14, v13, v15, v16, v17, 1);
        sub_255F8ECE8(v8, v7, v10, v134, v11, 1);
        v124 = v14;
        v126 = v84;
        v128 = v82;
        sub_255F8ECE8(v14, v84, v83, v82, v135, 1);
        v130 = v7;
        v118 = v10;
        result = sub_255F8ECE8(v8, v7, v10, v134, v11, 1);
        v85 = v135;
        v86 = 0;
        v87 = (v135 + 64);
        v88 = v11;
        v89 = (v11 + 64);
        while (v86 < *(v88 + 16))
        {
          result = *(v89 - 4);
          v90 = *(v89 - 3);
          v91 = *(v89 - 2);
          v92 = *(v89 - 1);
          v93 = *v89;
          v142 = result;
          v143 = v90;
          v144 = v91;
          v145 = v92;
          v146 = v93;
          if (v86 >= *(v85 + 16))
          {
            goto LABEL_61;
          }

          v95 = *(v87 - 3);
          v96 = *(v87 - 2);
          v97 = *(v87 - 1);
          v137 = *(v87 - 4);
          v94 = v137;
          v138 = v95;
          v139 = v96;
          v140 = v97;
          v141 = *v87;
          v98 = v141;
          sub_255F8EDA4(result, v90, v91, v92, v93);
          sub_255F8EDA4(v94, v95, v96, v97, v98);
          LOBYTE(v94) = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v142, &v137);
          sub_255F7A658(v137, v138, v139, v140, v141);
          result = sub_255F7A658(v142, v143, v144, v145, v146);
          if ((v94 & 1) == 0)
          {
            sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
            sub_255F8ED44(v124, v126, v136, v128, v135, 1);
            v100 = v130;
            v99 = v131;
            v101 = v118;
            v102 = v134;
            v103 = v88;
            v104 = 1;
            goto LABEL_48;
          }

          ++v86;
          v87 += 40;
          v89 += 40;
          v85 = v135;
          if (v37 == v86)
          {
            sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
            sub_255F8ED44(v124, v126, v136, v128, v135, 1);
            v77 = v130;
            v76 = v131;
            v78 = v118;
            v79 = v134;
            v80 = v88;
            v81 = 1;
            goto LABEL_44;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v38 = v14;
      v39 = v13;
      v17 = v11;
    }

    else
    {
      v38 = v14;
      v39 = v13;
    }

    sub_255F8ECE8(v38, v39, v15, v16, v17, 1);
    v52 = v8;
    v53 = v7;
    v54 = v10;
    v55 = v134;
    v56 = v11;
    v57 = 1;
LABEL_29:
    sub_255F8ECE8(v52, v53, v54, v55, v56, v57);
    sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
LABEL_30:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (v18)
  {
    v108 = v14;
    v109 = v13;
    v110 = 1;
LABEL_54:
    sub_255F8ECE8(v108, v109, v15, v16, v17, v110);
    v111 = v8;
    v112 = v7;
    v113 = v10;
    v114 = v134;
    v115 = v11;
    v116 = 0;
    goto LABEL_55;
  }

  if (v8 != v14 || v7 != v13)
  {
    v40 = v16;
    v132 = v8;
    v41 = v10;
    v42 = v7;
    v43 = v11;
    v44 = v5;
    v45 = v4;
    v46 = v14;
    v47 = v13;
    v48 = sub_255F95990();
    v13 = v47;
    v14 = v46;
    v4 = v45;
    v5 = v44;
    v11 = v43;
    v7 = v42;
    v10 = v41;
    v8 = v132;
    v17 = v135;
    v15 = v136;
    v16 = v40;
    if ((v48 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v49 = *(v10 + 16);
  if (v49 != *(v15 + 16))
  {
LABEL_50:
    v108 = v14;
    v109 = v13;
    v110 = 0;
    goto LABEL_54;
  }

  if (!v49)
  {
    v50 = v14;
    v51 = v13;
    goto LABEL_26;
  }

  if (v10 == v15)
  {
    v50 = v14;
    v51 = v13;
    v15 = v10;
LABEL_26:
    sub_255F8ECE8(v50, v51, v15, v16, v17, 0);
    v52 = v8;
    v53 = v7;
    v54 = v10;
    v55 = v134;
    v56 = v11;
    v57 = 0;
    goto LABEL_29;
  }

  v122 = v3;
  v58 = v16;
  v59 = v17;
  v60 = v13;
  sub_255F8ECE8(v14, v13, v15, v16, v17, 0);
  sub_255F8ECE8(v8, v7, v10, v134, v11, 0);
  v123 = v14;
  v125 = v60;
  v127 = v58;
  sub_255F8ECE8(v14, v60, v136, v58, v59, 0);
  v129 = v7;
  v133 = v8;
  v117 = v11;
  result = sub_255F8ECE8(v8, v7, v10, v134, v11, 0);
  v62 = v136;
  v63 = 0;
  v64 = (v136 + 64);
  v65 = v10;
  v66 = (v10 + 64);
  while (1)
  {
    if (v63 >= *(v65 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = *(v66 - 4);
    v67 = *(v66 - 3);
    v68 = *(v66 - 2);
    v69 = *(v66 - 1);
    v70 = *v66;
    v142 = result;
    v143 = v67;
    v144 = v68;
    v145 = v69;
    v146 = v70;
    if (v63 >= *(v62 + 16))
    {
      goto LABEL_59;
    }

    v72 = *(v64 - 3);
    v74 = *(v64 - 2);
    v73 = *(v64 - 1);
    v137 = *(v64 - 4);
    v71 = v137;
    v138 = v72;
    v139 = v74;
    v140 = v73;
    v141 = *v64;
    v75 = v141;
    sub_255F8EDA4(result, v67, v68, v69, v70);
    sub_255F8EDA4(v71, v72, v74, v73, v75);
    LOBYTE(v71) = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v142, &v137);
    sub_255F7A658(v137, v138, v139, v140, v141);
    result = sub_255F7A658(v142, v143, v144, v145, v146);
    if ((v71 & 1) == 0)
    {
      break;
    }

    ++v63;
    v64 += 40;
    v66 += 40;
    v62 = v136;
    if (v49 == v63)
    {
      sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
      sub_255F8ED44(v123, v125, v136, v127, v135, 0);
      v77 = v129;
      v76 = v133;
      v78 = v65;
      v79 = v134;
      v80 = v117;
      v81 = 0;
LABEL_44:
      sub_255F8ED44(v76, v77, v78, v79, v80, v81);
      v2 = v121;
      v3 = v122;
      v5 = v119;
      v4 = v120;
      goto LABEL_30;
    }
  }

  sub_255F815B4(v147, &qword_27F81B888, &qword_255F99230);
  sub_255F8ED44(v123, v125, v136, v127, v135, 0);
  v100 = v129;
  v99 = v133;
  v101 = v65;
  v102 = v134;
  v103 = v117;
  v104 = 0;
LABEL_48:
  sub_255F8ED44(v99, v100, v101, v102, v103, v104);
  return 0;
}

uint64_t sub_255F82958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_255F8EDA4(v21, v5, v6, v7, v8);
        sub_255F8EDA4(v9, v10, v11, v12, v13);
        v14 = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v21, &v16);
        sub_255F7A658(v16, v17, v18, v19, v20);
        sub_255F7A658(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_255F82A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_255F95990() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_255F82B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255F95990();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255F82BD0(uint64_t a1)
{
  v2 = sub_255F82DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F82C0C(uint64_t a1)
{
  v2 = sub_255F82DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F0, &qword_255F96DE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F82DEC();

  sub_255F95A20();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F8, &qword_255F96DE8);
  sub_255F83044(&qword_27F81B600, sub_255F82E40);
  sub_255F95950();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_255F82DEC()
{
  result = qword_27F81C110;
  if (!qword_27F81C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C110);
  }

  return result;
}

unint64_t sub_255F82E40()
{
  result = qword_27F81B608;
  if (!qword_27F81B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B608);
  }

  return result;
}

uint64_t StyleSheet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B610, &qword_255F96DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F82DEC();
  sub_255F95A10();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F8, &qword_255F96DE8);
    sub_255F83044(&qword_27F81B618, sub_255F830BC);
    sub_255F958D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_255F83044(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5F8, &qword_255F96DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F830BC()
{
  result = qword_27F81B620;
  if (!qword_27F81B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B620);
  }

  return result;
}

uint64_t sub_255F83188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x2D6567617373656DLL;
  v5 = 0xEB00000000786F62;
  v6 = 0x61632D6C6C616D73;
  v7 = 0xED00006E6F697470;
  if (a1 != 4)
  {
    v6 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1852793705;
  if (a1 != 1)
  {
    v8 = 1970169197;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E6F6974706163;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000786F62;
      if (v9 != 0x2D6567617373656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697470;
      if (v9 != 0x61632D6C6C616D73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007261;
      if (v9 != 0x622D737574617473)
      {
LABEL_34:
        v12 = sub_255F95990();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1852793705)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1970169197)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6974706163)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_255F8337C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 28005;
    }

    else
    {
      v3 = 30821;
    }

    v4 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 30832;
    }

    else
    {
      v3 = 37;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 37;
  v7 = 28005;
  if (a2 != 2)
  {
    v7 = 30821;
  }

  if (a2)
  {
    v6 = 30832;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255F95990();
  }

  return v10 & 1;
}

uint64_t sub_255F8346C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656772616C2D78;
  if (a1 != 5)
  {
    v5 = 0x656772616C2D7878;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a1 != 3)
  {
    v7 = 0x656772616CLL;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C6C616D732D78;
  if (a1 != 1)
  {
    v9 = 0x6C6C616D73;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D732D7878;
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
        if (v10 != 0x6C6C616D732D78)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6C6C616D73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6C6C616D732D7878)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656772616C2D78)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656772616C2D7878)
      {
LABEL_39:
        v13 = sub_255F95990();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6D756964656DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656772616CLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_255F83690(uint64_t a1)
{
  v2 = sub_255F8B11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F836CC(uint64_t a1)
{
  v2 = sub_255F8B11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83708(uint64_t a1)
{
  v2 = sub_255F8AF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83744(uint64_t a1)
{
  v2 = sub_255F8AF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83780()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x67696C4174786574;
  v4 = 1953394534;
  if (v1 != 4)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 1)
  {
    v5 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_255F8383C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255F8E6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255F83870(uint64_t a1)
{
  v2 = sub_255F8AF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F838AC(uint64_t a1)
{
  v2 = sub_255F8AF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F838E8(uint64_t a1)
{
  v2 = sub_255F8B1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83924(uint64_t a1)
{
  v2 = sub_255F8B1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83960(uint64_t a1)
{
  v2 = sub_255F8AFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F8399C(uint64_t a1)
{
  v2 = sub_255F8AFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F839D8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x79747265706F7270;
  }

  *v0;
  return result;
}

uint64_t sub_255F83A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F83AE8(uint64_t a1)
{
  v2 = sub_255F8B218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83B24(uint64_t a1)
{
  v2 = sub_255F8B218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83B60(uint64_t a1)
{
  v2 = sub_255F8B074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83B9C(uint64_t a1)
{
  v2 = sub_255F8B074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Rule.Declaration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B628, &qword_255F96DF8);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v44 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B630, &qword_255F96E00);
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B638, &qword_255F96E08);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B640, &qword_255F96E10);
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B648, &qword_255F96E18);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B650, &qword_255F96E20);
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B658, &qword_255F96E28);
  v63 = *(v67 - 8);
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v67);
  v24 = *v1;
  v60 = *(v1 + 8);
  v61 = v24;
  v25 = *(v1 + 24);
  v59 = *(v1 + 16);
  v44 = v25;
  v26 = *(v1 + 32);
  v28 = a1[3];
  v27 = a1[4];
  v29 = a1;
  v31 = &v44 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  sub_255F8AF24();
  sub_255F95A20();
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      LOBYTE(v64) = 3;
      sub_255F8B074();
      v38 = v50;
      v37 = v67;
      sub_255F95900();
      LOBYTE(v64) = v61;
      sub_255F8B0C8();
      v39 = v52;
      sub_255F95950();
      v40 = v51;
    }

    else
    {
      v37 = v67;
      if (v26 == 4)
      {
        LOBYTE(v64) = 4;
        sub_255F8AFCC();
        v38 = v53;
        sub_255F95900();
        v64 = v61;
        v65 = v60;
        v66 = v59;
        sub_255F8B020();
        v39 = v56;
        sub_255F95950();
        v40 = v54;
      }

      else
      {
        LOBYTE(v64) = 5;
        sub_255F8AF78();
        v38 = v55;
        sub_255F95900();
        v39 = v58;
        sub_255F95910();
        v40 = v57;
      }
    }

    v42 = *(v40 + 8);
    v43 = v38;
  }

  else
  {
    if (!v26)
    {
      LOBYTE(v64) = 0;
      sub_255F8B218();
      v37 = v67;
      sub_255F95900();
      LOBYTE(v64) = 0;
      v41 = v62;
      sub_255F95930();
      if (!v41)
      {
        LOBYTE(v64) = 1;
        sub_255F95930();
      }

      (*(v45 + 8))(v22, v19);
      return (*(v63 + 8))(v31, v37);
    }

    if (v26 == 1)
    {
      v32 = v61;
      v33 = HIDWORD(v61);
      LOBYTE(v64) = 1;
      sub_255F8B1C4();
      v34 = v67;
      sub_255F95900();
      v64 = __PAIR64__(v33, v32);
      LODWORD(v65) = v60;
      sub_255F8B170();
      v35 = v47;
      sub_255F95950();
      (*(v46 + 8))(v18, v35);
      return (*(v63 + 8))(v31, v34);
    }

    LOBYTE(v64) = 2;
    sub_255F8B11C();
    v37 = v67;
    sub_255F95900();
    v64 = v61;
    LODWORD(v65) = v60;
    BYTE4(v65) = BYTE4(v60) & 1;
    sub_255F8B170();
    v39 = v49;
    sub_255F95920();
    v42 = *(v48 + 8);
    v43 = v14;
  }

  v42(v43, v39);
  return (*(v63 + 8))(v31, v37);
}

uint64_t StyleSheet.Rule.Declaration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B678, &qword_255F96E30);
  v85 = *(v79 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v79);
  v88 = &v73 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B680, &qword_255F96E38);
  v86 = *(v84 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v87 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B688, &qword_255F96E40);
  v8 = *(v7 - 8);
  v82 = v7;
  v83 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B690, &qword_255F96E48);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v89 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B698, &qword_255F96E50);
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6A0, &qword_255F96E58);
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6A8, &qword_255F96E60);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_255F8AF24();
  v29 = v92;
  sub_255F95A10();
  v30 = v29;
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v31 = v17;
  v74 = v18;
  v33 = v89;
  v32 = v90;
  v75 = v23;
  v34 = v91;
  v92 = v22;
  v35 = sub_255F958F0();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v39 = sub_255F957D0();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68) + 48);
    *v41 = &type metadata for StyleSheet.Rule.Declaration;
    v43 = v26;
    v44 = v92;
    sub_255F95880();
    sub_255F957C0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v75 + 8))(v43, v44);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v73 = v35;
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      LOBYTE(v93) = 3;
      sub_255F8B074();
      v51 = v92;
      sub_255F95870();
      sub_255F8B2C0();
      v57 = v82;
      sub_255F958D0();
      v58 = v75;
      v76 = 0;
      (*(v83 + 8))(v32, v57);
      (*(v58 + 8))(v26, v51);
      swift_unknownObjectRelease();
      v70 = 0;
      v68 = 0;
      v69 = v93;
    }

    else
    {
      v45 = v92;
      if (v36 == 4)
      {
        LOBYTE(v93) = 4;
        sub_255F8AFCC();
        v46 = v87;
        sub_255F95870();
        sub_255F8B26C();
        v47 = v84;
        sub_255F958D0();
        v76 = 0;
        (*(v86 + 8))(v46, v47);
        (*(v75 + 8))(v26, v45);
        swift_unknownObjectRelease();
        v68 = 0;
        v69 = v93;
        v70 = v94;
        v30 = v95;
      }

      else
      {
        LOBYTE(v93) = 5;
        sub_255F8AF78();
        v53 = v88;
        sub_255F95870();
        v54 = v79;
        v55 = sub_255F95890();
        v30 = 0;
        v70 = v66;
        v76 = 0;
        v67 = v55;
        (*(v85 + 8))(v53, v54);
        (*(v75 + 8))(v26, v45);
        swift_unknownObjectRelease();
        v69 = v67;
        v68 = 0;
      }

      v34 = v91;
    }
  }

  else if (v36)
  {
    if (v36 == 1)
    {
      LOBYTE(v93) = 1;
      sub_255F8B1C4();
      v37 = v26;
      v38 = v92;
      sub_255F95870();
      sub_255F8B314();
      v59 = v78;
      sub_255F958D0();
      v76 = 0;
      (*(v77 + 8))(v31, v59);
      (*(v75 + 8))(v37, v38);
      swift_unknownObjectRelease();
      v68 = 0;
      v69 = v93;
      v70 = v94;
    }

    else
    {
      LOBYTE(v93) = 2;
      sub_255F8B11C();
      v52 = v92;
      sub_255F95870();
      sub_255F8B314();
      v60 = v81;
      sub_255F958A0();
      v61 = v75;
      v76 = 0;
      (*(v80 + 8))(v33, v60);
      (*(v61 + 8))(v26, v52);
      swift_unknownObjectRelease();
      v68 = 0;
      v69 = v93;
      v71 = 0x100000000;
      if (!BYTE4(v94))
      {
        v71 = 0;
      }

      v70 = v71 | v94;
    }
  }

  else
  {
    LOBYTE(v93) = 0;
    sub_255F8B218();
    v48 = v21;
    sub_255F95870();
    LOBYTE(v93) = 0;
    v49 = v74;
    v50 = sub_255F958B0();
    v70 = v62;
    v89 = v50;
    v90 = v26;
    LOBYTE(v93) = 1;
    v63 = sub_255F958B0();
    v64 = (v76 + 8);
    v65 = (v75 + 8);
    v76 = 0;
    v30 = v63;
    v68 = v72;
    (*v64)(v48, v49);
    (*v65)(v90, v92);
    swift_unknownObjectRelease();
    v69 = v89;
  }

  *v34 = v69;
  *(v34 + 8) = v70;
  *(v34 + 16) = v30;
  *(v34 + 24) = v68;
  *(v34 + 32) = v36;
  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t sub_255F84FE4()
{
  v1 = 0x6564756C657270;
  if (*v0 != 1)
  {
    v1 = 0x746172616C636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_255F8504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255F8E90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255F85080(uint64_t a1)
{
  v2 = sub_255F8B718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F850BC(uint64_t a1)
{
  v2 = sub_255F8B718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F850F8()
{
  if (*v0)
  {
    return 0x726F7779654B7461;
  }

  else
  {
    return 0x656966696C617571;
  }
}

uint64_t sub_255F85130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656966696C617571 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7779654B7461 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F85214(uint64_t a1)
{
  v2 = sub_255F8B6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F85250(uint64_t a1)
{
  v2 = sub_255F8B6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F8528C()
{
  if (*v0)
  {
    result = 0x746172616C636564;
  }

  else
  {
    result = 0x726F7463656C6573;
  }

  *v0;
  return result;
}

uint64_t sub_255F852D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEC000000736E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F853B0(uint64_t a1)
{
  v2 = sub_255F8B838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F853EC(uint64_t a1)
{
  v2 = sub_255F8B838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Rule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6D0, &qword_255F96E70);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6D8, &qword_255F96E78);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6E0, &unk_255F96E80);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = v1[1];
  v31 = *v1;
  v15 = v1[2];
  v24[1] = v1[3];
  v25 = v15;
  v24[0] = v1[4];
  v16 = *(v1 + 40);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B6C4();
  sub_255F95A20();
  if (v16)
  {
    LOBYTE(v35) = 1;
    sub_255F8B718();
    v18 = v28;
    sub_255F95900();
    LOBYTE(v35) = 0;
    v19 = v30;
    v20 = v32;
    sub_255F95930();
    if (!v20)
    {
      LOBYTE(v35) = 1;
      sub_255F95930();
      v35 = v24[0];
      v34 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
      sub_255F8B76C(&qword_27F81B6E8, sub_255F8B7E4);
      sub_255F95950();
    }

    (*(v29 + 8))(v18, v19);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_255F8B838();
    sub_255F95900();
    LOBYTE(v35) = 0;
    v21 = v32;
    v22 = v27;
    sub_255F95930();
    if (!v21)
    {
      v35 = v25;
      v34 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
      sub_255F8B76C(&qword_27F81B6E8, sub_255F8B7E4);
      sub_255F95950();
    }

    (*(v26 + 8))(v9, v22);
  }

  return (*(v33 + 8))(v13, v10);
}

uint64_t StyleSheet.Rule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6F8, &qword_255F96E90);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B700, &qword_255F96E98);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B708, &qword_255F96EA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_255F8B6C4();
  v18 = v49;
  sub_255F95A10();
  if (!v18)
  {
    v44 = v7;
    v19 = v48;
    v20 = sub_255F958F0();
    if (*(v20 + 16) == 1)
    {
      v49 = v15;
      v21 = *(v20 + 32);
      if (v21)
      {
        v43 = *(v20 + 32);
        LOBYTE(v52) = 1;
        sub_255F8B718();
        sub_255F95870();
        LOBYTE(v52) = 0;
        v22 = v19;
        v23 = sub_255F958B0();
        v25 = v24;
        v42 = v23;
        LOBYTE(v52) = 1;
        v26 = sub_255F958B0();
        v36 = v35;
        v46 = v25;
        v37 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
        v51 = 2;
        sub_255F8B76C(&qword_27F81B710, sub_255F8B88C);
        sub_255F958D0();
        v38 = v36;
        (*(v47 + 8))(v6, v22);
        (*(v12 + 8))(v49, v11);
        swift_unknownObjectRelease();
        v39 = v52;
        v40 = v46;
      }

      else
      {
        LOBYTE(v52) = 0;
        sub_255F8B838();
        v32 = v10;
        sub_255F95870();
        LOBYTE(v52) = 0;
        v33 = v44;
        v42 = sub_255F958B0();
        v40 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
        v51 = 1;
        sub_255F8B76C(&qword_27F81B710, sub_255F8B88C);
        sub_255F958D0();
        v43 = v21;
        (*(v46 + 8))(v32, v33);
        (*(v12 + 8))(v49, v11);
        swift_unknownObjectRelease();
        v38 = 0;
        v39 = 0;
        v37 = v52;
      }

      v41 = v45;
      *v45 = v42;
      v41[1] = v40;
      v41[2] = v37;
      v41[3] = v38;
      v41[4] = v39;
      *(v41 + 40) = v43;
    }

    else
    {
      v27 = sub_255F957D0();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68) + 48);
      *v29 = &type metadata for StyleSheet.Rule;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

LinkPresentationStyleSheetParsing::StyleSheet __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StyleSheet.init(css:)(Swift::String css)
{
  object = css._object;
  countAndFlagsBits = css._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for Tokenizer();
  v10 = Tokenizer.__allocating_init(source:)(countAndFlagsBits, object);

  TokenParser.init<A>(using:)(&v10, v6, &protocol witness table for Tokenizer, v9);
  v7 = TokenParser.parse()();
  sub_255F79B84(v9);

  if (!v2)
  {
    *v5 = v7;
  }

  return result;
}

uint64_t StyleSheet.Color.init(red:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

int8x8_t StyleSheet.Color.init(value:)@<D0>(unsigned int a1@<W0>, int8x8_t *a2@<X8>)
{
  result = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  *a2 = result;
  a2[1].i32[0] = a1;
  return result;
}

uint64_t sub_255F8606C()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_255F860B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255F8EA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255F860DC(uint64_t a1)
{
  v2 = sub_255F8B8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F86118(uint64_t a1)
{
  v2 = sub_255F8B8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B720, &qword_255F96EA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B8E0();
  sub_255F95A20();
  v15 = 0;
  sub_255F95960();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_255F95960();
  v13 = 2;
  sub_255F95960();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Color.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B728, &qword_255F96EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B8E0();
  sub_255F95A10();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_255F958E0();
    v18 = 1;
    v16 = sub_255F958E0();
    v17 = 2;
    v13 = sub_255F958E0();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

LinkPresentationStyleSheetParsing::StyleSheet::TextAlign_optional __swiftcall StyleSheet.TextAlign.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.TextAlign.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_255F865DC()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86670()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86780()
{
  *v0;
  *v0;
  sub_255F954D0();
}

uint64_t sub_255F86800()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86890()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F869A4()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F86ABC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255F86B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255F95990();
  }

  return v11 & 1;
}

void StyleSheet.Font.Specified.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StyleSheet.Font.Specified.init(size:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_255F86D30()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x656C797473;
  v4 = 0x746E6169726176;
  if (v1 != 3)
  {
    v4 = 0x796C696D6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696577;
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

uint64_t sub_255F86DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255F8EB44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255F86DEC(uint64_t a1)
{
  v2 = sub_255F8B934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F86E28(uint64_t a1)
{
  v2 = sub_255F8B934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Specified.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B730, &qword_255F96EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v24 = *(v1 + 9);
  v10 = *(v1 + 10);
  v19 = *(v1 + 11);
  v20 = v10;
  v18 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B934();
  sub_255F95A20();
  v22 = v8;
  v23 = v9;
  v25 = 0;
  sub_255F8B988();
  v12 = v21;
  sub_255F95920();
  if (!v12)
  {
    v14 = v19;
    v13 = v20;
    v15 = v18;
    LOBYTE(v22) = v24;
    v25 = 1;
    sub_255F8B9DC();
    sub_255F95920();
    LOBYTE(v22) = v13;
    v25 = 2;
    sub_255F8BA30();
    sub_255F95920();
    LOBYTE(v22) = v14;
    v25 = 3;
    sub_255F8BA84();
    sub_255F95920();
    v22 = v15;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    sub_255F8BC28(&qword_27F81B758);
    sub_255F95920();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StyleSheet.Font.Specified.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B760, &qword_255F96EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B934();
  sub_255F95A10();
  if (!v2)
  {
    v20 = 0;
    sub_255F8BAD8();
    sub_255F958A0();
    v11 = v17;
    v12 = v18;
    v20 = 1;
    sub_255F8BB2C();
    sub_255F958A0();
    v16 = v11;
    LODWORD(v11) = v17;
    v20 = 2;
    sub_255F8BB80();
    sub_255F958A0();
    v19 = v11;
    LOBYTE(v11) = v17;
    v20 = 3;
    sub_255F8BBD4();
    sub_255F958A0();
    HIDWORD(v15) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    v20 = 4;
    sub_255F8BC28(&qword_27F81B788);
    sub_255F958A0();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 8) = v12;
    *(a2 + 9) = v19;
    *(a2 + 10) = v11;
    *(a2 + 11) = BYTE4(v15);
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Weight_optional __swiftcall StyleSheet.Font.Weight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Weight.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 1684828002;
      break;
    case 2:
      result = 0x7265646C6F62;
      break;
    case 3:
      result = 0x7265746867696CLL;
      break;
    case 4:
      result = 3158065;
      break;
    case 5:
      result = 3158066;
      break;
    case 6:
      result = 3158067;
      break;
    case 7:
      result = 3158068;
      break;
    case 8:
      result = 3158069;
      break;
    case 9:
      result = 3158070;
      break;
    case 0xA:
      result = 3158071;
      break;
    case 0xB:
      result = 3158072;
      break;
    case 0xC:
      result = 3158073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255F875A0()
{
  v1 = *v0;
  sub_255F959E0();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F87608()
{
  v2 = *v0;
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();
}

uint64_t sub_255F8766C()
{
  v1 = *v0;
  sub_255F959E0();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F876DC@<X0>(uint64_t *a1@<X8>)
{
  result = StyleSheet.Font.Weight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_255F87704(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StyleSheet.Font.Weight.rawValue.getter();
  v4 = v3;
  if (v2 == StyleSheet.Font.Weight.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255F95990();
  }

  return v7 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Size::Unit_optional __swiftcall StyleSheet.Font.Size.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Unit.rawValue.getter()
{
  v1 = 37;
  v2 = 28005;
  if (*v0 != 2)
  {
    v2 = 30821;
  }

  if (*v0)
  {
    v1 = 30832;
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

uint64_t sub_255F878F4()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F87984()
{
  *v0;
  *v0;
  *v0;
  sub_255F954D0();
}

uint64_t sub_255F87A00()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F87A98(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 37;
  v4 = 28005;
  if (*v1 != 2)
  {
    v4 = 30821;
  }

  if (*v1)
  {
    v3 = 30832;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Size::Absolute_optional __swiftcall StyleSheet.Font.Size.Absolute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Absolute.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C616D732D7878;
  v3 = 0x656772616C2D78;
  if (v1 != 5)
  {
    v3 = 0x656772616C2D7878;
  }

  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D732D78;
  if (v1 != 1)
  {
    v5 = 0x6C6C616D73;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_255F87CD4()
{
  *v0;
  *v0;
  *v0;
  sub_255F954D0();
}

void sub_255F87DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C6C616D732D7878;
  v5 = 0xE700000000000000;
  v6 = 0x656772616C2D78;
  if (v2 != 5)
  {
    v6 = 0x656772616C2D7878;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C616D732D78;
  if (v2 != 1)
  {
    v10 = 0x6C6C616D73;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t static StyleSheet.Font.Size.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v4 == v6)
    {
      return sub_255F8337C(v5, v7);
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return sub_255F8346C(LOBYTE(v4), LOBYTE(v6));
}

uint64_t sub_255F87FC0(uint64_t a1)
{
  v2 = sub_255F8BCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F87FFC(uint64_t a1)
{
  v2 = sub_255F8BCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F88038()
{
  if (*v0)
  {
    result = 0x6574756C6F736261;
  }

  else
  {
    result = 0x6569666963657073;
  }

  *v0;
  return result;
}

uint64_t sub_255F88078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569666963657073 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F8815C(uint64_t a1)
{
  v2 = sub_255F8BC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F88198(uint64_t a1)
{
  v2 = sub_255F8BC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F881D4()
{
  if (*v0)
  {
    result = 1953066613;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_255F88204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F882DC(uint64_t a1)
{
  v2 = sub_255F8BD90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F88318(uint64_t a1)
{
  v2 = sub_255F8BD90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Size.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B790, &qword_255F96ED0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B798, &qword_255F96ED8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7A0, &qword_255F96EE0);
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v24 - v12;
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8BC94();
  sub_255F95A20();
  if (v15 < 0)
  {
    v36 = 1;
    sub_255F8BCE8();
    v21 = v24;
    v22 = v30;
    sub_255F95900();
    v35 = v14;
    sub_255F8BD3C();
    v23 = v26;
    sub_255F95950();
    (*(v25 + 8))(v21, v23);
    return (*(v10 + 8))(v13, v22);
  }

  else
  {
    v34 = 0;
    sub_255F8BD90();
    v17 = v30;
    sub_255F95900();
    v33 = 0;
    v19 = v28;
    v18 = v29;
    sub_255F95940();
    if (!v18)
    {
      v32 = v15;
      v31 = 1;
      sub_255F8BDE4();
      sub_255F95950();
    }

    (*(v27 + 8))(v9, v19);
    return (*(v10 + 8))(v13, v17);
  }
}

uint64_t StyleSheet.Font.Size.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7B8, &qword_255F96EE8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7C0, &qword_255F96EF0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7C8, &qword_255F96EF8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_255F8BC94();
  v19 = v40;
  sub_255F95A10();
  if (!v19)
  {
    v40 = v13;
    v20 = v39;
    v21 = sub_255F958F0();
    if (*(v21 + 16) == 1)
    {
      if (*(v21 + 32))
      {
        v47 = 1;
        sub_255F8BCE8();
        v22 = v7;
        sub_255F95870();
        v23 = v20;
        sub_255F8BE38();
        v24 = v36;
        sub_255F958D0();
        (*(v37 + 8))(v22, v24);
        (*(v40 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v25 = v46;
        v26 = 0x80;
      }

      else
      {
        v45 = 0;
        sub_255F8BD90();
        sub_255F95870();
        v44 = 0;
        sub_255F958C0();
        v32 = v40;
        v34 = v33;
        v42 = 1;
        sub_255F8BE8C();
        sub_255F958D0();
        (*(v38 + 8))(v11, v8);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v26 = v43;
        v25 = v34;
        v23 = v20;
      }

      *v23 = v25;
      *(v23 + 8) = v26;
    }

    else
    {
      v27 = sub_255F957D0();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68) + 48);
      *v29 = &type metadata for StyleSheet.Font.Size;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v40 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_255F88BE8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v4 == v6)
    {
      return sub_255F8337C(v5, v7);
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return sub_255F8346C(LOBYTE(v4), LOBYTE(v6));
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Style_optional __swiftcall StyleSheet.Font.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Style.rawValue.getter()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x657571696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_255F88D14()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F88DB0()
{
  *v0;
  *v0;
  sub_255F954D0();
}

uint64_t sub_255F88E38()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F88EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255F88F34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x63696C617469;
  if (*a2 != 1)
  {
    v8 = 0x657571696C626FLL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255F95990();
  }

  return v11 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Variant_optional __swiftcall StyleSheet.Font.Variant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Variant.rawValue.getter()
{
  if (*v0)
  {
    result = 0x61632D6C6C616D73;
  }

  else
  {
    result = 0x6C616D726F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_255F89178()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F891FC()
{
  *v0;
  sub_255F954D0();
}

uint64_t sub_255F8926C()
{
  v1 = *v0;
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F892EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255F95860();

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

void sub_255F8934C(uint64_t *a1@<X8>)
{
  v2 = 0x6C616D726F6ELL;
  if (*v1)
  {
    v2 = 0x61632D6C6C616D73;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007370;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255F8938C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61632D6C6C616D73;
  }

  else
  {
    v4 = 0x6C616D726F6ELL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000007370;
  }

  if (*a2)
  {
    v6 = 0x61632D6C6C616D73;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007370;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255F95990();
  }

  return v9 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::System_optional __swiftcall StyleSheet.Font.System.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.System.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x2D6567617373656DLL;
  v4 = 0x61632D6C6C616D73;
  if (v1 != 4)
  {
    v4 = 0x622D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 1970169197;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_255F8960C()
{
  *v0;
  *v0;
  *v0;
  sub_255F954D0();
}

void sub_255F89718(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974706163;
  v5 = 0xEB00000000786F62;
  v6 = 0x2D6567617373656DLL;
  v7 = 0xED00006E6F697470;
  v8 = 0x61632D6C6C616D73;
  if (v2 != 4)
  {
    v8 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1852793705;
  if (v2 != 1)
  {
    v9 = 1970169197;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
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

uint64_t sub_255F8989C()
{
  if (*v0)
  {
    result = 0x6D6574737973;
  }

  else
  {
    result = 0x6569666963657073;
  }

  *v0;
  return result;
}

uint64_t sub_255F898D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569666963657073 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255F899C4(uint64_t a1)
{
  v2 = sub_255F8BEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89A00(uint64_t a1)
{
  v2 = sub_255F8BEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F89A3C(uint64_t a1)
{
  v2 = sub_255F8BFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89A78(uint64_t a1)
{
  v2 = sub_255F8BFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F89AB4()
{
  sub_255F959E0();
  MEMORY[0x259C54570](0);
  return sub_255F95A00();
}

uint64_t sub_255F89AF8()
{
  sub_255F959E0();
  MEMORY[0x259C54570](0);
  return sub_255F95A00();
}

uint64_t sub_255F89B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255F95990();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255F89BBC(uint64_t a1)
{
  v2 = sub_255F8BF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89BF8(uint64_t a1)
{
  v2 = sub_255F8BF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7E0, &qword_255F96F00);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7E8, &qword_255F96F08);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7F0, &qword_255F96F10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = v1[1];
  v27 = *v1;
  v24 = v1[2];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8BEE0();
  sub_255F95A20();
  if (v15 < 0)
  {
    LOBYTE(v28) = 1;
    sub_255F8BF34();
    v18 = v21;
    sub_255F95900();
    LOBYTE(v28) = v27;
    sub_255F8BF88();
    v19 = v23;
    sub_255F95950();
    (*(v22 + 8))(v18, v19);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_255F8BFDC();
    sub_255F95900();
    v28 = v27;
    v29 = v15;
    v30 = BYTE2(v15);
    v31 = BYTE3(v15);
    v32 = v24;
    sub_255F8C030();
    v17 = v26;
    sub_255F95950();
    (*(v25 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t StyleSheet.Font.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B808, &qword_255F96F18);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B810, &qword_255F96F20);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B818, &qword_255F96F28);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_255F8BEE0();
  v18 = v38;
  sub_255F95A10();
  if (!v18)
  {
    v38 = v7;
    v19 = v12;
    v20 = v36;
    v21 = v37;
    v22 = sub_255F958F0();
    if (*(v22 + 16) == 1)
    {
      v33[1] = v22;
      if (*(v22 + 32))
      {
        LOBYTE(v39) = 1;
        sub_255F8BF34();
        sub_255F95870();
        sub_255F8C084();
        sub_255F958D0();
        (*(v35 + 8))(v6, v20);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v23 = 0;
        v24 = v39;
        v25 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v39) = 0;
        sub_255F8BFDC();
        v30 = v10;
        sub_255F95870();
        sub_255F8C0D8();
        v32 = v38;
        sub_255F958D0();
        (*(v34 + 8))(v30, v32);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v24 = v39;
        v25 = v40;
        v23 = v41;
      }

      *v21 = v24;
      v21[1] = v25;
      v21[2] = v23;
    }

    else
    {
      v26 = sub_255F957D0();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68) + 48);
      *v28 = &type metadata for StyleSheet.Font;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v19 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

BOOL _s33LinkPresentationStyleSheetParsing0cD0V4FontO9SpecifiedV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = *(a1 + 16);
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 11);
  v12 = *(a2 + 16);
  if (v3 > 0xFB)
  {
    if (v8 <= 0xFB)
    {
      return 0;
    }

LABEL_3:
    if (v4 == 13)
    {
      if (v9 != 13)
      {
        return 0;
      }
    }

    else
    {
      if (v9 == 13)
      {
        return 0;
      }

      v16 = StyleSheet.Font.Weight.rawValue.getter();
      v18 = v17;
      if (v16 == StyleSheet.Font.Weight.rawValue.getter() && v18 == v19)
      {

        if (v5 == 3)
        {
LABEL_6:
          if (v10 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        }

LABEL_20:
        if (v10 == 3)
        {
          return 0;
        }

        v20 = 0xE600000000000000;
        v21 = 0x63696C617469;
        if (v5 != 1)
        {
          v21 = 0x657571696C626FLL;
          v20 = 0xE700000000000000;
        }

        if (v5)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0x6C616D726F6ELL;
        }

        if (v5)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0xE600000000000000;
        }

        v24 = 0xE600000000000000;
        v25 = 0x63696C617469;
        if (v10 != 1)
        {
          v25 = 0x657571696C626FLL;
          v24 = 0xE700000000000000;
        }

        if (v10)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0x6C616D726F6ELL;
        }

        if (v10)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0xE600000000000000;
        }

        if (v22 == v26 && v23 == v27)
        {

          if (v6 == 2)
          {
LABEL_8:
            if (v11 != 2)
            {
              return 0;
            }

LABEL_64:
            if (v7)
            {
              return v12 && (sub_255F82A6C(v7, v12) & 1) != 0;
            }

            return !v12;
          }

LABEL_40:
          if (v11 == 2)
          {
            return 0;
          }

          if (v6)
          {
            v28 = 0x61632D6C6C616D73;
          }

          else
          {
            v28 = 0x6C616D726F6ELL;
          }

          if (v6)
          {
            v29 = 0xEA00000000007370;
          }

          else
          {
            v29 = 0xE600000000000000;
          }

          if (v11)
          {
            v30 = 0x61632D6C6C616D73;
          }

          else
          {
            v30 = 0x6C616D726F6ELL;
          }

          if (v11)
          {
            v31 = 0xEA00000000007370;
          }

          else
          {
            v31 = 0xE600000000000000;
          }

          if (v28 == v30 && v29 == v31)
          {
          }

          else
          {
            v34 = sub_255F95990();

            if ((v34 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_64;
        }

        v33 = sub_255F95990();

        if ((v33 & 1) == 0)
        {
          return 0;
        }

LABEL_7:
        if (v6 == 2)
        {
          goto LABEL_8;
        }

        goto LABEL_40;
      }

      v32 = sub_255F95990();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    if (v5 == 3)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 > 0xFB)
  {
    return 0;
  }

  v13 = *a1;
  v14 = *a2;
  if ((v3 & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || (sub_255F8346C(*a1, LOBYTE(v14)) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  result = 0;
  if ((v8 & 0x80) == 0 && v13 == v14)
  {
    if ((sub_255F8337C(v3, v8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4FontO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v2 < 0)
  {
    if (v5 < 0)
    {
      v8 = sub_255F83188(*a1, *a2);
      sub_255F7A6D4(v3, v2);
      sub_255F7A6D4(v6, v5);
      return v8 & 1;
    }

LABEL_7:
    sub_255F8EE20(v6, v5);
    sub_255F7A6D4(v3, v2);
    sub_255F7A6D4(v6, v5);
    v8 = 0;
    return v8 & 1;
  }

  if (v5 < 0)
  {
    v9 = a1[2];

    goto LABEL_7;
  }

  v15 = a2[2];
  v16 = v3;
  v17 = v2;
  v18 = BYTE2(v2);
  v19 = BYTE3(v2);
  v20 = v4;
  v11 = v6;
  v12 = v5;
  v13 = BYTE2(v5);
  v14 = BYTE3(v5);
  sub_255F8EE20(v6, v5);
  sub_255F8EE20(v3, v2);
  sub_255F8EE20(v3, v2);
  sub_255F8EE20(v6, v5);
  v8 = _s33LinkPresentationStyleSheetParsing0cD0V4FontO9SpecifiedV2eeoiySbAG_AGtFZ_0(&v16, &v11);
  sub_255F7A6D4(v3, v2);
  sub_255F7A6D4(v6, v5);
  sub_255F7A6D4(v6, v5);
  sub_255F7A6D4(v3, v2);
  return v8 & 1;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v34[0] = *a1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v4;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v10;
  v39 = v9;
  v40 = v11;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v11 == 1)
        {
          sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
          v13 = v2 == v7 && v3 == v8;
          return v13 & 1;
        }

        goto LABEL_48;
      }

      if (v11 == 2)
      {
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        if ((v3 & 0x100000000) != 0)
        {
          if ((v8 & 0x100000000) == 0)
          {
            goto LABEL_50;
          }
        }

        else if ((v8 & 0x100000000) != 0 || v2 != v7 || v3 != v8)
        {
          goto LABEL_50;
        }

        goto LABEL_72;
      }

LABEL_48:
      v24 = v7;
      v25 = v8;
      v26 = v10;
      v27 = v9;
      v28 = v11;
LABEL_49:
      sub_255F8EDA4(v24, v25, v26, v27, v28);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
LABEL_50:
      v13 = 0;
      return v13 & 1;
    }

    if (v11)
    {

LABEL_47:

      goto LABEL_48;
    }

    if ((v2 != v7 || v3 != v8) && (sub_255F95990() & 1) == 0)
    {
      sub_255F8EDA4(v7, v8, v10, v9, 0);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v4;
      v28 = 0;
      goto LABEL_49;
    }

    if (v5 != v10 || v4 != v9)
    {
      v13 = sub_255F95990();
      sub_255F8EDA4(v7, v8, v10, v9, 0);
      sub_255F8EDA4(v2, v3, v5, v4, 0);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      return v13 & 1;
    }

    sub_255F8EDA4(v7, v8, v5, v4, 0);
    v19 = v2;
    v20 = v3;
    v21 = v5;
    v22 = v4;
    v23 = 0;
    goto LABEL_58;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      if (v11 == 4)
      {
        v33[0] = v2;
        v33[1] = v3;
        v33[2] = v5;
        v32[0] = v7;
        v32[1] = v8;
        v32[2] = v10;
        sub_255F8EDA4(v7, v8, v10, v9, 4);
        sub_255F8EDA4(v2, v3, v5, v4, 4);
        sub_255F8EDA4(v7, v8, v10, v9, 4);
        sub_255F8EDA4(v2, v3, v5, v4, 4);
        v13 = _s33LinkPresentationStyleSheetParsing0cD0V4FontO2eeoiySbAE_AEtFZ_0(v33, v32);
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        sub_255F7A658(v7, v8, v10, v9, 4);
        sub_255F7A658(v2, v3, v5, v4, 4);
        return v13 & 1;
      }

      sub_255F8EE20(v2, v3);
      goto LABEL_48;
    }

    if (v11 != 5)
    {
      goto LABEL_47;
    }

    if (v3)
    {
      if (!v8)
      {
        sub_255F8EDA4(v7, 0, v10, v9, 5);
        sub_255F8EDA4(v7, 0, v10, v9, 5);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 5;
        goto LABEL_49;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_255F8EDA4(v2, v3, v10, v9, 5);
        v19 = v2;
        v20 = v3;
        v21 = v5;
        v22 = v4;
        v23 = 5;
LABEL_58:
        sub_255F8EDA4(v19, v20, v21, v22, v23);
LABEL_67:
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        v13 = 1;
        return v13 & 1;
      }

      v31 = sub_255F95990();
      sub_255F8EDA4(v7, v8, v10, v9, 5);
      sub_255F8EDA4(v2, v3, v5, v4, 5);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      if ((v31 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {

      sub_255F8EDA4(v7, v8, v10, v9, 5);
      sub_255F8EDA4(v2, 0, v5, v4, 5);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      if (v8)
      {
        sub_255F7A658(v7, v8, v10, v9, 5);
        goto LABEL_50;
      }
    }

LABEL_72:
    v13 = 1;
    return v13 & 1;
  }

  if (v11 != 3)
  {
    goto LABEL_48;
  }

  if (!v2)
  {
    v15 = 0xE400000000000000;
    v14 = 1952867692;
    v16 = v7;
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_64:
    v18 = 0xE400000000000000;
    if (v14 != 1952867692)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (v2 == 1)
  {
    v14 = 0x7265746E6563;
  }

  else
  {
    v14 = 0x7468676972;
  }

  if (v2 == 1)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v7;
  if (!v7)
  {
    goto LABEL_64;
  }

LABEL_26:
  if (v16 == 1)
  {
    v17 = 0x7265746E6563;
  }

  else
  {
    v17 = 0x7468676972;
  }

  if (v16 == 1)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (v14 != v17)
  {
    goto LABEL_68;
  }

LABEL_65:
  if (v15 == v18)
  {

    goto LABEL_67;
  }

LABEL_68:
  v30 = sub_255F95990();

  sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
  return v30 & 1;
}

unint64_t sub_255F8AF24()
{
  result = qword_27F81C118;
  if (!qword_27F81C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C118);
  }

  return result;
}

unint64_t sub_255F8AF78()
{
  result = qword_27F81C120;
  if (!qword_27F81C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C120);
  }

  return result;
}

unint64_t sub_255F8AFCC()
{
  result = qword_27F81C128;
  if (!qword_27F81C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C128);
  }

  return result;
}

unint64_t sub_255F8B020()
{
  result = qword_27F81B660;
  if (!qword_27F81B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B660);
  }

  return result;
}

unint64_t sub_255F8B074()
{
  result = qword_27F81C130;
  if (!qword_27F81C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C130);
  }

  return result;
}

unint64_t sub_255F8B0C8()
{
  result = qword_27F81B668;
  if (!qword_27F81B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B668);
  }

  return result;
}

unint64_t sub_255F8B11C()
{
  result = qword_27F81C138;
  if (!qword_27F81C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C138);
  }

  return result;
}

unint64_t sub_255F8B170()
{
  result = qword_27F81B670;
  if (!qword_27F81B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B670);
  }

  return result;
}

unint64_t sub_255F8B1C4()
{
  result = qword_27F81C140;
  if (!qword_27F81C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C140);
  }

  return result;
}

unint64_t sub_255F8B218()
{
  result = qword_27F81C148;
  if (!qword_27F81C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C148);
  }

  return result;
}

unint64_t sub_255F8B26C()
{
  result = qword_27F81B6B8;
  if (!qword_27F81B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B6B8);
  }

  return result;
}

unint64_t sub_255F8B2C0()
{
  result = qword_27F81B6C0;
  if (!qword_27F81B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B6C0);
  }

  return result;
}

unint64_t sub_255F8B314()
{
  result = qword_27F81B6C8;
  if (!qword_27F81B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B6C8);
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4RuleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v32 = v8;
  v33 = *a2;
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      v24 = *a1;
      v25 = *(a1 + 8);
      if (v2 == v9 && v3 == v8 || (v26 = *a2, v27 = *(a2 + 8), v28 = sub_255F95990(), v9 = v26, v8 = v27, (v28 & 1) != 0))
      {
        sub_255F8ECE8(v9, v8, v10, v11, v12, 0);
        v2 = v24;
        sub_255F8ECE8(v24, v25, v5, v4, v6, 0);
        v29 = sub_255F82958(v5, v10);
        v22 = v4;
        v23 = v29;
        v7 = 0;
        v3 = v25;
        v13 = 0;
        goto LABEL_22;
      }

      sub_255F8ECE8(v26, v27, v10, v11, v12, 0);
      v2 = v24;
      sub_255F8ECE8(v24, v25, v5, v4, v6, 0);
      v7 = 0;
      v3 = v25;
      v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    sub_255F8ECE8(v9, v8, v10, v11, v12, v13);
    sub_255F8ECE8(v2, v3, v5, v4, v6, v7);
LABEL_12:
    v22 = v4;
    v23 = 0;
    goto LABEL_22;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    goto LABEL_11;
  }

  v31 = *(a1 + 32);
  if (v2 == v9 && v3 == v8 || (v14 = *a2, v15 = *(a2 + 8), v16 = sub_255F95990(), v9 = v14, v8 = v15, (v16 & 1) != 0))
  {
    v17 = v5;
    if (v5 == v10 && v4 == v11 || (v18 = v9, v19 = v8, v20 = sub_255F95990(), v9 = v18, v8 = v19, (v20 & 1) != 0))
    {
      v7 = 1;
      sub_255F8ECE8(v9, v8, v10, v11, v12, 1);
      sub_255F8ECE8(v2, v3, v17, v4, v6, 1);
      v21 = sub_255F82958(v6, v12);
      v22 = v4;
      v23 = v21;
    }

    else
    {
      v7 = 1;
      sub_255F8ECE8(v18, v8, v10, v11, v12, 1);
      sub_255F8ECE8(v2, v3, v17, v4, v6, 1);
      v22 = v4;
      v23 = 0;
    }

    v5 = v17;
  }

  else
  {
    v7 = 1;
    sub_255F8ECE8(v14, v8, v10, v11, v12, 1);
    sub_255F8ECE8(v2, v3, v5, v4, v6, 1);
    v22 = v4;
    v23 = 0;
  }

  v13 = 1;
LABEL_22:
  sub_255F8ED44(v2, v3, v5, v22, v6, v7);
  sub_255F8ED44(v33, v32, v10, v11, v12, v13);
  return v23 & 1;
}

unint64_t sub_255F8B6C4()
{
  result = qword_27F81C150;
  if (!qword_27F81C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C150);
  }

  return result;
}

unint64_t sub_255F8B718()
{
  result = qword_27F81C158;
  if (!qword_27F81C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C158);
  }

  return result;
}

uint64_t sub_255F8B76C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5E8, &qword_255F96CB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F8B7E4()
{
  result = qword_27F81B6F0;
  if (!qword_27F81B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B6F0);
  }

  return result;
}

unint64_t sub_255F8B838()
{
  result = qword_27F81C160;
  if (!qword_27F81C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C160);
  }

  return result;
}

unint64_t sub_255F8B88C()
{
  result = qword_27F81B718;
  if (!qword_27F81B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B718);
  }

  return result;
}

unint64_t sub_255F8B8E0()
{
  result = qword_27F81C168;
  if (!qword_27F81C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C168);
  }

  return result;
}

unint64_t sub_255F8B934()
{
  result = qword_27F81C170;
  if (!qword_27F81C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C170);
  }

  return result;
}

unint64_t sub_255F8B988()
{
  result = qword_27F81B738;
  if (!qword_27F81B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B738);
  }

  return result;
}

unint64_t sub_255F8B9DC()
{
  result = qword_27F81B740;
  if (!qword_27F81B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B740);
  }

  return result;
}

unint64_t sub_255F8BA30()
{
  result = qword_27F81B748;
  if (!qword_27F81B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B748);
  }

  return result;
}

unint64_t sub_255F8BA84()
{
  result = qword_27F81B750;
  if (!qword_27F81B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B750);
  }

  return result;
}

unint64_t sub_255F8BAD8()
{
  result = qword_27F81B768;
  if (!qword_27F81B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B768);
  }

  return result;
}

unint64_t sub_255F8BB2C()
{
  result = qword_27F81B770;
  if (!qword_27F81B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B770);
  }

  return result;
}

unint64_t sub_255F8BB80()
{
  result = qword_27F81B778;
  if (!qword_27F81B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B778);
  }

  return result;
}

unint64_t sub_255F8BBD4()
{
  result = qword_27F81B780;
  if (!qword_27F81B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B780);
  }

  return result;
}

uint64_t sub_255F8BC28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5A0, &qword_255F96EC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F8BC94()
{
  result = qword_27F81C178;
  if (!qword_27F81C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C178);
  }

  return result;
}

unint64_t sub_255F8BCE8()
{
  result = qword_27F81C180;
  if (!qword_27F81C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C180);
  }

  return result;
}

unint64_t sub_255F8BD3C()
{
  result = qword_27F81B7A8;
  if (!qword_27F81B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B7A8);
  }

  return result;
}

unint64_t sub_255F8BD90()
{
  result = qword_27F81C188;
  if (!qword_27F81C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C188);
  }

  return result;
}

unint64_t sub_255F8BDE4()
{
  result = qword_27F81B7B0;
  if (!qword_27F81B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B7B0);
  }

  return result;
}

unint64_t sub_255F8BE38()
{
  result = qword_27F81B7D0;
  if (!qword_27F81B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B7D0);
  }

  return result;
}

unint64_t sub_255F8BE8C()
{
  result = qword_27F81B7D8;
  if (!qword_27F81B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B7D8);
  }

  return result;
}

unint64_t sub_255F8BEE0()
{
  result = qword_27F81C190;
  if (!qword_27F81C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C190);
  }

  return result;
}

unint64_t sub_255F8BF34()
{
  result = qword_27F81C198;
  if (!qword_27F81C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81C198);
  }

  return result;
}

unint64_t sub_255F8BF88()
{
  result = qword_27F81B7F8;
  if (!qword_27F81B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B7F8);
  }

  return result;
}

unint64_t sub_255F8BFDC()
{
  result = qword_27F81C1A0[0];
  if (!qword_27F81C1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81C1A0);
  }

  return result;
}

unint64_t sub_255F8C030()
{
  result = qword_27F81B800;
  if (!qword_27F81B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B800);
  }

  return result;
}

unint64_t sub_255F8C084()
{
  result = qword_27F81B820;
  if (!qword_27F81B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B820);
  }

  return result;
}

unint64_t sub_255F8C0D8()
{
  result = qword_27F81B828;
  if (!qword_27F81B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B828);
  }

  return result;
}

unint64_t sub_255F8C12C(void *a1)
{
  a1[1] = sub_255F8C164();
  a1[2] = sub_255F8C1B8();
  result = sub_255F8C20C();
  a1[3] = result;
  return result;
}

unint64_t sub_255F8C164()
{
  result = qword_27F81B830;
  if (!qword_27F81B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B830);
  }

  return result;
}

unint64_t sub_255F8C1B8()
{
  result = qword_27F81B838;
  if (!qword_27F81B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B838);
  }

  return result;
}

unint64_t sub_255F8C20C()
{
  result = qword_27F81B840;
  if (!qword_27F81B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B840);
  }

  return result;
}

unint64_t sub_255F8C264()
{
  result = qword_27F81B848;
  if (!qword_27F81B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B848);
  }

  return result;
}

unint64_t sub_255F8C2BC()
{
  result = qword_27F81B850;
  if (!qword_27F81B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B850);
  }

  return result;
}

unint64_t sub_255F8C314()
{
  result = qword_27F81B858;
  if (!qword_27F81B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B858);
  }

  return result;
}

unint64_t sub_255F8C36C()
{
  result = qword_27F81B860;
  if (!qword_27F81B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B860);
  }

  return result;
}

unint64_t sub_255F8C3C4()
{
  result = qword_27F81B868;
  if (!qword_27F81B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B868);
  }

  return result;
}

unint64_t sub_255F8C41C()
{
  result = qword_27F81B870;
  if (!qword_27F81B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B870);
  }

  return result;
}

unint64_t sub_255F8C474()
{
  result = qword_27F81B878;
  if (!qword_27F81B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B878);
  }

  return result;
}

uint64_t sub_255F8C4E8(uint64_t *a1, int a2)
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

uint64_t sub_255F8C530(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255F8C59C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_255F8C5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255F8C67C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255F8C6C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Color(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Color(uint64_t result, int a2, int a3)
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255F8C7B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255F8C808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = (v3 >> 1) << 32;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255F8C880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_255F8C8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Weight(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Weight(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 9))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 8) >> 1) & 0x3E | (*(a1 + 8) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Size.Unit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Size.Unit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Size.Absolute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Size.Absolute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Specified.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Specified.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing10StyleSheetV4FontO5StyleOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s33LinkPresentationStyleSheetParsing10StyleSheetV4FontO5StyleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing10StyleSheetV4FontO6SystemOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s33LinkPresentationStyleSheetParsing10StyleSheetV4FontO6SystemOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255F8D368()
{
  result = qword_27F81DF30[0];
  if (!qword_27F81DF30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81DF30);
  }

  return result;
}

unint64_t sub_255F8D3C0()
{
  result = qword_27F81E140[0];
  if (!qword_27F81E140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81E140);
  }

  return result;
}

unint64_t sub_255F8D418()
{
  result = qword_27F81E350[0];
  if (!qword_27F81E350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81E350);
  }

  return result;
}

unint64_t sub_255F8D470()
{
  result = qword_27F81E560[0];
  if (!qword_27F81E560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81E560);
  }

  return result;
}

unint64_t sub_255F8D4C8()
{
  result = qword_27F81E770[0];
  if (!qword_27F81E770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81E770);
  }

  return result;
}

unint64_t sub_255F8D520()
{
  result = qword_27F81E980[0];
  if (!qword_27F81E980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81E980);
  }

  return result;
}

unint64_t sub_255F8D578()
{
  result = qword_27F81EB90[0];
  if (!qword_27F81EB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81EB90);
  }

  return result;
}

unint64_t sub_255F8D5D0()
{
  result = qword_27F81EDA0[0];
  if (!qword_27F81EDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81EDA0);
  }

  return result;
}

unint64_t sub_255F8D628()
{
  result = qword_27F81EFB0[0];
  if (!qword_27F81EFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81EFB0);
  }

  return result;
}

unint64_t sub_255F8D680()
{
  result = qword_27F81F1C0[0];
  if (!qword_27F81F1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81F1C0);
  }

  return result;
}

unint64_t sub_255F8D6D8()
{
  result = qword_27F81F3D0[0];
  if (!qword_27F81F3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81F3D0);
  }

  return result;
}

unint64_t sub_255F8D730()
{
  result = qword_27F81F5E0[0];
  if (!qword_27F81F5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81F5E0);
  }

  return result;
}

unint64_t sub_255F8D788()
{
  result = qword_27F81F7F0[0];
  if (!qword_27F81F7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81F7F0);
  }

  return result;
}

unint64_t sub_255F8D7E0()
{
  result = qword_27F81FA00[0];
  if (!qword_27F81FA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81FA00);
  }

  return result;
}

unint64_t sub_255F8D838()
{
  result = qword_27F81FC10[0];
  if (!qword_27F81FC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81FC10);
  }

  return result;
}

unint64_t sub_255F8D890()
{
  result = qword_27F81FE20[0];
  if (!qword_27F81FE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F81FE20);
  }

  return result;
}

unint64_t sub_255F8D8E8()
{
  result = qword_27F820030[0];
  if (!qword_27F820030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820030);
  }

  return result;
}

unint64_t sub_255F8D940()
{
  result = qword_27F820240[0];
  if (!qword_27F820240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820240);
  }

  return result;
}

unint64_t sub_255F8D998()
{
  result = qword_27F820450[0];
  if (!qword_27F820450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820450);
  }

  return result;
}

unint64_t sub_255F8D9F0()
{
  result = qword_27F820560;
  if (!qword_27F820560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820560);
  }

  return result;
}

unint64_t sub_255F8DA48()
{
  result = qword_27F820568[0];
  if (!qword_27F820568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820568);
  }

  return result;
}

unint64_t sub_255F8DAA0()
{
  result = qword_27F8205F0;
  if (!qword_27F8205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8205F0);
  }

  return result;
}

unint64_t sub_255F8DAF8()
{
  result = qword_27F8205F8[0];
  if (!qword_27F8205F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F8205F8);
  }

  return result;
}

unint64_t sub_255F8DB50()
{
  result = qword_27F820680;
  if (!qword_27F820680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820680);
  }

  return result;
}

unint64_t sub_255F8DBA8()
{
  result = qword_27F820688[0];
  if (!qword_27F820688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820688);
  }

  return result;
}

unint64_t sub_255F8DC00()
{
  result = qword_27F820710;
  if (!qword_27F820710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820710);
  }

  return result;
}

unint64_t sub_255F8DC58()
{
  result = qword_27F820718[0];
  if (!qword_27F820718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820718);
  }

  return result;
}

unint64_t sub_255F8DCB0()
{
  result = qword_27F8207A0;
  if (!qword_27F8207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8207A0);
  }

  return result;
}

unint64_t sub_255F8DD08()
{
  result = qword_27F8207A8[0];
  if (!qword_27F8207A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F8207A8);
  }

  return result;
}

unint64_t sub_255F8DD60()
{
  result = qword_27F820830;
  if (!qword_27F820830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820830);
  }

  return result;
}

unint64_t sub_255F8DDB8()
{
  result = qword_27F820838[0];
  if (!qword_27F820838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820838);
  }

  return result;
}

unint64_t sub_255F8DE10()
{
  result = qword_27F8208C0;
  if (!qword_27F8208C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8208C0);
  }

  return result;
}

unint64_t sub_255F8DE68()
{
  result = qword_27F8208C8[0];
  if (!qword_27F8208C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F8208C8);
  }

  return result;
}

unint64_t sub_255F8DEC0()
{
  result = qword_27F820950;
  if (!qword_27F820950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820950);
  }

  return result;
}

unint64_t sub_255F8DF18()
{
  result = qword_27F820958[0];
  if (!qword_27F820958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820958);
  }

  return result;
}

unint64_t sub_255F8DF70()
{
  result = qword_27F8209E0;
  if (!qword_27F8209E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8209E0);
  }

  return result;
}

unint64_t sub_255F8DFC8()
{
  result = qword_27F8209E8[0];
  if (!qword_27F8209E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F8209E8);
  }

  return result;
}

unint64_t sub_255F8E020()
{
  result = qword_27F820A70;
  if (!qword_27F820A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820A70);
  }

  return result;
}

unint64_t sub_255F8E078()
{
  result = qword_27F820A78;
  if (!qword_27F820A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820A78);
  }

  return result;
}

unint64_t sub_255F8E0D0()
{
  result = qword_27F820B00;
  if (!qword_27F820B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820B00);
  }

  return result;
}

unint64_t sub_255F8E128()
{
  result = qword_27F820B08[0];
  if (!qword_27F820B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820B08);
  }

  return result;
}

unint64_t sub_255F8E180()
{
  result = qword_27F820B90;
  if (!qword_27F820B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820B90);
  }

  return result;
}

unint64_t sub_255F8E1D8()
{
  result = qword_27F820B98[0];
  if (!qword_27F820B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820B98);
  }

  return result;
}

unint64_t sub_255F8E230()
{
  result = qword_27F820C20;
  if (!qword_27F820C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820C20);
  }

  return result;
}

unint64_t sub_255F8E288()
{
  result = qword_27F820C28[0];
  if (!qword_27F820C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820C28);
  }

  return result;
}

unint64_t sub_255F8E2E0()
{
  result = qword_27F820CB0;
  if (!qword_27F820CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820CB0);
  }

  return result;
}

unint64_t sub_255F8E338()
{
  result = qword_27F820CB8[0];
  if (!qword_27F820CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820CB8);
  }

  return result;
}

unint64_t sub_255F8E390()
{
  result = qword_27F820D40;
  if (!qword_27F820D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820D40);
  }

  return result;
}

unint64_t sub_255F8E3E8()
{
  result = qword_27F820D48[0];
  if (!qword_27F820D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820D48);
  }

  return result;
}

unint64_t sub_255F8E440()
{
  result = qword_27F820DD0;
  if (!qword_27F820DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820DD0);
  }

  return result;
}

unint64_t sub_255F8E498()
{
  result = qword_27F820DD8[0];
  if (!qword_27F820DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820DD8);
  }

  return result;
}

unint64_t sub_255F8E4F0()
{
  result = qword_27F820E60;
  if (!qword_27F820E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820E60);
  }

  return result;
}

unint64_t sub_255F8E548()
{
  result = qword_27F820E68[0];
  if (!qword_27F820E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820E68);
  }

  return result;
}

unint64_t sub_255F8E5A0()
{
  result = qword_27F820EF0;
  if (!qword_27F820EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820EF0);
  }

  return result;
}

unint64_t sub_255F8E5F8()
{
  result = qword_27F820EF8[0];
  if (!qword_27F820EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820EF8);
  }

  return result;
}

unint64_t sub_255F8E650()
{
  result = qword_27F820F80;
  if (!qword_27F820F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F820F80);
  }

  return result;
}

unint64_t sub_255F8E6A8()
{
  result = qword_27F820F88[0];
  if (!qword_27F820F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F820F88);
  }

  return result;
}

uint64_t sub_255F8E6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_255F95990() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_255F95990() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67696C4174786574 && a2 == 0xE90000000000006ELL || (sub_255F95990() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF6567616D49646ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_255F95990();

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