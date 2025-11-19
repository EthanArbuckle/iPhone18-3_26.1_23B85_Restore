uint64_t ElementID.init(nodeID:)@<X0>(uint64_t a1@<X8>)
{
  sub_2545B10F0();
  result = type metadata accessor for ElementID();
  *(a1 + *(result + 20)) = 6;
  return result;
}

uint64_t ElementID.matterObjectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ElementID() + 20)) == 6 && sub_2545B1170() == 0xDEFFDEED00000000)
  {
    sub_2545B118C();
    sub_2545FEAA4();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *sub_2545F619C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C20, &qword_2546027C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2545F6210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_2545FE8E4();
  result = sub_2545FF224();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2545F679C();
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
      result = sub_2545FF5E4();
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

uint64_t sub_2545F679C()
{
  v0 = sub_2545FF234();
  v4 = sub_2545F681C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2545F681C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2545FF1A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2545FF4E4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2545F619C(v9, 0);
  v12 = sub_2545F6974(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_2545FE8E4();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2545FF1A4();
    sub_2545FEA14();
    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2545FF5E4();
LABEL_4:

  return sub_2545FF1A4();
}

unint64_t sub_2545F6974(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2545F6B94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2545FF204();
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
          result = sub_2545FF5E4();
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

    result = sub_2545F6B94(v12, a6, a7);
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

    result = sub_2545FF1E4();
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

uint64_t sub_2545F6B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2545FF214();
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
    v5 = MEMORY[0x259C120E0](15, a1 >> 16);
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

uint64_t _s17HomeWidgetIntents9ElementIDV4KindO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 3)
  {
    if (result <= 6)
    {
      return result;
    }

    if (result == 10000)
    {
      return 7;
    }

    return 8;
  }

  if (result < 0)
  {
    return 8;
  }

  return result;
}

unint64_t sub_2545F6C84()
{
  result = qword_27F606C50;
  if (!qword_27F606C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C50);
  }

  return result;
}

unint64_t sub_2545F6CD8()
{
  result = qword_27F606C58;
  if (!qword_27F606C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C58);
  }

  return result;
}

unint64_t sub_2545F6D2C()
{
  result = qword_27F606C68;
  if (!qword_27F606C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C68);
  }

  return result;
}

unint64_t sub_2545F6D84()
{
  result = qword_27F606C70;
  if (!qword_27F606C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C70);
  }

  return result;
}

uint64_t sub_2545F6E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545F6ED8()
{
  result = sub_2545FEB04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElementID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2545F70B0()
{
  result = qword_27F606C80;
  if (!qword_27F606C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C80);
  }

  return result;
}

unint64_t sub_2545F7108()
{
  result = qword_27F606C88;
  if (!qword_27F606C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C88);
  }

  return result;
}

unint64_t sub_2545F7160()
{
  result = qword_27F606C90;
  if (!qword_27F606C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C90);
  }

  return result;
}

unint64_t sub_2545F71B4()
{
  result = qword_27F606C98;
  if (!qword_27F606C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606C98);
  }

  return result;
}

uint64_t INIntent.Error.hashValue.getter()
{
  sub_2545FF834();
  MEMORY[0x259C12730](0);
  return sub_2545FF864();
}

id sub_2545F7294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[7] = a1;
  v12[8] = a2;
  v12[9] = a3;
  v12[10] = a4;
  swift_beginAccess();
  sub_2545B40B0();
  sub_2545FE8E4();
  sub_2545FE6C4();
  sub_2545FE654();
  v4 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v5 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v6 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v7 = [v4 initWithAppBundleIdentifier:v5 linkAction:v6 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v8 = v7;
  v9 = sub_2545FF164();
  [v8 _setExtensionBundleId_];

  return v8;
}

id sub_2545F7448(uint64_t a1, uint64_t a2)
{
  v10[7] = a1;
  v10[8] = a2;
  swift_beginAccess();
  sub_2545E1578();
  sub_2545FE8E4();
  sub_2545FE6C4();
  sub_2545FE654();
  v2 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v3 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = [v2 initWithAppBundleIdentifier:v3 linkAction:v4 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v6 = v5;
  v7 = sub_2545FF164();
  [v6 _setExtensionBundleId_];

  return v6;
}

id static INIntent.createFromAppIntent<A>(_:extensionBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2545FE5F4();
  v6 = *(a5 + 8);
  sub_2545FE6C4();
  sub_2545FE654();
  v7 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v8 = sub_2545FF164();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v9 = sub_2545FF7A4();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v10 = [v7 initWithAppBundleIdentifier:v8 linkAction:v9 linkActionMetadata:sub_2545FF7A4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v11 = v10;
  v12 = sub_2545FF164();
  [v11 _setExtensionBundleId_];

  return v11;
}

id static INIntent.XLModuleDefaultConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v4 = sub_2545B027C();
  if (v4 && (v5 = v4, v6 = sub_2545FA83C(), v5, v6))
  {
    v7 = v6;
    v8 = [v7 uniqueIdentifier];
    sub_2545FEAC4();

    v9 = [v7 name];
    v10 = sub_2545FF174();
    v12 = v11;

    v13 = type metadata accessor for SelectedHomeEntity();
    v14 = &v3[*(v13 + 20)];
    *v14 = v10;
    v14[1] = v12;
    (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
    HomeXLModuleConfigurationIntent.init(home:)(v3, v17);
  }

  else
  {
    HomeXLModuleConfigurationIntent.init()(v17);
  }

  v15 = sub_2545F7294(v17[0], v17[1], v17[2], v17[3]);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return v15;
}

id static INIntent.SingleTileDefaultConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6068F0, &unk_254601310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  type metadata accessor for IntentsService();
  swift_initStaticObject();
  v8 = sub_2545B027C();
  if (v8 && (v9 = v8, v10 = sub_2545FA83C(), v9, v10))
  {
    v11 = v10;
    v12 = [v11 uniqueIdentifier];
    sub_2545FEAC4();

    v13 = [v11 name];
    v14 = sub_2545FF174();
    v16 = v15;

    v17 = type metadata accessor for SelectedHomeEntity();
    v18 = &v7[*(v17 + 20)];
    *v18 = v14;
    v18[1] = v16;
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    v19 = type metadata accessor for HomeSingleTileEntity();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    HomeSingleTileConfigurationIntent.init(home:item:)(v7, v3, v24);
  }

  else
  {
    v20 = type metadata accessor for SelectedHomeEntity();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = type metadata accessor for HomeSingleTileEntity();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    HomeSingleTileConfigurationIntent.init(home:item:)(v7, v3, v24);
  }

  v22 = sub_2545F7448(v24[0], v24[1]);
  sub_2545FEA14();
  sub_2545FEA14();
  return v22;
}

uint64_t sub_2545F7C30()
{
  type metadata accessor for AppIntentRegistration();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_27F60AE08 = v0;
  return result;
}

uint64_t sub_2545F7C74()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545F7D10, v0, 0);
}

uint64_t sub_2545F7D10()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 112));
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v3 = v0[3];
    sub_2545FF364();
    v4 = sub_2545FF384();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2 = sub_2545F8678(0, 0, v3, &unk_254602FC0, v5);
    sub_2545B612C(v3, &qword_27F606CE8, &qword_254602FB0);
    *(v1 + 120) = v2;
    sub_2545FE8F4();
  }

  v0[4] = v2;
  sub_2545FE8F4();
  os_unfair_lock_unlock((v1 + 112));
  v6 = *(MEMORY[0x277D857E0] + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2545F7E9C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2545F7E9C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2545F7FAC, v2, 0);
}

uint64_t sub_2545F7FAC()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_2545FEA14();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2545F8014()
{
  v1 = sub_2545FEFF4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545F80D0, 0, 0);
}

uint64_t sub_2545F80D0()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2545FF0A4();
  __swift_project_value_buffer(v1, qword_27F60ADD8);
  v2 = sub_2545FF084();
  v3 = sub_2545FF474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2545AB000, v2, v3, "AppIntentRegistration.registerWidgetIntents() started", v4, 2u);
    MEMORY[0x259C12CB0](v4, -1, -1);
  }

  if (qword_27F6063A8 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = sub_2545FF024();
  v9 = __swift_project_value_buffer(v8, qword_27F60ADF0);
  sub_2545FEFE4();
  sub_2545F83E0("AppManager.register", 19, 2, v5, v9);
  (*(v6 + 8))(v5, v7);
  v10 = sub_2545FF084();
  v11 = sub_2545FF474();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2545AB000, v10, v11, "AppIntentRegistration.registerWidgetIntents() finished", v12, 2u);
    MEMORY[0x259C12CB0](v12, -1, -1);
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2545F83E0(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v28 = a1;
  v9 = sub_2545FEFF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a5;
  v14 = sub_2545FF014();
  v15 = sub_2545FF494();
  result = sub_2545FF4C4();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v10 + 16))(v13, a4, v9);
    v19 = sub_2545FF064();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_2545FF054();
    sub_2545FE6F4();
    sub_2545FE6D4();
    type metadata accessor for IntentsService();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    sub_2545FE6E4();
    sub_2545FEA14();

    sub_2545FA594(v27, v28, a2, v7);
    return sub_2545FEA14();
  }

  v26 = v7;
  v25 = a2;
  if ((v7 & 1) == 0)
  {
    if (v28)
    {
      v17 = v28;
LABEL_10:
      v7 = swift_slowAlloc();
      *v7 = 0;
      v18 = sub_2545FEFD4();
      _os_signpost_emit_with_name_impl(&dword_2545AB000, v14, v15, v18, v17, "", v7, 2u);
      MEMORY[0x259C12CB0](v7, -1, -1);

      LOBYTE(v7) = v26;
      a2 = v25;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v28 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v17 = &v29;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2545F8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2545FA3B4(a3, v27 - v11);
  v13 = sub_2545FF384();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_2545FE8F4();
  if (v15 == 1)
  {
    sub_2545B612C(v12, &qword_27F606CE8, &qword_254602FB0);
  }

  else
  {
    sub_2545FF374();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();
  sub_2545FEA14();
  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2545FF334();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2545FF194() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2545FE8F4();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();
      sub_2545FEA14();
      sub_2545FEA14();
      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2545F8928()
{
  sub_2545B612C(v0 + 120, &qword_27F606CE0, &qword_254602FA8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static INIntentUtils.fromTypeErasedAppIntent(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x2822009F8](sub_2545F899C, 0, 0);
}

uint64_t sub_2545F899C()
{
  v79 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_2545FF0A4();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v78[0] = v8;
    *v7 = 136315138;
    *(v0 + 128) = v6;
    sub_2545FA224(0, &qword_27F606CC8, 0x277CD3D30);
    v9 = v6;
    v10 = sub_2545FF184();
    v12 = sub_2545F0FB4(v10, v11, v78);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2545AB000, v4, v5, "INIntentUtils.fromTypeErasedAppIntent attempting to resolve %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v13 = *(v0 + 144);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    v22 = INTypedIntentWithIntent();
    if (v22)
    {
      v23 = v22;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        goto LABEL_7;
      }
    }

    v24 = sub_2545FF084();
    v25 = sub_2545FF454();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v78[0] = v27;
      *v26 = 136315138;
      *(v0 + 112) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CA8, &qword_254602E68);
      v28 = sub_2545FF184();
      v30 = sub_2545F0FB4(v28, v29, v78);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2545AB000, v24, v25, "INIntent does not conform to AppIntent: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C12CB0](v27, -1, -1);
      MEMORY[0x259C12CB0](v26, -1, -1);
    }

    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();
    goto LABEL_35;
  }

  v15 = *(v0 + 144);
LABEL_7:
  *(v0 + 160) = v14;
  sub_2545FECC4();
  v16 = v14;
  if (sub_2545FECA4() == 7 || [objc_opt_self() isSpringBoard])
  {
    v17 = sub_2545FF084();
    v18 = sub_2545FF444();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2545AB000, v17, v18, "INIntentUtils.fromTypeErasedAppIntent called from inside SpringBoard", v19, 2u);
      MEMORY[0x259C12CB0](v19, -1, -1);
    }

    if (qword_27F6063E0 != -1)
    {
      swift_once();
    }

    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = sub_2545F9380;

    return sub_2545F7C74();
  }

  v31 = [*(v0 + 160) linkAction];
  *(v0 + 176) = v31;
  if (!v31)
  {
    v56 = *(v0 + 152);
    v57 = *(v0 + 160);
    v58 = sub_2545FF084();
    v59 = sub_2545FF454();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 160);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v78[0] = v62;
      *v61 = 136315138;
      *(v0 + 120) = v60;
      sub_2545FA224(0, &qword_27F606CB0, 0x277CD3A70);
      v63 = v60;
      v64 = sub_2545FF184();
      v66 = sub_2545F0FB4(v64, v65, v78);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_2545AB000, v58, v59, "Failed to lazily load link for: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x259C12CB0](v62, -1, -1);
      MEMORY[0x259C12CB0](v61, -1, -1);
    }

    v67 = *(v0 + 160);
    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();

LABEL_35:
    v68 = *(v0 + 8);

    return v68();
  }

  v32 = *(v0 + 152);
  v33 = v31;
  v34 = sub_2545FF084();
  v35 = sub_2545FF474();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78[0] = v37;
    *v36 = 136315138;
    v38 = [v33 identifier];
    v39 = sub_2545FF174();
    v41 = v40;

    v42 = sub_2545F0FB4(v39, v41, v78);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2545AB000, v34, v35, "INIntentUtils.fromTypeErasedAppIntent resolving %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x259C12CB0](v37, -1, -1);
    MEMORY[0x259C12CB0](v36, -1, -1);
  }

  v43 = [v33 identifier];
  v44 = sub_2545FF174();
  v46 = v45;

  if (v44 == 0xD00000000000001FLL && 0x8000000254603CC0 == v46 || (sub_2545FF7B4() & 1) != 0)
  {
    v47 = *(v0 + 136);

    *(v0 + 104) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 80) = v33;
    v48 = v0 + 80;
    v49 = &type metadata for HomeXLModuleConfigurationIntent;
    v47[3] = &type metadata for HomeXLModuleConfigurationIntent;
    v50 = sub_2545B40B0();
    v47[4] = v50;
    v51 = swift_allocObject();
    *v47 = v51;
    v52 = *(MEMORY[0x277CB9C40] + 4);
    v53 = v33;
    v54 = swift_task_alloc();
    *(v0 + 184) = v54;
    *v54 = v0;
    v54[1] = sub_2545F9A40;
    v55 = v51 + 16;
LABEL_29:

    return MEMORY[0x28210B540](v55, v48, v49, v50);
  }

  if (v44 == 0xD000000000000021 && 0x8000000254603CE0 == v46)
  {

LABEL_42:
    v70 = *(v0 + 136);
    *(v0 + 72) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 48) = v33;
    v48 = v0 + 48;
    v49 = &type metadata for HomeSingleTileConfigurationIntent;
    *(v70 + 24) = &type metadata for HomeSingleTileConfigurationIntent;
    v50 = sub_2545E1578();
    *(v70 + 32) = v50;
    v71 = *(MEMORY[0x277CB9C40] + 4);
    v72 = v33;
    v73 = swift_task_alloc();
    *(v0 + 200) = v73;
    *v73 = v0;
    v73[1] = sub_2545F9BCC;
    v55 = *(v0 + 136);
    goto LABEL_29;
  }

  v69 = sub_2545FF7B4();

  if (v69)
  {
    goto LABEL_42;
  }

  *(v0 + 40) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
  *(v0 + 16) = v33;
  v74 = *(MEMORY[0x277CB9B68] + 4);
  v75 = v33;
  v76 = swift_task_alloc();
  *(v0 + 216) = v76;
  *v76 = v0;
  v76[1] = sub_2545F9CE8;
  v77 = *(v0 + 136);

  return MEMORY[0x28210B2A0](v77, v0 + 16);
}

uint64_t sub_2545F9380()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2545F947C, 0, 0);
}

uint64_t sub_2545F947C()
{
  v51 = v0;
  v1 = [*(v0 + 160) linkAction];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = v1;
    v4 = sub_2545FF084();
    v5 = sub_2545FF474();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v50[0] = v7;
      *v6 = 136315138;
      v8 = [v3 identifier];
      v9 = sub_2545FF174();
      v11 = v10;

      v12 = sub_2545F0FB4(v9, v11, v50);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_2545AB000, v4, v5, "INIntentUtils.fromTypeErasedAppIntent resolving %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x259C12CB0](v7, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }

    v13 = [v3 identifier];
    v14 = sub_2545FF174();
    v16 = v15;

    v17 = v14 == 0xD00000000000001FLL && 0x8000000254603CC0 == v16;
    if (v17 || (sub_2545FF7B4() & 1) != 0)
    {
      v18 = *(v0 + 136);

      *(v0 + 104) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
      *(v0 + 80) = v3;
      v19 = v0 + 80;
      v20 = &type metadata for HomeXLModuleConfigurationIntent;
      v18[3] = &type metadata for HomeXLModuleConfigurationIntent;
      v21 = sub_2545B40B0();
      v18[4] = v21;
      v22 = swift_allocObject();
      *v18 = v22;
      v23 = *(MEMORY[0x277CB9C40] + 4);
      v24 = v3;
      v25 = swift_task_alloc();
      *(v0 + 184) = v25;
      *v25 = v0;
      v25[1] = sub_2545F9A40;
      v26 = v22 + 16;
LABEL_10:

      return MEMORY[0x28210B540](v26, v19, v20, v21);
    }

    if (v14 == 0xD000000000000021 && 0x8000000254603CE0 == v16)
    {

LABEL_22:
      v41 = *(v0 + 136);
      *(v0 + 72) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
      *(v0 + 48) = v3;
      v19 = v0 + 48;
      v20 = &type metadata for HomeSingleTileConfigurationIntent;
      *(v41 + 24) = &type metadata for HomeSingleTileConfigurationIntent;
      v21 = sub_2545E1578();
      *(v41 + 32) = v21;
      v42 = *(MEMORY[0x277CB9C40] + 4);
      v43 = v3;
      v44 = swift_task_alloc();
      *(v0 + 200) = v44;
      *v44 = v0;
      v44[1] = sub_2545F9BCC;
      v26 = *(v0 + 136);
      goto LABEL_10;
    }

    v40 = sub_2545FF7B4();

    if (v40)
    {
      goto LABEL_22;
    }

    *(v0 + 40) = sub_2545FA224(0, &qword_27F606CB8, 0x277D23720);
    *(v0 + 16) = v3;
    v45 = *(MEMORY[0x277CB9B68] + 4);
    v46 = v3;
    v47 = swift_task_alloc();
    *(v0 + 216) = v47;
    *v47 = v0;
    v47[1] = sub_2545F9CE8;
    v48 = *(v0 + 136);

    return MEMORY[0x28210B2A0](v48, v0 + 16);
  }

  else
  {
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
    v29 = sub_2545FF084();
    v30 = sub_2545FF454();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 160);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50[0] = v33;
      *v32 = 136315138;
      *(v0 + 120) = v31;
      sub_2545FA224(0, &qword_27F606CB0, 0x277CD3A70);
      v34 = v31;
      v35 = sub_2545FF184();
      v37 = sub_2545F0FB4(v35, v36, v50);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2545AB000, v29, v30, "Failed to lazily load link for: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C12CB0](v33, -1, -1);
      MEMORY[0x259C12CB0](v32, -1, -1);
    }

    v38 = *(v0 + 160);
    sub_2545F9F90();
    swift_allocError();
    swift_willThrow();

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_2545F9A40()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v4 = sub_2545F9E1C;
  }

  else
  {
    v4 = sub_2545F9B5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F9B5C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545F9BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v4 = sub_2545F9E94;
  }

  else
  {
    v4 = sub_2545FA830;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F9CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v4 = sub_2545F9F0C;
  }

  else
  {
    sub_2545B612C(v2 + 16, &qword_27F606CC0, &qword_254602E70);
    v4 = sub_2545FA830;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545F9E1C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = *(v0 + 192);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2545F9E94()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = *(v0 + 208);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2545F9F0C()
{
  v1 = *(v0 + 160);

  sub_2545B612C(v0 + 16, &qword_27F606CC0, &qword_254602E70);
  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_2545F9F90()
{
  result = qword_27F606CA0;
  if (!qword_27F606CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606CA0);
  }

  return result;
}

uint64_t sub_2545F9FE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2545FA0DC;

  return v7(a1);
}

uint64_t sub_2545FA0DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C12CB0);
  }

  return result;
}

uint64_t sub_2545FA224(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2545FA270()
{
  result = qword_27F606CD0;
  if (!qword_27F606CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606CD0);
  }

  return result;
}

uint64_t sub_2545FA308()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2545AF6A0;

  return sub_2545F8014();
}

uint64_t sub_2545FA3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545FA424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2545D880C;

  return sub_2545F9FE4(a1, v5);
}

uint64_t sub_2545FA4DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2545AF6A0;

  return sub_2545F9FE4(a1, v5);
}

uint64_t sub_2545FA594(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_2545FF034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2545FEFF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2545FF014();
  sub_2545FF044();
  v22 = sub_2545FF484();
  result = sub_2545FF4C4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:
      sub_2545FE8F4();
      sub_2545FF074();
      sub_2545FEA14();
      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_2545FEFD4();
      _os_signpost_emit_with_name_impl(&dword_2545AB000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x259C12CB0](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_2545FA83C()
{
  v1 = sub_2545FEB04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - v11;
  v13 = 0x27977E000uLL;
  v14 = [v0 homes];
  v30[0] = sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
  v15 = sub_2545FF2B4();

  if (v15 >> 62)
  {
    v16 = sub_2545FF674();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
    return 0;
  }

  if (qword_27F6063E8 != -1)
  {
    swift_once();
  }

  v17 = *algn_27F60AE18;
  if (sub_2545FC3F0(qword_27F60AE10))
  {
    v18 = [v0 currentHome];
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_2545FF164();
  v20 = [v17 stringForKey_];

  if (v20)
  {
    sub_2545FF174();

    sub_2545FEA84();
    v13 = 0x27977E000;
  }

  else
  {
    (*(v2 + 56))(v12, 1, 1, v1);
  }

  sub_2545FC50C(v12, v10);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_2545B612C(v12, &qword_27F6064D0, &unk_2546002B0);
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    v21 = [v0 *(v13 + 2944)];
    v22 = sub_2545FF2B4();

    MEMORY[0x28223BE20](v23);
    v30[-2] = v5;
    v24 = sub_2545FBCE0(sub_2545FC57C, &v30[-4], v22);

    sub_2545B612C(v12, &qword_27F6064D0, &unk_2546002B0);
    (*(v2 + 8))(v5, v1);
    result = v24;
    if (v24)
    {
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_16:

      return v18;
    }
  }

  result = [v0 currentHome];
  if (v18)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (result)
  {
    return result;
  }

  v26 = [v0 *(v13 + 2944)];
  v27 = sub_2545FF2B4();

  if (v27 >> 62)
  {
    result = sub_2545FF674();
    if (result)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:

    return 0;
  }

LABEL_21:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x259C124A0](0, v27);
    goto LABEL_24;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);
LABEL_24:
    v29 = v28;

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_2545FACE8(uint64_t a1)
{
  v3 = type metadata accessor for HomeID();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = [v1 homes];
      sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
      v11 = sub_2545FF2B4();

      v40 = v11;
      sub_2545FF424();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
      sub_2545FC59C();
      v12 = sub_2545FF3D4();
    }

    else
    {
      v15 = [v1 homes];
      sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
      v16 = sub_2545FF2B4();

      v41 = MEMORY[0x277D84F90];
      if (v16 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2545FF674())
      {
        v32[1] = v1;
        v18 = 0;
        v37 = v16 & 0xFFFFFFFFFFFFFF8;
        v38 = v16 & 0xC000000000000001;
        v33 = v16;
        v35 = i;
        v36 = v16 + 32;
        v16 = a1 + 56;
        while (1)
        {
          if (v38)
          {
            v19 = MEMORY[0x259C124A0](v18, v33);
          }

          else
          {
            if (v18 >= *(v37 + 16))
            {
              goto LABEL_29;
            }

            v19 = *(v36 + 8 * v18);
          }

          v20 = v19;
          if (__OFADD__(v18++, 1))
          {
            break;
          }

          v1 = [v19 uniqueIdentifier];
          sub_2545FEAC4();

          if (*(a1 + 16))
          {
            v22 = *(a1 + 40);
            sub_2545FF834();
            sub_2545FEB04();
            sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0]);
            sub_2545FF0C4();
            v1 = &v40;
            v23 = sub_2545FF864();
            v24 = -1 << *(a1 + 32);
            v25 = v23 & ~v24;
            if ((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
            {
              v26 = ~v24;
              v27 = *(v34 + 72);
              while (1)
              {
                sub_2545DE71C(*(a1 + 48) + v27 * v25, v7);
                v1 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
                sub_2545DE780(v7);
                if (v1)
                {
                  break;
                }

                v25 = (v25 + 1) & v26;
                if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              sub_2545DE780(v9);
              v1 = &v41;
              sub_2545FF5F4();
              v28 = *(v41 + 16);
              sub_2545FF624();
              sub_2545FF634();
              sub_2545FF604();
            }

            else
            {
LABEL_23:

              sub_2545DE780(v9);
            }

            i = v35;
          }

          else
          {

            sub_2545DE780(v9);
          }

          if (v18 == i)
          {
            v29 = v41;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

      v29 = MEMORY[0x277D84F90];
LABEL_32:

      v40 = v29;
      sub_2545FF424();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
      sub_2545FC59C();
      v12 = sub_2545FF3D4();
      sub_2545FEA14();
    }
  }

  else
  {
    v13 = sub_2545FA83C();
    v39 = v13;
    v12 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x259C12190]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2545FF2D4();
      }

      sub_2545FF304();
      v12 = v40;
    }

    sub_2545B612C(&v39, &qword_27F606CF8, &qword_254603010);
  }

  return v12;
}

uint64_t sub_2545FB1D4(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D60, &qword_254603158);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D68, &qword_254603160);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D70, &qword_254603168);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D78, &qword_254603170);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545FCE80();
  v20 = v31;
  sub_2545FF884();
  if (!v20)
  {
    v33 = 0;
    sub_2545FCF7C();
    sub_2545FF734();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_2545FCF28();
    sub_2545FF734();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_2545FCED4();
  v22 = v28;
  sub_2545FF734();
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D40, &qword_254603150);
  sub_2545FCFD0(&qword_27F606D80, &qword_27F606BD0);
  v23 = v30;
  sub_2545FF774();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2545FB600(uint64_t a1)
{
  v2 = sub_2545FCF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB63C(uint64_t a1)
{
  v2 = sub_2545FCF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB678()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 2037149295;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_2545FB6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2545FC750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2545FB6F8(uint64_t a1)
{
  v2 = sub_2545FCE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB734(uint64_t a1)
{
  v2 = sub_2545FCE80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB770(uint64_t a1)
{
  v2 = sub_2545FCF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB7AC(uint64_t a1)
{
  v2 = sub_2545FCF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2545FF7B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2545FB874(uint64_t a1)
{
  v2 = sub_2545FCED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB8B0(uint64_t a1)
{
  v2 = sub_2545FCED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB8EC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_2545FBDF4(v2, v3);
}

uint64_t sub_2545FB92C()
{
  v1 = *v0;
  sub_2545FF834();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C12730](2);
      sub_2545FC0CC(v4, v1);
      return sub_2545FF864();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C12730](v2);
  return sub_2545FF864();
}

uint64_t sub_2545FB9A0(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x259C12730](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x259C12730](v4);
  }

  MEMORY[0x259C12730](2);

  return sub_2545FC0CC(a1, v3);
}

uint64_t sub_2545FBA20()
{
  v1 = *v0;
  sub_2545FF834();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C12730](2);
      sub_2545FC0CC(v4, v1);
      return sub_2545FF864();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C12730](v2);
  return sub_2545FF864();
}

uint64_t sub_2545FBA90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2545FC868(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2545FBAD8()
{
  if (!*v0)
  {
    return 0x746E6572727563;
  }

  if (*v0 == 1)
  {
    return 7105633;
  }

  type metadata accessor for HomeID();
  sub_2545FD06C(&qword_27F606768, type metadata accessor for HomeID);
  v2 = sub_2545FF3A4();
  MEMORY[0x259C120B0](v2);

  return 0x3A796C6E6FLL;
}

id sub_2545FBBB0()
{
  result = sub_2545FC2E0();
  qword_27F60AE10 = result;
  *algn_27F60AE18 = v1;
  return result;
}

uint64_t sub_2545FBBD4(id *a1)
{
  v2 = sub_2545FEB04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_2545FEAC4();

  v8 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void *sub_2545FBCE0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2545FF674())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C124A0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2545FBDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v33 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = a2 + 56;
  v33 = v21;
  v34 = &v33 - v13;
  v35 = v14;
  v36 = a1;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
LABEL_13:
      v26 = *(v14 + 72);
      sub_2545DE71C(*(a1 + 48) + v26 * (v23 | (v16 << 6)), v15);
      sub_2545E2F94(v15, v11);
      v27 = *(a2 + 40);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0]);
      sub_2545FF0C4();
      v28 = sub_2545FF864();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v31 = ~v29;
      while (1)
      {
        sub_2545DE71C(*(a2 + 48) + v30 * v26, v8);
        v32 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545DE780(v8);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_2545DE780(v11);
      v14 = v35;
      a1 = v36;
      v21 = v33;
      v15 = v34;
      v20 = v37;
      if (!v37)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_2545DE780(v11);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v17 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v37 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2545FC0CC(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[1] = a1;
  v23 = v10;
  v24 = v9;
  sub_2545FF864();
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  result = sub_2545FE8E4();
  v16 = 0;
  for (i = 0; v13; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_2545DE71C(*(a2 + 48) + *(v22 + 72) * (v19 | (v18 << 6)), v7);
    sub_2545FF834();
    sub_2545FEB04();
    sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0]);
    sub_2545FF0C4();
    v20 = sub_2545FF864();
    result = sub_2545DE780(v7);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      sub_2545FEA14();
      return MEMORY[0x259C12730](v16);
    }

    v13 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_2545FC2E0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2545FF164();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2545FF164();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    [objc_opt_self() standardUserDefaults];
  }

  return v2;
}

uint64_t sub_2545FC3F0(void *a1)
{
  v2 = sub_2545FF164();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2545FF524();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_2545FA224(0, &qword_27F606CF0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_2545B612C(v9, &qword_27F606CC0, &qword_254602E70);
  }

  return 1;
}

uint64_t sub_2545FC50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545FC59C()
{
  result = qword_27F606850;
  if (!qword_27F606850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606848, &qword_254600F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606850);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17HomeWidgetIntents0A5ScopeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2545FC618(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545FC66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2545FC6C8(void *result, int a2)
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

unint64_t sub_2545FC6FC()
{
  result = qword_27F606D00;
  if (!qword_27F606D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D00);
  }

  return result;
}

uint64_t sub_2545FC750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_2545FF7B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_2545FF7B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037149295 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2545FF7B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2545FC868(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D08, &qword_254603128);
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D10, &qword_254603130);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D18, &qword_254603138);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D20, &qword_254603140);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v46 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2545FCE80();
  v22 = v45;
  sub_2545FF874();
  if (!v22)
  {
    v38 = v10;
    v23 = v43;
    v24 = v44;
    v45 = v15;
    v21 = v18;
    v25 = sub_2545FF724();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_2545FF5D4();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D30, &qword_254603148) + 48);
      *v31 = &type metadata for HomeScope;
      sub_2545FF6D4();
      sub_2545FF5C4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v45 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else if (*(v25 + 32))
    {
      v34 = v45;
      if (v27 == 1)
      {
        v49 = 1;
        sub_2545FCF28();
        sub_2545FF6C4();
        (*(v39 + 8))(v9, v40);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = 1;
      }

      else
      {
        v50 = 2;
        sub_2545FCED4();
        sub_2545FF6C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D40, &qword_254603150);
        sub_2545FCFD0(&qword_27F606D48, &qword_27F606BE0);
        v37 = v41;
        sub_2545FF714();
        (*(v42 + 8))(v24, v37);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = v47;
      }
    }

    else
    {
      v48 = 0;
      sub_2545FCF7C();
      v35 = v13;
      sub_2545FF6C4();
      v36 = v45;
      (*(v23 + 8))(v35, v38);
      (*(v36 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v21 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  return v21;
}

unint64_t sub_2545FCE80()
{
  result = qword_27F606D28;
  if (!qword_27F606D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D28);
  }

  return result;
}

unint64_t sub_2545FCED4()
{
  result = qword_27F606D38;
  if (!qword_27F606D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D38);
  }

  return result;
}

unint64_t sub_2545FCF28()
{
  result = qword_27F606D50;
  if (!qword_27F606D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D50);
  }

  return result;
}

unint64_t sub_2545FCF7C()
{
  result = qword_27F606D58;
  if (!qword_27F606D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D58);
  }

  return result;
}

uint64_t sub_2545FCFD0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606D40, &qword_254603150);
    sub_2545FD06C(a2, type metadata accessor for HomeID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2545FD06C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545FD0F8()
{
  result = qword_27F606D88;
  if (!qword_27F606D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D88);
  }

  return result;
}

unint64_t sub_2545FD150()
{
  result = qword_27F606D90;
  if (!qword_27F606D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D90);
  }

  return result;
}

unint64_t sub_2545FD1A8()
{
  result = qword_27F606D98;
  if (!qword_27F606D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D98);
  }

  return result;
}

unint64_t sub_2545FD200()
{
  result = qword_27F606DA0;
  if (!qword_27F606DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DA0);
  }

  return result;
}

unint64_t sub_2545FD258()
{
  result = qword_27F606DA8;
  if (!qword_27F606DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DA8);
  }

  return result;
}

unint64_t sub_2545FD2B0()
{
  result = qword_27F606DB0;
  if (!qword_27F606DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DB0);
  }

  return result;
}

unint64_t sub_2545FD308()
{
  result = qword_27F606DB8;
  if (!qword_27F606DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DB8);
  }

  return result;
}

unint64_t sub_2545FD360()
{
  result = qword_27F606DC0;
  if (!qword_27F606DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DC0);
  }

  return result;
}

unint64_t sub_2545FD3B8()
{
  result = qword_27F606DC8;
  if (!qword_27F606DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DC8);
  }

  return result;
}

unint64_t sub_2545FD410()
{
  result = qword_27F606DD0;
  if (!qword_27F606DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DD0);
  }

  return result;
}

uint64_t sub_2545FD46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  qword_27F606DD8 = result;
  return result;
}

uint64_t static HomeSingleTileEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F6063F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606DD8;

  return sub_2545FE8F4();
}

uint64_t sub_2545FD528()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606DE0);
  __swift_project_value_buffer(v0, qword_27F606DE0);
  return sub_2545FE994();
}

uint64_t static HomeSingleTileEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for HomeSingleTileEntity()
{
  result = qword_281532F48;
  if (!qword_281532F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeSingleTileEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_2545FEA64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2545FF134();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2545FF124();
  sub_2545FF114();
  v12 = v0 + *(type metadata accessor for HomeSingleTileEntity() + 24);
  v13 = type metadata accessor for TileElementInfo();
  v14 = (v12 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v8 + 56))(v6, 1, 1, v7);
  v17 = (v12 + *(v13 + 24));
  v18 = *v17;
  v19 = v17[1];
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
}

uint64_t static HomeSingleTileEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID();
  if (qword_254603868[*(a1 + *(v4 + 20))] != qword_254603868[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for HomeSingleTileEntity();
  v6 = *(v5 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t HomeSingleTileEntity.hash(into:)()
{
  v1 = v0;
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254603868[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for HomeSingleTileEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t HomeSingleTileEntity.hashValue.getter()
{
  v1 = v0;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254603868[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for HomeSingleTileEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545FDC30@<X0>(void *a1@<X8>)
{
  if (qword_27F6063F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606DD8;

  return sub_2545FE8F4();
}

uint64_t sub_2545FDCA0(uint64_t a1)
{
  v3 = v1;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v4 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254603868[*(v1 + *(v4 + 20))]);
  v5 = v1 + *(a1 + 20);
  sub_2545FF0C4();
  v6 = v3 + *(a1 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545FDD90(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254603868[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t sub_2545FDE68(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254603868[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545FDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID();
  if (qword_254603868[*(a1 + *(v6 + 20))] != qword_254603868[*(a2 + *(v6 + 20))])
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v8, a2 + v8);
}

uint64_t sub_2545FDFFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545FE0A4(uint64_t a1)
{
  v2 = sub_2545FE51C(&qword_27F606900, type metadata accessor for HomeSingleTileEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545FE124(uint64_t a1)
{
  v2 = sub_2545FE51C(&qword_281532F68, type metadata accessor for HomeSingleTileEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static HomeSingleTileEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for HomeSingleTileEntity();
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

unint64_t sub_2545FE418()
{
  result = qword_27F606E00;
  if (!qword_27F606E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606E08, &qword_2546036C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606E00);
  }

  return result;
}

uint64_t sub_2545FE4C4(uint64_t a1)
{
  result = sub_2545FE51C(&qword_27F606900, type metadata accessor for HomeSingleTileEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545FE51C(unint64_t *a1, void (*a2)(uint64_t))
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