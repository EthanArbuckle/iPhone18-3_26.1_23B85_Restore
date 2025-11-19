uint64_t sub_1ABB43134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(&off_1E7961660 + v5);
  v7 = off_1F2096230[v5];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *a2 = 1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
}

uint64_t ConfidenceLinkDependency.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABB43248()
{
  result = qword_1EB4D3280;
  if (!qword_1EB4D3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3280);
  }

  return result;
}

uint64_t sub_1ABB432A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB432E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

_BYTE *storeEnumTagSinglePayload for ConfidenceLinkDependency(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABB43418(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:

      break;
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB43458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1ABB44DBC();
}

uint64_t sub_1ABB43464()
{
  sub_1ABB43418(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1ABB43540@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v9 = *(v3 + 1);
  v8 = *(v3 + 2);

  result = ValueConfidenceMaps.init(_:)(v10).maps._rawValue;
  if (!v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v14;
    *(v13 + 24) = 0;
    *(v13 + 32) = a1;
    *(v13 + 40) = v7;
    *(v13 + 48) = v9;
    *(v13 + 56) = v8;
    *(a3 + 8) = a2;
    *(a3 + 16) = v13;
    *a3 = 1;
  }

  return result;
}

uint64_t ConfidenceNode.customMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v9 = *(v3 + 1);
  v8 = *(v3 + 2);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 2;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
  *(a3 + 8) = sub_1ABB444E0;
  *(a3 + 16) = v10;
  *a3 = 1;
}

IntelligencePlatform::ValueConfidenceMaps __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ValueConfidenceMaps.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  if (v4 < 2)
  {

    sub_1ABB43A34();
    swift_allocError();
    *v10 = 0xD000000000000035;
    v10[1] = 0x80000001ABF88160;
    return swift_willThrow();
  }

  else
  {
    v5 = v4 + 1;
    for (i = 40; --v5; i += 16)
    {
      v7 = *(a1._rawValue + i);
      if (v7 < 0.0 || v7 > 1.0)
      {

        sub_1ABB43A34();
        swift_allocError();
        *v9 = 0;
        v9[1] = 0;
        return swift_willThrow();
      }
    }

    rawValue = a1._rawValue;

    sub_1ABB43A88(&rawValue);
    if (v2)
    {

      __break(1u);
    }

    else
    {

      *v3 = rawValue;
    }
  }

  return result;
}

uint64_t sub_1ABB437A8(double a1)
{
  v2 = (*v1 + 32);
  v3 = -1;
  v4 = *(*v1 + 16);
  do
  {
    if (!v4)
    {
      return *(*v1 + 16) - 2;
    }

    v5 = *v2;
    v2 += 2;
    ++v3;
    --v4;
  }

  while (v5 <= a1);
  if (v3)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1ABB437E8(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v3 = *v1;
  if (!*(v1 + 16))
  {
    v16 = *v1;
    v11 = sub_1ABB437A8(a1.n128_f64[0]);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = *(v3 + 16);
      if (v11 < v12)
      {
        if (v11 + 1 < v12)
        {
          v13 = vsubq_f64(*(v3 + 32 + 16 * (v11 + 1)), *(v3 + 32 + 16 * v11));
          return;
        }

        goto LABEL_18;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (*(v1 + 16) == 1)
  {
    v15 = *v1;
    v4 = sub_1ABB437A8(a1.n128_f64[0]);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = *(v3 + 16);
      if (v4 < v5)
      {
        if (v4 + 1 < v5)
        {
          v6 = (v3 + 32 + 16 * v4);
          v7 = (v3 + 32 + 16 * (v4 + 1));
          v8 = (*v6 + *v7) * -0.5;
          v9 = (*v6 - *v7) * 0.5;
          v10 = log(1.00001 / ((v6[1] + v7[1]) * 0.5 + 0.5 + 0.000005) + -1.0);
          exp((v2 + v8) / (v9 / v10));
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v14 = v1[1];
  (v3)(a1);
}

Swift::Double __swiftcall Double.clampToValidConfidence()()
{
  if (result <= 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1ABB439B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB439DC()
{
  sub_1ABB439B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1ABB43A34()
{
  result = qword_1EB4D3288;
  if (!qword_1EB4D3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3288);
  }

  return result;
}

uint64_t sub_1ABB43A88(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A284(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABB43BE8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABB43AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1ABB43B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1ABB43B98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABB43BE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D3290, &unk_1ABF3BEC0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB43D5C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABB43CEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB43CEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB43D5C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v8[2];
        sub_1ABAD8820();
        v8 = v78;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v79;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
          {
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
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_1ABB4435C((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABB44230(&v85, *a1, a3);
LABEL_89:
}

uint64_t sub_1ABB44230(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABB4435C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABB4435C(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  v14 = v6 - 2;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1ABB444E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v9 = v8;
  v81 = a2;
  v82 = a4;
  v80 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1ABA7BB64(AssociatedTypeWitness);
  v75 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v68 = a5;
  v69 = &v63 - v20;
  v66 = *(a5 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7AC18();
  v78 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v63 - v25;
  v26 = sub_1ABF247E4();
  v27 = sub_1ABA7BB64(v26);
  v64 = v28;
  v65 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7AC18();
  v33 = v31 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v63 - v36;
  v38 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v77 = v39 - v40;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v74 = *(a3 - 8);
  v43 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v73 = &v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a6;
  v83 = swift_getAssociatedTypeWitness();
  v45 = sub_1ABA7BB64(v83);
  v70 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v63 - v49;
  v51 = sub_1ABF23F14();
  v84 = sub_1ABF24C04();
  v79 = sub_1ABF24C14();
  sub_1ABF24BB4();
  (*(v74 + 16))(v73, v71, a3);
  v82 = v50;
  v74 = a3;
  result = sub_1ABF23F04();
  if (v51 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v51)
  {
    v53 = (v75 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1ABF24864();
      result = sub_1ABA7E1E0(v37, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v80(v37, v76);
      if (v9)
      {
        v61 = sub_1ABA7D288();
        v62(v61);

        (*(v66 + 32))(v67, v76, v68);
        return (*v53)(v37, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v53)(v37, AssociatedTypeWitness);
      sub_1ABF24BF4();
      if (!--v51)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v54 = (v75 + 32);
  v55 = (v75 + 8);
  v56 = v69;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v33, 1, AssociatedTypeWitness) == 1)
    {
      v57 = sub_1ABA7D288();
      v58(v57);
      (*(v64 + 8))(v33, v65);
      return v84;
    }

    (*v54)(v56, v33, AssociatedTypeWitness);
    v80(v56, v78);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v55)(v56, AssociatedTypeWitness);
    sub_1ABF24BF4();
  }

  (*v55)(v56, AssociatedTypeWitness);
  v59 = sub_1ABA7D288();
  v60(v59);

  return (*(v66 + 32))(v67, v78, v68);
}

double ConfidenceLink.confidence.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = (*(v0 + 1))();
  v5 = v4;
  if (v1 == 1)
  {
    v5 = 0.0;
    if (v4 > 0.0)
    {
      v5 = 1.0;
      if (v4 <= 1.0)
      {
        v5 = v4;
      }
    }
  }

  return v3 * v5;
}

uint64_t ConfidenceNode.init(dependency:shouldClampToValidConfidence:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *a3 = a2;
  *(a3 + 8) = sub_1ABB43458;
  *(a3 + 16) = result;
  return result;
}

uint64_t ConfidenceNode.apply(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v8 = *(v2 + 1);
  v7 = *(v2 + 2);
  v9 = *(a1 + 16);
  sub_1ABA807B4();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v9;
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;
  *(v10 + 56) = v7;
  *(a2 + 8) = sub_1ABB43A20;
  *(a2 + 16) = v10;
  *a2 = 1;
  sub_1ABB44E4C(v4, v5, v9);
}

double ConfidenceNode.confidence.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v2();
  if (v1 == 1)
  {
    if (result <= 0.0)
    {
      result = 0.0;
    }

    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t ConfidenceLink.node(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  v7 = *(v2 + 3);
  v10 = *a1;
  sub_1ABAD219C(&qword_1EB4D3298, &qword_1ABF3BED0);
  sub_1ABA807B4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ABF34740;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v7;

  sub_1ABB43134(v8, a2);
}

uint64_t ConfidenceNode.init(computing:shouldClampToValidConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *a4 = a3;
  return result;
}

uint64_t ConfidenceNode.init(value:shouldClampToValidConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  return result;
}

uint64_t sub_1ABB44E4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ConfidenceNode.link(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

uint64_t ConfidenceNode.normalize(by:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *v2;
  v9 = *(v2 + 1);
  v8 = *(v2 + 2);
  sub_1ABA807B4();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  *(a2 + 8) = sub_1ABB45040;
  *(a2 + 16) = v10;
  *a2 = 1;
}

void sub_1ABB44F2C(char a1, void (*a2)(void), uint64_t a3, char a4, double (*a5)(void))
{
  a2();
  if (a1)
  {
    (a2)();
    (a2)();
  }

  else
  {
    a2();
    a2();
  }

  if (a4)
  {
    a5();
  }

  else
  {
    a5();
  }
}

uint64_t Sequence<>.link(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1ABF24AD4();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v18[-v12];
  MEMORY[0x1AC5A95D0](a1, a2);
  v19 = a3;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1ABB444E4(sub_1ABB451CC, v18, v6, &type metadata for ConfidenceLink, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);
  (*(v9 + 8))(v13, v6);
  return v16;
}

uint64_t sub_1ABB451A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = a3;
}

uint64_t Sequence<>.normalize()(uint64_t a1, uint64_t a2)
{
  v6[4] = 0;
  sub_1ABF23FB4();
  v6[2] = v6[5];
  return sub_1ABB444E4(sub_1ABB453BC, v6, a1, &type metadata for ConfidenceNode, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v4);
}

double sub_1ABB4529C@<D0>(double *a1@<X0>, unsigned __int8 *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = (*(a2 + 1))();
  v8 = v7;
  if (v5 == 1)
  {
    v8 = 0.0;
    if (v7 > 0.0)
    {
      v8 = 1.0;
      if (v7 <= 1.0)
      {
        v8 = v7;
      }
    }
  }

  result = v4 + v8;
  *a3 = v4 + v8;
  return result;
}

uint64_t sub_1ABB45314@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = (*(a1 + 1))();
  if (v5 == 1)
  {
    v8 = 0.0;
    if (v7 > 0.0)
    {
      v8 = v7;
    }

    v7 = 1.0;
    if (v8 <= 1.0)
    {
      v7 = v8;
    }
  }

  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = a3;
  *(a2 + 8) = sub_1ABB45478;
  *(a2 + 16) = result;
  *a2 = 1;
  return result;
}

uint64_t sub_1ABB453D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB45418(uint64_t result, int a2, int a3)
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

uint64_t sub_1ABB45508(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1ABAA10A0();
  v5(v4);
  sub_1ABA82748();
  v6 = v2();
  sub_1ABAB4C48();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1ABB45668(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1ABAA10A0();
  v5(v4);
  sub_1ABA82748();
  v6 = v2();
  sub_1ABAB4C48();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1ABB456EC(uint64_t a1, uint64_t a2)
{
  sub_1ABB4DFB0(sub_1ABAAA4F4);
  v5 = *(*v2 + 16);
  result = sub_1ABB4E3B4(v5, sub_1ABAAA4F4);
  v7 = *v2;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 16 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *v2 = v7;
  return result;
}

void sub_1ABB4576C(char a1)
{
  sub_1ABB4DFB0(sub_1ABAD8AA4);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  *(v4 + v2 + 32) = a1;
  *v1 = v4;
}

uint64_t sub_1ABB457D4(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD96B8);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  v5 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v5);
  result = (*(v6 + 32))(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v2, a1);
  *v1 = v3;
  return result;
}

__n128 sub_1ABB458D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(BOOL))
{
  sub_1ABB4DFB0(a2);
  v6 = *(*v3 + 16);
  sub_1ABB4E3B4(v6, a3);
  v7 = *v3;
  *(v7 + 16) = v6 + 1;
  v8 = v7 + (v6 << 6);
  v9 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a1 + 32);
  result = *(a1 + 41);
  *(v8 + 73) = result;
  *v3 = v7;
  return result;
}

__n128 sub_1ABB45974(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD95D8);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  v5 = v4 + 40 * v2;
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 32) = *a1;
  *(v5 + 48) = v7;
  *(v5 + 64) = *(a1 + 32);
  *v1 = v4;
  return result;
}

__n128 sub_1ABB459EC(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD9508);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  v5 = v4 + 56 * v2;
  v6 = *(a1 + 16);
  *(v5 + 32) = *a1;
  *(v5 + 48) = v6;
  result = *(a1 + 32);
  *(v5 + 64) = result;
  *(v5 + 80) = *(a1 + 48);
  *v1 = v4;
  return result;
}

void *sub_1ABB45A6C(const void *a1)
{
  sub_1ABB4DFB0(sub_1ABAD9440);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  result = memcpy((v3 + 88 * v2 + 32), a1, 0x58uLL);
  *v1 = v3;
  return result;
}

void *sub_1ABB45AE4(const void *a1)
{
  sub_1ABB4DFB0(sub_1ABAD9378);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  result = memcpy((v3 + 112 * v2 + 32), a1, 0x70uLL);
  *v1 = v3;
  return result;
}

void sub_1ABB45B5C(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v33 = *(a1 + 16);
  v32 = a1 + 32;
  v34 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v2;
LABEL_3:
    if (v3 == v33)
    {
      break;
    }

    if (v3 >= v33)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_35;
    }

    v4 = (v32 + 56 * v3);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v35 = *(v4 + 32);
    v10 = v4[5];
    v9 = v4[6];
    v40 = 0;
    v41 = 0xE000000000000000;
    v36 = v5;
    if (v6)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v42 = v10;

    v39 = v9;

    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A9410](v11, v12);

    MEMORY[0x1AC5A9410](95, 0xE100000000000000);
    v13 = v8;
    if (v7)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    MEMORY[0x1AC5A9410](v14, v15);

    v16 = v40;
    v17 = v41;
    v18 = *a2;
    if (*(*a2 + 16))
    {
      v38 = v2;
      v19 = *(v18 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      v20 = sub_1ABF25294();
      v21 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v18 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(v18 + 48) + 16 * v22);
        if (*v23 != v16 || v23[1] != v17)
        {
          v25 = sub_1ABF25054();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        v3 = v38;
        goto LABEL_3;
      }

      v2 = v38;
    }

    sub_1ABB1840C(&v40, v16, v17);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v34 + 16);
      sub_1ABAD9928();
      v34 = v30;
    }

    v26 = v42;
    v27 = *(v34 + 16);
    if (v27 >= *(v34 + 24) >> 1)
    {
      sub_1ABAD9928();
      v34 = v31;
    }

    *(v34 + 16) = v27 + 1;
    v28 = v34 + 56 * v27;
    *(v28 + 32) = v36;
    *(v28 + 40) = v6;
    *(v28 + 48) = v13;
    *(v28 + 56) = v7;
    *(v28 + 64) = v35;
    *(v28 + 72) = v26;
    *(v28 + 80) = v39;
  }
}

void sub_1ABB45E44(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v18 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v19[0] = v9;
    v19[1] = v10;

    v11 = v5(v19);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = *(v8 + 16);
        sub_1ABA83F84();
        sub_1ABADDBD4();
        v8 = v20;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_1ABADDBD4();
        v8 = v20;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      v4 = a3;
      v5 = a1;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
}

IntelligencePlatform::ContactFinder __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactFinder.init()()
{
  v2 = v1;
  v246 = v0;
  v272 = *MEMORY[0x1E69E9840];
  v3 = sub_1ABF21CF4();
  v258 = sub_1ABA7BB64(v3);
  v259 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v258);
  sub_1ABA7AC18();
  v245 = v7 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v247 = &v227 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v227 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v257 = &v227 - v15;
  if (qword_1ED871EA0 != -1)
  {
LABEL_130:
    swift_once();
  }

  v16 = qword_1ED871EA8;
  v17 = sub_1ABF23BD4();
  v18 = sub_1ABB4EB08(v17, 1852797802, 0xE400000000000000, v16);

  if (!v18)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v22 = 0xD000000000000034;
    *(v22 + 8) = 0x80000001ABF881D0;
    *(v22 + 16) = 4;
    v23 = swift_willThrow();
    goto LABEL_10;
  }

  sub_1ABF21CA4();

  (*(v259 + 32))(v257, v14, v258);
  v248 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v19 = objc_autoreleasePoolPush();
  v20 = sub_1ABF21D34();
  if (v2)
  {
    v251 = v2;
    objc_autoreleasePoolPop(v19);
    goto LABEL_7;
  }

  v27 = v20;
  v28 = v21;
  v29 = sub_1ABF217F4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABB4EB7C();
  sub_1ABF217D4();
  v251 = 0;
  sub_1ABA96210(v27, v28);

  v256 = v267;
  v264 = v268;
  v265 = aBlock;
  v235 = v269;
  v238 = v270;
  objc_autoreleasePoolPop(v19);
  v37 = [objc_opt_self() predicateForMeContact];
  v229 = sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1ABF3BF70;
  v39 = *MEMORY[0x1E695C258];
  v40 = *MEMORY[0x1E695C240];
  *(v38 + 32) = *MEMORY[0x1E695C258];
  *(v38 + 40) = v40;
  v41 = *MEMORY[0x1E695C3A8];
  v42 = *MEMORY[0x1E695C2F0];
  *(v38 + 48) = *MEMORY[0x1E695C3A8];
  *(v38 + 56) = v42;
  v43 = *MEMORY[0x1E695C230];
  v44 = *MEMORY[0x1E695C390];
  *(v38 + 64) = *MEMORY[0x1E695C230];
  *(v38 + 72) = v44;
  v45 = *MEMORY[0x1E695C310];
  *(v38 + 80) = *MEMORY[0x1E695C310];
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  v52 = v45;
  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v233 = v38;
  v53 = sub_1ABF240C4();
  aBlock = 0;
  v234 = v37;
  v54 = [v248 unifiedContactsMatchingPredicate:v37 keysToFetch:v53 error:&aBlock];

  v55 = aBlock;
  if (v54)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    v14 = sub_1ABF240D4();
    v56 = v55;
  }

  else
  {
    v57 = aBlock;
    v58 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v59 = sub_1ABF237F4();
    sub_1ABA7AA24(v59, qword_1ED871B20);
    v54 = sub_1ABF237D4();
    v60 = sub_1ABF24664();
    if (os_log_type_enabled(v54, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1ABA78000, v54, v60, "Error querying me contact", v61, 2u);
      sub_1ABA7BC34();
    }

    v251 = 0;
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1ABAAB7F4(v14))
  {

    sub_1ABA95454();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v93 = sub_1ABF237F4();
    sub_1ABA7AA24(v93, qword_1ED871B20);
    v94 = sub_1ABF237D4();
    v95 = sub_1ABF24664();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1ABA78000, v94, v95, "No me contact found", v96, 2u);
      sub_1ABA7BC34();
    }

    sub_1ABB32C5C();
    v97 = swift_allocError();
    *v98 = 0xD000000000000034;
    *(v98 + 8) = 0x80000001ABF881D0;
    *(v98 + 16) = 4;
    v251 = v97;
    swift_willThrow();

    sub_1ABAA1E8C();
    sub_1ABA97750();

LABEL_7:
    v32 = sub_1ABAA2504();
    v33(v32);
    sub_1ABA8A034();

LABEL_8:
    v35 = 0;
LABEL_9:
    v23 = sub_1ABAC9398(v35);
    goto LABEL_10;
  }

  sub_1ABAAB7C0(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_136;
  }

  for (i = *(v14 + 32); ; i = MEMORY[0x1AC5AA170](0, v14))
  {
    v63 = i;

    v64 = [v63 contactRelations];
    sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
    sub_1ABA7D000();
    v65 = sub_1ABF240D4();

    v66 = static ContactFinder.expand(relationships:)(v65);

    v236 = v63;
    v67 = [v63 contactRelations];
    v68 = sub_1ABF240D4();

    aBlock = v68;

    v230 = v66;
    sub_1ABD7E1A0(v69);
    v70 = aBlock;
    v255 = sub_1ABAAB7F4(aBlock);
    v14 = 0;
    v253 = v70 & 0xC000000000000001;
    v252 = v70 & 0xFFFFFFFFFFFFFF8;
    v254 = v70;
    v228 = (v70 + 32);
    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v71 = v238;
    while (1)
    {
      v72 = v256;
      if (v255 == v14)
      {
        break;
      }

      if (v253)
      {
        v73 = MEMORY[0x1AC5AA170](v14, v254);
      }

      else
      {
        if (v14 >= *(v252 + 16))
        {
          goto LABEL_128;
        }

        v73 = *(v254 + 8 * v14 + 32);
      }

      v74 = v73;
      v75 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v76 = [v73 label];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1ABF23C04();
        v80 = v79;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v2 + 16);
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v2 = v85;
        }

        v82 = *(v2 + 16);
        v81 = *(v2 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1ABA7BBEC(v81);
          sub_1ABAAA4F4();
          v2 = v86;
        }

        *(v2 + 16) = v82 + 1;
        v83 = v2 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v14 = v75;
        goto LABEL_22;
      }

      ++v14;
    }

    v87 = sub_1ABE8AE5C(v2);
    aBlock = v265;
    v267 = v72;
    v268 = v264;
    v269 = v235;
    v270 = v71;
    v88 = v251;
    v89 = sub_1ABB4B8C8(&aBlock);
    v251 = v88;
    if (v88)
    {
      v90 = sub_1ABAA2504();
      v91(v90);
      sub_1ABA8A034();

      sub_1ABAA1B9C();
      sub_1ABA95454();
      sub_1ABAA1E8C();
      sub_1ABA97EFC();

      goto LABEL_8;
    }

    v239 = v89;
    v227 = v87;
    v99 = MEMORY[0x1E69E7CC8];
    if (v255)
    {
      v100 = 0;
      v101 = 0;
      while (1)
      {
        if (v253)
        {
          v102 = MEMORY[0x1AC5AA170](v101, v254);
        }

        else
        {
          if (v101 >= *(v252 + 16))
          {
            __break(1u);
LABEL_138:
            sub_1ABA7BE6C();
LABEL_116:
            v211 = sub_1ABF237F4();
            sub_1ABA7AA24(v211, qword_1ED871B20);
            v212 = v72;
            v213 = sub_1ABF237D4();
            v214 = sub_1ABF24644();

            if (os_log_type_enabled(v213, v214))
            {
              v215 = swift_slowAlloc();
              v216 = swift_slowAlloc();
              *v215 = 138412290;
              v217 = v72;
              v218 = _swift_stdlib_bridgeErrorToNSError();
              *(v215 + 4) = v218;
              *v216 = v218;
              _os_log_impl(&dword_1ABA78000, v213, v214, "ContactFinder couldn't open Photo Library due to %@", v215, 0xCu);
              sub_1ABB24B18(v216);
              sub_1ABA7BC34();
              sub_1ABA7BC34();
            }

            sub_1ABAA1E8C();
            sub_1ABA97EFC();

            sub_1ABA97750();
            sub_1ABA90C7C();

            v219 = sub_1ABA95744();
            (v101)(v219);
            (v101)(v257, v72);
            v251 = 0;
LABEL_124:
            v209 = MEMORY[0x1E69E7CC8];
            v208 = MEMORY[0x1E69E7CC8];
            goto LABEL_125;
          }

          v102 = *&v228[8 * v101];
        }

        v14 = v102;
        v231 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_134;
        }

        v237 = [v102 value];
        v103 = [v14 label];
        v232 = v14;
        if (v103)
        {
          v104 = v103;
          v243 = sub_1ABF23C04();
          v244 = v105;
        }

        else
        {
          v243 = 0;
          v244 = 0;
        }

        v106 = [v237 name];
        v107 = sub_1ABF23C04();
        v109 = v108;

        v110 = v251;
        v111 = sub_1ABB4C700(v107, v109, v248);
        v251 = v110;
        if (v110)
        {

          sub_1ABAA1E8C();
          sub_1ABA97EFC();

          sub_1ABAA1B9C();
          sub_1ABA95454();

          sub_1ABA97750();
          sub_1ABA90C7C();
          v183 = sub_1ABAA2504();
          v184(v183);
          swift_bridgeObjectRelease_n();

          sub_1ABA8A034();

          v35 = v100;
          goto LABEL_9;
        }

        v72 = v111;

        v14 = v239;
        if (v72 >> 62)
        {
          v112 = sub_1ABF24CA4();
        }

        else
        {
          v112 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v244;
        if (v112)
        {
          v113 = 0;
          v250 = v72 & 0xC000000000000001;
          v241 = v72 & 0xFFFFFFFFFFFFFF8;
          v240 = v72 + 32;
          v249 = v112;
          v242 = v72;
          do
          {
            if (v250)
            {
              v114 = v113;
              v115 = MEMORY[0x1AC5AA170](v113, v72);
            }

            else
            {
              if (v113 >= *(v241 + 16))
              {
                __break(1u);
                goto LABEL_132;
              }

              v114 = v113;
              v115 = *(v240 + 8 * v113);
            }

            v263 = v115;
            v116 = __OFADD__(v114, 1);
            v117 = v114 + 1;
            if (v116)
            {
              goto LABEL_129;
            }

            v260 = v117;
            if (v2 && *(v14 + 16))
            {

              v118 = sub_1ABA94FC8(v243, v2);
              v120 = v119;

              if (v120)
              {
                v262 = *(*(*(v14 + 56) + 8 * v118) + 16);
                if (v262)
                {

                  v2 = 0;
                  v122 = (v121 + 40);
                  v261 = v121;
                  while (1)
                  {
                    if (v2 >= *(v121 + 16))
                    {
                      __break(1u);
LABEL_110:
                      __break(1u);
                      goto LABEL_111;
                    }

                    v123 = *(v122 - 1);
                    v124 = *v122;

                    v14 = [v263 identifier];
                    v125 = sub_1ABF23C04();
                    v264 = v126;
                    v265 = v125;

                    sub_1ABAC9398(v100);
                    swift_isUniquelyReferenced_nonNull_native();
                    v127 = sub_1ABAA1720();
                    v128 = sub_1ABA94FC8(v127, v124);
                    sub_1ABAB5450(v128, v129);
                    if (v116)
                    {
                      goto LABEL_110;
                    }

                    v100 = v130;
                    v45 = v131;
                    sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
                    v132 = sub_1ABAB5278();
                    v99 = aBlock;
                    if (v132)
                    {
                      v14 = aBlock;
                      v133 = sub_1ABA94FC8(v123, v124);
                      if ((v45 & 1) != (v134 & 1))
                      {
LABEL_139:
                        v23 = sub_1ABF25104();
                        __break(1u);
                        goto LABEL_140;
                      }

                      v100 = v133;
                    }

                    if (v45)
                    {
                    }

                    else
                    {
                      sub_1ABAA1278(&v99[8 * (v100 >> 6)]);
                      v136 = (v135 + 16 * v100);
                      *v136 = v123;
                      v136[1] = v124;
                      *(*(v99 + 7) + 8 * v100) = MEMORY[0x1E69E7CC0];
                      v137 = *(v99 + 2);
                      v116 = __OFADD__(v137, 1);
                      v138 = v137 + 1;
                      if (v116)
                      {
                        __break(1u);
                        goto LABEL_127;
                      }

                      *(v99 + 2) = v138;
                    }

                    v139 = *(v99 + 7);
                    v140 = *(v139 + 8 * v100);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v139 + 8 * v100) = v140;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v146 = *(v140 + 16);
                      sub_1ABA7BEF0();
                      sub_1ABAAA4F4();
                      v140 = v147;
                      *(v139 + 8 * v100) = v147;
                    }

                    v143 = *(v140 + 16);
                    v142 = *(v140 + 24);
                    if (v143 >= v142 >> 1)
                    {
                      sub_1ABA7BBEC(v142);
                      sub_1ABAAA4F4();
                      v140 = v148;
                      *(v139 + 8 * v100) = v148;
                    }

                    ++v2;
                    *(v140 + 16) = v143 + 1;
                    v144 = v140 + 16 * v143;
                    v145 = v264;
                    *(v144 + 32) = v265;
                    *(v144 + 40) = v145;
                    v122 += 2;
                    sub_1ABAA5F38();
                    v121 = v261;
                    if (v262 == v2)
                    {

                      sub_1ABAA5F38();
                      v14 = v239;
                      break;
                    }
                  }
                }
              }

              v2 = v244;
              v72 = v242;
            }

            v113 = v260;
          }

          while (v260 != v249);
        }

        v101 = v231;
        if (v231 == v255)
        {
          goto LABEL_89;
        }
      }
    }

    v100 = 0;
    v14 = v239;
LABEL_89:
    v149 = sub_1ABAE3058(25965, 0xE200000000000000, v14);
    if (!v149)
    {

      sub_1ABAA1B9C();
      v45 = 0;
      goto LABEL_112;
    }

    v150 = v149;
    v262 = *(v149 + 16);
    if (!v262)
    {
      break;
    }

    v14 = 0;
    v151 = 0;
    v152 = (v149 + 40);
    v261 = v149;
    while (1)
    {
      v153 = *(v150 + 16);
      v265 = v151;
      if (v151 >= v153)
      {
        break;
      }

      v155 = *(v152 - 1);
      v154 = *v152;

      v156 = [v236 identifier];
      v157 = sub_1ABF23C04();
      v263 = v158;
      v264 = v157;

      sub_1ABAC9398(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v159 = sub_1ABAA1720();
      v160 = sub_1ABA94FC8(v159, v154);
      sub_1ABAB5450(v160, v161);
      if (v116)
      {
        goto LABEL_133;
      }

      v45 = v162;
      v164 = v163;
      sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
      v165 = sub_1ABAB5278();
      v99 = aBlock;
      if (v165)
      {
        v14 = aBlock;
        v166 = sub_1ABA94FC8(v155, v154);
        if ((v164 & 1) != (v167 & 1))
        {
          goto LABEL_139;
        }

        v45 = v166;
      }

      if (v164)
      {
      }

      else
      {
        sub_1ABAA1278(&v99[8 * (v45 >> 6)]);
        v169 = (v168 + 16 * v45);
        *v169 = v155;
        v169[1] = v154;
        *(*(v99 + 7) + 8 * v45) = MEMORY[0x1E69E7CC0];
        v170 = *(v99 + 2);
        v116 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v116)
        {
          goto LABEL_135;
        }

        *(v99 + 2) = v171;
      }

      v172 = *(v99 + 7);
      v173 = *(v172 + 8 * v45);
      v174 = swift_isUniquelyReferenced_nonNull_native();
      *(v172 + 8 * v45) = v173;
      if ((v174 & 1) == 0)
      {
        v180 = *(v173 + 16);
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v173 = v181;
        *(v172 + 8 * v45) = v181;
      }

      v176 = *(v173 + 16);
      v175 = *(v173 + 24);
      if (v176 >= v175 >> 1)
      {
        sub_1ABA7BBEC(v175);
        sub_1ABAAA4F4();
        v173 = v182;
        *(v172 + 8 * v45) = v182;
      }

      v177 = v264;
      v151 = v265 + 1;
      *(v173 + 16) = v176 + 1;
      v178 = v173 + 16 * v176;
      v179 = v263;
      *(v178 + 32) = v177;
      *(v178 + 40) = v179;
      v152 += 2;
      v14 = sub_1ABB4F3FC;
      v150 = v261;
      if (v262 == v151)
      {
        sub_1ABAA1B9C();

        v45 = sub_1ABB4F3FC;
        goto LABEL_112;
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    ;
  }

LABEL_111:
  sub_1ABAA1B9C();

  v45 = 0;
LABEL_112:

  sub_1ABA95454();
  v186 = [objc_opt_self() systemPhotoLibraryURL];
  v187 = v247;
  sub_1ABF21CA4();

  sub_1ABAFF390(0, &qword_1EB4D3330, 0x1E69789A8);
  v188 = v245;
  (*(v259 + 16))(v245, v187, v258);
  v101 = sub_1ABB4C92C(v188);
  aBlock = 0;
  v189 = [v101 openAndWaitWithUpgrade:0 error:&aBlock];
  v190 = aBlock;
  if (!v189)
  {
    v210 = aBlock;
    v72 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B18 != -1)
    {
      goto LABEL_138;
    }

    goto LABEL_116;
  }

  v191 = objc_opt_self();
  v192 = v190;
  v193 = [v191 fetchOptionsWithInclusiveDefaultsForPhotoLibrary_];
  if (!v193)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v220 = sub_1ABF237F4();
    sub_1ABA7AA24(v220, qword_1ED871B20);
    v221 = sub_1ABF237D4();
    v222 = sub_1ABF24664();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      *v223 = 0;
      _os_log_impl(&dword_1ABA78000, v221, v222, "Couldn't fetch option for ContactFinder", v223, 2u);
      sub_1ABA7BC34();
    }

    sub_1ABAA1E8C();
    sub_1ABA97EFC();
    sub_1ABA97750();
    sub_1ABA90C7C();
    v224 = sub_1ABA95744();
    (v101)(v224);
    (v101)(v257, v222);
    goto LABEL_124;
  }

  v194 = v193;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1ABF3BF80;
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  *(v195 + 32) = sub_1ABF24794();
  *(v195 + 40) = sub_1ABF24794();
  v196 = sub_1ABA826A8();
  sub_1ABB4EBD0(v196, v197);
  v198 = swift_allocObject();
  v265 = v45;
  v264 = v101;
  v199 = MEMORY[0x1E69E7CC8];
  *(v198 + 16) = MEMORY[0x1E69E7CC8];
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  v201 = [objc_opt_self() fetchPersonsWithOptions_];
  v202 = swift_allocObject();
  *(v202 + 16) = v198;
  *(v202 + 24) = v200;
  v270 = sub_1ABB4EC54;
  v271 = v202;
  aBlock = MEMORY[0x1E69E9820];
  v267 = 1107296256;
  v268 = sub_1ABB4CE58;
  v269 = &unk_1F2074850;
  v203 = v99;
  v204 = _Block_copy(&aBlock);

  [v201 enumerateObjectsUsingBlock_];
  v205 = v204;
  v99 = v203;
  _Block_release(v205);

  sub_1ABAA1E8C();
  sub_1ABA97EFC();

  sub_1ABA97750();
  sub_1ABA90C7C();
  v206 = v258;
  v207 = *(v259 + 8);
  v207(v247, v258);
  v207(v257, v206);
  swift_beginAccess();
  v208 = *(v198 + 16);
  v45 = v265;
  swift_beginAccess();
  v209 = *(v200 + 16);

LABEL_125:
  sub_1ABAC9398(v100);
  sub_1ABAC9398(v45);
  sub_1ABA8A034();
  v225 = v246;
  *v246 = v226;
  v225[1] = v99;
  v225[2] = v209;
  v225[3] = v208;
LABEL_10:
  v36 = *MEMORY[0x1E69E9840];
LABEL_140:
  result.contactsIDToPhotosIDMap._rawValue = v26;
  result.aliasToPhotosIDsMap._rawValue = v25;
  result.aliasToContactIDsMap._rawValue = v24;
  result.contactStore.super.isa = v23;
  return result;
}

void ContactFinder.search(_:)(unint64_t a1, uint64_t a2)
{
  v5 = v3;
  v6 = *(v2 + 8);
  v163 = *(v2 + 16);
  v183 = *v2;
  v184 = *(v2 + 24);
  v202 = MEMORY[0x1E69E7CD0];
  v196 = a1;
  v197 = a2;
  v7 = sub_1ABAE3058(a1, a2, v6);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_23;
  }

  v4 = *(v7 + 16);
  if (!v4)
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v192 = v8;
    goto LABEL_24;
  }

  v179 = v7;
  v9 = (v7 + 40);
  v181 = xmmword_1ABF34740;
  v192 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;

    v12 = sub_1ABB4CEDC(v10, v11, v183);
    if (v5)
    {

      v12 = 0;
      v13 = 0;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v186 = v14;
    if (*(v184 + 16) && (v16 = sub_1ABA94FC8(v10, v11), (v17 & 1) != 0))
    {
      v18 = (*(v184 + 56) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      swift_bridgeObjectRetain_n();
      sub_1ABB1840C(&v198, v20, v19);
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    inited = swift_initStackObject();
    inited[2].n128_u64[1] = sub_1ABAB59E4(inited, v181, v22, v23, v24, v25, v26, v27, v28, v163, v164, v166, v168, v170, *(&v170 + 1), v172, v174, v177, v179, v181.n128_i64[0], v181.n128_i64[1], v183, v184, v186, v191, v192, 0, v196, v197);
    v198 = v15;

    sub_1ABD7DA50(inited);
    v29 = v198;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v192 + 16);
      sub_1ABA7BEF0();
      sub_1ABAD9928();
      v192 = v34;
    }

    v31 = *(v192 + 16);
    v30 = *(v192 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1ABA7BBEC(v30);
      sub_1ABAD9928();
      v192 = v35;
    }

    *(v192 + 16) = v31 + 1;
    v32 = v192 + 56 * v31;
    *(v32 + 32) = v10;
    *(v32 + 40) = v11;
    *(v32 + 48) = v20;
    *(v32 + 56) = v19;
    *(v32 + 64) = 1;
    *(v32 + 72) = v29;
    *(v32 + 80) = v187;
    v9 += 2;
    --v4;
    v5 = v193;
  }

  while (v4);

LABEL_24:
  v36 = sub_1ABB4C700(v196, v197, v183);
  v167 = v5;
  if (v5)
  {

    return;
  }

  v37 = v36;
  v175 = sub_1ABAAB7F4(v36);
  if (v175)
  {
    v38 = 0;
    v172 = v37 & 0xC000000000000001;
    v164 = v37 + 32;
    v170 = xmmword_1ABF3BF90;
    v168 = v37;
    while (1)
    {
      sub_1ABAAB7C0(v38, v172 == 0, v37);
      v39 = v172 ? MEMORY[0x1AC5AA170](v38, v37) : *(v164 + 8 * v38);
      v40 = v39;
      v41 = __OFADD__(v38, 1);
      v42 = v38 + 1;
      if (v41)
      {
        break;
      }

      v183 = v42;
      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_1ABF3BF90;
      v44 = [v40 givenName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v43 + 32) = v4;
      *(v43 + 40) = v37;
      v45 = [v40 middleName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v43 + 48) = v4;
      *(v43 + 56) = v37;
      v46 = [v40 familyName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v43 + 64) = v4;
      *(v43 + 72) = v37;
      v47 = [v40 givenName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v198 = v4;
      v199 = v37;

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v48 = v198;
      v49 = v199;
      v50 = [v40 familyName];
      v51 = sub_1ABF23C04();
      v53 = v52;

      v198 = v48;
      v199 = v49;

      MEMORY[0x1AC5A9410](v51, v53);

      v54 = v199;
      *(v43 + 80) = v198;
      *(v43 + 88) = v54;
      v55 = [v40 previousFamilyName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v43 + 96) = v49;
      *(v43 + 104) = v51;
      v188 = v40;
      v56 = [v40 nickname];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v57 = 0;
      *(v43 + 112) = v49;
      *(v43 + 120) = v51;
      v58 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v59 = (v43 + 40 + 16 * v57);
      while (v57 != 6)
      {
        if (v57 > 5)
        {
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        ++v57;
        v60 = *(v59 - 1);
        v61 = *v59;
        v59 += 2;
        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v62)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v198 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = *(v58 + 16);
            sub_1ABA83F84();
            sub_1ABADDBD4();
            v58 = v198;
          }

          v66 = *(v58 + 16);
          v65 = *(v58 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1ABA7BBEC(v65);
            sub_1ABADDBD4();
            v58 = v198;
          }

          *(v58 + 16) = v66 + 1;
          v67 = v58 + 16 * v66;
          *(v67 + 32) = v60;
          *(v67 + 40) = v61;
          goto LABEL_33;
        }
      }

      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABE8AE5C(v58);
      sub_1ABA90630();
      v69 = sub_1ABB45668(v68);
      v70 = [v188 identifier];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v71 = sub_1ABA826A8();
      v73 = sub_1ABA94FF4(v71, v72, v184);
      v75 = v74;

      if (v75)
      {

        sub_1ABB1840C(&v198, v73, v75);
      }

      v177 = v75;
      v76 = [v188 emailAddresses];
      sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
      sub_1ABA89740();
      v77 = sub_1ABF240D4();

      v78 = sub_1ABAAB7F4(v77);
      v179 = v73;
      v181.n128_u64[0] = v69;
      if (v78)
      {
        v79 = v78;
        v198 = MEMORY[0x1E69E7CC0];
        sub_1ABADDBD4();
        if (v79 < 0)
        {
          goto LABEL_115;
        }

        v80 = 0;
        v81 = v198;
        v194 = v77 & 0xC000000000000001;
        v82 = v77;
        do
        {
          if (v194)
          {
            v83 = sub_1ABA826A8();
            v84 = MEMORY[0x1AC5AA170](v83);
          }

          else
          {
            v84 = *(v77 + 8 * v80 + 32);
          }

          v85 = v84;
          v86 = [v84 value];
          v87 = sub_1ABF23C64();
          v89 = v88;

          v198 = v81;
          v91 = *(v81 + 16);
          v90 = *(v81 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1ABA7BBEC(v90);
            sub_1ABADDBD4();
            v81 = v198;
          }

          ++v80;
          *(v81 + 16) = v91 + 1;
          v92 = v81 + 16 * v91;
          *(v92 + 32) = v87;
          *(v92 + 40) = v89;
          v77 = v82;
        }

        while (v79 != v80);
      }

      else
      {

        v81 = MEMORY[0x1E69E7CC0];
      }

      v93 = [v188 identifier];
      v94 = sub_1ABF23C04();
      v4 = v95;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = *(v192 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD9928();
        v192 = v100;
      }

      v37 = v168;
      v97 = *(v192 + 16);
      v96 = *(v192 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1ABA7BBEC(v96);
        sub_1ABAD9928();
        v192 = v101;
      }

      *(v192 + 16) = v97 + 1;
      v98 = v192 + 56 * v97;
      *(v98 + 32) = v94;
      *(v98 + 40) = v4;
      *(v98 + 48) = v179;
      *(v98 + 56) = v177;
      *(v98 + 64) = 0;
      *(v98 + 72) = v181.n128_u64[0];
      *(v98 + 80) = v81;
      v38 = v183;
      if (v183 == v175)
      {
        goto LABEL_62;
      }
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_62:

  v102 = sub_1ABAE3058(v196, v197, v163);
  if (!v102)
  {
LABEL_83:
    v198 = MEMORY[0x1E69E7CD0];
    sub_1ABB45B5C(v192, &v198);
    v131 = 0;
    v178 = *(v132 + 16);
    v180 = v132;
    v176 = v132 + 32;
    v165 = MEMORY[0x1E69E7CC0];
    while (v131 != v178)
    {
      if (v131 >= *(v180 + 16))
      {
        goto LABEL_112;
      }

      v133 = (v176 + 56 * v131);
      v173 = *v133;
      v134 = v133[3];
      v171 = v133[2];
      v169 = *(v133 + 32);
      v136 = v133[5];
      v135 = v133[6];
      v185 = v133[1];
      v190 = v131 + 1;
      v137 = *(v136 + 16);

      swift_bridgeObjectRetain_n();
      v182 = v135;

      v138 = 0;
      v139 = v136 + 40;
      v140 = MEMORY[0x1E69E7CC0];
LABEL_87:
      v141 = (v139 + 16 * v138);
      while (v137 != v138)
      {
        if (v138 >= *(v136 + 16))
        {
          __break(1u);
          goto LABEL_111;
        }

        v142 = *(v141 - 1);
        v143 = *v141;
        sub_1ABA826A8();
        if (sub_1ABF23C84() == v196 && v144 == v197)
        {

LABEL_97:
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v200 = v140;
          if ((v147 & 1) == 0)
          {
            v148 = *(v140 + 16);
            sub_1ABA83F84();
            sub_1ABADDBD4();
            v140 = v200;
          }

          v150 = *(v140 + 16);
          v149 = *(v140 + 24);
          if (v150 >= v149 >> 1)
          {
            sub_1ABA7BBEC(v149);
            sub_1ABADDBD4();
            v140 = v200;
          }

          ++v138;
          *(v140 + 16) = v150 + 1;
          v151 = v140 + 16 * v150;
          *(v151 + 32) = v142;
          *(v151 + 40) = v143;
          v139 = v136 + 40;
          goto LABEL_87;
        }

        v146 = sub_1ABF25054();

        if (v146)
        {
          goto LABEL_97;
        }

        v141 += 2;
        ++v138;
      }

      v152 = *(v140 + 16);

      if (v152)
      {
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v165;
        v201 = v165;
        if ((v153 & 1) == 0)
        {
          v155 = *(v165 + 16);
          v156 = sub_1ABA83F84();
          sub_1ABADDF4C(v156, v157, v158);
          v154 = v201;
        }

        v160 = *(v154 + 16);
        v159 = *(v154 + 24);
        if (v160 >= v159 >> 1)
        {
          v162 = sub_1ABA7BBEC(v159);
          sub_1ABADDF4C(v162, v160 + 1, 1);
          v154 = v201;
        }

        *(v154 + 16) = v160 + 1;
        v165 = v154;
        v161 = v154 + 56 * v160;
        *(v161 + 32) = v173;
        *(v161 + 40) = v185;
        *(v161 + 48) = v171;
        *(v161 + 56) = v134;
        *(v161 + 64) = v169;
        *(v161 + 72) = v136;
        *(v161 + 80) = v182;
        v131 = v190;
      }

      else
      {

        v131 = v190;
      }
    }

    return;
  }

  v103 = v102;
  v104 = *(v102 + 16);
  if (!v104)
  {
LABEL_82:

    goto LABEL_83;
  }

  v105 = 0;
  v195 = v102 + 32;
  v189 = xmmword_1ABF34740;
  while (v105 < *(v103 + 16))
  {
    v106 = (v195 + 16 * v105);
    v108 = *v106;
    v107 = v106[1];
    v109 = v202;
    if (*(v202 + 16))
    {
      v110 = *(v202 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      v111 = sub_1ABF25294();
      v112 = ~(-1 << *(v109 + 32));
      while (1)
      {
        v113 = v111 & v112;
        if (((*(v109 + 56 + (((v111 & v112) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v111 & v112)) & 1) == 0)
        {
          break;
        }

        v114 = (*(v109 + 48) + 16 * v113);
        if (*v114 != v108 || v114[1] != v107)
        {
          v116 = sub_1ABF25054();
          v111 = v113 + 1;
          if ((v116 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_81;
      }
    }

    else
    {
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v117 = swift_allocObject();
    v117[2].n128_u64[1] = sub_1ABAB59E4(v117, v189, v118, v119, v120, v121, v122, v123, v124, v163, v164, v167, v168, v170, *(&v170 + 1), v172, v175, v177, v179, v181.n128_i64[0], v181.n128_i64[1], v183, v184, v189.n128_i64[0], v189.n128_i64[1], v192, v195, v196, v197);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = *(v192 + 16);
      sub_1ABA7BEF0();
      sub_1ABAD9928();
      v192 = v129;
    }

    v126 = *(v192 + 16);
    v125 = *(v192 + 24);
    if (v126 >= v125 >> 1)
    {
      sub_1ABA7BBEC(v125);
      sub_1ABAD9928();
      v192 = v130;
    }

    *(v192 + 16) = v126 + 1;
    v127 = v192 + 56 * v126;
    *(v127 + 32) = 0;
    *(v127 + 40) = 0;
    *(v127 + 48) = v108;
    *(v127 + 56) = v107;
    *(v127 + 64) = 0;
    *(v127 + 72) = v117;
    *(v127 + 80) = MEMORY[0x1E69E7CC0];
    sub_1ABB1840C(&v198, v108, v107);
LABEL_81:

    if (++v105 == v104)
    {
      goto LABEL_82;
    }
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
}

void static ContactFinderResult.== infix(_:_:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v14 = *(v2 + 40);
  v13 = *(v2 + 48);
  if (v3)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v15 = *v0 == *v2 && v3 == v9;
    if (!v15 && (sub_1ABF25054() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (v11)
    {
      if (v4 != v10 || v5 != v11)
      {
        if ((sub_1ABF25054() & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      if (v6 == v12)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    sub_1ABA7BC1C();
    return;
  }

  if (v11)
  {
    goto LABEL_26;
  }

LABEL_19:
  if ((v6 ^ v12))
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((sub_1ABB48494(v8, v14) & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABA7D000();
  sub_1ABA7BC1C();

  sub_1ABB48494(v17, v18);
}

uint64_t sub_1ABB48494(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB48520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGQ.Value();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        v17 = sub_1ABA7ECFC();
        sub_1ABB4EFA0(v17, v18, v19);
        sub_1ABB4EFA0(v15, v7, type metadata accessor for KGQ.Value);
        v20 = sub_1ABD77CCC(v11, v7);
        sub_1ABB4EFFC(v7, type metadata accessor for KGQ.Value);
        sub_1ABB4EFFC(v11, type metadata accessor for KGQ.Value);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void sub_1ABB486C4()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for KGQ.Value();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1ABA7AC18();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    v13 = 0;
    v45 = v1 + 32;
    v46 = v3 + 32;
    v43 = 0x80000001ABF85AA0;
    v44 = v12;
    while (v13 != v12)
    {
      v14 = v13 + 1;
      v15 = (v46 + 24 * v13);
      v16 = *(v15 + 1);
      v17 = v15[16];
      v18 = *v15;
      v19 = (v45 + 24 * v13);
      v20 = *v19;
      v21 = *(v19 + 1);
      v49 = v19[16];
      v22 = 0xE400000000000000;
      v23 = 1701667182;
      switch(v18)
      {
        case 1:
          v23 = 0x6D614E7473726966;
          goto LABEL_21;
        case 2:
          v22 = 0xE800000000000000;
          v23 = 0x656D614E7473616CLL;
          break;
        case 3:
          v22 = 0xE700000000000000;
          v23 = 0x73736572646461;
          break;
        case 4:
          v22 = 0xE800000000000000;
          v23 = 0x7961646874726962;
          break;
        case 5:
          v23 = 0x6D754E656E6F6870;
          v24 = 7497058;
          goto LABEL_24;
        case 6:
          v23 = 0x6464416C69616D65;
          v25 = 1936942450;
          goto LABEL_28;
        case 7:
          v23 = sub_1ABA7CFCC(0x616C6572u);
          v25 = 1885956211;
LABEL_28:
          v22 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v22 = 0xE800000000000000;
          v23 = 0x6565646E65747461;
          break;
        case 9:
          v23 = 0x49746361746E6F63;
          v24 = 7300718;
          goto LABEL_24;
        case 10:
          v22 = 0xE800000000000000;
          v26 = 1633906540;
          goto LABEL_34;
        case 11:
          v23 = 1836020326;
          break;
        case 12:
          v22 = 0xE200000000000000;
          v23 = 28532;
          break;
        case 13:
          v23 = 0xD000000000000010;
          v22 = v43;
          break;
        case 14:
          v22 = 0xE800000000000000;
          v23 = 0x7473657265746E69;
          break;
        case 15:
          v22 = 0xE600000000000000;
          v23 = 0x6E6F73726570;
          break;
        case 16:
          v23 = 0x6765746143707061;
          v24 = 7959151;
LABEL_24:
          v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v23 = 0x7461447472617473;
LABEL_21:
          v22 = 0xE900000000000065;
          break;
        case 18:
          v22 = 0xE700000000000000;
          v23 = 0x65746144646E65;
          break;
        case 19:
          v22 = 0xE800000000000000;
          v26 = 1634891108;
LABEL_34:
          v23 = sub_1ABA7CFCC(v26);
          break;
        case 20:
          v23 = 1701869940;
          break;
        case 21:
          v22 = 0xE500000000000000;
          v23 = 0x74696D696CLL;
          break;
        case 22:
          v22 = 0xE700000000000000;
          v23 = 0x63734174726F73;
          break;
        case 23:
          v22 = 0xE800000000000000;
          v23 = 0x6373654474726F73;
          break;
        case 24:
          v22 = 0xE600000000000000;
          v23 = 0x656372756F73;
          break;
        case 25:
          v22 = 0xE500000000000000;
          v23 = 0x65756C6176;
          break;
        default:
          break;
      }

      v27 = 0xE400000000000000;
      v28 = 1701667182;
      switch(v20)
      {
        case 1:
          v28 = 0x6D614E7473726966;
          goto LABEL_51;
        case 2:
          v27 = 0xE800000000000000;
          v28 = 0x656D614E7473616CLL;
          break;
        case 3:
          v27 = 0xE700000000000000;
          v28 = 0x73736572646461;
          break;
        case 4:
          v27 = 0xE800000000000000;
          v28 = 0x7961646874726962;
          break;
        case 5:
          v28 = 0x6D754E656E6F6870;
          v29 = 7497058;
          goto LABEL_54;
        case 6:
          v28 = 0x6464416C69616D65;
          v30 = 1936942450;
          goto LABEL_58;
        case 7:
          sub_1ABAB57D4();
          v30 = 1885956211;
LABEL_58:
          v27 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v27 = 0xE800000000000000;
          v28 = 0x6565646E65747461;
          break;
        case 9:
          v28 = 0x49746361746E6F63;
          v29 = 7300718;
          goto LABEL_54;
        case 10:
          v27 = 0xE800000000000000;
          goto LABEL_64;
        case 11:
          v28 = 1836020326;
          break;
        case 12:
          v27 = 0xE200000000000000;
          v28 = 28532;
          break;
        case 13:
          v28 = 0xD000000000000010;
          v27 = v43;
          break;
        case 14:
          v27 = 0xE800000000000000;
          v28 = 0x7473657265746E69;
          break;
        case 15:
          v27 = 0xE600000000000000;
          v28 = 0x6E6F73726570;
          break;
        case 16:
          v28 = 0x6765746143707061;
          v29 = 7959151;
LABEL_54:
          v27 = v29 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v28 = 0x7461447472617473;
LABEL_51:
          v27 = 0xE900000000000065;
          break;
        case 18:
          v27 = 0xE700000000000000;
          v28 = 0x65746144646E65;
          break;
        case 19:
          v27 = 0xE800000000000000;
LABEL_64:
          sub_1ABAB57D4();
          break;
        case 20:
          v28 = 1701869940;
          break;
        case 21:
          v27 = 0xE500000000000000;
          v28 = 0x74696D696CLL;
          break;
        case 22:
          v27 = 0xE700000000000000;
          v28 = 0x63734174726F73;
          break;
        case 23:
          v27 = 0xE800000000000000;
          v28 = 0x6373654474726F73;
          break;
        case 24:
          v27 = 0xE600000000000000;
          v28 = 0x656372756F73;
          break;
        case 25:
          v27 = 0xE500000000000000;
          v28 = 0x65756C6176;
          break;
        default:
          break;
      }

      if (v23 == v28 && v22 == v27)
      {
      }

      else
      {
        v32 = sub_1ABF25054();

        if ((v32 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      v33 = *(v16 + 16);
      if (v33 != *(v21 + 16))
      {
LABEL_88:

        goto LABEL_89;
      }

      v47 = v17;
      v48 = v14;
      if (v33 && v16 != v21)
      {
        v34 = 0;
        v35 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v36 = v16 + v35;
        v37 = v21 + v35;
        while (v34 < *(v16 + 16))
        {
          v38 = *(v50 + 72) * v34;
          sub_1ABB4EFA0(v36 + v38, v11, type metadata accessor for KGQ.Value);
          if (v34 >= *(v21 + 16))
          {
            goto LABEL_91;
          }

          sub_1ABB4EFA0(v37 + v38, v8, type metadata accessor for KGQ.Value);
          v39 = sub_1ABA7ECFC();
          v41 = sub_1ABD77CCC(v39, v40);
          sub_1ABB4EFFC(v8, type metadata accessor for KGQ.Value);
          sub_1ABB4EFFC(v11, type metadata accessor for KGQ.Value);
          if ((v41 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v33 == ++v34)
          {
            goto LABEL_81;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
        break;
      }

LABEL_81:

      v12 = v44;
      v13 = v48;
      if (v47 != v49 || v48 == v44)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_89:
    sub_1ABA7BC1C();
  }
}

void sub_1ABB48E4C()
{
  sub_1ABA7E2A8();
  v3 = sub_1ABAA2FC8(v1, v2);
  if (v12 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = 0xE600000000000000;
      v9 = 0x6E6F73726570;
      switch(*v5)
      {
        case 1:
          v9 = sub_1ABA7CFCC(0x616C6572u);
          v8 = 0xEC00000070696873;
          break;
        case 2:
          v9 = 0x49746361746E6F63;
          v8 = 0xEB000000006F666ELL;
          break;
        case 3:
          v8 = 0xE500000000000000;
          v9 = 0x746E657665;
          break;
        case 4:
          v9 = 0x69746E6565726373;
          v8 = 0xEA0000000000656DLL;
          break;
        case 5:
          v8 = 0xE800000000000000;
          v9 = sub_1ABA7CFCC(0x61636F6Cu);
          break;
        default:
          break;
      }

      v10 = 0xE600000000000000;
      v11 = 0x6E6F73726570;
      switch(v7)
      {
        case 1:
          sub_1ABAB57D4();
          v10 = 0xEC00000070696873;
          break;
        case 2:
          v11 = 0x49746361746E6F63;
          v10 = 0xEB000000006F666ELL;
          break;
        case 3:
          v10 = 0xE500000000000000;
          v11 = 0x746E657665;
          break;
        case 4:
          v11 = 0x69746E6565726373;
          v10 = 0xEA0000000000656DLL;
          break;
        case 5:
          v10 = 0xE800000000000000;
          sub_1ABAB57D4();
          break;
        default:
          break;
      }

      v12 = v9 == v11 && v8 == v10;
      if (v12)
      {
      }

      else
      {
        v13 = sub_1ABF25054();

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB4904C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB490A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        if (v5 != v8 || v6 != v7)
        {
          sub_1ABA7D000();
          if ((sub_1ABF25054() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 5)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49204(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = sub_1ABAA2FC8(v2, v3);
  if (v6)
  {
    if (!v1 || v4 == v5)
    {
      return 1;
    }

    v7 = (v4 + 32);
    for (i = (v5 + 32); ; i += 1160)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(v13, v7, sizeof(v13));
      memcpy(v15, i, sizeof(v15));
      memcpy(__src, i, sizeof(__src));
      sub_1ABB4F254(__dst, v11);
      sub_1ABB4F254(v15, v11);
      v9 = static RerankedEntity.== infix(_:_:)(v13);
      memcpy(v16, __src, sizeof(v16));
      sub_1ABB4F2B0(v16);
      memcpy(v17, v13, sizeof(v17));
      sub_1ABB4F2B0(v17);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v7 += 1160;
      if (!--v1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49340(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 56);
  v4 = (result + 56);
  while (v2)
  {
    v20 = v2;
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v3 - 1);
    v8 = *v3;
    if (*(v4 - 3) != *(v3 - 3) || *(v4 - 2) != *(v3 - 2))
    {
      sub_1ABA7ECFC();
      if ((sub_1ABF25054() & 1) == 0)
      {
        return 0;
      }
    }

    v10 = sub_1ABF23EC4();
    v11 = MEMORY[0x1AC5A9330](v10);
    v13 = v12;

    sub_1ABA826A8();
    v14 = sub_1ABF23EC4();
    v15 = MEMORY[0x1AC5A9330](v14);
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
    }

    else
    {
      v19 = sub_1ABF25054();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    v3 += 4;
    v4 += 4;
    v2 = v20 - 1;
    if (v20 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1ABB494DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7E2A8();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CodableLocation();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&a9 - v32);
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = v25 + v35;
    v37 = v23 + v35;
    v38 = *(v31 + 72);
    while (1)
    {
      sub_1ABB4EFA0(v36, v33, type metadata accessor for CodableLocation);
      sub_1ABB4EFA0(v37, v29, type metadata accessor for CodableLocation);
      if (*v33 != *v29 || v33[1] != v29[1] || v33[2] != v29[2] || v33[3] != v29[3] || v33[4] != v29[4] || v33[5] != v29[5] || v33[6] != v29[6])
      {
        break;
      }

      v39 = *(v26 + 44);
      v40 = sub_1ABF21E54();
      sub_1ABB4EFFC(v29, type metadata accessor for CodableLocation);
      sub_1ABB4EFFC(v33, type metadata accessor for CodableLocation);
      if (v40)
      {
        v37 += v38;
        v36 += v38;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1ABB4EFFC(v29, type metadata accessor for CodableLocation);
    sub_1ABB4EFFC(v33, type metadata accessor for CodableLocation);
  }

LABEL_17:
  sub_1ABA7BC1C();
}

void sub_1ABB49734()
{
  sub_1ABA7E2A8();
  v3 = sub_1ABAA2FC8(v1, v2);
  if (v12 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = 0xEE007372657A696CLL;
      v9 = 0x616D726F4E6C6C61;
      switch(*v5)
      {
        case 1:
          v9 = 0x7361637265776F6CLL;
          v8 = 0xE900000000000065;
          break;
        case 2:
          v9 = 0x6F72706572506F6ELL;
          v8 = 0xEF676E6973736563;
          break;
        case 3:
          v9 = 0xD000000000000016;
          v8 = 0x80000001ABF81BE0;
          break;
        case 4:
          v9 = 0x696C617469706163;
          v8 = 0xEA0000000000657ALL;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v9 = 0x74786554646170;
          break;
        case 6:
          v9 = 0xD000000000000012;
          v8 = 0x80000001ABF81C10;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v9 = 0x6E756870726F6DLL;
          break;
        default:
          break;
      }

      v10 = 0x616D726F4E6C6C61;
      v11 = 0xEE007372657A696CLL;
      switch(*v6)
      {
        case 1:
          v10 = 0x7361637265776F6CLL;
          v11 = 0xE900000000000065;
          break;
        case 2:
          v10 = 0x6F72706572506F6ELL;
          v11 = 0xEF676E6973736563;
          break;
        case 3:
          v10 = 0xD000000000000016;
          v11 = 0x80000001ABF81BE0;
          break;
        case 4:
          v10 = 0x696C617469706163;
          v11 = 0xEA0000000000657ALL;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v10 = 0x74786554646170;
          break;
        case 6:
          v10 = 0xD000000000000012;
          v11 = 0x80000001ABF81C10;
          break;
        case 7:
          v11 = 0xE700000000000000;
          v10 = 0x6E756870726F6DLL;
          break;
        default:
          break;
      }

      v12 = v9 == v10 && v8 == v11;
      if (v12)
      {
      }

      else
      {
        v13 = sub_1ABF25054();

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB499DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB49A30(uint64_t result, uint64_t a2)
{
  v25 = result;
  v37 = *(result + 16);
  if (v37 != *(a2 + 16))
  {
    return 0;
  }

  if (!v37 || result == a2)
  {
    return 1;
  }

  v36 = 0;
  while (v37)
  {
    v3 = *(v25 + v36 + 48);
    v2 = *(v25 + v36 + 56);
    v31 = *(v25 + v36 + 64);
    v30 = *(v25 + v36 + 72);
    v35 = *(v25 + v36 + 80);
    v29 = *(v25 + v36 + 88);
    v28 = *(v25 + v36 + 96);
    v5 = *(a2 + v36 + 48);
    v4 = *(a2 + v36 + 56);
    v7 = *(a2 + v36 + 64);
    v6 = *(a2 + v36 + 72);
    v34 = *(a2 + v36 + 80);
    v32 = *(a2 + v36 + 88);
    v8 = *(a2 + v36 + 40);
    v9 = *(v25 + v36 + 32) == *(a2 + v36 + 32) && *(v25 + v36 + 40) == *(a2 + v36 + 40);
    v33 = *(a2 + v36 + 96);
    if (!v9)
    {
      v10 = *(v25 + v36 + 40);
      v11 = *(v25 + v36 + 56);
      v12 = *(a2 + v36 + 56);
      v13 = sub_1ABF25054();
      v4 = v12;
      v2 = v11;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = v3 == v5 && v2 == v4;
    if (!v14 && (sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }

    v43 = v31;
    v44 = v30;
    v45 = v35;
    v46 = v29;
    v47 = v28;
    v38 = v7;
    v39 = v6;
    v40 = v34;
    v41 = v32;
    v42 = v33;

    sub_1ABAFF488(v31, v30, v35, v29, v28);

    sub_1ABAFF488(v7, v6, v34, v32, v33);
    sub_1ABAFF488(v31, v30, v35, v29, v28);
    v15 = sub_1ABA9694C();
    sub_1ABAFF488(v15, v16, v17, v18, v19);
    v27 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v43, &v38);
    sub_1ABAFF544(v38, v39, v40, v41, v42);
    sub_1ABAFF544(v43, v44, v45, v46, v47);

    v20 = sub_1ABA9694C();
    sub_1ABAFF544(v20, v21, v22, v23, v24);

    result = sub_1ABAFF544(v31, v30, v35, v29, v28);
    if ((v27 & 1) == 0)
    {
      return 0;
    }

    v9 = v37 == 1;
    v36 += 72;
    --v37;
    if (v9)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB49D08(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void ContactFinderResult.hash(into:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  if (v0[1])
  {
    v8 = *v0;
    sub_1ABF25254();
    sub_1ABF23D34();
    if (v4)
    {
LABEL_3:
      sub_1ABF25254();
      sub_1ABAA48C8();
      sub_1ABF23D34();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ABF25254();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1ABF25254();
LABEL_6:
  sub_1ABF25254();
  sub_1ABB4ED98(v2, v7);
  sub_1ABA7BC1C();

  sub_1ABB4ED98(v9, v10);
}

uint64_t ContactFinderResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  sub_1ABF25234();
  sub_1ABF25254();
  if (v2)
  {
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  if (v4)
  {
    sub_1ABAA48C8();
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  sub_1ABB4ED98(v9, v7);
  sub_1ABB4ED98(v9, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB49F0C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1ABF25234();
  ContactFinderResult.hash(into:)();
  return sub_1ABF25294();
}

void *sub_1ABB49F68()
{
  sub_1ABAD219C(&qword_1EB4D33C8, &unk_1ABF3C170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFA0;
  v1 = *MEMORY[0x1E695C958];
  *(v0 + 32) = sub_1ABF23C04();
  *(v0 + 40) = v2;
  *(v0 + 48) = &unk_1F208F390;
  v3 = *MEMORY[0x1E695CB20];
  *(v0 + 56) = sub_1ABF23C04();
  *(v0 + 64) = v4;
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34060;
  *(v5 + 32) = sub_1ABF23C04();
  *(v5 + 40) = v6;
  strcpy((v5 + 48), "_$!<Family>!$_");
  *(v5 + 63) = -18;
  *(v0 + 72) = v5;
  v7 = *MEMORY[0x1E695C6F0];
  *(v0 + 80) = sub_1ABF23C04();
  *(v0 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34060;
  *(v9 + 32) = sub_1ABF23C04();
  *(v9 + 40) = v10;
  strcpy((v9 + 48), "_$!<Family>!$_");
  *(v9 + 63) = -18;
  *(v0 + 96) = v9;
  v11 = *MEMORY[0x1E695C970];
  *(v0 + 104) = sub_1ABF23C04();
  *(v0 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABF34060;
  *(v13 + 32) = sub_1ABF23C04();
  *(v13 + 40) = v14;
  strcpy((v13 + 48), "_$!<Family>!$_");
  *(v13 + 63) = -18;
  *(v0 + 120) = v13;
  v15 = *MEMORY[0x1E695CB30];
  *(v0 + 128) = sub_1ABF23C04();
  *(v0 + 136) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1ABF34060;
  *(v17 + 32) = sub_1ABF23C04();
  *(v17 + 40) = v18;
  strcpy((v17 + 48), "_$!<Family>!$_");
  *(v17 + 63) = -18;
  *(v0 + 144) = v17;
  v19 = *MEMORY[0x1E695CB48];
  *(v0 + 152) = sub_1ABF23C04();
  *(v0 + 160) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1ABF34060;
  *(v21 + 32) = sub_1ABF23C04();
  *(v21 + 40) = v22;
  strcpy((v21 + 48), "_$!<Family>!$_");
  *(v21 + 63) = -18;
  *(v0 + 168) = v21;
  v23 = *MEMORY[0x1E695C700];
  *(v0 + 176) = sub_1ABF23C04();
  *(v0 + 184) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1ABF34060;
  *(v25 + 32) = sub_1ABF23C04();
  *(v25 + 40) = v26;
  strcpy((v25 + 48), "_$!<Family>!$_");
  *(v25 + 63) = -18;
  *(v0 + 192) = v25;
  v27 = *MEMORY[0x1E695C718];
  *(v0 + 200) = sub_1ABF23C04();
  *(v0 + 208) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1ABF34060;
  *(v29 + 32) = sub_1ABF23C04();
  *(v29 + 40) = v30;
  strcpy((v29 + 48), "_$!<Family>!$_");
  *(v29 + 63) = -18;
  *(v0 + 216) = v29;
  v31 = *MEMORY[0x1E695C540];
  *(v0 + 224) = sub_1ABF23C04();
  *(v0 + 232) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ABF34060;
  *(v33 + 32) = sub_1ABF23C04();
  *(v33 + 40) = v34;
  strcpy((v33 + 48), "_$!<Family>!$_");
  *(v33 + 63) = -18;
  *(v0 + 240) = v33;
  v35 = *MEMORY[0x1E695CAA8];
  *(v0 + 248) = sub_1ABF23C04();
  *(v0 + 256) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1ABF34060;
  *(v37 + 32) = sub_1ABF23C04();
  *(v37 + 40) = v38;
  strcpy((v37 + 48), "_$!<Family>!$_");
  *(v37 + 63) = -18;
  *(v0 + 264) = v37;
  v39 = *MEMORY[0x1E695CB40];
  *(v0 + 272) = sub_1ABF23C04();
  *(v0 + 280) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1ABF34060;
  *(v41 + 32) = sub_1ABF23C04();
  *(v41 + 40) = v42;
  strcpy((v41 + 48), "_$!<Family>!$_");
  *(v41 + 63) = -18;
  *(v0 + 288) = v41;
  v43 = *MEMORY[0x1E695C678];
  *(v0 + 296) = sub_1ABF23C04();
  *(v0 + 304) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1ABF34060;
  *(v45 + 32) = sub_1ABF23C04();
  *(v45 + 40) = v46;
  strcpy((v45 + 48), "_$!<Family>!$_");
  *(v45 + 63) = -18;
  *(v0 + 312) = v45;
  v47 = *MEMORY[0x1E695C710];
  *(v0 + 320) = sub_1ABF23C04();
  *(v0 + 328) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1ABF34060;
  *(v49 + 32) = sub_1ABF23C04();
  *(v49 + 40) = v50;
  strcpy((v49 + 48), "_$!<Family>!$_");
  *(v49 + 63) = -18;
  *(v0 + 336) = v49;
  v51 = *MEMORY[0x1E695C858];
  *(v0 + 344) = sub_1ABF23C04();
  *(v0 + 352) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1ABF34740;
  v54 = *MEMORY[0x1E695C760];
  *(v53 + 32) = sub_1ABF23C04();
  *(v53 + 40) = v55;
  *(v0 + 360) = v53;
  v56 = *MEMORY[0x1E695C750];
  *(v0 + 368) = sub_1ABF23C04();
  *(v0 + 376) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1ABF34740;
  *(v58 + 32) = sub_1ABF23C04();
  *(v58 + 40) = v59;
  *(v0 + 384) = v58;
  v60 = *MEMORY[0x1E695C9E0];
  *(v0 + 392) = sub_1ABF23C04();
  *(v0 + 400) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1ABF3BFB0;
  strcpy((v62 + 32), "_$!<Family>!$_");
  *(v62 + 47) = -18;
  v63 = *MEMORY[0x1E695C950];
  *(v62 + 48) = sub_1ABF23C04();
  *(v62 + 56) = v64;
  v65 = *MEMORY[0x1E695CAA0];
  *(v62 + 64) = sub_1ABF23C04();
  *(v62 + 72) = v66;
  v67 = *MEMORY[0x1E695C848];
  *(v62 + 80) = sub_1ABF23C04();
  *(v62 + 88) = v68;
  *(v0 + 408) = v62;
  *(v0 + 416) = sub_1ABF23C04();
  *(v0 + 424) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1ABF3BFC0;
  *(v70 + 32) = sub_1ABF23C04();
  *(v70 + 40) = v71;
  *(v70 + 48) = sub_1ABF23C04();
  *(v70 + 56) = v72;
  strcpy((v70 + 64), "_$!<Family>!$_");
  *(v70 + 79) = -18;
  *(v0 + 432) = v70;
  *(v0 + 440) = sub_1ABF23C04();
  *(v0 + 448) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1ABF3BFC0;
  *(v74 + 32) = sub_1ABF23C04();
  *(v74 + 40) = v75;
  *(v74 + 48) = sub_1ABF23C04();
  *(v74 + 56) = v76;
  strcpy((v74 + 64), "_$!<Family>!$_");
  *(v74 + 79) = -18;
  *(v0 + 456) = v74;
  v77 = *MEMORY[0x1E695C860];
  *(v0 + 464) = sub_1ABF23C04();
  *(v0 + 472) = v78;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1ABF34740;
  *(v79 + 32) = sub_1ABF23C04();
  *(v79 + 40) = v80;
  *(v0 + 480) = v79;
  v81 = *MEMORY[0x1E695C758];
  *(v0 + 488) = sub_1ABF23C04();
  *(v0 + 496) = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1ABF34740;
  *(v83 + 32) = sub_1ABF23C04();
  *(v83 + 40) = v84;
  *(v0 + 504) = v83;
  v85 = *MEMORY[0x1E695C770];
  *(v0 + 512) = sub_1ABF23C04();
  *(v0 + 520) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1ABF34740;
  *(v87 + 32) = sub_1ABF23C04();
  *(v87 + 40) = v88;
  *(v0 + 528) = v87;
  v89 = *MEMORY[0x1E695C768];
  *(v0 + 536) = sub_1ABF23C04();
  *(v0 + 544) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1ABF34740;
  *(v91 + 32) = sub_1ABF23C04();
  *(v91 + 40) = v92;
  *(v0 + 552) = v91;
  v93 = *MEMORY[0x1E695C538];
  *(v0 + 560) = sub_1ABF23C04();
  *(v0 + 568) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1ABF34740;
  *(v95 + 32) = sub_1ABF23C04();
  *(v95 + 40) = v96;
  *(v0 + 576) = v95;
  v97 = *MEMORY[0x1E695C8F8];
  *(v0 + 584) = sub_1ABF23C04();
  *(v0 + 592) = v98;
  *(v0 + 600) = &unk_1F208F3C0;
  v99 = *MEMORY[0x1E695C870];
  *(v0 + 608) = sub_1ABF23C04();
  *(v0 + 616) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1ABF34060;
  *(v101 + 32) = sub_1ABF23C04();
  *(v101 + 40) = v102;
  strcpy((v101 + 48), "_$!<Family>!$_");
  *(v101 + 63) = -18;
  *(v0 + 624) = v101;
  v103 = *MEMORY[0x1E695C720];
  *(v0 + 632) = sub_1ABF23C04();
  *(v0 + 640) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1ABF34060;
  *(v105 + 32) = sub_1ABF23C04();
  *(v105 + 40) = v106;
  strcpy((v105 + 48), "_$!<Family>!$_");
  *(v105 + 63) = -18;
  *(v0 + 648) = v105;
  v107 = *MEMORY[0x1E695C590];
  *(v0 + 656) = sub_1ABF23C04();
  *(v0 + 664) = v108;
  *(v0 + 672) = &unk_1F208F3F0;
  v109 = *MEMORY[0x1E695C658];
  *(v0 + 680) = sub_1ABF23C04();
  *(v0 + 688) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1ABF34060;
  *(v111 + 32) = sub_1ABF23C04();
  *(v111 + 40) = v112;
  strcpy((v111 + 48), "_$!<Family>!$_");
  *(v111 + 63) = -18;
  *(v0 + 696) = v111;
  v113 = *MEMORY[0x1E695C9C0];
  *(v0 + 704) = sub_1ABF23C04();
  *(v0 + 712) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1ABF34060;
  *(v115 + 32) = sub_1ABF23C04();
  *(v115 + 40) = v116;
  strcpy((v115 + 48), "_$!<Family>!$_");
  *(v115 + 63) = -18;
  *(v0 + 720) = v115;
  v117 = *MEMORY[0x1E695C7F8];
  *(v0 + 728) = sub_1ABF23C04();
  *(v0 + 736) = v118;
  *(v0 + 744) = &unk_1F208F420;
  v119 = *MEMORY[0x1E695C7B0];
  *(v0 + 752) = sub_1ABF23C04();
  *(v0 + 760) = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1ABF34060;
  *(v121 + 32) = sub_1ABF23C04();
  *(v121 + 40) = v122;
  strcpy((v121 + 48), "_$!<Family>!$_");
  *(v121 + 63) = -18;
  *(v0 + 768) = v121;
  v123 = *MEMORY[0x1E695C798];
  *(v0 + 776) = sub_1ABF23C04();
  *(v0 + 784) = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1ABF34060;
  *(v125 + 32) = sub_1ABF23C04();
  *(v125 + 40) = v126;
  strcpy((v125 + 48), "_$!<Family>!$_");
  *(v125 + 63) = -18;
  *(v0 + 792) = v125;
  v127 = *MEMORY[0x1E695C838];
  *(v0 + 800) = sub_1ABF23C04();
  *(v0 + 808) = v128;
  *(v0 + 816) = &unk_1F208F450;
  v129 = *MEMORY[0x1E695C830];
  *(v0 + 824) = sub_1ABF23C04();
  *(v0 + 832) = v130;
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1ABF34060;
  *(v131 + 32) = sub_1ABF23C04();
  *(v131 + 40) = v132;
  strcpy((v131 + 48), "_$!<Family>!$_");
  *(v131 + 63) = -18;
  *(v0 + 840) = v131;
  v133 = *MEMORY[0x1E695C828];
  *(v0 + 848) = sub_1ABF23C04();
  *(v0 + 856) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1ABF34060;
  *(v135 + 32) = sub_1ABF23C04();
  *(v135 + 40) = v136;
  strcpy((v135 + 48), "_$!<Family>!$_");
  *(v135 + 63) = -18;
  *(v0 + 864) = v135;
  v137 = *MEMORY[0x1E695C780];
  *(v0 + 872) = sub_1ABF23C04();
  *(v0 + 880) = v138;
  *(v0 + 888) = &unk_1F208F480;
  v139 = *MEMORY[0x1E695C790];
  *(v0 + 896) = sub_1ABF23C04();
  *(v0 + 904) = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1ABF34060;
  *(v141 + 32) = sub_1ABF23C04();
  *(v141 + 40) = v142;
  strcpy((v141 + 48), "_$!<Family>!$_");
  *(v141 + 63) = -18;
  *(v0 + 912) = v141;
  v143 = *MEMORY[0x1E695C800];
  *(v0 + 920) = sub_1ABF23C04();
  *(v0 + 928) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1ABF34060;
  *(v145 + 32) = sub_1ABF23C04();
  *(v145 + 40) = v146;
  strcpy((v145 + 48), "_$!<Family>!$_");
  *(v145 + 63) = -18;
  *(v0 + 936) = v145;
  v147 = *MEMORY[0x1E695C810];
  *(v0 + 944) = sub_1ABF23C04();
  *(v0 + 952) = v148;
  *(v0 + 960) = &unk_1F208F4B0;
  v149 = *MEMORY[0x1E695C820];
  *(v0 + 968) = sub_1ABF23C04();
  *(v0 + 976) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1ABF34060;
  *(v151 + 32) = sub_1ABF23C04();
  *(v151 + 40) = v152;
  strcpy((v151 + 48), "_$!<Family>!$_");
  *(v151 + 63) = -18;
  *(v0 + 984) = v151;
  v153 = *MEMORY[0x1E695C840];
  *(v0 + 992) = sub_1ABF23C04();
  *(v0 + 1000) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1ABF34060;
  *(v155 + 32) = sub_1ABF23C04();
  *(v155 + 40) = v156;
  strcpy((v155 + 48), "_$!<Family>!$_");
  *(v155 + 63) = -18;
  *(v0 + 1008) = v155;
  v157 = *MEMORY[0x1E695C900];
  *(v0 + 1016) = sub_1ABF23C04();
  *(v0 + 1024) = v158;
  *(v0 + 1032) = &unk_1F208F4E0;
  v159 = *MEMORY[0x1E695C878];
  *(v0 + 1040) = sub_1ABF23C04();
  *(v0 + 1048) = v160;
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1ABF34060;
  *(v161 + 32) = sub_1ABF23C04();
  *(v161 + 40) = v162;
  strcpy((v161 + 48), "_$!<Family>!$_");
  *(v161 + 63) = -18;
  *(v0 + 1056) = v161;
  v163 = *MEMORY[0x1E695C728];
  *(v0 + 1064) = sub_1ABF23C04();
  *(v0 + 1072) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1ABF34060;
  *(v165 + 32) = sub_1ABF23C04();
  *(v165 + 40) = v166;
  strcpy((v165 + 48), "_$!<Family>!$_");
  *(v165 + 63) = -18;
  *(v0 + 1080) = v165;
  v167 = *MEMORY[0x1E695C5B8];
  *(v0 + 1088) = sub_1ABF23C04();
  *(v0 + 1096) = v168;
  *(v0 + 1104) = &unk_1F208F510;
  v169 = *MEMORY[0x1E695C5B0];
  *(v0 + 1112) = sub_1ABF23C04();
  *(v0 + 1120) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1ABF34060;
  *(v171 + 32) = sub_1ABF23C04();
  *(v171 + 40) = v172;
  strcpy((v171 + 48), "_$!<Family>!$_");
  *(v171 + 63) = -18;
  *(v0 + 1128) = v171;
  v173 = *MEMORY[0x1E695C5A8];
  *(v0 + 1136) = sub_1ABF23C04();
  *(v0 + 1144) = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1ABF34060;
  *(v175 + 32) = sub_1ABF23C04();
  *(v175 + 40) = v176;
  strcpy((v175 + 48), "_$!<Family>!$_");
  *(v175 + 63) = -18;
  *(v0 + 1152) = v175;
  v177 = *MEMORY[0x1E695C960];
  *(v0 + 1160) = sub_1ABF23C04();
  *(v0 + 1168) = v178;
  *(v0 + 1176) = &unk_1F208F540;
  v179 = *MEMORY[0x1E695CB28];
  *(v0 + 1184) = sub_1ABF23C04();
  *(v0 + 1192) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1ABF34060;
  *(v181 + 32) = sub_1ABF23C04();
  *(v181 + 40) = v182;
  strcpy((v181 + 48), "_$!<Family>!$_");
  *(v181 + 63) = -18;
  *(v0 + 1200) = v181;
  v183 = *MEMORY[0x1E695C6F8];
  *(v0 + 1208) = sub_1ABF23C04();
  *(v0 + 1216) = v184;
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1ABF34060;
  *(v185 + 32) = sub_1ABF23C04();
  *(v185 + 40) = v186;
  strcpy((v185 + 48), "_$!<Family>!$_");
  *(v185 + 63) = -18;
  *(v0 + 1224) = v185;
  v187 = *MEMORY[0x1E695C978];
  *(v0 + 1232) = sub_1ABF23C04();
  *(v0 + 1240) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1ABF34060;
  *(v189 + 32) = sub_1ABF23C04();
  *(v189 + 40) = v190;
  strcpy((v189 + 48), "_$!<Family>!$_");
  *(v189 + 63) = -18;
  *(v0 + 1248) = v189;
  v191 = *MEMORY[0x1E695CB38];
  *(v0 + 1256) = sub_1ABF23C04();
  *(v0 + 1264) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1ABF34060;
  *(v193 + 32) = sub_1ABF23C04();
  *(v193 + 40) = v194;
  strcpy((v193 + 48), "_$!<Family>!$_");
  *(v193 + 63) = -18;
  *(v0 + 1272) = v193;
  v195 = *MEMORY[0x1E695C708];
  *(v0 + 1280) = sub_1ABF23C04();
  *(v0 + 1288) = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_1ABF34060;
  *(v197 + 32) = sub_1ABF23C04();
  *(v197 + 40) = v198;
  strcpy((v197 + 48), "_$!<Family>!$_");
  *(v197 + 63) = -18;
  *(v0 + 1296) = v197;
  v199 = *MEMORY[0x1E695C548];
  *(v0 + 1304) = sub_1ABF23C04();
  *(v0 + 1312) = v200;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1ABF34060;
  *(v201 + 32) = sub_1ABF23C04();
  *(v201 + 40) = v202;
  strcpy((v201 + 48), "_$!<Family>!$_");
  *(v201 + 63) = -18;
  *(v0 + 1320) = v201;
  v203 = *MEMORY[0x1E695CAB0];
  *(v0 + 1328) = sub_1ABF23C04();
  *(v0 + 1336) = v204;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_1ABF34060;
  *(v205 + 32) = sub_1ABF23C04();
  *(v205 + 40) = v206;
  strcpy((v205 + 48), "_$!<Family>!$_");
  *(v205 + 63) = -18;
  *(v0 + 1344) = v205;
  v207 = *MEMORY[0x1E695C680];
  *(v0 + 1352) = sub_1ABF23C04();
  *(v0 + 1360) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1ABF34060;
  *(v209 + 32) = sub_1ABF23C04();
  *(v209 + 40) = v210;
  strcpy((v209 + 48), "_$!<Family>!$_");
  *(v209 + 63) = -18;
  *(v0 + 1368) = v209;
  v211 = *MEMORY[0x1E695C5C0];
  *(v0 + 1376) = sub_1ABF23C04();
  *(v0 + 1384) = v212;
  *(v0 + 1392) = &unk_1F208F570;
  v213 = *MEMORY[0x1E695C5C8];
  *(v0 + 1400) = sub_1ABF23C04();
  *(v0 + 1408) = v214;
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_1ABF34060;
  *(v215 + 32) = sub_1ABF23C04();
  *(v215 + 40) = v216;
  strcpy((v215 + 48), "_$!<Family>!$_");
  *(v215 + 63) = -18;
  *(v0 + 1416) = v215;
  v217 = *MEMORY[0x1E695C5A0];
  *(v0 + 1424) = sub_1ABF23C04();
  *(v0 + 1432) = v218;
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_1ABF34060;
  *(v219 + 32) = sub_1ABF23C04();
  *(v219 + 40) = v220;
  strcpy((v219 + 48), "_$!<Family>!$_");
  *(v219 + 63) = -18;
  *(v0 + 1440) = v219;
  v221 = *MEMORY[0x1E695C598];
  *(v0 + 1448) = sub_1ABF23C04();
  *(v0 + 1456) = v222;
  *(v0 + 1464) = &unk_1F208F5A0;
  v223 = *MEMORY[0x1E695C660];
  *(v0 + 1472) = sub_1ABF23C04();
  *(v0 + 1480) = v224;
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_1ABF34060;
  *(v225 + 32) = sub_1ABF23C04();
  *(v225 + 40) = v226;
  strcpy((v225 + 48), "_$!<Family>!$_");
  *(v225 + 63) = -18;
  *(v0 + 1488) = v225;
  v227 = *MEMORY[0x1E695C9C8];
  *(v0 + 1496) = sub_1ABF23C04();
  *(v0 + 1504) = v228;
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1ABF34060;
  *(v229 + 32) = sub_1ABF23C04();
  *(v229 + 40) = v230;
  strcpy((v229 + 48), "_$!<Family>!$_");
  *(v229 + 63) = -18;
  *(v0 + 1512) = v229;
  v231 = *MEMORY[0x1E695C5D8];
  *(v0 + 1520) = sub_1ABF23C04();
  *(v0 + 1528) = v232;
  *(v0 + 1536) = &unk_1F208F5D0;
  v233 = *MEMORY[0x1E695CAB8];
  *(v0 + 1544) = sub_1ABF23C04();
  *(v0 + 1552) = v234;
  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_1ABF34060;
  *(v235 + 32) = sub_1ABF23C04();
  *(v235 + 40) = v236;
  strcpy((v235 + 48), "_$!<Family>!$_");
  *(v235 + 63) = -18;
  *(v0 + 1560) = v235;
  v237 = *MEMORY[0x1E695C688];
  *(v0 + 1568) = sub_1ABF23C04();
  *(v0 + 1576) = v238;
  v239 = swift_allocObject();
  *(v239 + 16) = xmmword_1ABF34060;
  *(v239 + 32) = sub_1ABF23C04();
  *(v239 + 40) = v240;
  strcpy((v239 + 48), "_$!<Family>!$_");
  *(v239 + 63) = -18;
  *(v0 + 1584) = v239;
  v241 = *MEMORY[0x1E695C850];
  *(v0 + 1592) = sub_1ABF23C04();
  *(v0 + 1600) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_1ABF34060;
  *(v243 + 32) = sub_1ABF23C04();
  *(v243 + 40) = v244;
  strcpy((v243 + 48), "_$!<Family>!$_");
  *(v243 + 63) = -18;
  *(v0 + 1608) = v243;
  v245 = *MEMORY[0x1E695C748];
  *(v0 + 1616) = sub_1ABF23C04();
  *(v0 + 1624) = v246;
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_1ABF34060;
  *(v247 + 32) = sub_1ABF23C04();
  *(v247 + 40) = v248;
  strcpy((v247 + 48), "_$!<Family>!$_");
  *(v247 + 63) = -18;
  *(v0 + 1632) = v247;
  v249 = *MEMORY[0x1E695CA10];
  *(v0 + 1640) = sub_1ABF23C04();
  *(v0 + 1648) = v250;
  *(v0 + 1656) = &unk_1F208F600;
  v251 = *MEMORY[0x1E695CA08];
  *(v0 + 1664) = sub_1ABF23C04();
  *(v0 + 1672) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_1ABF34060;
  *(v253 + 32) = sub_1ABF23C04();
  *(v253 + 40) = v254;
  strcpy((v253 + 48), "_$!<Family>!$_");
  *(v253 + 63) = -18;
  *(v0 + 1680) = v253;
  v255 = *MEMORY[0x1E695CA00];
  *(v0 + 1688) = sub_1ABF23C04();
  *(v0 + 1696) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_1ABF34060;
  *(v257 + 32) = sub_1ABF23C04();
  *(v257 + 40) = v258;
  strcpy((v257 + 48), "_$!<Family>!$_");
  *(v257 + 63) = -18;
  *(v0 + 1704) = v257;
  v259 = *MEMORY[0x1E695C9F0];
  *(v0 + 1712) = sub_1ABF23C04();
  *(v0 + 1720) = v260;
  *(v0 + 1728) = &unk_1F208F630;
  v261 = *MEMORY[0x1E695C9F8];
  *(v0 + 1736) = sub_1ABF23C04();
  *(v0 + 1744) = v262;
  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_1ABF34060;
  *(v263 + 32) = sub_1ABF23C04();
  *(v263 + 40) = v264;
  strcpy((v263 + 48), "_$!<Family>!$_");
  *(v263 + 63) = -18;
  *(v0 + 1752) = v263;
  v265 = *MEMORY[0x1E695CA20];
  *(v0 + 1760) = sub_1ABF23C04();
  *(v0 + 1768) = v266;
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_1ABF34060;
  *(v267 + 32) = sub_1ABF23C04();
  *(v267 + 40) = v268;
  strcpy((v267 + 48), "_$!<Family>!$_");
  *(v267 + 63) = -18;
  *(v0 + 1776) = v267;
  v269 = *MEMORY[0x1E695C4C0];
  *(v0 + 1784) = sub_1ABF23C04();
  *(v0 + 1792) = v270;
  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_1ABF34740;
  v272 = *MEMORY[0x1E695C5D0];
  *(v271 + 32) = sub_1ABF23C04();
  *(v271 + 40) = v273;
  *(v0 + 1800) = v271;
  v274 = *MEMORY[0x1E695C868];
  *(v0 + 1808) = sub_1ABF23C04();
  *(v0 + 1816) = v275;
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_1ABF34740;
  *(v276 + 32) = sub_1ABF23C04();
  *(v276 + 40) = v277;
  *(v0 + 1824) = v276;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  result = sub_1ABF239C4();
  off_1EB4D32A0 = result;
  return result;
}

uint64_t static ContactFinder.relationExpansionMap.getter()
{
  if (qword_1EB4D0260 != -1)
  {
    sub_1ABA9A2E4();
    swift_once();
  }
}

unint64_t static ContactFinder.expand(relationships:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_65;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v55 = v1;
    v50 = v1 + 32;
    v51 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1E695C000uLL;
    v49 = v1 & 0xC000000000000001;
    v47 = v2;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1AC5AA170](v4, v55);
      }

      else
      {
        if (v4 >= *(v51 + 16))
        {
          goto LABEL_58;
        }

        v7 = *(v50 + 8 * v4);
      }

      v8 = v7;
      v9 = __OFADD__(v4++, 1);
      if (v9)
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
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v2 = sub_1ABF24CA4();
        goto LABEL_3;
      }

      if (qword_1EB4D0260 != -1)
      {
        sub_1ABA9A2E4();
        swift_once();
      }

      v10 = off_1EB4D32A0;
      v11 = [v8 label];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1ABF23C04();
        v1 = v14;
      }

      else
      {
        v13 = 0;
        v1 = 0xE000000000000000;
      }

      if (!v10[2])
      {

        goto LABEL_52;
      }

      v15 = sub_1ABA94FC8(v13, v1);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_52;
      }

      v56 = v4;
      v18 = *(v10[7] + 8 * v15);
      v19 = *(v18 + 16);
      v54 = v8;
      if (v19)
      {
        v57[0] = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v20 = (v18 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;
          swift_bridgeObjectRetain_n();
          v23 = [v8 value];
          v24 = objc_allocWithZone(*(v6 + 3808));
          sub_1ABB4DA60(v21, v22, v23);

          sub_1ABF24B94();
          v25 = *(v57[0] + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v20 += 2;
          --v19;
        }

        while (v19);

        v26 = v57[0];
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      v1 = v26 >> 62;
      v4 = v56;
      if (v26 >> 62)
      {
        v27 = sub_1ABF24CA4();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v3 >> 62;
      if (v3 >> 62)
      {
        v29 = sub_1ABF24CA4();
      }

      else
      {
        v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v29 + v27;
      if (__OFADD__(v29, v27))
      {
        goto LABEL_59;
      }

      v53 = v27;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v28)
      {
        goto LABEL_35;
      }

      v31 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v30 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_34;
      }

LABEL_37:
      v33 = *(v31 + 16);
      v34 = (*(v31 + 24) >> 1) - v33;
      v35 = v31 + 8 * v33;
      v52 = v31;
      if (v1)
      {
        v37 = sub_1ABF24CA4();
        if (v37)
        {
          v1 = v37;
          v38 = sub_1ABF24CA4();
          if (v34 < v38)
          {
            goto LABEL_62;
          }

          if (v1 < 1)
          {
            goto LABEL_64;
          }

          v48 = v38;
          v39 = v35 + 32;
          sub_1ABA8F090();
          sub_1ABB4F3B4(&qword_1EB4D3358, &qword_1EB4D3350, &qword_1ABF3C018);
          for (i = 0; i != v1; ++i)
          {
            sub_1ABAD219C(&qword_1EB4D3350, &qword_1ABF3C018);
            v41 = sub_1ABB4E8DC(v57, i, v26);
            v43 = sub_1ABA885B0(v41, v42);
            (v3)(v57, 0);
            *(v39 + 8 * i) = v43;
          }

          v2 = v47;
          v36 = v48;
          v4 = v56;
          v6 = 0x1E695C000;
          goto LABEL_47;
        }
      }

      else
      {
        v1 = v26 & 0xFFFFFFFFFFFFFF8;
        v36 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          if (v34 < v36)
          {
            goto LABEL_63;
          }

          sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
          swift_arrayInitWithCopy();
LABEL_47:

          v8 = v54;
          v5 = v49;
          if (v36 < v53)
          {
            goto LABEL_60;
          }

          if (v36 > 0)
          {
            v44 = *(v52 + 16);
            v9 = __OFADD__(v44, v36);
            v45 = v44 + v36;
            if (v9)
            {
              goto LABEL_61;
            }

            *(v52 + 16) = v45;
          }

          goto LABEL_52;
        }
      }

      v8 = v54;
      v5 = v49;
      if (v53 > 0)
      {
        goto LABEL_60;
      }

LABEL_52:

      if (v4 == v2)
      {
        return v3;
      }
    }

    if (v28)
    {
LABEL_35:
      sub_1ABF24CA4();
    }

    else
    {
      v31 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v32 = *(v31 + 16);
    }

    v3 = sub_1ABF24B24();
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_37;
  }

  return v3;
}

uint64_t sub_1ABB4B8C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  v130 = v1;
  if (v2)
  {
    v120 = *(a1 + 24);

    v3 = 0;
    v4 = v2 - 1;
    v123 = MEMORY[0x1E69E7CC8];
    v5 = 32;
    v128 = v2 - 1;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      memcpy(__dst, (v1 + v5), 0x58uLL);
      v6 = __dst[8];
      if (__dst[8])
      {
        v7 = __dst[6];
        if (__dst[6])
        {
          break;
        }
      }

      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v16 = sub_1ABF237F4();
      sub_1ABA7AA24(v16, qword_1ED871B20);
      v17 = sub_1ABF237D4();
      v18 = sub_1ABF24654();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1ABA78000, v17, v18, "No relationship predicate for this triple. Skipping", v19, 2u);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);
      }

LABEL_46:
      if (v4 == v3)
      {

        v46 = v123;
        goto LABEL_50;
      }

      v2 = *(v1 + 16);
      v5 += 88;
      ++v3;
    }

    v8 = __dst[7];
    v9 = __dst[5];
    sub_1ABA9A118(__dst, &v131);

    v10 = objc_autoreleasePoolPush();
    v131 = v9;
    v132 = v7;
    sub_1ABAE28EC();
    v11 = sub_1ABF24884();

    v12 = v11[2];
    if (v12 > 1)
    {
      v136 = v11[4];
      v126 = v3;
      v20 = v10;
      v21 = v8;
      v22 = v5;
      v23 = v11[5];
      v131 = v11;
      v132 = v11 + 4;
      v133 = 1;
      v134 = (2 * v12) | 1;

      sub_1ABAD219C(&qword_1EB4D33E0, &unk_1ABF3C180);
      v13 = v23;
      v5 = v22;
      v8 = v21;
      v10 = v20;
      v3 = v126;
      sub_1ABB4F3B4(&qword_1EB4D33E8, &qword_1EB4D33E0, &unk_1ABF3C180);
      v14 = sub_1ABF23B54();
      v15 = v24;
    }

    else
    {

      v136 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!v13)
    {
      sub_1ABA9A174(__dst);

      if (qword_1ED871B18 == -1)
      {
LABEL_114:
        v110 = sub_1ABF237F4();
        sub_1ABA7AA24(v110, qword_1ED871B20);
        v111 = sub_1ABF237D4();
        v112 = sub_1ABF24664();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_1ABA78000, v111, v112, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v113, 2u);
          MEMORY[0x1AC5AB8B0](v113, -1, -1);
        }

        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        v106 = sub_1ABF239C4();

        return v106;
      }

LABEL_128:
      swift_once();
      goto LABEL_114;
    }

    v25 = v14 == 0x6361746E6F434E43 && v15 == 0xE900000000000074;
    v1 = v130;
    if (!v25 && (sub_1ABF25054() & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v8 != 859001680 || v6 != 0xE400000000000000)
    {
      if ((sub_1ABF25054() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v8 == 959992656 && v6 == 0xE400000000000000)
      {
        goto LABEL_33;
      }
    }

    if (sub_1ABF25054())
    {
LABEL_33:

      goto LABEL_39;
    }

LABEL_34:
    v29 = __dst[1];
    v28 = __dst[2];

    sub_1ABB130E0();
    v31 = v30;

    if (v31)
    {

      swift_isUniquelyReferenced_nonNull_native();
      v131 = v123;
      v32 = sub_1ABA94FC8(v136, v13);
      if (__OFADD__(v123[2], (v33 & 1) == 0))
      {
        goto LABEL_124;
      }

      v34 = v32;
      v35 = v33;
      sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
      if (sub_1ABF24C64())
      {
        v36 = sub_1ABA94FC8(v136, v13);
        if ((v35 & 1) != (v37 & 1))
        {
LABEL_129:
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v34 = v36;
      }

      v38 = v131;
      v123 = v131;
      if (v35)
      {
        v39 = (v131[7] + 16 * v34);
        v40 = v39[1];
        *v39 = v29;
        v39[1] = v28;
      }

      else
      {
        v131[(v34 >> 6) + 8] |= 1 << v34;
        v41 = (v38[6] + 16 * v34);
        *v41 = v136;
        v41[1] = v13;
        v42 = (v38[7] + 16 * v34);
        *v42 = v29;
        v42[1] = v28;
        v43 = v38[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_125;
        }

        v38[2] = v45;
      }

      sub_1ABA9A174(__dst);
      v1 = v130;
      goto LABEL_45;
    }

LABEL_39:

    sub_1ABA9A174(__dst);
LABEL_45:
    v4 = v128;
    goto LABEL_46;
  }

  v46 = MEMORY[0x1E69E7CC8];
LABEL_50:
  v47 = v46;
  swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = v47;
  sub_1ABAFB0A4();
  v121 = __dst[0];
  v48 = sub_1ABB4D584();
  v49 = v48;
  v50 = *(v1 + 16);
  if (!v50)
  {

    v107 = 0;
    v106 = MEMORY[0x1E69E7CC8];
    goto LABEL_110;
  }

  v129 = v1 + 32;
  v136 = v48 + 56;

  v118 = 0;
  v51 = 0;
  v119 = MEMORY[0x1E69E7CC8];
  v52 = v50;
  v127 = v49;
  v122 = v50;
  while (1)
  {
    if (v51 >= v52)
    {
      goto LABEL_123;
    }

    memcpy(__dst, (v129 + 88 * v51), 0x58uLL);
    v53 = __dst[8];
    if (!__dst[8] || (v54 = __dst[6]) == 0)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v63 = sub_1ABF237F4();
      sub_1ABA7AA24(v63, qword_1ED871B20);
      v64 = sub_1ABF237D4();
      v65 = sub_1ABF24654();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1ABA78000, v64, v65, "No relationship predicate for this triple. Skipping", v66, 2u);
        MEMORY[0x1AC5AB8B0](v66, -1, -1);
      }

      goto LABEL_88;
    }

    v55 = __dst[7];
    v56 = __dst[5];
    sub_1ABA9A118(__dst, &v131);

    v57 = objc_autoreleasePoolPush();
    v131 = v56;
    v132 = v54;
    sub_1ABAE28EC();
    v58 = sub_1ABF24884();

    v59 = v58[2];
    if (v59 > 1)
    {
      v124 = v58[4];
      v60 = v58[5];
      v131 = v58;
      v132 = v58 + 4;
      v133 = 1;
      v134 = (2 * v59) | 1;

      sub_1ABAD219C(&qword_1EB4D33E0, &unk_1ABF3C180);
      sub_1ABB4F3B4(&qword_1EB4D33E8, &qword_1EB4D33E0, &unk_1ABF3C180);
      v61 = sub_1ABF23B54();
      v62 = v67;
    }

    else
    {

      v124 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    objc_autoreleasePoolPop(v57);
    if (!v60)
    {
      break;
    }

    if (*(v127 + 16))
    {
      v68 = *(v127 + 40);
      sub_1ABF25234();
      sub_1ABF23D34();
      v69 = sub_1ABF25294();
      v70 = ~(-1 << *(v127 + 32));
      do
      {
        v71 = v69 & v70;
        if (((*(v136 + (((v69 & v70) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v69 & v70)) & 1) == 0)
        {
          goto LABEL_86;
        }

        v72 = (*(v127 + 48) + 16 * v71);
        if (*v72 == v61 && v62 == v72[1])
        {
          break;
        }

        v74 = sub_1ABF25054();
        v69 = v71 + 1;
      }

      while ((v74 & 1) == 0);
      v75 = v55 == 859001680 && v53 == 0xE400000000000000;
      if (v75 || ((v76 = sub_1ABF25054(), v55 == 959992656) ? (v77 = v53 == 0xE400000000000000) : (v77 = 0), !v77 ? (v78 = 0) : (v78 = 1), (v76 & 1) != 0 || (v78 & 1) != 0))
      {

        v1 = v130;
      }

      else
      {
        v79 = sub_1ABF25054();

        v1 = v130;
        if ((v79 & 1) == 0)
        {

          sub_1ABA9A174(__dst);
          goto LABEL_87;
        }
      }

      v50 = v122;
      if (!*(v121 + 16))
      {
        sub_1ABA9A174(__dst);

        goto LABEL_88;
      }

      v80 = sub_1ABA94FC8(v124, v60);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        sub_1ABA9A174(__dst);
        goto LABEL_88;
      }

      v83 = __dst[2];
      v125 = __dst[1];
      v84 = (*(v121 + 56) + 16 * v80);
      v86 = *v84;
      v85 = v84[1];

      sub_1ABAC9398(v118);
      swift_isUniquelyReferenced_nonNull_native();
      v131 = v119;
      v87 = sub_1ABA94FC8(v86, v85);
      if (__OFADD__(v119[2], (v88 & 1) == 0))
      {
        goto LABEL_126;
      }

      v89 = v87;
      v90 = v88;
      sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
      v91 = sub_1ABF24C64();
      v119 = v131;
      if (v91)
      {
        v92 = sub_1ABA94FC8(v86, v85);
        v50 = v122;
        if ((v90 & 1) != (v93 & 1))
        {
          goto LABEL_129;
        }

        v89 = v92;
        if ((v90 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v50 = v122;
        if ((v90 & 1) == 0)
        {
LABEL_97:
          v119[(v89 >> 6) + 8] |= 1 << v89;
          v94 = (v119[6] + 16 * v89);
          *v94 = v86;
          v94[1] = v85;
          *(v119[7] + 8 * v89) = MEMORY[0x1E69E7CC0];
          v95 = v119[2];
          v44 = __OFADD__(v95, 1);
          v96 = v95 + 1;
          if (v44)
          {
            goto LABEL_127;
          }

          v97 = v119;
          v119[2] = v96;
          goto LABEL_103;
        }
      }

      v97 = v119;
LABEL_103:
      v98 = v97[7];
      v99 = *(v98 + 8 * v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v98 + 8 * v89) = v99;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v103 = *(v99 + 16);
        sub_1ABAAA4F4();
        v99 = v104;
        *(v98 + 8 * v89) = v104;
      }

      v101 = *(v99 + 16);
      if (v101 >= *(v99 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v99 = v105;
        *(v98 + 8 * v89) = v105;
      }

      *(v99 + 16) = v101 + 1;
      v102 = v99 + 16 * v101;
      *(v102 + 32) = v125;
      *(v102 + 40) = v83;
      sub_1ABA9A174(__dst);
      v118 = sub_1ABB4F3FC;
      v1 = v130;
      goto LABEL_88;
    }

LABEL_86:

    sub_1ABA9A174(__dst);
    v1 = v130;
LABEL_87:
    v50 = v122;
LABEL_88:
    if (++v51 == v50)
    {

      v107 = v118;
      v106 = v119;
LABEL_110:

      v108 = v107;
      goto LABEL_111;
    }

    v52 = *(v1 + 16);
  }

  sub_1ABA9A174(__dst);

  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v114 = sub_1ABF237F4();
  sub_1ABA7AA24(v114, qword_1ED871B20);
  v115 = sub_1ABF237D4();
  v116 = sub_1ABF24664();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&dword_1ABA78000, v115, v116, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v117, 2u);
    MEMORY[0x1AC5AB8B0](v117, -1, -1);
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v106 = sub_1ABF239C4();

  v108 = v118;
LABEL_111:
  sub_1ABAC9398(v108);
  return v106;
}

void *sub_1ABB4C700(uint64_t a1, uint64_t a2, void *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1ABF3BF70;
  v4 = *MEMORY[0x1E695C258];
  v5 = *MEMORY[0x1E695C240];
  *(v3 + 32) = *MEMORY[0x1E695C258];
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x1E695C2F0];
  v7 = *MEMORY[0x1E695C230];
  *(v3 + 48) = *MEMORY[0x1E695C2F0];
  *(v3 + 56) = v7;
  v8 = *MEMORY[0x1E695C390];
  v9 = *MEMORY[0x1E695C310];
  *(v3 + 64) = *MEMORY[0x1E695C390];
  *(v3 + 72) = v9;
  v10 = *MEMORY[0x1E695C208];
  *(v3 + 80) = *MEMORY[0x1E695C208];
  v11 = objc_opt_self();
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = sub_1ABF23BD4();
  v20 = [v11 predicateForContactsMatchingName_];

  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v21 = sub_1ABF240C4();

  v29[0] = 0;
  v22 = [a3 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:v29];

  v23 = v29[0];
  if (v22)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    sub_1ABA89740();
    v21 = sub_1ABF240D4();
    v24 = v23;
  }

  else
  {
    v25 = v29[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

id sub_1ABB4C92C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF21C54();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1ABF21CF4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1ABB4C9C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 localIdentifier];
  v9 = sub_1ABF23C04();
  v11 = v10;

  sub_1ABB22FFC(a1, &selRef_personUri);
  if (v12)
  {
    swift_beginAccess();

    v13 = *(a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v55 = *(a4 + 16);
    sub_1ABAFB0A4();
    *(a4 + 16) = v55;

    swift_endAccess();
  }

  v14 = sub_1ABB22FFC(a1, &selRef_displayName);
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  v53 = v9;
  v17 = sub_1ABF23C84();
  v19 = v18;

  swift_beginAccess();
  v20 = *(a5 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  v22 = sub_1ABA94FC8(v17, v19);
  if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_30;
  }

  v24 = v22;
  v25 = v23;
  sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
  if (sub_1ABF24C64())
  {
    v26 = sub_1ABA94FC8(v17, v19);
    if ((v25 & 1) != (v27 & 1))
    {
      goto LABEL_31;
    }

    v24 = v26;
  }

  *(a5 + 16) = v21;
  if ((v25 & 1) == 0)
  {
    sub_1ABAB7E74(v24, v17, v19, MEMORY[0x1E69E7CC0], v21);
  }

  v28 = *(v21 + 56) + 8 * v24;
  sub_1ABB4DFB0(sub_1ABAAA4F4);
  v29 = *(*v28 + 16);
  sub_1ABB4E3B4(v29, sub_1ABAAA4F4);
  v30 = *v28;
  *(v30 + 16) = v29 + 1;
  v31 = v30 + 16 * v29;
  v9 = v53;
  *(v31 + 32) = v53;
  *(v31 + 40) = v11;
  swift_endAccess();

  v32 = sub_1ABB4F3FC;
LABEL_16:
  v33 = sub_1ABB22FFC(a1, &selRef_name);
  v35 = v34;
  if (!v34)
  {
LABEL_28:

    sub_1ABAC9398(v32);
    return sub_1ABAC9398(v35);
  }

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v35 = 0;
    goto LABEL_28;
  }

  v54 = v9;
  v37 = sub_1ABF23C84();
  v39 = v38;

  swift_beginAccess();
  v40 = *(a5 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  v42 = sub_1ABA94FC8(v37, v39);
  if (__OFADD__(*(v41 + 16), (v43 & 1) == 0))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = v42;
  v45 = v43;
  sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
  if ((sub_1ABF24C64() & 1) == 0)
  {
LABEL_24:
    *(a5 + 16) = v41;
    if ((v45 & 1) == 0)
    {
      sub_1ABAB7E74(v44, v37, v39, MEMORY[0x1E69E7CC0], v41);
    }

    v48 = *(v41 + 56) + 8 * v44;
    sub_1ABB4DFB0(sub_1ABAAA4F4);
    v49 = *(*v48 + 16);
    sub_1ABB4E3B4(v49, sub_1ABAAA4F4);
    v50 = *v48;
    *(v50 + 16) = v49 + 1;
    v51 = v50 + 16 * v49;
    *(v51 + 32) = v54;
    *(v51 + 40) = v11;
    swift_endAccess();
    v35 = sub_1ABB4F3FC;
    goto LABEL_28;
  }

  v46 = sub_1ABA94FC8(v37, v39);
  if ((v45 & 1) == (v47 & 1))
  {
    v44 = v46;
    goto LABEL_24;
  }

LABEL_31:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABB4CE58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1ABB4CEDC(uint64_t a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3BFD0;
  v5 = *MEMORY[0x1E695C240];
  v6 = *MEMORY[0x1E695C2F0];
  *(v4 + 32) = *MEMORY[0x1E695C240];
  *(v4 + 40) = v6;
  v7 = *MEMORY[0x1E695C230];
  v8 = *MEMORY[0x1E695C390];
  *(v4 + 48) = *MEMORY[0x1E695C230];
  *(v4 + 56) = v8;
  v9 = *MEMORY[0x1E695C310];
  v10 = *MEMORY[0x1E695C208];
  *(v4 + 64) = *MEMORY[0x1E695C310];
  *(v4 + 72) = v10;
  v69 = objc_opt_self();
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;

  v18 = sub_1ABF240C4();

  v19 = [v69 predicateForContactsWithIdentifiers_];

  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v20 = sub_1ABF240C4();

  v74 = 0;
  v21 = [a3 unifiedContactsMatchingPredicate:v19 keysToFetch:v20 error:&v74];

  v22 = v74;
  if (v21)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    inited = sub_1ABF240D4();
    v24 = v22;

    if (sub_1ABAAB7F4(inited))
    {
      sub_1ABAAB7C0(0, (inited & 0xC000000000000001) == 0, inited);
      if ((inited & 0xC000000000000001) != 0)
      {
LABEL_32:
        v25 = MEMORY[0x1AC5AA170](0, inited);
      }

      else
      {
        v25 = *(inited + 32);
      }

      v26 = v25;

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BF90;
      v27 = [v26 givenName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 32) = v6;
      *(inited + 40) = v22;
      v28 = [v26 middleName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 48) = v6;
      *(inited + 56) = v22;
      v29 = [v26 familyName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 64) = v6;
      *(inited + 72) = v22;
      v30 = [v26 givenName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      v74 = v6;
      v75 = v22;

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v32 = v74;
      v31 = v75;
      v33 = [v26 familyName];
      v34 = sub_1ABF23C04();
      v36 = v35;

      v74 = v32;
      v75 = v31;

      v6 = &v74;
      MEMORY[0x1AC5A9410](v34, v36);

      v37 = v75;
      *(inited + 80) = v74;
      *(inited + 88) = v37;
      v38 = [v26 previousFamilyName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 96) = &v74;
      *(inited + 104) = v34;
      v73 = v26;
      v39 = [v26 nickname];
      sub_1ABF23C04();
      sub_1ABA96C10();
      v40 = 0;
      *(inited + 112) = &v74;
      *(inited + 120) = v34;
      v22 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v41 = (inited + 40 + 16 * v40);
      while (v40 != 6)
      {
        if (v40 > 5)
        {
          __break(1u);
          goto LABEL_32;
        }

        ++v40;
        v42 = *(v41 - 1);
        v43 = *v41;
        v41 += 2;
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = v22[2];
            v6 = &v74;
            sub_1ABA83F84();
            sub_1ABADDBD4();
            v22 = v74;
          }

          v48 = v22[2];
          v47 = v22[3];
          if (v48 >= v47 >> 1)
          {
            sub_1ABA7BBEC(v47);
            v6 = &v74;
            sub_1ABADDBD4();
            v22 = v74;
          }

          v22[2] = (v48 + 1);
          v49 = &v22[2 * v48];
          v49[4] = v42;
          v49[5] = v43;
          goto LABEL_6;
        }
      }

      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABE8AE5C(v22);
      sub_1ABA90630();
      v4 = sub_1ABB45668(v50);
      v51 = [v73 emailAddresses];
      sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
      v52 = sub_1ABF240D4();

      v53 = sub_1ABAAB7F4(v52);
      if (v53)
      {
        v54 = v53;
        v71 = v4;
        v74 = MEMORY[0x1E69E7CC0];
        sub_1ABADDBD4();
        if (v54 < 0)
        {
          __break(1u);
        }

        v55 = 0;
        v56 = v74;
        do
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1AC5AA170](v55, v52);
          }

          else
          {
            v57 = *(v52 + 8 * v55 + 32);
          }

          v58 = v57;
          v59 = [v57 value];
          v60 = sub_1ABF23C64();
          v62 = v61;

          v74 = v56;
          v64 = v56[2];
          v63 = v56[3];
          if (v64 >= v63 >> 1)
          {
            sub_1ABA7BBEC(v63);
            sub_1ABADDBD4();
            v56 = v74;
          }

          ++v55;
          v56[2] = (v64 + 1);
          v65 = &v56[2 * v64];
          v65[4] = v60;
          v65[5] = v62;
        }

        while (v54 != v55);

        v4 = v71;
      }

      else
      {
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v66 = v74;
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v67 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1ABB4D584()
{
  v0 = sub_1ABF21F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1ABF21F44();
  v16 = MEMORY[0x1E69E7CD0];
  v5 = sub_1ABF21F24();
  v7 = v6;

  sub_1ABB1840C(v15, v5, v7);

  v8 = objc_autoreleasePoolPush();
  sub_1ABB4D700(v5, v7);

  objc_autoreleasePoolPop(v8);
  v9 = sub_1ABE8AE5C(&unk_1F208F660);

  sub_1ABD91F24(v10, v9);
  v12 = v11;
  (*(v1 + 8))(v4, v0);

  return v12;
}

uint64_t sub_1ABB4D700(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  sub_1ABAE28EC();
  v2 = sub_1ABF24884();
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];

    sub_1ABB1840C(v6, v3, v4);
  }
}

void sub_1ABB4D7BC()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v36 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D33C0, &qword_1ABF3C168);
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v34 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_1ABF21814();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  v25 = *(v16 + 16);
  v33 = v0;
  v25(v21, v0, v13);
  v31 = sub_1ABB4F304(&qword_1ED8705B8);
  sub_1ABF24934();
  sub_1ABB4F304(&qword_1ED8705C0);
  v32 = v2;
  v26 = sub_1ABF23BB4();
  v35 = v4;
  v27 = *(v4 + 48);
  *v12 = (v26 & 1) == 0;
  if (v26)
  {
    (*(v16 + 32))(&v12[v27], v24, v13);
  }

  else
  {
    (*(v16 + 8))(v24, v13);
    v28 = v32;
    v25(&v12[v27], v32, v13);
    v25(v21, v28, v13);
    sub_1ABF24944();
  }

  v29 = v34;
  sub_1ABB4F344(v12, v34);
  v30 = *v29;
  (*(v16 + 32))(v36, &v29[*(v35 + 48)], v13);
  sub_1ABA7BC1C();
}

id sub_1ABB4DA60(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1ABF23BD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithLabel:v5 value:a3];

  return v6;
}

uint64_t sub_1ABB4DAD0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DB0C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DB5C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DBC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_1ABAD219C(a1, a2);
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DFB0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1ABB4E3B4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t (*sub_1ABB4E8DC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1ABA7C9A4(a3);
  sub_1ABAAB7C0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1AC5AA170](a2, a3);
  }

  *a1 = v7;
  return sub_1ABB4F408;
}

uint64_t sub_1ABB4E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v13 = sub_1ABA7ECFC();
    v11 = MEMORY[0x1AC5AA170](v13);
  }

  *v3 = v11;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4E9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v13 = sub_1ABA7ECFC();
    v11 = MEMORY[0x1AC5AA170](v13);
  }

  *v3 = v11;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4EA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = sub_1ABA7ECFC();
    v10 = MEMORY[0x1AC5AA170](v12);
  }

  *v3 = v10;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = sub_1ABA7ECFC();
    v10 = MEMORY[0x1AC5AA170](v12);
  }

  *v3 = v10;
  return sub_1ABAA14BC();
}

id sub_1ABB4EB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1ABF23BD4();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

unint64_t sub_1ABB4EB7C()
{
  result = qword_1EB4D32B0;
  if (!qword_1EB4D32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D32B0);
  }

  return result;
}

void sub_1ABB4EBD0(uint64_t a1, void *a2)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v3 = sub_1ABF240C4();

  [a2 setIncludedDetectionTypes_];
}

void sub_1ABB4EC5C(uint64_t a1, uint64_t a2)
{
  sub_1ABA83F90(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC5AA8D0](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1ABB4EC9C(uint64_t a1, uint64_t a2)
{
  sub_1ABA83F90(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_1ABF23D34();
      MEMORY[0x1AC5AA8D0](v7 >> 14);
      MEMORY[0x1AC5AA8D0](v8 >> 14);

      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

void sub_1ABB4ED20(uint64_t a1, uint64_t a2)
{
  sub_1ABA83F90(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 5;

      sub_1ABF23D34();

      --v2;
    }

    while (v2);
  }
}

void sub_1ABB4ED98(uint64_t a1, uint64_t a2)
{
  sub_1ABA83F90(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1ABF23D34();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1ABB4EE04()
{
  result = qword_1EB4D3360;
  if (!qword_1EB4D3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3360);
  }

  return result;
}

__n128 sub_1ABB4EE58(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ABB4EE74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB4EEB4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1ABB4EF10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB4EF50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1ABB4EFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t sub_1ABB4EFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB4F054(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5AA8A0](v4);
  v23 = v4;
  if (v4)
  {
    v6 = 0;
    v22 = a2 + 32;
    do
    {
      v7 = (v22 + 88 * v6);
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = v7[2];
      v11 = *(v7 + 3);
      v12 = *(v7 + 4);
      v13 = *(v7 + 5);
      v14 = *(v7 + 7);
      v24 = *(v7 + 6);
      v25 = *(v7 + 8);
      v15 = *(v7 + 9);
      v16 = *(v7 + 10);

      sub_1ABF23D34();
      if (v10 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v10;
      }

      MEMORY[0x1AC5AA8D0](*&v17);
      sub_1ABF23D34();
      if (v13)
      {
        sub_1ABF25254();
        v18 = *(v13 + 16);
        MEMORY[0x1AC5AA8A0](v18);
        if (v18)
        {
          v19 = (v13 + 40);
          do
          {
            v20 = *(v19 - 1);
            v21 = *v19;

            sub_1ABF23D34();

            v19 += 2;
            --v18;
          }

          while (v18);
        }

        if (v14)
        {
LABEL_11:
          sub_1ABF25254();
          sub_1ABF23D34();
          if (!v15)
          {
            goto LABEL_15;
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_1ABF25254();
        if (v14)
        {
          goto LABEL_11;
        }
      }

      sub_1ABF25254();
      if (!v15)
      {
LABEL_15:
        sub_1ABF25254();
        goto LABEL_16;
      }

LABEL_12:
      sub_1ABF25254();
      sub_1ABF23D34();
LABEL_16:
      ++v6;
      sub_1ABB4F054(a1, v16);
    }

    while (v6 != v23);
  }

  return result;
}

uint64_t sub_1ABB4F304(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF21814();
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB4F344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D33C0, &qword_1ABF3C168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB4F3B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB4F508()
{
  v0 = sub_1ABF24D84();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB4F55C(char a1)
{
  if (a1)
  {
    return 0x7241746E65746E69;
  }

  else
  {
    return 0x79676F6C6F746E6FLL;
  }
}

uint64_t sub_1ABB4F5BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABB4F508();
  *a2 = result;
  return result;
}

uint64_t sub_1ABB4F5EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB4F55C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1ABB4F618()
{
  sub_1ABAD219C(&qword_1EB4D3410, &qword_1ABF3C1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for OntologyContextGenerator;
  *(inited + 72) = &off_1F20806B8;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for IntentArgContextGenerator;
  *(inited + 120) = &off_1F20801F0;
  sub_1ABAD219C(&qword_1EB4D3418, qword_1ABF3C200);
  sub_1ABB5086C();
  result = sub_1ABF239C4();
  off_1EB4D3400 = result;
  return result;
}

uint64_t *sub_1ABB4F6D8(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v107 = *a1;
  v108 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v105 = *(a1 + 40);
  v106 = v6;
  v81 = *v1;
  v88 = v1[1];
  v109 = MEMORY[0x1E69E7CD0];
  v104 = MEMORY[0x1E69E7CD0];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = &qword_1EB4D0000;
  v82 = *(v7 + 16);
  v89 = v5;
  if (!v82)
  {
    v85 = v3;

    v40 = MEMORY[0x1E69E7CD0];
LABEL_26:
    v42 = v81 + 56;
    v41 = *(v81 + 56);
    sub_1ABA7D2A8(v81);
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;
    v94 = v40 + 56;

    v48 = 0;
    v91 = v81 + 56;
    v87 = v47;
    if (!v45)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_31:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = *(*(v81 + 48) + (v50 | (v48 << 6)));
      v92 = *(*(v81 + 48) + (v50 | (v48 << 6)));
      if (!*(v40 + 16))
      {
        goto LABEL_52;
      }

      v52 = *(v40 + 40);
      sub_1ABF25234();
      v53 = v51 ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v54 = v51 ? 0xE900000000000067 : 0xE800000000000000;
      sub_1ABF23D34();

      v55 = sub_1ABF25294();
      v56 = -1 << *(v40 + 32);
      v57 = v55 & ~v56;
      if ((*(v94 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = *(*(v40 + 48) + v57) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
          v1 = (*(*(v40 + 48) + v57) ? 0xE900000000000067 : 0xE800000000000000);
          if (v59 == v53 && v1 == v54)
          {
            break;
          }

          v61 = sub_1ABF25054();

          if (v61)
          {
            goto LABEL_59;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v94 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        if (qword_1EB4D0268 != -1)
        {
          sub_1ABA8F0B8();
          swift_once();
        }

        v1 = off_1EB4D3400;
        if (*(off_1EB4D3400 + 2))
        {
          v62 = sub_1ABAF8714(v92);
          if (v63)
          {
            v70 = v40;
            sub_1ABA807D8(v62, v63, v64, v65, v66, v67, v68, v69, v81, v82, v83);
            sub_1ABA946C0(&v95, v101);
            v71 = v102;
            v72 = v103;
            sub_1ABA93E20(v101, v102);
            v100 = v88;
            v95 = v107;
            v96 = v108;
            v97 = v89;
            v98 = v105;
            v99 = v106;
            v73 = *(v72 + 8);

            v74 = v73(&v100, &v95, v71, v72);
            if (v85)
            {
              goto LABEL_67;
            }

            v75 = v74;

            v1 = &v109;
            sub_1ABB7ECC8(v75);
            sub_1ABA84B54(v101);
            v40 = v70;
          }
        }
      }

LABEL_59:
      v42 = v91;
      v47 = v87;
    }

    while (v45);
    while (1)
    {
LABEL_27:
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v49 >= v47)
      {
        break;
      }

      v45 = *(v42 + 8 * v49);
      ++v48;
      if (v45)
      {
        v48 = v49;
        goto LABEL_31;
      }
    }

    v1 = sub_1ABB455B8(v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

  v84 = v7 + 32;

  v9 = 0;
  v83 = v7;
  while (2)
  {
    if (v9 < *(v7 + 16))
    {
      v10 = *(v84 + 8 * v9);
      v90 = v9 + 1;
      v12 = v10 + 64;
      v11 = *(v10 + 64);
      v13 = sub_1ABA7D2A8(v10);
      v16 = v15 & v14;
      v18 = (v17 + 63) >> 6;
      v93 = v13;

      v19 = 0;
      while (v16)
      {
LABEL_13:
        v21 = (*(v93 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))));
        v23 = *v21;
        v22 = v21[1];

        v24 = sub_1ABF24D84();
        if (v24)
        {
          if (v24 != 1)
          {

            *&v95 = 0;
            *(&v95 + 1) = 0xE000000000000000;
            sub_1ABF24AB4();

            *&v95 = 0x6F746172656E6567;
            *(&v95 + 1) = 0xEA00000000002072;
            MEMORY[0x1AC5A9410](v23, v22);

            MEMORY[0x1AC5A9410](0x74276E73656F6420, 0xEE00747369786520);
            v1 = *(&v95 + 1);
            v77 = v95;
            sub_1ABB4FDEC();
            swift_allocError();
            *v78 = v77;
            v78[1] = v1;
            swift_willThrow();

            return v1;
          }

          v25 = 1;
        }

        else
        {
          v25 = 0;
        }

        if (v8[77] != -1)
        {
          sub_1ABA8F0B8();
          swift_once();
        }

        v16 &= v16 - 1;
        v1 = off_1EB4D3400;
        if (*(off_1EB4D3400 + 2))
        {
          v26 = sub_1ABAF8714(v25);
          if (v27)
          {
            sub_1ABA807D8(v26, v27, v28, v29, v30, v31, v32, v33, v81, v82, v83);
            sub_1ABA946C0(&v95, v101);
            v34 = v102;
            v35 = v103;
            v1 = sub_1ABA93E20(v101, v102);
            v100 = v88;
            v36 = *(a1 + 16);
            v95 = *a1;
            v96 = v36;
            v97 = v89;
            v98 = *(a1 + 40);
            v99 = *(a1 + 56);
            v37 = *(v35 + 8);

            v38 = v37(&v100, &v95, v34, v35);
            if (v3)
            {

              sub_1ABA84B54(v101);
              return v1;
            }

            v39 = v38;

            sub_1ABB7ECC8(v39);
            v1 = &v104;
            sub_1ABB18E84();
            sub_1ABA84B54(v101);
            v8 = &qword_1EB4D0000;
          }
        }
      }

      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_67:

          v1 = v109;

          sub_1ABA84B54(v101);
          return v1;
        }

        if (v20 >= v18)
        {
          break;
        }

        v16 = *(v12 + 8 * v20);
        ++v19;
        if (v16)
        {
          v19 = v20;
          goto LABEL_13;
        }
      }

      v7 = v83;
      v9 = v90;
      if (v90 != v82)
      {
        continue;
      }

      v85 = v3;

      v40 = v104;
      goto LABEL_26;
    }

    break;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  sub_1ABD8EE84(v1);
  v1 = v80;
LABEL_62:
  v76 = v1[2];
  *&v95 = v1 + 4;
  *(&v95 + 1) = v76;
  sub_1ABB4FE40(&v95);

  return v1;
}

unint64_t sub_1ABB4FDEC()
{
  result = qword_1EB4D3408;
  if (!qword_1EB4D3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3408);
  }

  return result;
}

uint64_t sub_1ABB4FE40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB50028(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABB4FF34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB4FF34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 - 11);
        if (result == *v10 && *(v10 - 10) == v10[1])
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB50028(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 88 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 88 * v8);
        if (*v13 == v11 && v13[1] == v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1ABF25054();
        }

        v6 = v8 + 2;
        v16 = 88 * v8;
        v17 = (v9 + 88 * v8 + 184);
        while (v6 < v5)
        {
          if (*(v17 - 12) == *(v17 - 1) && *(v17 - 11) == *v17)
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v6;
          v17 += 11;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 88 * v6 - 88;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x58uLL);
              memcpy((v22 + v19), __dst, 0x58uLL);
            }

            ++v21;
            v19 -= 88;
            v16 += 88;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v24)
          {
            v79 = v7;
            v25 = *a3;
            v26 = *a3 + 88 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *(v29 - 11) == *v29 && *(v29 - 10) == v29[1];
                if (v30 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 11, 0x58uLL);
                memcpy(v29 - 11, __dst, 0x58uLL);
                v29 -= 11;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 88;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = v7[2];
        sub_1ABAD8820();
        v7 = v75;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v76;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v80 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1ABB506A8((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v80);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v83 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABB50570(&v83, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABB50570(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABB506A8((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABB506A8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1ABADD380(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 88;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 88;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 88;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_17;
  }

  sub_1ABADD380(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_19:
  v14 = v6 - 88;
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    v16 = *(v6 - 11) == *(v10 - 11) && *(v6 - 10) == *(v10 - 10);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 88 == v6;
      v6 -= 88;
      if (!v12)
      {
        memmove(v5, v14, 0x58uLL);
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_36:
  v17 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v17])
  {
    memmove(v6, v4, 88 * v17);
  }

  return 1;
}

unint64_t sub_1ABB5086C()
{
  result = qword_1EB4D3420;
  if (!qword_1EB4D3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3420);
  }

  return result;
}

uint64_t sub_1ABB508CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB508E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB50924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABB50980(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB50A5C()
{
  result = qword_1ED86D3B0;
  if (!qword_1ED86D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D3B0);
  }

  return result;
}

uint64_t sub_1ABB50AC0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = *(a2 + 104);
  if ((v9 & 0x10) != 0)
  {
    v54 = a2[12];
    v49 = *(a2 + 5);
    v39 = v5;
    sub_1ABF24AB4();
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF88250);
    *__dst = v3;
    *&__dst[8] = v4;
    *&__dst[16] = v39;
    *&__dst[24] = v6;
    *&__dst[32] = v8;
    *&__dst[40] = v7;
    v40 = *(a2 + 3);
    *&__dst[64] = *(a2 + 4);
    *&__dst[48] = v40;
    *&__dst[80] = v49;
    v52 = v54;
    v53 = v9;
    sub_1ABF24C54();
    sub_1ABB50F70();
    swift_allocError();
    *v41 = 0;
    *(v41 + 8) = 0xE000000000000000;
    *(v41 + 16) = 1;
    return swift_willThrow();
  }

  v46 = a2[4];
  v48 = a2[5];
  if ((v9 & 0xE0) == 0x20)
  {
    v10 = *(result + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v43 = a2[2];
      v12 = 0;
      v47 = v10 + 32;
      v54 = v4 + 56;
      v13 = MEMORY[0x1E69E7CC0];
      v14 = v11;
      v44 = v3;
      v45 = v10;
      for (i = v10; ; v14 = *(i + 16))
      {
        if (v12 >= v14)
        {
          __break(1u);
          return result;
        }

        result = memcpy(__dst, (v47 + 88 * v12), 0x58uLL);
        if (v4)
        {
          if ((v3 & 1) == 0)
          {
            break;
          }
        }

        sub_1ABB242A4(__dst, v50);
LABEL_9:
        v16 = v46;
        if (v6)
        {
          v17 = *&__dst[56];
          if (*&__dst[56])
          {
            if ((v43 & 1) == 0)
            {
              if (!*(v6 + 16))
              {
                goto LABEL_49;
              }

              v18 = *(v6 + 40);
              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              v19 = *(v6 + 32);
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA8F0CC();
                if (((*(v6 + 56 + v20) >> v7) & 1) == 0)
                {
                  goto LABEL_51;
                }

                sub_1ABA7EEFC(*(v6 + 48));
                v22 = v22 && v17 == v21;
                if (v22 || (sub_1ABA807F8() & 1) != 0)
                {

                  LOBYTE(v3) = v44;
                  v16 = v46;
                  break;
                }
              }
            }
          }
        }

        LOBYTE(v7) = v48;
        if (v48)
        {
          v23 = *&__dst[72];
          if (*&__dst[72])
          {
            if ((v16 & 1) == 0)
            {
              if (!*(v48 + 16))
              {
LABEL_49:
                result = sub_1ABB24250(__dst);
                i = v45;
                goto LABEL_38;
              }

              v24 = *(v48 + 40);
              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              v25 = *(v48 + 32);
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA8F0CC();
                if (((*(v48 + 56 + v26) >> v48) & 1) == 0)
                {
                  break;
                }

                sub_1ABA7EEFC(*(v48 + 48));
                v28 = v22 && v23 == v27;
                if (v28 || (sub_1ABA807F8() & 1) != 0)
                {

                  LOBYTE(v3) = v44;
                  goto LABEL_33;
                }
              }

LABEL_51:
              sub_1ABB24250(__dst);

LABEL_52:
              LOBYTE(v3) = v44;
              i = v45;
              goto LABEL_38;
            }
          }
        }

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v13 + 16);
          sub_1ABAD8758();
          v13 = v36;
        }

        i = v45;
        v7 = *(v13 + 16);
        if (v7 >= *(v13 + 24) >> 1)
        {
          sub_1ABAD8758();
          v13 = v37;
        }

        *(v13 + 16) = v7 + 1;
        result = memcpy((v13 + 88 * v7 + 32), __dst, 0x58uLL);
LABEL_38:
        if (++v12 == v11)
        {
          goto LABEL_55;
        }
      }

      if (!*(v4 + 16))
      {
        goto LABEL_38;
      }

      v29 = *&__dst[32];
      v30 = *(v4 + 40);
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v50);

      sub_1ABF23D34();
      sub_1ABF25294();
      v31 = *(v4 + 32);
      sub_1ABA7D2C8();
      while (1)
      {
        sub_1ABA8F0CC();
        if (((*(v54 + v32) >> v7) & 1) == 0)
        {
          break;
        }

        sub_1ABA7EEFC(*(v4 + 48));
        v34 = v22 && v33 == v29;
        if (v34 || (sub_1ABA807F8() & 1) != 0)
        {

          LOBYTE(v3) = v44;
          goto LABEL_9;
        }
      }

      result = sub_1ABB24250(__dst);
      goto LABEL_52;
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_55:
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v13;
  return result;
}

unint64_t sub_1ABB50F70()
{
  result = qword_1EB4D3428;
  if (!qword_1EB4D3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3428);
  }

  return result;
}

uint64_t sub_1ABB50FC4()
{
  *&__src[0] = 0x746E756F63;
  *(&__src[0] + 1) = 0xE500000000000000;
  *&__src[1] = &unk_1F208E518;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0xD00000000000002CLL;
  *(&__src[3] + 1) = 0x80000001ABF882B0;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABB51098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  if (v4 && *(v4 + 16) == 1 && !*(a1 + 8))
  {
    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1ED86E460);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24654();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1ABA78000, v14, v15, "array argument provided to count.", v16, 2u);
      MEMORY[0x1AC5AB8B0](v16, -1, -1);
    }

    v17 = *(sub_1ABE713BC() + 16);
  }

  else if (*(a1 + 8))
  {
    sub_1ABE48AB8();
  }

  sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34740;
  v6 = sub_1ABF24FF4();
  v8 = v7;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v5 + 112) = MEMORY[0x1E69E7CC0];
  v18 = v6;
  v19 = v7;

  MEMORY[0x1AC5A9410](126, 0xE100000000000000);

  MEMORY[0x1AC5A9410](126, 0xE100000000000000);

  v10 = v19;
  *(v5 + 32) = v6;
  *(v5 + 40) = v10;
  *(v5 + 56) = v6;
  *(v5 + 64) = v8;
  *(v5 + 80) = xmmword_1ABF3C450;
  *(v5 + 96) = xmmword_1ABF3C450;
  type metadata accessor for ResultGraph();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ABF239C4();
  *(v11 + 24) = v9;
  LOBYTE(v18) = 0;
  sub_1ABE489A8(v5, &v18);
  return v5;
}

void *sub_1ABB513D0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ABA7E400();
  result = memcpy(v5, v6, v7);
  if (v3)
  {
    v13[0] = v4;
    v13[1] = v3;
    sub_1ABA7E400();
    memcpy(v9, v10, v11);
    sub_1ABB51320(v13, v12);
    *a1 = v4;
    a1[1] = v3;
    return memcpy(a1 + 2, __src, 0x60uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1ABB5144C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ABA7E400();
  result = memcpy(v5, v6, v7);
  if (v3)
  {
    v13[0] = v4;
    v13[1] = v3;
    sub_1ABA7E400();
    memcpy(v9, v10, v11);
    sub_1ABB51320(v13, &v12);
    *a1 = v4;
    a1[1] = v3;
    return memcpy(a1 + 2, __src, 0x60uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB514D8(uint64_t a1)
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;

    v8 = 0;
    while (v5)
    {
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v2 + 56) + ((v8 << 9) | (8 * v10)));
      sub_1ABA7EF0C();
      result = swift_beginAccess();
      if (*(v11 + 24))
      {
        type metadata accessor for QueryNode();

        v12 = sub_1ABE71A88();

        if (v12)
        {
          v13 = 1;
LABEL_14:

          return v13;
        }
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1ABB51634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1ABE71C10();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1ABF24CA4())
  {
    v35 = v4;
    v8 = 0;
    v40 = v6 & 0xC000000000000001;
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v40)
      {
        v9 = MEMORY[0x1AC5AA170](v8, v6);
      }

      else
      {
        if (v8 >= *(v34 + 16))
        {
          goto LABEL_48;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = qword_1ED86D3A8;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_1ED87C3F8;
      if (*(qword_1ED87C3F8 + 16))
      {
        v4 = v6;
        v15 = i;
        v16 = sub_1ABA94FC8(v11, v12);
        v18 = v17;

        if (v18)
        {
          sub_1ABA93E64(*(v14 + 56) + 40 * v16, v36);
          sub_1ABA946C0(v36, v37);
          v19 = v38;
          v20 = v39;
          sub_1ABA93E20(v37, v38);
          (*(v20 + 32))(v36, a1, v9, v19, v20);
          if (v35)
          {

            sub_1ABA84B54(v37);
            return v30 & 1;
          }

          v21 = *(a3 + 64);
          v22 = 0xE400000000000000;
          v23 = 1701736302;
          i = v15;
          switch(LOBYTE(v36[0]))
          {
            case 1:
              v23 = 0xD000000000000010;
              v22 = 0x80000001ABF7EE20;
              break;
            case 2:
              v22 = 0xE700000000000000;
              v23 = sub_1ABA7BF00();
              break;
            case 3:
              v24 = 0x47746E657665;
              goto LABEL_24;
            case 4:
              v23 = sub_1ABA7D198();
              break;
            case 5:
              v23 = 0x49747865746E6F63;
              v22 = 0xEC0000007865646ELL;
              break;
            case 6:
              v24 = 0x476C61636F6CLL;
LABEL_24:
              v23 = sub_1ABA80704(v24);
              break;
            case 7:
              v23 = 0xD00000000000001ALL;
              v22 = 0x80000001ABF7EE80;
              break;
            case 8:
              v23 = 0xD000000000000018;
              v22 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          v25 = 0xE400000000000000;
          v6 = v4;
          v26 = 1701736302;
          switch(v21)
          {
            case 1:
              v26 = 0xD000000000000010;
              v25 = 0x80000001ABF7EE20;
              break;
            case 2:
              v25 = 0xE700000000000000;
              v26 = 0x7865646E496F6ELL;
              break;
            case 3:
              v27 = 0x47746E657665;
              goto LABEL_34;
            case 4:
              v26 = 0x79676F6C6F746E6FLL;
              v25 = 0xED00007865646E49;
              break;
            case 5:
              sub_1ABA891B0();
              v25 = 0xEC0000007865646ELL;
              break;
            case 6:
              v27 = 0x476C61636F6CLL;
LABEL_34:
              v26 = v27 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
              v25 = 0xEF7865646E496870;
              break;
            case 7:
              v26 = 0xD00000000000001ALL;
              v25 = 0x80000001ABF7EE80;
              break;
            case 8:
              v26 = 0xD000000000000018;
              v25 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          if (v23 == v26 && v22 == v25)
          {
          }

          else
          {
            v29 = sub_1ABF25054();

            if ((v29 & 1) == 0)
            {

              sub_1ABA84B54(v37);
              v30 = 1;
              return v30 & 1;
            }
          }

          sub_1ABA84B54(v37);
        }

        else
        {

          i = v15;
          v6 = v4;
        }
      }

      else
      {
      }

      ++v8;
      if (v10 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_50:

  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1ABB51AD8(uint64_t a1, uint64_t a2, char *a3)
{
  if ((sub_1ABACECCC(*(a2 + 64), *a3) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = qword_1EB4CF230;

  if (v6 != -1)
  {
    sub_1ABA8F0DC();
    swift_once();
  }

  sub_1ABB130E0();
  v8 = v7;

  return v8 & 1;
}

uint64_t sub_1ABB51B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = v7;
  v75 = a7;
  v64 = a1;
  Context = type metadata accessor for QueryContext();
  v15 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[3] = type metadata accessor for DefaultOperator();
  __src[4] = &off_1F20885C8;
  __src[0] = v9;

  sub_1ABE19E30(__src, a5);
  v19 = v18;
  result = sub_1ABA84B54(__src);
  if (v8)
  {
    return result;
  }

  v63 = 0;
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v21 = *(v19 + 16);
  v22 = v19;
  if (!v21)
  {
  }

  v62 = v17;
  v56 = Context;
  v23 = 0;
  v65 = 0;
  v24 = 0;
  memset(__src, 0, sizeof(__src));
  v54 = v75 + 1;
  v25 = __OFADD__(v75, 1);
  v55 = v25;
  v73 = xmmword_1ABF34940;
  v74 = 0;
  v66 = v21 - 1;
  v26 = (v22 + 40);
  v75 = 0x1FFFFFFFELL;
  v53 = v22;
  while (1)
  {
    if (v24 >= v21)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v28 = *(v26 - 1);
    v27 = *v26;
    swift_beginAccess();
    v29 = *(a5 + 32);
    if (!v29 || !*(v29 + 16))
    {
      swift_endAccess();
      goto LABEL_16;
    }

    v30 = sub_1ABA94FC8(v28, v27);
    if ((v31 & 1) == 0)
    {
      swift_endAccess();

      goto LABEL_16;
    }

    v32 = *(*(v29 + 56) + 8 * v30);
    swift_endAccess();

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (!*(v32 + 24) || (v69 = *(v32 + 24), (sub_1ABE71D70() & 1) != 0))
    {

LABEL_16:
      v33 = __src;
      goto LABEL_17;
    }

    v34 = v62;
    result = sub_1ABE3CF94(v62);
    if (v55)
    {
      goto LABEL_46;
    }

    v35 = v63;
    v61 = sub_1ABE177BC(v70, v34, &v69, a5, v54, v57, v58, v59);
    if (v35)
    {

      sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

      return sub_1ABB529C4(v34);
    }

    result = memcpy(v68, v70, 0x69uLL);
    v36 = *(v56 + 48);
    v37 = &v34[v36];
    v38 = *&v34[v36];
    v39 = (v64 + v36);
    v40 = *(v64 + v36) + v38;
    if (__OFADD__(*v39, v38))
    {
      goto LABEL_47;
    }

    v60 = v23;
    v63 = 0;
    v41 = *(v37 + 1);
    v42 = *(v37 + 2);
    *v39 = v40;

    sub_1ABD7DA50(v41);
    v43 = v42;
    v44 = v64;
    sub_1ABD7DFB4(v43);
    v45 = *(v34 + 2);
    if (v45 <= *(v44 + 16))
    {
      v45 = *(v44 + 16);
    }

    *(v44 + 16) = v45;
    if (v68[11] >> 1 == 0xFFFFFFFFLL && (v68[13] & 0x1E) == 0)
    {
      v46 = v61;
      v47 = sub_1ABE47EF0();
      v23 = v60;
      if (!v47)
      {
        sub_1ABE4933C();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v48 = *(v46 + 24);
        swift_beginAccess();

        sub_1ABD7DA50(v49);
        swift_endAccess();
        if (*(v64 + 8))
        {
          sub_1ABE47F28(v46);
        }

        else
        {

          *(v64 + 8) = v46;
        }

        v22 = v53;

        sub_1ABB529C4(v62);
        memcpy(v67, __src, sizeof(v67));
        goto LABEL_38;
      }

      sub_1ABB529C4(v62);
      goto LABEL_32;
    }

    sub_1ABB529C4(v62);
    v23 = v60;
    if (v75 >> 1 != 0xFFFFFFFF || (v60 & 0x1E) != 0)
    {
      sub_1ABA925A4(v68, &qword_1EB4D3430, &unk_1ABF6B740);
LABEL_32:
      memcpy(v67, __src, sizeof(v67));
      goto LABEL_33;
    }

    memcpy(v67, v68, sizeof(v67));
    v75 = v68[11];
    v65 = v68[12];
    v23 = LOBYTE(v68[13]);
LABEL_33:
    v22 = v53;
LABEL_38:
    v33 = v67;
LABEL_17:
    memcpy(v71, v33, sizeof(v71));
    if (v66 == v24)
    {
      break;
    }

    result = memcpy(__src, v71, sizeof(__src));
    *&v73 = v75;
    *(&v73 + 1) = v65;
    v74 = v23;
    v21 = *(v22 + 16);
    v26 += 2;
    ++v24;
  }

  if (v75 >> 1 != 0xFFFFFFFF || (v23 & 0x1E) != 0)
  {
    v50 = v64 + *(v56 + 32);
    memcpy(v70, v50, 0x69uLL);
    sub_1ABA925A4(v70, &qword_1EB4D3430, &unk_1ABF6B740);
    result = memcpy(v50, v71, 0x58uLL);
    v51 = v65;
    *(v50 + 88) = v75;
    *(v50 + 96) = v51;
    *(v50 + 104) = v23;
  }

  return result;
}