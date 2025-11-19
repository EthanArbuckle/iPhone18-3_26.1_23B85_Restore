void sub_1C0D18CA8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t _s17CuckooTableConfigVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17CuckooTableConfigVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C0D18FB0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7C00(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      if (*v4 >> 60 == 15)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v4 - 1);
      }

      if (*v4 >> 60 == 15)
      {
        v6 = 0xC000000000000000;
      }

      else
      {
        v6 = *v4;
      }

      sub_1C0D134D0(*(v4 - 1), *v4);
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C0CF7C00((v7 > 1), v8 + 1, 1);
      }

      v4 += 2;
      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  return v3;
}

BOOL sub_1C0D19090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v21 - v15;
  (*(v6 + 16))(v9, a1, a2);
  sub_1C0D78B7C();
  swift_getAssociatedConformanceWitness();
  do
  {
    sub_1C0D78D4C();
    v17 = v22;
    if (v22 >> 60 == 15)
    {
      break;
    }

    v18 = v21;
    v19 = sub_1C0D192A4(v21, v22, *(v3 + 8));
    sub_1C0D13830(v18, v17);
  }

  while ((v19 & 1) != 0);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return v17 >> 60 == 15;
}

uint64_t sub_1C0D192A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_79;
  }

  v6 = v3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = sub_1C0CF610C(a1, a2, v3[2], *v3);
  v11 = *(v10 + 16);
  v52 = v8;
  if (v11)
  {
    v4 = 0;
    v3 = v3[3];
    v12 = v3 + 4;
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 == 0xC000000000000000;
    }

    v14 = !v13;
    v56 = v14;
    v15 = v7 >> 62;
    v16 = __OFSUB__(HIDWORD(v8), v8);
    v50 = v16;
    v48 = v6;
    v49 = HIDWORD(v8) - v8;
    v54 = v3 + 4;
    v55 = BYTE6(v7);
    v51 = v3;
    v53 = v7 >> 62;
    v47 = v7;
    while (1)
    {
      if (v4 >= *(v10 + 16))
      {
        __break(1u);
LABEL_90:
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
        v3 = sub_1C0CFD698(v3);
LABEL_75:
        if (v8 < v3[2])
        {
          v36 = &v3[2 * v8];
          v37 = v36[4];
          v38 = v36[5];
          v36[4] = v52;
          v36[5] = v7;
          sub_1C0CF6468(v52, v7);
          sub_1C0D13830(v37, v38);
          *(v6 + 24) = v3;
          v39 = 1;
          goto LABEL_88;
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v17 = *(v10 + 8 * v4 + 32);
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (v17 >= v3[2])
      {
        goto LABEL_91;
      }

      v18 = &v12[2 * v17];
      v5 = v18[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v19 = *v18;
      v20 = v5 >> 62;
      if (v5 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_41;
        }

        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_98;
        }

        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_97;
        }

        v24 = v24;
        if (v15 <= 1)
        {
LABEL_38:
          v28 = v55;
          if (v15)
          {
            v28 = v49;
            if (v50)
            {
              goto LABEL_96;
            }
          }

          goto LABEL_44;
        }
      }

      else
      {
        v24 = BYTE6(v5);
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      if (v15 != 2)
      {
        if (!v24)
        {
          goto LABEL_80;
        }

        goto LABEL_14;
      }

      v30 = *(v8 + 16);
      v29 = *(v8 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_95;
      }

LABEL_44:
      if (v24 == v28)
      {
        if (v24 < 1)
        {
          goto LABEL_80;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            memset(v58, 0, 14);
            sub_1C0CF6468(v19, v5);
            goto LABEL_66;
          }

          v6 = *(v19 + 16);
          v8 = *(v19 + 24);
          sub_1C0CF6468(v19, v5);
          v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
          v7 = sub_1C0D7812C();
          if (v7)
          {
            v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
            v31 = sub_1C0D7815C();
            if (__OFSUB__(v6, v31))
            {
              goto LABEL_103;
            }

            v7 += v6 - v31;
          }

          v27 = __OFSUB__(v8, v6);
          v8 -= v6;
          if (v27)
          {
            goto LABEL_100;
          }

          sub_1C0D7814C();
          v32 = v7;
          v8 = v52;
        }

        else
        {
          if (!v20)
          {
            v58[0] = v19;
            LOWORD(v58[1]) = v5;
            BYTE2(v58[1]) = BYTE2(v5);
            BYTE3(v58[1]) = BYTE3(v5);
            BYTE4(v58[1]) = BYTE4(v5);
            BYTE5(v58[1]) = BYTE5(v5);
            sub_1C0CF6468(v19, v5);
            v3 = v51;
LABEL_66:
            sub_1C0D198E4(v58, v8, v7, &v57);
            sub_1C0D13830(v19, v5);
            if (v57)
            {
              goto LABEL_80;
            }

LABEL_67:
            v15 = v53;
            v12 = v54;
            goto LABEL_14;
          }

          v8 = v19;
          v6 = (v19 >> 32) - v19;
          if (v19 >> 32 < v19)
          {
            goto LABEL_99;
          }

          sub_1C0CF6468(v19, v5);
          v33 = sub_1C0D7812C();
          if (v33)
          {
            v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
            v34 = sub_1C0D7815C();
            if (__OFSUB__(v19, v34))
            {
              goto LABEL_104;
            }

            v33 += v19 - v34;
          }

          v8 = v52;
          sub_1C0D7814C();
          v32 = v33;
        }

        v7 = v47;
        sub_1C0D198E4(v32, v8, v47, v58);
        sub_1C0D13830(v19, v5);
        v6 = v48;
        v3 = v51;
        if (v58[0])
        {
          goto LABEL_80;
        }

        goto LABEL_67;
      }

LABEL_14:
      if (v11 == ++v4)
      {
        goto LABEL_68;
      }
    }

    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v5 == 0xC000000000000000;
    }

    v23 = !v21 || v15 < 3;
    if (((v23 | v56) & 1) == 0)
    {
LABEL_80:

      v39 = 1;
      goto LABEL_88;
    }

LABEL_41:
    v24 = 0;
    if (v15 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_68:
  v35 = 0;
  while (v11 != v35)
  {
    if (v35 >= *(v10 + 16))
    {
      goto LABEL_92;
    }

    v8 = *(v10 + 8 * v35 + 32);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v3 = *(v6 + 24);
    if (v8 >= v3[2])
    {
      goto LABEL_94;
    }

    ++v35;
    if (v3[2 * v8 + 5] >> 60 == 15)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_75;
      }

      goto LABEL_101;
    }
  }

  v4 = v7;
  v57 = v10;
  v9 = *(v6 + 56);
  v5 = *(v6 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
  sub_1C0D19B64();
  v3 = &v57;
  result = sub_1C0D78CBC();
  if (v58[1])
  {

LABEL_79:
    v39 = 0;
    goto LABEL_88;
  }

  v8 = v58[0];
  if ((v58[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_105;
  }

  v3 = *(v6 + 24);
  if (v58[0] >= v3[2])
  {
LABEL_106:
    __break(1u);
LABEL_107:
    v3 = sub_1C0CFD698(v3);
    goto LABEL_85;
  }

  v41 = &v3[2 * v58[0]];
  v9 = v41[5];
  if (v9 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v5 = v41[4];
  sub_1C0CF6468(v5, v41[5]);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_107;
  }

LABEL_85:
  if (v8 >= v3[2])
  {
    __break(1u);
LABEL_109:
    __break(1u);
  }

  v42 = &v3[2 * v8];
  v43 = v42[4];
  v44 = v42[5];
  v42[4] = v52;
  v42[5] = v4;
  sub_1C0CF6468(v52, v4);
  sub_1C0D13830(v43, v44);
  *(v6 + 24) = v3;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_109;
  }

  v39 = sub_1C0D192A4(v5, v9, a3 - 1);
  sub_1C0D13830(v5, v9);
LABEL_88:
  v45 = *MEMORY[0x1E69E9840];
  return v39 & 1;
}

uint64_t sub_1C0D198E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1C0D7812C();
    if (v10)
    {
      v11 = sub_1C0D7815C();
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
      result = sub_1C0D7814C();
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
      v19 = *MEMORY[0x1E69E9840];
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
  v10 = sub_1C0D7812C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C0D7815C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C0D7814C();
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1C0D19B64()
{
  result = qword_1EBE6D6D0;
  if (!qword_1EBE6D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D6D0);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C0D19BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C0D19C34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C0D19C94(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = sub_1C0D78AEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v11 = sub_1C0D78AAC();
  v13 = v12;

  result = (*(v7 + 8))(v10, v6);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_1C0D053E8(a1, 1);
    v17 = v16;
    v36 = v11;
    v37 = v13;
    v18 = MEMORY[0x1E6969080];
    v19 = MEMORY[0x1E6969078];
    v34 = MEMORY[0x1E6969080];
    v35 = MEMORY[0x1E6969078];
    v32 = v15;
    v33 = v16;
    v20 = __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x1E6969080]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C0D134D0(v11, v13);
    sub_1C0CF6468(v15, v17);
    sub_1C0D4268C(v21, v22);
    sub_1C0CF448C(v15, v17);
    sub_1C0D13830(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v23 = v36;
    v24 = v37;
    v25 = sub_1C0D1E970(a2, a3 & 1);
    v27 = v26;
    v38 = v23;
    v39 = v24;
    v34 = v18;
    v35 = v19;
    v32 = v25;
    v33 = v26;
    v28 = __swift_project_boxed_opaque_existential_1(&v32, v18);
    v29 = *v28;
    v30 = v28[1];
    sub_1C0CF6468(v23, v24);
    sub_1C0CF6468(v25, v27);
    sub_1C0D4268C(v29, v30);
    sub_1C0CF448C(v25, v27);
    sub_1C0CF448C(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    return v38;
  }

  return result;
}

unint64_t sub_1C0D19EF0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  v174 = a3;
  v15 = sub_1C0D78AEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8)
  {
    v173 = a5;
    sub_1C0D78ABC();
    v21 = sub_1C0D78AAC();
    a5 = v22;
    result = (*(v16 + 8))(v20, v15);
    if (a5 >> 60 == 15)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v23 = sub_1C0D19C94(v9, a6, 1);
    v25 = v24;
    v183 = v21;
    v184 = a5;
    a6 = MEMORY[0x1E6969080];
    v181 = MEMORY[0x1E6969080];
    v182 = MEMORY[0x1E6969078];
    v179 = v23;
    v180 = v24;
    v26 = __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x1E6969080]);
    v27 = *v26;
    v28 = v26[1];
    sub_1C0D134D0(v21, a5);
    sub_1C0CF6468(v23, v25);
    sub_1C0D4268C(v27, v28);
    sub_1C0CF448C(v23, v25);
    sub_1C0D13830(v21, a5);
    result = __swift_destroy_boxed_opaque_existential_1(&v179);
    v171 = v184;
    v172 = v183;
    v29 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      v9 = MEMORY[0x1E6969078];
      if (!v29)
      {
        result = BYTE6(a2);
        goto LABEL_28;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        result = HIDWORD(a1) - a1;
        goto LABEL_28;
      }

      goto LABEL_87;
    }
  }

  else
  {
    v30 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v30)
      {
        v31 = BYTE6(a2);
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v30 != 2)
    {
      v31 = 0;
      goto LABEL_20;
    }

    v32 = *(a1 + 16);
    v29 = *(a1 + 24);
    v31 = v29 - v32;
    if (!__OFSUB__(v29, v32))
    {
LABEL_20:
      v35 = sub_1C0D053E8(v31, 2);
      v37 = v36;
      v183 = v35;
      v184 = v36;
      a6 = MEMORY[0x1E6969080];
      v181 = MEMORY[0x1E6969080];
      v182 = MEMORY[0x1E6969078];
      v179 = a1;
      v180 = a2;
      v38 = __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x1E6969080]);
      v39 = *v38;
      v40 = v38[1];
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v35, v37);
      sub_1C0D4268C(v39, v40);
      sub_1C0CF448C(v35, v37);
      result = __swift_destroy_boxed_opaque_existential_1(&v179);
      v42 = v9;
      v43 = v183;
      v44 = v184;
      if (v42 == 2)
      {
        if (a4 >> 60 == 15)
        {
LABEL_99:
          __break(1u);
          return result;
        }

        v45 = a4 >> 62;
        v173 = a5;
        v170 = a4;
        if ((a4 >> 62) > 1)
        {
          if (v45 == 2)
          {
            v57 = *(v174 + 16);
            v56 = *(v174 + 24);
            v46 = v56 - v57;
            if (__OFSUB__(v56, v57))
            {
              __break(1u);
LABEL_37:
              v55 = MEMORY[0x1E6969078];
              if (v56 == 2)
              {
                v59 = *(v174 + 16);
                v58 = *(v174 + 24);
                result = v58 - v59;
                if (__OFSUB__(v58, v59))
                {
LABEL_91:
                  __break(1u);
                  goto LABEL_92;
                }

                v53 = a6;
              }

              else
              {
                v53 = a6;
                result = 0;
              }

              goto LABEL_61;
            }
          }

          else
          {
            v46 = 0;
          }
        }

        else if (v45)
        {
          if (__OFSUB__(HIDWORD(v174), v174))
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v46 = HIDWORD(v174) - v174;
        }

        else
        {
          v46 = BYTE6(a4);
        }

        v60 = sub_1C0D053E8(v46, 2);
        v62 = v61;
        v175 = v43;
        v176 = v44;
        v181 = a6;
        v63 = a6;
        v64 = MEMORY[0x1E6969078];
        v182 = MEMORY[0x1E6969078];
        v179 = v60;
        v180 = v61;
        v65 = __swift_project_boxed_opaque_existential_1(&v179, v63);
        v66 = v44;
        v67 = *v65;
        v68 = v65[1];
        sub_1C0CF6468(v43, v66);
        sub_1C0CF6468(v60, v62);
        sub_1C0D4268C(v67, v68);
        sub_1C0CF448C(v60, v62);
        __swift_destroy_boxed_opaque_existential_1(&v179);
        v69 = v175;
        v70 = v176;
        v177 = v175;
        v178 = v176;
        v181 = v63;
        v182 = v64;
        a6 = v63;
        v71 = v174;
        v72 = v170;
        v179 = v174;
        v180 = v170;
        v73 = __swift_project_boxed_opaque_existential_1(&v179, a6);
        v74 = *v73;
        v75 = v73[1];
        sub_1C0CF6468(v69, v70);
        sub_1C0D134D0(v71, v72);
        sub_1C0D4268C(v74, v75);
        sub_1C0CF448C(v69, v70);
        __swift_destroy_boxed_opaque_existential_1(&v179);
        sub_1C0CF448C(v43, v66);
        v43 = v177;
        v44 = v178;
        a5 = v173;
      }

      result = [a5 serializedPublicKey_];
      if (!result)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v76 = result;
      v77 = sub_1C0D7832C();
      v79 = v78;

      v80 = v79;
      v81 = v79 >> 62;
      v82 = a6;
      if ((v79 >> 62) <= 1)
      {
        a6 = MEMORY[0x1E6969078];
        if (!v81)
        {
          sub_1C0CF448C(v77, v79);
          v83 = BYTE6(v79);
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      if (v81 == 2)
      {
        v85 = *(v77 + 16);
        v84 = *(v77 + 24);
        sub_1C0CF448C(v77, v80);
        v83 = v84 - v85;
        if (__OFSUB__(v84, v85))
        {
          __break(1u);
LABEL_54:
          result = sub_1C0CF448C(v77, v80);
          if (__OFSUB__(HIDWORD(v77), v77))
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v83 = HIDWORD(v77) - v77;
LABEL_58:
          v86 = sub_1C0D053E8(v83, 2);
          v88 = v87;
          v177 = v43;
          v178 = v44;
          v181 = v82;
          v182 = a6;
          v179 = v86;
          v180 = v87;
          v89 = __swift_project_boxed_opaque_existential_1(&v179, v82);
          v90 = v44;
          v91 = *v89;
          v92 = v89[1];
          v174 = v90;
          sub_1C0CF6468(v43, v90);
          sub_1C0CF6468(v86, v88);
          sub_1C0D4268C(v91, v92);
          sub_1C0CF448C(v86, v88);
          __swift_destroy_boxed_opaque_existential_1(&v179);
          v93 = v177;
          v94 = v178;
          result = [a5 serializedPublicKey_];
          if (result)
          {
            v95 = result;
            v96 = sub_1C0D7832C();
            v98 = v97;

            v175 = v93;
            v176 = v94;
            v181 = v82;
            v182 = a6;
            v179 = v96;
            v180 = v98;
            v99 = __swift_project_boxed_opaque_existential_1(&v179, v82);
            v100 = *v99;
            v101 = v99[1];
            sub_1C0CF6468(v93, v94);
            sub_1C0CF6468(v96, v98);
            sub_1C0D4268C(v100, v101);
            sub_1C0CF448C(v96, v98);
            sub_1C0CF448C(v93, v94);
            __swift_destroy_boxed_opaque_existential_1(&v179);
            v102 = v175;
            v103 = v176;
            v104 = sub_1C0D07698(0x657A696C616E6946, 0xE800000000000000);
            v106 = v105;
            v177 = v102;
            v178 = v103;
            v181 = v82;
            v182 = a6;
            v179 = v104;
            v180 = v105;
            v107 = __swift_project_boxed_opaque_existential_1(&v179, v82);
            v108 = *v107;
            v109 = v107[1];
            sub_1C0CF6468(v102, v103);
            sub_1C0CF6468(v104, v106);
            sub_1C0D4268C(v108, v109);
            sub_1C0CF448C(v104, v106);
            sub_1C0CF448C(v102, v103);
            __swift_destroy_boxed_opaque_existential_1(&v179);
            sub_1C0CF448C(v43, v174);
            return v177;
          }

          goto LABEL_97;
        }
      }

      else
      {
        sub_1C0CF448C(v77, v79);
        v83 = 0;
      }

      a6 = MEMORY[0x1E6969078];
      goto LABEL_58;
    }

    __break(1u);
  }

  v9 = MEMORY[0x1E6969078];
  if (v29 != 2)
  {
    result = 0;
    goto LABEL_28;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  result = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    __break(1u);
LABEL_17:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v31 = HIDWORD(a1) - a1;
    goto LABEL_20;
  }

LABEL_28:
  v47 = sub_1C0D053E8(result, 2);
  v49 = v48;
  v183 = v47;
  v184 = v48;
  v181 = a6;
  v182 = v9;
  v179 = a1;
  v180 = a2;
  v50 = __swift_project_boxed_opaque_existential_1(&v179, a6);
  v51 = *v50;
  v52 = v50[1];
  sub_1C0CF6468(v47, v49);
  sub_1C0CF6468(a1, a2);
  sub_1C0D4268C(v51, v52);
  sub_1C0CF448C(v47, v49);
  result = __swift_destroy_boxed_opaque_existential_1(&v179);
  a2 = v183;
  v43 = v184;
  if (a4 >> 60 == 15)
  {
    v53 = a6;
    v174 = 0;
    result = 0;
    v54 = 0xC000000000000000;
    v55 = MEMORY[0x1E6969078];
    goto LABEL_62;
  }

  v56 = a4 >> 62;
  v41 = a4;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_37;
  }

  v55 = MEMORY[0x1E6969078];
  if (!v56)
  {
    v53 = a6;
    v54 = v41;
    result = BYTE6(v41);
    goto LABEL_62;
  }

  if (__OFSUB__(HIDWORD(v174), v174))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v53 = a6;
  result = HIDWORD(v174) - v174;
LABEL_61:
  v54 = v41;
LABEL_62:
  v110 = sub_1C0D053E8(result, 2);
  v112 = v111;
  v177 = a2;
  v178 = v43;
  v181 = v53;
  v182 = v55;
  v179 = v110;
  v180 = v111;
  v113 = __swift_project_boxed_opaque_existential_1(&v179, v53);
  v114 = v55;
  v115 = *v113;
  v116 = v113[1];
  sub_1C0CF6468(a2, v43);
  sub_1C0CF6468(v110, v112);
  sub_1C0D4268C(v115, v116);
  sub_1C0CF448C(v110, v112);
  sub_1C0CF448C(a2, v43);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v117 = v177;
  v118 = v178;
  v183 = v177;
  v184 = v178;
  v181 = v53;
  v182 = v114;
  v119 = v174;
  v179 = v174;
  v180 = v54;
  v120 = v53;
  v121 = __swift_project_boxed_opaque_existential_1(&v179, v53);
  v122 = *v121;
  v123 = v121[1];
  sub_1C0CF6468(v117, v118);
  sub_1C0CF6468(v119, v54);
  sub_1C0D4268C(v122, v123);
  sub_1C0CF448C(v117, v118);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v124 = v183;
  v125 = v184;
  result = [v173 serializedPublicKey_];
  if (!result)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v126 = result;
  v127 = sub_1C0D7832C();
  v129 = v128;

  v130 = v129;
  v131 = v129 >> 62;
  if ((v129 >> 62) <= 1)
  {
    v132 = v120;
    if (!v131)
    {
      sub_1C0CF448C(v127, v129);
      v133 = BYTE6(v129);
      goto LABEL_73;
    }

LABEL_70:
    result = sub_1C0CF448C(v127, v130);
    if (!__OFSUB__(HIDWORD(v127), v127))
    {
      v133 = HIDWORD(v127) - v127;
      goto LABEL_73;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v132 = v120;
  if (v131 == 2)
  {
    v135 = *(v127 + 16);
    v134 = *(v127 + 24);
    sub_1C0CF448C(v127, v130);
    v133 = v134 - v135;
    if (__OFSUB__(v134, v135))
    {
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    sub_1C0CF448C(v127, v129);
    v133 = 0;
  }

LABEL_73:
  v136 = sub_1C0D053E8(v133, 2);
  v138 = v137;
  v177 = v124;
  v178 = v125;
  v181 = v132;
  v139 = MEMORY[0x1E6969078];
  v182 = MEMORY[0x1E6969078];
  v179 = v136;
  v180 = v137;
  v140 = __swift_project_boxed_opaque_existential_1(&v179, v132);
  v141 = *v140;
  v142 = v140[1];
  sub_1C0CF6468(v124, v125);
  sub_1C0CF6468(v136, v138);
  sub_1C0D4268C(v141, v142);
  sub_1C0CF448C(v136, v138);
  sub_1C0CF448C(v124, v125);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v143 = v177;
  v144 = v178;
  result = [v173 serializedPublicKey_];
  if (!result)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v145 = result;
  v146 = sub_1C0D7832C();
  v148 = v147;

  v183 = v143;
  v184 = v144;
  v181 = v132;
  v182 = v139;
  v179 = v146;
  v180 = v148;
  v149 = __swift_project_boxed_opaque_existential_1(&v179, v132);
  v150 = *v149;
  v151 = v149[1];
  sub_1C0CF6468(v143, v144);
  sub_1C0CF6468(v146, v148);
  sub_1C0D4268C(v150, v151);
  sub_1C0CF448C(v146, v148);
  sub_1C0CF448C(v143, v144);
  result = __swift_destroy_boxed_opaque_existential_1(&v179);
  v152 = v183;
  v153 = v184;
  v154 = v171;
  v155 = v171 >> 62;
  if ((v171 >> 62) > 1)
  {
    if (v155 != 2)
    {
      result = 0;
      goto LABEL_84;
    }

    v157 = *(v172 + 16);
    v156 = *(v172 + 24);
    result = v156 - v157;
    if (!__OFSUB__(v156, v157))
    {
      goto LABEL_84;
    }

    __break(1u);
LABEL_81:
    if (!__OFSUB__(HIDWORD(v172), v172))
    {
      result = HIDWORD(v172) - v172;
      goto LABEL_84;
    }

    goto LABEL_90;
  }

  if (v155)
  {
    goto LABEL_81;
  }

  result = BYTE6(v171);
LABEL_84:
  v158 = sub_1C0D053E8(result, 2);
  v160 = v159;
  v177 = v152;
  v178 = v153;
  v181 = v132;
  v182 = v139;
  v179 = v158;
  v180 = v159;
  v161 = __swift_project_boxed_opaque_existential_1(&v179, v132);
  v162 = *v161;
  v163 = v161[1];
  sub_1C0CF6468(v152, v153);
  sub_1C0CF6468(v158, v160);
  sub_1C0D4268C(v162, v163);
  sub_1C0CF448C(v158, v160);
  sub_1C0CF448C(v152, v153);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v164 = v177;
  v165 = v178;
  v183 = v177;
  v184 = v178;
  v181 = v132;
  v182 = v139;
  v179 = v172;
  v180 = v154;
  v166 = __swift_project_boxed_opaque_existential_1(&v179, v132);
  v167 = *v166;
  v168 = v166[1];
  sub_1C0CF6468(v164, v165);
  sub_1C0D4268C(v167, v168);
  sub_1C0CF448C(v164, v165);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  return v183;
}

id sub_1C0D1AAB4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unint64_t a6, char a7)
{
  v33 = a1;
  v34 = a4;
  v12 = sub_1C0D78AEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v17 = sub_1C0D78AAC();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (v19 >> 60 == 15)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = sub_1C0D19C94(a5, a6, a7 & 1);
    v22 = v21;
    v36 = v17;
    v37 = v19;
    v35[3] = MEMORY[0x1E6969080];
    v35[4] = MEMORY[0x1E6969078];
    v35[0] = v20;
    v35[1] = v21;
    v23 = __swift_project_boxed_opaque_existential_1(v35, MEMORY[0x1E6969080]);
    v24 = *v23;
    v25 = v23[1];
    sub_1C0D134D0(v17, v19);
    sub_1C0CF6468(v20, v22);
    sub_1C0D4268C(v24, v25);
    sub_1C0CF448C(v20, v22);
    sub_1C0D13830(v17, v19);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v26 = v36;
    v27 = v37;
    sub_1C0D3F7B4(a2, a3, v36, v37);
    v29 = v28;
    v30 = sub_1C0D13834(v34, v28);

    sub_1C0CF448C(v26, v27);
    v31 = v34;
    *v33 = v30;

    return v31;
  }

  return result;
}

uint64_t sub_1C0D1ACEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, char a10, unint64_t a11, unsigned __int8 a12)
{
  v131 = a8;
  v132 = a7;
  v136 = a6;
  v141 = a5;
  v142 = a3;
  v143 = a4;
  v140 = a2;
  v139 = a1;
  v13 = sub_1C0D789FC();
  v130 = *(v13 - 8);
  v14 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C0D7866C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1C0D786CC();
  v134 = *(v135 - 1);
  v21 = v134[8];
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C0D78AEC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  result = MEMORY[0x1EEE9AC00](v23);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a10 != 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v126 = v13;
  v127 = v20;
  v128 = v17;
  v137 = a12;
  v138 = a11;
  v29 = sub_1C0D19C94(1u, a11, a12 & 1);
  v31 = v30;
  sub_1C0D78ABC();
  v32 = sub_1C0D78AAC();
  v34 = v33;
  result = (*(v24 + 8))(v28, v23);
  if (v34 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v152 = v32;
  v153 = v34;
  v35 = MEMORY[0x1E6969080];
  v150 = MEMORY[0x1E6969080];
  v151 = MEMORY[0x1E6969078];
  v148 = v29;
  v149 = v31;
  v36 = __swift_project_boxed_opaque_existential_1(&v148, MEMORY[0x1E6969080]);
  v37 = v29;
  v38 = *v36;
  v39 = v36[1];
  sub_1C0D134D0(v32, v34);
  v154 = v37;
  sub_1C0CF6468(v37, v31);
  sub_1C0D4268C(v38, v39);
  sub_1C0D13830(v32, v34);
  result = __swift_destroy_boxed_opaque_existential_1(&v148);
  v41 = v152;
  v40 = v153;
  v42 = v143;
  v145 = v31;
  v125 = v16;
  if (v143 >> 60 != 15)
  {
    v44 = v143 >> 62;
    v45 = v142;
    if ((v143 >> 62) > 1)
    {
      if (v44 != 2)
      {
        result = 0;
        goto LABEL_15;
      }

      v47 = *(v142 + 16);
      v46 = *(v142 + 24);
      result = v46 - v47;
      if (!__OFSUB__(v46, v47))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v44)
    {
      result = BYTE6(v143);
LABEL_15:
      v43 = v45;
      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v45), v45))
    {
      result = HIDWORD(v45) - v45;
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  v43 = 0;
  result = 0;
  v42 = 0xC000000000000000;
LABEL_16:
  v48 = sub_1C0D053E8(result, 2);
  v50 = v49;
  v146 = v41;
  v147 = v40;
  v150 = v35;
  v151 = MEMORY[0x1E6969078];
  v148 = v48;
  v149 = v49;
  v51 = __swift_project_boxed_opaque_existential_1(&v148, v35);
  v52 = v40;
  v53 = v41;
  v54 = *v51;
  v55 = v51[1];
  v144 = v52;
  sub_1C0CF6468(v53, v52);
  sub_1C0CF6468(v48, v50);
  sub_1C0D4268C(v54, v55);
  sub_1C0CF448C(v48, v50);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  v56 = v146;
  v57 = v147;
  v152 = v146;
  v153 = v147;
  v150 = v35;
  v151 = MEMORY[0x1E6969078];
  v148 = v43;
  v149 = v42;
  v58 = __swift_project_boxed_opaque_existential_1(&v148, v35);
  v59 = *v58;
  v60 = v58[1];
  sub_1C0CF6468(v56, v57);
  sub_1C0CF6468(v43, v42);
  sub_1C0D4268C(v59, v60);
  sub_1C0CF448C(v56, v57);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  v62 = v152;
  v61 = v153;
  v63 = v154;
  inited = v145;
  v65 = sub_1C0D0E898(v152, v153, v154, v145);
  if (v12)
  {
    sub_1C0CF448C(v62, v61);
    sub_1C0CF448C(v53, v144);
    sub_1C0CF448C(v63, inited);
    return inited;
  }

  v121 = v62;
  v122 = v61;
  v124 = v53;
  v66 = v65;
  v123 = v65;
  sub_1C0D7896C();
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v119 = 0;
  v67 = v133;
  sub_1C0D786EC();
  v68 = sub_1C0D786BC();
  v69 = v134[1];
  v70 = v135;
  v69(v67, v135);
  v71 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v72 = sub_1C0D13834(v66, v71);

  v120 = v72;
  v134 = sub_1C0D1388C(a9, v72);
  v73 = v137;
  v74 = v138;

  sub_1C0D786EC();
  v75 = sub_1C0D786BC();
  v69(v67, v70);
  v135 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C0D7B690;
  v76 = v146;
  v77 = v136;
  *(inited + 4) = v136;
  *(inited + 5) = v76;
  v78 = v77;
  v79 = v76;
  v80 = v74;
  v81 = v134;
  v82 = sub_1C0D19C94(1u, v80, v73 & 1);
  v84 = v83;
  v85 = v119;
  sub_1C0D1EAA0(&v148, 0, v81, v82, v83, inited, v73 & 1);
  if (v85)
  {
    sub_1C0CF448C(v121, v122);

    sub_1C0CF448C(v82, v84);

    sub_1C0CF448C(v124, v144);
    sub_1C0CF448C(v154, v145);

    return inited;
  }

  v119 = v78;
  v133 = v79;
  v87 = v86;

  v88 = v131;
  v89 = sub_1C0D13834(v131, v135);
  v90 = v132;
  v91 = sub_1C0D13834(v132, v81);
  v136 = sub_1C0D1388C(v89, v91);

  v92 = sub_1C0D13834(v88, v87);
  v93 = v148;
  v94 = sub_1C0D13834(v90, v148);
  v95 = v87;
  v96 = sub_1C0D1388C(v92, v94);

  v97 = v93;
  v98 = v73 & 1;
  v99 = v95;
  v131 = v96;
  sub_1C0D1FCCC(v82, v84, v134, v95, v93, v136, v96, v98);
  v101 = v154;
  v102 = v100;
  v103 = v97;
  v104 = [v100 isEqual_];
  sub_1C0CF448C(v82, v84);

  inited = v120;
  if ((v104 & 1) == 0)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v117 = 0;
    swift_willThrow();
    sub_1C0CF448C(v121, v122);

    sub_1C0CF448C(v124, v144);
    sub_1C0CF448C(v101, v145);

    return inited;
  }

  v105 = v120;
  result = [v141 inverseModOrder];
  if (result)
  {
    v106 = result;
    v107 = sub_1C0D13834(result, v119);
    v141 = v107;

    v108 = sub_1C0D19EF0(v139, v140, v142, v143, v107, v138, 1, v137 & 1);
    v110 = v109;
    sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
    v111 = v129;
    v112 = v126;
    sub_1C0D7863C();
    sub_1C0CF6468(v108, v110);
    sub_1C0D208E4(v108, v110);
    sub_1C0CF448C(v108, v110);
    v113 = v127;
    sub_1C0D7862C();
    sub_1C0CF448C(v108, v110);
    (*(v130 + 8))(v111, v112);
    v114 = v125;
    v150 = v125;
    v151 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v148);
    v116 = v128;
    (*(v128 + 16))(boxed_opaque_existential_1, v113, v114);
    __swift_project_boxed_opaque_existential_1(&v148, v150);
    sub_1C0D7819C();
    sub_1C0CF448C(v121, v122);

    sub_1C0CF448C(v124, v144);
    sub_1C0CF448C(v154, v145);
    (*(v116 + 8))(v113, v114);

    inited = v152;
    __swift_destroy_boxed_opaque_existential_1(&v148);
    return inited;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C0D1BA14(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, unsigned __int8 a10, unint64_t a11, char a12)
{
  v172 = a8;
  v171 = a7;
  v173 = a6;
  v175 = a5;
  v16 = sub_1C0D789FC();
  v167 = *(v16 - 8);
  v17 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1C0D7866C();
  v169 = *(v170 - 8);
  v19 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C0D786CC();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  if (a12)
  {
    sub_1C0D1ACEC(a1, a2, a3, a4, v175, v173, v171, v172, a9, a10, a11, 1u);
    return;
  }

  v161 = a9;
  v163 = a1;
  v164 = a2;
  v165 = a11;
  v162 = a3;
  v26 = (a4 >> 60);
  if (a4 >> 60 != 15 && a10 == 1)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    return;
  }

  v155 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v25;
  v157 = v23;
  v158 = a4;
  v154 = v16;
  v28 = a10;
  v29 = v165;
  v159 = sub_1C0D19C94(a10, v165, 0);
  v160 = v30;

  if (a10 == 1)
  {
    sub_1C0D7896C();
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    v31 = v155;
    sub_1C0D786EC();
    v32 = sub_1C0D786BC();
    (v156)[1](v31, v157);
    v157 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0D7B690;
    v34 = v185;
    v35 = v173;
    *(inited + 32) = v185;
    *(inited + 40) = v35;
    v28 = v34;
    v36 = v35;
    a2 = sub_1C0D19C94(1u, v29, 0);
    v26 = v161;
    v173 = v37;
    v38 = v174;
    sub_1C0D1EAA0(&v177, 0, v161, a2, v37, inited, 0);
    a3 = v38;
    v40 = v172;
    if (v38)
    {
      v41 = v157;

      sub_1C0CF448C(v159, v160);
      sub_1C0CF448C(a2, v173);
LABEL_20:

      return;
    }

    goto LABEL_18;
  }

  if (a10 != 2)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v42 = sub_1C0D07698(1868983881, 0xE400000000000000);
  v44 = v174;
  if (v26 <= 0xE)
  {
    v36 = v42;
    v40 = v43;
    v45 = v158 >> 62;
    if ((v158 >> 62) > 1)
    {
      if (v45 == 2)
      {
        v47 = v162[2];
        v46 = v162[3];
        v39 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          __break(1u);
LABEL_18:
          v48 = v39;
          v155 = v36;
          v156 = v28;

          v49 = sub_1C0D13834(v40, v157);
          v50 = v171;
          v51 = sub_1C0D13834(v171, v26);
          v52 = sub_1C0D1388C(v49, v51);

          v53 = v52;
          v54 = v50;
          v55 = sub_1C0D13834(v40, v48);
          v56 = v177;
          v57 = sub_1C0D13834(v54, v177);
          v58 = sub_1C0D1388C(v55, v57);

          v59 = v173;
          v174 = v53;
          v60 = v53;
          v61 = v58;
          sub_1C0D1FCCC(a2, v173, v161, v48, v56, v60, v58, 0);
          if (a3)
          {
            v41 = v157;

            sub_1C0CF448C(v159, v160);
            sub_1C0CF448C(a2, v59);

            v28 = v156;
            goto LABEL_20;
          }

          v102 = v62;
          v103 = [v62 isEqual_];
          sub_1C0CF448C(a2, v59);

          v104 = v164;
          if (v103)
          {
            v105 = [v175 inverseModOrder];
            if (v105)
            {
              v106 = v105;
              v107 = sub_1C0D13834(v105, v155);
              v175 = v107;

              v108 = sub_1C0D19EF0(v163, v104, v162, v158, v107, v29, 1, 0);
              v110 = v109;
              sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
              v111 = v166;
              v112 = v154;
              sub_1C0D7863C();
              sub_1C0CF6468(v108, v110);
              sub_1C0D208E4(v108, v110);
              sub_1C0CF448C(v108, v110);
              v113 = v168;
              sub_1C0D7862C();
              sub_1C0CF448C(v108, v110);
              (*(v167 + 8))(v111, v112);
              v114 = v170;
              v179 = v170;
              v180 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
              v116 = v169;
              (*(v169 + 16))(boxed_opaque_existential_1, v113, v114);
              __swift_project_boxed_opaque_existential_1(&v177, v179);
              sub_1C0D7819C();
              sub_1C0CF448C(v159, v160);

              (*(v116 + 8))(v113, v114);
              v117 = &v177;
LABEL_34:

              __swift_destroy_boxed_opaque_existential_1(&v177);
              return;
            }

            goto LABEL_40;
          }

          sub_1C0D20BA4();
          swift_allocError();
          *v133 = 0;
          swift_willThrow();
          sub_1C0CF448C(v159, v160);
          v134 = &v177;
LABEL_36:

          return;
        }
      }

      else
      {
        v39 = 0;
      }

LABEL_24:
      v63 = sub_1C0D053E8(v39, 2);
      v65 = v64;
      v181 = v36;
      v182 = v40;
      v66 = MEMORY[0x1E6969080];
      v179 = MEMORY[0x1E6969080];
      v180 = MEMORY[0x1E6969078];
      v177 = v63;
      v178 = v64;
      v67 = __swift_project_boxed_opaque_existential_1(&v177, MEMORY[0x1E6969080]);
      v69 = *v67;
      v68 = v67[1];
      sub_1C0CF6468(v36, v40);
      sub_1C0CF6468(v63, v65);
      sub_1C0D4268C(v69, v68);
      sub_1C0CF448C(v63, v65);
      sub_1C0CF448C(v36, v40);
      __swift_destroy_boxed_opaque_existential_1(&v177);
      v70 = v181;
      v71 = v182;
      v183 = v181;
      v184 = v182;
      v179 = v66;
      v180 = MEMORY[0x1E6969078];
      v72 = v162;
      v73 = v158;
      v177 = v162;
      v178 = v158;
      v74 = __swift_project_boxed_opaque_existential_1(&v177, v66);
      v75 = *v74;
      v76 = v74[1];
      sub_1C0CF6468(v70, v71);
      sub_1C0D134D0(v72, v73);
      sub_1C0D4268C(v75, v76);
      sub_1C0CF448C(v70, v71);
      __swift_destroy_boxed_opaque_existential_1(&v177);
      v78 = v183;
      v77 = v184;
      v79 = v159;
      v80 = v160;
      v81 = sub_1C0D0E898(v183, v184, v159, v160);
      if (v44)
      {

        sub_1C0CF448C(v79, v80);
        sub_1C0CF448C(v78, v77);
        return;
      }

      v82 = v81;
      v153 = v78;
      v174 = v77;
      sub_1C0D7896C();
      v152 = sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
      v83 = v155;
      sub_1C0D786EC();
      v84 = sub_1C0D786BC();
      v85 = v156[1];
      v86 = v157;
      v85(v83, v157);
      v87 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      v88 = sub_1C0D13834(v82, v87);

      v156 = v88;
      v89 = sub_1C0D1388C(v88, v161);
      v90 = v82;
      v91 = v89;
      sub_1C0D786EC();
      v92 = sub_1C0D786BC();
      v85(v83, v86);
      v93 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_1C0D7B690;
      v95 = v185;
      v96 = v173;
      *(v94 + 32) = v173;
      *(v94 + 40) = v95;
      v97 = v96;
      v98 = v95;
      v99 = sub_1C0D19C94(2u, v165, 0);
      v101 = v100;
      sub_1C0D1EAA0(&v177, 0, v91, v99, v100, v94, 0);
      v151 = v97;
      v152 = v98;
      v155 = v90;
      v119 = v118;

      v120 = v172;
      v121 = sub_1C0D13834(v172, v93);
      v161 = v93;
      v122 = v171;
      v123 = sub_1C0D13834(v171, v91);
      v157 = sub_1C0D1388C(v121, v123);

      v124 = sub_1C0D13834(v120, v119);
      v125 = v177;
      v126 = sub_1C0D13834(v122, v177);
      v173 = v91;
      v127 = v126;
      v128 = sub_1C0D1388C(v124, v126);

      v129 = v119;
      v130 = v119;
      v131 = v157;
      sub_1C0D1FCCC(v99, v101, v173, v130, v125, v157, v128, 0);
      v135 = v132;
      v136 = [v132 isEqual_];
      sub_1C0CF448C(v99, v101);

      if (v136)
      {
        v137 = [v175 inverseModOrder];
        if (v137)
        {
          v138 = v137;
          v139 = sub_1C0D13834(v137, v151);

          v140 = sub_1C0D19EF0(v163, v164, v162, v158, v139, v165, 2, 0);
          v142 = v141;
          sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
          v143 = v166;
          v144 = v154;
          sub_1C0D7863C();
          sub_1C0CF6468(v140, v142);
          sub_1C0D208E4(v140, v142);
          sub_1C0CF448C(v140, v142);
          v145 = v168;
          sub_1C0D7862C();
          sub_1C0CF448C(v140, v142);
          (*(v167 + 8))(v143, v144);
          v146 = v170;
          v179 = v170;
          v180 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408]);
          v147 = __swift_allocate_boxed_opaque_existential_1(&v177);
          v148 = v169;
          (*(v169 + 16))(v147, v145, v146);
          __swift_project_boxed_opaque_existential_1(&v177, v179);
          sub_1C0D7819C();
          sub_1C0CF448C(v159, v160);
          sub_1C0CF448C(v153, v174);

          (*(v148 + 8))(v145, v146);
          v117 = &v176;
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      sub_1C0D20BA4();
      swift_allocError();
      *v149 = 0;
      swift_willThrow();
      sub_1C0CF448C(v159, v160);
      sub_1C0CF448C(v153, v174);

      v134 = &v186;
      goto LABEL_36;
    }

    if (!v45)
    {
      v39 = BYTE6(v158);
      goto LABEL_24;
    }

    if (!__OFSUB__(HIDWORD(v162), v162))
    {
      v39 = HIDWORD(v162) - v162;
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t PIR.BlindedKeyword.blindedElement.getter()
{
  v1 = *(v0 + 32);
  sub_1C0CF6468(v1, *(v0 + 40));
  return v1;
}

uint64_t PIR.BlindedKeyword.blindedElement.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C0CF448C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1C0D1CD00()
{
  if (qword_1EBE6CC60 != -1)
  {
    result = swift_once();
  }

  if (qword_1EBE72CE0 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72CE8 = 2 * qword_1EBE72CE0;
  }

  return result;
}

unint64_t sub_1C0D1CD80(uint64_t a1, SEL *a2, unint64_t *a3)
{
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  sub_1C0D7896C();
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  (*(v6 + 8))(v9, v5);
  result = [v10 *a2];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t PIR.SymmetricPIRClient.init(serverPublicKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[0] = 0;
  v21 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  (*(v7 + 8))(v10, v6);
  v12 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v13 = sub_1C0D7830C();
  v14 = [v12 initFromPublicKeyBytes:v13 inGroup:v11 compressed:1 corecryptoError:&v21];

  sub_1C0CF448C(a1, a2);
  if (v14)
  {
    result = sub_1C0CF448C(a1, a2);
    v16 = v20[0];
    *a3 = 1;
    *(a3 + 8) = 4;
    *(a3 + 16) = v16;
    *(a3 + 24) = v14;
  }

  else
  {
    v17 = v21;
    sub_1C0CF8DE0();
    swift_allocError();
    *v18 = v17;
    *(v18 + 4) = 0;
    swift_willThrow();
    result = sub_1C0CF448C(a1, a2);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PIR.SymmetricPIRClient.blindKeyword(keyword:blind:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v51 = a1;
  v52 = a2;
  v54[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v5;
  v14 = *(v5 + 1);
  v15 = v5[16];
  if (a4 >> 60 == 15)
  {
    sub_1C0D7896C();
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    sub_1C0D786EC();
    v16 = sub_1C0D786BC();
    (*(v10 + 8))(v13, v9);
    v17 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v17)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v18 = v17;
    v19 = sub_1C0D1AAB4(v54, v51, v52, v17, v50, v14, v15);
  }

  else
  {
    v53 = 0;
    sub_1C0D7896C();
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a3, a4);
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    sub_1C0D786EC();
    v20 = sub_1C0D786BC();
    (*(v10 + 8))(v13, v9);
    v21 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v22 = sub_1C0D7830C();
    v23 = [v21 initWithData:v22 inGroup:v20 reduction:0 corecryptoError:&v53];

    sub_1C0D13830(a3, a4);
    if (!v23)
    {
      v47 = v53;
      sub_1C0CF8DE0();
      swift_allocError();
      *v48 = v47;
      *(v48 + 4) = 0;
      swift_willThrow();
      result = sub_1C0D13830(a3, a4);
      goto LABEL_34;
    }

    sub_1C0D13830(a3, a4);
    v19 = sub_1C0D1AAB4(v54, v51, v52, v23, v50, v14, v15);
  }

  v24 = v54[0];
  v25 = [v19 serializedBigEndianScalar];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C0D7832C();
    v29 = v28;

    v30 = [v24 serializedPublicKey_];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1C0D7832C();
      v34 = v33;

      v35 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v35 != 2)
        {
          v36 = 0;
          goto LABEL_18;
        }

        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        v36 = v37 - v38;
        if (!__OFSUB__(v37, v38))
        {
LABEL_18:
          if (qword_1EBE6CC60 != -1)
          {
            swift_once();
          }

          if (v36 != qword_1EBE72CE0)
          {
            __break(1u);
            goto LABEL_37;
          }

          v39 = v34 >> 62;
          if ((v34 >> 62) > 1)
          {
            if (v39 != 2)
            {
              v36 = 0;
              goto LABEL_31;
            }

            v41 = *(v32 + 16);
            v40 = *(v32 + 24);
            v36 = v40 - v41;
            if (!__OFSUB__(v40, v41))
            {
LABEL_31:
              if (qword_1EBE6CC70 == -1)
              {
LABEL_32:
                v42 = qword_1EBE72CF0;

                if (v36 == v42)
                {
                  v43 = v51;
                  v44 = v52;
                  *a5 = v51;
                  a5[1] = v44;
                  a5[2] = v27;
                  a5[3] = v29;
                  a5[4] = v32;
                  a5[5] = v34;
                  result = sub_1C0CF6468(v43, v44);
LABEL_34:
                  v46 = *MEMORY[0x1E69E9840];
                  return result;
                }

                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              swift_once();
              goto LABEL_32;
            }

            __break(1u);
          }

          else if (!v39)
          {
            v36 = BYTE6(v34);
            goto LABEL_31;
          }

          if (__OFSUB__(HIDWORD(v32), v32))
          {
            goto LABEL_40;
          }

          v36 = HIDWORD(v32) - v32;
          goto LABEL_31;
        }

        __break(1u);
      }

      else if (!v35)
      {
        v36 = BYTE6(v29);
        goto LABEL_18;
      }

      if (__OFSUB__(HIDWORD(v27), v27))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v36 = HIDWORD(v27) - v27;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D1D654(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v5 = BYTE6(v7);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v10 = v6 + 16;
  v6 = *(v6 + 16);
  v9 = *(v10 + 8);
  v5 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
    __break(1u);
LABEL_8:
    v11 = __OFSUB__(HIDWORD(v6), v6);
    v12 = HIDWORD(v6) - v6;
    if (v11)
    {
      __break(1u);
LABEL_42:
      result = swift_once();
LABEL_38:
      if (v5 == qword_1EBE72CE8)
      {
        return result;
      }

      goto LABEL_39;
    }

    v5 = v12;
  }

LABEL_11:
  if (qword_1EBE6CC60 != -1)
  {
    v21 = a2;
    v22 = a4;
    v23 = a5;
    v24 = a3;
    result = swift_once();
    a3 = v24;
    a2 = v21;
    a5 = v23;
    a4 = v22;
  }

  if (v5 != qword_1EBE72CE0)
  {
    goto LABEL_39;
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_44;
    }

    v14 = HIDWORD(a2) - a2;
  }

LABEL_24:
  if (qword_1EBE6CC70 != -1)
  {
    v25 = a4;
    v26 = a5;
    result = swift_once();
    a5 = v26;
    a4 = v25;
  }

  if (v14 == qword_1EBE72CF0)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v17)
      {
        v5 = BYTE6(a5);
        goto LABEL_37;
      }

LABEL_34:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v5 = HIDWORD(a4) - a4;
        goto LABEL_37;
      }

LABEL_44:
      __break(1u);
      return result;
    }

    if (v17 == 2)
    {
      v19 = *(a4 + 16);
      v18 = *(a4 + 24);
      v5 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_37:
    if (qword_1EBE6CC68 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_39:
  sub_1C0CF8DE0();
  swift_allocError();
  *v20 = 1;
  *(v20 + 4) = 1;
  return swift_willThrow();
}

char *PIR.SymmetricPIRClient.validateThenHash(blindedKeyword:evaluatedElement:proof:)(char *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v159 = a4;
  v160 = a5;
  v161 = a3;
  v170 = *MEMORY[0x1E69E9840];
  v150 = sub_1C0D789FC();
  v149 = *(v150 - 8);
  v8 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1C0D7866C();
  v151 = *(v147 - 8);
  v10 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C0D786CC();
  v157 = *(v155 - 1);
  v13 = *(v157 + 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = *(a1 + 1);
  v17 = *(a1 + 2);
  v18 = *(a1 + 5);
  LODWORD(v152) = *v5;
  v19 = *(v5 + 1);
  v20 = v5[16];
  v21 = *(v5 + 3);
  v165 = v16;
  v166 = v15;
  v167 = v17;
  v153 = *(a1 + 24);
  v168 = v153;
  v169 = v18;
  v156 = a2;
  v22 = v158;
  sub_1C0D1D654(&v165, a2, v161, v159, v160);
  if (v22)
  {
    goto LABEL_33;
  }

  v140 = v20;
  v145 = v17;
  v139 = v21;
  v141 = v19;
  v142 = v16;
  v143 = v15;
  v138 = v12;
  v144 = 0;
  LODWORD(v165) = 0;
  v23 = sub_1C0D7896C();
  v24 = v156;
  v25 = v161;
  sub_1C0CF6468(v156, v161);
  sub_1C0CF6468(v24, v25);
  v26 = sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v27 = v154;
  v158 = v26;
  sub_1C0D786EC();
  v28 = sub_1C0D786BC();
  v29 = v157 + 8;
  v30 = v155;
  v146 = *(v157 + 1);
  v146(v27, v155);
  v31 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v32 = sub_1C0D7830C();
  v33 = [v31 initFromPublicKeyBytes:v32 inGroup:v28 compressed:1 corecryptoError:&v165];

  sub_1C0CF448C(v24, v25);
  if (!v33)
  {
    v35 = v165;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v36 = v35;
    *(v36 + 4) = 0;
    swift_willThrow();
    v37 = v156;
    v38 = v25;
LABEL_32:
    sub_1C0CF448C(v37, v38);
    goto LABEL_33;
  }

  sub_1C0CF448C(v156, v25);
  v34 = v160 >> 62;
  if ((v160 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_12;
    }

    v39 = *(v159 + 16);
    v40 = *(v159 + 24);
  }

  else
  {
    if (!v34)
    {
      goto LABEL_12;
    }

    v39 = v159;
    v40 = v159 >> 32;
  }

  if (v40 < v39)
  {
    __break(1u);
  }

LABEL_12:
  v157 = v29;
  v41 = v30;
  v161 = v23;
  v156 = v33;
  v42 = sub_1C0D782DC();
  v44 = v43;
  sub_1C0CF6468(v42, v43);
  if (qword_1EBE6CC60 != -1)
  {
    swift_once();
  }

  v160 = qword_1EBE72CE0;
  sub_1C0D01560(qword_1EBE72CE0, v42, v44, &v165);
  v46 = v165;
  v45 = v166;
  LODWORD(v163) = 0;
  sub_1C0CF6468(v165, v166);
  sub_1C0D786EC();
  v47 = sub_1C0D786BC();
  v159 = v44;
  v48 = v47;
  v49 = v157;
  v146(v27, v41);
  v50 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v51 = sub_1C0D7830C();
  v52 = [v50 initWithData:v51 inGroup:v48 reduction:0 corecryptoError:&v163];

  sub_1C0CF448C(v46, v45);
  if (!v52)
  {
    v68 = v163;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v69 = v68;
    *(v69 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v46, v45);

    v37 = v42;
    v38 = v159;
    goto LABEL_32;
  }

  v137 = v52;
  sub_1C0CF448C(v46, v45);
  v53 = v160;
  sub_1C0D01F1C(v160, v42, v159, &v165);
  v54 = v165;
  v55 = v166;
  sub_1C0CF6468(v165, v166);
  v159 = v54;
  sub_1C0D01560(v53, v54, v55, &v165);
  v56 = v165;
  v57 = v166;
  LODWORD(v163) = 0;
  sub_1C0CF6468(v165, v166);
  sub_1C0D786EC();
  v58 = sub_1C0D786BC();
  v146(v27, v155);
  v59 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v60 = sub_1C0D7830C();
  v61 = [v59 initWithData:v60 inGroup:v58 reduction:0 corecryptoError:&v163];

  sub_1C0CF448C(v56, v57);
  if (!v61)
  {
    v70 = v163;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v71 = v70;
    *(v71 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v56, v57);

    v37 = v159;
    v38 = v55;
    goto LABEL_32;
  }

  v62 = v49;
  sub_1C0CF448C(v56, v57);
  sub_1C0D01F1C(v160, v159, v55, &v165);
  v64 = v165;
  v63 = v166;
  v65 = v166 >> 62;
  if ((v166 >> 62) <= 1)
  {
    v66 = v145;
    v67 = v153;
    if (v65)
    {
      if (v165 == v165 >> 32)
      {
        goto LABEL_26;
      }
    }

    else if ((v166 & 0xFF000000000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v72 = 1;
    *(v72 + 4) = 1;
    swift_willThrow();

    v73 = &v164;
LABEL_31:

    v37 = v64;
    v38 = v63;
    goto LABEL_32;
  }

  v66 = v145;
  v67 = v153;
  if (v65 == 2 && *(v165 + 16) != *(v165 + 24))
  {
    goto LABEL_24;
  }

LABEL_26:
  v74 = v61;
  LODWORD(v165) = 0;
  v75 = v67;
  sub_1C0CF6468(v66, v67);
  sub_1C0CF6468(v66, v75);
  v76 = v154;
  sub_1C0D786EC();
  a1 = sub_1C0D786BC();
  v146(v76, v155);
  v77 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v78 = sub_1C0D7830C();
  v79 = [v77 initWithData:v78 inGroup:a1 reduction:0 corecryptoError:&v165];

  sub_1C0CF448C(v66, v75);
  if (!v79)
  {
    v84 = v165;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v85 = v84;
    *(v85 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v66, v75);

    v73 = &v171;
    goto LABEL_31;
  }

  sub_1C0CF448C(v66, v75);
  if (v140)
  {
    v62 = v156;
    v80 = v137;
    v81 = v144;
    v82 = sub_1C0D1ACEC(v142, v143, 0, 0xF000000000000000, v79, v156, v137, v74, v139, v152, v141, 1u);
    v83 = v79;
    if (v81)
    {

      sub_1C0CF448C(v64, v63);
LABEL_33:
      v86 = *MEMORY[0x1E69E9840];
      return a1;
    }

LABEL_39:
    a1 = v82;

    sub_1C0CF448C(v64, v63);
    goto LABEL_33;
  }

  v88 = v152;
  v89 = v141;
  v90 = sub_1C0D19C94(v152, v141, 0);
  v80 = v91;

  if (v88 != 1)
  {
    if (v88 != 2)
    {
      __break(1u);
    }

    v82 = sub_1C0D07698(1868983881, 0xE400000000000000);
    __break(1u);
    goto LABEL_39;
  }

  v159 = v90;
  v160 = v79;
  v152 = v64;
  *&v153 = v63;
  v92 = v154;
  sub_1C0D786EC();
  v93 = sub_1C0D786BC();
  v146(v92, v155);
  v161 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0D7B690;
  v95 = v162;
  v96 = v156;
  *(inited + 32) = v162;
  *(inited + 40) = v96;
  a1 = v95;
  v97 = v96;
  v98 = sub_1C0D19C94(1u, v89, 0);
  v100 = v99;
  v101 = v139;
  v102 = v144;
  sub_1C0D1EAA0(&v165, 0, v139, v98, v99, inited, 0);
  v144 = v102;
  if (v102)
  {

    sub_1C0CF448C(v152, v153);

    sub_1C0CF448C(v159, v80);
    sub_1C0CF448C(v98, v100);
    v104 = v137;
LABEL_42:

    goto LABEL_33;
  }

  v155 = v97;
  v157 = a1;
  v156 = v80;
  v105 = v103;

  v106 = sub_1C0D13834(v74, v161);
  v107 = v137;
  v108 = sub_1C0D13834(v137, v101);
  v158 = sub_1C0D1388C(v106, v108);

  v154 = v74;
  v109 = sub_1C0D13834(v74, v105);
  v104 = v165;
  v110 = sub_1C0D13834(v107, v165);
  v111 = v101;
  v112 = v110;
  v113 = sub_1C0D1388C(v109, v110);

  v114 = v111;
  v115 = v105;
  v116 = v105;
  v117 = v158;
  v118 = v144;
  sub_1C0D1FCCC(v98, v100, v114, v116, v104, v158, v113, 0);
  v144 = v118;
  if (v118)
  {

    sub_1C0CF448C(v152, v153);
    sub_1C0CF448C(v159, v156);
    sub_1C0CF448C(v98, v100);

    v74 = v137;
    a1 = v157;
    goto LABEL_42;
  }

  v120 = v119;
  v121 = [v119 isEqual_];
  sub_1C0CF448C(v98, v100);

  v122 = v159;
  if ((v121 & 1) == 0)
  {
    sub_1C0D20BA4();
    a1 = swift_allocError();
    *v136 = 0;
    swift_willThrow();

    sub_1C0CF448C(v152, v153);
    sub_1C0CF448C(v122, v156);

    goto LABEL_33;
  }

  result = [v160 inverseModOrder];
  if (result)
  {
    v123 = result;
    v124 = v155;
    v125 = sub_1C0D13834(result, v155);
    v161 = v125;

    v126 = sub_1C0D19EF0(v142, v143, 0, 0xF000000000000000, v125, v141, 1, 0);
    v128 = v127;
    sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
    v129 = v148;
    v130 = v150;
    sub_1C0D7863C();
    sub_1C0CF6468(v126, v128);
    v131 = v144;
    sub_1C0D208E4(v126, v128);
    v158 = v131;
    sub_1C0CF448C(v126, v128);
    v132 = v138;
    sub_1C0D7862C();
    sub_1C0CF448C(v126, v128);
    (*(v149 + 8))(v129, v130);
    v133 = v147;
    *&v168 = v147;
    *(&v168 + 1) = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408]);
    v134 = __swift_allocate_boxed_opaque_existential_1(&v165);
    v135 = v151;
    (*(v151 + 16))(v134, v132, v133);
    __swift_project_boxed_opaque_existential_1(&v165, v168);
    sub_1C0D7819C();

    sub_1C0CF448C(v159, v156);
    sub_1C0CF448C(v152, v153);

    (*(v135 + 8))(v132, v133);
    a1 = v163;
    __swift_destroy_boxed_opaque_existential_1(&v165);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D1E970(unint64_t a1, char a2)
{
  if (a2)
  {

    return sub_1C0D053E8(a1, 2);
  }

  else
  {
    switch(a1)
    {
      case 5uLL:
        v3 = 0xEB00000000323135;
        v4 = 825374032;
        break;
      case 4uLL:
        v3 = 0xEB00000000343833;
        v4 = 876098384;
        break;
      case 3uLL:
        v3 = 0xEB00000000363532;
        v4 = 909455952;
        break;
      default:
        result = sub_1C0D78EBC();
        __break(1u);
        return result;
    }

    MEMORY[0x1C68E3B00](v4 | 0x4148532D00000000, v3);

    return sub_1C0D07698(45, 0xE100000000000000);
  }
}

void sub_1C0D1EAA0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void **a6, int a7)
{
  v232 = a7;
  v256 = a3;
  v233 = a2;
  v213 = a1;
  v11 = sub_1C0D789FC();
  v241 = *(v11 - 8);
  v242 = v11;
  v12 = v241[8];
  MEMORY[0x1EEE9AC00](v11);
  v240 = &v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C0D7866C();
  v244 = *(v14 - 8);
  v245 = v14;
  v15 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v243 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C0D78AEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v22 = sub_1C0D78AAC();
  v24 = v23;
  v25 = *(v18 + 8);
  v223 = v21;
  v225 = v17;
  v224 = v18 + 8;
  v222 = v25;
  v25(v21, v17);
  if (v24 >> 60 == 15)
  {
    goto LABEL_103;
  }

  v254 = v22;
  v255 = v24;
  v252 = MEMORY[0x1E6969080];
  v253 = MEMORY[0x1E6969078];
  v250 = a4;
  v251 = a5;
  v26 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
  v27 = *v26;
  v28 = v26[1];
  sub_1C0D134D0(v22, v24);
  v235 = a4;
  v236 = a5;
  sub_1C0CF6468(a4, a5);
  sub_1C0D4268C(v27, v28);
  sub_1C0D13830(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(&v250);
  v218 = v254;
  v219 = v255;
  v29 = [v256 serializedPublicKey_];
  if (!v29)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v30 = v29;
  v31 = sub_1C0D7832C();
  v33 = v32;

  v34 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    v35 = MEMORY[0x1E6969080];
    if (!v34)
    {
      v36 = BYTE6(v33);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v35 = MEMORY[0x1E6969080];
  if (v34 != 2)
  {
    v36 = 0;
    goto LABEL_13;
  }

  v38 = *(v31 + 16);
  v37 = *(v31 + 24);
  v36 = v37 - v38;
  if (__OFSUB__(v37, v38))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_98;
    }

    v36 = HIDWORD(v31) - v31;
  }

LABEL_13:
  v39 = sub_1C0D053E8(v36, 2);
  v41 = v40;
  v254 = v39;
  v255 = v40;
  v252 = v35;
  v253 = MEMORY[0x1E6969078];
  v250 = v31;
  v251 = v33;
  v42 = __swift_project_boxed_opaque_existential_1(&v250, v35);
  v43 = *v42;
  v44 = v42[1];
  sub_1C0CF6468(v39, v41);
  sub_1C0CF6468(v31, v33);
  sub_1C0D4268C(v43, v44);
  sub_1C0CF448C(v39, v41);
  __swift_destroy_boxed_opaque_existential_1(&v250);
  v45 = v254;
  v46 = v255;
  v47 = v219 >> 62;
  v239 = a6;
  if ((v219 >> 62) <= 1)
  {
    if (!v47)
    {
      v48 = BYTE6(v219);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v47 != 2)
  {
    v48 = 0;
    goto LABEL_23;
  }

  v50 = *(v218 + 16);
  v49 = *(v218 + 24);
  v48 = v49 - v50;
  if (__OFSUB__(v49, v50))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v218), v218))
    {
      goto LABEL_99;
    }

    v48 = HIDWORD(v218) - v218;
  }

LABEL_23:
  v216 = v31;
  v217 = v33;
  v51 = sub_1C0D053E8(v48, 2);
  v53 = v52;
  v248 = v45;
  v249 = v46;
  v54 = MEMORY[0x1E6969080];
  v252 = MEMORY[0x1E6969080];
  v55 = MEMORY[0x1E6969078];
  v253 = MEMORY[0x1E6969078];
  v250 = v51;
  v251 = v52;
  v56 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
  v58 = *v56;
  v57 = v56[1];
  sub_1C0CF6468(v45, v46);
  sub_1C0CF6468(v51, v53);
  sub_1C0D4268C(v58, v57);
  sub_1C0CF448C(v51, v53);
  sub_1C0CF448C(v45, v46);
  __swift_destroy_boxed_opaque_existential_1(&v250);
  v59 = v248;
  v60 = v249;
  v254 = v248;
  v255 = v249;
  v252 = v54;
  v253 = v55;
  v61 = v218;
  v62 = v219;
  v250 = v218;
  v251 = v219;
  v63 = __swift_project_boxed_opaque_existential_1(&v250, v54);
  v64 = *v63;
  v65 = v63[1];
  sub_1C0CF6468(v59, v60);
  sub_1C0CF6468(v61, v62);
  sub_1C0D4268C(v64, v65);
  sub_1C0CF448C(v59, v60);
  __swift_destroy_boxed_opaque_existential_1(&v250);
  v67 = v254;
  v66 = v255;
  sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
  v68 = v240;
  v69 = v242;
  sub_1C0D7863C();
  sub_1C0CF6468(v67, v66);
  sub_1C0D208E4(v67, v66);
  v70 = v7;
  v214 = v67;
  v215 = v66;
  sub_1C0CF448C(v67, v66);
  v71 = v243;
  sub_1C0D7862C();
  (v241[1])(v68, v69);
  v72 = v245;
  v252 = v245;
  v253 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408]);
  v73 = __swift_allocate_boxed_opaque_existential_1(&v250);
  v74 = v244;
  (*(v244 + 16))(v73, v71, v72);
  __swift_project_boxed_opaque_existential_1(&v250, v252);
  sub_1C0D7819C();
  (*(v74 + 8))(v71, v72);
  v75 = v254;
  v76 = v255;
  __swift_destroy_boxed_opaque_existential_1(&v250);
  v231 = v239[2];
  if (!v231)
  {
LABEL_105:
    if (!v233)
    {
LABEL_106:
      __break(1u);
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v242 = 0;
  v227 = 0;
  v77 = 0;
  v78 = (v76 >> 62);
  v234 = v75;
  v79 = __OFSUB__(HIDWORD(v75), v75);
  v221 = v79;
  v220 = HIDWORD(v75) - v75;
  v226 = BYTE6(v76);
  v80 = v239 + 5;
  v81 = MEMORY[0x1E6969078];
  v240 = v76;
  v230 = v76 >> 62;
  do
  {
    v84 = *v80;
    v85 = *(v80 - 1);
    v86 = v84;
    v87 = v85;
    v88 = v86;
    v241 = v87;
    v89 = [v87 serializedPublicKey_];
    if (!v89)
    {
      goto LABEL_100;
    }

    v90 = v89;
    v244 = sub_1C0D7832C();
    v256 = v91;

    v92 = [v88 serializedPublicKey_];
    if (!v92)
    {
      goto LABEL_101;
    }

    v93 = v92;
    v243 = sub_1C0D7832C();
    v245 = v94;

    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v97 = *(v234 + 16);
        v96 = *(v234 + 24);
        v95 = v96 - v97;
        if (__OFSUB__(v96, v97))
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
          goto LABEL_104;
        }
      }

      else
      {
        v95 = 0;
      }
    }

    else
    {
      v95 = v226;
      if (v78)
      {
        v95 = v220;
        if (v221)
        {
          goto LABEL_91;
        }
      }
    }

    v237 = v80;
    v238 = v88;
    v239 = v77;
    v98 = sub_1C0D053E8(v95, 2);
    v100 = v99;
    v248 = v98;
    v249 = v99;
    v101 = MEMORY[0x1E6969080];
    v252 = MEMORY[0x1E6969080];
    v253 = v81;
    v102 = v234;
    v103 = v240;
    v250 = v234;
    v251 = v240;
    v104 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
    v106 = *v104;
    v105 = v104[1];
    sub_1C0CF6468(v98, v100);
    sub_1C0CF6468(v102, v103);
    v107 = v70;
    sub_1C0D4268C(v106, v105);
    sub_1C0CF448C(v98, v100);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    v108 = v248;
    v109 = v249;
    v110 = sub_1C0D053E8(v242, 2);
    v112 = v111;
    v246 = v108;
    v247 = v109;
    v252 = v101;
    v253 = v81;
    v250 = v110;
    v251 = v111;
    v113 = __swift_project_boxed_opaque_existential_1(&v250, v101);
    v114 = *v113;
    v115 = v113[1];
    sub_1C0CF6468(v108, v109);
    sub_1C0CF6468(v110, v112);
    sub_1C0D4268C(v114, v115);
    sub_1C0CF448C(v110, v112);
    sub_1C0CF448C(v108, v109);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    v116 = v246;
    v117 = v247;
    v118 = v256 >> 62;
    if ((v256 >> 62) > 1)
    {
      if (v118 == 2)
      {
        v121 = *(v244 + 16);
        v120 = *(v244 + 24);
        v119 = v120 - v121;
        if (__OFSUB__(v120, v121))
        {
          goto LABEL_92;
        }
      }

      else
      {
        v119 = 0;
      }
    }

    else if (v118)
    {
      if (__OFSUB__(HIDWORD(v244), v244))
      {
        goto LABEL_93;
      }

      v119 = HIDWORD(v244) - v244;
    }

    else
    {
      v119 = BYTE6(v256);
    }

    v122 = sub_1C0D053E8(v119, 2);
    v124 = v123;
    v248 = v116;
    v249 = v117;
    v125 = MEMORY[0x1E6969080];
    v252 = MEMORY[0x1E6969080];
    v126 = MEMORY[0x1E6969078];
    v253 = MEMORY[0x1E6969078];
    v250 = v122;
    v251 = v123;
    v127 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
    v128 = *v127;
    v129 = v127[1];
    sub_1C0CF6468(v116, v117);
    sub_1C0CF6468(v122, v124);
    sub_1C0D4268C(v128, v129);
    sub_1C0CF448C(v122, v124);
    sub_1C0CF448C(v116, v117);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    v130 = v248;
    v131 = v249;
    v246 = v248;
    v247 = v249;
    v252 = v125;
    v253 = v126;
    v132 = v244;
    v133 = v256;
    v250 = v244;
    v251 = v256;
    v134 = __swift_project_boxed_opaque_existential_1(&v250, v125);
    v135 = *v134;
    v136 = v134[1];
    sub_1C0CF6468(v130, v131);
    sub_1C0CF6468(v132, v133);
    sub_1C0D4268C(v135, v136);
    sub_1C0CF448C(v130, v131);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    v137 = v246;
    v138 = v247;
    v139 = v245 >> 62;
    if ((v245 >> 62) > 1)
    {
      if (v139 == 2)
      {
        v142 = *(v243 + 16);
        v141 = *(v243 + 24);
        v140 = v141 - v142;
        if (__OFSUB__(v141, v142))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v140 = 0;
      }
    }

    else if (v139)
    {
      if (__OFSUB__(HIDWORD(v243), v243))
      {
        goto LABEL_95;
      }

      v140 = HIDWORD(v243) - v243;
    }

    else
    {
      v140 = BYTE6(v245);
    }

    v143 = sub_1C0D053E8(v140, 2);
    v145 = v144;
    v248 = v137;
    v249 = v138;
    v252 = v125;
    v146 = MEMORY[0x1E6969078];
    v253 = MEMORY[0x1E6969078];
    v250 = v143;
    v251 = v144;
    v147 = __swift_project_boxed_opaque_existential_1(&v250, v125);
    v148 = *v147;
    v149 = v147[1];
    sub_1C0CF6468(v137, v138);
    sub_1C0CF6468(v143, v145);
    v150 = v125;
    v151 = v146;
    sub_1C0D4268C(v148, v149);
    sub_1C0CF448C(v143, v145);
    sub_1C0CF448C(v137, v138);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    v152 = v248;
    v153 = v249;
    v254 = v248;
    v255 = v249;
    v252 = v150;
    v253 = v146;
    v154 = v243;
    v155 = v245;
    v250 = v243;
    v251 = v245;
    v156 = __swift_project_boxed_opaque_existential_1(&v250, v150);
    v157 = *v156;
    v158 = v156[1];
    sub_1C0CF6468(v152, v153);
    sub_1C0CF6468(v154, v155);
    sub_1C0D4268C(v157, v158);
    sub_1C0CF448C(v152, v153);
    __swift_destroy_boxed_opaque_existential_1(&v250);
    if (v232)
    {
      v159 = v223;
      sub_1C0D78ABC();
      v160 = sub_1C0D78AAC();
      v162 = v161;
      v222(v159, v225);
      if (v162 >> 60 == 15)
      {
        goto LABEL_102;
      }

      v248 = v160;
      v249 = v162;
      v252 = MEMORY[0x1E6969080];
      v253 = v151;
      v163 = v235;
      v164 = v236;
      v250 = v235;
      v251 = v236;
      v165 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
      v166 = *v165;
      v167 = v165[1];
      sub_1C0CF6468(v163, v164);
      sub_1C0D134D0(v160, v162);
      sub_1C0D4268C(v166, v167);
      sub_1C0D13830(v160, v162);
      __swift_destroy_boxed_opaque_existential_1(&v250);
      v169 = v254;
      v168 = v255;
      v170 = v249 >> 62;
      v229 = v248;
      v228 = v249;
      if ((v249 >> 62) > 1)
      {
        if (v170 == 2)
        {
          v186 = *(v248 + 16);
          v185 = *(v248 + 24);
          v171 = v185 - v186;
          if (__OFSUB__(v185, v186))
          {
            goto LABEL_96;
          }
        }

        else
        {
          v171 = 0;
        }
      }

      else if (v170)
      {
        if (__OFSUB__(HIDWORD(v248), v248))
        {
          goto LABEL_97;
        }

        v171 = HIDWORD(v248) - v248;
      }

      else
      {
        v171 = BYTE6(v249);
      }

      v187 = sub_1C0D053E8(v171, 2);
      v189 = v188;
      v246 = v169;
      v247 = v168;
      v190 = MEMORY[0x1E6969080];
      v252 = MEMORY[0x1E6969080];
      v191 = MEMORY[0x1E6969078];
      v253 = MEMORY[0x1E6969078];
      v250 = v187;
      v251 = v188;
      v192 = __swift_project_boxed_opaque_existential_1(&v250, MEMORY[0x1E6969080]);
      v193 = *v192;
      v194 = v192[1];
      sub_1C0CF6468(v169, v168);
      sub_1C0CF6468(v187, v189);
      sub_1C0D4268C(v193, v194);
      sub_1C0CF448C(v187, v189);
      __swift_destroy_boxed_opaque_existential_1(&v250);
      v195 = v246;
      v196 = v247;
      v248 = v246;
      v249 = v247;
      v252 = v190;
      v253 = v191;
      v250 = v229;
      v251 = v228;
      v197 = __swift_project_boxed_opaque_existential_1(&v250, v190);
      v198 = *v197;
      v199 = v197[1];
      sub_1C0CF6468(v195, v196);
      sub_1C0D4268C(v198, v199);
      sub_1C0CF448C(v195, v196);
      __swift_destroy_boxed_opaque_existential_1(&v250);
      sub_1C0CF448C(v169, v168);
      v181 = v248;
      v180 = v249;
      v254 = v248;
      v183 = v236;
      v184 = v235;
      v182 = v240;
    }

    else
    {
      v172 = v254;
      v173 = v255;
      v174 = sub_1C0D07698(0x7469736F706D6F43, 0xE900000000000065);
      v176 = v175;
      v248 = v172;
      v249 = v173;
      v252 = v150;
      v253 = v151;
      v250 = v174;
      v251 = v175;
      v177 = __swift_project_boxed_opaque_existential_1(&v250, v150);
      v178 = *v177;
      v179 = v177[1];
      sub_1C0CF6468(v172, v173);
      sub_1C0CF6468(v174, v176);
      sub_1C0D4268C(v178, v179);
      sub_1C0CF448C(v174, v176);
      __swift_destroy_boxed_opaque_existential_1(&v250);
      sub_1C0CF448C(v172, v173);
      v181 = v248;
      v180 = v249;
      v254 = v248;
      v182 = v240;
      v183 = v236;
      v184 = v235;
    }

    v200 = sub_1C0D0E898(v181, v180, v184, v183);
    v70 = v107;
    v201 = v239;
    if (v107)
    {
      v207 = v241;
      v208 = v238;

      sub_1C0CF448C(v214, v215);
      sub_1C0CF448C(v243, v245);
      sub_1C0CF448C(v244, v256);
      sub_1C0CF448C(v234, v182);
      sub_1C0CF448C(v218, v219);
      sub_1C0CF448C(v216, v217);

      sub_1C0CF448C(v181, v180);
      return;
    }

    v202 = v200;
    if (v239)
    {
      v203 = sub_1C0D13834(v200, v241);
      v77 = sub_1C0D1388C(v203, v201);
    }

    else
    {
      v77 = sub_1C0D13834(v200, v241);
    }

    if (v233)
    {
      v82 = v238;
LABEL_29:

      v78 = v241;
      sub_1C0CF448C(v243, v245);
      sub_1C0CF448C(v244, v256);

      goto LABEL_30;
    }

    v204 = v227;
    if (!v227)
    {
      v82 = v238;
      v227 = sub_1C0D13834(v202, v238);
      goto LABEL_29;
    }

    v205 = v238;
    v206 = sub_1C0D13834(v202, v238);
    v239 = sub_1C0D1388C(v206, v204);

    v78 = v241;
    sub_1C0CF448C(v243, v245);
    sub_1C0CF448C(v244, v256);

    v227 = v239;
LABEL_30:
    v83 = v242 + 1;

    sub_1C0CF448C(v181, v180);
    v80 = v237 + 2;
    v242 = v83;
    LODWORD(v78) = v230;
    v81 = MEMORY[0x1E6969078];
  }

  while (v231 != v83);
  if (v233)
  {
    v209 = v217;
    v210 = v216;
    if (!v77)
    {
      goto LABEL_107;
    }

    v211 = sub_1C0D13834(v233, v77);

LABEL_90:
    sub_1C0CF448C(v214, v215);
    sub_1C0CF448C(v234, v240);
    sub_1C0CF448C(v218, v219);
    sub_1C0CF448C(v210, v209);
    *v213 = v211;
    return;
  }

  v209 = v217;
  v210 = v216;
  if (!v77)
  {
    goto LABEL_106;
  }

  v211 = v227;
  if (v227)
  {
    goto LABEL_90;
  }

LABEL_108:
  __break(1u);
}

void sub_1C0D1FCCC(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  LODWORD(v170) = a8;
  v171 = a1;
  v172 = a2;
  v169 = sub_1C0D78AEC();
  v168 = *(v169 - 8);
  v14 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a3 serializedPublicKey_];
  if (!v17)
  {
    goto LABEL_78;
  }

  v18 = v17;
  v19 = sub_1C0D7832C();
  v173 = v20;

  v21 = [a4 serializedPublicKey_];
  if (!v21)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v22 = v21;
  v177 = sub_1C0D7832C();
  v191 = v23;

  v24 = [a5 serializedPublicKey_];
  if (!v24)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v25 = v24;
  v176 = sub_1C0D7832C();
  v180 = v26;

  v27 = [a6 serializedPublicKey_];
  if (!v27)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v28 = v27;
  v175 = sub_1C0D7832C();
  v179 = v29;

  v30 = [a7 serializedPublicKey_];
  if (!v30)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v31 = v30;
  v174 = sub_1C0D7832C();
  v178 = v32;

  v33 = v173;
  v34 = v173 >> 62;
  if ((v173 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v173);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v34 != 2)
  {
    v35 = 0;
    goto LABEL_16;
  }

  v37 = *(v19 + 16);
  v36 = *(v19 + 24);
  v35 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    __break(1u);
LABEL_13:
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      __break(1u);
      goto LABEL_73;
    }

    v35 = HIDWORD(v19) - v19;
  }

LABEL_16:
  v38 = sub_1C0D053E8(v35, 2);
  v40 = v39;
  v189 = v38;
  v190 = v39;
  v41 = MEMORY[0x1E6969080];
  v185 = MEMORY[0x1E6969080];
  v186 = MEMORY[0x1E6969078];
  v183 = v19;
  v184 = v33;
  v42 = __swift_project_boxed_opaque_existential_1(&v183, MEMORY[0x1E6969080]);
  v43 = v19;
  v45 = *v42;
  v44 = v42[1];
  sub_1C0CF6468(v38, v40);
  v166 = v43;
  sub_1C0CF6468(v43, v33);
  sub_1C0D4268C(v45, v44);
  sub_1C0CF448C(v38, v40);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v46 = v189;
  v47 = v190;
  v48 = v191 >> 62;
  v167 = v16;
  if ((v191 >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE6(v191);
      goto LABEL_26;
    }

LABEL_23:
    if (!__OFSUB__(HIDWORD(v177), v177))
    {
      v49 = HIDWORD(v177) - v177;
      goto LABEL_26;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v48 == 2)
  {
    v51 = *(v177 + 16);
    v50 = *(v177 + 24);
    v49 = v50 - v51;
    if (__OFSUB__(v50, v51))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v49 = 0;
  }

LABEL_26:
  v52 = sub_1C0D053E8(v49, 2);
  v54 = v53;
  v187 = v46;
  v188 = v47;
  v185 = v41;
  v55 = MEMORY[0x1E6969078];
  v186 = MEMORY[0x1E6969078];
  v183 = v52;
  v184 = v53;
  v56 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v57 = *v56;
  v58 = v56[1];
  sub_1C0CF6468(v46, v47);
  sub_1C0CF6468(v52, v54);
  sub_1C0D4268C(v57, v58);
  sub_1C0CF448C(v52, v54);
  sub_1C0CF448C(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v59 = v187;
  v60 = v188;
  v189 = v187;
  v190 = v188;
  v185 = v41;
  v186 = v55;
  v61 = v177;
  v62 = v191;
  v183 = v177;
  v184 = v191;
  v63 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v64 = *v63;
  v65 = v63[1];
  sub_1C0CF6468(v59, v60);
  sub_1C0CF6468(v61, v62);
  sub_1C0D4268C(v64, v65);
  sub_1C0CF448C(v59, v60);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v66 = v189;
  v67 = v190;
  v68 = v180 >> 62;
  if ((v180 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(v180);
      goto LABEL_36;
    }

LABEL_33:
    if (!__OFSUB__(HIDWORD(v176), v176))
    {
      v69 = HIDWORD(v176) - v176;
      goto LABEL_36;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v68 == 2)
  {
    v71 = *(v176 + 16);
    v70 = *(v176 + 24);
    v69 = v70 - v71;
    if (__OFSUB__(v70, v71))
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v69 = 0;
  }

LABEL_36:
  v72 = sub_1C0D053E8(v69, 2);
  v74 = v73;
  v187 = v66;
  v188 = v67;
  v185 = v41;
  v186 = v55;
  v183 = v72;
  v184 = v73;
  v75 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v76 = *v75;
  v77 = v75[1];
  sub_1C0CF6468(v66, v67);
  sub_1C0CF6468(v72, v74);
  sub_1C0D4268C(v76, v77);
  sub_1C0CF448C(v72, v74);
  sub_1C0CF448C(v66, v67);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v78 = v187;
  v79 = v188;
  v189 = v187;
  v190 = v188;
  v185 = v41;
  v186 = v55;
  v80 = v176;
  v81 = v180;
  v183 = v176;
  v184 = v180;
  v82 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v83 = *v82;
  v84 = v82[1];
  sub_1C0CF6468(v78, v79);
  sub_1C0CF6468(v80, v81);
  sub_1C0D4268C(v83, v84);
  sub_1C0CF448C(v78, v79);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v85 = v189;
  v86 = v190;
  v87 = v179 >> 62;
  if ((v179 >> 62) <= 1)
  {
    if (!v87)
    {
      v88 = BYTE6(v179);
      goto LABEL_46;
    }

LABEL_43:
    if (!__OFSUB__(HIDWORD(v175), v175))
    {
      v88 = HIDWORD(v175) - v175;
      goto LABEL_46;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v87 == 2)
  {
    v90 = *(v175 + 16);
    v89 = *(v175 + 24);
    v88 = v89 - v90;
    if (__OFSUB__(v89, v90))
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v88 = 0;
  }

LABEL_46:
  v91 = sub_1C0D053E8(v88, 2);
  v93 = v92;
  v187 = v85;
  v188 = v86;
  v185 = v41;
  v186 = v55;
  v183 = v91;
  v184 = v92;
  v94 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v95 = *v94;
  v96 = v94[1];
  sub_1C0CF6468(v85, v86);
  sub_1C0CF6468(v91, v93);
  sub_1C0D4268C(v95, v96);
  sub_1C0CF448C(v91, v93);
  sub_1C0CF448C(v85, v86);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v97 = v187;
  v98 = v188;
  v189 = v187;
  v190 = v188;
  v185 = v41;
  v186 = v55;
  v99 = v175;
  v100 = v179;
  v183 = v175;
  v184 = v179;
  v101 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v102 = *v101;
  v103 = v101[1];
  sub_1C0CF6468(v97, v98);
  sub_1C0CF6468(v99, v100);
  sub_1C0D4268C(v102, v103);
  sub_1C0CF448C(v97, v98);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v105 = v189;
  v104 = v190;
  v106 = v178 >> 62;
  if ((v178 >> 62) <= 1)
  {
    if (!v106)
    {
      v107 = BYTE6(v178);
      goto LABEL_56;
    }

LABEL_53:
    if (!__OFSUB__(HIDWORD(v174), v174))
    {
      v107 = HIDWORD(v174) - v174;
      goto LABEL_56;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v106 == 2)
  {
    v109 = *(v174 + 16);
    v108 = *(v174 + 24);
    v107 = v108 - v109;
    if (__OFSUB__(v108, v109))
    {
      __break(1u);
      goto LABEL_53;
    }
  }

  else
  {
    v107 = 0;
  }

LABEL_56:
  v110 = sub_1C0D053E8(v107, 2);
  v112 = v111;
  v187 = v105;
  v188 = v104;
  v185 = v41;
  v186 = v55;
  v183 = v110;
  v184 = v111;
  v113 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v114 = *v113;
  v115 = v113[1];
  sub_1C0CF6468(v105, v104);
  sub_1C0CF6468(v110, v112);
  sub_1C0D4268C(v114, v115);
  sub_1C0CF448C(v110, v112);
  sub_1C0CF448C(v105, v104);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  v116 = v187;
  v117 = v188;
  v189 = v187;
  v190 = v188;
  v185 = v41;
  v186 = v55;
  v118 = v174;
  v119 = v178;
  v183 = v174;
  v184 = v178;
  v120 = __swift_project_boxed_opaque_existential_1(&v183, v41);
  v121 = *v120;
  v122 = v120[1];
  sub_1C0CF6468(v116, v117);
  sub_1C0CF6468(v118, v119);
  sub_1C0D4268C(v121, v122);
  sub_1C0CF448C(v116, v117);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  if (v170)
  {
    v123 = v167;
    sub_1C0D78ABC();
    v124 = sub_1C0D78AAC();
    v126 = v125;
    (*(v168 + 8))(v123, v169);
    if (v126 >> 60 == 15)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v187 = v124;
    v188 = v126;
    v185 = v41;
    v186 = MEMORY[0x1E6969078];
    v128 = v171;
    v127 = v172;
    v183 = v171;
    v184 = v172;
    v129 = __swift_project_boxed_opaque_existential_1(&v183, v41);
    v130 = *v129;
    v131 = v129[1];
    sub_1C0D134D0(v124, v126);
    sub_1C0CF6468(v128, v127);
    sub_1C0D4268C(v130, v131);
    sub_1C0D13830(v124, v126);
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v133 = v187;
    v132 = v188;
    v134 = v189;
    v135 = v190;
    v136 = v188 >> 62;
    v170 = v8;
    if ((v188 >> 62) > 1)
    {
      if (v136 != 2)
      {
        v137 = 0;
        goto LABEL_70;
      }

      v150 = *(v187 + 16);
      v149 = *(v187 + 24);
      v137 = v149 - v150;
      if (!__OFSUB__(v149, v150))
      {
        goto LABEL_70;
      }

      __break(1u);
    }

    else if (!v136)
    {
      v137 = BYTE6(v188);
LABEL_70:
      v151 = sub_1C0D053E8(v137, 2);
      v153 = v152;
      v181 = v134;
      v182 = v135;
      v185 = v41;
      v186 = MEMORY[0x1E6969078];
      v183 = v151;
      v184 = v152;
      v154 = __swift_project_boxed_opaque_existential_1(&v183, v41);
      v155 = *v154;
      v156 = v154[1];
      sub_1C0CF6468(v134, v135);
      sub_1C0CF6468(v151, v153);
      sub_1C0D4268C(v155, v156);
      sub_1C0CF448C(v151, v153);
      __swift_destroy_boxed_opaque_existential_1(&v183);
      v157 = v181;
      v158 = v182;
      v187 = v181;
      v188 = v182;
      v185 = v41;
      v186 = MEMORY[0x1E6969078];
      v183 = v133;
      v184 = v132;
      v159 = __swift_project_boxed_opaque_existential_1(&v183, v41);
      v160 = *v159;
      v161 = v159[1];
      sub_1C0CF6468(v157, v158);
      sub_1C0D4268C(v160, v161);
      sub_1C0CF448C(v157, v158);
      __swift_destroy_boxed_opaque_existential_1(&v183);
      v147 = v134;
      v148 = v135;
      goto LABEL_71;
    }

    if (!__OFSUB__(HIDWORD(v133), v133))
    {
      v137 = HIDWORD(v133) - v133;
      goto LABEL_70;
    }

    goto LABEL_77;
  }

  v138 = v167;
  sub_1C0D78ABC();
  v139 = sub_1C0D78AAC();
  v141 = v140;
  (*(v168 + 8))(v138, v169);
  if (v141 >> 60 != 15)
  {
    v142 = v189;
    v143 = v190;
    v187 = v189;
    v188 = v190;
    v185 = v41;
    v186 = MEMORY[0x1E6969078];
    v183 = v139;
    v184 = v141;
    v144 = __swift_project_boxed_opaque_existential_1(&v183, v41);
    v145 = *v144;
    v146 = v144[1];
    sub_1C0CF6468(v142, v143);
    sub_1C0D4268C(v145, v146);
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v147 = v142;
    v148 = v143;
LABEL_71:
    sub_1C0CF448C(v147, v148);
    v162 = v187;
    v163 = v188;
    v164 = v166;
    sub_1C0D0E898(v187, v188, v171, v172);
    sub_1C0CF448C(v174, v178);
    sub_1C0CF448C(v175, v179);
    sub_1C0CF448C(v176, v180);
    sub_1C0CF448C(v177, v191);
    sub_1C0CF448C(v164, v173);
    sub_1C0CF448C(v162, v163);
    return;
  }

LABEL_84:
  __break(1u);
}

_BYTE *sub_1C0D20850@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1C0D77CE4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1C0D77DA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1C0D77E20(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1C0D208E4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1C0D789FC();
      sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
      result = sub_1C0D7861C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C0D20AC4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D20AC4(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      sub_1C0D789FC();
      sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630]);
      return sub_1C0D7861C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D20BA4()
{
  result = qword_1EBE6D6E0[0];
  if (!qword_1EBE6D6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D6E0);
  }

  return result;
}

uint64_t sub_1C0D20BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C0D20CA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t sub_1C0D20CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C0D20D64(uint64_t a1, int a2)
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

uint64_t sub_1C0D20DAC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0D20DFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Proof();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D20EFC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = v13 + v18;
  v20 = *(*(v10 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v17 + ((v17 + (v17 & ~v14)) & ~v14)) & ~v14)) & ~v18) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 >= v15)
  {
    v32 = *(v8 + 48);

    return v32(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v30 = (v19 + ((v17 + ((v17 + ((a1 + v17) & ~v14)) & ~v14)) & ~v14)) & ~v18;
    if (v12 < 0x7FFFFFFF)
    {
      v33 = *((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v31 = *(v11 + 48);

      return v31(v30);
    }
  }
}

void sub_1C0D2125C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 64);
  v16 = *(v10 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 + v16;
  v20 = (v15 + v16 + ((v15 + v16 + ((v15 + v16) & ~v16)) & ~v16)) & ~v16;
  v21 = *(v13 + 80) & 0xF8 | 7;
  v22 = v15 + v21;
  v23 = *(*(v12 - 8) + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v22 + v20) & ~v21) + v24;
  if (v18 >= a3)
  {
    v28 = 0;
    v29 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v18 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_20:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 >= v17)
        {
          v34 = *(v10 + 56);

          v34(a1, a2, v11, AssociatedTypeWitness);
        }

        else
        {
          v32 = ((v22 + ((v19 + ((v19 + ((a1 + v19) & ~v16)) & ~v16)) & ~v16)) & ~v21);
          if (v17 >= a2)
          {
            if (v14 < 0x7FFFFFFF)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v36 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v36 = (a2 - 1);
              }

              *((v32 + v23) & 0xFFFFFFFFFFFFFFF8) = v36;
            }

            else
            {
              v35 = *(v13 + 56);

              v35(v32, a2);
            }
          }

          else if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
          {
            v33 = ~v17 + a2;
            bzero(v32, v24);
            *v32 = v33;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v18 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

uint64_t CKSecretSharing.SecretSharingError.SecretSharingErrorType.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

unint64_t sub_1C0D216D4()
{
  result = qword_1EBE6D768;
  if (!qword_1EBE6D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D768);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C0D21744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C0D2178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18SecretSharingErrorV22SecretSharingErrorTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18SecretSharingErrorV22SecretSharingErrorTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D21940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v4 + 24);
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1C0CF49E8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v4 + 24) = v8;
  v12 = a3;
  MEMORY[0x1C68E3BD0]();
  v13 = *(v4 + 16);
  if (*(v13 + 16) >= *(v13 + 24) >> 1)
  {
    v15 = *(v13 + 16);
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  return *(*(v4 + 16) + 16) - 1;
}

id sub_1C0D21A5C()
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 16) + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v13[0] = v1;
    v13[1] = v0;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C0D78E3C();
    sub_1C0D7884C();
    sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
    while (1)
    {
      sub_1C0D786EC();
      v9 = sub_1C0D786BC();
      (*(v3 + 8))(v6, v2);
      result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
      if (!result)
      {
        break;
      }

      sub_1C0D78E0C();
      v11 = *(v14 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      if (!--v7)
      {
        v8 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v12 = sub_1C0D2DEAC(v8);

    return v12;
  }

  return result;
}

uint64_t sub_1C0D21C50(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = v3[3];
  v6 = v3[4];
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    sub_1C0D30124();
    swift_allocError();
    *v53 = 2;
LABEL_33:
    swift_willThrow();
    goto LABEL_34;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v9 = v3[5];
  v10 = *(v9 + 16);
  if (!v10)
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v2 = a1;
    sub_1C0D2EDD0(*v3, v3[1], v5, v45);
    if (v4)
    {
    }

    else
    {
      v58 = v57;

      LOBYTE(v2) = [v58 isEqual_];
    }

LABEL_34:
    v55 = *MEMORY[0x1E69E9840];
    return v2 & 1;
  }

  v11 = a2;
  v12 = 0;
  v13 = v9 + 32;
  v74 = a2 + 32;
  v75 = v5 + 32;
  v71 = v6 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = (v13 + 16 * v12);
    v16 = *v15;
    if (*v15 >= v7)
    {
LABEL_32:

      sub_1C0D30124();
      swift_allocError();
      *v54 = 0;
      goto LABEL_33;
    }

    v17 = v15[1];
    v18 = v12 + 1;
    v19 = *(v17 + 16) + 1;
    v20 = 40;
    while (--v19)
    {
      v21 = *(v17 + v20);
      v20 += 16;
      if (v21 >= v7)
      {
        goto LABEL_32;
      }
    }

    v62 = v13;
    v63 = v18;
    v64 = v10;
    v65 = v14;
    v67 = v5;
    v68 = v3;
    v70 = v4;
    v61 = v16;
    v22 = *(v75 + 8 * v16);
    v23 = a1;
    sub_1C0D78BFC();
    v24 = v22;
    v69 = v23;
    v25 = sub_1C0D13834(v23, v24);

    v26 = *(v17 + 16);
    v66 = v11;
    if (v26)
    {
      break;
    }

    v36 = v8;
LABEL_18:
    v37 = *(v36 + 16);
    v38 = v25;
    v73 = v38;
    if (v37)
    {
      v39 = 0;
      v40 = v38;
      while (v39 < *(v36 + 16))
      {
        v41 = *(v36 + 32 + 8 * v39);
        LODWORD(v79) = 0;
        v42 = v41;
        v43 = [v40 add:v42 corecryptoError:&v79];
        if (!v43)
        {
          sub_1C0D78DAC();
          MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
          v78 = v79;
          v59 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v59);

          goto LABEL_45;
        }

        v38 = v43;

        ++v39;
        v40 = v38;
        if (v37 == v39)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

LABEL_23:

    v44 = v38;
    MEMORY[0x1C68E3BD0]();
    if (*(v80 + 16) >= *(v80 + 24) >> 1)
    {
      v52 = *(v80 + 16);
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v45 = v80;
    v46 = (v71 + 16 * v61);
    v76 = *v46;
    v77 = v46[1];
    swift_bridgeObjectRetain_n();
    MEMORY[0x1C68E3B00](0x646E696C622DLL, 0xE600000000000000);

    v47 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1C0CF49E8(0, *(v65 + 2) + 1, 1, v65);
    }

    v11 = v66;
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    v50 = v47;
    v2 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v50 = sub_1C0CF49E8((v48 > 1), v49 + 1, 1, v50);
    }

    *(v50 + 2) = v2;
    v14 = v50;
    v51 = &v50[16 * v49];
    *(v51 + 4) = v76;
    *(v51 + 5) = v77;
    v12 = v63;
    v10 = v64;
    a1 = v69;
    v4 = v70;
    v5 = v67;
    v3 = v68;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = v62;
    if (v63 == v64)
    {
      goto LABEL_36;
    }
  }

  v72 = v25;
  v79 = v8;
  sub_1C0D78E3C();
  v27 = 0;
  v28 = *(v11 + 16);
  v29 = (v17 + 40);
  while (1)
  {
    if (v27 >= *(v17 + 16))
    {
      goto LABEL_40;
    }

    v30 = *(v29 - 1);
    if (v30 >= v28)
    {
      goto LABEL_41;
    }

    if (*v29 >= v7)
    {
      goto LABEL_42;
    }

    v31 = *(v74 + 8 * v30);
    v32 = *(v75 + 8 * *v29);
    v78 = 0;
    v33 = v31;
    v34 = v32;
    if (![v34 multiply:v33 corecryptoError:&v78])
    {
      break;
    }

    ++v27;
    sub_1C0D78E0C();
    v35 = *(v79 + 16);
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    v29 += 2;
    if (v26 == v27)
    {

      v36 = v79;
      v25 = v72;
      goto LABEL_18;
    }
  }

  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
  v60 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v60);

LABEL_45:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

unint64_t sub_1C0D22268(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_1C0D428BC(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_1C0D42858(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_1C0CF6468(*v1, *(v1 + 8));
      result = sub_1C0CF448C(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_1C0D782DC();
        v15 = v14;
        result = sub_1C0CF448C(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D223A4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, id a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  v357 = xmmword_1C0D7BAB0;
  v23 = [a1 serializedPublicKey_];
  if (!v23)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v24 = v23;
  v25 = sub_1C0D7832C();
  v27 = v26;

  v28 = v27;
  v29 = v27 >> 62;
  v358 = a2;
  if ((v27 >> 62) <= 1)
  {
    if (!v29)
    {
      sub_1C0CF448C(v25, v27);
      v30 = BYTE6(v27);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v29 != 2)
  {
    sub_1C0CF448C(v25, v27);
    v30 = 0;
    goto LABEL_12;
  }

  v32 = *(v25 + 16);
  v31 = *(v25 + 24);
  sub_1C0CF448C(v25, v28);
  v30 = v31 - v32;
  if (__OFSUB__(v31, v32))
  {
    __break(1u);
LABEL_9:
    sub_1C0CF448C(v25, v28);
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v30 = HIDWORD(v25) - v25;
  }

LABEL_12:
  v347 = a7;
  v348 = a6;
  v346 = a8;
  v33 = sub_1C0D053E8(v30, 2);
  v35 = v34;
  v36 = [a1 serializedPublicKey_];
  if (!v36)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v37 = v36;
  v38 = sub_1C0D7832C();
  v40 = v39;

  v355 = v33;
  v356 = v35;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v38;
  v352[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v42 = *v41;
  v43 = v41[1];
  sub_1C0CF6468(v33, v35);
  sub_1C0CF6468(v38, v40);
  sub_1C0D4268C(v42, v43);
  sub_1C0CF448C(v38, v40);
  sub_1C0CF448C(v33, v35);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v44 = v355;
  v45 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v44, v45);
  v46 = v358;
  v47 = [v358 serializedPublicKey_];
  if (!v47)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v48 = v47;
  v49 = sub_1C0D7832C();
  v51 = v50;

  v52 = v51 >> 62;
  if ((v51 >> 62) <= 1)
  {
    if (!v52)
    {
      sub_1C0CF448C(v49, v51);
      v53 = BYTE6(v51);
      goto LABEL_24;
    }

LABEL_21:
    sub_1C0CF448C(v49, v51);
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v53 = HIDWORD(v49) - v49;
      goto LABEL_24;
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v52 == 2)
  {
    v55 = *(v49 + 16);
    v54 = *(v49 + 24);
    sub_1C0CF448C(v49, v51);
    v53 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C0CF448C(v49, v51);
    v53 = 0;
  }

LABEL_24:
  v56 = sub_1C0D053E8(v53, 2);
  v58 = v57;
  v59 = [v46 serializedPublicKey_];
  if (!v59)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v60 = v59;
  v61 = sub_1C0D7832C();
  v63 = v62;

  v355 = v56;
  v356 = v58;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v61;
  v352[1] = v63;
  v64 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v65 = *v64;
  v66 = v64[1];
  sub_1C0CF6468(v56, v58);
  sub_1C0CF6468(v61, v63);
  sub_1C0D4268C(v65, v66);
  sub_1C0CF448C(v61, v63);
  sub_1C0CF448C(v56, v58);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v67 = v355;
  v68 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v67, v68);
  v69 = [a3 serializedPublicKey_];
  if (!v69)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v70 = v69;
  v71 = sub_1C0D7832C();
  v73 = v72;

  v74 = v73 >> 62;
  if ((v73 >> 62) <= 1)
  {
    if (!v74)
    {
      sub_1C0CF448C(v71, v73);
      v75 = BYTE6(v73);
      goto LABEL_36;
    }

LABEL_33:
    sub_1C0CF448C(v71, v73);
    if (!__OFSUB__(HIDWORD(v71), v71))
    {
      v75 = HIDWORD(v71) - v71;
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v74 == 2)
  {
    v77 = *(v71 + 16);
    v76 = *(v71 + 24);
    sub_1C0CF448C(v71, v73);
    v75 = v76 - v77;
    if (__OFSUB__(v76, v77))
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    sub_1C0CF448C(v71, v73);
    v75 = 0;
  }

LABEL_36:
  v78 = sub_1C0D053E8(v75, 2);
  v80 = v79;
  v81 = [a3 0x1E81283FCLL];
  if (!v81)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v82 = v81;
  v83 = sub_1C0D7832C();
  v85 = v84;

  v355 = v78;
  v356 = v80;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v83;
  v352[1] = v85;
  v86 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v87 = *v86;
  v88 = v86[1];
  sub_1C0CF6468(v78, v80);
  sub_1C0CF6468(v83, v85);
  sub_1C0D4268C(v87, v88);
  sub_1C0CF448C(v83, v85);
  sub_1C0CF448C(v78, v80);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v89 = v355;
  v90 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v89, v90);
  v91 = [a4 0x1E81283FCLL];
  if (!v91)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v92 = v91;
  v93 = sub_1C0D7832C();
  v95 = v94;

  v96 = v95 >> 62;
  if ((v95 >> 62) <= 1)
  {
    if (!v96)
    {
      sub_1C0CF448C(v93, v95);
      v97 = BYTE6(v95);
      goto LABEL_48;
    }

LABEL_45:
    sub_1C0CF448C(v93, v95);
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      v97 = HIDWORD(v93) - v93;
      goto LABEL_48;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v96 == 2)
  {
    v99 = *(v93 + 16);
    v98 = *(v93 + 24);
    sub_1C0CF448C(v93, v95);
    v97 = v98 - v99;
    if (__OFSUB__(v98, v99))
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
    sub_1C0CF448C(v93, v95);
    v97 = 0;
  }

LABEL_48:
  v100 = sub_1C0D053E8(v97, 2);
  v102 = v101;
  v103 = [a4 0x1E81283FCLL];
  if (!v103)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v104 = v103;
  v105 = sub_1C0D7832C();
  v107 = v106;

  v355 = v100;
  v356 = v102;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v105;
  v352[1] = v107;
  v108 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v109 = *v108;
  v110 = v108[1];
  sub_1C0CF6468(v100, v102);
  sub_1C0CF6468(v105, v107);
  sub_1C0D4268C(v109, v110);
  sub_1C0CF448C(v105, v107);
  sub_1C0CF448C(v100, v102);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v111 = v355;
  v112 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v111, v112);
  v113 = [a5 0x1E81283FCLL];
  if (!v113)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v114 = v113;
  v115 = sub_1C0D7832C();
  v117 = v116;

  v118 = v117 >> 62;
  if ((v117 >> 62) <= 1)
  {
    if (!v118)
    {
      sub_1C0CF448C(v115, v117);
      v119 = BYTE6(v117);
      goto LABEL_60;
    }

LABEL_57:
    sub_1C0CF448C(v115, v117);
    if (!__OFSUB__(HIDWORD(v115), v115))
    {
      v119 = HIDWORD(v115) - v115;
      goto LABEL_60;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  if (v118 == 2)
  {
    v121 = *(v115 + 16);
    v120 = *(v115 + 24);
    sub_1C0CF448C(v115, v117);
    v119 = v120 - v121;
    if (__OFSUB__(v120, v121))
    {
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    sub_1C0CF448C(v115, v117);
    v119 = 0;
  }

LABEL_60:
  v122 = sub_1C0D053E8(v119, 2);
  v124 = v123;
  v125 = [a5 0x1E81283FCLL];
  if (!v125)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v126 = v125;
  v127 = sub_1C0D7832C();
  v129 = v128;

  v355 = v122;
  v356 = v124;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v127;
  v352[1] = v129;
  v130 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v131 = *v130;
  v132 = v130[1];
  sub_1C0CF6468(v122, v124);
  sub_1C0CF6468(v127, v129);
  sub_1C0D4268C(v131, v132);
  sub_1C0CF448C(v127, v129);
  sub_1C0CF448C(v122, v124);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v133 = v355;
  v134 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v133, v134);
  v135 = [v348 0x1E81283FCLL];
  if (!v135)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v136 = v135;
  v137 = sub_1C0D7832C();
  v139 = v138;

  v140 = v139 >> 62;
  if ((v139 >> 62) <= 1)
  {
    if (!v140)
    {
      sub_1C0CF448C(v137, v139);
      v141 = BYTE6(v139);
      goto LABEL_72;
    }

LABEL_69:
    sub_1C0CF448C(v137, v139);
    if (!__OFSUB__(HIDWORD(v137), v137))
    {
      v141 = HIDWORD(v137) - v137;
      goto LABEL_72;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v140 == 2)
  {
    v143 = *(v137 + 16);
    v142 = *(v137 + 24);
    sub_1C0CF448C(v137, v139);
    v141 = v142 - v143;
    if (__OFSUB__(v142, v143))
    {
      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    sub_1C0CF448C(v137, v139);
    v141 = 0;
  }

LABEL_72:
  v144 = sub_1C0D053E8(v141, 2);
  v146 = v145;
  v147 = [v348 0x1E81283FCLL];
  if (!v147)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v148 = v147;
  v149 = sub_1C0D7832C();
  v151 = v150;

  v355 = v144;
  v356 = v146;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v149;
  v352[1] = v151;
  v152 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v153 = *v152;
  v154 = v152[1];
  sub_1C0CF6468(v144, v146);
  sub_1C0CF6468(v149, v151);
  sub_1C0D4268C(v153, v154);
  sub_1C0CF448C(v149, v151);
  sub_1C0CF448C(v144, v146);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v155 = v355;
  v156 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v155, v156);
  v157 = [v347 0x1E81283FCLL];
  if (!v157)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v158 = v157;
  v159 = sub_1C0D7832C();
  v161 = v160;

  v162 = v161 >> 62;
  if ((v161 >> 62) <= 1)
  {
    if (!v162)
    {
      sub_1C0CF448C(v159, v161);
      v163 = BYTE6(v161);
      goto LABEL_84;
    }

LABEL_81:
    sub_1C0CF448C(v159, v161);
    if (!__OFSUB__(HIDWORD(v159), v159))
    {
      v163 = HIDWORD(v159) - v159;
      goto LABEL_84;
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v162 == 2)
  {
    v165 = *(v159 + 16);
    v164 = *(v159 + 24);
    sub_1C0CF448C(v159, v161);
    v163 = v164 - v165;
    if (__OFSUB__(v164, v165))
    {
      __break(1u);
      goto LABEL_81;
    }
  }

  else
  {
    sub_1C0CF448C(v159, v161);
    v163 = 0;
  }

LABEL_84:
  v166 = sub_1C0D053E8(v163, 2);
  v168 = v167;
  v169 = [v347 0x1E81283FCLL];
  if (!v169)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v170 = v169;
  v171 = sub_1C0D7832C();
  v173 = v172;

  v355 = v166;
  v356 = v168;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v171;
  v352[1] = v173;
  v174 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v175 = *v174;
  v176 = v174[1];
  sub_1C0CF6468(v166, v168);
  sub_1C0CF6468(v171, v173);
  sub_1C0D4268C(v175, v176);
  sub_1C0CF448C(v171, v173);
  sub_1C0CF448C(v166, v168);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v177 = v355;
  v178 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v177, v178);
  v179 = [v346 serializedBigEndianScalar];
  if (!v179)
  {
    goto LABEL_213;
  }

  v180 = v179;
  v181 = sub_1C0D7832C();
  v183 = v182;

  v184 = v183;
  v185 = v183 >> 62;
  if ((v183 >> 62) <= 1)
  {
    if (!v185)
    {
      sub_1C0CF448C(v181, v183);
      v186 = BYTE6(v183);
      goto LABEL_96;
    }

LABEL_93:
    sub_1C0CF448C(v181, v184);
    if (!__OFSUB__(HIDWORD(v181), v181))
    {
      v186 = HIDWORD(v181) - v181;
      goto LABEL_96;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v185 == 2)
  {
    v188 = *(v181 + 16);
    v187 = *(v181 + 24);
    sub_1C0CF448C(v181, v184);
    v186 = v187 - v188;
    if (__OFSUB__(v187, v188))
    {
      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    sub_1C0CF448C(v181, v183);
    v186 = 0;
  }

LABEL_96:
  v189 = sub_1C0D053E8(v186, 2);
  v191 = v190;
  v192 = [v346 serializedBigEndianScalar];
  if (v192)
  {
    v193 = v192;
    v194 = sub_1C0D7832C();
    v196 = v195;

    v355 = v189;
    v356 = v191;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v194;
    v352[1] = v196;
    v197 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v198 = *v197;
    v199 = v197[1];
    sub_1C0CF6468(v189, v191);
    sub_1C0D4268C(v198, v199);
    sub_1C0CF448C(v189, v191);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v200 = v355;
    v201 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v200, v201);
    v202 = [a9 0x1E81283FCLL];
    if (!v202)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v203 = v202;
    v204 = sub_1C0D7832C();
    v206 = v205;

    v207 = v206 >> 62;
    if ((v206 >> 62) <= 1)
    {
      if (!v207)
      {
        sub_1C0CF448C(v204, v206);
        v208 = BYTE6(v206);
        goto LABEL_108;
      }

LABEL_105:
      sub_1C0CF448C(v204, v206);
      if (!__OFSUB__(HIDWORD(v204), v204))
      {
        v208 = HIDWORD(v204) - v204;
        goto LABEL_108;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    if (v207 == 2)
    {
      v210 = *(v204 + 16);
      v209 = *(v204 + 24);
      sub_1C0CF448C(v204, v206);
      v208 = v209 - v210;
      if (__OFSUB__(v209, v210))
      {
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      sub_1C0CF448C(v204, v206);
      v208 = 0;
    }

LABEL_108:
    v211 = sub_1C0D053E8(v208, 2);
    v213 = v212;
    v214 = [a9 0x1E81283FCLL];
    if (!v214)
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v215 = v214;
    v216 = sub_1C0D7832C();
    v218 = v217;

    v355 = v211;
    v356 = v213;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v216;
    v352[1] = v218;
    v219 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v220 = *v219;
    v221 = v219[1];
    sub_1C0CF6468(v211, v213);
    sub_1C0CF6468(v216, v218);
    sub_1C0D4268C(v220, v221);
    sub_1C0CF448C(v216, v218);
    sub_1C0CF448C(v211, v213);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v222 = v355;
    v223 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v222, v223);
    v224 = [a10 0x1E81283FCLL];
    if (!v224)
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v225 = v224;
    v226 = sub_1C0D7832C();
    v228 = v227;

    v229 = v228 >> 62;
    if ((v228 >> 62) <= 1)
    {
      if (!v229)
      {
        sub_1C0CF448C(v226, v228);
        v230 = BYTE6(v228);
        goto LABEL_120;
      }

LABEL_117:
      sub_1C0CF448C(v226, v228);
      if (!__OFSUB__(HIDWORD(v226), v226))
      {
        v230 = HIDWORD(v226) - v226;
        goto LABEL_120;
      }

LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (v229 == 2)
    {
      v232 = *(v226 + 16);
      v231 = *(v226 + 24);
      sub_1C0CF448C(v226, v228);
      v230 = v231 - v232;
      if (__OFSUB__(v231, v232))
      {
        __break(1u);
        goto LABEL_117;
      }
    }

    else
    {
      sub_1C0CF448C(v226, v228);
      v230 = 0;
    }

LABEL_120:
    v233 = sub_1C0D053E8(v230, 2);
    v235 = v234;
    v236 = [a10 0x1E81283FCLL];
    if (!v236)
    {
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    v237 = v236;
    v238 = sub_1C0D7832C();
    v240 = v239;

    v355 = v233;
    v356 = v235;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v238;
    v352[1] = v240;
    v241 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v242 = *v241;
    v243 = v241[1];
    sub_1C0CF6468(v233, v235);
    sub_1C0CF6468(v238, v240);
    sub_1C0D4268C(v242, v243);
    v358 = v17;
    sub_1C0CF448C(v238, v240);
    sub_1C0CF448C(v233, v235);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v244 = v355;
    v245 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v244, v245);
    v246 = *(a11 + 16);
    if (v246)
    {
      v247 = (a11 + 32);
      do
      {
        v248 = *v247;
        v249 = [v248 serializedPublicKey_];
        if (!v249)
        {
          goto LABEL_187;
        }

        v250 = v249;
        v251 = sub_1C0D7832C();
        v253 = v252;

        v254 = v253;
        v255 = v253 >> 62;
        if ((v253 >> 62) > 1)
        {
          if (v255 == 2)
          {
            v258 = *(v251 + 16);
            v257 = *(v251 + 24);
            sub_1C0CF448C(v251, v254);
            v256 = v257 - v258;
            if (__OFSUB__(v257, v258))
            {
              __break(1u);
LABEL_173:
              __break(1u);
              goto LABEL_174;
            }
          }

          else
          {
            sub_1C0CF448C(v251, v253);
            v256 = 0;
          }
        }

        else if (v255)
        {
          sub_1C0CF448C(v251, v253);
          if (__OFSUB__(HIDWORD(v251), v251))
          {
            goto LABEL_173;
          }

          v256 = HIDWORD(v251) - v251;
        }

        else
        {
          sub_1C0CF448C(v251, v253);
          v256 = BYTE6(v253);
        }

        v259 = sub_1C0D053E8(v256, 2);
        v261 = v260;
        v262 = [v248 serializedPublicKey_];
        if (!v262)
        {
          goto LABEL_188;
        }

        v263 = v262;
        v264 = sub_1C0D7832C();
        v266 = v265;

        v355 = v259;
        v356 = v261;
        v353 = MEMORY[0x1E6969080];
        v354 = MEMORY[0x1E6969078];
        v352[0] = v264;
        v352[1] = v266;
        v267 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
        v268 = *v267;
        v269 = v267[1];
        sub_1C0CF6468(v259, v261);
        sub_1C0CF6468(v264, v266);
        v270 = v358;
        sub_1C0D4268C(v268, v269);
        v358 = v270;
        sub_1C0CF448C(v264, v266);
        sub_1C0CF448C(v259, v261);
        __swift_destroy_boxed_opaque_existential_1(v352);
        v271 = v355;
        v272 = v356;
        sub_1C0D7834C();
        sub_1C0CF448C(v271, v272);

        ++v247;
      }

      while (--v246);
    }

    v273 = [a12 serializedPublicKey_];
    if (!v273)
    {
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    v274 = v273;
    v275 = sub_1C0D7832C();
    v277 = v276;

    v278 = v277 >> 62;
    if ((v277 >> 62) <= 1)
    {
      if (!v278)
      {
        sub_1C0CF448C(v275, v277);
        v279 = BYTE6(v277);
        goto LABEL_147;
      }

LABEL_144:
      sub_1C0CF448C(v275, v277);
      if (!__OFSUB__(HIDWORD(v275), v275))
      {
        v279 = HIDWORD(v275) - v275;
        goto LABEL_147;
      }

LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v278 == 2)
    {
      v281 = *(v275 + 16);
      v280 = *(v275 + 24);
      sub_1C0CF448C(v275, v277);
      v279 = v280 - v281;
      if (__OFSUB__(v280, v281))
      {
        __break(1u);
        goto LABEL_144;
      }
    }

    else
    {
      sub_1C0CF448C(v275, v277);
      v279 = 0;
    }

LABEL_147:
    v282 = sub_1C0D053E8(v279, 2);
    v284 = v283;
    v285 = [a12 serializedPublicKey_];
    if (!v285)
    {
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    v286 = v285;
    v287 = sub_1C0D7832C();
    v289 = v288;

    v355 = v282;
    v356 = v284;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v287;
    v352[1] = v289;
    v290 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v291 = *v290;
    v292 = v290[1];
    sub_1C0CF6468(v282, v284);
    sub_1C0CF6468(v287, v289);
    sub_1C0D4268C(v291, v292);
    sub_1C0CF448C(v287, v289);
    sub_1C0CF448C(v282, v284);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v293 = v355;
    v294 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v293, v294);
    v295 = [a13 0x1E81283FCLL];
    if (!v295)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    v296 = v295;
    v297 = sub_1C0D7832C();
    v299 = v298;

    v300 = v299 >> 62;
    if ((v299 >> 62) <= 1)
    {
      if (!v300)
      {
        sub_1C0CF448C(v297, v299);
        v301 = BYTE6(v299);
        goto LABEL_159;
      }

LABEL_156:
      sub_1C0CF448C(v297, v299);
      if (!__OFSUB__(HIDWORD(v297), v297))
      {
        v301 = HIDWORD(v297) - v297;
        goto LABEL_159;
      }

LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v300 == 2)
    {
      v303 = *(v297 + 16);
      v302 = *(v297 + 24);
      sub_1C0CF448C(v297, v299);
      v301 = v302 - v303;
      if (__OFSUB__(v302, v303))
      {
        __break(1u);
        goto LABEL_156;
      }
    }

    else
    {
      sub_1C0CF448C(v297, v299);
      v301 = 0;
    }

LABEL_159:
    v304 = sub_1C0D053E8(v301, 2);
    v306 = v305;
    v307 = [a13 0x1E81283FCLL];
    if (!v307)
    {
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v308 = v307;
    v309 = sub_1C0D7832C();
    v311 = v310;

    v355 = v304;
    v356 = v306;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v309;
    v352[1] = v311;
    v312 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v313 = *v312;
    v314 = v312[1];
    sub_1C0CF6468(v304, v306);
    sub_1C0CF6468(v309, v311);
    sub_1C0D4268C(v313, v314);
    sub_1C0CF448C(v309, v311);
    sub_1C0CF448C(v304, v306);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v315 = v355;
    v316 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v315, v316);
    v317 = [a14 0x1E81283FCLL];
    if (!v317)
    {
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v318 = v317;
    v319 = sub_1C0D7832C();
    v321 = v320;

    v322 = v321 >> 62;
    if ((v321 >> 62) <= 1)
    {
      if (!v322)
      {
        sub_1C0CF448C(v319, v321);
        v323 = BYTE6(v321);
        goto LABEL_171;
      }

LABEL_168:
      sub_1C0CF448C(v319, v321);
      if (!__OFSUB__(HIDWORD(v319), v319))
      {
        v323 = HIDWORD(v319) - v319;
        goto LABEL_171;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v322 == 2)
    {
      v325 = *(v319 + 16);
      v324 = *(v319 + 24);
      sub_1C0CF448C(v319, v321);
      v323 = v324 - v325;
      if (__OFSUB__(v324, v325))
      {
        __break(1u);
        goto LABEL_168;
      }
    }

    else
    {
      sub_1C0CF448C(v319, v321);
      v323 = 0;
    }

LABEL_171:
    v326 = sub_1C0D053E8(v323, 2);
    v328 = v327;
    v329 = [a14 0x1E81283FCLL];
    if (v329)
    {
      v330 = v329;
      v358 = a17;
      v331 = sub_1C0D7832C();
      v333 = v332;

      v355 = v326;
      v356 = v328;
      v353 = MEMORY[0x1E6969080];
      v354 = MEMORY[0x1E6969078];
      v352[0] = v331;
      v352[1] = v333;
      v334 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
      v335 = *v334;
      v336 = v334[1];
      sub_1C0CF6468(v326, v328);
      sub_1C0CF6468(v331, v333);
      sub_1C0D4268C(v335, v336);
      sub_1C0CF448C(v331, v333);
      sub_1C0CF448C(v326, v328);
      __swift_destroy_boxed_opaque_existential_1(v352);
      v337 = v355;
      v338 = v356;
      sub_1C0D7834C();
      sub_1C0CF448C(v337, v338);
      v352[0] = a15;
      v339 = sub_1C0D78F2C();
      strcpy(v352, "ATHMV1-P256-");
      BYTE5(v352[1]) = 0;
      HIWORD(v352[1]) = -5120;
      MEMORY[0x1C68E3B00](v339);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](45, 0xE100000000000000);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](a16, v358);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80D70);

      v340 = v357;
      v341 = sub_1C0D07698(v352[0], v352[1]);
      v343 = v342;
      v344 = sub_1C0D0E630(v340, *(&v340 + 1), v341, v342);
      sub_1C0CF448C(v341, v343);
      sub_1C0CF448C(v340, *(&v340 + 1));
      return v344;
    }

    goto LABEL_212;
  }

LABEL_213:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D23BD0(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a1 multiply:a2 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D23CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  (*(v10 + 8))(v13, v9);
  v15 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v31[0] = a3;
  v16 = sub_1C0D78F2C();
  strcpy(v31, "ATHMV1-P256-");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  MEMORY[0x1C68E3B00](v16);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](45, 0xE100000000000000);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](a4, a5);

  v18 = v31[0];
  v17 = v31[1];
  v19 = [v15 serializedPublicKey_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C0D7832C();
    v23 = v22;

    strcpy(v31, "HashToGroup-");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    MEMORY[0x1C68E3B00](v18, v17);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x6F746172656E6567, 0xEA00000000004872);

    v24 = sub_1C0D07698(v31[0], v31[1]);
    v26 = v25;
    sub_1C0D3F5F4(v21, v23, v24, v25);
    v28 = v27;
    sub_1C0CF448C(v24, v26);
    sub_1C0CF448C(v21, v23);
    *a1 = v28;
    return v15;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1C0D23FF4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v104 = *MEMORY[0x1E69E9840];
  v92 = sub_1C0D786CC();
  v95 = *(v92 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  if (v11 != qword_1EBE72D80)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    goto LABEL_49;
  }

  v100 = MEMORY[0x1E6969080];
  v101 = MEMORY[0x1E6969078];
  v98 = a1;
  v99 = a2;
  v14 = __swift_project_boxed_opaque_existential_1(&v98, MEMORY[0x1E6969080]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  v88 = a3;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v96, 0, 14);
      sub_1C0CF6468(a1, a2);
      v18 = v96;
      v19 = v96;
      goto LABEL_37;
    }

    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    sub_1C0CF6468(a1, a2);
    v23 = sub_1C0D7812C();
    if (v23)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v21, v24))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v23 += v21 - v24;
    }

    if (__OFSUB__(v22, v21))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = sub_1C0D7814C();
    if (v25 >= v22 - v21)
    {
      v26 = v22 - v21;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    if (!v17)
    {
      v96[0] = v15;
      LOWORD(v96[1]) = v16;
      BYTE2(v96[1]) = BYTE2(v16);
      BYTE3(v96[1]) = BYTE3(v16);
      BYTE4(v96[1]) = BYTE4(v16);
      BYTE5(v96[1]) = BYTE5(v16);
      sub_1C0CF6468(a1, a2);
      v18 = v96;
      v19 = v96 + BYTE6(v16);
      goto LABEL_37;
    }

    v27 = v15;
    v28 = v15 >> 32;
    v29 = v28 - v27;
    if (v28 < v27)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_1C0CF6468(a1, a2);
    v23 = sub_1C0D7812C();
    if (v23)
    {
      v30 = sub_1C0D7815C();
      if (__OFSUB__(v27, v30))
      {
        goto LABEL_57;
      }

      v23 += v27 - v30;
    }

    v31 = sub_1C0D7814C();
    if (v31 >= v29)
    {
      v26 = v29;
    }

    else
    {
      v26 = v31;
    }
  }

  v32 = (v26 + v23);
  if (v23)
  {
    v19 = v32;
  }

  else
  {
    v19 = 0;
  }

  v18 = v23;
LABEL_37:
  sub_1C0D20850(v18, v19, v97);
  v33 = v97[0];
  v34 = v97[1];
  __swift_destroy_boxed_opaque_existential_1(&v98);
  v102 = v33;
  v103 = v34;
  v35 = objc_opt_self();
  sub_1C0D7884C();
  v94 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v36 = sub_1C0D786BC();
  v37 = v95 + 8;
  v38 = v92;
  v93 = *(v95 + 8);
  v93(v9, v92);
  v91 = v35;
  v39 = [v35 compressedx962PointByteCountForCurveParameters_];
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v40 = v39;
  v89 = v3;
  v41 = v102;
  v42 = v103;
  sub_1C0CF6468(v102, v103);
  sub_1C0D01560(v40, v41, v42, &v98);
  v44 = v98;
  v43 = v99;
  sub_1C0D22268(v40);
  LODWORD(v98) = 0;
  sub_1C0CF6468(v44, v43);
  sub_1C0D786EC();
  v45 = sub_1C0D786BC();
  v93(v9, v38);
  v46 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v47 = v37;
  v48 = sub_1C0D7830C();
  v49 = [v46 initFromPublicKeyBytes:v48 inGroup:v45 compressed:1 corecryptoError:&v98];

  sub_1C0CF448C(v44, v43);
  if (!v49)
  {
    v78 = v98;
    sub_1C0CF8DE0();
    swift_allocError();
    *v79 = v78;
    *(v79 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v44, v43);
    sub_1C0CF448C(v102, v103);
    goto LABEL_49;
  }

  v90 = v49;
  sub_1C0CF448C(v44, v43);
  sub_1C0D786EC();
  v50 = sub_1C0D786BC();
  v93(v9, v38);
  v51 = [v91 compressedx962PointByteCountForCurveParameters_];
  if ((v51 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v52 = v51;
  v53 = v102;
  v54 = v103;
  sub_1C0CF6468(v102, v103);
  sub_1C0D01560(v52, v53, v54, &v98);
  v55 = v98;
  v56 = v99;
  sub_1C0D22268(v52);
  LODWORD(v98) = 0;
  sub_1C0CF6468(v55, v56);
  sub_1C0D786EC();
  v57 = sub_1C0D786BC();
  v93(v9, v38);
  v58 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v59 = sub_1C0D7830C();
  v95 = v47;
  v60 = v59;
  v61 = [v58 initFromPublicKeyBytes:v59 inGroup:v57 compressed:1 corecryptoError:&v98];

  sub_1C0CF448C(v55, v56);
  if (!v61)
  {
    v80 = v98;
    sub_1C0CF8DE0();
    swift_allocError();
    *v81 = v80;
    *(v81 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v55, v56);
    sub_1C0CF448C(v102, v103);

    goto LABEL_49;
  }

  sub_1C0CF448C(v55, v56);
  sub_1C0D786EC();
  v62 = sub_1C0D786BC();
  v93(v9, v38);
  v63 = [v91 compressedx962PointByteCountForCurveParameters_];
  if ((v63 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  v64 = v63;
  v65 = v102;
  v66 = v103;
  sub_1C0CF6468(v102, v103);
  sub_1C0D01560(v64, v65, v66, &v98);
  v67 = v98;
  v68 = v99;
  sub_1C0D22268(v64);
  LODWORD(v98) = 0;
  sub_1C0CF6468(v67, v68);
  sub_1C0D786EC();
  v69 = sub_1C0D786BC();
  v93(v9, v38);
  v70 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v71 = sub_1C0D7830C();
  v72 = [v70 initFromPublicKeyBytes:v71 inGroup:v69 compressed:1 corecryptoError:&v98];

  sub_1C0CF448C(v67, v68);
  if (v72)
  {
    sub_1C0CF448C(v67, v68);
    v73 = v102;
    v74 = v103;
    sub_1C0CF6468(v102, v103);
    v75 = v89;
    v76 = sub_1C0D2C610(v73, v74);
    if (v75)
    {
      sub_1C0CF448C(v73, v74);

      sub_1C0CF448C(v73, v74);
    }

    else
    {
      v84 = v76;
      v85 = v77;
      sub_1C0CF448C(v73, v74);
      sub_1C0CF448C(v73, v74);
      v86 = v88;
      *v88 = v61;
      v86[1] = v72;
      v86[2] = v90;
      v86[3] = v84;
      v86[4] = v85;
    }
  }

  else
  {
    v82 = v98;
    sub_1C0CF8DE0();
    swift_allocError();
    *v83 = v82;
    *(v83 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v67, v68);
    sub_1C0CF448C(v102, v103);
  }

LABEL_49:
  v87 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C0D24920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  v40 = v5[2];
  v31 = v5[4];
  v32 = v12;
  if ([v10 isEqual_])
  {
    goto LABEL_9;
  }

  if ([v10 isEqual_])
  {
    goto LABEL_9;
  }

  v5 = sub_1C0D1388C(v10, v10);
  v13 = [v10 isEqual_];

  if (v13 & 1) != 0 || ([v11 isEqual_] & 1) != 0 || (objc_msgSend(v11, sel_isEqual_, a2) & 1) != 0 || (v14 = sub_1C0D1388C(v11, v11), LOBYTE(v5) = objc_msgSend(v11, sel_isEqual_, v14), v14, (v5) || (objc_msgSend(v40, sel_isEqual_, a1) & 1) != 0 || (v15 = sub_1C0D1388C(v40, v40), LOBYTE(v5) = objc_msgSend(v40, sel_isEqual_, v15), v15, (v5))
  {
LABEL_9:
    sub_1C0D2FE30();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  else
  {
    v18 = sub_1C0D78F2C();
    strcpy(v34, "ATHMV1-P256-");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    MEMORY[0x1C68E3B00](v18);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](45, 0xE100000000000000);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](a4, a5);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x696D6D6F4379654BLL, 0xEE0073746E656D74);

    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1C0CF49E8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = 122;
    *(v22 + 5) = 0xE100000000000000;
    v35 = v19;
    v23 = sub_1C0D2EC40(0x6F746172656E6567, 0xEA00000000004772, a1, v34);
    v24 = sub_1C0D2EC40(90, 0xE100000000000000, v40, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C0D7B690;
    *(v25 + 32) = v21;
    *(v25 + 40) = v23;
    v26 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1C0CF4AF4(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1C0CF4AF4((v27 > 1), v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    v29 = &v26[2 * v28];
    v29[4] = v24;
    v29[5] = v25;
    v39[0] = v34[0];
    v39[1] = v34[1];
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    v39[5] = v26;
    v5 = v39;
    v30 = sub_1C0D21C50(v32, v31);
    if (!v33)
    {
      LOBYTE(v5) = v30;
    }
  }

  return v5 & 1;
}

uint64_t sub_1C0D24E1C(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D789EC();
  v40[0] = *(v4 - 8);
  v5 = *(v40[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0D7865C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E6969080];
  v45 = MEMORY[0x1E6969078];
  v42 = a1;
  v43 = a2;
  v13 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v16)
    {
      v41[0] = *v13;
      LOWORD(v41[1]) = v15;
      BYTE2(v41[1]) = BYTE2(v15);
      BYTE3(v41[1]) = BYTE3(v15);
      BYTE4(v41[1]) = BYTE4(v15);
      BYTE5(v41[1]) = BYTE5(v15);
      sub_1C0CF6468(a1, a2);
      v17 = v41;
      v18 = v41 + BYTE6(v15);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v16 != 2)
  {
    memset(v41, 0, 14);
    sub_1C0CF6468(a1, a2);
    v17 = v41;
    v18 = v41;
    goto LABEL_23;
  }

  v19 = *(v14 + 16);
  v20 = *(v14 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  a1 = sub_1C0D7812C();
  if (a1)
  {
    a2 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v21 = sub_1C0D7815C();
    v14 = v19 - v21;
    if (__OFSUB__(v19, v21))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    a1 += v14;
  }

  v22 = __OFSUB__(v20, v19);
  v23 = v20 - v19;
  if (v22)
  {
    __break(1u);
LABEL_11:
    v24 = v14;
    v25 = v14 >> 32;
    v23 = v25 - v24;
    if (v25 < v24)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_1C0CF6468(a1, a2);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v26 = sub_1C0D7815C();
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_32;
      }

      a1 += v24 - v26;
    }
  }

  v27 = sub_1C0D7814C();
  if (v27 >= v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v28 + a1);
  if (a1)
  {
    v18 = v29;
  }

  else
  {
    v18 = 0;
  }

  v17 = a1;
LABEL_23:
  sub_1C0D20850(v17, v18, &v46);
  v30 = v46;
  v31 = v47;
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v46 = v30;
  v47 = v31;
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBE72D80;
  if (qword_1EBE6CCC8 != -1)
  {
    swift_once();
  }

  v33 = v32 - qword_1EBE72DA0;
  if (__OFSUB__(v32, qword_1EBE72DA0))
  {
    __break(1u);
    goto LABEL_30;
  }

  sub_1C0CF6468(v30, v31);
  sub_1C0D01560(v33, v30, v31, &v42);
  v34 = v42;
  v35 = v43;
  sub_1C0D22268(v33);
  sub_1C0D30240(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  sub_1C0D7863C();
  sub_1C0CF6468(v34, v35);
  sub_1C0D3C2C8(v34, v35);
  sub_1C0CF448C(v34, v35);
  sub_1C0D7862C();
  (*(v40[0] + 8))(v7, v4);
  v44 = v8;
  v45 = sub_1C0D30240(qword_1EBE6D7B8, MEMORY[0x1E69663E0]);
  v36 = __swift_allocate_boxed_opaque_existential_1(&v42);
  (*(v9 + 16))(v36, v12, v8);
  __swift_project_boxed_opaque_existential_1(&v42, v44);
  sub_1C0D7819C();
  sub_1C0CF448C(v34, v35);
  (*(v9 + 8))(v12, v8);
  sub_1C0CF448C(v46, v47);
  v37 = v41[0];
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

id ATHMKeyCommitments.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATHMKeyCommitments();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ATHMClient.init(keyCommitmentsData:numBuckets:deploymentID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C0D786CC();
  v67 = *(v12 - 8);
  v13 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D23FF4(a1, a2, &v60);
  if (v6)
  {

    sub_1C0CF448C(a1, a2);
    goto LABEL_11;
  }

  v49 = a3;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  v45 = a1;
  v46 = a2;
  v47 = 0;
  v48 = v5;
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v16 = sub_1C0D786BC();
  v17 = *(v67 + 1);
  v17(v15, v12);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v67 = result;
    sub_1C0D786EC();
    v19 = sub_1C0D786BC();
    v17(v15, v12);
    result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (result)
    {
      v20 = result;
      v65 = *(&v60 + 1);
      v66 = v60;
      v21 = v61;
      v63 = v62;
      v64 = *(&v61 + 1);
      sub_1C0D13734(&v66, v52, &qword_1EBE6D478, &unk_1C0D7C850);
      sub_1C0D13734(&v65, v52, &qword_1EBE6D478, &unk_1C0D7C850);
      v22 = v21;
      sub_1C0D13734(&v64, v52, &qword_1EBE6D480, &unk_1C0D7BF30);
      sub_1C0D13734(&v63, v52, &qword_1EBE6D488, &qword_1C0D7C860);
      v23 = v49;
      v24 = v50;
      v25 = sub_1C0D23CF0(&v57 + 1, 3, v49, v50, *(&v50 + 1));
      *&v57 = v25;
      v44 = *(&v57 + 1);
      v26 = v47;
      v27 = sub_1C0D24920(v25, *(&v57 + 1), v23, v24, *(&v24 + 1));
      v28 = v46;
      v29 = v45;
      if (v26)
      {
        sub_1C0D13578(&v66, &qword_1EBE6D478, &unk_1C0D7C850);
        sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);

        sub_1C0D13578(&v64, &qword_1EBE6D480, &unk_1C0D7BF30);
        sub_1C0D13578(&v63, &qword_1EBE6D488, &qword_1C0D7C860);
        sub_1C0CF448C(v29, v28);

        v5 = v48;
      }

      else
      {
        v30 = v27;
        sub_1C0D13578(&v66, &qword_1EBE6D478, &unk_1C0D7C850);
        sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);

        sub_1C0D13578(&v64, &qword_1EBE6D480, &unk_1C0D7BF30);
        sub_1C0D13578(&v63, &qword_1EBE6D488, &qword_1C0D7C860);
        v5 = v48;
        if (v30)
        {
          v54 = v60;
          v55 = v61;
          v31 = v67;
          *&v53 = v67;
          *(&v53 + 1) = v20;
          *&v56 = v62;
          *(&v56 + 1) = 3;
          v32 = v22;
          v33 = sub_1C0D13834(v31, v32);

          v34 = sub_1C0D13834(v20, v25);
          v35 = sub_1C0D1388C(v33, v34);

          *&v58 = v35;
          *(&v58 + 1) = v49;
          v59 = v50;
          v36 = &v5[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client];
          v37 = v58;
          *(v36 + 4) = v57;
          *(v36 + 5) = v37;
          *(v36 + 6) = v59;
          v39 = v54;
          v38 = v55;
          *v36 = v53;
          *(v36 + 1) = v39;
          v40 = v56;
          *(v36 + 2) = v38;
          *(v36 + 3) = v40;
          v41 = type metadata accessor for ATHMClient();
          v51.receiver = v5;
          v51.super_class = v41;
          v5 = objc_msgSendSuper2(&v51, sel_init);
          sub_1C0CF448C(v29, v28);
          return v5;
        }

        sub_1C0D2FE30();
        swift_allocError();
        *v42 = 2;
        swift_willThrow();
        sub_1C0CF448C(v29, v28);
      }

      sub_1C0D13578(&v66, &qword_1EBE6D478, &unk_1C0D7C850);
      sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);

      sub_1C0D13578(&v64, &qword_1EBE6D480, &unk_1C0D7BF30);
      sub_1C0D13578(&v63, &qword_1EBE6D488, &qword_1C0D7C860);

LABEL_11:
      type metadata accessor for ATHMClient();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D25C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 96);
  v2 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 104);
  sub_1C0D78BFC();
  return v1;
}

id sub_1C0D25CD8()
{
  result = [*(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 80) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C0D25DF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = sub_1C0D786CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D26040(a1, a2, v24);
  if (v4)
  {
    return a3;
  }

  v13 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 80);
  v29 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 64);
  v30 = v13;
  v31 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 96);
  v14 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 16);
  v25 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client);
  v26 = v14;
  v15 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 48);
  v27 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 32);
  v28 = v15;
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v16 = sub_1C0D786BC();
  (*(v9 + 8))(v12, v8);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v18 = result;
    v19 = sub_1C0D269A8(v24, a3, 0, result);
    v21 = v20;
    v23 = v22;

    a3 = sub_1C0D39E8C(v19, v21, v23);
    sub_1C0D13578(v24, &qword_1EBE6D780, &qword_1C0D7C868);
    return a3;
  }

  __break(1u);
  return result;
}

void sub_1C0D26040(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v105 = *MEMORY[0x1E69E9840];
  v91 = sub_1C0D786CC();
  v94 = *(v91 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCB8 != -1)
  {
    swift_once();
  }

  if (qword_1EBE72D90 >= v11)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    goto LABEL_49;
  }

  v101 = MEMORY[0x1E6969080];
  v102 = MEMORY[0x1E6969078];
  v99 = a1;
  v100 = a2;
  v14 = __swift_project_boxed_opaque_existential_1(&v99, MEMORY[0x1E6969080]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  v88 = a3;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v95, 0, 14);
      sub_1C0CF6468(a1, a2);
      v18 = v95;
      v19 = v95;
      goto LABEL_37;
    }

    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    sub_1C0CF6468(a1, a2);
    v23 = sub_1C0D7812C();
    if (v23)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v21, v24))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v23 += v21 - v24;
    }

    if (__OFSUB__(v22, v21))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = sub_1C0D7814C();
    if (v25 >= v22 - v21)
    {
      v26 = v22 - v21;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    if (!v17)
    {
      v95[0] = v15;
      LOWORD(v95[1]) = v16;
      BYTE2(v95[1]) = BYTE2(v16);
      BYTE3(v95[1]) = BYTE3(v16);
      BYTE4(v95[1]) = BYTE4(v16);
      BYTE5(v95[1]) = BYTE5(v16);
      sub_1C0CF6468(a1, a2);
      v18 = v95;
      v19 = v95 + BYTE6(v16);
      goto LABEL_37;
    }

    v27 = v15;
    v28 = v15 >> 32;
    v29 = v28 - v27;
    if (v28 < v27)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_1C0CF6468(a1, a2);
    v23 = sub_1C0D7812C();
    if (v23)
    {
      v30 = sub_1C0D7815C();
      if (__OFSUB__(v27, v30))
      {
        goto LABEL_57;
      }

      v23 += v27 - v30;
    }

    v31 = sub_1C0D7814C();
    if (v31 >= v29)
    {
      v26 = v29;
    }

    else
    {
      v26 = v31;
    }
  }

  v32 = (v26 + v23);
  if (v23)
  {
    v19 = v32;
  }

  else
  {
    v19 = 0;
  }

  v18 = v23;
LABEL_37:
  sub_1C0D20850(v18, v19, v98);
  v33 = v98[0];
  v34 = v98[1];
  __swift_destroy_boxed_opaque_existential_1(&v99);
  v103 = v33;
  v104 = v34;
  v35 = objc_opt_self();
  sub_1C0D7884C();
  v93 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v36 = sub_1C0D786BC();
  v37 = v94 + 8;
  v38 = v91;
  v92 = *(v94 + 8);
  v92(v9, v91);
  v90 = v35;
  v39 = [v35 compressedx962PointByteCountForCurveParameters_];
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v40 = v39;
  v89 = v3;
  v41 = v103;
  v42 = v104;
  sub_1C0CF6468(v103, v104);
  sub_1C0D01560(v40, v41, v42, &v99);
  v43 = v99;
  v44 = v100;
  sub_1C0D22268(v40);
  LODWORD(v99) = 0;
  sub_1C0CF6468(v43, v44);
  sub_1C0D786EC();
  v45 = sub_1C0D786BC();
  v92(v9, v38);
  v46 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v47 = v37;
  v48 = sub_1C0D7830C();
  v49 = [v46 initFromPublicKeyBytes:v48 inGroup:v45 compressed:1 corecryptoError:&v99];

  sub_1C0CF448C(v43, v44);
  if (!v49)
  {
    v78 = v99;
    sub_1C0CF8DE0();
    swift_allocError();
    *v79 = v78;
    *(v79 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v43, v44);
    sub_1C0CF448C(v103, v104);
    goto LABEL_49;
  }

  sub_1C0CF448C(v43, v44);
  sub_1C0D786EC();
  v50 = sub_1C0D786BC();
  v92(v9, v38);
  v51 = [v90 compressedx962PointByteCountForCurveParameters_];
  if ((v51 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v52 = v51;
  v53 = v47;
  v54 = v49;
  v55 = v103;
  v56 = v104;
  sub_1C0CF6468(v103, v104);
  sub_1C0D01560(v52, v55, v56, &v99);
  v57 = v99;
  v58 = v100;
  sub_1C0D22268(v52);
  LODWORD(v99) = 0;
  sub_1C0CF6468(v57, v58);
  sub_1C0D786EC();
  v59 = sub_1C0D786BC();
  v92(v9, v38);
  v60 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v61 = sub_1C0D7830C();
  v94 = v53;
  v62 = v61;
  v63 = [v60 initFromPublicKeyBytes:v61 inGroup:v59 compressed:1 corecryptoError:&v99];

  sub_1C0CF448C(v57, v58);
  if (!v63)
  {
    v80 = v99;
    sub_1C0CF8DE0();
    swift_allocError();
    *v81 = v80;
    *(v81 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v57, v58);
    sub_1C0CF448C(v103, v104);

    goto LABEL_49;
  }

  sub_1C0CF448C(v57, v58);
  sub_1C0D786EC();
  v64 = sub_1C0D786BC();
  v92(v9, v38);
  v65 = [v90 groupOrderByteCountForCP_];
  if ((v65 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  v66 = v65;
  v67 = v103;
  v68 = v104;
  sub_1C0CF6468(v103, v104);
  sub_1C0D01560(v66, v67, v68, &v99);
  v70 = v99;
  v69 = v100;
  sub_1C0D22268(v66);
  LODWORD(v99) = 0;
  sub_1C0CF6468(v70, v69);
  sub_1C0D786EC();
  v71 = sub_1C0D786BC();
  v92(v9, v38);
  v72 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v73 = sub_1C0D7830C();
  v74 = [v72 initWithData:v73 inGroup:v71 reduction:0 corecryptoError:&v99];

  sub_1C0CF448C(v70, v69);
  if (v74)
  {
    sub_1C0CF448C(v70, v69);
    v75 = v103;
    v76 = v104;
    sub_1C0CF6468(v103, v104);
    v77 = v89;
    sub_1C0D2CD8C(v75, v76, v96);
    sub_1C0CF448C(v75, v76);
    if (v77)
    {

      sub_1C0CF448C(v75, v76);
    }

    else
    {
      sub_1C0CF448C(v75, v76);
      v84 = v88;
      *v88 = v54;
      v84[1] = v63;
      v84[2] = v74;
      v85 = v96[1];
      *(v84 + 3) = v96[0];
      *(v84 + 5) = v85;
      *(v84 + 7) = v96[2];
      v84[9] = v97;
    }
  }

  else
  {
    v82 = v99;
    sub_1C0CF8DE0();
    swift_allocError();
    *v83 = v82;
    *(v83 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v70, v69);
    sub_1C0CF448C(v103, v104);
  }

LABEL_49:
  v86 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C0D269A8(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v159[1] = *MEMORY[0x1E69E9840];
  v151 = sub_1C0D786CC();
  v10 = *(v151 - 1);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v4[11];
  if ((a3 & 1) == 0)
  {
    if (a2 < 1 || (v13 = v154, v154 = a2, v13 != a2))
    {
      sub_1C0D2FE30();
      swift_allocError();
      v23 = 8;
      goto LABEL_8;
    }
  }

  v136 = v5;
  v14 = v4[13];
  v135 = v4[12];
  v134 = v14;
  v15 = v4[9];
  v137 = v4[10];
  v16 = v4[3];
  v140 = v4[2];
  v149 = v16;
  v139 = v4[4];
  v17 = v4[8];
  v18 = *a1;
  v19 = sub_1C0D1388C(*a1, *a1);
  v138 = v18;
  LOBYTE(v18) = [v18 isEqual_];

  if ((v18 & 1) != 0 || (v20 = a1[1], v21 = sub_1C0D1388C(v20, v20), v133 = v20, LODWORD(v20) = [v20 isEqual_], v21, v20))
  {
    sub_1C0D2FE30();
    swift_allocError();
    v23 = 4;
LABEL_8:
    *v22 = v23;
LABEL_9:
    swift_willThrow();
LABEL_10:
    v24 = *MEMORY[0x1E69E9840];
    return v10;
  }

  if (v154 <= 0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v62 = 0;
    goto LABEL_9;
  }

  v132 = v17;
  v147 = v15;
  v130 = a4;
  v131 = v4;
  v26 = MEMORY[0x1E69E7CC0];
  v158 = MEMORY[0x1E69E7CC0];
  v27 = (v10 + 1);
  v28 = sub_1C0D7884C();
  v29 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  v30 = 0;
  v153 = a1;
  v146 = v10 + 1;
  v145 = v28;
  v144 = v29;
  do
  {
    v148 = v26;
    v31 = v150;
    sub_1C0D786EC();
    v32 = sub_1C0D786BC();
    v33 = *v27;
    v34 = v151;
    (*v27)(v31, v151);
    v152 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v152)
    {
      goto LABEL_40;
    }

    v35 = objc_opt_self();
    sub_1C0D786EC();
    v36 = sub_1C0D786BC();
    v33(v31, v34);
    v37 = [v35 groupOrderByteCountForCP_];
    if (v37 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v38 = sub_1C0D053E8(v30, v37);
    v10 = v39;
    LODWORD(v155[0]) = 0;
    sub_1C0CF6468(v38, v39);
    sub_1C0D786EC();
    v40 = sub_1C0D786BC();
    v143 = v33;
    v33(v31, v34);
    v41 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v42 = sub_1C0D7830C();
    v43 = [v41 initWithData:v42 inGroup:v40 reduction:1 corecryptoError:v155];

    sub_1C0CF448C(v38, v10);
    if (!v43)
    {
      v63 = v155[0];
      sub_1C0CF8DE0();
      swift_allocError();
      *v64 = v63;
      *(v64 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v38, v10);

      goto LABEL_10;
    }

    sub_1C0CF448C(v38, v10);
    v44 = v152;
    v45 = sub_1C0D2BFF8(v43, v152);

    v46 = v153[5];
    if (v30 >= *(v46 + 16))
    {
      goto LABEL_37;
    }

    v48 = v153[3];
    v47 = v153[4];
    v49 = *(v46 + 8 * v30 + 32);
    v50 = sub_1C0D13834(v49, v147);

    if (v30 >= *(v47 + 16))
    {
      goto LABEL_38;
    }

    v142 = v47;
    v51 = *(v47 + 8 * v30 + 32);
    v52 = v149;
    v53 = sub_1C0D13834(v45, v149);
    v141 = v48;
    v54 = sub_1C0D2BEDC(v48, v53);

    v55 = sub_1C0D13834(v51, v54);
    v56 = sub_1C0D2BEDC(v50, v55);

    v57 = v51;
    v58 = sub_1C0D23BD0(v57, v44);

    v59 = sub_1C0D13834(v58, v52);
    v60 = sub_1C0D2BEDC(v56, v59);

    v61 = v60;
    MEMORY[0x1C68E3BD0]();
    if (*(v158 + 16) >= *(v158 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v30;
    sub_1C0D78C3C();

    v26 = v158;
    v27 = v146;
  }

  while (v154 != v30);
  v148 = v158;
  v65 = v153[7];
  v128 = v153[6];
  v127 = v65;
  v129 = v153[8];
  v159[0] = v142;
  v66 = objc_opt_self();
  sub_1C0D78BFC();
  v67 = v150;
  sub_1C0D786EC();
  v68 = sub_1C0D786BC();
  v69 = v151;
  v70 = v143;
  v143(v67, v151);
  v71 = [v66 groupOrderByteCountForCP_];
  if (v71 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v72 = sub_1C0D053E8(0, v71);
  v10 = v73;
  LODWORD(v155[0]) = 0;
  sub_1C0CF6468(v72, v73);
  sub_1C0D786EC();
  v74 = sub_1C0D786BC();
  v70(v67, v69);
  v75 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v76 = sub_1C0D7830C();
  v77 = [v75 initWithData:v76 inGroup:v74 reduction:1 corecryptoError:v155];

  sub_1C0CF448C(v72, v10);
  v78 = v132;
  if (!v77)
  {
    v113 = v155[0];
    sub_1C0CF8DE0();
    swift_allocError();
    *v114 = v113;
    *(v114 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v72, v10);
    sub_1C0D13578(v159, &qword_1EBE6D488, &qword_1C0D7C860);

    goto LABEL_10;
  }

  sub_1C0CF448C(v72, v10);
  v79 = v142;
  v80 = *(v142 + 16);
  v81 = v77;
  v82 = v81;
  v10 = v81;
  if (!v80)
  {
LABEL_30:
    sub_1C0D13578(v159, &qword_1EBE6D488, &qword_1C0D7C860);

    v88 = v128;
    v89 = sub_1C0D13834(v128, v138);
    v90 = sub_1C0D13834(v10, v78);
    v152 = sub_1C0D1388C(v89, v90);

    v91 = sub_1C0D13834(v88, v133);
    v92 = v147;
    v93 = sub_1C0D13834(v127, v147);
    v94 = sub_1C0D1388C(v91, v93);

    v95 = sub_1C0D1388C(v140, v141);
    v151 = v153[2];
    v96 = sub_1C0D13834(v151, v139);
    v97 = sub_1C0D1388C(v95, v96);

    v98 = v137;
    v99 = sub_1C0D1388C(v97, v137);

    v100 = sub_1C0D13834(v10, v99);
    v101 = sub_1C0D1388C(v94, v100);

    v102 = v88;
    v103 = v92;
    v104 = v133;
    v105 = sub_1C0D13834(v102, v133);
    v106 = v132;
    v107 = sub_1C0D13834(v129, v132);
    v108 = sub_1C0D1388C(v105, v107);

    v109 = sub_1C0D13834(v10, v98);
    v110 = sub_1C0D1388C(v108, v109);

    v111 = v136;
    v112 = sub_1C0D223A4(v106, v103, v140, v149, v139, v138, v104, v151, v98, v141, v148, v152, v101, v110, v154, v135, v134);
    if (v111)
    {

      goto LABEL_10;
    }

    v115 = v112;

    v116 = [v115 isEqual_];

    if (v116)
    {
      v117 = *v131;
      v118 = v131[1];
      v119 = v153;
      sub_1C0D13734(v153, v155, &qword_1EBE6D780, &qword_1C0D7C868);
      v120 = v137;
      v121 = v117;
      v122 = v118;
      v123 = v132;
      v124 = v103;
      v10 = sub_1C0D2F14C(v119, v120, v121, v122, v123, v124, v130);
      sub_1C0D13578(v119, &qword_1EBE6D780, &qword_1C0D7C868);
      goto LABEL_10;
    }

    sub_1C0D2FE30();
    swift_allocError();
    v23 = 5;
    goto LABEL_8;
  }

  v83 = (v79 + 32);
  v84 = v81;
  while (1)
  {
    v85 = *v83;
    v157 = 0;
    v86 = v85;
    v87 = [v84 add:v86 corecryptoError:&v157];
    if (!v87)
    {
      break;
    }

    v10 = v87;

    ++v83;
    v84 = v10;
    if (!--v80)
    {
      goto LABEL_30;
    }
  }

  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
  v156 = v157;
  v125 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v125);

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id ATHMClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATHMServer.init(numBuckets:deploymentID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v58 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v9 = sub_1C0D786BC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v57 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v57)
  {
    goto LABEL_15;
  }

  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  v10(v8, v4);
  v56 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v56)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v10(v8, v4);
  v55 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v10(v8, v4);
  v54 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v54)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v53 = a2;
  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  v10(v8, v4);
  v15 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = objc_opt_self();
  sub_1C0D786EC();
  v18 = sub_1C0D786BC();
  v10(v8, v4);
  v19 = [v17 groupOrderByteCountForCP_];
  if (v19 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = sub_1C0D053E8(0, v19);
  v22 = v21;
  LODWORD(v70) = 0;
  sub_1C0CF6468(v20, v21);
  sub_1C0D786EC();
  v23 = sub_1C0D786BC();
  v10(v8, v4);
  v24 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v25 = sub_1C0D7830C();
  v26 = [v24 initWithData:v25 inGroup:v23 reduction:1 corecryptoError:&v70];

  sub_1C0CF448C(v20, v22);
  if (!v26)
  {
    goto LABEL_22;
  }

  sub_1C0CF448C(v20, v22);
  v22 = v57;
  v27 = [v57 isEqual_];
  v28 = v60;
  v29 = v58;
  v20 = v56;
  v30 = v55;
  v31 = v54;
  if (v27 & 1) != 0 || [v56 isEqual_] || (objc_msgSend(v30, sel_isEqual_, v26) & 1) != 0 || (objc_msgSend(v31, sel_isEqual_, v26) & 1) != 0 || (objc_msgSend(v16, sel_isEqual_, v26))
  {

    sub_1C0D2FE30();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);
LABEL_22:
      v51 = v70;
      sub_1C0CF8DE0();
      swift_allocError();
      *v52 = v51;
      *(v52 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v20, v22);

      v26 = v54;
    }
  }

  *&v70 = v22;
  *(&v70 + 1) = v20;
  *&v71 = v30;
  *(&v71 + 1) = v31;
  v72 = v16;
  *v64 = v16;
  v62 = v70;
  v63 = v71;
  v57 = v22;
  v56 = v20;
  v32 = v30;
  v33 = v31;
  v34 = v16;
  v35 = v29;
  v36 = v29;
  v37 = v53;
  *(&v65 + 1) = sub_1C0D23CF0(&v66, 3, v35, v53, v28);
  v38 = v66;
  v39 = *(&v65 + 1);
  v40 = v38;
  sub_1C0D78BFC();
  sub_1C0D2E720(&v70, v39, v40, v37, v28, v68);

  *&v64[24] = v68[1];
  *&v64[8] = v68[0];
  *&v64[40] = v69;
  *&v65 = 3;
  *(&v66 + 1) = v36;
  *&v67 = v37;
  *(&v67 + 1) = v28;
  v41 = v59;
  v42 = &v59[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server];
  v43 = v67;
  *(v42 + 6) = v66;
  *(v42 + 7) = v43;
  v44 = v63;
  *v42 = v62;
  *(v42 + 1) = v44;
  v45 = v65;
  *(v42 + 4) = *&v64[32];
  *(v42 + 5) = v45;
  v46 = *&v64[16];
  *(v42 + 2) = *v64;
  *(v42 + 3) = v46;
  v47 = type metadata accessor for ATHMServer();
  v61.receiver = v41;
  v61.super_class = v47;
  result = objc_msgSendSuper2(&v61, sel_init);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D28124()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 112);
  v2 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 120);
  sub_1C0D78BFC();
  return v1;
}

id sub_1C0D281C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 40);
  v3 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 56);
  v4 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 72);
  return sub_1C0D3A04C();
}

char *sub_1C0D282F4(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v327[7] = *MEMORY[0x1E69E9840];
  v10 = sub_1C0D786CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0D2ADA8(a1, a2);
  if (v5)
  {
    goto LABEL_61;
  }

  v305 = v15;
  v314 = a3;
  v313 = a4;
  v300 = 0;
  v16 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 8);
  v293 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server);
  v294 = v16;
  v17 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 24);
  v295 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 16);
  v296 = v17;
  v18 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 40);
  v297 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 32);
  v298 = v18;
  v19 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 56);
  v301 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 48);
  v299 = v19;
  v20 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 72);
  v302 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 64);
  v303 = v20;
  v21 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 96);
  v315 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 88);
  v311 = v21;
  v22 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 120);
  v290 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 112);
  v309 = v22;
  v23 = sub_1C0D7884C();
  v24 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v25 = sub_1C0D786BC();
  v26 = (v11 + 8);
  v27 = *(v11 + 8);
  v27(v14, v10);
  v304 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v304)
  {
    __break(1u);
    goto LABEL_113;
  }

  sub_1C0D786EC();
  v28 = sub_1C0D786BC();
  v27(v14, v10);
  v310 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v310)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  sub_1C0D786EC();
  v29 = sub_1C0D786BC();
  v27(v14, v10);
  v312 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v312)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_1C0D786EC();
  v30 = sub_1C0D786BC();
  v27(v14, v10);
  v308 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v308)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  sub_1C0D786EC();
  v31 = sub_1C0D786BC();
  v27(v14, v10);
  v307 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v307)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  sub_1C0D786EC();
  v32 = sub_1C0D786BC();
  v27(v14, v10);
  v306 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v306)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v319 = v24;
  sub_1C0D786EC();
  v33 = sub_1C0D786BC();
  v317 = v10;
  v318 = v26;
  v316 = v27;
  v27(v14, v10);
  v34 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v34)
  {
    goto LABEL_118;
  }

  v35 = v34;
  if (v314 < 0 || v313 < 1 || v314 >= v313)
  {
    sub_1C0D2FE30();
    v14 = swift_allocError();
    *v50 = 0;
    swift_willThrow();

    goto LABEL_61;
  }

  v292 = v34;
  v293 = v293;
  v294 = v294;
  v295 = v295;
  v286 = v296;
  v285 = v297;
  v36 = v298;
  v301 = v301;
  v37 = v299;
  v287 = v302;
  sub_1C0D78BFC();
  v38 = v315;
  v311 = v311;
  sub_1C0D78BFC();
  v39 = v310;
  v315 = v38;
  v40 = sub_1C0D13834(v310, v38);
  v310 = v39;
  LODWORD(v321) = 0;
  v41 = [v40 add:v40 corecryptoError:&v321];
  if (!v41)
  {
LABEL_18:
    v323 = 0;
    v324 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v322 = v321;
    v49 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v49);

    goto LABEL_125;
  }

  v42 = v41;
  v43 = v310;
  while (1)
  {
    v44 = [v40 isEqual_];

    if ((v44 & 1) == 0)
    {
      break;
    }

    v45 = v37;
    sub_1C0D786EC();
    v46 = sub_1C0D786BC();
    v316(v14, v317);
    v47 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];

    if (!v47)
    {
      goto LABEL_105;
    }

    LODWORD(v321) = 0;
    v48 = [v315 multiply:v47 corecryptoError:&v321];

    if (!v48)
    {
      goto LABEL_123;
    }

    LODWORD(v321) = 0;
    v42 = [v48 add:v48 corecryptoError:&v321];
    v43 = v47;
    v40 = v48;
    v37 = v45;
    if (!v42)
    {
      goto LABEL_18;
    }
  }

  v288 = v36;
  v289 = v37;
  v51 = objc_opt_self();
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v53 = v317;
  v316(v14, v317);
  v302 = v51;
  v54 = [v51 groupOrderByteCountForCP_];
  if (v54 < 0)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    v51 = sub_1C0CFD6AC(v51);
    goto LABEL_29;
  }

  v55 = sub_1C0D053E8(v314, v54);
  v57 = v56;
  LODWORD(v323) = 0;
  sub_1C0CF6468(v55, v56);
  sub_1C0D786EC();
  v299 = sub_1C0D786BC();
  v316(v14, v53);
  v58 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v59 = sub_1C0D7830C();
  v60 = [v58 initWithData:v59 inGroup:v299 reduction:1 corecryptoError:&v323];

  sub_1C0CF448C(v55, v57);
  if (!v60)
  {
    v145 = v323;
    sub_1C0CF8DE0();
    v14 = swift_allocError();
    *v146 = v145;
    *(v146 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v55, v57);

    goto LABEL_61;
  }

  sub_1C0CF448C(v55, v57);
  v279 = v60;
  v61 = sub_1C0D23BD0(v60, v294);
  v62 = sub_1C0D2BFF8(v293, v61);

  v63 = v304;
  v64 = sub_1C0D23BD0(v304, v295);
  v65 = sub_1C0D2BFF8(v62, v64);

  v66 = sub_1C0D13834(v65, v315);
  v278 = v66;
  v67 = v305;
  v68 = sub_1C0D1388C(v66, v305);
  v69 = sub_1C0D13834(v43, v68);

  sub_1C0D786EC();
  v70 = sub_1C0D786BC();
  v316(v14, v53);
  v71 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v71)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v72 = v71;
  v280 = v310;
  v282 = v63;
  v297 = v69;
  v73 = v40;
  v281 = v67;

  v323 = MEMORY[0x1E69E7CC0];
  v74 = v313;
  sub_1C0D78E3C();
  do
  {
    sub_1C0D786EC();
    v75 = sub_1C0D786BC();
    v316(v14, v53);
    v76 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v76)
    {
      goto LABEL_106;
    }

    v51 = v76;
    sub_1C0D78E0C();
    v77 = *(v323 + 2);
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    --v74;
    v53 = v317;
  }

  while (v74);
  v277 = v43;
  v283 = v73;
  v305 = v323;
  v43 = v319;
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v78 = v316;
  v316(v14, v53);
  v79 = [v302 groupOrderByteCountForCP_];
  if (v79 < 0)
  {
    goto LABEL_97;
  }

  v80 = sub_1C0D053E8(0, v79);
  v82 = v81;
  LODWORD(v323) = 0;
  sub_1C0CF6468(v80, v81);
  sub_1C0D786EC();
  v83 = sub_1C0D786BC();
  v78(v14, v53);
  v84 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v43 = v78;
  v85 = sub_1C0D7830C();
  v52 = [v84 initWithData:v85 inGroup:v83 reduction:1 corecryptoError:&v323];

  sub_1C0CF448C(v80, v82);
  if (!v52)
  {
    v149 = v323;
    sub_1C0CF8DE0();
    v150 = swift_allocError();
    *v151 = v149;
    *(v151 + 4) = 0;
    v300 = v150;
    swift_willThrow();
    sub_1C0CF448C(v80, v82);

    v152 = &v328;
    goto LABEL_64;
  }

  sub_1C0CF448C(v80, v82);
  v51 = v305;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_29:
  v86 = v313;
  if (v51[2] <= v314)
  {
    __break(1u);
  }

  else
  {
    v305 = v51;
    v87 = v51[v314 + 4];
    v275 = v51 + 4;
    v51[v314 + 4] = v52;

    v323 = MEMORY[0x1E69E7CC0];
    v52 = &v323;
    sub_1C0D78E3C();
    v88 = 0;
    do
    {
      if (v88 >= v86)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
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
        goto LABEL_96;
      }

      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_89;
      }

      sub_1C0D786EC();
      v90 = sub_1C0D786BC();
      (v43)(v14, v53);
      v91 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
      if (!v91)
      {
        goto LABEL_108;
      }

      v51 = v91;
      v52 = &v323;
      sub_1C0D78E0C();
      v92 = *(v323 + 2);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      ++v88;
      v53 = v317;
    }

    while (v89 != v86);
    v296 = v323;
    sub_1C0D786EC();
    v52 = sub_1C0D786BC();
    (v43)(v14, v53);
    v93 = [v302 groupOrderByteCountForCP_];
    if ((v93 & 0x8000000000000000) == 0)
    {
      v94 = sub_1C0D053E8(0, v93);
      v96 = v95;
      LODWORD(v323) = 0;
      sub_1C0CF6468(v94, v95);
      v291 = v23;
      sub_1C0D786EC();
      v97 = sub_1C0D786BC();
      (v43)(v14, v53);
      v98 = objc_allocWithZone(MEMORY[0x1E6999650]);
      v99 = sub_1C0D7830C();
      v52 = [v98 initWithData:v99 inGroup:v97 reduction:1 corecryptoError:&v323];

      sub_1C0CF448C(v94, v96);
      if (v52)
      {
        sub_1C0CF448C(v94, v96);
        v51 = v296;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_38;
        }

        goto LABEL_102;
      }

      v153 = v323;
      sub_1C0CF8DE0();
      v154 = swift_allocError();
      *v155 = v153;
      *(v155 + 4) = 0;
      v300 = v154;
      swift_willThrow();
      sub_1C0CF448C(v94, v96);

      v152 = v327;
LABEL_64:
      v156 = *(v152 - 32);

      v157 = v280;

      v158 = v283;
      v159 = v297;

      v160 = v282;

      v161 = v281;

      v162 = &v318;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_102:
  v51 = sub_1C0CFD6AC(v51);
LABEL_38:
  v43 = v291;
  if (v51[2] <= v314)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v100 = v51[v314 + 4];
  v51[v314 + 4] = v52;

  sub_1C0D786EC();
  v101 = sub_1C0D786BC();
  v102 = v316;
  v316(v14, v53);
  v276 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v276)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v272 = v51 + 4;
  v296 = v51;
  sub_1C0D786EC();
  v103 = sub_1C0D786BC();
  v102(v14, v53);
  v104 = [v302 groupOrderByteCountForCP_];
  if (v104 < 0)
  {
    goto LABEL_104;
  }

  v105 = sub_1C0D053E8(v314, v104);
  v107 = v106;
  LODWORD(v323) = 0;
  sub_1C0CF6468(v105, v106);
  sub_1C0D786EC();
  v108 = sub_1C0D786BC();
  v102(v14, v53);
  v109 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v110 = sub_1C0D7830C();
  v111 = [v109 initWithData:v110 inGroup:v108 reduction:1 corecryptoError:&v323];

  sub_1C0CF448C(v105, v107);
  if (!v111)
  {
    v181 = v323;
    sub_1C0CF8DE0();
    v182 = swift_allocError();
    *v183 = v181;
    *(v183 + 4) = 0;
    v300 = v182;
    swift_willThrow();
    sub_1C0CF448C(v105, v107);

    v157 = v280;

    v184 = v281;

    v185 = v282;
    v186 = v297;

    v187 = &v315;
    goto LABEL_68;
  }

  sub_1C0CF448C(v105, v107);
  v112 = v276;
  v113 = sub_1C0D2BFF8(v111, v276);

  v274 = v113;
  v23 = v301;
  v114 = sub_1C0D13834(v113, v301);
  v51 = sub_1C0D13834(v292, v311);
  v115 = sub_1C0D1388C(v114, v51);

  v52 = sub_1C0D13834(v112, v23);
  v273 = v115;
  v284 = sub_1C0D2BEDC(v115, v52);

  v116 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v321 = MEMORY[0x1E69E7CC0];
  v118 = v313;
  v119 = v314;
  v120 = v297;
  while (1)
  {
    if (v116 >= v118)
    {
      goto LABEL_90;
    }

    v121 = v116;
    v23 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      goto LABEL_91;
    }

    if (v119 != v116)
    {
      break;
    }

    v322 = 0;
    v122 = [v311 multiply:v312 corecryptoError:&v322];
    if (!v122)
    {
      goto LABEL_126;
    }

    v51 = v122;
    v52 = &v321;
    MEMORY[0x1C68E3BD0]();
    if (v321[2] >= v321[3] >> 1)
    {
      v123 = v321[2];
      sub_1C0D78C0C();
      v53 = v317;
    }

    sub_1C0D78C3C();
LABEL_44:
    v117 = v321;
    v116 = v121 + 1;
    v118 = v313;
    v119 = v314;
    if (v23 == v313)
    {
      v298 = v321;

      v163 = v308;
      v310 = sub_1C0D13834(v308, v283);
      v164 = sub_1C0D13834(v163, v120);
      v165 = v311;
      v166 = sub_1C0D13834(v307, v311);
      v167 = sub_1C0D1388C(v164, v166);

      v168 = sub_1C0D13834(v163, v120);
      v169 = v315;
      v170 = sub_1C0D13834(v306, v315);
      v171 = sub_1C0D1388C(v168, v170);

      v270 = v118;
      v303 = v171;
      v304 = v167;
      v269 = v167;
      v172 = v281;
      v173 = v169;
      v174 = v297;
      v175 = v283;
      v176 = v165;
      v177 = v301;
      v178 = v282;
      v179 = v300;
      v180 = sub_1C0D223A4(v173, v176, v288, v301, v289, v283, v297, v282, v281, v284, v298, v310, v269, v171, v270, v290, v309);
      v300 = v179;
      if (v179)
      {

        v157 = v280;

        goto LABEL_71;
      }

      v299 = v180;

      sub_1C0D786EC();
      v197 = sub_1C0D786BC();
      v198 = v317;
      v199 = v316;
      v316(v14, v317);
      v200 = [v302 groupOrderByteCountForCP_];
      if ((v200 & 0x8000000000000000) == 0)
      {
        v201 = sub_1C0D053E8(0, v200);
        v203 = v202;
        LODWORD(v323) = 0;
        sub_1C0CF6468(v201, v202);
        sub_1C0D786EC();
        v204 = sub_1C0D786BC();
        v199(v14, v198);
        v205 = objc_allocWithZone(MEMORY[0x1E6999650]);
        v206 = sub_1C0D7830C();
        v207 = [v205 initWithData:v206 inGroup:v204 reduction:1 corecryptoError:&v323];

        sub_1C0CF448C(v201, v203);
        if (v207)
        {
          sub_1C0CF448C(v201, v203);
          v53 = *(v305 + 2);
          v208 = v207;
          v52 = v208;
          v209 = v208;
          v23 = v291;
          v43 = v275;
          if (v53)
          {
            v210 = 0;
            v51 = v208;
            while (1)
            {
              if (v210 >= *(v305 + 2))
              {
                goto LABEL_98;
              }

              v211 = *(v43 + 8 * v210);
              v322 = 0;
              v212 = v211;
              v213 = [v51 add:v212 corecryptoError:&v322];
              if (!v213)
              {
                break;
              }

              v209 = v213;

              ++v210;
              v51 = v209;
              if (v53 == v210)
              {
                goto LABEL_80;
              }
            }

            v323 = 0;
            v324 = 0xE000000000000000;
            sub_1C0D78DAC();
            MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
            v320 = v322;
            v268 = sub_1C0D78F2C();
            MEMORY[0x1C68E3B00](v268);

            while (1)
            {
LABEL_125:
              sub_1C0D78EBC();
              __break(1u);
LABEL_126:
              v323 = 0;
              v324 = 0xE000000000000000;
              sub_1C0D78DAC();
              MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
              v320 = v322;
LABEL_124:
              v267 = sub_1C0D78F2C();
              MEMORY[0x1C68E3B00](v267);
            }
          }

LABEL_80:

          v214 = sub_1C0D2C16C(v299, v209);
          if (*(v305 + 2) > v314)
          {
            v215 = *(v43 + 8 * v314);
            *(v43 + 8 * v314) = v214;
            v216 = v214;

            v217 = v280;
            v218 = [v280 inverseModOrder];

            v196 = v279;
            v219 = v317;
            if (v218)
            {
              v315 = v216;
              v311 = v218;
              sub_1C0D786EC();
              v220 = sub_1C0D786BC();
              v221 = v316;
              v316(v14, v219);
              v222 = [v302 groupOrderByteCountForCP_];
              if ((v222 & 0x8000000000000000) == 0)
              {
                v223 = sub_1C0D053E8(v314, v222);
                v225 = v224;
                LODWORD(v323) = 0;
                sub_1C0CF6468(v223, v224);
                sub_1C0D786EC();
                v226 = sub_1C0D786BC();
                v221(v14, v219);
                v227 = objc_allocWithZone(MEMORY[0x1E6999650]);
                v228 = sub_1C0D7830C();
                v229 = [v227 initWithData:v228 inGroup:v226 reduction:1 corecryptoError:&v323];

                sub_1C0CF448C(v223, v225);
                if (!v229)
                {
                  v263 = v323;
                  sub_1C0CF8DE0();
                  v264 = swift_allocError();
                  *v265 = v263;
                  *(v265 + 4) = 0;
                  v300 = v264;
                  swift_willThrow();
                  sub_1C0CF448C(v223, v225);

                  v266 = v282;
                  v14 = v278;
                  v157 = v280;
                  goto LABEL_72;
                }

                sub_1C0CF448C(v223, v225);
                v230 = v285;
                v231 = sub_1C0D23BD0(v229, v285);

                v232 = v286;
                v233 = sub_1C0D2BFF8(v286, v231);

                v234 = v292;
                v235 = sub_1C0D2BFF8(v233, v292);

                v236 = sub_1C0D2C288(v235);
                v237 = v294;
                v238 = sub_1C0D23BD0(v229, v294);

                v239 = v293;
                v240 = sub_1C0D2BFF8(v293, v238);

                v241 = v282;
                v242 = v295;
                v243 = sub_1C0D23BD0(v282, v295);

                v319 = sub_1C0D2BFF8(v240, v243);
                v244 = v315;
                v245 = sub_1C0D23BD0(v315, v234);

                v246 = v312;
                v247 = sub_1C0D2BFF8(v312, v245);

                if (*(v296 + 2) > v314)
                {
                  v248 = v272[v314];
                  v272[v314] = v247;
                  v249 = v247;

                  v250 = v299;
                  v251 = v311;
                  v252 = sub_1C0D23BD0(v299, v311);
                  v253 = v308;
                  v318 = sub_1C0D2C16C(v308, v252);

                  v254 = v236;
                  v255 = sub_1C0D23BD0(v250, v236);
                  v256 = v307;
                  v317 = sub_1C0D2BFF8(v307, v255);

                  v257 = v319;
                  v258 = sub_1C0D23BD0(v250, v319);
                  v259 = v306;
                  v316 = sub_1C0D2BFF8(v306, v258);

                  v325 = v283;
                  v326[0] = v297;
                  v326[1] = v282;
                  v327[0] = v284;
                  v327[1] = v305;
                  v327[2] = v296;
                  v327[3] = v318;
                  v327[4] = v317;
                  v327[5] = v316;
                  v327[6] = v313;
                  v14 = sub_1C0D3A200();
                  sub_1C0D13578(&v325, &qword_1EBE6D780, &qword_1C0D7C868);

                  goto LABEL_61;
                }

LABEL_111:
                __break(1u);
              }

LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

LABEL_122:
            __break(1u);
LABEL_123:
            v323 = 0;
            v324 = 0xE000000000000000;
            sub_1C0D78DAC();
            MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
            v322 = v321;
            goto LABEL_124;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v260 = v323;
        sub_1C0CF8DE0();
        v261 = swift_allocError();
        *v262 = v260;
        *(v262 + 4) = 0;
        v300 = v261;
        swift_willThrow();
        sub_1C0CF448C(v201, v203);

        v157 = v280;

        v187 = &v314;
LABEL_68:
        v188 = *(v187 - 32);

        v162 = v326;
        goto LABEL_70;
      }

LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }
  }

  v299 = v116 + 1;
  v298 = v117;
  v23 = v43;
  v43 = v319;
  sub_1C0D786EC();
  v124 = sub_1C0D786BC();
  v125 = v316;
  v316(v14, v53);
  v310 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v310)
  {
    goto LABEL_119;
  }

  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v125(v14, v53);
  v126 = [v302 groupOrderByteCountForCP_];
  if (v126 < 0)
  {
    goto LABEL_92;
  }

  v127 = sub_1C0D053E8(v121, v126);
  v304 = v121;
  v128 = v127;
  v51 = v129;
  LODWORD(v323) = 0;
  sub_1C0CF6468(v127, v129);
  sub_1C0D786EC();
  v130 = sub_1C0D786BC();
  v125(v14, v53);
  v131 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v53 = sub_1C0D7830C();
  v132 = [v131 initWithData:v53 inGroup:v130 reduction:1 corecryptoError:&v323];

  sub_1C0CF448C(v128, v51);
  if (v132)
  {
    sub_1C0CF448C(v128, v51);
    v133 = sub_1C0D2BFF8(v132, v310);

    v43 = v304;
    v134 = v301;
    v52 = v311;
    if (v304 >= *(v296 + 2))
    {
      goto LABEL_93;
    }

    v51 = *&v296[8 * v304 + 32];
    v52 = sub_1C0D13834(v51, v52);

    v23 = v305;
    if (v43 >= *(v305 + 2))
    {
      goto LABEL_94;
    }

    v135 = &v305[8 * v43];
    v51 = v135[4];
    v298 = v133;
    v136 = sub_1C0D13834(v133, v134);
    v137 = sub_1C0D2BEDC(v284, v136);

    v53 = sub_1C0D13834(v51, v137);
    v138 = sub_1C0D2BEDC(v52, v53);

    if (v43 >= v23[2])
    {
      goto LABEL_95;
    }

    v139 = v43;
    v140 = v135[4];
    v141 = v310;
    v142 = sub_1C0D23BD0(v140, v310);

    v143 = sub_1C0D13834(v142, v134);
    v144 = sub_1C0D2BEDC(v138, v143);

    v51 = v144;
    v52 = &v321;
    MEMORY[0x1C68E3BD0]();
    if (v321[2] >= v321[3] >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();

    v120 = v297;
    v53 = v317;
    v43 = v291;
    v121 = v139;
    v23 = v299;
    goto LABEL_44;
  }

  v189 = v323;
  sub_1C0CF8DE0();
  v190 = swift_allocError();
  *v191 = v189;
  *(v191 + 4) = 0;
  v300 = v190;
  swift_willThrow();
  sub_1C0CF448C(v128, v51);
  v157 = v280;

  v192 = v281;

  v193 = v282;
  v194 = v297;

  v195 = v283;
  v162 = &v325;
LABEL_70:

LABEL_71:
  v196 = v279;
  v14 = v278;
LABEL_72:

LABEL_61:
  v147 = *MEMORY[0x1E69E9840];
  return v14;
}