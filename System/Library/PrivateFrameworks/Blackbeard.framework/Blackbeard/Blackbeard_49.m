uint64_t sub_1E63EA760()
{
  v0 = sub_1E65E5E68();
  v4 = sub_1E63EA7E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E63EA7E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E65E5D68();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1E65E6678();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1E5DF7D84(v9, 0);
  v12 = sub_1E63EA938(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1E65E5D68();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1E65E6908();
LABEL_4:

  return sub_1E65E5D68();
}

unint64_t sub_1E63EA938(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1E63EAB58(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E65E5E08();
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
          result = sub_1E65E6908();
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

    result = sub_1E63EAB58(v12, a6, a7);
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

    result = sub_1E65E5DD8();
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

uint64_t sub_1E63EAB58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E65E5E18();
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
    v5 = MEMORY[0x1E694D7F0](15, a1 >> 16);
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

uint64_t sub_1E63EABD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_1E65E6908();
  }

  result = sub_1E63EACF0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_1E63EAC9C()
{
  result = qword_1ED079080;
  if (!qword_1ED079080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079080);
  }

  return result;
}

uint64_t sub_1E63EACF0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_1E63EAB58(a2, a4, a5);
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
  result = sub_1E65E5DF8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1E63EAB58(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1E63EAB58(a3, a4, a5);
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

  result = sub_1E65E5DF8();
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
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
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
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
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
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
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

uint64_t sub_1E63EB15C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v86 = sub_1E65D8998();
  v82 = *(v86 - 8);
  v1 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v76 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v60 - v13;
  v84 = sub_1E65DAC98();
  v69 = *(v84 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65DB268();
  v17 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v60 - v21;
  v68 = sub_1E65DA0B8();
  v22 = *(v68 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v68);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - v27;
  v29 = sub_1E65D9D58();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65D8BB8();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E628E768(v85, v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v22;
    v39 = v68;
    (*(v22 + 32))(v26, v37, v68);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v69 + 8))(v16, v84);
    v87 = sub_1E65DA0A8();
    v88 = v41;
    sub_1E65DC488();
    sub_1E63EBB48(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v38 + 8))(v26, v39);
  }

  else
  {
    v79 = v16;
    v65 = v22;
    v63 = v30;
    (*(v30 + 32))(v33, v37, v29);
    sub_1E65D9D38();
    v62 = v33;
    v42 = sub_1E65D9D48();
    v43 = *(v42 + 16);
    v44 = v28;
    v64 = v29;
    if (v43)
    {
      v61 = v28;
      v87 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v43, 0);
      v85 = v87;
      v75 = *(v82 + 16);
      v45 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v60 = v42;
      v46 = v42 + v45;
      v47 = *(v82 + 72);
      v73 = (v69 + 8);
      v74 = v47;
      v82 += 16;
      v48 = v79;
      v71 = v78 + 32;
      v72 = (v82 - 8);
      v49 = v66;
      v50 = v76;
      do
      {
        v75(v50, v46, v86);
        sub_1E65D8978();
        sub_1E65DAC38();
        sub_1E65DC2D8();
        sub_1E65DAC78();
        sub_1E65D74C8();

        v51 = v10;
        sub_1E65DB248();
        (*v73)(v48, v84);
        sub_1E65D8988();
        v52 = sub_1E65D8968();
        sub_1E611CCC0(v52);

        sub_1E63EBB48(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC328();
        (*v72)(v50, v86);
        v87 = v85;
        v54 = *(v85 + 16);
        v53 = *(v85 + 24);
        v55 = v85;
        if (v54 >= v53 >> 1)
        {
          sub_1E601BE64(v53 > 1, v54 + 1, 1);
          v49 = v66;
          v55 = v87;
        }

        v85 = v55;
        *(v55 + 16) = v54 + 1;
        (*(v78 + 32))(v55 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v54, v49, v77);
        v46 += v74;
        --v43;
        v10 = v51;
        v48 = v79;
      }

      while (v43);

      v56 = v69;
      v57 = v84;
      v44 = v61;
    }

    else
    {

      v85 = MEMORY[0x1E69E7CC0];
      v56 = v69;
      v57 = v84;
    }

    v58 = v79;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v56 + 8))(v58, v57);
    sub_1E65DA0A8();
    sub_1E63EBB48(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v65 + 8))(v44, v68);
    (*(v63 + 8))(v62, v64);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E63EBB48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for BuildPlanButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for BuildPlanButtonStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_1E63EBD00@<X0>(unint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v149 = a1;
  v148 = a3;
  LODWORD(v139) = a2;
  LODWORD(v138) = HIBYTE(a2);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079088, &qword_1E6600CD0);
  v3 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v5 = &v115 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079090, &qword_1E6600CD8);
  v122 = *(v117 - 8);
  v6 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v115 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079098, &qword_1E6600CE0);
  v8 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v118 = &v115 - v9;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790A0, &qword_1E6600CE8);
  v10 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v129 = &v115 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790A8, &qword_1E6600CF0);
  v12 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v115 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790B0, &qword_1E6600CF8);
  v14 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v115 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790B8, &qword_1E6600D00);
  v16 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v115 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790C0, &qword_1E6600D08);
  v18 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v123 = &v115 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790C8, &qword_1E6600D10);
  v126 = *(v137 - 8);
  v20 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v125 = &v115 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790D0, &qword_1E6600D18);
  v22 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v115 - v23;
  v24 = sub_1E65E43E8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790D8, &qword_1E6600D20);
  v119 = *(v120 - 8);
  v27 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v29 = &v115 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790E0, &qword_1E6600D28);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v115 - v32;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790E8, &qword_1E6600D30);
  v34 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v36 = &v115 - v35;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790F0, &qword_1E6600D38);
  v37 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v39 = &v115 - v38;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790F8, &qword_1E6600D40);
  v124 = *(v133 - 8);
  v40 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v115 - v41;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079100, &qword_1E6600D48);
  v42 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v134 = &v115 - v43;
  if (v138 < 2)
  {
    v45 = *(v25 + 16);
    v44 = v25 + 16;
    v45(&v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v149, v24);
    v46 = (*(v44 + 64) + 16) & ~*(v44 + 64);
    v47 = (v44 + 16);
    if (v139 > 1)
    {
      v73 = swift_allocObject();
      v74 = (*v47)(v73 + v46, &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      MEMORY[0x1EEE9AC00](v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791C8, &qword_1E6600E18);
      sub_1E63EEEA8(&qword_1ED0791D0, &qword_1ED0791C8, &qword_1E6600E18, sub_1E63EEF2C);
      v75 = v123;
      sub_1E65E4AA8();
      v76 = v136;
      v77 = v75 + *(v136 + 36);
      sub_1E65E4B38();
      v78 = sub_1E65E4438();
      *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)) = v78;
      sub_1E65E4B58();
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079180, &qword_1E6600DF8);
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079188, &qword_1E6600E00);
      v139 = sub_1E63EEB34();
      v149 = sub_1E63EEC18();
      v129 = sub_1E63EECD0();
      v79 = MEMORY[0x1E6981CD8];
      v80 = v125;
      sub_1E65E4928();
      sub_1E5DFE50C(v75, &qword_1ED0790C0, &qword_1E6600D08);
      v81 = v126;
      v82 = v137;
      (*(v126 + 16))(v135, v80, v137);
      swift_storeEnumTagMultiPayload();
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
      v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
      v85 = sub_1E63EE79C();
      v86 = sub_1E63EE9C4();
      v87 = sub_1E63EEA7C();
      *&v158 = v131;
      *(&v158 + 1) = v79;
      *&v159 = v83;
      *(&v159 + 1) = v84;
      *&v160 = v85;
      v88 = MEMORY[0x1E6981CD0];
      *(&v160 + 1) = MEMORY[0x1E6981CD0];
      *&v161 = v86;
      *(&v161 + 1) = v87;
      swift_getOpaqueTypeConformance2();
      *&v158 = v76;
      *(&v158 + 1) = v79;
      *&v159 = v130;
      *(&v159 + 1) = v138;
      *&v160 = v139;
      *(&v160 + 1) = v88;
      *&v161 = v149;
      *(&v161 + 1) = v129;
      swift_getOpaqueTypeConformance2();
      v72 = v134;
      sub_1E65E4138();
      (*(v81 + 8))(v80, v82);
    }

    else
    {
      v48 = swift_allocObject();
      v49 = (*v47)(v48 + v46, &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      MEMORY[0x1EEE9AC00](v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791F8, &qword_1E6600E38);
      sub_1E63EF114();
      sub_1E65E4AA8();
      sub_1E65E4BA8();
      sub_1E65E3E38();
      (*(v119 + 32))(v33, v29, v120);
      v50 = &v33[*(v30 + 36)];
      v51 = v163;
      *(v50 + 4) = v162;
      *(v50 + 5) = v51;
      *(v50 + 6) = v164;
      v52 = v159;
      *v50 = v158;
      *(v50 + 1) = v52;
      v53 = v161;
      *(v50 + 2) = v160;
      *(v50 + 3) = v53;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v54 = sub_1E65E4968();
      v55 = sub_1E65E4438();
      sub_1E5FAB460(v33, v36, &qword_1ED0790E0, &qword_1E6600D28);
      v56 = &v36[*(v121 + 36)];
      *v56 = v54;
      v56[8] = v55;
      v57 = sub_1E65E4988();
      sub_1E5FAB460(v36, v39, &qword_1ED0790E8, &qword_1E6600D30);
      v58 = v131;
      *&v39[*(v131 + 36)] = v57;
      sub_1E65E4B58();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079148, &qword_1E6600DD8);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079150, &qword_1E6600DE0);
      v61 = sub_1E63EE79C();
      v62 = sub_1E63EE9C4();
      v114 = sub_1E63EEA7C();
      v63 = v130;
      sub_1E65E4928();
      sub_1E5DFE50C(v39, &qword_1ED0790F0, &qword_1E6600D38);
      v64 = v124;
      v65 = v63;
      v66 = v133;
      (*(v124 + 16))(v135, v65, v133);
      swift_storeEnumTagMultiPayload();
      v150 = v58;
      v151 = MEMORY[0x1E6981CD8];
      v152 = v59;
      v153 = v60;
      v154 = v61;
      v155 = MEMORY[0x1E6981CD0];
      v156 = v62;
      v157 = v114;
      swift_getOpaqueTypeConformance2();
      v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
      v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
      v69 = sub_1E63EEB34();
      v70 = sub_1E63EEC18();
      v71 = sub_1E63EECD0();
      v150 = v136;
      v151 = MEMORY[0x1E6981CD8];
      v152 = v67;
      v153 = v68;
      v154 = v69;
      v155 = MEMORY[0x1E6981CD0];
      v156 = v70;
      v157 = v71;
      swift_getOpaqueTypeConformance2();
      v72 = v134;
      sub_1E65E4138();
      (*(v64 + 8))(v130, v66);
    }

    v89 = &qword_1ED079100;
    v90 = &qword_1E6600D48;
    sub_1E5DFD1CC(v72, v142, &qword_1ED079100, &qword_1E6600D48);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE5DC();
    sub_1E63EED88();
    v91 = v144;
    sub_1E65E4138();
    sub_1E5DFD1CC(v91, v147, &qword_1ED0790B8, &qword_1E6600D00);
    swift_storeEnumTagMultiPayload();
    sub_1E63EEE0C();
    sub_1E65E4138();
    sub_1E5DFE50C(v91, &qword_1ED0790B8, &qword_1E6600D00);
    v92 = v72;
    return sub_1E5DFE50C(v92, v89, v90);
  }

  v93 = v5;
  v94 = v122;
  v95 = v139;
  v137 = v93;
  if (v138 == 3)
  {
    v97 = *(v25 + 16);
    v96 = v25 + 16;
    v97(&v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v149, v24);
    v98 = (*(v96 + 64) + 16) & ~*(v96 + 64);
    v99 = swift_allocObject();
    v100 = (*(v96 + 16))(v99 + v98, &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    MEMORY[0x1EEE9AC00](v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50);
    sub_1E63EEEA8(&qword_1ED073A48, &qword_1ED073A50, &qword_1E6600D50, sub_1E60007B0);
    v101 = v116;
    sub_1E65E4AA8();
    sub_1E65E4B58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8);
    sub_1E63EE220();
    v102 = v118;
    v103 = v117;
    sub_1E65E4938();
    (*(v94 + 8))(v101, v103);
    v104 = sub_1E65E41D8();
    *(v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079118, &qword_1E6600D68) + 36)) = v104;
    if (v95 > 1)
    {
      sub_1E65E49A8();
      v105 = sub_1E65E49B8();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v105 = sub_1E65E4968();
    }

    KeyPath = swift_getKeyPath();
    v107 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079120, &qword_1E6600DA0) + 36));
    *v107 = KeyPath;
    v107[1] = v105;
    sub_1E65E4988();
    v108 = sub_1E65E49B8();

    v109 = swift_getKeyPath();
    v110 = (v102 + *(v127 + 36));
    *v110 = v109;
    v110[1] = v108;
    sub_1E5DFD1CC(v102, v137, &qword_1ED079098, &qword_1E6600CE0);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE304();
    v111 = v129;
    sub_1E65E4138();
    sub_1E5DFE50C(v102, &qword_1ED079098, &qword_1E6600CE0);
    v89 = &qword_1ED0790A0;
    v90 = &qword_1E6600CE8;
    sub_1E5DFD1CC(v111, v142, &qword_1ED0790A0, &qword_1E6600CE8);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE5DC();
    sub_1E63EED88();
    v112 = v144;
    sub_1E65E4138();
    sub_1E5DFD1CC(v112, v147, &qword_1ED0790B8, &qword_1E6600D00);
    swift_storeEnumTagMultiPayload();
    sub_1E63EEE0C();
    sub_1E65E4138();
    sub_1E5DFE50C(v112, &qword_1ED0790B8, &qword_1E6600D00);
    v92 = v111;
    return sub_1E5DFE50C(v92, v89, v90);
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

__n128 sub_1E63ED460@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - v5;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v7 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v9 = &v6[*(v3 + 44)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E63EF310(v6, a1);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

__n128 sub_1E63ED5C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - v5;
  sub_1E65E43C8();
  sub_1E65E44A8();
  v7 = sub_1E65E44B8();

  KeyPath = swift_getKeyPath();
  v9 = &v6[*(v3 + 44)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E63EF310(v6, a1);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_1E63ED718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079108, &qword_1E6600D58) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60) + 28);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079090, &qword_1E6600CD8);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_1E63ED7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791E8, &unk_1E6600E28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791E0, &qword_1E6600E20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v14 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v9[*(v6 + 36)] = sub_1E65E4968();
  v17 = *MEMORY[0x1E697E728];
  v18 = sub_1E65E3DD8();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  sub_1E63EF2C8(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E63EF054();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E65E4848();
    sub_1E5DFE50C(v5, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v9, &qword_1ED0791E8, &unk_1E6600E28);
    v20 = sub_1E65E4488();
    v21 = &v13[*(v10 + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    sub_1E65E4BA8();
    sub_1E65E3E38();
    sub_1E5FAB460(v13, a1, &qword_1ED0791E0, &qword_1E6600E20);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791C8, &qword_1E6600E18);
    v22 = (a1 + *(result + 36));
    v23 = v26[5];
    v22[4] = v26[4];
    v22[5] = v23;
    v22[6] = v26[6];
    v24 = v26[1];
    *v22 = v26[0];
    v22[1] = v24;
    v25 = v26[3];
    v22[2] = v26[2];
    v22[3] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63EDBF0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079208, &qword_1E6600E48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079200, &qword_1E6600E40);
  v14 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v16 = v30 - v15;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v17 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v30[1] = v5;
  v19 = &v8[*(v5 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = *MEMORY[0x1E697E728];
  v21 = sub_1E65E3DD8();
  (*(*(v21 - 8) + 104))(v4, v20, v21);
  sub_1E63EF2C8(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E60007B0();
    v23 = v31;
    v30[0] = v9;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E65E4848();
    sub_1E5DFE50C(v4, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v8, &qword_1ED072A70, &unk_1E65EC3F0);
    sub_1E65E4BA8();
    sub_1E65E3E38();
    (*(v10 + 32))(v16, v13, v30[0]);
    v24 = &v16[*(v32 + 36)];
    v25 = v38;
    *(v24 + 4) = v37;
    *(v24 + 5) = v25;
    *(v24 + 6) = v39;
    v26 = v34;
    *v24 = v33;
    *(v24 + 1) = v26;
    v27 = v36;
    *(v24 + 2) = v35;
    *(v24 + 3) = v27;
    v28 = sub_1E65E4488();
    sub_1E5FAB460(v16, v23, &qword_1ED079200, &qword_1E6600E40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791F8, &qword_1E6600E38);
    v29 = v23 + *(result + 36);
    *v29 = v28;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63EE038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1E65E3FA8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AB8, &qword_1E65EDEF0) + 36)) = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

uint64_t sub_1E63EE128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v11 = *(sub_1E65E3E18() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E65E3FA8();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074478, &qword_1E6600DF0) + 36)] = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

double sub_1E63EE218@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_1E63ED460(a1).n128_u64[0];
  return result;
}

unint64_t sub_1E63EE220()
{
  result = qword_1ED079110;
  if (!qword_1ED079110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079110);
  }

  return result;
}

unint64_t sub_1E63EE304()
{
  result = qword_1ED079128;
  if (!qword_1ED079128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079098, &qword_1E6600CE0);
    sub_1E63EE3BC();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079128);
  }

  return result;
}

unint64_t sub_1E63EE3BC()
{
  result = qword_1ED079130;
  if (!qword_1ED079130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079120, &qword_1E6600DA0);
    sub_1E63EE474();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079130);
  }

  return result;
}

unint64_t sub_1E63EE474()
{
  result = qword_1ED079138;
  if (!qword_1ED079138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079118, &qword_1E6600D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079090, &qword_1E6600CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8);
    sub_1E63EE220();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C20, &qword_1ED073B00, &qword_1E65EDF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079138);
  }

  return result;
}

unint64_t sub_1E63EE5DC()
{
  result = qword_1ED079140;
  if (!qword_1ED079140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079100, &qword_1E6600D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790F0, &qword_1E6600D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
    sub_1E63EE79C();
    sub_1E63EE9C4();
    sub_1E63EEA7C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790C0, &qword_1E6600D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
    sub_1E63EEB34();
    sub_1E63EEC18();
    sub_1E63EECD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079140);
  }

  return result;
}

unint64_t sub_1E63EE79C()
{
  result = qword_1ED079158;
  if (!qword_1ED079158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790F0, &qword_1E6600D38);
    sub_1E63EE854();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079158);
  }

  return result;
}

unint64_t sub_1E63EE854()
{
  result = qword_1ED079160;
  if (!qword_1ED079160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790E8, &qword_1E6600D30);
    sub_1E63EE90C();
    sub_1E5FED46C(&qword_1EE2D4C30, &qword_1ED079168, &qword_1E6600DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079160);
  }

  return result;
}

unint64_t sub_1E63EE90C()
{
  result = qword_1EE2D4E58;
  if (!qword_1EE2D4E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790E0, &qword_1E6600D28);
    sub_1E5FED46C(&qword_1EE2D4B98, &qword_1ED0790D8, &qword_1E6600D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E58);
  }

  return result;
}

unint64_t sub_1E63EE9C4()
{
  result = qword_1ED079170;
  if (!qword_1ED079170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
    sub_1E63EE79C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079170);
  }

  return result;
}

unint64_t sub_1E63EEA7C()
{
  result = qword_1ED079178;
  if (!qword_1ED079178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
    sub_1E63EE79C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079178);
  }

  return result;
}

unint64_t sub_1E63EEB34()
{
  result = qword_1ED079190;
  if (!qword_1ED079190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790C0, &qword_1E6600D08);
    sub_1E5FED46C(&qword_1ED079198, &qword_1ED0791A0, &qword_1E6600E08);
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079190);
  }

  return result;
}

unint64_t sub_1E63EEC18()
{
  result = qword_1ED0791A8;
  if (!qword_1ED0791A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
    sub_1E63EEB34();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791A8);
  }

  return result;
}

unint64_t sub_1E63EECD0()
{
  result = qword_1ED0791B0;
  if (!qword_1ED0791B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
    sub_1E63EEB34();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791B0);
  }

  return result;
}

unint64_t sub_1E63EED88()
{
  result = qword_1ED0791B8;
  if (!qword_1ED0791B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790A0, &qword_1E6600CE8);
    sub_1E63EE304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791B8);
  }

  return result;
}

unint64_t sub_1E63EEE0C()
{
  result = qword_1ED0791C0;
  if (!qword_1ED0791C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790B8, &qword_1E6600D00);
    sub_1E63EE5DC();
    sub_1E63EED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791C0);
  }

  return result;
}

double sub_1E63EEE98@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_1E63ED5C0(a1).n128_u64[0];
  return result;
}

uint64_t sub_1E63EEEA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E63EEF2C()
{
  result = qword_1ED0791D8;
  if (!qword_1ED0791D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E0, &qword_1E6600E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E8, &unk_1E6600E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E63EF054();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791D8);
  }

  return result;
}

unint64_t sub_1E63EF054()
{
  result = qword_1ED0791F0;
  if (!qword_1ED0791F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E8, &unk_1E6600E28);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791F0);
  }

  return result;
}

unint64_t sub_1E63EF114()
{
  result = qword_1EE2D4E28;
  if (!qword_1EE2D4E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791F8, &qword_1E6600E38);
    sub_1E63EF1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E28);
  }

  return result;
}

unint64_t sub_1E63EF1A0()
{
  result = qword_1EE2D4EA8;
  if (!qword_1EE2D4EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079200, &qword_1E6600E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EA8);
  }

  return result;
}

uint64_t sub_1E63EF2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63EF310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63EF380()
{
  result = qword_1ED079210;
  if (!qword_1ED079210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079218, &qword_1E6600EB0);
    sub_1E63EEE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079210);
  }

  return result;
}

uint64_t URLContext.hash(into:)()
{
  v1 = sub_1E65D74E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
  sub_1E65E5B48();
  v10 = type metadata accessor for URLContext(0);
  sub_1E5F9AF1C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1E65E6D48();
    sub_1E65E5B48();
    (*(v2 + 8))(v5, v1);
  }

  v11 = (v0 + *(v10 + 24));
  if (!v11[1])
  {
    return sub_1E65E6D48();
  }

  v12 = *v11;
  sub_1E65E6D48();
  return sub_1E65E5D78();
}

uint64_t AppLaunchScope.hash(into:)()
{
  v1 = sub_1E65D74E8();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for URLContext(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for AppLaunchScope(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63F13DC(v0, v21, type metadata accessor for AppLaunchScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x1E694E740](0);
    }

    sub_1E63F148C(v21, v15, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](2);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
    sub_1E65E5B48();
    sub_1E5F9AF1C(&v15[*(v11 + 20)], v8);
    v23 = v34;
    if ((*(v34 + 48))(v8, 1, v1) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v26 = v33;
      (*(v23 + 32))(v33, v8, v1);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v23 + 8))(v26, v1);
    }

    v27 = &v15[*(v11 + 24)];
    if (*(v27 + 1))
    {
      v28 = *v27;
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    v32 = v15;
  }

  else
  {
    sub_1E63F148C(v21, v17, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](1);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
    sub_1E65E5B48();
    sub_1E5F9AF1C(&v17[*(v11 + 20)], v10);
    v24 = v34;
    if ((*(v34 + 48))(v10, 1, v1) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v29 = v33;
      (*(v24 + 32))(v33, v10, v1);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v24 + 8))(v29, v1);
    }

    v30 = &v17[*(v11 + 24)];
    if (*(v30 + 1))
    {
      v31 = *v30;
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    v32 = v17;
  }

  return sub_1E63F14F4(v32, type metadata accessor for URLContext);
}

uint64_t RouteSource.hash(into:)(uint64_t a1)
{
  v54 = a1;
  v2 = sub_1E65D8D48();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D74E8();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v51 = type metadata accessor for URLContext(0);
  v16 = *(*(v51 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v51);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = type metadata accessor for AppLaunchScope(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RouteSource(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63F13DC(v1, v29, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v35 = 0;
      }

      else
      {
        v35 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v35 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v35 = 8;
    }

    else
    {
      v35 = 9;
    }

    return MEMORY[0x1E694E740](v35);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E63F148C(v29, v21, type metadata accessor for URLContext);
      MEMORY[0x1E694E740](2);
      sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
      v40 = v53;
      sub_1E65E5B48();
      v41 = v51;
      sub_1E5F9AF1C(&v21[*(v51 + 20)], v15);
      v42 = v52;
      if ((*(v52 + 48))(v15, 1, v40) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v46 = v50;
        (*(v42 + 32))(v50, v15, v40);
        sub_1E65E6D48();
        sub_1E65E5B48();
        (*(v42 + 8))(v46, v40);
      }

      v47 = &v21[*(v41 + 24)];
      if (*(v47 + 1))
      {
        v48 = *v47;
        sub_1E65E6D48();
        sub_1E65E5D78();
      }

      else
      {
        sub_1E65E6D48();
      }

      return sub_1E63F14F4(v21, type metadata accessor for URLContext);
    }

    else
    {
      sub_1E63F148C(v29, v25, type metadata accessor for AppLaunchScope);
      MEMORY[0x1E694E740](1);
      AppLaunchScope.hash(into:)();
      return sub_1E63F14F4(v25, type metadata accessor for AppLaunchScope);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E63F148C(v29, v19, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](3);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
    v36 = v53;
    sub_1E65E5B48();
    v37 = v51;
    sub_1E5F9AF1C(&v19[*(v51 + 20)], v13);
    v38 = v52;
    if ((*(v52 + 48))(v13, 1, v36) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v43 = v50;
      (*(v38 + 32))(v50, v13, v36);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v38 + 8))(v43, v36);
    }

    v44 = &v19[*(v37 + 24)];
    if (*(v44 + 1))
    {
      v45 = *v44;
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    return sub_1E63F14F4(v19, type metadata accessor for URLContext);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v32 = v52;
    v31 = v53;
    v33 = v50;
    (*(v52 + 32))(v50, v29, v53);
    MEMORY[0x1E694E740](4);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
    sub_1E65E5B48();
    return (*(v32 + 8))(v33, v31);
  }

  else
  {
    v39 = v49;
    (*(v49 + 32))(v5, v29, v2);
    MEMORY[0x1E694E740](5);
    sub_1E63F1444(&qword_1ED079220, MEMORY[0x1E69CBB20]);
    sub_1E65E5B48();
    return (*(v39 + 8))(v5, v2);
  }
}

uint64_t sub_1E63F0424(void (*a1)(_BYTE *))
{
  sub_1E65E6D28();
  a1(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E63F0484(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1E65E6D28();
  a3(v5);
  return sub_1E65E6D78();
}

uint64_t sub_1E63F04E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1E65E6D28();
  a4(v6);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14AppLaunchScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLContext(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppLaunchScope(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA0, &qword_1E65EA420);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v28 - v21;
  v23 = *(v20 + 56);
  sub_1E63F13DC(a1, &v28 - v21, type metadata accessor for AppLaunchScope);
  sub_1E63F13DC(a2, &v22[v23], type metadata accessor for AppLaunchScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E63F13DC(v22, v17, type metadata accessor for AppLaunchScope);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E63F148C(&v22[v23], v10, type metadata accessor for URLContext);
      v25 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v17, v10);
      sub_1E63F14F4(v10, type metadata accessor for URLContext);
      v26 = v17;
      goto LABEL_12;
    }

    v15 = v17;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1E63F13DC(v22, v15, type metadata accessor for AppLaunchScope);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E63F148C(&v22[v23], v8, type metadata accessor for URLContext);
      v25 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v15, v8);
      sub_1E63F14F4(v8, type metadata accessor for URLContext);
      v26 = v15;
LABEL_12:
      sub_1E63F14F4(v26, type metadata accessor for URLContext);
      sub_1E63F14F4(v22, type metadata accessor for AppLaunchScope);
      return v25 & 1;
    }

LABEL_7:
    sub_1E63F14F4(v15, type metadata accessor for URLContext);
LABEL_10:
    sub_1E5DFE50C(v22, &qword_1ED071FA0, &qword_1E65EA420);
    v25 = 0;
    return v25 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_1E63F14F4(v22, type metadata accessor for AppLaunchScope);
  v25 = 1;
  return v25 & 1;
}

uint64_t _s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_1E65D8D48();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D74E8();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLContext(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v56 - v12;
  v13 = type metadata accessor for AppLaunchScope(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RouteSource(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v56 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v56 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v56 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v56 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA8, &qword_1E65EA428);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v56 - v36;
  v38 = *(v35 + 56);
  sub_1E63F13DC(v64, &v56 - v36, type metadata accessor for RouteSource);
  sub_1E63F13DC(v65, &v37[v38], type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1E63F13DC(v37, v30, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v53 = v56;
          sub_1E63F148C(&v37[v38], v56, type metadata accessor for URLContext);
          v43 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v30, v53);
          sub_1E63F14F4(v53, type metadata accessor for URLContext);
          v48 = v30;
          goto LABEL_28;
        }

        v45 = type metadata accessor for URLContext;
        v46 = v30;
      }

      else
      {
        sub_1E63F13DC(v37, v32, type metadata accessor for RouteSource);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_1E63F148C(&v37[v38], v16, type metadata accessor for AppLaunchScope);
          v43 = _s10Blackbeard14AppLaunchScopeO2eeoiySbAC_ACtFZ_0(v32, v16);
          sub_1E63F14F4(v16, type metadata accessor for AppLaunchScope);
          v48 = v32;
          v54 = type metadata accessor for AppLaunchScope;
          goto LABEL_38;
        }

        v45 = type metadata accessor for AppLaunchScope;
        v46 = v32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1E63F13DC(v37, v24, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v41 = v60;
            v40 = v61;
            v42 = v58;
            (*(v60 + 32))(v58, &v37[v38], v61);
            v43 = sub_1E65D7468();
            v44 = *(v41 + 8);
            v44(v42, v40);
            v44(v24, v40);
LABEL_39:
            sub_1E63F14F4(v37, type metadata accessor for RouteSource);
            return v43 & 1;
          }

          (*(v60 + 8))(v24, v61);
        }

        else
        {
          sub_1E63F13DC(v37, v21, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v50 = v62;
            v49 = v63;
            v51 = v59;
            (*(v62 + 32))(v59, &v37[v38], v63);
            v43 = MEMORY[0x1E6940730](v21, v51);
            v52 = *(v50 + 8);
            v52(v51, v49);
            v52(v21, v49);
            goto LABEL_39;
          }

          (*(v62 + 8))(v21, v63);
        }

        goto LABEL_36;
      }

      sub_1E63F13DC(v37, v27, type metadata accessor for RouteSource);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v47 = v57;
        sub_1E63F148C(&v37[v38], v57, type metadata accessor for URLContext);
        v43 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v27, v47);
        sub_1E63F14F4(v47, type metadata accessor for URLContext);
        v48 = v27;
LABEL_28:
        v54 = type metadata accessor for URLContext;
LABEL_38:
        sub_1E63F14F4(v48, v54);
        goto LABEL_39;
      }

      v45 = type metadata accessor for URLContext;
      v46 = v27;
    }

    sub_1E63F14F4(v46, v45);
LABEL_36:
    sub_1E5DFE50C(v37, &qword_1ED071FA8, &qword_1E65EA428);
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_36;
    }
  }

  else if (EnumCaseMultiPayload == 7)
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_36;
    }
  }

  else if (EnumCaseMultiPayload == 8)
  {
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_36;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 9)
  {
    goto LABEL_36;
  }

  sub_1E63F14F4(v37, type metadata accessor for RouteSource);
  v43 = 1;
  return v43 & 1;
}

uint64_t _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F98, &qword_1E65EA418);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((sub_1E65D7468() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for URLContext(0);
  v17 = *(v29 + 20);
  v18 = *(v13 + 48);
  sub_1E5F9AF1C(a1 + v17, v16);
  sub_1E5F9AF1C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1E5F9AF1C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1E63F1444(&qword_1ED071FB8, MEMORY[0x1E6968FB0]);
      v21 = sub_1E65E5B98();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1E5DFE50C(v16, &qword_1ED072340, &qword_1E65EA410);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1E5DFE50C(v16, &qword_1ED071F98, &qword_1E65EA418);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1E5DFE50C(v16, &qword_1ED072340, &qword_1E65EA410);
LABEL_11:
  v23 = *(v29 + 24);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (v27 && (*v24 == *v26 && v25 == v27 || (sub_1E65E6C18() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E63F13DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63F1444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63F148C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63F14F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ToastService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorToastService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v2 + 112) = sub_1E65E17A8();
  *a1 = &unk_1E6601060;
  a1[1] = v2;
  a1[2] = &unk_1E6601070;
  a1[3] = v2;
  a1[4] = &unk_1E6601080;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t sub_1E63F1728(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E600544C(a1, v1);
}

uint64_t sub_1E63F17C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5E26DAC(a1, v1);
}

uint64_t sub_1E63F185C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5F87068();
}

uint64_t sub_1E63F18F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v8 = sub_1E65D74E8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = sub_1E65E52B8();
  v6[15] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = type metadata accessor for RouteDestination();
  v6[17] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v15 = sub_1E65E59F8();
  v6[20] = v15;
  v16 = *(v15 - 8);
  v6[21] = v16;
  v17 = *(v16 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F1AD0, 0, 0);
}

id sub_1E63F1AD0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD990])
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = v7[11];
    v9 = v7[12];
    __swift_project_boxed_opaque_existential_1(v7 + 8, v10);
    sub_1E63FFABC(v8, v5, MEMORY[0x1E69CD768]);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v11 = *(v6 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v5 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 16);
    v12 = *(v0 + 24);
    *(v0 + 32) = *(v0 + 16);
    *(v0 + 40) = v12;
    sub_1E600F5B0((v0 + 26));
    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = sub_1E63F20D0;
    v14 = *(v0 + 152);

    return RoutingContext.presentDestination(_:style:priority:)(v14, (v0 + 32), (v0 + 26), v10, v9);
  }

  if (v4 == *MEMORY[0x1E69CD998])
  {
    v16 = *(v0 + 120);
    sub_1E63FFABC(*(v0 + 64), *(v0 + 128), MEMORY[0x1E69CD768]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);
      v33 = *(v0 + 72);
      sub_1E65D74C8();
      if ((*(v32 + 48))(v33, 1, v31) == 1)
      {
        v21 = *(v0 + 72);
        goto LABEL_17;
      }

      (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 72), *(v0 + 88));
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v34 = result;
        v35 = *(v0 + 104);
        goto LABEL_23;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1E63FFCF4(*(v0 + 128), MEMORY[0x1E69CD768]);
        goto LABEL_24;
      }

      v18 = *(v0 + 88);
      v19 = *(v0 + 96);
      v20 = *(v0 + 80);
      sub_1E65D74C8();
      if ((*(v19 + 48))(v20, 1, v18) == 1)
      {
        v21 = *(v0 + 80);
LABEL_17:
        sub_1E5DFE50C(v21, &qword_1ED072340, &qword_1E65EA410);
        goto LABEL_24;
      }

      (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v34 = result;
        v35 = *(v0 + 112);
LABEL_23:
        v36 = *(v0 + 88);
        v37 = *(v0 + 96);
        v38 = sub_1E65D7448();
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
        v39 = sub_1E65E5AF8();

        [v34 openSensitiveURL:v38 withOptions:v39];

        (*(v37 + 8))(v35, v36);
        goto LABEL_24;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v4 != *MEMORY[0x1E69CD988])
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_24:
    v40 = *(v0 + 176);
    v41 = *(v0 + 144);
    v42 = *(v0 + 152);
    v43 = *(v0 + 128);
    v45 = *(v0 + 104);
    v44 = *(v0 + 112);
    v47 = *(v0 + 72);
    v46 = *(v0 + 80);

    v48 = *(v0 + 8);

    return v48();
  }

  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 56);
  v25 = *(v0 + 64);
  v27 = v24[11];
  v26 = v24[12];
  __swift_project_boxed_opaque_existential_1(v24 + 8, v27);
  sub_1E63FFABC(v25, v22, MEMORY[0x1E69CD768]);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v28 = *(v23 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v22 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 25));
  v29 = swift_task_alloc();
  *(v0 + 200) = v29;
  *v29 = v0;
  v29[1] = sub_1E63F22F0;
  v30 = *(v0 + 144);

  return RoutingContext.appendDestination(_:priority:)(v30, (v0 + 25), v27, v26);
}

uint64_t sub_1E63F20D0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 152);
  v7 = *v1;
  *(v2 + 192) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
  sub_1E63FFCF4(v4, type metadata accessor for RouteDestination);
  if (v0)
  {
    v5 = sub_1E63F2434;
  }

  else
  {
    v5 = sub_1E63F222C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63F222C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63F22F0()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 208) = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F24F8;
  }

  else
  {
    v4 = sub_1E63FFE60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F2434()
{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63F24F8()
{
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63F25BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1E65D8258();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  v14 = sub_1E65D80C8();
  if (v16)
  {
    v17 = v14;
    sub_1E65E5688();
    if (swift_dynamicCastClass())
    {
      sub_1E5DFD1CC(v4 + 24, v30, &unk_1ED074320, &unk_1E65EA730);
    }

    else
    {
      sub_1E5DF650C(v4 + 64, v30);
    }

    v19 = sub_1E65E60A8();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    sub_1E6137A50(v4, v28);
    sub_1E5DFD1CC(v30, v26, &unk_1ED074320, &unk_1E65EA730);
    (*(v8 + 16))(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v20 = (*(v8 + 80) + 184) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = v28[5];
    *(v21 + 96) = v28[4];
    *(v21 + 112) = v22;
    *(v21 + 128) = v29;
    v23 = v28[1];
    *(v21 + 32) = v28[0];
    *(v21 + 48) = v23;
    v24 = v28[3];
    *(v21 + 64) = v28[2];
    *(v21 + 80) = v24;
    *(v21 + 136) = v17;
    *(v21 + 176) = v27;
    v25 = v26[1];
    *(v21 + 144) = v26[0];
    *(v21 + 160) = v25;
    (*(v8 + 32))(v21 + v20, v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v21 + v20 + v9) = a3;
    sub_1E6059EAC(0, 0, v13, &unk_1E66012D8, v21);

    return sub_1E5DFE50C(v30, &unk_1ED074320, &unk_1E65EA730);
  }

  else
  {

    return sub_1E5F87058(v14, v15, 0);
  }
}

uint64_t sub_1E63F28B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 362) = a8;
  *(v8 + 384) = a6;
  *(v8 + 392) = a7;
  *(v8 + 361) = a5;
  *(v8 + 376) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0) - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_1E65E5608();
  *(v8 + 408) = v10;
  v11 = *(v10 - 8);
  *(v8 + 416) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v14 = sub_1E65D74E8();
  *(v8 + 440) = v14;
  v15 = *(v14 - 8);
  *(v8 + 448) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v17 = type metadata accessor for RouteSource(0);
  *(v8 + 472) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  v19 = type metadata accessor for RouteDestination();
  *(v8 + 488) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F2B04, 0, 0);
}

uint64_t sub_1E63F2B04()
{
  v1 = *(*(v0 + 376) + 16);
  v2 = sub_1E65DAE38();
  if (v2 != sub_1E65DAE38())
  {
    sub_1E5DFD1CC(*(v0 + 376) + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    v3 = *(v0 + 40);
    if (v3)
    {
      v4 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v5 = swift_task_alloc();
      *(v0 + 552) = v5;
      *v5 = v0;
      v5[1] = sub_1E63F3A6C;

      return RoutingContext.dismiss()(v3, v4);
    }

    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  }

  v7 = *(v0 + 361);
  if (v7 <= 3)
  {
    if (*(v0 + 361) > 1u)
    {
      if (v7 == 2)
      {
        v8 = v0 + 256;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 256, &unk_1ED074320, &unk_1E65EA730);
        v9 = *(v0 + 280);
        if (v9)
        {
          v31 = *(v0 + 536);
          v32 = *(v0 + 480);
          v33 = *(v0 + 488);
          v34 = *(v0 + 472);
          v35 = *(v0 + 392);
          v15 = *(v0 + 288);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          v36 = sub_1E65D8078();
          v38 = v37;
          swift_storeEnumTagMultiPayload();
          *v31 = v36;
          v31[1] = v38;
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v32, v31 + *(v33 + 20), type metadata accessor for RouteSource);
          *(v31 + *(v33 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 350));
          v39 = swift_task_alloc();
          *(v0 + 584) = v39;
          *v39 = v0;
          v39[1] = sub_1E63F4C5C;
          v20 = *(v0 + 536);
          v21 = (v0 + 350);
          goto LABEL_30;
        }
      }

      else
      {
        v8 = v0 + 216;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 216, &unk_1ED074320, &unk_1E65EA730);
        v9 = *(v0 + 240);
        if (v9)
        {
          v67 = *(v0 + 528);
          v68 = *(v0 + 480);
          v69 = *(v0 + 488);
          v70 = *(v0 + 472);
          v71 = *(v0 + 392);
          v15 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v72 = sub_1E65D8078();
          v74 = v73;
          swift_storeEnumTagMultiPayload();
          *v67 = v72;
          v67[1] = v74;
          type metadata accessor for PlaylistType();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v68, v67 + *(v69 + 20), type metadata accessor for RouteSource);
          *(v67 + *(v69 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 349));
          v75 = swift_task_alloc();
          *(v0 + 600) = v75;
          *v75 = v0;
          v75[1] = sub_1E63F4EC0;
          v20 = *(v0 + 528);
          v21 = (v0 + 349);
          goto LABEL_30;
        }
      }

      goto LABEL_38;
    }

    if (*(v0 + 361))
    {
      v8 = v0 + 296;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 296, &unk_1ED074320, &unk_1E65EA730);
      v9 = *(v0 + 320);
      if (v9)
      {
        v22 = *(v0 + 544);
        v23 = *(v0 + 480);
        v24 = *(v0 + 488);
        v25 = *(v0 + 472);
        v26 = *(v0 + 392);
        v15 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v27 = sub_1E65D8078();
        v29 = v28;
        swift_storeEnumTagMultiPayload();
        *v22 = v27;
        v22[1] = v29;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v23, v22 + *(v24 + 20), type metadata accessor for RouteSource);
        *(v22 + *(v24 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 351));
        v30 = swift_task_alloc();
        *(v0 + 568) = v30;
        *v30 = v0;
        v30[1] = sub_1E63F49F8;
        v20 = *(v0 + 544);
        v21 = (v0 + 351);
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    goto LABEL_23;
  }

  if (*(v0 + 361) <= 5u)
  {
    if (v7 == 4)
    {
      v8 = v0 + 176;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 176, &unk_1ED074320, &unk_1E65EA730);
      v9 = *(v0 + 200);
      if (v9)
      {
        v40 = *(v0 + 520);
        v41 = *(v0 + 480);
        v42 = *(v0 + 488);
        v43 = *(v0 + 472);
        v44 = *(v0 + 392);
        v15 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        v45 = sub_1E65D8078();
        v47 = v46;
        swift_storeEnumTagMultiPayload();
        *v40 = v45;
        v40[1] = v47;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v41, v40 + *(v42 + 20), type metadata accessor for RouteSource);
        *(v40 + *(v42 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 348));
        v48 = swift_task_alloc();
        *(v0 + 616) = v48;
        *v48 = v0;
        v48[1] = sub_1E63F5124;
        v20 = *(v0 + 520);
        v21 = (v0 + 348);
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_23:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6616E80);
    v49 = sub_1E65D94E8();
    MEMORY[0x1E694D7C0](v49);

    return sub_1E65E69D8();
  }

  if (v7 != 6)
  {
    if (v7 == 7)
    {
      v8 = v0 + 96;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 96, &unk_1ED074320, &unk_1E65EA730);
      v9 = *(v0 + 120);
      if (v9)
      {
        v10 = *(v0 + 504);
        v11 = *(v0 + 480);
        v12 = *(v0 + 488);
        v13 = *(v0 + 472);
        v14 = *(v0 + 392);
        v15 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v16 = sub_1E65D8078();
        v18 = v17;
        swift_storeEnumTagMultiPayload();
        *v10 = v16;
        v10[1] = v18;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v11, v10 + *(v12 + 20), type metadata accessor for RouteSource);
        *(v10 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 346));
        v19 = swift_task_alloc();
        *(v0 + 648) = v19;
        *v19 = v0;
        v19[1] = sub_1E63F5644;
        v20 = *(v0 + 504);
        v21 = (v0 + 346);
LABEL_30:

        return RoutingContext.appendDestination(_:priority:)(v20, v21, v9, v15);
      }
    }

    else
    {
      v8 = v0 + 56;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      v9 = *(v0 + 80);
      if (v9)
      {
        v77 = *(v0 + 488);
        v76 = *(v0 + 496);
        v79 = *(v0 + 472);
        v78 = *(v0 + 480);
        v80 = *(v0 + 392);
        v15 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v81 = sub_1E65D8078();
        v83 = v82;
        swift_storeEnumTagMultiPayload();
        *v76 = v81;
        v76[1] = v83;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v78, v76 + *(v77 + 20), type metadata accessor for RouteSource);
        *(v76 + *(v77 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 345));
        v84 = swift_task_alloc();
        *(v0 + 664) = v84;
        *v84 = v0;
        v84[1] = sub_1E63F58A8;
        v20 = *(v0 + 496);
        v21 = (v0 + 345);
        goto LABEL_30;
      }
    }

    goto LABEL_38;
  }

  v50 = *(v0 + 440);
  v51 = *(v0 + 448);
  v52 = *(v0 + 432);
  v53 = *(v0 + 392);
  sub_1E65D8098();
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    sub_1E5DFE50C(*(v0 + 432), &qword_1ED072340, &qword_1E65EA410);
    v54 = sub_1E65E5208();
    sub_1E63FFA10(&qword_1ED079240, MEMORY[0x1E69CD6D8]);
    swift_allocError();
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69CD6D0], v54);
    swift_willThrow();
    v56 = *(v0 + 544);
    v57 = *(v0 + 536);
    v58 = *(v0 + 528);
    v59 = *(v0 + 520);
    v61 = *(v0 + 504);
    v60 = *(v0 + 512);
    v62 = *(v0 + 496);
    v63 = *(v0 + 480);
    v64 = *(v0 + 456);
    v65 = *(v0 + 464);
    v124 = *(v0 + 432);
    v126 = *(v0 + 424);
    v129 = *(v0 + 400);

    v66 = *(v0 + 8);
LABEL_39:

    return v66();
  }

  v8 = v0 + 136;
  v85 = *(v0 + 456);
  v86 = *(v0 + 464);
  v88 = *(v0 + 440);
  v87 = *(v0 + 448);
  v89 = *(v0 + 392);
  v90 = *(v0 + 400);
  v130 = *(v0 + 424);
  v133 = *(v0 + 384);
  (*(v87 + 32))(v86, *(v0 + 432), v88);
  sub_1E65D8078();
  (*(v87 + 16))(v85, v86, v88);
  sub_1E65D8118();
  sub_1E65D81F8();
  sub_1E65D8138();
  sub_1E65D80F8();
  sub_1E65E55F8();
  sub_1E5DFD1CC(v133, v0 + 136, &unk_1ED074320, &unk_1E65EA730);
  v91 = *(v0 + 160);
  if (!v91)
  {
    v111 = *(v0 + 464);
    v112 = *(v0 + 440);
    v113 = *(v0 + 448);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v113 + 8))(v111, v112);
LABEL_38:
    sub_1E5DFE50C(v8, &unk_1ED074320, &unk_1E65EA730);
    v114 = *(v0 + 544);
    v115 = *(v0 + 536);
    v116 = *(v0 + 528);
    v117 = *(v0 + 520);
    v119 = *(v0 + 504);
    v118 = *(v0 + 512);
    v120 = *(v0 + 496);
    v121 = *(v0 + 480);
    v123 = *(v0 + 456);
    v122 = *(v0 + 464);
    v128 = *(v0 + 432);
    v132 = *(v0 + 424);
    v134 = *(v0 + 400);

    v66 = *(v0 + 8);
    goto LABEL_39;
  }

  v92 = *(v0 + 512);
  v93 = *(v0 + 488);
  v131 = *(v0 + 472);
  v95 = *(v0 + 416);
  v94 = *(v0 + 424);
  v96 = *(v0 + 408);
  v127 = *(v0 + 362);
  v97 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v91);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v99 = v98[12];
  v100 = (v92 + v98[16]);
  v125 = v98[20];
  (*(v95 + 16))(v92, v94, v96);
  v101 = *MEMORY[0x1E69CD908];
  v102 = sub_1E65E57D8();
  (*(*(v102 - 8) + 104))(v92, v101, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v103 = *(sub_1E65E5528() - 8);
  v104 = *(v103 + 72);
  v105 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  *(v0 + 368) = v106;
  sub_1E63FFA10(&qword_1ED078A30, MEMORY[0x1E69CD868]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  *v100 = 0;
  v100[1] = 0;
  *(v92 + v125) = v127;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v107 = *(v93 + 20);
  swift_storeEnumTagMultiPayload();
  *(v92 + *(v93 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 336);
  v108 = *(v0 + 344);
  *(v0 + 352) = *(v0 + 336);
  *(v0 + 360) = v108;
  sub_1E600F5B0((v0 + 347));
  v109 = swift_task_alloc();
  *(v0 + 632) = v109;
  *v109 = v0;
  v109[1] = sub_1E63F5388;
  v110 = *(v0 + 512);

  return RoutingContext.presentDestination(_:style:priority:)(v110, (v0 + 352), (v0 + 347), v91, v97);
}

uint64_t sub_1E63F3A6C()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1E63F5B0C;
  }

  else
  {
    v3 = sub_1E63F3B80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F3B80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 361);
  if (v1 <= 3)
  {
    if (*(v0 + 361) > 1u)
    {
      if (v1 == 2)
      {
        v2 = v0 + 256;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 256, &unk_1ED074320, &unk_1E65EA730);
        v3 = *(v0 + 280);
        if (v3)
        {
          v25 = *(v0 + 536);
          v26 = *(v0 + 480);
          v27 = *(v0 + 488);
          v28 = *(v0 + 472);
          v29 = *(v0 + 392);
          v9 = *(v0 + 288);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          v30 = sub_1E65D8078();
          v32 = v31;
          swift_storeEnumTagMultiPayload();
          *v25 = v30;
          v25[1] = v32;
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v26, v25 + *(v27 + 20), type metadata accessor for RouteSource);
          *(v25 + *(v27 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 350));
          v33 = swift_task_alloc();
          *(v0 + 584) = v33;
          *v33 = v0;
          v33[1] = sub_1E63F4C5C;
          v14 = *(v0 + 536);
          v15 = (v0 + 350);
          goto LABEL_24;
        }
      }

      else
      {
        v2 = v0 + 216;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 216, &unk_1ED074320, &unk_1E65EA730);
        v3 = *(v0 + 240);
        if (v3)
        {
          v62 = *(v0 + 528);
          v63 = *(v0 + 480);
          v64 = *(v0 + 488);
          v65 = *(v0 + 472);
          v66 = *(v0 + 392);
          v9 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v67 = sub_1E65D8078();
          v69 = v68;
          swift_storeEnumTagMultiPayload();
          *v62 = v67;
          v62[1] = v69;
          type metadata accessor for PlaylistType();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v63, v62 + *(v64 + 20), type metadata accessor for RouteSource);
          *(v62 + *(v64 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 349));
          v70 = swift_task_alloc();
          *(v0 + 600) = v70;
          *v70 = v0;
          v70[1] = sub_1E63F4EC0;
          v14 = *(v0 + 528);
          v15 = (v0 + 349);
          goto LABEL_24;
        }
      }

      goto LABEL_32;
    }

    if (*(v0 + 361))
    {
      v2 = v0 + 296;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 296, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 320);
      if (v3)
      {
        v16 = *(v0 + 544);
        v17 = *(v0 + 480);
        v18 = *(v0 + 488);
        v19 = *(v0 + 472);
        v20 = *(v0 + 392);
        v9 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v21 = sub_1E65D8078();
        v23 = v22;
        swift_storeEnumTagMultiPayload();
        *v16 = v21;
        v16[1] = v23;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v17, v16 + *(v18 + 20), type metadata accessor for RouteSource);
        *(v16 + *(v18 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 351));
        v24 = swift_task_alloc();
        *(v0 + 568) = v24;
        *v24 = v0;
        v24[1] = sub_1E63F49F8;
        v14 = *(v0 + 544);
        v15 = (v0 + 351);
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (*(v0 + 361) <= 5u)
  {
    if (v1 == 4)
    {
      v2 = v0 + 176;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 176, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 200);
      if (v3)
      {
        v34 = *(v0 + 520);
        v35 = *(v0 + 480);
        v36 = *(v0 + 488);
        v37 = *(v0 + 472);
        v38 = *(v0 + 392);
        v9 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        v39 = sub_1E65D8078();
        v41 = v40;
        swift_storeEnumTagMultiPayload();
        *v34 = v39;
        v34[1] = v41;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v35, v34 + *(v36 + 20), type metadata accessor for RouteSource);
        *(v34 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 348));
        v42 = swift_task_alloc();
        *(v0 + 616) = v42;
        *v42 = v0;
        v42[1] = sub_1E63F5124;
        v14 = *(v0 + 520);
        v15 = (v0 + 348);
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_17:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6616E80);
    v43 = sub_1E65D94E8();
    MEMORY[0x1E694D7C0](v43);

    return sub_1E65E69D8();
  }

  if (v1 != 6)
  {
    if (v1 == 7)
    {
      v2 = v0 + 96;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 96, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 120);
      if (v3)
      {
        v4 = *(v0 + 504);
        v5 = *(v0 + 480);
        v6 = *(v0 + 488);
        v7 = *(v0 + 472);
        v8 = *(v0 + 392);
        v9 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v10 = sub_1E65D8078();
        v12 = v11;
        swift_storeEnumTagMultiPayload();
        *v4 = v10;
        v4[1] = v12;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v5, v4 + *(v6 + 20), type metadata accessor for RouteSource);
        *(v4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 346));
        v13 = swift_task_alloc();
        *(v0 + 648) = v13;
        *v13 = v0;
        v13[1] = sub_1E63F5644;
        v14 = *(v0 + 504);
        v15 = (v0 + 346);
LABEL_24:

        return RoutingContext.appendDestination(_:priority:)(v14, v15, v3, v9);
      }
    }

    else
    {
      v2 = v0 + 56;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 80);
      if (v3)
      {
        v72 = *(v0 + 488);
        v71 = *(v0 + 496);
        v74 = *(v0 + 472);
        v73 = *(v0 + 480);
        v75 = *(v0 + 392);
        v9 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v76 = sub_1E65D8078();
        v78 = v77;
        swift_storeEnumTagMultiPayload();
        *v71 = v76;
        v71[1] = v78;
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v73, v71 + *(v72 + 20), type metadata accessor for RouteSource);
        *(v71 + *(v72 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 345));
        v79 = swift_task_alloc();
        *(v0 + 664) = v79;
        *v79 = v0;
        v79[1] = sub_1E63F58A8;
        v14 = *(v0 + 496);
        v15 = (v0 + 345);
        goto LABEL_24;
      }
    }

    goto LABEL_32;
  }

  v45 = *(v0 + 440);
  v46 = *(v0 + 448);
  v47 = *(v0 + 432);
  v48 = *(v0 + 392);
  sub_1E65D8098();
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    sub_1E5DFE50C(*(v0 + 432), &qword_1ED072340, &qword_1E65EA410);
    v49 = sub_1E65E5208();
    sub_1E63FFA10(&qword_1ED079240, MEMORY[0x1E69CD6D8]);
    swift_allocError();
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x1E69CD6D0], v49);
    swift_willThrow();
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    v53 = *(v0 + 528);
    v54 = *(v0 + 520);
    v56 = *(v0 + 504);
    v55 = *(v0 + 512);
    v57 = *(v0 + 496);
    v58 = *(v0 + 480);
    v59 = *(v0 + 456);
    v60 = *(v0 + 464);
    v119 = *(v0 + 432);
    v121 = *(v0 + 424);
    v124 = *(v0 + 400);

    v61 = *(v0 + 8);
LABEL_33:

    return v61();
  }

  v2 = v0 + 136;
  v80 = *(v0 + 456);
  v81 = *(v0 + 464);
  v83 = *(v0 + 440);
  v82 = *(v0 + 448);
  v84 = *(v0 + 392);
  v85 = *(v0 + 400);
  v125 = *(v0 + 424);
  v128 = *(v0 + 384);
  (*(v82 + 32))(v81, *(v0 + 432), v83);
  sub_1E65D8078();
  (*(v82 + 16))(v80, v81, v83);
  sub_1E65D8118();
  sub_1E65D81F8();
  sub_1E65D8138();
  sub_1E65D80F8();
  sub_1E65E55F8();
  sub_1E5DFD1CC(v128, v0 + 136, &unk_1ED074320, &unk_1E65EA730);
  v86 = *(v0 + 160);
  if (!v86)
  {
    v106 = *(v0 + 464);
    v107 = *(v0 + 440);
    v108 = *(v0 + 448);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v108 + 8))(v106, v107);
LABEL_32:
    sub_1E5DFE50C(v2, &unk_1ED074320, &unk_1E65EA730);
    v109 = *(v0 + 544);
    v110 = *(v0 + 536);
    v111 = *(v0 + 528);
    v112 = *(v0 + 520);
    v114 = *(v0 + 504);
    v113 = *(v0 + 512);
    v115 = *(v0 + 496);
    v116 = *(v0 + 480);
    v118 = *(v0 + 456);
    v117 = *(v0 + 464);
    v123 = *(v0 + 432);
    v127 = *(v0 + 424);
    v129 = *(v0 + 400);

    v61 = *(v0 + 8);
    goto LABEL_33;
  }

  v87 = *(v0 + 512);
  v88 = *(v0 + 488);
  v126 = *(v0 + 472);
  v90 = *(v0 + 416);
  v89 = *(v0 + 424);
  v91 = *(v0 + 408);
  v122 = *(v0 + 362);
  v92 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v86);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v94 = v93[12];
  v95 = (v87 + v93[16]);
  v120 = v93[20];
  (*(v90 + 16))(v87, v89, v91);
  v96 = *MEMORY[0x1E69CD908];
  v97 = sub_1E65E57D8();
  (*(*(v97 - 8) + 104))(v87, v96, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v98 = *(sub_1E65E5528() - 8);
  v99 = *(v98 + 72);
  v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  *(v0 + 368) = v101;
  sub_1E63FFA10(&qword_1ED078A30, MEMORY[0x1E69CD868]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  *v95 = 0;
  v95[1] = 0;
  *(v87 + v120) = v122;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v102 = *(v88 + 20);
  swift_storeEnumTagMultiPayload();
  *(v87 + *(v88 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 336);
  v103 = *(v0 + 344);
  *(v0 + 352) = *(v0 + 336);
  *(v0 + 360) = v103;
  sub_1E600F5B0((v0 + 347));
  v104 = swift_task_alloc();
  *(v0 + 632) = v104;
  *v104 = v0;
  v104[1] = sub_1E63F5388;
  v105 = *(v0 + 512);

  return RoutingContext.presentDestination(_:style:priority:)(v105, (v0 + 352), (v0 + 347), v86, v92);
}

uint64_t sub_1E63F49F8()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v6 = *v1;
  *(*v1 + 576) = v0;

  sub_1E63FFCF4(*(v2 + 544), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F5C28;
  }

  else
  {
    v4 = sub_1E63F4B44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F4B44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F4C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v6 = *v1;
  *(*v1 + 592) = v0;

  sub_1E63FFCF4(*(v2 + 536), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F5D44;
  }

  else
  {
    v4 = sub_1E63F4DA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F4DA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F4EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v6 = *v1;
  *(*v1 + 608) = v0;

  sub_1E63FFCF4(*(v2 + 528), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F5E60;
  }

  else
  {
    v4 = sub_1E63F500C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F500C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5124()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v6 = *v1;
  *(*v1 + 624) = v0;

  sub_1E63FFCF4(*(v2 + 520), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F5F7C;
  }

  else
  {
    v4 = sub_1E63F5270;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F5270()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5388()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v8 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = *(v2 + 512);
    sub_1E5F94E00(*(v2 + 352), *(v2 + 360));
    sub_1E63FFCF4(v4, type metadata accessor for RouteDestination);
    v5 = sub_1E63F6098;
  }

  else
  {
    v6 = *(v2 + 512);
    sub_1E5F94E00(*(v2 + 352), *(v2 + 360));
    sub_1E63FFCF4(v6, type metadata accessor for RouteDestination);
    v5 = sub_1E63F54F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63F54F4()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v11 = v0[60];
  v13 = v0[57];
  v12 = v0[58];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[50];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63F5644()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v6 = *v1;
  *(*v1 + 656) = v0;

  sub_1E63FFCF4(*(v2 + 504), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F61EC;
  }

  else
  {
    v4 = sub_1E63F5790;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F5790()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F58A8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v6 = *v1;
  *(*v1 + 672) = v0;

  sub_1E63FFCF4(*(v2 + 496), type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F6308;
  }

  else
  {
    v4 = sub_1E63F59F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F59F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5B0C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[70];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5C28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[72];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5D44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[74];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5E60()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[76];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F5F7C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[78];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F6098()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v11 = v0[60];
  v12 = v0[57];
  v13 = v0[58];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[50];
  v19 = v0[80];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63F61EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[82];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F6308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[84];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63F6424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for RouteDestination();
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F64BC, 0, 0);
}

uint64_t sub_1E63F64BC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = v5[11];
  v7 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
  *v1 = v6;
  *(v1 + 1) = v3;
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 16))(&v1[v9], v4, v10);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v11 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;
  sub_1E600F5B0((v0 + 25));

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1E63F6684;
  v14 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v14, (v0 + 32), (v0 + 25), v8, v7);
}

uint64_t sub_1E63F6684()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v2 + 104) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
  sub_1E63FFCF4(v4, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F6814, 0, 0);
  }

  else
  {
    v6 = *(v2 + 88);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1E63F6814()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1E63F6878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = type metadata accessor for RouteDestination();
  v7[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F69F0, 0, 0);
}

uint64_t sub_1E63F69F0()
{
  v1 = *(v0 + 120);
  v29 = *(v0 + 104);
  v30 = *(v0 + 96);
  v32 = *(v0 + 88);
  v33 = *(v0 + 80);
  v34 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v27 = *(v0 + 48);
  v35 = v27[11];
  v36 = v27[12];
  __swift_project_boxed_opaque_existential_1(v27 + 8, v35);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = v5[12];
  v7 = (v1 + v5[16]);
  v26 = v5[20];
  v8 = (v1 + v5[24]);
  v9 = (v1 + v5[28]);
  v28 = v5[32];
  v31 = v5[36];
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  sub_1E65E6848();
  sub_1E65D8448();
  v10 = sub_1E65DB3E8();
  *v7 = 0;
  v7[1] = 0;
  (*(*(v10 - 8) + 56))(v1 + v26, 1, 1, v10);
  *v8 = v4;
  v8[1] = v3;

  *v9 = sub_1E65D8468();
  v9[1] = v11;
  v12 = *MEMORY[0x1E69CD548];
  v13 = sub_1E65DB5D8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v1 + v28, v12, v13);
  (*(v14 + 56))(v1 + v28, 0, 1, v13);
  v15 = *MEMORY[0x1E69CBDC0];
  v16 = sub_1E65D8F38();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v29, v15, v16);
  (*(v17 + 56))(v29, 0, 1, v16);
  sub_1E5FA9D34(*v27, v27[1]);
  sub_1E65D8448();
  v18 = sub_1E65D74E8();
  (*(*(v18 - 8) + 56))(v30, 0, 1, v18);
  v19 = sub_1E65D9908();
  (*(*(v19 - 8) + 56))(v32, 1, 1, v19);
  v20 = sub_1E65D9F88();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  sub_1E65D7A28();
  v21 = sub_1E65D7A38();
  (*(*(v21 - 8) + 56))(v1 + v31, 0, 1, v21);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v22 = *(v34 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v34 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_1E63F6EB4;
  v24 = *(v0 + 120);

  return RoutingContext.presentDestination(_:style:priority:)(v24, (v0 + 32), (v0 + 41), v35, v36);
}

uint64_t sub_1E63F6EB4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *v1;
  v4[17] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7058, 0, 0);
  }

  else
  {
    v5 = v4[15];
    v7 = v4[12];
    v6 = v4[13];
    v8 = v4[10];
    v9 = v4[11];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_1E63F7058()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t sub_1E63F70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for RouteSource(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v5[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F71B0, 0, 0);
}

uint64_t sub_1E63F71B0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  v9 = sub_1E65DACE8();
  v11 = v10;
  swift_storeEnumTagMultiPayload();
  *v1 = v9;
  v1[1] = v11;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 80));
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_1E63F7314;
  v13 = *(v0 + 56);

  return RoutingContext.appendDestination(_:priority:)(v13, (v0 + 80), v7, v8);
}

uint64_t sub_1E63F7314()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F749C, 0, 0);
  }

  else
  {
    v5 = v4[7];
    v6 = v4[5];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E63F749C()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1E63F750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63F752C, 0, 0);
}

uint64_t sub_1E63F752C()
{
  v1 = *(v0 + 16);
  v3 = v1[11];
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  sub_1E600F5B0((v0 + 48));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1E63F7604;
  v5 = *(v0 + 24);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 48), v3, v2);
}

uint64_t sub_1E63F7604()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7738, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63F7774, 0, 0);
}

uint64_t sub_1E63F7774()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = v3[11];
  v6 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v7 = *(type metadata accessor for RouteDestination() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v0 + 80) = v10;
  *(v10 + 16) = xmmword_1E65EA670;
  v11 = sub_1E63FFABC(v4, v10 + v9, type metadata accessor for RouteDestination);
  v2(v11);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;
  *(v0 + 25) = 0;
  v13 = *(v6 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_1E63F79A4;

  return v17(v10, v0 + 32, 1, v0 + 25, v5, v6);
}

uint64_t sub_1E63F79A4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(v4 + 96) = v0;

  sub_1E5F94E00(*(v4 + 32), *(v4 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7B10, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1E63F7B28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = *(v1 + 16);
  if (v7 < 2)
  {
    sub_1E65E5AB8();
    v8 = swift_dynamicCastClass() != 0;
    v9 = [a1 presentingViewController];
    v10 = sub_1E65E60A8();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1E6137A50(v1, &v23);
    v11 = swift_allocObject();
    v12 = v25;
    *(v11 + 88) = v26;
    v13 = v28;
    *(v11 + 104) = v27;
    *(v11 + 120) = v13;
    v14 = v24;
    *(v11 + 40) = v23;
    *(v11 + 56) = v14;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v8;
    v15 = v29;
    *(v11 + 72) = v12;
    *(v11 + 136) = v15;
    *(v11 + 144) = v9;
    v16 = &unk_1E6601268;
LABEL_5:
    sub_1E6059EAC(0, 0, v6, v16, v11);
  }

  if (v7 == 3)
  {
    v17 = sub_1E65E60A8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1E6137A50(v1, &v23);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v18 = v28;
    *(v11 + 96) = v27;
    *(v11 + 112) = v18;
    *(v11 + 128) = v29;
    v19 = v24;
    *(v11 + 32) = v23;
    *(v11 + 48) = v19;
    v20 = v26;
    *(v11 + 64) = v25;
    *(v11 + 80) = v20;
    v16 = &unk_1E6601258;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63F7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for RouteSource(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for RouteDestination();
  v4[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F7E7C, 0, 0);
}

uint64_t sub_1E63F7E7C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = v5[11];
  v6 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1E63F7FCC;
  v9 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v9, (v0 + 72), v7, v6);
}

uint64_t sub_1E63F7FCC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v6 = v4[4];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E63F8154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 171) = a4;
  v7 = type metadata accessor for RouteDestination();
  *(v6 + 72) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F8204, 0, 0);
}

uint64_t sub_1E63F8204()
{
  if (*(v0 + 171) == 1)
  {
    if (*(v0 + 64) && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v1 = *(v0 + 56);
      v3 = v1[11];
      v2 = v1[12];
      __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
      v4 = swift_task_alloc();
      *(v0 + 104) = v4;
      *v4 = v0;
      v4[1] = sub_1E63F8508;

      return RoutingContext.dismiss()(v3, v2);
    }

    else
    {
      v14 = *(v0 + 56);
      v15 = v14[11];
      v16 = v14[12];
      __swift_project_boxed_opaque_existential_1(v14 + 8, v15);
      v17 = *(v16 + 64);
      v20 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 128) = v19;
      *v19 = v0;
      v19[1] = sub_1E63F8920;

      return (v20)(0, v15, v16);
    }
  }

  else
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v10 = v8[11];
    v9 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 8, v10);
    *v6 = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v11 = *(v7 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 168));
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_1E63F8E00;
    v13 = *(v0 + 80);

    return RoutingContext.appendDestination(_:priority:)(v13, (v0 + 168), v10, v9);
  }
}

uint64_t sub_1E63F8508()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8660, 0, 0);
  }
}

uint64_t sub_1E63F8660()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = v3[11];
  v4 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v5);
  *v1 = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 170));
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1E63F8790;
  v8 = *(v0 + 96);

  return RoutingContext.appendDestination(_:priority:)(v8, (v0 + 170), v5, v4);
}

uint64_t sub_1E63F8790()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v4 = *v1;
  v4[15] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F9098, 0, 0);
  }

  else
  {
    v6 = v4[11];
    v5 = v4[12];
    v7 = v4[10];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E63F8920()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8A78, 0, 0);
  }
}

uint64_t sub_1E63F8A78()
{
  sub_1E5DFD1CC(*(v0 + 56) + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *v2 = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v5 = *(v3 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 169));
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1E63F8C3C;
    v7 = *(v0 + 88);

    return RoutingContext.appendDestination(_:priority:)(v7, (v0 + 169), v1, v4);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1E63F8C3C()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 144) = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F9010;
  }

  else
  {
    v4 = sub_1E63F8D80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F8D80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63F8E00()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[20] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8F90, 0, 0);
  }

  else
  {
    v6 = v4[11];
    v5 = v4[12];
    v7 = v4[10];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E63F8F90()
{
  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63F9010()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63F9098()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63F9118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for RouteResource();
  v5[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v5[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F91DC, 0, 0);
}

uint64_t sub_1E63F91DC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_1E5DF650C(v6 + 64, v0 + 16);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v9 = sub_1E65D9048();
  (*(*(v9 - 8) + 16))(v3, v5, v9);
  v10 = *(v6 + 16);
  v11 = sub_1E65DAE38();
  v12 = v11 != sub_1E65DAE38();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
  *(v3 + *(v13 + 48)) = v12;
  v14 = sub_1E65DAE38();
  *(v3 + *(v13 + 64)) = v14 != sub_1E65DAE38();
  swift_storeEnumTagMultiPayload();
  v15 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1, type metadata accessor for RouteResource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v16;
  sub_1E600F5B0((v0 + 65));
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1E63F9404;
  v18 = *(v0 + 128);

  return RoutingContext.presentDestination(_:style:priority:)(v18, (v0 + 72), (v0 + 65), v8, v7);
}

uint64_t sub_1E63F9404()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(v2 + 144) = v0;

  sub_1E5F94E00(*(v2 + 72), *(v2 + 80));
  sub_1E63FFCF4(v4, type metadata accessor for RouteDestination);
  if (v0)
  {
    v5 = sub_1E63F95DC;
  }

  else
  {
    v5 = sub_1E63F9560;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63F9560()
{
  v1 = v0[16];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63F95DC()
{
  v1 = v0[16];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_1E63F9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RouteDestination();
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F96F0, 0, 0);
}

uint64_t sub_1E63F96F0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = v5[11];
  v6 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
  v9 = sub_1E65DA308();
  (*(*(v9 - 8) + 16))(v1, v4, v9);
  *(v1 + v8) = v3;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));

  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_1E63F9888;
  v12 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v12, (v0 + 72), v7, v6);
}

uint64_t sub_1E63F9888()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F9A00, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E63F9A00()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1E63F9A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19[-v8];
  v10 = sub_1E65D9F38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5DFD1CC(a1, v9, &qword_1ED079238, &qword_1E6601220);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E5DFE50C(v9, &qword_1ED079238, &qword_1E6601220);
    v15 = sub_1E65D9D28();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x1EEE9AC00](v17);
    *&v19[-16] = v14;

    v18 = sub_1E63B8A88(sub_1E63FEF98, &v19[-32], a2);
    sub_1E6059E54(v18, a3);

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1E63F9CBC()
{
  v0 = sub_1E65D9CD8();
  v2 = v1;
  if (v0 == sub_1E65D9F18() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E63F9D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 27) = v16;
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 26) = a6;
  *(v8 + 32) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v11 = type metadata accessor for RouteResource();
  *(v8 + 104) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F9E80, 0, 0);
}

uint64_t sub_1E63F9E80()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = *(v0 + 64);
  v23 = *(v0 + 40);
  v24 = *(v0 + 80);
  v6 = *(v0 + 32);
  v28 = v6[11];
  v26 = v6[12];
  v21 = *(v0 + 27);
  v22 = *(v0 + 26);
  __swift_project_boxed_opaque_existential_1(v6 + 8, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v7 = (type metadata accessor for RouteDestination() - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v27 = swift_allocObject();
  *(v0 + 120) = v27;
  *(v27 + 16) = xmmword_1E65EA670;
  v10 = v27 + v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v19();
  sub_1E5DFD1CC(v20, v3, &qword_1ED079238, &qword_1E6601220);
  sub_1E65E58C8();
  *(v1 + v12) = v4;
  *(v1 + v13) = v24;
  swift_storeEnumTagMultiPayload();
  v14 = v7[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v1, v10, type metadata accessor for RouteResource);
  *(v10 + v7[8]) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  v15 = *(v26 + 80);

  v25 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_1E63FA190;

  return v25(v27, v0 + 16, 1, v0 + 25, v28, v26);
}

uint64_t sub_1E63FA190()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *v1;
  v4[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FA30C, 0, 0);
  }

  else
  {
    v5 = v4[14];
    v6 = v4[11];
    v7 = v4[12];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E63FA30C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1E63FA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63FA3A8, 0, 0);
}

uint64_t sub_1E63FA3A8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = v3[12];
  v21 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v6 = (type metadata accessor for RouteDestination() - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v0 + 64) = v9;
  *(v9 + 16) = xmmword_1E65EA670;
  v10 = v9 + v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v14 = sub_1E65E56B8();
  (*(*(v14 - 8) + 16))(v10, v4, v14);
  *(v10 + v12) = v2;
  *(v10 + v13) = v1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v15 = v6[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[8]) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  v16 = *(v5 + 80);

  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_1E63FA660;

  return v20(v9, v0 + 16, 1, v0 + 25, v21, v5);
}

uint64_t sub_1E63FA660()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FA7B0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1E63FA7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for RouteSource(0);
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FA904, 0, 0);
}

uint64_t sub_1E63FA904()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v23 = v3;
  v24 = v2;
  v25 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v27 = v4[11];
  v28 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v6 = (type metadata accessor for RouteDestination() - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v26 = swift_allocObject();
  *(v0 + 80) = v26;
  *(v26 + 16) = xmmword_1E65EA670;
  v9 = v26 + v8;
  v10 = sub_1E65D76F8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = sub_1E65E2CF8();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = sub_1E65E1FC8();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v22 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  swift_storeEnumTagMultiPayload();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v14 = (v9 + v13[12]);
  v15 = v13[16];
  v16 = v13[20];
  v17 = v13[24];
  v18 = v13[28];
  v19 = v9 + v13[32];
  sub_1E5DFD1CC(v1, v9, &unk_1ED077760, &unk_1E66011D0);
  *v14 = 0;
  v14[1] = 0;
  sub_1E5DFD1CC(v24, v9 + v15, &qword_1ED072B60, &unk_1E65FA490);
  *(v9 + v16) = v22;
  sub_1E5DFD1CC(v23, v9 + v17, &unk_1ED077750, &unk_1E66011C0);
  *(v9 + v18) = 0;
  *v19 = 0;
  *(v19 + 8) = 1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E63FFABC(v25, v9 + v6[7], type metadata accessor for RouteSource);
  *(v9 + v6[8]) = MEMORY[0x1E69E7CD0];
  sub_1E63FFCF4(v25, type metadata accessor for RouteSource);
  sub_1E5DFE50C(v23, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v24, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v1, &unk_1ED077760, &unk_1E66011D0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 25));
  v20 = swift_task_alloc();
  *(v0 + 88) = v20;
  *v20 = v0;
  v20[1] = sub_1E63FACF0;

  return RoutingContext.presentDestinations(_:style:priority:)(v26, (v0 + 16), (v0 + 25), v27, v28);
}

uint64_t sub_1E63FACF0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FAE74, 0, 0);
  }

  else
  {
    v6 = v4[8];
    v5 = v4[9];
    v7 = v4[6];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E63FAE74()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_1E63FAEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for RouteSource(0);
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_1E65D76F8();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = type metadata accessor for RouteDestination();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FB054, 0, 0);
}

uint64_t sub_1E63FB054()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      return sub_1E65E69D8();
    }

    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);
    v10 = *(v1 + 88);
    v41 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_1((v1 + 64), v10);
    sub_1E65DA418();
    swift_storeEnumTagMultiPayload();
    (*(v32 + 16))(v29, v31, v33);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E63FFB24(v34, v29 + *(v30 + 20), type metadata accessor for RouteSource);
    (*(v32 + 8))(v31, v33);
    *(v29 + *(v30 + 24)) = MEMORY[0x1E69E7CD0];
    v11 = v41;
    sub_1E600F5B0((v0 + 25));
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_1E63FB8A4;
    v13 = *(v0 + 104);
    v14 = (v0 + 25);
    goto LABEL_10;
  }

  if (!*(v1 + 16))
  {
    v2 = *(v0 + 112);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = *(v1 + 88);
    v39 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_1((v1 + 64), v10);
    sub_1E65DA418();
    swift_storeEnumTagMultiPayload();
    (*(v5 + 16))(v2, v4, v6);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E63FFB24(v7, v2 + *(v3 + 20), type metadata accessor for RouteSource);
    (*(v5 + 8))(v4, v6);
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    v11 = v39;
    sub_1E600F5B0((v0 + 27));
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_1E63FB580;
    v13 = *(v0 + 112);
    v14 = (v0 + 27);
LABEL_10:

    return RoutingContext.appendDestination(_:priority:)(v13, v14, v10, v11);
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  v38 = *(v1 + 88);
  v40 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 64), v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v24 = *(v17 + 72);
  v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v26 = swift_allocObject();
  *(v0 + 136) = v26;
  *(v26 + 16) = xmmword_1E65EA670;
  v27 = v26 + v25;
  sub_1E65DA418();
  swift_storeEnumTagMultiPayload();
  (*(v18 + 16))(v27, v19, v20);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E63FFABC(v21, v27 + *(v16 + 20), type metadata accessor for RouteSource);
  *(v27 + *(v16 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E63FFCF4(v21, type metadata accessor for RouteSource);
  (*(v18 + 8))(v19, v20);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 26));
  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *v28 = v0;
  v28[1] = sub_1E63FB71C;

  return RoutingContext.presentDestinations(_:style:priority:)(v26, (v0 + 16), (v0 + 26), v38, v40);
}

uint64_t sub_1E63FB580()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *v1;
  v4[16] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBA40, 0, 0);
  }

  else
  {
    v6 = v4[13];
    v5 = v4[14];
    v7 = v4[10];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E63FB71C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *v1;
  v4[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBACC, 0, 0);
  }

  else
  {
    v6 = v4[13];
    v5 = v4[14];
    v7 = v4[10];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E63FB8A4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 104);
  v4 = *v1;
  v4[21] = v0;

  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBB58, 0, 0);
  }

  else
  {
    v6 = v4[13];
    v5 = v4[14];
    v7 = v4[10];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E63FBA40()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E63FBACC()
{
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E63FBB58()
{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E63FBBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 26) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_1E65DA3D8();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = sub_1E65D8668();
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = type metadata accessor for RouteDestination();
  *(v6 + 112) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FBD34, 0, 0);
}

uint64_t sub_1E63FBD34()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 26);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v24 = *(v0 + 112);
  v25 = v7[11];
  v26 = v7[12];
  __swift_project_boxed_opaque_existential_1(v7 + 8, v25);
  sub_1E65E5738();
  v9 = sub_1E65D8528();
  v21 = v10;
  (*(v3 + 8))(v2, v4);
  sub_1E65E5778();
  v11 = sub_1E65DA3B8();
  (*(v6 + 8))(v5, v22);
  sub_1E65E5788();
  v13 = v12;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v9;
  *(v1 + 24) = v21;
  *(v1 + 32) = v11;
  *(v1 + 40) = v23;
  *(v1 + 48) = v13;
  v15 = sub_1E65D96F8();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v16 = *(v24 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v24 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v17 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v17;
  sub_1E600F5B0((v0 + 25));
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_1E63FBFA8;
  v19 = *(v0 + 120);

  return RoutingContext.presentDestination(_:style:priority:)(v19, (v0 + 32), (v0 + 25), v25, v26);
}

uint64_t sub_1E63FBFA8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(v4 + 136) = v0;

  sub_1E5F94E00(*(v4 + 32), *(v4 + 40));
  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FC14C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 120);
    v6 = *(v4 + 104);
    v7 = *(v4 + 80);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_1E63FC14C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1E63FC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = type metadata accessor for RouteDestination();
  v6[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FC260, 0, 0);
}

uint64_t sub_1E63FC260()
{
  v1 = *(v0 + 168);
  sub_1E65E5688();
  v2 = swift_dynamicCastClass();
  v3 = *(v0 + 176);
  if (v2)
  {
    sub_1E5DFD1CC(v3 + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  }

  else
  {
    sub_1E5DF650C(v3 + 64, v0 + 16);
  }

  v4 = *(*(v0 + 176) + 16);
  v5 = sub_1E65DAE38();
  if (v5 != sub_1E65DAE38())
  {
    sub_1E5DFD1CC(v0 + 16, v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    v6 = *(v0 + 80);
    if (v6)
    {
      v7 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v8 = swift_task_alloc();
      *(v0 + 208) = v8;
      *v8 = v0;
      v8[1] = sub_1E63FC5A4;

      return RoutingContext.dismiss()(v6, v7);
    }

    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  }

  sub_1E5DFD1CC(v0 + 16, v0 + 96, &unk_1ED074320, &unk_1E65EA730);
  v10 = *(v0 + 120);
  if (v10)
  {
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 184);
    v14 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *v11 = v13;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v15 = *(v12 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 136);
    v16 = *(v0 + 144);
    *(v0 + 152) = *(v0 + 136);
    *(v0 + 160) = v16;
    sub_1E600F5B0((v0 + 145));

    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = sub_1E63FC8C8;
    v18 = *(v0 + 200);

    return RoutingContext.presentDestination(_:style:priority:)(v18, (v0 + 152), (v0 + 145), v10, v14);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    sub_1E5DFE50C(v0 + 96, &unk_1ED074320, &unk_1E65EA730);
    v19 = *(v0 + 200);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1E63FC5A4()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E63FCAA8;
  }

  else
  {
    v3 = sub_1E63FC6B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63FC6B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1E5DFD1CC(v0 + 16, v0 + 96, &unk_1ED074320, &unk_1E65EA730);
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *v2 = v4;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v6 = *(v3 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 136);
    v7 = *(v0 + 144);
    *(v0 + 152) = *(v0 + 136);
    *(v0 + 160) = v7;
    sub_1E600F5B0((v0 + 145));

    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_1E63FC8C8;
    v9 = *(v0 + 200);

    return RoutingContext.presentDestination(_:style:priority:)(v9, (v0 + 152), (v0 + 145), v1, v5);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    sub_1E5DFE50C(v0 + 96, &unk_1ED074320, &unk_1E65EA730);
    v11 = *(v0 + 200);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1E63FC8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 200);
  v7 = *v1;
  *(v2 + 232) = v0;

  sub_1E5F94E00(*(v2 + 152), *(v2 + 160));
  sub_1E63FFCF4(v4, type metadata accessor for RouteDestination);
  if (v0)
  {
    v5 = sub_1E63FCB2C;
  }

  else
  {
    v5 = sub_1E63FCA24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63FCA24()
{
  sub_1E5DFE50C((v0 + 2), &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[25];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E63FCAA8()
{
  sub_1E5DFE50C((v0 + 2), &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63FCB2C()
{
  sub_1E5DFE50C((v0 + 2), &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[29];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63FCBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v6 = sub_1E65E52B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E59F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  sub_1E6137A50(v4, v28);
  sub_1E63FFABC(v27, v9, MEMORY[0x1E69CD768]);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 104) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v11 + 32))(v21 + v18, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v22 = v21 + v19;
  v23 = v28[5];
  *(v22 + 64) = v28[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v29;
  v24 = v28[1];
  *v22 = v28[0];
  *(v22 + 16) = v24;
  v25 = v28[3];
  *(v22 + 32) = v28[2];
  *(v22 + 48) = v25;
  sub_1E63FFB24(v9, v21 + v20, MEMORY[0x1E69CD768]);
  sub_1E6059EAC(0, 0, v16, &unk_1E6601300, v21);
}

uint64_t sub_1E63FCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v31 = a9;
  v14 = a7(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v31 - v21;
  v23 = sub_1E65E60A8();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_1E6137A50(v10, v32);
  (*(v15 + 16))(v18, a2, v14);
  v24 = (*(v15 + 80) + 152) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = v32[5];
  *(v25 + 96) = v32[4];
  *(v25 + 112) = v26;
  v27 = v33;
  v28 = v32[1];
  *(v25 + 32) = v32[0];
  *(v25 + 48) = v28;
  v29 = v32[3];
  *(v25 + 64) = v32[2];
  *(v25 + 80) = v29;
  *(v25 + 128) = v27;
  *(v25 + 136) = a3;
  *(v25 + 144) = a4;
  (*(v15 + 32))(v25 + v24, v18, v14);

  sub_1E6059EAC(0, 0, v22, v31, v25);
}

uint64_t sub_1E63FD1A0()
{
  if (*(v0 + 16) == 2)
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63FD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1E65E56B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1E6137A50(v5, v26);
  (*(v10 + 16))(v12, a2, v9);
  v18 = (*(v10 + 80) + 136) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = v26[5];
  *(v20 + 96) = v26[4];
  *(v20 + 112) = v21;
  *(v20 + 128) = v27;
  v22 = v26[1];
  *(v20 + 32) = v26[0];
  *(v20 + 48) = v22;
  v23 = v26[3];
  *(v20 + 64) = v26[2];
  *(v20 + 80) = v23;
  (*(v10 + 32))(v20 + v18, v12, v9);
  *(v20 + v19) = a3;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1E6059EAC(0, 0, v16, &unk_1E6601210, v20);
}

uint64_t sub_1E63FD4D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E6137A50(v3, v19);
  v11 = swift_allocObject();
  v12 = v19[2];
  *(v11 + 88) = v19[3];
  v13 = v19[5];
  *(v11 + 104) = v19[4];
  *(v11 + 120) = v13;
  v14 = v19[1];
  *(v11 + 40) = v19[0];
  *(v11 + 56) = v14;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  v15 = v20;
  *(v11 + 72) = v12;
  *(v11 + 136) = v15;
  *(v11 + 144) = a2;
  v16 = a1;

  sub_1E6059EAC(0, 0, v9, &unk_1E66011E8, v11);
}

uint64_t sub_1E63FD630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v12 - v4;
  v6 = *(v0 + 16);
  if (v6 >= 2)
  {
    if (v6 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v7 = sub_1E65E60A8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_1E6137A50(v0, v13);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v9 = v13[5];
    *(v8 + 96) = v13[4];
    *(v8 + 112) = v9;
    *(v8 + 128) = v14;
    v10 = v13[1];
    *(v8 + 32) = v13[0];
    *(v8 + 48) = v10;
    v11 = v13[3];
    *(v8 + 64) = v13[2];
    *(v8 + 80) = v11;
    sub_1E6059EAC(0, 0, v5, &unk_1E66011B8, v8);
  }

  return result;
}

uint64_t sub_1E63FD7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v11 = a5(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1E6137A50(v9, v28);
  (*(v12 + 16))(v15, a2, v11);
  v21 = (*(v12 + 80) + 136) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = v28[5];
  *(v22 + 96) = v28[4];
  *(v22 + 112) = v23;
  *(v22 + 128) = v29;
  v24 = v28[1];
  *(v22 + 32) = v28[0];
  *(v22 + 48) = v24;
  v25 = v28[3];
  *(v22 + 64) = v28[2];
  *(v22 + 80) = v25;
  (*(v12 + 32))(v22 + v21, v15, v11);
  sub_1E6059EAC(0, 0, v19, a7, v22);
}

uint64_t sub_1E63FDA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1E65DA308();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E6137A50(v4, v22);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v15 = (*(v8 + 80) + 136) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v22[5];
  *(v16 + 96) = v22[4];
  *(v16 + 112) = v17;
  *(v16 + 128) = v23;
  v18 = v22[1];
  *(v16 + 32) = v22[0];
  *(v16 + 48) = v18;
  v19 = v22[3];
  *(v16 + 64) = v22[2];
  *(v16 + 80) = v19;
  (*(v8 + 32))(v16 + v15, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_1E6059EAC(0, 0, v13, &unk_1E6601188, v16);
}

uint64_t sub_1E63FDC38(uint64_t a1)
{
  v4 = *(sub_1E65DA308() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63F9658(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t sub_1E63FDD5C(uint64_t a1)
{
  v4 = *(sub_1E65DA488() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63FAEFC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E63FDE50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63FA7C8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63FDF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[18];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63FC1C8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1E63FDFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for RouteDestination();
  v13 = v12 - 8;
  v42 = *(v12 - 8);
  v14 = *(v42 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
  v20 = sub_1E65E55E8();
  (*(*(v20 - 8) + 16))(v18, a1, v20);
  v21 = sub_1E65D7EB8();
  (*(*(v21 - 8) + 16))(&v18[v19], a2, v21);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v22 = *(v13 + 28);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v13 + 32)] = MEMORY[0x1E69E7CD0];
  v23 = *(v4 + 16);
  if (v23 < 2)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    v25 = sub_1E65E60A8();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    sub_1E6137A50(v4, &v43);
    sub_1E63FFABC(v18, v16, type metadata accessor for RouteDestination);
    v26 = (*(v42 + 80) + 136) & ~*(v42 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v28 = v48;
    *(v27 + 96) = v47;
    *(v27 + 112) = v28;
    *(v27 + 128) = v49;
    v29 = v44;
    *(v27 + 32) = v43;
    *(v27 + 48) = v29;
    v30 = v46;
    *(v27 + 64) = v45;
    *(v27 + 80) = v30;
    sub_1E63FFB24(v16, v27 + v26, type metadata accessor for RouteDestination);
    v31 = (v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_1E63FF378;
    v31[1] = v24;
    v32 = a3;

    sub_1E6059EAC(0, 0, v11, &unk_1E6601298, v27);

LABEL_5:

    return sub_1E63FFCF4(v18, type metadata accessor for RouteDestination);
  }

  v33 = v11;
  v34 = v42;
  if (v23 == 3)
  {
    v35 = sub_1E65E60A8();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
    sub_1E6137A50(v4, &v43);
    sub_1E63FFABC(v18, v16, type metadata accessor for RouteDestination);
    v36 = (*(v34 + 80) + 136) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v38 = v48;
    *(v37 + 96) = v47;
    *(v37 + 112) = v38;
    *(v37 + 128) = v49;
    v39 = v44;
    *(v37 + 32) = v43;
    *(v37 + 48) = v39;
    v40 = v46;
    *(v37 + 64) = v45;
    *(v37 + 80) = v40;
    sub_1E63FFB24(v16, v37 + v36, type metadata accessor for RouteDestination);
    sub_1E6059EAC(0, 0, v33, &unk_1E6601288, v37);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63FE4D4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v34 = a6;
  v32 = a3;
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v30 - v15;
  sub_1E5DFD1CC(a1, v30 - v15, &qword_1ED079238, &qword_1E6601220);
  v17 = *(v13 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  sub_1E63FED04(v16, v19 + v18);
  *(v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1E6137A50(v30[1], v35);
  sub_1E5DFD1CC(a1, v16, &qword_1ED079238, &qword_1E6601220);
  v21 = (v17 + 168) & ~v17;
  v22 = v21 + v14;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v35[5];
  *(v23 + 96) = v35[4];
  *(v23 + 112) = v24;
  v25 = v36;
  v26 = v35[1];
  *(v23 + 32) = v35[0];
  *(v23 + 48) = v26;
  v27 = v35[3];
  *(v23 + 64) = v35[2];
  *(v23 + 80) = v27;
  v28 = v31;
  *(v23 + 128) = v25;
  *(v23 + 136) = v28;
  *(v23 + 144) = v32 & 1;
  *(v23 + 152) = sub_1E63FED74;
  *(v23 + 160) = v19;
  sub_1E63FED04(v16, v23 + v21);
  *(v23 + v22) = v33;
  *(v23 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = a5;
  *(v23 + (((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;
  swift_bridgeObjectRetain_n();

  sub_1E6059EAC(0, 0, v11, &unk_1E6601230, v23);
}

uint64_t sub_1E63FE79C(uint64_t a1)
{
  v28 = sub_1E65E5798();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_1E65D8668();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1E65E5738();
  v13 = sub_1E65D8658();
  v15 = v14;
  LOBYTE(a1) = v16;
  (*(v9 + 8))(v12, v8);
  *&v29 = v13;
  *(&v29 + 1) = v15;
  LOBYTE(v30) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  result = sub_1E5F87058(v13, v15, a1 & 1);
  v18 = v36;
  if (v36 != 4)
  {
    v19 = sub_1E65E60A8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1E6137A50(v26[1], &v29);
    v20 = v28;
    (*(v2 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v28);
    v21 = (*(v2 + 80) + 136) & ~*(v2 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = v34;
    *(v22 + 96) = v33;
    *(v22 + 112) = v23;
    *(v22 + 128) = v35;
    v24 = v30;
    *(v22 + 32) = v29;
    *(v22 + 48) = v24;
    v25 = v32;
    *(v22 + 64) = v31;
    *(v22 + 80) = v25;
    (*(v2 + 32))(v22 + v21, v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    *(v22 + v21 + v3) = v18;
    sub_1E6059EAC(0, 0, v7, &unk_1E66011F8, v22);
  }

  return result;
}

uint64_t sub_1E63FEAA8(uint64_t a1)
{
  v4 = *(sub_1E65E5798() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 136) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63FBBE4(a1, v5, v6, v1 + 32, v7, v8);
}

uint64_t sub_1E63FEBC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E56B8() - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63FA384(a1, v8, v9, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1E63FED04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63FED74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63F9A64(v1 + v4, v5, a1);
}

uint64_t sub_1E63FEE1C(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220) - 8);
  v5 = ((*(v4 + 80) + 168) & ~*(v4 + 80)) + *(v4 + 64);
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + v5);
  v11 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E63F9D58(a1, v16, v15, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_1E63FEFB8(uint64_t a1)
{
  v4 = *(sub_1E65D9048() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F9118(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t objectdestroy_13Tm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[5] >= 0xCuLL)
  {
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocObject();
}

uint64_t sub_1E63FF10C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63F7DB8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63FF1BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 144);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F8154(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_1E63FF284(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F750C(a1, v6, v7, v1 + 32, v1 + v5);
}

id sub_1E63FF378@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = 0x3FE3D70A3D70A3D7;
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = 0x80;
  }

  else
  {
    v4 = 64;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return v2;
}

uint64_t sub_1E63FF3AC(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E63F7750(a1, v6, v7, v1 + 32, v1 + v5, v9, v10);
}

uint64_t sub_1E63FF4E0(uint64_t a1)
{
  v4 = *(sub_1E65DAD48() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F70EC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E63FF5D4(uint64_t a1)
{
  v4 = *(sub_1E65D8478() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[17];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F6878(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t objectdestroy_90Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = v1[2];
  swift_unknownObjectRelease();
  if (v1[5] >= 0xCuLL)
  {
  }

  if (v1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  v7 = v1[18];

  (*(v3 + 8))(v1 + ((v4 + 152) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_1E63FF7D8(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[17];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F6424(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1E63FF8E0(uint64_t a1)
{
  v4 = *(sub_1E65D8258() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 184) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = *(v1 + 136);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F28B8(a1, v5, v6, v1 + 32, v9, v1 + 144, v7, v8);
}

uint64_t sub_1E63FFA10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E63FFA58()
{
  result = qword_1ED079258;
  if (!qword_1ED079258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079250, &qword_1E66012F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079258);
  }

  return result;
}

uint64_t sub_1E63FFABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63FFB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63FFB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E59F8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E52B8() - 8);
  v9 = (v7 + *(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63F18F4(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E63FFCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_11SeymourCore17MetricPageContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard14RoutingContext_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E63FFDB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E63FFDF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E63FFE64@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for RemoteBrowsingService();
  Description = v2[-1].Description;
  v63 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v60 = v4;
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountService();
  v57 = v5[-1].Description;
  v58 = v5;
  v6 = v57[8];
  MEMORY[0x1EEE9AC00](v5);
  v56 = v7;
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v49 - v10;
  v11 = type metadata accessor for MarketingService();
  v12 = v11[-1].Description;
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v17 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment + 8);
  v18 = type metadata accessor for AppEnvironment();
  v53 = v18[6];
  v19 = v18[19];
  v55 = v18[25];
  v20 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v21 = v12[2];
  v51 = v16;
  v21(&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v19, v11);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = v22 + v13;
  v24 = swift_allocObject();
  (v12[4])(v24 + v22, v14, v11);
  *(v24 + v23) = v17;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = sub_1E65E4E68();
  v52 = v28;
  v29 = v64;
  v64[3] = v25;
  v29[4] = &off_1F5FAA810;
  *v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E65EB9E0;
  v31 = sub_1E65E60A8();
  v50 = *(*(v31 - 8) + 56);
  v32 = v59;
  v50(v59, 1, 1, v31);
  v33 = v57;
  v34 = v54;
  v35 = v16 + v53;
  v36 = v58;
  (v57[2])(v54, v35, v58);
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = (v56 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (v33[4])(v39 + v37, v34, v36);
  v40 = v52;
  *(v39 + v38) = v52;
  v41 = v40;
  swift_retain_n();
  *(v30 + 32) = sub_1E6059EAC(0, 0, v32, &unk_1E66013E0, v39);
  v50(v32, 1, 1, v31);
  v43 = v61;
  v42 = Description;
  v44 = v63;
  (Description[2])(v61, v51 + v55, v63);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = (v60 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  (v42[4])(v47 + v45, v43, v44);
  *(v47 + v46) = v41;
  result = sub_1E6059EAC(0, 0, v32, &unk_1E66013F0, v47);
  *(v30 + 40) = result;
  v64[5] = v30;
  return result;
}

uint64_t sub_1E640042C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 224) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1E65E1458();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v8 = sub_1E65E1518();
  *(v4 + 80) = v8;
  v9 = *(v8 - 8);
  *(v4 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v12 = sub_1E65E13D8();
  *(v4 + 128) = v12;
  v13 = *(v12 - 8);
  *(v4 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v15 = sub_1E65E1248();
  *(v4 + 152) = v15;
  v16 = *(v15 - 8);
  *(v4 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6400664, 0, 0);
}

uint64_t sub_1E6400664()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = MarketingService.fetchMarketingItem.getter();
  v0[22] = v4;
  sub_1E65E1508();
  v5 = sub_1E65E1268();
  v7 = v6;
  v0[23] = v6;
  v8 = sub_1E65E14E8();
  v10 = v9;
  v0[24] = v9;
  v14 = (v3 + *v3);
  v11 = v3[1];
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_1E64007AC;

  return v14(v5, v7, v8, v10);
}

uint64_t sub_1E64007AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v10 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_1E64011B0;
  }

  else
  {
    v7 = v3[23];
    v6 = v3[24];
    v8 = v3[22];

    v5 = sub_1E64008E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E64008E4()
{
  v124 = v0;
  v1 = *(v0 + 32);
  if (((1 << sub_1E65E1508()) & 0x1FEB) != 0)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 152);
    **(v0 + 168) = *(v0 + 224);
    v4 = *MEMORY[0x1E699E7B8];
    (*(v2 + 104))();
  }

  else
  {
    v104 = *(v0 + 208);
    v105 = *(v0 + 168);
    v106 = *(v0 + 224);
    sub_1E65E1238();
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 56);
  v118 = *(v0 + 48);
  v12 = *(v0 + 224);
  (*(v7 + 104))(v8, *MEMORY[0x1E699E7F8], v9);
  sub_1E65E13C8();
  (*(v7 + 8))(v8, v9);
  swift_getObjectType();
  sub_1E65E1348();
  if ((*(v11 + 48))(v10, 1, v118) == 1)
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 160);
    v119 = *(v0 + 168);
    v15 = *(v0 + 152);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 32);
    sub_1E5DFE50C(*(v0 + 120), &qword_1ED075868, &qword_1E65F1E60);
    v19 = sub_1E65E13E8();
    sub_1E64027D0();
    v20 = swift_allocError();
    v22 = v21;
    v23 = v21;
    v24 = v18;
    v25 = v20;
    (*(v17 + 16))(v23, v24, v16);
    (*(*(v19 - 8) + 104))(v22, *MEMORY[0x1E699E800], v19);
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v14 + 8))(v119, v15);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 32);
    v30 = sub_1E65E3B68();
    __swift_project_value_buffer(v30, qword_1EE2EA2A0);
    v31 = *(v27 + 16);
    v31(v26, v29, v28);
    v32 = v25;
    v33 = sub_1E65E3B48();
    v34 = sub_1E65E6328();

    v35 = v25;
    if (os_log_type_enabled(v33, v34))
    {
      v37 = *(v0 + 96);
      v36 = *(v0 + 104);
      v120 = v34;
      v38 = v35;
      v40 = *(v0 + 80);
      v39 = *(v0 + 88);
      v41 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v123[0] = v117;
      *v41 = 141558530;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2080;
      v31(v36, v37, v40);
      v42 = sub_1E65E5CE8();
      v44 = v43;
      (*(v39 + 8))(v37, v40);
      v45 = sub_1E5DFD4B0(v42, v44, v123);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2082;
      *(v0 + 16) = v38;
      v46 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v47 = sub_1E65E5CE8();
      v49 = sub_1E5DFD4B0(v47, v48, v123);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_1E5DE9000, v33, v120, "Failed to resolve marketing offer for %{mask.hash}s: %{public}s ", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v117, -1, -1);
      MEMORY[0x1E694F1C0](v41, -1, -1);
    }

    else
    {
      v80 = *(v0 + 88);
      v79 = *(v0 + 96);
      v81 = *(v0 + 80);

      (*(v80 + 8))(v79, v81);
    }

    v82 = *(v0 + 168);
    v83 = *(v0 + 144);
    v85 = *(v0 + 112);
    v84 = *(v0 + 120);
    v87 = *(v0 + 96);
    v86 = *(v0 + 104);
    v88 = *(v0 + 72);
    v122 = *(v0 + 64);
    swift_willThrow();

    v89 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 56) + 32))(*(v0 + 24), *(v0 + 120), *(v0 + 48));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 112);
    v51 = *(v0 + 80);
    v52 = *(v0 + 88);
    v53 = *(v0 + 72);
    v55 = *(v0 + 48);
    v54 = *(v0 + 56);
    v57 = *(v0 + 24);
    v56 = *(v0 + 32);
    v58 = sub_1E65E3B68();
    __swift_project_value_buffer(v58, qword_1EE2EA2A0);
    v114 = *(v52 + 16);
    v114(v50, v56, v51);
    v115 = *(v54 + 16);
    v115(v53, v57, v55);
    v59 = sub_1E65E3B48();
    v60 = sub_1E65E6338();
    log = v59;
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 160);
    v63 = *(v0 + 168);
    v121 = *(v0 + 152);
    v64 = *(v0 + 112);
    if (v61)
    {
      v110 = v60;
      v65 = *(v0 + 104);
      v113 = *(v0 + 168);
      v67 = *(v0 + 80);
      v66 = *(v0 + 88);
      v107 = *(v0 + 64);
      v108 = *(v0 + 72);
      v68 = *(v0 + 48);
      v69 = *(v0 + 56);
      v111 = *(v0 + 208);
      v112 = *(v0 + 160);
      v70 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v123[0] = v109;
      *v70 = 141558786;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2080;
      v114(v65, v64, v67);
      v71 = sub_1E65E5CE8();
      v73 = v72;
      (*(v66 + 8))(v64, v67);
      v74 = sub_1E5DFD4B0(v71, v73, v123);

      *(v70 + 14) = v74;
      *(v70 + 22) = 2160;
      *(v70 + 24) = 1752392040;
      *(v70 + 32) = 2080;
      v115(v107, v108, v68);
      v75 = sub_1E65E5CE8();
      v77 = v76;
      (*(v69 + 8))(v108, v68);
      v78 = sub_1E5DFD4B0(v75, v77, v123);

      *(v70 + 34) = v78;
      _os_log_impl(&dword_1E5DE9000, log, v110, "Resolved marketing offer %{mask.hash}s to %{mask.hash}s", v70, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v109, -1, -1);
      MEMORY[0x1E694F1C0](v70, -1, -1);

      swift_unknownObjectRelease();
      (*(v112 + 8))(v113, v121);
    }

    else
    {
      v91 = *(v0 + 80);
      v90 = *(v0 + 88);
      v92 = *(v0 + 72);
      v94 = *(v0 + 48);
      v93 = *(v0 + 56);

      swift_unknownObjectRelease();
      (*(v93 + 8))(v92, v94);
      (*(v90 + 8))(v64, v91);
      (*(v62 + 8))(v63, v121);
    }

    v95 = *(v0 + 168);
    v96 = *(v0 + 144);
    v98 = *(v0 + 112);
    v97 = *(v0 + 120);
    v100 = *(v0 + 96);
    v99 = *(v0 + 104);
    v102 = *(v0 + 64);
    v101 = *(v0 + 72);

    v89 = *(v0 + 8);
  }

  return v89();
}

uint64_t sub_1E64011B0()
{
  v45 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[27];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[4];
  v9 = sub_1E65E3B68();
  __swift_project_value_buffer(v9, qword_1EE2EA2A0);
  v10 = *(v5 + 16);
  v10(v6, v8, v7);
  v11 = v4;
  v12 = sub_1E65E3B48();
  v13 = sub_1E65E6328();

  v14 = v4;
  if (os_log_type_enabled(v12, v13))
  {
    v16 = v0[12];
    v15 = v0[13];
    v42 = v13;
    v17 = v14;
    v19 = v0[10];
    v18 = v0[11];
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v20 = 141558530;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    v10(v15, v16, v19);
    v21 = sub_1E65E5CE8();
    v23 = v22;
    (*(v18 + 8))(v16, v19);
    v24 = sub_1E5DFD4B0(v21, v23, v44);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2082;
    v0[2] = v17;
    v25 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v26 = sub_1E65E5CE8();
    v28 = sub_1E5DFD4B0(v26, v27, v44);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_1E5DE9000, v12, v42, "Failed to resolve marketing offer for %{mask.hash}s: %{public}s ", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v41, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  else
  {
    v29 = v0[11];
    v30 = v0[12];
    v31 = v0[10];

    (*(v29 + 8))(v30, v31);
  }

  v32 = v0[21];
  v33 = v0[18];
  v35 = v0[14];
  v34 = v0[15];
  v37 = v0[12];
  v36 = v0[13];
  v38 = v0[9];
  v43 = v0[8];
  swift_willThrow();

  v39 = v0[1];

  return v39();
}

uint64_t sub_1E64014F4(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for MarketingService()[-1].Description;
  v7 = v2 + ((*(Description + 80) + 16) & ~*(Description + 80));
  v8 = *(v7 + Description[8]);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return sub_1E640042C(a1, a2, v7, v8);
}

uint64_t sub_1E6401600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6401734, 0, 0);
}

uint64_t sub_1E6401734()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6401830;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6401830()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6401948, 0, 0);
}

uint64_t sub_1E6401948()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6401A24;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6401A24()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6401B20, 0, 0);
}

uint64_t sub_1E6401B20()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6401C20, v5, v4);
  }
}

uint64_t sub_1E6401C20()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6401A24;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6401CD8(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6401600(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6401DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6401F64, 0, 0);
}

uint64_t sub_1E6401F64()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6402060;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6402060()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6402178, 0, 0);
}

uint64_t sub_1E6402178()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6402254;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6402254()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6402350, 0, 0);
}

uint64_t sub_1E6402350()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64024A0, v7, v6);
  }
}

uint64_t sub_1E64024A0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E6402510, 0, 0);
}

uint64_t sub_1E6402510()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6402254;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t objectdestroy_3Tm_12(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E64026B0(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6401DF8(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1E64027D0()
{
  result = qword_1ED079260;
  if (!qword_1ED079260)
  {
    sub_1E65E13E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079260);
  }

  return result;
}

void *sub_1E6402828(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793B8, &qword_1E6601520);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1E65DCA48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v34 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(sub_1E65D8398() - 8);
  v29 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v33 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v30 = v11;
  v31 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED0793B8, &qword_1E6601520);
    }

    else
    {
      v22 = a1;
      v23 = MEMORY[0x1E699EE60];
      v24 = v32;
      sub_1E5E24EEC(v10, v32, MEMORY[0x1E699EE60]);
      sub_1E5E24EEC(v24, v34, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E64F6074(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_1E64F6074(v25 > 1, v26 + 1, 1, v21);
      }

      v21[2] = v26 + 1;
      sub_1E5E24EEC(v34, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, MEMORY[0x1E699EE60]);
      a1 = v22;
      v11 = v30;
    }

    v20 += v33;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

char *sub_1E6402B44(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079630, &qword_1E6601760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65DC938() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED079630, &qword_1E6601760);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F60C4(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F60C4(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_1E6402E7C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F60E8(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F60E8(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E64032DC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795E8, &qword_1E6601718);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65DC938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65DA778() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0795E8, &qword_1E6601718);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F6134(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F6134(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

char *sub_1E6403608(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079498, &qword_1E66015E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D8258() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED079498, &qword_1E66015E0);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F6330(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F6330(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

char *sub_1E6403940(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65E1BA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D7D18() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED074FF0, &qword_1E65F1180);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F6460(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F6460(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

uint64_t sub_1E6403C6C(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v13 = v8;
      v9 = a1(&v12, &v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x1E694D8F0](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1E65E5F68();
        }

        sub_1E65E5FA8();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_1E6403D6C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079490, &qword_1E66015D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v28 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  v7 = *(*(v33 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v11;
  v29 = v10;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v31 = (v10 + 48);

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v30 = a3;
  if (v15)
  {
LABEL_10:
    while (1)
    {
      v21 = (*(a3 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
      v22 = v21[1];
      v36[0] = *v21;
      v36[1] = v22;

      v23 = v34;
      v24 = v37;
      v35(v36);
      v37 = v24;
      if (v24)
      {
        break;
      }

      v15 &= v15 - 1;

      if ((*v31)(v23, 1, v33) == 1)
      {
        result = sub_1E5DFE50C(v23, &qword_1ED079490, &qword_1E66015D8);
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v25 = v28;
        sub_1E5FAB460(v23, v28, &qword_1ED072160, &qword_1E65EA8C8);
        sub_1E5FAB460(v25, v32, &qword_1ED072160, &qword_1E65EA8C8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1E64F6488(0, v19[2] + 1, 1, v19);
        }

        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          v19 = sub_1E64F6488(v26 > 1, v27 + 1, 1, v19);
        }

        v19[2] = v27 + 1;
        result = sub_1E5FAB460(v32, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, &qword_1ED072160, &qword_1E65EA8C8);
        a3 = v30;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    return v19;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return v19;
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1E64040DC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794B0, &qword_1E66015F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D8258() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0794B0, &qword_1E66015F8);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F64D0(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F64D0(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_1E6404414(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = sub_1E65D8258();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F60E8(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F60E8(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E640486C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B0, &qword_1E6601440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_1E65D8258();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = sub_1E65DAEB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED0792B0, &qword_1E6601440);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F66F0(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F66F0(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E6404CB8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1E65D8258() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E64F60E8(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1E64F60E8(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_1E6404FF0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794D8, &qword_1E6601620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CA0, &unk_1E65EC630);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED0794D8, &qword_1E6601620);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F6AB8(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F6AB8(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6405450(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B0, &qword_1E65F6E78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1E65DFAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v34 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(sub_1E65D88D8() - 8);
  v29 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v33 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v30 = v11;
  v31 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED0768B0, &qword_1E65F6E78);
    }

    else
    {
      v22 = a1;
      v23 = MEMORY[0x1E699D4B8];
      v24 = v32;
      sub_1E5E24EEC(v10, v32, MEMORY[0x1E699D4B8]);
      sub_1E5E24EEC(v24, v34, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E64F6B2C(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_1E64F6B2C(v25 > 1, v26 + 1, 1, v21);
      }

      v21[2] = v26 + 1;
      sub_1E5E24EEC(v34, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, MEMORY[0x1E699D4B8]);
      a1 = v22;
      v11 = v30;
    }

    v20 += v33;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1E640576C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079360, &qword_1E66014C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = sub_1E65DA488();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED079360, &qword_1E66014C8);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F6B54(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F6B54(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6405BC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079388, &qword_1E66014F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1E65DFFB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v34 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(sub_1E65D9898() - 8);
  v29 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v33 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v30 = v11;
  v31 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED079388, &qword_1E66014F0);
    }

    else
    {
      v22 = a1;
      v23 = MEMORY[0x1E699D618];
      v24 = v32;
      sub_1E5E24EEC(v10, v32, MEMORY[0x1E699D618]);
      sub_1E5E24EEC(v24, v34, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E64F6BC8(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_1E64F6BC8(v25 > 1, v26 + 1, 1, v21);
      }

      v21[2] = v26 + 1;
      sub_1E5E24EEC(v34, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, MEMORY[0x1E699D618]);
      a1 = v22;
      v11 = v30;
    }

    v20 += v33;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1E6405EE0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079428, &qword_1E6601580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_1E65E2CB8();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = sub_1E65D9D28();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED079428, &qword_1E6601580);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F6CE4(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F6CE4(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E640632C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794C0, &qword_1E6601608);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_1E65E33F8();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = sub_1E65D8E78();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_1E5DFE50C(v8, &qword_1ED0794C0, &qword_1E6601608);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1E64F6D34(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_1E64F6D34(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}