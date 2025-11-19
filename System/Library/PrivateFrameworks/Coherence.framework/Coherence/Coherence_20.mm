uint64_t sub_1ADF7C97C()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](-1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7C9E8()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](-1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001AE2610D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AE23E00C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1ADF7CB28()
{
  v0 = sub_1ADE55D4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = -1;
  v3 = sub_1ADF7EA50(v0);

  return v3;
}

uint64_t sub_1ADF7CBB4()
{
  v0 = sub_1ADE55D4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  *&v0[8 * v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  *&v0[8 * v4 + 32] = 1;
  v6 = sub_1ADF7EA50(v0);

  return v6;
}

uint64_t static CodingKey<>.intCases.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v17[-v11];
  sub_1AE23DA4C();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = sub_1AE23CECC();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v15 = sub_1ADF7EA50(v14);

  return v15;
}

uint64_t sub_1ADF7CDFC(uint64_t a1)
{
  v2 = sub_1ADF7ED0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ADF7CE38(uint64_t a1)
{
  v2 = sub_1ADF7ED0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ADF7CE74(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8D8, &qword_1AE24D2F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADF7ED0C();
  sub_1AE23E3CC();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1ADF7EF7C(&qword_1EB5BB8E0, sub_1ADF7F000);
  sub_1AE23DD5C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1ADF7D008()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADDF5580(v3, v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7D050()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADDF5580(v3, v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7D09C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *sub_1ADF7D0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1ADF7E3CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADF7D13C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADF7D878(*v2, a1);
  *a2 = result;
  return result;
}

uint64_t CRExtendableValueStruct.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = (*(a3 + 16))(a2, a3);
  v9 = sub_1ADF7D878(v8, a1);

  return (*(a3 + 24))(v9, a2, a3);
}

uint64_t sub_1ADF7D254@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;

  v6 = sub_1ADF7D878(v4, &v8);

  *a2 = v6;
  return result;
}

uint64_t CRExtendableValueStruct.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*(*(a3 + 8) + 8) + 8);
  v7 = *(v6 + 24);

  v7(&v9, a2, v6);
}

uint64_t sub_1ADF7D394(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(a2 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
      v13 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v15 = *(v12 + 8);

      if (v15(v13, v12))
      {
        break;
      }

      v6 &= v6 - 1;
      (*(*v11 + 120))(a1);

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRExtendableValueStruct.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a2, a3);
  v5 = 0;
  v7 = result + 64;
  v6 = *(result + 64);
  v16 = result;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = v5;
LABEL_8:
      v13 = *(*(v16 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v15 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = *(v14 + 8);

      if (v17(v15, v14))
      {
        break;
      }

      v10 &= v10 - 1;
      (*(*v13 + 120))(a1);

      v5 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v7 + 8 * v12);
      ++v5;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1ADF7D698@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AE204010(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADF7D6C4()
{
  v2 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADF7C4F0(v2);
  }

  return result;
}

uint64_t AnyCRValue.init(from:)(uint64_t *a1)
{
  sub_1ADE42E40();
  swift_allocError();
  *v2 = 0xD000000000000027;
  *(v2 + 8) = 0x80000001AE2610A0;
  *(v2 + 16) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1ADF7D790(uint64_t *a1)
{
  sub_1ADE42E40();
  swift_allocError();
  *v2 = 0xD000000000000027;
  *(v2 + 8) = 0x80000001AE2610A0;
  *(v2 + 16) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1ADF7D82C()
{
  result = sub_1ADE71C08();
  if (!v0)
  {

    sub_1ADF7C140();
  }

  return result;
}

uint64_t sub_1ADF7D878(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  result = sub_1AE23DCBC();
  v4 = result;
  v5 = 0;
  v24 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v23 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v24 + 48) + 8 * v16);
      v18 = *(**(*(v24 + 56) + 8 * v16) + 104);

      v19 = v18(a2);

      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v4[6] + 8 * v16) = v17;
      *(v4[7] + 8 * v16) = v19;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF7DA14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1ADF7ACAC(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1ADF7DF9C((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1ADE5522C((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1ADF7DF9C((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_1ADF7DF9C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1ADF7E1A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE23D97C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE23D97C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1ADDCC7D4(&qword_1EB5BB918, &qword_1EB5BB910, qword_1AE24D310);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB910, qword_1AE24D310);
            v9 = sub_1ADF7E344(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRDecodeContext.AnyDecodingReference();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1ADF7E344(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B26FC360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1ADF7E3C4;
  }

  __break(1u);
  return result;
}

void *sub_1ADF7E3CC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8B8, &qword_1AE24D2E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADF7ED0C();
  sub_1AE23E39C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    sub_1ADF7EF7C(&qword_1EB5BB8C8, sub_1ADF7EF28);
    sub_1AE23DD3C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1ADF7E588@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  result = sub_1AE23E3DC();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1ADF7E5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1ADF7F150();
  result = MEMORY[0x1B26FBB90](v2, &type metadata for CRUnknownCRDT.Sibling, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      sub_1ADE42C78(v9);
      sub_1ADDD86D8(v7, v6);
      sub_1ADEC0E1C(v12, v9, v8, v7, v6);
      v10 = v12[2];
      v11 = v12[3];
      sub_1ADE42CB8(v12[0]);
      sub_1ADDCC35C(v10, v11);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_1ADF7E6A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1ADDDF1A4();
  result = MEMORY[0x1B26FBB90](v2, &type metadata for CRKeyPath, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_1ADDD86D8(v7, *v5);
      sub_1ADDE0110(v8, v7, v6);
      sub_1ADDCC35C(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1ADF7E740(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E7290], MEMORY[0x1E69E72A0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1ADEC1B64(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1ADF7E7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1ADF7F23C();
  result = MEMORY[0x1B26FBB90](v2, &type metadata for CRCodableVersion, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1ADEC1C4C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1ADF7E828(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1ADF7F290(&unk_1ED966B50, type metadata accessor for URLResourceKey);
  result = MEMORY[0x1B26FBB90](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1ADEC1D44(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1ADF7E8E4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1AE23D97C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for AnyReference();
  v5 = sub_1ADF7F290(&qword_1EB5B9508, type metadata accessor for AnyReference);
  result = MEMORY[0x1B26FBB90](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26FC360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1ADEC0BB0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1AE23D97C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1ADF7EA50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1ADEC23B0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1ADF7EB28()
{
  result = qword_1EB5BB860;
  if (!qword_1EB5BB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB860);
  }

  return result;
}

unint64_t sub_1ADF7EBA8()
{
  result = qword_1EB5BB868;
  if (!qword_1EB5BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB868);
  }

  return result;
}

unint64_t sub_1ADF7EBFC()
{
  result = qword_1EB5BB870;
  if (!qword_1EB5BB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB870);
  }

  return result;
}

uint64_t sub_1ADF7EC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4();
  result = a5();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADF7ECB8()
{
  result = qword_1EB5BB878;
  if (!qword_1EB5BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB878);
  }

  return result;
}

unint64_t sub_1ADF7ED0C()
{
  result = qword_1EB5BB880;
  if (!qword_1EB5BB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB880);
  }

  return result;
}

unint64_t sub_1ADF7ED64()
{
  result = qword_1EB5BB888;
  if (!qword_1EB5BB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB888);
  }

  return result;
}

unint64_t sub_1ADF7EDBC()
{
  result = qword_1EB5BB890;
  if (!qword_1EB5BB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB890);
  }

  return result;
}

unint64_t sub_1ADF7EE54(uint64_t a1)
{
  result = sub_1ADF7EE7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF7EE7C()
{
  result = qword_1EB5BB8A8;
  if (!qword_1EB5BB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8A8);
  }

  return result;
}

unint64_t sub_1ADF7EED4()
{
  result = qword_1EB5BB8B0;
  if (!qword_1EB5BB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8B0);
  }

  return result;
}

unint64_t sub_1ADF7EF28()
{
  result = qword_1EB5BB8D0;
  if (!qword_1EB5BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8D0);
  }

  return result;
}

uint64_t sub_1ADF7EF7C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ADF7F000()
{
  result = qword_1EB5BB8E8;
  if (!qword_1EB5BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8E8);
  }

  return result;
}

uint64_t sub_1ADF7F054(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1ADF7F0FC();
  result = MEMORY[0x1B26FBB90](v2, &type metadata for CRVersion, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_1ADEC2490(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_1ADF7F0FC()
{
  result = qword_1EB5BB900;
  if (!qword_1EB5BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB900);
  }

  return result;
}

unint64_t sub_1ADF7F150()
{
  result = qword_1EB5BB908;
  if (!qword_1EB5BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB908);
  }

  return result;
}

uint64_t sub_1ADF7F1A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1ADEC2648(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1ADF7F23C()
{
  result = qword_1EB5B92A8;
  if (!qword_1EB5B92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92A8);
  }

  return result;
}

uint64_t sub_1ADF7F290(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ADF7F2EC()
{
  result = qword_1EB5BB928;
  if (!qword_1EB5BB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB928);
  }

  return result;
}

void *sub_1ADF7F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[6] = a2;
  result[7] = a5;
  v11 = MEMORY[0x1E69E7CC8];
  result[8] = a4;
  result[2] = v11;
  result[3] = v11;
  result[4] = a3;
  result[5] = a1;
  return result;
}

uint64_t sub_1ADF7F408()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[5];
  result = sub_1AE018FC4();
  if (v1)
  {
    return result;
  }

  v157 = v3;
  v161 = 0;
  v158 = result;
  swift_beginAccess();
  v6 = v2[2];
  if (!*(v6 + 16))
  {
  }

  v7 = v2;
  v8 = MEMORY[0x1E69E7CC0];
  v168 = v2;
LABEL_4:
  v181 = v8;
  v9 = 1 << *(v6 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (2)
    {
      v15 = v13;
LABEL_14:
      v182 = *(*(v6 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v11)))));

      v1 = v161;
      v16 = sub_1ADF80290(&v182, v7);
      if (v1)
      {
        goto LABEL_112;
      }

      v161 = 0;
      v11 &= v11 - 1;
      if (v16)
      {
        sub_1AE23DAEC();
        v14 = *(v181 + 16);
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v7 = v168;
        v13 = v15;
        if (v11)
        {
          continue;
        }
      }

      else
      {

        v13 = v15;
        if (v11)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_103;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v6 + 64 + 8 * v15);
    ++v13;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v17 = sub_1ADF7B9DC(v181);
  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v157 + 240);
  v156[2] = *(v157 + 232);
  v156[3] = v18;
  v156[4] = v158;
  v19 = type metadata accessor for CRDecodeContext.AnyDecodingReference();
  v7 = v168;
  v20 = type metadata accessor for CRDataStoreBundleDecodeContext();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB930, &unk_1AE24D460);
  v160 = v17;
  sub_1ADF5D268(sub_1ADF80E34, v7, sub_1ADF80E3C, v156, v17, v19, v20, v21);
  v23 = v22;
  v159 = v24;
  v25 = sub_1ADE51410(MEMORY[0x1E69E7CC0]);
  v26 = *(v7 + 16);
  *(v7 + 16) = v25;

  if (!sub_1AE23D0AC())
  {
    goto LABEL_75;
  }

  v27 = 0;
  v164 = v23 + 32;
  v163 = v20;
  v162 = v23;
LABEL_20:
  v28 = sub_1AE23D08C();
  sub_1AE23D00C();
  if (v28)
  {
    v29 = *(v164 + 8 * v27);

    v30 = __OFADD__(v27, 1);
    v31 = v27 + 1;
    if (v30)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v29 = sub_1AE23DAAC();
    v30 = __OFADD__(v27, 1);
    v31 = v27 + 1;
    if (v30)
    {
      goto LABEL_106;
    }
  }

  v166 = v31;
  swift_beginAccess();
  v32 = *(v29 + 16);
  swift_beginAccess();
  v167 = v29;

  v33 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v7;
  v36 = *(v7 + 16);
  v182 = v36;
  *(v35 + 16) = 0x8000000000000000;
  v37 = v32 + 64;
  v38 = -1 << *(v32 + 32);
  if (-v38 < 64)
  {
    v39 = ~(-1 << -v38);
  }

  else
  {
    v39 = -1;
  }

  v1 = v39 & *(v32 + 64);
  v177 = -1 << *(v32 + 32);
  v40 = (63 - v38) >> 6;
  v179 = v32;

  v41 = 0;
LABEL_28:
  if (v1)
  {
    LODWORD(v180) = isUniquelyReferenced_nonNull_native;
    v178 = v1;
    v45 = v1;
    v46 = v41;
    goto LABEL_35;
  }

  v47 = v41;
  while (1)
  {
    v46 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v46 >= v40)
    {
      goto LABEL_45;
    }

    v45 = *(v37 + 8 * v46);
    ++v47;
    if (v45)
    {
      LODWORD(v180) = isUniquelyReferenced_nonNull_native;
      v178 = 0;
LABEL_35:
      v48 = __clz(__rbit64(v45)) | (v46 << 6);
      v49 = (*(v179 + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      v52 = *(*(v179 + 56) + 8 * v48);
      sub_1ADDD86D8(*v49, v50);
      swift_retain_n();
      sub_1ADDD86D8(v51, v50);
      sub_1ADDCC35C(v51, v50);

      if (v52)
      {
        v53 = sub_1ADDDE7CC(v51, v50);
        v55 = v36[2];
        v56 = (v54 & 1) == 0;
        v30 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v30)
        {
          goto LABEL_101;
        }

        v58 = v54;
        if (v36[3] >= v57)
        {
          if ((v180 & 1) == 0)
          {
            v180 = v53;
            sub_1ADF6F03C();
            v53 = v180;
          }
        }

        else
        {
          sub_1ADDE9894(v57, v180 & 1);
          v53 = sub_1ADDDE7CC(v51, v50);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_111;
          }
        }

        v1 = (v45 - 1) & v45;
        v36 = v182;
        if (v58)
        {
          v42 = v53;
          sub_1ADDCC35C(v51, v50);
          v43 = v36[7];
          v44 = *(v43 + 8 * v42);
          *(v43 + 8 * v42) = v52;
        }

        else
        {
          v182[(v53 >> 6) + 8] |= 1 << v53;
          v60 = (v36[6] + 16 * v53);
          *v60 = v51;
          v60[1] = v50;
          *(v36[7] + 8 * v53) = v52;
          v61 = v36[2];
          v30 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v30)
          {
            goto LABEL_104;
          }

          v36[2] = v62;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v41 = v46;
        goto LABEL_28;
      }

LABEL_45:
      sub_1ADDDCE74();

      v63 = v168;
      *(v168 + 16) = v36;
      swift_endAccess();
      v64 = v167;
      swift_beginAccess();
      v65 = *(v64 + 24);

      swift_beginAccess();
      v66 = *(v63 + 24);
      v1 = swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v63 + 24);
      v182 = v178;
      *(v63 + 24) = 0x8000000000000000;
      v67 = v65 + 64;
      v68 = -1 << *(v65 + 32);
      if (-v68 < 64)
      {
        v69 = ~(-1 << -v68);
      }

      else
      {
        v69 = -1;
      }

      v70 = v69 & *(v65 + 64);
      v165 = -1 << *(v65 + 32);
      v71 = (63 - v68) >> 6;
      v173 = v65;

      v72 = 0;
      v172 = v65 + 64;
      for (i = v71; ; v71 = i)
      {
        v171 = v70;
        if (!v70)
        {
          break;
        }

        LODWORD(v177) = v1;
        v169 = v72;
        v82 = v72;
LABEL_58:
        v85 = __clz(__rbit64(v70)) | (v82 << 6);
        v86 = (*(v173 + 48) + 16 * v85);
        v88 = *v86;
        v87 = v86[1];
        v89 = (*(v173 + 56) + 48 * v85);
        v90 = *v89;
        v175 = v89[1];
        v91 = v89[2];
        v92 = v89[3];
        v93 = v89[5];
        v179 = v89[4];
        sub_1ADDD86D8(v88, v87);
        v180 = v90;

        sub_1ADDD86D8(v88, v87);

        sub_1ADDCC35C(v88, v87);
        v176 = v93;

        v174 = v91;
        if (!v91)
        {
          v84 = v178;
          goto LABEL_68;
        }

        v94 = v178;
        v96 = sub_1ADDDE7CC(v88, v87);
        v97 = *(v94 + 2);
        v98 = (v95 & 1) == 0;
        v99 = v97 + v98;
        if (__OFADD__(v97, v98))
        {
          goto LABEL_102;
        }

        v100 = v95;
        if (*(v94 + 3) >= v99)
        {
          if ((v177 & 1) == 0)
          {
            sub_1ADF706B8();
          }
        }

        else
        {
          sub_1ADE17954(v99, v177 & 1);
          v101 = sub_1ADDDE7CC(v88, v87);
          if ((v100 & 1) != (v102 & 1))
          {
            goto LABEL_111;
          }

          v96 = v101;
        }

        v70 &= v70 - 1;
        v103 = v182;
        v178 = v182;
        if (v100)
        {
          sub_1ADDCC35C(v88, v87);
          v73 = (v103[7] + 48 * v96);
          v74 = *v73;
          v75 = v73[2];
          v76 = v73[3];
          v78 = v73[4];
          v77 = v73[5];
          v79 = v174;
          v80 = v175;
          *v73 = v180;
          v73[1] = v80;
          v73[2] = v79;
          v73[3] = v92;
          v81 = v176;
          v73[4] = v179;
          v73[5] = v81;
        }

        else
        {
          v182[(v96 >> 6) + 8] |= 1 << v96;
          v104 = (v103[6] + 16 * v96);
          *v104 = v88;
          v104[1] = v87;
          v105 = (v103[7] + 48 * v96);
          v106 = v174;
          v107 = v175;
          *v105 = v180;
          v105[1] = v107;
          v105[2] = v106;
          v105[3] = v92;
          v108 = v176;
          v105[4] = v179;
          v105[5] = v108;
          v109 = v103[2];
          v30 = __OFADD__(v109, 1);
          v110 = v109 + 1;
          if (v30)
          {
            goto LABEL_105;
          }

          v103[2] = v110;
        }

        v1 = 1;
        v72 = v82;
        v67 = v172;
      }

      v83 = v72;
      v84 = v178;
      while (1)
      {
        v82 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_100;
        }

        if (v82 >= v71)
        {
          break;
        }

        v70 = *(v67 + 8 * v82);
        ++v83;
        if (v70)
        {
          v169 = v72;
          LODWORD(v177) = v1;
          goto LABEL_58;
        }
      }

LABEL_68:
      sub_1ADDDCE74();

      v111 = v168;
      *(v168 + 24) = v84;
      v7 = v111;
      swift_endAccess();

      v112 = sub_1AE23D0AC();
      v27 = v166;
      if (v166 != v112)
      {
        goto LABEL_20;
      }

LABEL_75:
      swift_bridgeObjectRelease_n();
      v113 = v159;
      v172 = *(v159 + 16);
      if (v172)
      {
        v114 = 0;
        v171 = v160 & 0xC000000000000001;
        i = v160 & 0xFFFFFFFFFFFFFF8;
        v115 = (v159 + 80);
        do
        {
          if (v114 >= *(v113 + 16))
          {
            goto LABEL_107;
          }

          v130 = *(v115 - 6);
          v129 = *(v115 - 5);
          v132 = *(v115 - 4);
          v131 = *(v115 - 3);
          v133 = *(v115 - 2);
          v134 = *(v115 - 1);
          if (*v115)
          {
            sub_1ADF80E48(*(v115 - 6), v129, *(v115 - 4), *(v115 - 3), *(v115 - 2), *(v115 - 1), 1);

            return swift_willThrow();
          }

          v179 = v114;
          v180 = v129;
          v178 = v115;
          if (v171)
          {
            sub_1ADF80E48(v130, v129, v132, v131, v133, v134, 0);
            v135 = MEMORY[0x1B26FC360](v114, v160);
          }

          else
          {
            if (v114 >= *(i + 16))
            {
              goto LABEL_109;
            }

            v135 = *(v160 + 8 * v114 + 32);
            sub_1ADF80E48(v130, v129, v132, v131, v133, v134, 0);
          }

          v136 = v133;
          v137 = *(v135 + 16);
          v138 = *(v135 + 24);
          sub_1ADDD86D8(v137, v138);

          v139 = v168;
          swift_beginAccess();
          v176 = v130;

          v173 = v132;

          v174 = v131;

          v175 = v136;

          v177 = v134;

          v140 = *(v139 + 24);
          v141 = swift_isUniquelyReferenced_nonNull_native();
          v182 = *(v139 + 24);
          v142 = v182;
          *(v139 + 24) = 0x8000000000000000;
          v144 = sub_1ADDDE7CC(v137, v138);
          v145 = v142[2];
          v146 = (v143 & 1) == 0;
          v147 = v145 + v146;
          if (__OFADD__(v145, v146))
          {
            goto LABEL_108;
          }

          v148 = v143;
          if (v142[3] >= v147)
          {
            if (v141)
            {
              v151 = v182;
              if ((v143 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

            else
            {
              sub_1ADF706B8();
              v151 = v182;
              if ((v148 & 1) == 0)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            sub_1ADE17954(v147, v141);
            v149 = sub_1ADDDE7CC(v137, v138);
            if ((v148 & 1) != (v150 & 1))
            {
              goto LABEL_111;
            }

            v144 = v149;
            v151 = v182;
            if ((v148 & 1) == 0)
            {
LABEL_91:
              v151[(v144 >> 6) + 8] |= 1 << v144;
              v152 = (v151[6] + 16 * v144);
              *v152 = v137;
              v152[1] = v138;
              v153 = (v151[7] + 48 * v144);
              v125 = v175;
              v127 = v176;
              v122 = v180;
              *v153 = v176;
              v153[1] = v122;
              v124 = v173;
              v123 = v174;
              v153[2] = v173;
              v153[3] = v123;
              v126 = v177;
              v153[4] = v125;
              v153[5] = v126;
              v154 = v151[2];
              v30 = __OFADD__(v154, 1);
              v155 = v154 + 1;
              if (v30)
              {
                goto LABEL_110;
              }

              v151[2] = v155;
              goto LABEL_78;
            }
          }

          v116 = (v151[7] + 48 * v144);
          v169 = *v116;
          v117 = v116[3];
          v166 = v116[2];
          v165 = v117;
          v119 = v116[4];
          v118 = v116[5];
          v120 = v176;
          v121 = v137;
          v167 = v138;
          v122 = v180;
          *v116 = v176;
          v116[1] = v122;
          v124 = v173;
          v123 = v174;
          v116[2] = v173;
          v116[3] = v123;
          v125 = v175;
          v126 = v177;
          v116[4] = v175;
          v116[5] = v126;

          v127 = v120;

          sub_1ADDCC35C(v121, v167);
LABEL_78:
          v114 = v179 + 1;
          v128 = v168;
          *(v168 + 24) = v151;
          v7 = v128;
          swift_endAccess();
          sub_1ADF80EC0(v127, v122, v124, v123, v125, v126, 0);
          v115 = v178 + 56;
          v113 = v159;
        }

        while (v172 != v114);
      }

      v6 = *(v7 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (!*(v6 + 16))
      {
      }

      goto LABEL_4;
    }
  }

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
LABEL_110:
  __break(1u);
LABEL_111:
  sub_1AE23E27C();
  __break(1u);
LABEL_112:

  __break(1u);
  return result;
}

uint64_t sub_1ADF80290(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  swift_beginAccess();
  if (*(*(a2 + 24) + 16))
  {

    sub_1ADDDE7CC(v3, v4);
    v6 = v5;

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1ADF80324@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*a1 + 232);
  v5 = *(*a1 + 240);
  type metadata accessor for CRDataStoreBundleDecodeContext();
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v11 = a1 + 7;
  v9 = a1[7];
  v10 = v11[1];
  v12 = swift_allocObject();
  v12[6] = v8;
  v12[7] = v9;
  v13 = MEMORY[0x1E69E7CC8];
  v12[8] = v10;
  v12[2] = v13;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v6;
  *a2 = v12;
  v14 = v10;
  v15 = v9;
}

uint64_t sub_1ADF803EC@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1ADF8047C(a3, *a2, *a1, v9);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  *a4 = v9[1];
  *(a4 + 8) = v6;
  *(a4 + 24) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_1ADF8047C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 16) || (v9 = sub_1ADDDE7CC(a2[2], a2[3]), (v10 & 1) == 0))
  {
    sub_1ADE42E40();
    v16 = swift_allocError();
    *v19 = 0xD00000000000001BLL;
    *(v19 + 8) = 0x80000001AE2611B0;
    *(v19 + 16) = 0;
    result = swift_willThrow();
    goto LABEL_6;
  }

  v11 = (*(a1 + 56) + 32 * v9);
  v21 = a4;
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  v20 = *(*a2 + 104);
  sub_1ADDD86D8(*v11, v13);
  sub_1ADDD86D8(v15, v14);
  sub_1ADDD86D8(v12, v13);
  sub_1ADDD86D8(v15, v14);
  v20(v12, v13, v15, v14, a3);
  v16 = v4;
  sub_1ADDCC35C(v15, v14);
  sub_1ADDCC35C(v12, v13);
  v17 = v12;
  a4 = v21;
  sub_1ADDCC35C(v17, v13);
  result = sub_1ADDCC35C(v15, v14);
  if (v4)
  {
LABEL_6:
    *a4 = v16;
  }

  return result;
}

double sub_1ADF80610@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = v5;
  v36 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v19 = *(v18 + 48);
  v20 = *(v5 + 40);
  v37 = *a2;
  v21 = a3;
  v22 = v38;
  result = sub_1AE018FE8(v33 - v16, (v33 + v19 - v16), a1, &v37, v6, a3, a4);
  if (!v22)
  {
    v24 = v35;
    v25 = *(v35 + 16);
    v38 = 0;
    v25(v14, v17, TupleTypeMetadata2, result);
    v26 = &v14[*(TupleTypeMetadata2 + 48)];
    v28 = *v26;
    v27 = *(v26 + 1);

    sub_1ADDD9FE4(v14, v21, &v37);
    v34 = v37;
    (v25)(v14, v17, TupleTypeMetadata2);
    *v33 = *&v14[*(TupleTypeMetadata2 + 48)];
    v29 = MEMORY[0x1E69E7CC0];
    v30 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v31 = sub_1ADDD9ECC(v29);
    sub_1ADDDA5BC(v29);
    sub_1ADDD9ECC(v29);
    (*(v24 + 8))(v17, TupleTypeMetadata2);

    swift_bridgeObjectRelease_n();
    (*(*(v21 - 8) + 8))(v14, v21);
    v32 = v36;
    *v36 = v34;
    v32[1] = 0;
    result = v33[0];
    *(v32 + 1) = *v33;
    v32[4] = v30;
    v32[5] = v31;
  }

  return result;
}

uint64_t sub_1ADF80898@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = v3[8];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1AE019368(a1, a2, v5, v6, a3);
}

void sub_1ADF808D0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
}

uint64_t sub_1ADF80910()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return v0;
}

uint64_t sub_1ADF80960()
{
  sub_1ADF80910();

  return swift_deallocClassInstance();
}

double sub_1ADF809AC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1ADF80A18()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void sub_1ADF80A84(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v40 - v5;
  v6 = type metadata accessor for Replica();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB938, &qword_1AE24D478);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v15;
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v21;
  v44 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    sub_1ADDDE768(*(v19 + 48) + *(v41 + 72) * v28, v9);
    sub_1ADDE56CC(*(v19 + 56) + 24 * v28, v45);
    v29 = *(v42 + 48);
    v30 = v9;
    v31 = v42;
    sub_1ADDD8010(v30, v17);
    sub_1ADDE5634(v45, &v17[v29]);
    (*(v3 + 56))(v17, 0, 1, v31);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v43;
    v1[3] = v26;
    v1[4] = v27;
    v32 = v1[5];
    v33 = v1[6];
    sub_1ADDD2198(v17, v13, &qword_1EB5BB938, &qword_1AE24D478);
    v34 = 1;
    v35 = (*(v3 + 48))(v13, 1, v31);
    v36 = v44;
    if (v35 != 1)
    {
      v37 = v13;
      v38 = v40;
      sub_1ADDD2198(v37, v40, &qword_1EB5BA478, &qword_1AE24D470);
      v32(v38);
      sub_1ADDCEDE0(v38, &qword_1EB5BA478, &qword_1AE24D470);
      v34 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
    (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v31 = v42;
        (*(v3 + 56))(&v40 - v15, 1, 1, v42, v16);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADF80E3C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_1ADF803EC(a1, a2, v3[4], a3);
}

id sub_1ADF80E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
  }
}

void sub_1ADF80EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t sub_1ADF80F7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) >= 2u)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    type metadata accessor for Proto_Register._StorageClass();
    v6 = swift_initStaticObject();
    MEMORY[0x1EEE9AC00](v6);
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v7 = sub_1ADE6B938(sub_1ADF832E0);
    if (!v2)
    {
      v9 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v6 = sub_1ADDE8D20(v6);
      }

      swift_beginAccess();
      v10 = *(v6 + 40);
      *(v6 + 40) = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = swift_allocObject();
        v12 = *(inited + 16);
        *(v11 + 16) = v12;
        sub_1ADE5215C(v12);

        inited = v11;
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v14 = *(inited + 16);
      *(inited + 16) = v13;
      sub_1ADE52174(v14);
    }
  }

  else
  {
    inited = 0x80000001AE2611D0;
    sub_1ADE42E40();
    swift_allocError();
    *v4 = 0xD00000000000003ALL;
    *(v4 + 8) = 0x80000001AE2611D0;
    *(v4 + 16) = 3;
    swift_willThrow();
  }

  return inited;
}

uint64_t sub_1ADF811C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(v5 - 8);
  v9 = type metadata accessor for CRMaxRegister();
  v10 = CRMaxRegister.projectedValue.modify();
  (*(*(v9 - 8) + 24))(v11, a1, v9);
  return v10(&v13, 0);
}

uint64_t CRMaxRegister.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t sub_1ADF81340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(*(*(a3 + a4 - 24) - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v7);
  v11 = type metadata accessor for CRMaxRegister();
  return CRMaxRegister.value.setter(v9, v11);
}

uint64_t CRMaxRegister.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (*(*(a2 + 24) + 16))(a1, v4);
  v6 = *(v4 - 8);
  if (v5)
  {
    v7 = *(v6 + 40);

    return v7(v2, a1, v4);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, v4);
  }
}

void (*CRMaxRegister.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1ADF81618;
}

void sub_1ADF81618(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    CRMaxRegister.value.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    CRMaxRegister.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRMaxRegister.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1ADF82E68(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*CRMaxRegister.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1ADF818A4;
}

void sub_1ADF818A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1ADF82E68(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1ADF82E68((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRMaxRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v18 - v14;
  v16 = *(v7 + 16);
  if (*(*v12 + 16))
  {
    v16(v11, v13, v6);
    (*(*(*(a2 + 32) + 8) + 24))(a1, v6);
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v16(&v18 - v14, v13, v6);
  }

  return (*(v7 + 32))(a3, v15, v6);
}

uint64_t CRMaxRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRMaxRegister.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRMaxRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v10 + 8) + 8) + 40))(v7);
  if (!v2)
  {
    return (*(v5 + 32))(a2, v9, a1);
  }

  return result;
}

uint64_t CRMaxRegister.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  v33 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = v6[2];
  v32 = v15;
  v14(&v28 - v12, v15, v5, v11);
  v31 = a1;
  (v14)(v9, a1, v5);
  v16 = *(a2 + 24);
  v29 = *(v16 + 16);
  v30 = a2;
  v17 = v29(v9, v5, v16);
  v18 = v6[1];
  v18(v9, v5);
  v18(v13, v5);
  if (v17)
  {
    v19 = v30;
    v20 = *(v30 - 8);
    v21 = v32;
    (*(v20 + 8))(v32, v30);
    result = (*(v20 + 16))(v21, v31, v19);
    if (qword_1EB5B9910 != -1)
    {
      result = swift_once();
    }

    v23 = &word_1EB5D750B;
  }

  else
  {
    (v14)(v13, v31, v5);
    (v14)(v9, v32, v5);
    v24 = v29(v9, v5, v16);
    v18(v9, v5);
    result = (v18)(v13, v5);
    if (v24)
    {
      if (qword_1EB5B9908 != -1)
      {
        result = swift_once();
      }

      v23 = &word_1EB5D7508;
    }

    else
    {
      if (qword_1ED9670C0 != -1)
      {
        result = swift_once();
      }

      v23 = &word_1ED96F220;
    }
  }

  v25 = *v23;
  v26 = *(v23 + 2);
  v27 = v33;
  *v33 = v25;
  *(v27 + 2) = v26;
  return result;
}

uint64_t CRMaxRegister.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  strcpy(v9, "CRMaxRegister[");
  HIBYTE(v9[1]) = -18;
  (*(v3 + 16))(v6, v1, v2);
  v7 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v7);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v9[0];
}

uint64_t CRMaxRegister.hasDelta(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = v5[2];
  v12(&v16 - v10);
  (v12)(v9, v2, v4);
  v13 = (*(*(a2 + 24) + 16))(v9, v4);
  v14 = v5[1];
  v14(v9, v4);
  v14(v11, v4);
  return v13 & 1;
}

uint64_t CRMaxRegister.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = v8[2];
  v15(&v21 - v13);
  (v15)(v12, v4, v7);
  v16 = (*(*(a2 + 24) + 16))(v12, v7);
  v17 = v8[1];
  v17(v12, v7);
  v17(v14, v7);
  v18 = *(a2 - 8);
  if (v16)
  {
    (*(*(a2 - 8) + 16))(a3, v4, a2);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v18 + 56))(a3, v19, 1, a2);
}

uint64_t CRMaxRegister.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a3;
  v33 = a2;
  v36 = a1;
  v8 = *(a3 + 16);
  v32 = *(*(a3 + 32) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v31 - v12;
  v14 = *(v8 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = *(*(AssociatedTypeWitness - 8) + 56);
  v35 = a4;
  v23(a4, 1, 1, AssociatedTypeWitness, v20);
  v24 = v14[2];
  v34 = v5;
  v25 = v5;
  v26 = v36;
  v24(v22, v25, v8);
  v24(v18, v26, v8);
  LOBYTE(v6) = (*(*(v6 + 24) + 16))(v18, v8);
  v27 = v14[1];
  v27(v18, v8);
  result = (v27)(v22, v8);
  if ((v6 & 1) == 0)
  {
    (*(v32 + 40))(v26, v33, v8);
    v29 = v35;
    v30 = v31;
    (*(v10 + 8))(v35, v31);
    return (*(v10 + 32))(v29, v13, v30);
  }

  return result;
}

uint64_t CRMaxRegister.encode(to:)(uint64_t a1, void *a2)
{
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];

    sub_1ADE6BBC8(v2, v6, v7, v8);
  }

  return result;
}

uint64_t CRMaxRegister.isDefaultState.getter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  LOBYTE(v1) = (*(*(*(*(v1 + 32) + 8) + 8) + 48))(v2);
  (*(v3 + 8))(v6, v2);
  return v1 & 1;
}

uint64_t static CRMaxRegister.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = *(type metadata accessor for CRMaxRegister() + 16);
  v16 = *(*(v15 - 8) + 16);
  v16(v14, a1, v15);
  v16(v11, a2, v15);
  v17 = *(a4 + 8);
  LOBYTE(a4) = sub_1AE23CCBC();
  v18 = *(v8 + 8);
  v18(v11, a3);
  v18(v14, a3);
  return a4 & 1;
}

uint64_t sub_1ADF82B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRMaxRegister();
  (*(*(*(v13 + 16) - 8) + 16))(v12, a1);
  (*(*(*(a5 + 8) + 8) + 16))(a2, a3);
  return (*(v9 + 8))(v12, a3);
}

uint64_t CRMaxRegister<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1AE23E3BC();
  (*(v4 + 16))(v7, v2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1AE23E06C();
  (*(v4 + 8))(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1ADF82E68(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return CRMaxRegister.value.setter(v6, a2);
}

uint64_t keypath_getTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v9 = type metadata accessor for CRMaxRegister();
  return a4(v9);
}

uint64_t sub_1ADF82F98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1ADF830D8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t static Timestamp.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Timestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  v7 = v5 < v6;
  if (v5 != v6)
  {
    return v7;
  }

  v8 = *(type metadata accessor for Replica() + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  v7 = v9 < v10;
  if (v9 != v10)
  {
    return v7;
  }

  return sub_1ADF5EB00();
}

uint64_t sub_1ADF833C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21[-v8];
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for Replica();
  v16 = *(result + 20);
  if (*(v4 + v16))
  {
    if (*(a3 + 16))
    {
      result = sub_1ADDD8A6C(v4);
      if (v17)
      {
        sub_1ADDE56CC(*(a3 + 56) + 24 * result, v21);
        sub_1ADDE5634(v21, v22);
        v18 = *(type metadata accessor for Timestamp(0) + 20);
        sub_1AE221574(*(v4 + v18), v9);
        sub_1ADDE5C20(v22);
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          return sub_1ADE1727C(v9);
        }

        else
        {
          sub_1ADDE5300(v4, type metadata accessor for Timestamp);
          sub_1ADDE5F9C(v9, v14, type metadata accessor for FinalizedTimestamp);
          v19 = sub_1AE23BFEC();
          (*(*(v19 - 8) + 16))(v4, v14, v19);
          *(v4 + v16) = 0;
          v20 = *&v14[*(v10 + 20)];
          result = sub_1ADDE5300(v14, type metadata accessor for FinalizedTimestamp);
          *(v4 + v18) = v20;
        }
      }
    }
  }

  return result;
}

uint64_t Timestamp.hash(into:)()
{
  sub_1AE23BFAC();
  v1 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
  v2 = type metadata accessor for Timestamp(0);
  return MEMORY[0x1B26FCBD0](*(v0 + *(v2 + 20)));
}

uint64_t static Timestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = type metadata accessor for Replica();
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

uint64_t Timestamp.description.getter()
{
  v4 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  v3 = *(v0 + *(type metadata accessor for Timestamp(0) + 20));
  v1 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v1);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v4;
}

uint64_t Timestamp.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Timestamp(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = *(v9 + 16);
    if ((~v10 & 0xF000000000000007) != 0 && ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 9)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFBLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    result = sub_1ADE017C0(v12, v13, a1, v8);
    if (!v2)
    {
      return sub_1ADDE5F9C(v8, a2, type metadata accessor for Timestamp);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v15 = 0xD000000000000017;
    *(v15 + 8) = 0x80000001AE25FB70;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t Timestamp.encode(to:)()
{
  v2 = type metadata accessor for Replica();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADE71C08();
  if (!v1)
  {
    sub_1ADDDE3A0(v0, v5, type metadata accessor for Replica);

    v7 = sub_1ADDF66A8(v5);
    v8 = sub_1AE23BFEC();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = *(v0 + *(type metadata accessor for Timestamp(0) + 20));
    swift_beginAccess();
    sub_1AE1B6B44(v7, v9);
    swift_endAccess();
  }

  return result;
}

uint64_t Timestamp.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v1 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
  v2 = type metadata accessor for Timestamp(0);
  MEMORY[0x1B26FCBD0](*(v0 + *(v2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83ABC(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v3 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v1 + *(v3 + 20)));
  MEMORY[0x1B26FCBD0](*(v1 + *(a1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83B34(uint64_t a1, uint64_t a2)
{
  sub_1AE23BFAC();
  v4 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v2 + *(v4 + 20)));
  return MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
}

uint64_t sub_1ADF83B8C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v4 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v2 + *(v4 + 20)));
  MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  v6 = v4 < v5;
  if (v4 != v5)
  {
    return v6;
  }

  v9 = *(type metadata accessor for Replica() + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  v6 = v10 < v11;
  if (v10 != v11)
  {
    return v6;
  }

  return sub_1ADF5EB00();
}

BOOL sub_1ADF83C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v8 = *(type metadata accessor for Replica() + 20);
    v9 = *(a2 + v8);
    v10 = *(a1 + v8);
    if (v9 == v10)
    {
      v11 = sub_1ADF5EB00();
    }

    else
    {
      v11 = v9 < v10;
    }
  }

  else
  {
    v11 = v4 < v5;
  }

  return (v11 & 1) == 0;
}

BOOL sub_1ADF83CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v8 = *(type metadata accessor for Replica() + 20);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (v9 == v10)
    {
      v11 = sub_1ADF5EB00();
    }

    else
    {
      v11 = v9 < v10;
    }
  }

  else
  {
    v11 = v4 < v5;
  }

  return (v11 & 1) == 0;
}

uint64_t sub_1ADF83D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  v6 = v4 < v5;
  if (v4 != v5)
  {
    return v6;
  }

  v9 = *(type metadata accessor for Replica() + 20);
  v10 = *(a2 + v9);
  v11 = *(a1 + v9);
  v6 = v10 < v11;
  if (v10 != v11)
  {
    return v6;
  }

  return sub_1ADF5EB00();
}

uint64_t sub_1ADF83DF0(uint64_t a1)
{
  v6 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  v5 = *(v1 + *(a1 + 20));
  v3 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v3);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_1ADF83E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v5 = type metadata accessor for Replica();
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

id sub_1ADF840B4()
{
  v26 = sub_1AE23BFEC();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Replica();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Timestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE3A0(v0 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v25 - v15, type metadata accessor for Timestamp);
  sub_1ADDE5F9C(v16, v9, type metadata accessor for Replica);
  v18 = v9;
  v19 = v26;
  (*(v1 + 32))(v4, v18, v26);
  sub_1ADDDE3A0(v0 + v17, v13, type metadata accessor for Timestamp);
  v20 = *&v13[*(v6 + 28)];
  sub_1ADDE5300(v13, type metadata accessor for Replica);
  v21 = type metadata accessor for ObjCReplica(0);
  v22 = objc_allocWithZone(v21);
  (*(v1 + 16))(&v22[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v4, v19);
  *&v22[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v20;
  v27.receiver = v22;
  v27.super_class = v21;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  (*(v1 + 8))(v4, v19);
  return v23;
}

id sub_1ADF845F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1ADF8466C()
{
  result = qword_1EB5BB940;
  if (!qword_1EB5BB940)
  {
    type metadata accessor for Timestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB940);
  }

  return result;
}

uint64_t sub_1ADF846F4()
{
  result = type metadata accessor for Timestamp(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ADF8478C()
{
  result = qword_1EB5BB958[0];
  if (!qword_1EB5BB958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BB958);
  }

  return result;
}

uint64_t sub_1ADF847E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1ADF84834(uint64_t a1, uint64_t a2)
{
  if ((sub_1AE23CCBC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RetainedResource.Retained();
  return *(a1 + *(v4 + 44)) == *(a2 + *(v4 + 44));
}

BOOL sub_1ADF848B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1ADF84834(a1, a2);
}

uint64_t sub_1ADF848C0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for RetainedResource.Retained();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68930](a1, a2, AssociatedTypeWitness, v5, AssociatedConformanceWitness, WitnessTable);
}

uint64_t sub_1ADF849A8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1ADF848C0(*a1, *a2);
}

uint64_t sub_1ADF849D8(uint64_t a1)
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

uint64_t sub_1ADF84A50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1ADF84B54(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1ADF84CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v21 = sub_1AE23C9DC();
  v7 = *(a1 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xA)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  sub_1AE23D11C();
  result = sub_1AE23D02C();
  v12 = *(a1 + 16);
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xA)
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v13 + 16);
  if (v18)
  {
    v14 = 0;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v13 + 8 * v14 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      sub_1ADE0262C(v15, a2);

      v16 = *(*(*(a4 + 8) + 8) + 8);

      v16(v17);
      if (v4)
      {
      }

      ++v14;
      sub_1AE23D0CC();

      if (v18 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v21;
  }

  return result;
}

uint64_t sub_1ADF84F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v22[2] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a1;
  v10 = sub_1AE23D11C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1ADE08EB0(sub_1ADF863D4, v21, v10, &type metadata for Proto_Value, v11, WitnessTable, MEMORY[0x1E69E7288], v22);
  if (!v4)
  {
    v14 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = swift_allocObject();
      v16 = *(inited + 16);
      *(v15 + 16) = v16;
      sub_1ADE51B2C(v16);

      inited = v15;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    v18 = v17 | 0x5000000000000000;
    v19 = *(inited + 16);
    *(inited + 16) = v18;
    sub_1ADE51B48(v19);
  }

  return inited;
}

uint64_t Array<A>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    v6 = sub_1ADE65FE0(a2, a3);
  }

  else
  {
    v6 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE25FB70;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t Array<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADE71C08();
  if (!v4)
  {

    sub_1ADE6DC08(a2, a3, a4);
  }

  return result;
}

uint64_t Array<A>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE23D0AC();
  v9 = 0;
  if (v8 == sub_1AE23D0AC())
  {
    v10 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_1AE23E25C();
    v30 = v32;
    v31 = v33;
    MEMORY[0x1EEE9AC00](v12);
    v23[8] = a4;
    v23[9] = a5;
    v24 = a2;
    MEMORY[0x1EEE9AC00](v13);
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = sub_1ADF860D4;
    v23[5] = v14;
    v26 = v10;
    v27 = v10;
    v28 = WitnessTable;
    v29 = WitnessTable;
    v15 = sub_1AE23DA9C();
    v16 = *(a5 + 8);
    swift_getAssociatedTypeWitness();
    v17 = sub_1AE23D7CC();
    v18 = swift_getWitnessTable();
    v9 = sub_1ADE13AA8(sub_1ADF86120, v23, v15, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

    v26 = v9;
    MEMORY[0x1EEE9AC00](v20);
    v24 = a4;
    v25 = a5;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v21 = sub_1AE23CF4C();
    if (v21)
    {
      v26 = v9;
      MEMORY[0x1EEE9AC00](v21);
      v24 = a4;
      v25 = a5;
      if (sub_1AE23CF4C())
      {

        return 0;
      }
    }

    else
    {

      return 1;
    }
  }

  return v9;
}

uint64_t sub_1ADF8551C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  (*(v7 + 16))(&v16 - v10, a1, v6, v9);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
LABEL_6:
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB9E0, &qword_1AE24D830);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v12 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
LABEL_7:
    sub_1ADF8636C(&v16);
    v14 = 0;
    return v14 & 1;
  }

  v13 = v18;
  __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
  v14 = (*(v13 + 16))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v16);
  return v14 & 1;
}

uint64_t Array<A>.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v26 = a4;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  result = sub_1AE23D0AC();
  if (result)
  {
    v15 = 0;
    v24 = (v27 + 32);
    v25 = (v27 + 16);
    v23 = (v27 + 8);
    do
    {
      v16 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v16)
      {
        (*(v27 + 16))(v13, a2 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v15, a3);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v22 != 8)
        {
          __break(1u);
          return result;
        }

        v28 = result;
        (*v25)(v13, &v28, a3);
        swift_unknownObjectRelease();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_11:
          __break(1u);
          return (*v23)(v10, a3);
        }
      }

      v18 = v13;
      (*v24)(v10, v13, a3);
      v20 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      if ((*(v19 + 8))(v20, v19))
      {
        return (*v23)(v10, a3);
      }

      (*(*(v26 + 8) + 48))(a1, a3);
      (*v23)(v10, a3);
      result = sub_1AE23D0AC();
      ++v15;
      v13 = v18;
    }

    while (v17 != result);
  }

  return result;
}

uint64_t Array<A>.copy(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v5 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  return sub_1ADE08EB0(sub_1ADF86234, v9, v5, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t Array<A>.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v10 = v7;

  v8 = Array<A>.copy(renamingReferences:)(&v10, a2, a3, a4);

  return v8;
}

uint64_t Array<A>.needToFinalizeTimestamps()()
{
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t Array<A>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v28 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = sub_1AE23D7CC();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v27 - v16);
  v31 = v3;
  v36[1] = *v3;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v36, a2, WitnessTable);
  v35 = v36[0];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v29 = a2;
  v19 = sub_1AE23DC8C();
  v20 = (v11 + 32);
  v32 = TupleTypeMetadata2 - 8;
  v33 = v19;
  v27[1] = v6 + 32;
  while (1)
  {
    sub_1AE23DC7C();
    (*v20)(v17, v14, v34);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v17;
    (*(v6 + 32))(v9, v17 + *(TupleTypeMetadata2 + 48), v5);
    (*(*(v30 + 8) + 64))(v28, v5);
    v22 = v31;
    sub_1AE23D04C();
    v23 = *v22;
    sub_1ADF86080(v21, v23);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v25 = v23 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v25 = v23;
    }

    (*(v6 + 40))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v9, v5);
  }
}

uint64_t sub_1ADF85F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF85F5C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF85F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.observableDifference(from:with:)(*a1, a2, *v5, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t sub_1ADF85FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return Array<A>.needToFinalizeTimestamps()();
}

uint64_t sub_1ADF86018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ADF86080(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1ADF86120(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

BOOL sub_1ADF86190(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 48))(a1, 1, AssociatedTypeWitness) != 1;
}

uint64_t sub_1ADF862CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF8631C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF8636C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF863D4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  result = sub_1ADE6B938(sub_1ADE74060);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADF8644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v35 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v10);
  v32 = v28 - v11;
  v13 = *(v12 + 16);
  if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 0xA)
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v15 + 16);

  result = MEMORY[0x1B26FBB90](v16, a3, v34);
  v18 = result;
  v37 = result;
  v19 = *(a1 + 16);
  if ((~v19 & 0xF000000000000007) != 0 && ((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xA)
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v20 + 16);
  if (v31)
  {
    v36 = v5;
    v21 = 0;
    v28[1] = a1;
    v29 = (v8 + 8);
    v30 = v20;
    while (v21 < *(v20 + 16))
    {
      v18 = *(v20 + 8 * v21 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();
      v22 = v35;

      sub_1ADE0262C(v18, v22);

      v23 = *(*(v33 + 8) + 8);
      v24 = *(v23 + 8);

      v26 = v36;
      v24(v25, a3, v23);
      v36 = v26;
      if (v26)
      {

        return v18;
      }

      ++v21;
      sub_1AE23D38C();
      v27 = v32;
      sub_1AE23D33C();

      result = (*v29)(v27, a3);
      v20 = v30;
      if (v31 == v21)
      {
        v18 = v37;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    return v18;
  }

  return result;
}

uint64_t sub_1ADF8676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v24[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a1;
  v12 = sub_1AE23D38C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1ADE08EB0(sub_1ADF87ED8, v23, v12, &type metadata for Proto_Value, v13, WitnessTable, MEMORY[0x1E69E7288], v24);
  if (!v5)
  {
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = *(inited + 16);
      *(v17 + 16) = v18;
      sub_1ADE51B2C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    v20 = v19 | 0x5000000000000000;
    v21 = *(inited + 16);
    *(inited + 16) = v20;
    sub_1ADE51B48(v21);
  }

  return inited;
}

uint64_t Set<>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a2;
  v84 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_1AE23D7CC();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v80 = &v60 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v60 - v19;
  v69 = *(a4 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v60 - v24;
  v25 = sub_1AE23D7CC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v82 = &v60 - v27;
  v28 = sub_1AE23D32C();
  v87 = a6;
  v29 = sub_1AE23D32C();
  result = 0;
  if (v28 != v29)
  {
    return result;
  }

  v86 = v11;
  v77 = AssociatedTypeWitness;
  v89 = sub_1AE23C9DC();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    v31 = a4;
    result = sub_1AE23D36C();
    a3 = v90;
    v32 = v91;
    v33 = v92;
    v34 = v93;
    v35 = v94;
    v36 = v83;
  }

  else
  {
    v37 = -1 << *(a3 + 32);
    v38 = ~v37;
    v39 = -v37;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v35 = v40 & *(a3 + 56);

    v33 = v38;
    v34 = 0;
    v36 = v83;
    v31 = a4;
    v32 = a3 + 56;
  }

  v78 = (v69 + 56);
  v60 = v33;
  v41 = (v33 + 64) >> 6;
  v65 = v69 + 16;
  v74 = (v69 + 32);
  v71 = v84 + 40;
  v85 = (v69 + 8);
  v70 = (v14 + 48);
  v64 = (v14 + 32);
  v63 = (v14 + 16);
  v62 = (v14 + 8);
  v61 = (v86 + 8);
  v75 = v32;
  v76 = a3;
  v72 = v41;
  v73 = a1;
  while (a3 < 0)
  {
    if (!sub_1AE23D9AC())
    {
LABEL_23:
      (*v78)(v82, 1, 1, v31);
      sub_1ADDDCE74();
      v59 = v89;
      v88 = v89;
      sub_1AE23D11C();
      swift_getWitnessTable();
      if ((sub_1AE23D4CC() & 1) == 0)
      {
        return v59;
      }

      return 1;
    }

    v46 = v82;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v44 = v34;
    v86 = v35;
LABEL_20:
    (*v78)(v46, 0, 1, v31);
    (*v74)(v36, v46, v31);
    v47 = sub_1AE23D2CC();
    if (v49 == -1)
    {
      (*v85)(v36, v31);
      sub_1ADDDCE74();

      return 0;
    }

    v50 = v47;
    v51 = v48;
    v52 = v49;
    v53 = v79;
    sub_1AE23D3AC();
    v54 = v80;
    (*(v84 + 40))(v53, v81, v31);
    v55 = v54;
    v56 = *v85;
    (*v85)(v53, v31);
    v57 = v77;
    if ((*v70)(v55, 1, v77) == 1)
    {
      v42 = v83;
      v56(v83, v31);
      sub_1ADF87E20(v50, v51, v52);
      result = (*v61)(v55, v68);
      v34 = v44;
      v35 = v86;
      a3 = v76;
      v36 = v42;
    }

    else
    {
      v58 = v66;
      (*v64)(v66, v55, v57);
      (*v63)(v67, v58, v57);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      sub_1ADF87E20(v50, v51, v52);
      (*v62)(v58, v57);
      v36 = v83;
      result = (v56)(v83, v31);
      v34 = v44;
      v35 = v86;
      a3 = v76;
    }

    v32 = v75;
    v41 = v72;
  }

  v43 = v35;
  v44 = v34;
  if (v35)
  {
LABEL_17:
    v86 = (v43 - 1) & v43;
    v46 = v82;
    (*(v69 + 16))(v82, *(a3 + 48) + *(v69 + 72) * (__clz(__rbit64(v43)) | (v44 << 6)), v31);
    goto LABEL_20;
  }

  v45 = v34;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      goto LABEL_23;
    }

    v43 = *(v32 + 8 * v44);
    ++v45;
    if (v43)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Set<>.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *(a3 - 8);
  v31 = a4;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v29 - v12;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    result = sub_1AE23D36C();
    a2 = v39;
    v15 = v40;
    v16 = v41;
    v17 = v42;
    v18 = v43;
  }

  else
  {
    v19 = -1 << *(a2 + 32);
    v15 = a2 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(a2 + 56);

    v18 = v22;
    v17 = 0;
  }

  v35 = a2;
  v36 = (v30 + 56);
  v29[0] = v16;
  v29[1] = v30 + 16;
  v32 = (v30 + 32);
  v33 = (v30 + 8);
  v34 = v15;
  v38 = v17;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v18;
  if (v18)
  {
LABEL_13:
    v37 = v18;
    v25 = (v23 - 1) & v23;
    (*(v30 + 16))(v13, *(a2 + 48) + *(v30 + 72) * (__clz(__rbit64(v23)) | (v17 << 6)), a3);
    while (1)
    {
      (*v36)(v13, 0, 1, a3);
      v26 = v13;
      (*v32)(v9, v13, a3);
      v28 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v28);
      if ((*(v27 + 8))(v28, v27))
      {
        break;
      }

      (*(*(v31 + 8) + 48))(a1, a3);
      result = (*v33)(v9, a3);
      v18 = v25;
      v15 = v34;
      a2 = v35;
      v13 = v26;
      v38 = v17;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v37 = v18;
      if (!sub_1AE23D9AC())
      {
        goto LABEL_21;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v25 = v37;
    }

    (*v33)(v9, a3);
    return sub_1ADDDCE74();
  }

  else
  {
    v24 = v38;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= ((v16 + 64) >> 6))
      {
LABEL_21:
        (*v36)(v13, 1, 1, a3);
        return sub_1ADDDCE74();
      }

      v23 = *(v15 + 8 * v17);
      ++v24;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Set<>.copy(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v6 = sub_1AE23D38C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1ADE08EB0(sub_1ADF573E4, v10, v6, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23D39C();
}

uint64_t Set<>.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v12 = v9;

  v10 = Set<>.copy(renamingReferences:)(&v12, a2, a3, a4, a5);

  return v10;
}

uint64_t Set<>.needToFinalizeTimestamps()()
{
  sub_1AE23D38C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t Set<>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a1;
  v7 = *(a2 + 16);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v38 - v17;
  v19 = *v4;
  v20 = *(a2 + 24);
  v50 = a3;
  result = Set<>.needToFinalizeTimestamps()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v51 = sub_1AE23C9EC();
  sub_1AE23D32C();
  v43 = a2;
  result = sub_1AE23D2FC();
  v46 = v18;
  v39 = v4;
  if ((v19 & 0xC000000000000001) != 0)
  {
    sub_1AE23D93C();
    result = sub_1AE23D36C();
    v19 = v52;
    v22 = v53;
    v23 = v54;
    v44 = v55;
    v24 = v56;
  }

  else
  {
    v44 = 0;
    v25 = -1 << *(v19 + 32);
    v22 = v19 + 56;
    v23 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v19 + 56);
  }

  v45 = (v40 + 56);
  v38 = v23;
  v28 = (v23 + 64) >> 6;
  v29 = (v40 + 16);
  v41 = (v40 + 32);
  v42 = v19;
  v30 = (v40 + 8);
  while (v19 < 0)
  {
    v37 = sub_1AE23D9AC();
    v35 = v46;
    if (!v37)
    {
LABEL_21:
      (*v45)(v35, 1, 1, v7);
      result = sub_1ADDDCE74();
      *v39 = v51;
      return result;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v45)(v35, 0, 1, v7);
    (*v41)(v14, v35, v7);
    (*(*(v50 + 8) + 64))(v49, v7);
    (*v29)(v48, v14, v7);
    v33 = v47;
    sub_1AE23D33C();
    v34 = *v30;
    (*v30)(v33, v7);
    result = v34(v14, v7);
    v19 = v42;
  }

  v35 = v46;
  if (v24)
  {
    v31 = v44;
LABEL_10:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(v40 + 16))(v46, *(v19 + 48) + *(v40 + 72) * (v32 | (v31 << 6)), v7);
    goto LABEL_11;
  }

  v36 = v44;
  while (1)
  {
    v31 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_21;
    }

    v24 = *(v22 + 8 * v31);
    ++v36;
    if (v24)
    {
      v44 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF87B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF87B94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF87BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Set<>.observableDifference(from:with:)(*a1, a2, *v5, *(a3 + 16), *(a4 - 8), *(a3 + 24));
  *a5 = result;
  return result;
}

uint64_t sub_1ADF87C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return Set<>.needToFinalizeTimestamps()();
}

uint64_t sub_1ADF87C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    v8 = sub_1ADE66040(a2, a3, a4);
  }

  else
  {
    v8 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v8;
}

uint64_t Set<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1ADE71C08();
  if (!v5)
  {

    sub_1ADE6DC70(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1ADF87E20(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1ADDFFBC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1ADF87E38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF87E88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF87ED8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  result = sub_1ADE6B938(sub_1ADF87F54);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t Data.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_1ADE71C08();
  if (!v3)
  {

    sub_1ADE6D26C(a2, a3);
  }

  return result;
}

uint64_t sub_1ADF8800C(uint64_t result, char a2, double a3)
{
  if ((a2 & 1) == 0 && a3 == 0.0)
  {
    return result;
  }

  v6 = result;
  v7 = *(v3 + 24);
  v9 = v7[14];
  v8 = v7[15];
  v7[14] = 0;
  v7[15] = 0;
  sub_1ADE71C08();
  if (v4)
  {
  }

  swift_beginAccess();

  sub_1AE1B7148(a3);
  swift_endAccess();

  v10 = sub_1ADE71C08();
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = v7[14];
  v7[14] = v9;

  v13 = v7[15];
  v7[15] = v8;

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);
    swift_beginAccess();
    v14 = *(v7[3] + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xD)
    {
      v15 = v14 & 0xFFFFFFFFFFFFFFBLL;
      v8 = *(v15 + 16);
      v9 = *(v15 + 24);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      v9 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v8 = sub_1ADDF69D0(0, *(v8 + 2) + 1, 1, v8);
LABEL_11:
  v16 = v6;
  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = sub_1ADDF69D0((v17 > 1), v18 + 1, 1, v8);
    v16 = v6;
  }

  *(v8 + 2) = v18 + 1;
  *&v8[8 * v18 + 32] = v16;
  sub_1AE1B6BF8(v8, v9);
  v19 = *(v7[3] + 16);
  if ((~v19 & 0xF000000000000007) != 0 && ((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xD)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFBLL;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v23);
  if (*(v21 + 16) >= *(v21 + 24) >> 1)
  {
    v24 = *(v21 + 16);
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v22, v21);
  swift_endAccess();
}

uint64_t sub_1ADF88300(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  result = sub_1ADE71C08();
  if (!v2)
  {

    sub_1ADE6CDF8(a1);
  }

  return result;
}

uint64_t sub_1ADF883A8(uint64_t a1, uint64_t a2)
{
  result = sub_1ADE71C08();
  if (!v2)
  {
    if (*(*(result + 16) + 104) == 1)
    {
      swift_beginAccess();

      sub_1AE1B6CAC(a2);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7008(a2);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t UInt64.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = sub_1ADE71C08();
  if (!v2)
  {
    if (*(*(result + 16) + 104) == 1 && a2 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B6CAC(a2);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t String.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE71C08();
  if (!v3)
  {
    v7 = *(result + 16);

    v8 = sub_1ADE66494(a2, a3);
    swift_beginAccess();
    sub_1AE1B70A8(v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADF88620()
{
  v2 = *v0;
  v3 = v0[1];
  result = sub_1ADE71C08();
  if (!v1)
  {
    v5 = *(result + 16);

    v6 = sub_1ADE66494(v2, v3);
    swift_beginAccess();
    sub_1AE1B70A8(v6);
    swift_endAccess();
  }

  return result;
}

uint64_t Character.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_1ADE71C08();
  if (!v3)
  {

    v7 = sub_1ADE52308(a2, a3);
    v9 = v8;
    sub_1ADE6D26C(v7, v8);
    sub_1ADDCC35C(v7, v9);
  }

  return result;
}

uint64_t sub_1ADF8875C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADF89EF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1ADF88788()
{
  v2 = *v0;
  v3 = v0[1];
  result = sub_1ADE71C08();
  if (!v1)
  {

    v5 = sub_1ADE52308(v2, v3);
    v7 = v6;
    sub_1ADE6D26C(v5, v6);
    sub_1ADDCC35C(v5, v7);
  }

  return result;
}

uint64_t Date.init(from:)(uint64_t a1)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE65960();
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v2 = 0xD000000000000017;
    *(v2 + 8) = 0x80000001AE25FB70;
    *(v2 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t Date.encode(to:)()
{
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6CDF8(v0);
  }

  return result;
}

BOOL Date._crIsLessThan(_:)()
{
  sub_1AE23BF1C();
  v1 = v0;
  sub_1AE23BF1C();
  return v1 < v2;
}

BOOL sub_1ADF88964()
{
  sub_1AE23BF1C();
  v1 = v0;
  sub_1AE23BF1C();
  return v1 < v2;
}

uint64_t sub_1ADF889BC()
{
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6CDF8(v0);
  }

  return result;
}

uint64_t DateInterval.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AE23BF4C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  if (!*(a1 + 72))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD000000000000021;
    *(v19 + 8) = 0x80000001AE25FCC0;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  v28 = a2;
  v29 = v13;
  type metadata accessor for CRDecoder.CRValueKeyedContainer();
  *(swift_initStackObject() + 16) = a1;

  v16 = sub_1ADE15C9C(0);
  if (!v16)
  {
LABEL_9:
    sub_1ADE42E40();
    swift_allocError();
    *v20 = 0xD000000000000024;
    *(v20 + 8) = 0x80000001AE261380;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  v17 = v16;
  v18 = sub_1ADE15C9C(1);
  if (!v18)
  {

    goto LABEL_9;
  }

  v27 = v18;
  if (!*(v17 + 72))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v22 = 0xD000000000000017;
    *(v22 + 8) = 0x80000001AE25FB70;
    *(v22 + 16) = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v26[1] = type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = v17;

  sub_1ADE65960();
  if (v2)
  {

LABEL_11:
  }

  (*(v29 + 32))(v15, v11, v5);
  v23 = v27;
  if (*(v27 + 72))
  {
    *(swift_initStackObject() + 16) = v23;
    sub_1ADE08CAC();
    v25 = v29;
    (*(v29 + 16))(v8, v15, v5);
    sub_1AE23BB2C();

    return (*(v25 + 8))(v15, v5);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v24 = 0xD000000000000017;
    *(v24 + 8) = 0x80000001AE25FB70;
    *(v24 + 16) = 0;
    swift_willThrow();

    return (*(v29 + 8))(v15, v5);
  }
}

uint64_t DateInterval.encode(to:)(uint64_t a1)
{
  v3 = sub_1AE23BF4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADE71C08();
  if (!v1)
  {
    v9 = result;
    type metadata accessor for CREncoder.CRValueKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v9;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1AE1B6BF8(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    sub_1AE23BB3C();
    sub_1ADF89CC0(v7, 0);
    (*(v4 + 8))(v7, v3);
    sub_1AE23BB4C();
    sub_1ADF8800C(1, 1, v11);
    swift_setDeallocating();
    v12 = *(inited + 16);

    v13 = *(inited + 24);
  }

  return result;
}

uint64_t sub_1ADF890BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADF89BC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t UUID.encode(to:)()
{
  v2 = v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v4 = *(result + 16);

    v5 = sub_1ADDF66A8(v2);
    swift_beginAccess();
    sub_1AE1B733C(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADF8919C()
{
  v2 = v0;
  result = sub_1ADE71C08();
  if (!v1)
  {
    v4 = *(result + 16);

    v5 = sub_1ADDF66A8(v2);
    swift_beginAccess();
    sub_1AE1B733C(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t Float.encode(to:)(float a1)
{
  result = sub_1ADE71C08();
  if (!v1)
  {
    if (*(*(result + 16) + 104) >= 2u)
    {
      swift_beginAccess();

      sub_1AE1B7294(a1);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7148(a1);
    }

    swift_endAccess();
  }

  return result;
}

void sub_1ADF89320(uint64_t a1@<X0>, float *a2@<X8>)
{
  v4 = sub_1ADF8A114(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t Double.encode(to:)(double a1)
{
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6D350(a1);
  }

  return result;
}

uint64_t sub_1ADF893D4()
{
  v2 = *v0;
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6D350(v2);
  }

  return result;
}

uint64_t Bool.encode(to:)(uint64_t a1, char a2)
{
  result = sub_1ADE71C08();
  if (!v2)
  {
    if (*(*(result + 16) + 104) == 1)
    {
      swift_beginAccess();

      sub_1AE1B6CAC(a2 & 1);
    }

    else
    {
      swift_beginAccess();

      sub_1AE1B7008(a2 & 1);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t URL.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AE23E00C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AE23E00C();

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

uint64_t URL.CodingKeys.init(intValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t URL.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x65766974616C6572;
  }

  else
  {
    result = 1702060386;
  }

  *v0;
  return result;
}

void *sub_1ADF896AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1ADF896D8()
{
  if (*v0)
  {
    result = 0x65766974616C6572;
  }

  else
  {
    result = 1702060386;
  }

  *v0;
  return result;
}

uint64_t sub_1ADF8971C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ADF89748(uint64_t a1)
{
  v2 = sub_1ADF8A3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ADF89784(uint64_t a1)
{
  v2 = sub_1ADF8A3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ADF897D0()
{
  v0 = sub_1AE23CE6C();
  v4 = sub_1ADF89850(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1ADF89850(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AE23CD9C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1AE23D7FC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1ADDD6E00(v9, 0);
  v12 = sub_1ADF899A8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1AE23CD9C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1AE23DADC();
LABEL_4:

  return sub_1AE23CD9C();
}

unint64_t sub_1ADF899A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1ADE56CA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AE23CE2C();
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
          result = sub_1AE23DADC();
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

    result = sub_1ADE56CA4(v12, a6, a7);
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

    result = sub_1AE23CE0C();
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

uint64_t sub_1ADF89BC8(uint64_t a1)
{
  v1 = a1;
  v2 = 0xD000000000000016;
  v3 = *(a1 + 72);
  if (!v3)
  {
    v5 = "Not decoding a CRDT.";
    v2 = 0xD000000000000017;
LABEL_6:
    v6 = v5 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v7 = v2;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    swift_willThrow();

    return v1;
  }

  v4 = *(v3 + 16);
  v5 = "Date not supported in version2.";
  if ((~v4 & 0xF000000000000007) == 0 || ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) != 3)
  {
    goto LABEL_6;
  }

  v1 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  sub_1ADDD86D8(v1, *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18));
  sub_1ADE51B48(v4);
  return v1;
}

uint64_t sub_1ADF89CC0(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = *(v2 + 24);
  result = sub_1ADE6B938(sub_1ADF8AA60);
  if (v3)
  {
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v6 + 2);
    swift_beginAccess();
    v10 = *(*(v5 + 24) + 16);
    if ((~v10 & 0xF000000000000007) != 0 && ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 0xD)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFBLL;
      v6 = *(v11 + 16);
      v4 = *(v11 + 24);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v4 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  v6 = sub_1ADDF69D0(0, *(v6 + 2) + 1, 1, v6);
LABEL_8:
  v13 = *(v6 + 2);
  v12 = *(v6 + 3);
  if (v13 >= v12 >> 1)
  {
    v6 = sub_1ADDF69D0((v12 > 1), v13 + 1, 1, v6);
  }

  *(v6 + 2) = v13 + 1;
  *&v6[8 * v13 + 32] = a2;
  sub_1AE1B6BF8(v6, v4);
  v14 = *(*(v5 + 24) + 16);
  if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xD)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFBLL;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v18);
  if (*(v16 + 16) >= *(v16 + 24) >> 1)
  {
    v19 = *(v16 + 16);
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v17, v16);
  swift_endAccess();
}

uint64_t sub_1ADF89EF0(uint64_t a1)
{
  v2 = sub_1AE23CD5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    v9 = "Not decoding a CRDT.";
    v7 = 0xD000000000000017;
    goto LABEL_8;
  }

  v5 = *(v4 + 16);
  if ((~v5 & 0xF000000000000007) != 0 && ((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 3)
  {
    v11 = v5 & 0xFFFFFFFFFFFFFFBLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    sub_1ADDD86D8(v12, v13);
    sub_1AE23CD4C();
    v7 = sub_1AE23CD2C();
    v15 = v14;
    sub_1ADDCC35C(v12, v13);
    if (!v15)
    {
      sub_1ADE42E40();
      swift_allocError();
      v9 = "ts for DateInterval.";
      v7 = 0xD000000000000018;
      goto LABEL_8;
    }

    if ((v15 & 0x2000000000000000) != 0)
    {

      if ((v15 & 0xF00000000000000) != 0)
      {
        return v7;
      }

      __break(1u);
    }

    else if ((v7 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v7 & 0x1000000000000000) != 0)
      {

        return v7;
      }

LABEL_19:
      v7 = sub_1ADF897D0();

      return v7;
    }

    __break(1u);
    goto LABEL_19;
  }

  v7 = 0xD000000000000016;
  sub_1ADE42E40();
  swift_allocError();
  v9 = "Date not supported in version2.";
LABEL_8:
  *v8 = v7;
  *(v8 + 8) = v9 | 0x8000000000000000;
  *(v8 + 16) = 0;
  swift_willThrow();

  return v7;
}

float sub_1ADF8A114(uint64_t a1)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE71F8C();
    v1 = v3;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v4 = 0xD000000000000017;
    *(v4 + 8) = 0x80000001AE25FB70;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1ADF8A1E8(uint64_t a1)
{
  result = sub_1ADF8A638(&qword_1EB5BAA58, MEMORY[0x1E6969530]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A240(uint64_t a1)
{
  result = sub_1ADF8A268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A268()
{
  result = qword_1EB5BB9E8;
  if (!qword_1EB5BB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9E8);
  }

  return result;
}

uint64_t sub_1ADF8A2BC(uint64_t a1)
{
  result = sub_1ADF8A638(&qword_1ED96A710, MEMORY[0x1E69695A8]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF8A318()
{
  result = qword_1EB5BB9F0;
  if (!qword_1EB5BB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9F0);
  }

  return result;
}

unint64_t sub_1ADF8A36C(uint64_t a1)
{
  *(a1 + 16) = sub_1ADF8A39C();
  result = sub_1ADF8A3F0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADF8A39C()
{
  result = qword_1EB5BB9F8;
  if (!qword_1EB5BB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB9F8);
  }

  return result;
}

unint64_t sub_1ADF8A3F0()
{
  result = qword_1EB5BBA00;
  if (!qword_1EB5BBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA00);
  }

  return result;
}

unint64_t sub_1ADF8A448()
{
  result = qword_1EB5BBA08;
  if (!qword_1EB5BBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA08);
  }

  return result;
}

unint64_t sub_1ADF8A4A0()
{
  result = qword_1EB5BBA10;
  if (!qword_1EB5BBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA10);
  }

  return result;
}

unint64_t sub_1ADF8A4F8()
{
  result = qword_1EB5BBA18;
  if (!qword_1EB5BBA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BBA20, &qword_1AE24DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA18);
  }

  return result;
}

unint64_t sub_1ADF8A560()
{
  result = qword_1EB5BBA28;
  if (!qword_1EB5BBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBA28);
  }

  return result;
}

uint64_t sub_1ADF8A5B4(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  *(a1 + 16) = sub_1ADF8A638(qword_1EB5BBA30, MEMORY[0x1E6968FB0]);
  result = sub_1ADF8A638(&qword_1EB5BB920, v2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADF8A638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ADF8A7DC(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = *(v2 + 24);
  result = sub_1ADE6B938(sub_1ADF8AA14);
  if (v3)
  {
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v6 + 2);
    swift_beginAccess();
    v10 = *(*(v5 + 24) + 16);
    if ((~v10 & 0xF000000000000007) != 0 && ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 0xD)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFBLL;
      v6 = *(v11 + 16);
      v4 = *(v11 + 24);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v4 = MEMORY[0x1E69E7CC0];
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  v6 = sub_1ADDF69D0(0, *(v6 + 2) + 1, 1, v6);
LABEL_8:
  v13 = *(v6 + 2);
  v12 = *(v6 + 3);
  if (v13 >= v12 >> 1)
  {
    v6 = sub_1ADDF69D0((v12 > 1), v13 + 1, 1, v6);
  }

  *(v6 + 2) = v13 + 1;
  *&v6[8 * v13 + 32] = a2;
  sub_1AE1B6BF8(v6, v4);
  v14 = *(*(v5 + 24) + 16);
  if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xD)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFBLL;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B26FB860](v18);
  if (*(v16 + 16) >= *(v16 + 24) >> 1)
  {
    v19 = *(v16 + 16);
    sub_1AE23D03C();
  }

  sub_1AE23D09C();
  sub_1AE1B6BF8(v17, v16);
  swift_endAccess();
}

double RefBinding.init(wrappedValue:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 16) = v13;
  (*(v8 + 16))(v12, a1, v10);
  v16 = xmmword_1AE2427C0;

  Ref.init<A>(_:_:id:)(&v17, v14, v12, &v16, a2, a3);
  (*(v8 + 8))(a1, a2);
  result = *&v17;
  *a4 = v17;
  return result;
}

__n128 RefBinding.init(wrappedValue:_:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t RefBinding.wrappedValue.getter(uint64_t a1)
{
  v2 = *(v1 + 2);
  v7 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Ref();
  return Ref.subscript.getter(v2, v5);
}

uint64_t sub_1ADF8AD20(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 2);
  v5 = *(a2 + a3 - 32);
  v6 = *(a2 + a3 - 16);
  v7 = *a1;
  v3 = type metadata accessor for RefBinding();
  return RefBinding.wrappedValue.getter(v3);
}

uint64_t sub_1ADF8AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v11[0] = *(a3 + a4 - 32);
  v10 = *&v11[0];
  v11[1] = v5;
  v6 = type metadata accessor for RefBinding();
  v7 = RefBinding.wrappedValue.modify(v11, v6);
  (*(*(v10 - 8) + 24))(v8, a1);
  return (v7)(v11, 0);
}

void (*RefBinding.wrappedValue.modify(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(v2 + 16);
  *(v5 + 32) = *v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = type metadata accessor for Ref();
  v6[6] = Ref.subscript.modify(v6, v7, v10);
  return sub_1ADF8AED4;
}

void sub_1ADF8AED4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

unint64_t RefBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &WitnessTable - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(v2[2] + 32);
  v31 = v2[1];
  v32 = v7;
  v50 = v7;
  v51 = v31;
  v10 = *(v9 + 32);
  v11 = type metadata accessor for Ref();

  WitnessTable = swift_getWitnessTable();
  v30 = v11;
  Reference.identity.getter(v11, WitnessTable);
  v13 = v48;
  v12 = v49;
  v14 = v8 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v15 = (v14 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  ++v15[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v16 = sub_1AE23E34C();
  v17 = *v15;
  swift_beginAccess();
  v18 = *(v17 + 16) != 0;
  *&v43 = v13;
  *(&v43 + 1) = v12;
  sub_1ADDD86D8(v13, v12);
  sub_1ADDDC21C(0, 0, 0);
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  *v47 = v16;
  *&v47[16] = v17;
  *&v47[24] = 0;
  v47[28] = 0;
  v47[29] = v18;
  v47[30] = 0;
  result = sub_1ADDDD688(&v43);
  if (!v45)
  {
    __break(1u);
    goto LABEL_7;
  }

  v20 = v44;
  if (!v44)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = (*(*v20 + 168))();

    *&v44 = v21;
    v20 = v21;
  }

  sub_1ADDDD94C(v15, &v43);
  v41[2] = v45;
  v41[3] = v46;
  v42[0] = *v47;
  *(v42 + 15) = *&v47[15];
  v41[0] = v43;
  v41[1] = v44;
  sub_1ADF8B36C(v41);
  swift_endAccess();
  v22 = sub_1ADDCC35C(v13, v12);
  (*(*v20 + 248))(v40, v22);
  v23 = v33;
  swift_dynamicCast();
  v24 = v34;
  (*(v4 + 24))(v23, v34, v3);
  v40[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(v4 + 16))(boxed_opaque_existential_1, v23, v3);
  (*(*v20 + 256))(v40);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v37 = v32;
  v38 = v31;
  Reference.identity.getter(v30, WitnessTable);
  v26 = v35;
  v27 = v36;
  swift_beginAccess();
  sub_1ADDE0110(v39, v26, v27);
  swift_endAccess();

  v28 = *(v4 + 8);
  v28(v24, v3);
  sub_1ADDCC35C(v39[0], v39[1]);
  return (v28)(v23, v3);
}

uint64_t RefBinding.projectedValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t sub_1ADF8B36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA960, &qword_1AE2455E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF8B3D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1ADF8B4CC()
{
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 72);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 80);
    v4 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v2);

    result = sub_1ADDD6748(v2, v3, v4, &v14);
    if (!v1)
    {
      v6 = type metadata accessor for ObjCVersion();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v9 = MEMORY[0x1E69E7CC8];
      *v8 = MEMORY[0x1E69E7CC8];
      *(v8 + 1) = v9;
      swift_beginAccess();
      v11 = *v8;
      v10 = *(v8 + 1);
      *v8 = v14;

      v13.receiver = v7;
      v13.super_class = v6;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD00000000000001DLL;
    *(v12 + 8) = 0x80000001AE261670;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ADF8B634()
{
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 88);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 96);
    v4 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v2);

    result = sub_1ADDD6748(v2, v3, v4, &v14);
    if (!v1)
    {
      v6 = type metadata accessor for ObjCVersion();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v9 = MEMORY[0x1E69E7CC8];
      *v8 = MEMORY[0x1E69E7CC8];
      *(v8 + 1) = v9;
      swift_beginAccess();
      v11 = *v8;
      v10 = *(v8 + 1);
      *v8 = v14;

      v13.receiver = v7;
      v13.super_class = v6;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000025;
    *(v12 + 8) = 0x80000001AE261640;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1ADF8B79C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0] + 24);
  if (*(v4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 16 * result + 32);
  v6 = *(*(v2 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder) + 24);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000013;
    *(v9 + 8) = 0x80000001AE25FD70;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_1AE23BFEC();
    return (*(*(v10 - 8) + 16))(a2, v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v5, v10);
  }
}

id sub_1ADF8B964(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 2) = MEMORY[0x1E69E7CC0];
  *(v2 + 3) = v3;
  *(v2 + 4) = v3;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  v4 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence];
  v8 = 1;
  v7 = 1;
  *v4 = 0;
  *(v4 + 1) = v3;
  *(v4 + 2) = v3;
  *(v4 + 3) = v3;
  *(v4 + 4) = 0;
  v4[40] = 1;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  v4[64] = 1;
  *&v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRTTStringEncoder();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1ADF8BA0C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);

  v7 = sub_1ADDF66A8(a1);

  v9 = v3 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  *(v9 + 48) = v7;
  *(v9 + 56) = a2;
  *(v9 + 64) = 0;
  return result;
}

uint64_t sub_1ADF8BFC8()
{
  v1 = v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 48);
  v22 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 32);
  v23 = v2;
  v24 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 64);
  v3 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 16);
  v20 = *(v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence);
  v21 = v3;
  v4 = v0 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v5 = *(v4 + 24);
  sub_1ADE5218C(&v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 24) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1ADE56088(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 24) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1ADE56088((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[72 * v8];
  *(v9 + 2) = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v9[96] = v24;
  *(v9 + 4) = v11;
  *(v9 + 5) = v12;
  *(v9 + 3) = v10;
  *(v4 + 24) = v5;
  swift_endAccess();
  LOBYTE(v17[0]) = 1;
  v19 = 1;
  v13 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v13;
  v18 = *(v1 + 64);
  v14 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v14;
  *v1 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + 8) = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v15;
  *(v1 + 24) = v15;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  return sub_1ADE521E8(v17);
}

uint64_t sub_1ADF8C184(uint64_t a1)
{
  sub_1ADDE4E28(a1, v10);
  sub_1ADDEE524(0, &qword_1EB5BA0E8, 0x1E696AEC0);
  if (swift_dynamicCast())
  {
    v2 = v10[5];
    v3 = sub_1AE23CD0C();
    v5 = v4;

    v6 = (v1 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence);
    swift_beginAccess();
    v7 = v6[1];
    *v6 = v3;
    v6[1] = v5;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD00000000000001BLL;
    *(v9 + 8) = 0x80000001AE2615C0;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF8C2AC(uint64_t a1)
{
  v2 = v1;
  v3 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v13 = *v3;
  v14 = v3[1];
  v4 = *(v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);

  v6 = sub_1ADDF5C7C(v5);
  v8 = v7;

  v9 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  *(v9 + 40) = v6;
  *(v9 + 48) = v8;
  return sub_1ADE42CB8(v10);
}

uint64_t sub_1ADF8C3E4()
{
  v1 = v0;
  type metadata accessor for ObjCVersion();
  v2 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v12 = *v2;
  v13 = v2[1];
  v3 = *(v1 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);

  v5 = sub_1ADDF5C7C(v4);
  v7 = v6;

  v8 = v1 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v9 = *(v8 + 56);
  v10 = *(v8 + 64);
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  return sub_1ADE42CB8(v9);
}

uint64_t sub_1ADF8C540(uint64_t a1)
{
  v2 = v1;
  v3 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v13 = *v3;
  v14 = v3[1];
  v4 = *(v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);

  v6 = sub_1ADDF5C7C(v5);
  v8 = v7;

  v9 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;
  return sub_1ADE42CB8(v10);
}

uint64_t sub_1ADF8C678(uint64_t a1)
{
  v2 = v1;
  v3 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v13 = *v3;
  v14 = v3[1];
  v4 = *(v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);

  v6 = sub_1ADDF5C7C(v5);
  v8 = v7;

  v9 = v2 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  v10 = *(v9 + 88);
  v11 = *(v9 + 96);
  *(v9 + 88) = v6;
  *(v9 + 96) = v8;
  return sub_1ADE42CB8(v10);
}

uint64_t sub_1ADF8C9A8(uint64_t a1)
{
  sub_1ADDE4E28(a1, aBlock);
  sub_1ADDEE524(0, &qword_1EB5BBB18, 0x1E696AAB0);
  if (!swift_dynamicCast())
  {
    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD000000000000019;
    *(v18 + 8) = 0x80000001AE261570;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  v2 = v25;
  v3 = [v25 string];
  v4 = sub_1AE23CD0C();
  v6 = v5;

  v7 = &v1[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;

  v26 = 0;
  v9 = [v2 length];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = &v26;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ADF8D914;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1ADF8D91C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AE1D240C;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v2 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    isEscapingClosureAtFileLocation = sub_1ADE561AC(0, 1, 1, isEscapingClosureAtFileLocation);
    v7[4] = isEscapingClosureAtFileLocation;
    goto LABEL_8;
  }

  isEscapingClosureAtFileLocation = v7[4];
  if (*(isEscapingClosureAtFileLocation + 16))
  {
    v15 = v26;
    if (v26)
    {
LABEL_5:
      swift_willThrow();
      v16 = v15;
    }

    goto LABEL_11;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[4] = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = *(isEscapingClosureAtFileLocation + 16);
  v20 = *(isEscapingClosureAtFileLocation + 24);
  if (v21 >= v20 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_1ADE561AC((v20 > 1), v21 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v21 + 1;
  v22 = isEscapingClosureAtFileLocation + 40 * v21;
  *(v22 + 32) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 40) = v23;
  *(v22 + 64) = 1;
  v7[4] = isEscapingClosureAtFileLocation;
  swift_endAccess();
  v15 = v26;
  if (v26)
  {
    goto LABEL_5;
  }

LABEL_11:
}

void sub_1ADF8CD20(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void **a6)
{
  v99 = sub_1AE23BFEC();
  v11 = *(v99 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for FinalizedTimestamp(0);
  v14 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    a4 = sub_1ADE561AC(0, *(a4 + 2) + 1, 1, a4);
    *(v11 + 32) = a4;
    goto LABEL_38;
  }

  if (HIDWORD(a3))
  {
    goto LABEL_46;
  }

  v100 = a5;
  v86 = a3;
  v80 = a6;
  v81 = a4;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v18 = *(a1 + 32);
  v101 = 1;
  v19 = 1 << v18;
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v89 = (v11 + 32);
  v88 = (v11 + 16);
  v98 = (v11 + 8);

  v23 = 0;
  v97 = 0;
  v96 = 0;
  v87 = 0;
  v102 = MEMORY[0x1E69E7CC0];
  v95 = a1;
  while (1)
  {
    v24 = v23;
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v23 = v26 - 1;
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          v21 = 0;
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          goto LABEL_16;
        }

        v21 = *(v17 + 8 * v25);
        ++v24;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_42:

      __swift_destroy_boxed_opaque_existential_1(&v106);

LABEL_44:
      v76 = *v80;
      v77 = v87;
      *v80 = v87;
      v78 = v77;

      *v81 = 1;
      return;
    }

    v25 = v23;
LABEL_15:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(*(a1 + 48) + 8 * v28);
    sub_1ADDE4E28(*(a1 + 56) + 32 * v28, &v105);
    *&v106 = v29;
    sub_1ADDEE390(&v105, (&v106 + 8));
    v30 = v29;
    v23 = v25;
LABEL_16:
    v109[0] = v106;
    v109[1] = v107;
    v110 = v108;
    v25 = v106;
    if (!v106)
    {
      break;
    }

    sub_1ADDEE390((v109 + 8), &v106);
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v31 = sub_1AE23CD0C();
    v33 = v32;
    if (v31 == sub_1AE23CD0C() && v33 == v34)
    {

LABEL_26:
      sub_1ADDE4E28(&v106, &v105);
      type metadata accessor for ObjCFinalizedTimestamp(0);
      swift_dynamicCast();
      v94 = v104;
      v101 = *(v100 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
      v96 = &v104[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp];
      v36 = v90;
      sub_1ADED0548(&v104[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp], v90);
      v37 = v92;
      v38 = v99;
      (*v89)(v92, v36, v99);
      v39 = type metadata accessor for ObjCReplica(0);
      v40 = objc_allocWithZone(v39);
      v93 = v23;
      v41 = *v88;
      (*v88)(&v40[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v37, v38);
      *&v40[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
      v103.receiver = v40;
      v103.super_class = v39;

      v42 = objc_msgSendSuper2(&v103, sel_init);
      v43 = *v98;
      (*v98)(v37, v38);
      v44 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
      swift_beginAccess();
      v45 = &v42[v44];
      v46 = v99;
      v41(v37, v45, v99);
      v23 = v93;

      v97 = sub_1ADDF66A8(v37);

      v43(v37, v46);
      a1 = v95;
      __swift_destroy_boxed_opaque_existential_1(&v106);
      v96 = *&v96[*(v91 + 20)];

      v101 = 0;
    }

    else
    {
      v35 = sub_1AE23E00C();

      if (v35)
      {
        goto LABEL_26;
      }

      sub_1ADDE4E28(&v106, &v105);
      if (swift_dynamicCast())
      {
        v47 = v104;
        v48 = OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder;
        v49 = v100;
        v50 = *(v100 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
        v93 = sub_1AE23CD0C();
        v52 = v51;
        v94 = v51;

        v53 = sub_1ADE66494(v93, v52);

        v82 = v53;
        if (HIDWORD(v53))
        {
          __break(1u);
          return;
        }

        v54 = v47;
        v55 = *(v49 + v48);
        v56 = (v55 + 112);
        v85 = *(v55 + 112);
        v93 = *(v55 + 120);
        *(v55 + 112) = 0;
        *(v55 + 120) = 0;
        v57 = *(v49 + v48);
        v58 = (*v54 + 152);
        v84 = *v58;
        v83 = v58;

        v94 = v54;
        v60 = v87;
        v84(v59);
        v87 = v60;
        if (v60)
        {
          goto LABEL_42;
        }

        if (*(v55 + 120))
        {
          sub_1ADE42E40();
          v87 = swift_allocError();
          *v75 = 0xD00000000000003DLL;
          *(v75 + 8) = 0x80000001AE260360;
          *(v75 + 16) = 3;
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_1(&v106);

          goto LABEL_44;
        }

        v61 = *v56;
        if (!*v56)
        {
          type metadata accessor for CREncoder.CRValueContainer();
          v61 = swift_allocObject();
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
          *(v61 + 16) = v55;
          *(v61 + 24) = inited;
          *(v55 + 112) = v61;
        }

        swift_beginAccess();
        v63 = *(v61 + 24);
        *(v55 + 112) = v85;

        v64 = *(v55 + 120);
        *(v55 + 120) = v93;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1ADE562C8(0, *(v102 + 2) + 1, 1, v102);
        }

        a1 = v95;
        v66 = *(v102 + 2);
        v65 = *(v102 + 3);
        if (v66 >= v65 >> 1)
        {
          v102 = sub_1ADE562C8((v65 > 1), v66 + 1, 1, v102);
        }

        __swift_destroy_boxed_opaque_existential_1(&v106);
        v67 = v102;
        *(v102 + 2) = v66 + 1;
        v68 = &v67[16 * v66];
        *(v68 + 8) = v82;
        *(v68 + 5) = v63;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v106);
      }
    }
  }

  v11 = v100 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  a4 = *(v11 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 32) = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_38:
  v70 = v86;
  v72 = *(a4 + 2);
  v71 = *(a4 + 3);
  if (v72 >= v71 >> 1)
  {
    a4 = sub_1ADE561AC((v71 > 1), v72 + 1, 1, a4);
  }

  *(a4 + 2) = v72 + 1;
  v73 = &a4[40 * v72];
  *(v73 + 8) = v70;
  v74 = v97;
  *(v73 + 5) = v102;
  *(v73 + 6) = v74;
  *(v73 + 7) = v96;
  v73[64] = v101 & 1;
  *(v11 + 32) = a4;
  swift_endAccess();
}

uint64_t sub_1ADF8D7E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  a5(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);

  return 1;
}

id sub_1ADF8D8B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B26FDA50);
  }

  return result;
}

uint64_t sub_1ADF8D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C8CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v21[1] = *(v4 + 40);
    v22 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v4;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = a4;
    v20 = _Block_copy(aBlock);

    sub_1AE23C8AC();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEEF0(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v18, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v18, v22);
  }

  return result;
}

uint64_t sub_1ADF8DC8C(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v3 = type metadata accessor for RetainedMapRun(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v128 = *(v122 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v127 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v126 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v95 - v13;
  v120 = sub_1AE23C0EC();
  v14 = *(v120 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v17 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v19 = &v95 - v18;
  v20 = sub_1AE23C12C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v117 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v95 - v25;
  v96 = type metadata accessor for Replica();
  v101 = *(v96 - 8);
  v26 = *(v101 + 64);
  v27 = MEMORY[0x1EEE9AC00](v96);
  v116 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v95 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v109 = &v95 - v35;
  v36 = *(a1 + 64);
  v110 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v115 = v38 & v36;
  v97 = (v37 + 63) >> 6;
  v100 = v21 + 16;
  v114 = (v21 + 32);
  v105 = (v14 + 8);
  v123 = (v4 + 56);
  v124 = (v4 + 48);
  v103 = v21;
  v98 = (v21 + 8);
  v104 = a1;

  v39 = 0;
  v113 = v34;
  v118 = v19;
  v99 = v20;
  while (1)
  {
    v40 = v115;
    if (!v115)
    {
      if (v97 <= v39 + 1)
      {
        v42 = v39 + 1;
      }

      else
      {
        v42 = v97;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v97)
        {
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v93 - 8) + 56))(v34, 1, 1, v93);
          v115 = 0;
          v112 = v43;
          goto LABEL_16;
        }

        v40 = *(v110 + 8 * v41);
        ++v39;
        if (v40)
        {
          v112 = v41;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v112 = v39;
    v41 = v39;
LABEL_15:
    v115 = (v40 - 1) & v40;
    v44 = __clz(__rbit64(v40)) | (v41 << 6);
    v45 = v104;
    v46 = v111;
    sub_1ADDF8098(*(v104 + 48) + *(v101 + 72) * v44, v111, type metadata accessor for Replica);
    v47 = v103;
    v48 = v102;
    (*(v103 + 16))(v102, *(v45 + 56) + *(v103 + 72) * v44, v20);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v50 = *(v49 + 48);
    v51 = v46;
    v34 = v113;
    sub_1ADDDE5A8(v51, v113, type metadata accessor for Replica);
    (*(v47 + 32))(&v34[v50], v48, v20);
    (*(*(v49 - 8) + 56))(v34, 0, 1, v49);
LABEL_16:
    v52 = v109;
    sub_1ADDD2198(v34, v109, &qword_1EB5BA458, &qword_1AE251E00);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
    }

    (*v114)(v117, v52 + *(v53 + 48), v20);
    v54 = v116;
    sub_1ADDDE5A8(v52, v116, type metadata accessor for Replica);
    v55 = v108;
    swift_beginAccess();
    v56 = *(v55 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = *(v55 + 32);
    v58 = v131;
    *(v55 + 32) = 0x8000000000000000;
    v60 = sub_1ADDD8A6C(v54);
    v61 = v58[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_53;
    }

    v64 = v59;
    if (v58[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v55 + 32) = v58;
        if (v59)
        {
          goto LABEL_25;
        }

LABEL_24:
        v131 = MEMORY[0x1E69E7CC0];
        v132 = 0;
        swift_unknownObjectWeakInit();
        v132 = 0;
        swift_unknownObjectWeakAssign();
        v67 = v111;
        sub_1ADDF8098(v116, v111, type metadata accessor for Replica);
        sub_1ADDE21EC(v60, v67, &v131, v58);
        goto LABEL_25;
      }

      sub_1ADF6E86C();
      v58 = v131;
      *(v55 + 32) = v131;
      if ((v64 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_1ADDE4890(v63, isUniquelyReferenced_nonNull_native);
      v58 = v131;
      v65 = sub_1ADDD8A6C(v116);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_54;
      }

      v60 = v65;
      *(v55 + 32) = v58;
      if ((v64 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v68 = v58[7];
    v69 = v107;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v105)(v69, v120);
    v70 = *(v106 + 36);
    v71 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    if (*&v19[v70] != v131)
    {
      break;
    }

LABEL_4:
    sub_1ADDCEDE0(v19, &qword_1EB5BA440, &unk_1AE24CCB0);
    swift_endAccess();
    sub_1ADDE5360(v116, type metadata accessor for Replica);
    v20 = v99;
    (*v98)(v117, v99);
    v34 = v113;
    v39 = v112;
  }

  v72 = v68 + 24 * v60;
  v119 = v70;
  v129 = v71;
  while (1)
  {
    v73 = sub_1AE23D51C();
    v75 = *v74;
    v76 = v74[1];
    v73(&v131, 0);
    sub_1AE23D47C();
    v77 = sub_1ADDE22AC(v75, v76);
    v79 = v78;
    v80 = v122;
    if (v77 != v78)
    {
      break;
    }

LABEL_27:
    sub_1ADDE2B98(v77, v79);
    v19 = v118;
    sub_1AE23D46C();
    if (*&v19[v119] == v131)
    {
      goto LABEL_4;
    }
  }

  if (v78 < v77)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v81 = v77;
  v130 = v77;
  if (v77 < v78)
  {
    while ((v77 & 0x8000000000000000) == 0)
    {
      if (v81 >= *(*v72 + 16))
      {
        goto LABEL_46;
      }

      v82 = v127;
      v83 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v84 = *(v128 + 72) * v81;
      sub_1ADDCEE40(*v72 + v83 + v84, v127, &qword_1EB5BA148, &qword_1AE241B60);
      v85 = v126;
      sub_1ADDD2198(v82 + *(v80 + 36), v126, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v124)(v85, 1, v3) == 1)
      {
        sub_1ADDCEDE0(v85, &qword_1EB5BA450, &unk_1AE25B3B0);
        v86 = type metadata accessor for FinalizedTimestamp(0);
        v87 = v125;
        (*(*(v86 - 8) + 56))(v125, 1, 1, v86);
        *(v87 + *(v3 + 20)) = 2;
        (*v123)(v87, 0, 1, v3);
      }

      else
      {
        v88 = v85;
        v89 = v121;
        sub_1ADDDE5A8(v88, v121, type metadata accessor for RetainedMapRun);
        v87 = v125;
        sub_1ADDCEE40(v89, v125, &qword_1EB5BA460, &qword_1AE251020);
        v90 = *(v89 + *(v3 + 20));
        sub_1ADDE5360(v89, type metadata accessor for RetainedMapRun);
        if (__OFADD__(v90, 1))
        {
          goto LABEL_48;
        }

        *(v87 + *(v3 + 20)) = v90 + 1;
        (*v123)(v87, 0, 1, v3);
        v80 = v122;
      }

      v91 = *v72;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v91;
      if ((v92 & 1) == 0)
      {
        v91 = sub_1ADF799F0(v91);
        *v72 = v91;
      }

      if (v81 >= v91[2])
      {
        goto LABEL_47;
      }

      ++v81;
      sub_1ADF92F3C(v87, v91 + v83 + *(v80 + 36) + v84, &qword_1EB5BA450, &unk_1AE25B3B0);
      v77 = v130;
      if (v79 == v81)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADF8EA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetainedMapRun(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v106 = *(v100 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v79 - v14;
  v98 = sub_1AE23C0EC();
  v15 = *(v98 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v86 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v18 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v20 = &v79 - v19;
  v80 = type metadata accessor for Replica();
  v21 = *(*(v80 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v80);
  v81 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v79 - v24;
  v92 = sub_1AE23C12C();
  v25 = *(v92 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v90 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v88 = &v79 - v32;
  v93 = 0;
  v82 = a1;
  v89 = *(a1 + 16);
  v87 = (v25 + 32);
  v84 = (v15 + 8);
  v101 = (v5 + 56);
  v102 = (v5 + 48);
  v83 = (v25 + 8);
  v91 = a2;
  v96 = v20;
  while (1)
  {
    v33 = v89;
    if (v93 == v89)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v35 = v90;
      (*(*(v34 - 8) + 56))(v90, 1, 1, v34);
      v93 = v33;
      v36 = v88;
    }

    else
    {
      v35 = v90;
      if (v93 >= v89)
      {
        goto LABEL_44;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v38 = *(v37 - 8);
      v39 = v93;
      sub_1ADDCEE40(v82 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v93, v35, &qword_1EB5BA2A0, &unk_1AE242200);
      v93 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_45;
      }

      (*(v38 + 56))(v35, 0, 1, v37);
      v36 = v88;
      a2 = v91;
    }

    sub_1ADDD2198(v35, v36, &qword_1EB5BA458, &qword_1AE251E00);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    result = (*(*(v40 - 8) + 48))(v36, 1, v40);
    if (result == 1)
    {
      return result;
    }

    (*v87)(v94, v36 + *(v40 + 48), v92);
    v42 = v95;
    sub_1ADDDE5A8(v36, v95, type metadata accessor for Replica);
    swift_beginAccess();
    v43 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = *(a2 + 32);
    v45 = v109[0];
    *(a2 + 32) = 0x8000000000000000;
    v47 = sub_1ADDD8A6C(v42);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_43;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(a2 + 32) = v45;
        if (v46)
        {
          goto LABEL_17;
        }

LABEL_16:
        v109[0] = MEMORY[0x1E69E7CC0];
        v110 = 0;
        swift_unknownObjectWeakInit();
        v110 = 0;
        swift_unknownObjectWeakAssign();
        v54 = v81;
        sub_1ADDF8098(v95, v81, type metadata accessor for Replica);
        sub_1ADDE21EC(v47, v54, v109, v45);
        goto LABEL_17;
      }

      sub_1ADF6E86C();
      v45 = v109[0];
      *(a2 + 32) = v109[0];
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1ADDE4890(v50, isUniquelyReferenced_nonNull_native);
      v45 = v109[0];
      v52 = sub_1ADDD8A6C(v95);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_46;
      }

      v47 = v52;
      *(a2 + 32) = v45;
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v55 = v45[7];
    v56 = v86;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v84)(v56, v98);
    v57 = *(v85 + 36);
    v58 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    if (*&v20[v57] != v109[0])
    {
      break;
    }

LABEL_2:
    sub_1ADDCEDE0(v20, &qword_1EB5BA440, &unk_1AE24CCB0);
    swift_endAccess();
    sub_1ADDE5360(v95, type metadata accessor for Replica);
    (*v83)(v94, v92);
    a2 = v91;
  }

  v59 = v57;
  v60 = v55 + 24 * v47;
  v97 = v59;
  v107 = v58;
  while (1)
  {
    v61 = sub_1AE23D51C();
    v63 = *v62;
    v64 = v62[1];
    v61(v109, 0);
    sub_1AE23D47C();
    result = sub_1ADDE22AC(v63, v64);
    v66 = v65;
    v67 = v100;
    if (result != v65)
    {
      break;
    }

LABEL_19:
    sub_1ADDE2B98(result, v66);
    v20 = v96;
    sub_1AE23D46C();
    if (*&v20[v97] == v109[0])
    {
      goto LABEL_2;
    }
  }

  if (v65 < result)
  {
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
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v68 = result;
  v108 = result;
  if (result >= v65)
  {
    goto LABEL_42;
  }

  while ((result & 0x8000000000000000) == 0)
  {
    if (v68 >= *(*v60 + 16))
    {
      goto LABEL_37;
    }

    v69 = v105;
    v70 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v71 = *(v106 + 72) * v68;
    sub_1ADDCEE40(*v60 + v70 + v71, v105, &qword_1EB5BA148, &qword_1AE241B60);
    v72 = v104;
    sub_1ADDD2198(v69 + *(v67 + 36), v104, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((*v102)(v72, 1, v4) == 1)
    {
      sub_1ADDCEDE0(v72, &qword_1EB5BA450, &unk_1AE25B3B0);
      v73 = type metadata accessor for FinalizedTimestamp(0);
      v74 = v103;
      (*(*(v73 - 8) + 56))(v103, 1, 1, v73);
      *(v74 + *(v4 + 20)) = 2;
      (*v101)(v74, 0, 1, v4);
    }

    else
    {
      v75 = v72;
      v76 = v99;
      sub_1ADDDE5A8(v75, v99, type metadata accessor for RetainedMapRun);
      v74 = v103;
      sub_1ADDCEE40(v76, v103, &qword_1EB5BA460, &qword_1AE251020);
      v77 = *(v76 + *(v4 + 20));
      result = sub_1ADDE5360(v76, type metadata accessor for RetainedMapRun);
      if (__OFADD__(v77, 1))
      {
        goto LABEL_39;
      }

      *(v74 + *(v4 + 20)) = v77 + 1;
      (*v101)(v74, 0, 1, v4);
      v67 = v100;
    }

    v78 = *v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v78;
    if ((result & 1) == 0)
    {
      result = sub_1ADF799F0(v78);
      v78 = result;
      *v60 = result;
    }

    if (v68 >= v78[2])
    {
      goto LABEL_38;
    }

    ++v68;
    sub_1ADF92F3C(v74, v78 + v70 + *(v67 + 36) + v71, &qword_1EB5BA450, &unk_1AE25B3B0);
    result = v108;
    if (v66 == v68)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

int64_t sub_1ADF8F658(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v126 = a1;
  v2 = type metadata accessor for RetainedMapRun(0);
  v142 = *(v2 - 8);
  v3 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v141 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v146 = *(v5 - 8);
  v147 = v5;
  v6 = *(v146 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v113 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v112 - v17;
  v18 = sub_1AE23C0EC();
  v145 = *(v18 - 8);
  v19 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v21 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v23 = &v112 - v22;
  v24 = sub_1AE23C12C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v112 - v30;
  v31 = type metadata accessor for Replica();
  v123 = *(v31 - 8);
  v32 = *(v123 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v133 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v136 = &v112 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v119 = &v112 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v112 - v43;
  v45 = *(v126 + 64);
  v125 = v126 + 64;
  v46 = 1 << *(v126 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v135 = v47 & v45;
  v114 = (v46 + 63) >> 6;
  v118 = v25 + 16;
  v132 = (v25 + 32);
  v115 = (v145 + 8);
  v145 = v142 + 48;
  v142 += 56;
  v121 = v25;
  v122 = (v25 + 8);
  v48 = v29;
  v49 = v24;

  v51 = 0;
  v134 = v48;
  v130 = v42;
  v129 = v44;
  v138 = v18;
  v137 = v23;
  v127 = v24;
  while (1)
  {
    v52 = v135;
    if (v135)
    {
      v131 = v51;
      v53 = v51;
      goto LABEL_14;
    }

    v54 = v114 <= v51 + 1 ? v51 + 1 : v114;
    v55 = v54 - 1;
    do
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v53 >= v114)
      {
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v104 - 8) + 56))(v42, 1, 1, v104);
        v135 = 0;
        v131 = v55;
        goto LABEL_15;
      }

      v52 = *(v125 + 8 * v53);
      ++v51;
    }

    while (!v52);
    v131 = v53;
LABEL_14:
    v135 = (v52 - 1) & v52;
    v56 = __clz(__rbit64(v52)) | (v53 << 6);
    v57 = v126;
    v58 = v119;
    sub_1ADDF8098(*(v126 + 48) + *(v123 + 72) * v56, v119, type metadata accessor for Replica);
    v59 = v121;
    v60 = *(v57 + 56) + *(v121 + 72) * v56;
    v61 = v120;
    v62 = v127;
    (*(v121 + 16))(v120, v60, v127);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v140 = *(v63 + 48);
    v64 = v58;
    v42 = v130;
    sub_1ADDDE5A8(v64, v130, type metadata accessor for Replica);
    v65 = *(v59 + 32);
    v49 = v62;
    v65(&v42[v140], v61, v62);
    (*(*(v63 - 8) + 56))(v42, 0, 1, v63);
    v44 = v129;
LABEL_15:
    sub_1ADDD2198(v42, v44, &qword_1EB5BA458, &qword_1AE251E00);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v66 - 8) + 48))(v44, 1, v66) == 1)
    {
    }

    v67 = *(v66 + 48);
    v68 = v136;
    sub_1ADDDE5A8(v44, v136, type metadata accessor for Replica);
    (*v132)(v134, &v44[v67], v49);
    v69 = v133;
    sub_1ADDF8098(v68, v133, type metadata accessor for Replica);
    v70 = v49;
    v71 = v128;
    swift_beginAccess();
    v72 = sub_1ADDE3EF8(v149, v69);
    if (!*v73)
    {
      v78 = v70;
      (v72)(v149, 0);
      goto LABEL_20;
    }

    v74 = v73;
    v124 = v72;
    v75 = v117;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v115)(v75, v18);
    v76 = *(v116 + 36);
    v77 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    if (*&v23[v76] != v148[0])
    {
      break;
    }

LABEL_18:
    sub_1ADDCEDE0(v23, &qword_1EB5BA440, &unk_1AE24CCB0);
    (v124)(v149, 0);
    v71 = v128;
    v78 = v127;
LABEL_20:
    v42 = v130;
    v44 = v129;
    swift_endAccess();
    sub_1ADDE5360(v133, type metadata accessor for Replica);
    swift_beginAccess();
    v79 = *(v71 + 32);
    if (!*(v79 + 16) || (v80 = sub_1ADDD8A6C(v136), (v81 & 1) == 0))
    {
      memset(v148, 0, sizeof(v148));
      v49 = v78;
LABEL_28:
      sub_1ADDCEDE0(v148, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
LABEL_29:
      (*v122)(v134, v49);
      result = sub_1ADDE5360(v136, type metadata accessor for Replica);
      goto LABEL_30;
    }

    sub_1ADDE56CC(*(v79 + 56) + 24 * v80, v148);
    v49 = v78;
    if (!v148[0])
    {
      goto LABEL_28;
    }

    sub_1ADDE56CC(v148, &v150);
    sub_1ADDCEDE0(v148, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    v82 = *(v150 + 16);
    if (!v82)
    {
      sub_1ADDE5C20(&v150);
      goto LABEL_51;
    }

    if (v82 != 1)
    {
      sub_1ADDE5C20(&v150);
      goto LABEL_29;
    }

    v83 = v113;
    sub_1ADDCEE40(v150 + ((*(v146 + 80) + 32) & ~*(v146 + 80)), v113, &qword_1EB5BA148, &qword_1AE241B60);
    v84 = v112;
    sub_1ADDD2198(v83 + *(v147 + 36), v112, &qword_1EB5BA450, &unk_1AE25B3B0);
    LODWORD(v83) = (*v145)(v84, 1, v2);
    v85 = v84;
    v49 = v78;
    sub_1ADDCEDE0(v85, &qword_1EB5BA450, &unk_1AE25B3B0);
    sub_1ADDE5C20(&v150);
    if (v83 != 1)
    {
      goto LABEL_29;
    }

LABEL_51:
    v105 = v128;
    swift_beginAccess();
    v106 = *(v105 + 32);
    v107 = sub_1ADDD8A6C(v136);
    if (v108)
    {
      v140 = v107;
      v109 = *(v105 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = *(v105 + 32);
      v150 = v111;
      *(v105 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1ADF6E86C();
        v111 = v150;
      }

      sub_1ADDE5360(*(v111 + 48) + *(v123 + 72) * v140, type metadata accessor for Replica);
      sub_1ADDE5634(*(v111 + 56) + 24 * v140, v149);
      sub_1ADF6CF18(v140, v111);
      *(v105 + 32) = v111;
    }

    else
    {
      memset(v149, 0, sizeof(v149));
    }

    swift_endAccess();
    sub_1ADDCEDE0(v149, &qword_1EB5BA468, &unk_1AE259210);
    (*v122)(v134, v49);
    result = sub_1ADDE5360(v136, type metadata accessor for Replica);
LABEL_30:
    v51 = v131;
  }

  v139 = v77;
  v140 = v76;
  while (1)
  {
    v86 = sub_1AE23D51C();
    v89 = *v87;
    v88 = v87[1];
    v86(v148, 0);
    sub_1AE23D47C();
    result = sub_1ADDE22AC(v89, v88);
    v91 = result;
    v92 = v90;
    if (result != v90)
    {
      break;
    }

LABEL_32:
    sub_1ADDE2B98(v91, v92);
    v23 = v137;
    v18 = v138;
    sub_1AE23D46C();
    if (*&v23[v140] == v148[0])
    {
      goto LABEL_18;
    }
  }

  if (v90 < result)
  {
    goto LABEL_63;
  }

  v93 = result;
  if (result >= v90)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  while ((v91 & 0x8000000000000000) == 0)
  {
    if (v93 >= *(*v74 + 16))
    {
      goto LABEL_59;
    }

    v94 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v95 = *(v146 + 72) * v93;
    v96 = v144;
    sub_1ADDCEE40(*v74 + v94 + v95, v144, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDD2198(v96 + *(v147 + 36), v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((*v145)(v16, 1, v2) == 1)
    {
      sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    }

    else
    {
      v97 = v141;
      sub_1ADDDE5A8(v16, v141, type metadata accessor for RetainedMapRun);
      v98 = v97;
      v99 = *(v97 + *(v2 + 20));
      v100 = v99 - 1;
      if (v99 > 1)
      {
        v101 = v143;
        sub_1ADDD2198(v98, v143, &qword_1EB5BA460, &qword_1AE251020);
        *(v101 + *(v2 + 20)) = v100;
        (*v142)(v101, 0, 1, v2);
        goto LABEL_44;
      }

      sub_1ADDE5360(v98, type metadata accessor for RetainedMapRun);
    }

    v101 = v143;
    (*v142)(v143, 1, 1, v2);
LABEL_44:
    v102 = *v74;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v102;
    if ((v103 & 1) == 0)
    {
      v102 = sub_1ADF799F0(v102);
      *v74 = v102;
    }

    if (v93 >= v102[2])
    {
      goto LABEL_60;
    }

    ++v93;
    sub_1ADF92F3C(v101, v102 + v94 + *(v147 + 36) + v95, &qword_1EB5BA450, &unk_1AE25B3B0);
    if (v92 == v93)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_1ADF90668(uint64_t a1, uint64_t a2)
{
  v122 = type metadata accessor for RetainedMapRun(0);
  v4 = *(v122 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v123 = *(v125 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v19 = sub_1AE23C0EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v23 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v25 = &v94 - v24;
  v110 = sub_1AE23C12C();
  v26 = *(v110 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Replica();
  v94 = *(v30 - 8);
  v31 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v109 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v111 = &v94 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v107 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v106 = &v94 - v39;
  v112 = 0;
  v104 = (v26 + 32);
  v98 = a1;
  v40 = *(a1 + 16);
  v99 = (v20 + 8);
  v121 = (v4 + 48);
  v118 = (v4 + 56);
  v41 = v40;
  v102 = (v26 + 8);
  v108 = v29;
  v105 = v40;
  v97 = a2;
  v114 = v19;
  v113 = v25;
  while (1)
  {
    if (v112 == v41)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v43 = v107;
      (*(*(v42 - 8) + 56))(v107, 1, 1, v42);
      v112 = v41;
      v44 = v106;
    }

    else
    {
      if (v112 >= v41)
      {
        goto LABEL_54;
      }

      v45 = a2;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v47 = *(v46 - 8);
      v48 = v112;
      v43 = v107;
      sub_1ADDCEE40(v98 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v112, v107, &qword_1EB5BA2A0, &unk_1AE242200);
      v112 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_55;
      }

      (*(v47 + 56))(v43, 0, 1, v46);
      v44 = v106;
      a2 = v45;
      v29 = v108;
    }

    sub_1ADDD2198(v43, v44, &qword_1EB5BA458, &qword_1AE251E00);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v49 - 8) + 48))(v44, 1, v49) == 1)
    {
      return;
    }

    v50 = *(v49 + 48);
    v51 = v44;
    v52 = v44;
    v53 = v111;
    sub_1ADDDE5A8(v51, v111, type metadata accessor for Replica);
    (*v104)(v29, v52 + v50, v110);
    v54 = v109;
    sub_1ADDF8098(v53, v109, type metadata accessor for Replica);
    swift_beginAccess();
    v55 = sub_1ADDE3EF8(v127, v54);
    if (!*v56)
    {
      (v55)(v127, 0);
      goto LABEL_12;
    }

    v103 = v55;
    v57 = v56;
    v58 = v101;
    sub_1AE23C10C();
    sub_1AE23C0DC();
    (*v99)(v58, v19);
    v59 = *(v100 + 36);
    v60 = sub_1ADDCEEF0(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    if (*&v25[v59] != v126[0])
    {
      break;
    }

LABEL_10:
    sub_1ADDCEDE0(v25, &qword_1EB5BA440, &unk_1AE24CCB0);
    (v103)(v127, 0);
    a2 = v97;
LABEL_12:
    swift_endAccess();
    sub_1ADDE5360(v109, type metadata accessor for Replica);
    swift_beginAccess();
    v61 = *(a2 + 32);
    v29 = v108;
    if (!*(v61 + 16) || (v62 = sub_1ADDD8A6C(v111), (v63 & 1) == 0))
    {
      memset(v126, 0, sizeof(v126));
      v41 = v105;
LABEL_20:
      sub_1ADDCEDE0(v126, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      goto LABEL_21;
    }

    sub_1ADDE56CC(*(v61 + 56) + 24 * v62, v126);
    v41 = v105;
    if (!v126[0])
    {
      goto LABEL_20;
    }

    sub_1ADDE56CC(v126, &v128);
    sub_1ADDCEDE0(v126, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    v64 = *(v128 + 16);
    if (!v64)
    {
      sub_1ADDE5C20(&v128);
      goto LABEL_41;
    }

    if (v64 == 1)
    {
      v65 = v96;
      sub_1ADDCEE40(v128 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v96, &qword_1EB5BA148, &qword_1AE241B60);
      v66 = v95;
      sub_1ADDD2198(v65 + *(v125 + 36), v95, &qword_1EB5BA450, &unk_1AE25B3B0);
      LODWORD(v65) = (*v121)(v66, 1, v122);
      v67 = v66;
      v29 = v108;
      v41 = v105;
      sub_1ADDCEDE0(v67, &qword_1EB5BA450, &unk_1AE25B3B0);
      sub_1ADDE5C20(&v128);
      if (v65 != 1)
      {
        goto LABEL_21;
      }

LABEL_41:
      swift_beginAccess();
      v87 = *(a2 + 32);
      v88 = sub_1ADDD8A6C(v111);
      if (v89)
      {
        v90 = v88;
        v91 = *(a2 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = *(a2 + 32);
        v128 = v93;
        *(a2 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1ADF6E86C();
          v93 = v128;
        }

        sub_1ADDE5360(*(v93 + 48) + *(v94 + 72) * v90, type metadata accessor for Replica);
        sub_1ADDE5634(*(v93 + 56) + 24 * v90, v127);
        sub_1ADF6CF18(v90, v93);
        *(a2 + 32) = v93;
      }

      else
      {
        memset(v127, 0, sizeof(v127));
      }

      swift_endAccess();
      sub_1ADDCEDE0(v127, &qword_1EB5BA468, &unk_1AE259210);
      (*v102)(v29, v110);
      sub_1ADDE5360(v111, type metadata accessor for Replica);
      v41 = v105;
    }

    else
    {
      sub_1ADDE5C20(&v128);
LABEL_21:
      (*v102)(v29, v110);
      sub_1ADDE5360(v111, type metadata accessor for Replica);
    }
  }

  v116 = v59;
  v115 = v60;
  while (1)
  {
    v68 = sub_1AE23D51C();
    v70 = *v69;
    v71 = v69[1];
    v68(v126, 0);
    sub_1AE23D47C();
    v72 = sub_1ADDE22AC(v70, v71);
    v74 = v73;
    if (v72 != v73)
    {
      break;
    }

LABEL_23:
    sub_1ADDE2B98(v72, v74);
    v25 = v113;
    v19 = v114;
    sub_1AE23D46C();
    if (*&v25[v116] == v126[0])
    {
      goto LABEL_10;
    }
  }

  if (v73 < v72)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v75 = v72;
  v124 = v72;
  if (v72 >= v73)
  {
    goto LABEL_53;
  }

  while ((v72 & 0x8000000000000000) == 0)
  {
    if (v75 >= *(*v57 + 16))
    {
      goto LABEL_49;
    }

    v76 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v77 = *(v123 + 72) * v75;
    v78 = v120;
    sub_1ADDCEE40(*v57 + v76 + v77, v120, &qword_1EB5BA148, &qword_1AE241B60);
    v79 = v119;
    sub_1ADDD2198(v78 + *(v125 + 36), v119, &qword_1EB5BA450, &unk_1AE25B3B0);
    v80 = v122;
    if ((*v121)(v79, 1, v122) == 1)
    {
      sub_1ADDCEDE0(v79, &qword_1EB5BA450, &unk_1AE25B3B0);
    }

    else
    {
      v81 = v117;
      sub_1ADDDE5A8(v79, v117, type metadata accessor for RetainedMapRun);
      v82 = v81;
      v83 = *(v81 + *(v80 + 20));
      v84 = v83 - 1;
      if (v83 > 1)
      {
        sub_1ADDD2198(v82, v18, &qword_1EB5BA460, &qword_1AE251020);
        *&v18[*(v80 + 20)] = v84;
        (*v118)(v18, 0, 1, v80);
        goto LABEL_35;
      }

      sub_1ADDE5360(v82, type metadata accessor for RetainedMapRun);
    }

    (*v118)(v18, 1, 1, v80);
LABEL_35:
    v85 = *v57;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *v57 = v85;
    if ((v86 & 1) == 0)
    {
      v85 = sub_1ADF799F0(v85);
      *v57 = v85;
    }

    if (v75 >= v85[2])
    {
      goto LABEL_50;
    }

    ++v75;
    sub_1ADF92F3C(v18, v85 + v76 + *(v125 + 36) + v77, &qword_1EB5BA450, &unk_1AE25B3B0);
    v72 = v124;
    if (v74 == v75)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}