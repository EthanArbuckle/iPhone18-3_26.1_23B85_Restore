unsigned __int8 *sub_24889FDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2488A441C();

  result = sub_2488A57EC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2488A0348();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
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
      result = sub_2488A5A3C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2488A0348()
{
  v0 = sub_2488A57FC();
  v4 = sub_2488A03C8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2488A03C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2488A573C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2488A592C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2488A0520(v9, 0);
  v12 = sub_2488A0594(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2488A573C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2488A5A3C();
LABEL_4:

  return sub_2488A573C();
}

void *sub_2488A0520(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C20, &qword_2488A82D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2488A0594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2488A07B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2488A57BC();
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
          result = sub_2488A5A3C();
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

    result = sub_2488A07B4(v12, a6, a7);
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

    result = sub_2488A578C();
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

uint64_t sub_2488A07B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2488A57CC();
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
    v5 = MEMORY[0x24C1DB1B0](15, a1 >> 16);
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

uint64_t sub_2488A0830(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
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
    v11 = sub_2488A5A3C();
  }

  result = sub_2488A36C8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2488A08FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2488A09F0;

  return v6(v2 + 32);
}

uint64_t sub_2488A09F0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2488A0B04@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF8, &qword_2488A8238);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v14, v10);
    result = (*(v7 + 8))(v10, v6);
    *a3 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2488A0C98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2488A0CE0()
{
  result = qword_27EEB1B80;
  if (!qword_27EEB1B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1B70, &qword_2488A7F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So19FolderAnimationKindV12CoreGraphics7CGFloatVABIegyyd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2488A0D98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2488A0DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2488A0E48()
{
  sub_2488A0F2C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2488A0F84();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2488A0F2C()
{
  if (!qword_27EEB1BB8)
  {
    type metadata accessor for FolderAnimationKind(255);
    v0 = sub_2488A4B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB1BB8);
    }
  }
}

void sub_2488A0F84()
{
  if (!qword_27EEB1BC0)
  {
    v0 = sub_2488A4B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB1BC0);
    }
  }
}

unint64_t sub_2488A0FFC()
{
  result = qword_27EEB1BC8;
  if (!qword_27EEB1BC8)
  {
    sub_2488A0CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1BC8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TFolderAnimationOverlay.RebarImageLoader.KindAndSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TFolderAnimationOverlay.RebarImageLoader.KindAndSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_2488A10E8()
{
  result = qword_27EEB1BD8;
  if (!qword_27EEB1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1BD8);
  }

  return result;
}

uint64_t sub_2488A119C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2488A11E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2488A11F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2488A1204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 88) & ~*(v5 + 80));

  return sub_24889E310(a1, (v2 + 24), v7, a2, v6);
}

uint64_t objectdestroy_53Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  sub_24889F1D8();
  if (*(v0 + 48))
  {
    v8 = *(v0 + 56);
  }

  v9 = (v3 + 88) & ~v3;
  v10 = *(v0 + 72);

  v11 = *(v0 + 80);

  (*(v2 + 8))(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v4, v3 | 7);
}

uint64_t sub_2488A138C(uint64_t *a1, double a2, double a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_24889E5D8(a1, v3 + 24, a2, a3, v8);
}

uint64_t sub_2488A1428()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24889F1D8();
  if (*(v0 + 40))
  {
    v4 = *(v0 + 48);
  }

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2488A148C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_2488A4C3C();
  *&v9[0] = *a1;

  sub_2488A4C5C();
  sub_2488A2C24(v9, *(a2 + 72), v5, *(a2 + 136), *(a2 + 168));

  sub_2488A4C3C();
  sub_2488A4D1C();
  sub_2488A4CEC();
  v6 = *a1;
  if (qword_27EEB1020 != -1)
  {
    swift_once();
  }

  v9[0] = xmmword_27EEB1028;
  v9[1] = unk_27EEB1038;
  v10 = byte_27EEB1048;
  if (qword_27EEB1050 != -1)
  {
    swift_once();
  }

  v7 = sub_2488A4CDC();
  __swift_project_value_buffer(v7, qword_27EEB1058);
  return sub_2488A4C8C();
}

uint64_t sub_2488A15EC(uint64_t *a1, uint64_t a2, uint64_t *a3, double a4)
{
  v8 = sub_2488A4CBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  sub_2488A4C3C();
  if (qword_27EEB1000 != -1)
  {
    swift_once();
  }

  sub_2488A4CAC();
  sub_2488A4D0C();
  (*(v9 + 8))(v12, v8);
  v13 = sub_2488A4C3C();
  v14 = *a1;
  MEMORY[0x28223BE20](v13);
  *(&v16 - 4) = a2;
  *(&v16 - 3) = a4;
  *(&v16 - 2) = &v17;
  return sub_2488A4D2C();
}

uint64_t sub_2488A17A4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_2488A4C3C();
  sub_2488A4C6C();
  v6 = *(a2 + 88);
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  v8 = *a1;

  sub_2488A4C5C();
  sub_2488A30E8(&v8, *(a2 + 104), v5, *(a2 + 136), *(a2 + 168));
}

uint64_t sub_2488A1860(uint64_t *a1, double a2, double a3, double a4, uint64_t a5, void (*a6)(uint64_t, double), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v89 = a7;
  v91 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v87 - v16;
  v17 = type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  v113[4] = &off_285B4A9A0;
  v113[3] = v17;
  v113[0] = a8;
  v18 = sub_24889DD60(a3, a4);
  v20 = v19;
  v21 = v18;

  sub_2488A4C5C();
  sub_2488A4CFC();
  sub_2488A49BC();
  v23 = v22;
  v24 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime;
  v25 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime);
  if (v25 != INFINITY)
  {
    *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime) = v23 - v25 + *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  v26 = INFINITY;
  if (!v116)
  {
    v26 = v23;
  }

  *(a9 + v24) = v26;
  v27 = a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage;
  swift_beginAccess();
  sub_24883C484();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  v28 = 2.0;
  if (v116 <= 8)
  {
    v28 = dbl_2488A8320[v116];
  }

  v29 = sub_24889F398();
  v30 = (v29 == 2) | v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  if (v116 > 8 || ((1 << v116) & 0x99) != 0 || ((1 << v116) & 0x160) == 0)
  {
    if (qword_27EEB0FF0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  if (qword_27EEB0FF0 != -1)
  {
    swift_once();
  }

  v32 = qword_27EEB0FF8;
  LOBYTE(v109) = 0;
  for (i = 1; ; i = 0)
  {
    *(&v109 + 1) = i;
    *&v110 = v21;
    *(&v110 + 1) = v32;
    *v111 = v28;
    __asm { FMOV            V0.2D, #1.0 }

    *(v111 + 8) = _Q0;
    v90 = xmmword_2488A7F40;
    *(&v111[1] + 8) = xmmword_2488A7F40;
    *(&v111[2] + 1) = 0x3FF0000000000000;
    LOBYTE(v112) = 0;
    HIBYTE(v112) = (v30 & 1) == 0;

    v114[2] = v111[0];
    v114[3] = v111[1];
    v114[4] = v111[2];
    v115 = v112;
    v114[0] = v109;
    v114[1] = v110;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2488A4B1C();

    v38 = v116;
    if (v116 > 3)
    {
      break;
    }

    if (v116 > 1)
    {
      if (v116 == 2)
      {
LABEL_25:
        v46 = __swift_project_boxed_opaque_existential_0(v113, v17);
        *&v90 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
        v47 = *&v90;
        swift_beginAccess();
        v48 = *v46;
        *(v27 + 231) = 1;
        sub_2488A4C3C();
        sub_2488A4C3C();
        sub_24883B804(v27, v114, &v116, v47);
        v87 = v116;
        v49 = v117[0];
        v50 = v117[1];
        v51 = v118;
        v52 = BYTE8(v118);
        v53 = v20;
        v54 = v119;
        sub_2488A4C3C();
        LOBYTE(v94) = v109;
        *(&v94 + 1) = 2;
        *&v95 = *(&v110 + 1);
        BYTE8(v95) = v112;
        v96 = v87;
        v97 = v49;
        v98 = 0;
        *&v99 = *(&v111[0] + 1);
        *(&v99 + 1) = *(&v49 + 1);
        *&v100 = 0;
        *(&v100 + 1) = v50;
        *&v101 = 0;
        *(&v101 + 1) = *(&v50 + 1);
        *&v102 = v54;
        v20 = v53;
        *(&v102 + 1) = v51;
        LOBYTE(v103) = v52;
        *(&v103 + 1) = v110;
        *&v104 = &unk_285B498D8;
        *(&v104 + 1) = &unk_285B49920;
        *&v105 = &unk_285B49968;
        *(&v105 + 1) = &unk_285B499B0;
        *&v106 = &unk_285B499F8;
        *(&v106 + 1) = &unk_285B49A40;
        *&v107 = &unk_285B49A88;
        *(&v107 + 1) = *&v111[0];
        v108 = HIBYTE(v112);
        v116 = v94;
        v117[0] = v95;
        v119 = v99;
        v120 = v100;
        v117[1] = v87;
        v118 = v49;
        v123 = v103;
        v124 = v104;
        v121 = v101;
        v122 = v102;
        v128 = HIBYTE(v112);
        v126 = v106;
        v127 = v107;
        v125 = v105;
        v93[0] = v48;
        sub_24883CB1C(&v109, v92);
        sub_2488A4C3C();
        v55 = sub_2488A4CEC();
        v56 = *a1;
        MEMORY[0x28223BE20](v55);
        *(&v87 - 4) = &v116;
        *(&v87 - 3) = v90;
        *(&v87 - 2) = v93;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (!v116)
    {
      v39 = __swift_project_boxed_opaque_existential_0(v113, v17);
      v40 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
      swift_beginAccess();
      v41 = *v39;
      *(v27 + 225) = 1;
      sub_2488A4C3C();
      sub_248839B2C(v27, v114, &v116, v40);
      v42 = v116;
      v43 = *&v117[0];
      v87 = *(v117 + 8);
      sub_2488A4C3C();
      LOBYTE(v94) = v109;
      *(&v94 + 1) = *(&v109 + 1);
      *&v95 = *(&v110 + 1);
      BYTE8(v95) = v112;
      v96 = v87;
      v97 = v42;
      v98 = 0;
      *&v99 = *(&v42 + 1);
      *(&v99 + 1) = v43;
      v100 = v90;
      v101 = 0u;
      v102 = 0u;
      LOBYTE(v103) = 0;
      *(&v103 + 1) = v110;
      *&v104 = &unk_285B49038;
      *(&v104 + 1) = &unk_285B49080;
      *&v105 = &unk_285B490C8;
      *(&v105 + 1) = &unk_285B49110;
      *&v106 = &unk_285B49158;
      *(&v106 + 1) = &unk_285B491A0;
      *&v107 = &unk_285B491E8;
      *(&v107 + 1) = *&v111[0];
      v108 = HIBYTE(v112);
      v116 = v94;
      v117[0] = v95;
      v119 = v99;
      v120 = v90;
      v117[1] = v87;
      v118 = v42;
      v123 = v103;
      v124 = v104;
      v121 = 0u;
      v122 = 0u;
      v128 = HIBYTE(v112);
      v126 = v106;
      v127 = v107;
      v125 = v105;
      v93[0] = v41;
      sub_24883CB1C(&v109, v92);
      sub_2488A4C3C();
      v44 = sub_2488A4CEC();
      v45 = *a1;
      MEMORY[0x28223BE20](v44);
      *(&v87 - 4) = &v116;
      *(&v87 - 3) = v40;
      *(&v87 - 2) = v93;
      goto LABEL_31;
    }

    if (v116 == 1)
    {
      goto LABEL_29;
    }

LABEL_39:
    type metadata accessor for FolderAnimationKind(0);
    *&v116 = v38;
    sub_2488A5A9C();
    __break(1u);
LABEL_40:
    swift_once();
LABEL_10:
    v32 = qword_27EEB0FF8;
    LOBYTE(v109) = 0;
  }

  if (v116 > 5)
  {
    switch(v116)
    {
      case 6:
        goto LABEL_27;
      case 7:
LABEL_29:
        v64 = __swift_project_boxed_opaque_existential_0(v113, v17);
        v65 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
        swift_beginAccess();
        v66 = *v64;
        *(v27 + 228) = 1;
        sub_2488A4C3C();
        sub_2488A4C3C();
        sub_24883AEE0(v27, v114, &v116, v65);
        v90 = v116;
        v67 = v117[0];
        v68 = v117[1];
        sub_2488A4C3C();
        LOBYTE(v94) = v109;
        *(&v94 + 1) = 1;
        *&v95 = *(&v110 + 1);
        BYTE8(v95) = v112;
        v96 = v90;
        v97 = v67;
        v98 = 0;
        *&v99 = *(&v111[0] + 1);
        *(&v99 + 1) = *(&v67 + 1);
        *&v100 = v68;
        *(&v100 + 1) = 0x3FF0000000000000;
        v101 = *(&v68 + 1);
        v102 = 0uLL;
        LOBYTE(v103) = 0;
        *(&v103 + 1) = v110;
        *&v104 = &unk_285B496E0;
        *(&v104 + 1) = &unk_285B49728;
        *&v105 = &unk_285B49770;
        *(&v105 + 1) = &unk_285B497B8;
        *&v106 = &unk_285B49800;
        *(&v106 + 1) = &unk_285B49848;
        *&v107 = &unk_285B49890;
        *(&v107 + 1) = *&v111[0];
        v108 = HIBYTE(v112);
        v116 = v94;
        v117[0] = v95;
        v119 = v99;
        v120 = v100;
        v117[1] = v90;
        v118 = v67;
        v123 = v103;
        v124 = v104;
        v121 = *(&v68 + 1);
        v122 = 0u;
        v128 = HIBYTE(v112);
        v126 = v106;
        v127 = v107;
        v125 = v105;
        v93[0] = v66;
        sub_24883CB1C(&v109, v92);
        sub_2488A4C3C();
        v69 = sub_2488A4CEC();
        v70 = *a1;
        MEMORY[0x28223BE20](v69);
        *(&v87 - 4) = &v116;
        *(&v87 - 3) = v65;
        *(&v87 - 2) = v93;
        goto LABEL_31;
      case 8:
        goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (v116 == 4)
  {
LABEL_27:
    v57 = __swift_project_boxed_opaque_existential_0(v113, v17);
    v58 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
    swift_beginAccess();
    v59 = *v57;
    *(v27 + 232) = 1;
    sub_2488A4C3C();
    sub_24883A8D0(v27, v114, v58);
    v61 = v60;
    sub_2488A4C3C();
    LOBYTE(v94) = v109;
    *(&v94 + 1) = *(&v109 + 1);
    *&v95 = *(&v110 + 1);
    BYTE8(v95) = v112;
    v96 = v111[2];
    v97 = *&v111[1];
    v98 = 0;
    *&v99 = *(&v111[0] + 1);
    *(&v99 + 1) = v61;
    v100 = v90;
    v101 = 0u;
    v102 = 0u;
    LOBYTE(v103) = 0;
    *(&v103 + 1) = v110;
    *&v104 = &unk_285B494E8;
    *(&v104 + 1) = &unk_285B49530;
    *&v105 = &unk_285B49578;
    *(&v105 + 1) = &unk_285B495C0;
    *&v106 = &unk_285B49608;
    *(&v106 + 1) = &unk_285B49650;
    *&v107 = &unk_285B49698;
    *(&v107 + 1) = *&v111[0];
    v108 = HIBYTE(v112);
    v116 = v94;
    v117[0] = v95;
    v119 = v99;
    v120 = v90;
    v117[1] = v111[2];
    v118 = *&v111[1];
    v123 = v103;
    v124 = v104;
    v121 = 0u;
    v122 = 0u;
    v128 = HIBYTE(v112);
    v126 = v106;
    v127 = v107;
    v125 = v105;
    v93[0] = v59;
    sub_24883CB1C(&v109, v92);
    sub_2488A4C3C();
    v62 = sub_2488A4CEC();
    v63 = *a1;
    MEMORY[0x28223BE20](v62);
    *(&v87 - 4) = &v116;
    *(&v87 - 3) = v58;
    *(&v87 - 2) = v93;
    goto LABEL_31;
  }

LABEL_30:
  v71 = __swift_project_boxed_opaque_existential_0(v113, v17);
  v72 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
  swift_beginAccess();
  v73 = *v71;
  *(v27 + 229) = 1;
  sub_2488A4C3C();
  sub_24883A2BC(v27, v114, v72);
  v75 = v74;
  sub_2488A4C3C();
  LOBYTE(v94) = v109;
  *(&v94 + 1) = *(&v109 + 1);
  *&v95 = *(&v110 + 1);
  BYTE8(v95) = v112;
  v96 = v111[2];
  v97 = *&v111[1];
  v98 = 0;
  *&v99 = *(&v111[0] + 1);
  *(&v99 + 1) = v75;
  v100 = v90;
  v101 = 0u;
  v102 = 0u;
  LOBYTE(v103) = 0;
  *(&v103 + 1) = v110;
  *&v104 = &unk_285B49290;
  *(&v104 + 1) = &unk_285B492D8;
  *&v105 = &unk_285B49320;
  *(&v105 + 1) = &unk_285B49368;
  *&v106 = &unk_285B493B0;
  *(&v106 + 1) = &unk_285B493F8;
  *&v107 = &unk_285B49440;
  *(&v107 + 1) = *&v111[0];
  v108 = HIBYTE(v112);
  v116 = v94;
  v117[0] = v95;
  v119 = v99;
  v120 = v90;
  v117[1] = v111[2];
  v118 = *&v111[1];
  v123 = v103;
  v124 = v104;
  v121 = 0u;
  v122 = 0u;
  v128 = HIBYTE(v112);
  v126 = v106;
  v127 = v107;
  v125 = v105;
  v93[0] = v73;
  sub_24883CB1C(&v109, v92);
  sub_2488A4C3C();
  v76 = sub_2488A4CEC();
  v77 = *a1;
  MEMORY[0x28223BE20](v76);
  *(&v87 - 4) = &v116;
  *(&v87 - 3) = v72;
  *(&v87 - 2) = v93;
LABEL_31:
  sub_2488A4D2C();
  sub_2488A2858(&v94);
  swift_endAccess();
  v78 = *v27;
  v79 = *v27 == INFINITY;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  if (v79 != v94)
  {
    v80 = sub_2488A58CC();
    v81 = v88;
    (*(*(v80 - 8) + 56))(v88, 1, 1, v80);
    v82 = swift_allocObject();
    swift_weakInit();
    sub_2488A58AC();

    v83 = sub_2488A589C();
    v84 = swift_allocObject();
    v85 = MEMORY[0x277D85700];
    *(v84 + 16) = v83;
    *(v84 + 24) = v85;
    *(v84 + 32) = v82;
    *(v84 + 40) = v78 == INFINITY;

    sub_24889D460(0, 0, v81, &unk_2488A82A8, v84);
  }

  if (v78 >= INFINITY && v78 <= INFINITY && v91)
  {
    v91(a9, v20);
  }

  sub_24889C7B8(&v109);
  return __swift_destroy_boxed_opaque_existential_0(v113);
}

uint64_t sub_2488A28AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2488A28E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2488A2924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248850A44;

  return sub_24889F4EC(a1, v4, v5, v6, v7);
}

uint64_t sub_2488A29E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2488A2A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2488A2AC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2488A2AF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_2488A08FC(a1, v5);
}

uint64_t sub_2488A2BD4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = **(v1 + 32);
  return sub_24889CD88(a1, *(v1 + 16));
}

uint64_t sub_2488A2BFC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = **(v1 + 32);
  return sub_24889D048(a1, *(v1 + 16));
}

uint64_t sub_2488A2C24(uint64_t *a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_2488A4C3C();
  if (a4 > 4)
  {
    __break(1u);
  }

  else
  {
    v10 = qword_285B49AD0[a4 + 4];
    result = sub_2488A4C6C();
    if (*(a5 + 16) > a4)
    {
      v11 = *(a5 + 8 * a4 + 32) * 3.14159265 / 180.0 * a2;
      v12 = qword_285B49B18[a4 + 4];
      RBDrawingStateAddRotation3DStyle();
      v13 = sub_2488A4C3C();
      v14 = *a1;
      MEMORY[0x28223BE20](v13);
      return sub_2488A4D2C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2488A2DB8(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_2488A538C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2488A4CBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2488A4C3C();
  v16 = *(a2 + 136);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = *(a2 + 192);
  if (v16 >= *(v17 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = *(v17 + 8 * v16 + 32) * *(a2 + 40);
  (*(v6 + 104))(v9, *MEMORY[0x277CE0EE0], v5);
  result = sub_2488A544C();
  v19 = *(a2 + 184);
  if (v16 >= *(v19 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = *(a2 + 176);
  if (v16 < *(v20 + 16))
  {
    v21 = *(a2 + 32);
    v22 = *(v19 + 8 * v16 + 32) * v21;
    v23 = v21 * *(v20 + 8 * v16 + 32);
    sub_2488A4CAC();

    sub_2488A4D0C();
    (*(v11 + 8))(v14, v10);
    sub_2488A4C3C();
    v27[1] = *a1;

    sub_2488A4C3C();
    sub_2488A4C5C();
    v24 = *(a2 + 24);
    v27[0] = v26;
    sub_2488A4C3C();
    sub_2488A4C6C();
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v25 = sub_2488A4CEC();
    MEMORY[0x28223BE20](v25);
    *(&v26 - 4) = v16;
    *(&v26 - 24) = v24;
    *(&v26 - 2) = v27;
    sub_2488A4D2C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2488A30E8(uint64_t *a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_2488A4C3C();
  if (a4 > 4)
  {
    __break(1u);
  }

  else
  {
    v10 = qword_285B49B60[a4 + 4];
    result = sub_2488A4C6C();
    if (*(a5 + 16) > a4)
    {
      v11 = *(a5 + 8 * a4 + 32) * 3.14159265 / 180.0 * a2;
      v12 = qword_285B49BA8[a4 + 4];
      RBDrawingStateAddRotation3DStyle();
      v13 = sub_2488A4C3C();
      v14 = *a1;
      MEMORY[0x28223BE20](v13);
      return sub_2488A4D2C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2488A3234(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2488A538C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2488A4CBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4C3C();
  v16 = *(a2 + 112);
  (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
  sub_2488A544C();
  sub_2488A4CAC();

  sub_2488A4D0C();
  v17 = *(v12 + 8);
  v17(v15, v11);
  sub_2488A4C3C();
  sub_2488A4C9C();
  sub_2488A4D0C();
  v17(v15, v11);
  sub_2488A4C3C();
  result = sub_2488A4C6C();
  v19 = *(a2 + 136);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = *(a2 + 152);
  if (v19 >= *(v20 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(v20 + 8 * v19 + 32) * (*(a2 + 96) * 3.14159265) / 180.0;
  RBDrawingStateAddRotationStyle();
  sub_2488A4C3C();
  result = sub_2488A4C6C();
  v22 = *(a2 + 160);
  if (v19 < *(v22 + 16))
  {
    v23 = *(a2 + 120) * *(v22 + 8 * v19 + 32);
    RBDrawingStateAddTranslationStyle();
    sub_2488A4C3C();
    sub_2488A4C6C();
    v24 = *(a2 + 88);
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v26 = *a1;

    sub_2488A4C5C();
    sub_2488A30E8(&v26, 0.0, a3, v19, *(a2 + 168));
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2488A356C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2488A4C3C();
  result = sub_2488A4C6C();
  v7 = *(a2 + 136);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = *(a2 + 152);
  if (v7 >= *(v8 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(v8 + 8 * v7 + 32) * (*(a2 + 96) * 3.14159265) / 180.0;
  RBDrawingStateAddRotationStyle();
  sub_2488A4C3C();
  result = sub_2488A4C6C();
  v10 = *(a2 + 160);
  if (v7 < *(v10 + 16))
  {
    v11 = *(a2 + 80) * *(v10 + 8 * v7 + 32);
    RBDrawingStateAddTranslationStyle();
    sub_2488A4C3C();
    sub_2488A4C6C();
    v12 = *(a2 + 88);
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v13 = *a1;

    sub_2488A4C5C();
    sub_2488A30E8(&v13, *(a2 + 104), a3, v7, *(a2 + 168));
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2488A36C8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_2488A07B4(a2, a4, a5);
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
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2488A57AC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2488A07B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2488A07B4(a3, a4, a5);
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
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_2488A57AC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
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
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
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

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_2488A3B34(uint64_t a1, unint64_t a2)
{
  v29[0] = 46;
  v29[1] = 0xE100000000000000;
  v28[2] = v29;

  v5 = sub_24889F9F0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2488A43C4, v28, a1, a2, v4);
  if (v5[2] != 3)
  {
    goto LABEL_7;
  }

  v6 = v5[8];
  v7 = v5[9];
  if (!((v7 ^ v6) >> 14))
  {
    goto LABEL_7;
  }

  v9 = v5[10];
  v8 = v5[11];
  v10 = v5;
  result = sub_2488A0830(v5[8], v7, v9, v8, 10);
  if ((v12 & 0x100) != 0)
  {

    v13 = sub_24889FDB0(v6, v7, v9, v8, 10);
    v15 = v14;

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_7;
    }

    v13 = result;
  }

  if (v10[2] >= 3uLL)
  {
    v18 = v10[12];
    v19 = v10[13];
    v21 = v10[14];
    v20 = v10[15];

    if ((v19 ^ v18) >> 14)
    {
      v22 = sub_2488A0830(v18, v19, v21, v20, 10);
      if ((v23 & 0x100) != 0)
      {
        v24 = sub_24889FDB0(v18, v19, v21, v20, 10);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
LABEL_16:
          if ((v24 - 1) > 2)
          {
            v17 = 2;
          }

          else
          {
            v17 = qword_2488A8368[(v24 - 1)];
          }

          v16 = v13;
          return sub_24889ECEC(v17, v16);
        }
      }

      else
      {
        v24 = v22;
        v25 = v23;

        if ((v25 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_8:
      v16 = 1024.0;
      v17 = 2;
      return sub_24889ECEC(v17, v16);
    }

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2488A3D1C(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();
      v6 = *v2;

      sub_2488A4C5C();
      v4 = 0x362E7265646C6F66;
      v5 = 0xEB00000000312E34;
    }

    else
    {
      sub_2488A4C3C();
      v9 = *v2;

      sub_2488A4C5C();
      v4 = 0x332E7265646C6F66;
      v5 = 0xEB00000000312E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();
        v7 = *v2;

        sub_2488A4C5C();
        v4 = 0x322E7265646C6F66;
        v5 = 0xEC000000312E3635;
        break;
      case 3:
        sub_2488A4C3C();
        v8 = *v2;

        sub_2488A4C5C();
        v4 = 0x352E7265646C6F66;
        v5 = 0xEC000000312E3231;
        break;
      case 4:
        sub_2488A4C3C();
        v3 = *v2;
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000312E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v4, v5);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A3F54(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();
      v6 = *v2;

      sub_2488A4C5C();
      v4 = 0x362E7265646C6F66;
      v5 = 0xEB00000000322E34;
    }

    else
    {
      sub_2488A4C3C();
      v9 = *v2;

      sub_2488A4C5C();
      v4 = 0x332E7265646C6F66;
      v5 = 0xEB00000000322E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();
        v7 = *v2;

        sub_2488A4C5C();
        v4 = 0x322E7265646C6F66;
        v5 = 0xEC000000322E3635;
        break;
      case 3:
        sub_2488A4C3C();
        v8 = *v2;

        sub_2488A4C5C();
        v4 = 0x352E7265646C6F66;
        v5 = 0xEC000000322E3231;
        break;
      case 4:
        sub_2488A4C3C();
        v3 = *v2;
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000322E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v4, v5);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A418C(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();
      v6 = *v2;

      sub_2488A4C5C();
      v4 = 0x362E7265646C6F66;
      v5 = 0xEB00000000332E34;
    }

    else
    {
      sub_2488A4C3C();
      v9 = *v2;

      sub_2488A4C5C();
      v4 = 0x332E7265646C6F66;
      v5 = 0xEB00000000332E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();
        v7 = *v2;

        sub_2488A4C5C();
        v4 = 0x322E7265646C6F66;
        v5 = 0xEC000000332E3635;
        break;
      case 3:
        sub_2488A4C3C();
        v8 = *v2;

        sub_2488A4C5C();
        v4 = 0x352E7265646C6F66;
        v5 = 0xEC000000332E3231;
        break;
      case 4:
        sub_2488A4C3C();
        v3 = *v2;
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000332E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v4, v5);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A43C4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2488A5A8C() & 1;
  }
}

unint64_t sub_2488A441C()
{
  result = qword_27EEB1C18;
  if (!qword_27EEB1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1C18);
  }

  return result;
}

uint64_t sub_2488A44E4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = **(v1 + 32);
  return sub_24889CEE0(a1, *(v1 + 16));
}

uint64_t sub_2488A45A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_24889F1D8();
  if (*(v0 + 64))
  {
    v6 = *(v0 + 72);
  }

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2488A4610(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248853F2C;

  return sub_24889E994(v7, a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_2488A46D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_24889F800(a1, v5);
}

uint64_t sub_2488A4790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_2488A08FC(a1, v5);
}

uint64_t sub_2488A4848(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248850A44;

  return sub_2488A08FC(a1, v5);
}