size_t sub_1A3484C6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A3484E5C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1A3484F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A3485068(uint64_t result)
{
  v35 = *v1;
  v2 = *(*v1 + 16);
  v34 = v2 - 2;
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = *result;
    v5 = *(result + 8);
    v29 = result;
    while (1)
    {
      v7 = v5 + 0x5851F42D4C957F2DLL * v4;
      v8 = __ROR4__((v4 >> 45) ^ (v4 >> 27), v4 >> 59);
      v4 = v5 + 0x5851F42D4C957F2DLL * v7;
      v9 = __ROR4__((v7 >> 45) ^ (v7 >> 27), v7 >> 59) | (v8 << 32);
      v10 = v9 * v2;
      v11 = (v9 * v2) >> 64;
      if (v2 > v9 * v2)
      {
        v12 = -v2 % v2;
        if (v12 > v10)
        {
          do
          {
            v13 = v5 + 0x5851F42D4C957F2DLL * v4;
            v14 = __ROR4__((v13 >> 45) ^ (v13 >> 27), v13 >> 59) | (__ROR4__((v4 >> 45) ^ (v4 >> 27), v4 >> 59) << 32);
            v4 = v5 + 0x5851F42D4C957F2DLL * v13;
          }

          while (v12 > v14 * v2);
          v11 = (v14 * v2) >> 64;
        }
      }

      v15 = v3 + v11;
      if (__OFADD__(v3, v11))
      {
        break;
      }

      if (v3 != v15)
      {
        v16 = *(v35 + 16);
        if (v3 >= v16)
        {
          goto LABEL_20;
        }

        if (v15 >= v16)
        {
          goto LABEL_21;
        }

        v17 = v35 + 32 + 16 * v3;
        v18 = *(v17 + 8);
        v31 = 16 * v15;
        v32 = *v17;
        v19 = v35 + 32 + 16 * v15;
        v20 = *v19;
        v21 = *(v19 + 8);
        sub_1A31EE004(*v17, v18);
        v33 = v21;
        sub_1A31EE004(v20, v21);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A348595C(v35);
          v35 = result;
        }

        if (v3 >= *(v35 + 16))
        {
          goto LABEL_22;
        }

        v22 = v35 + 32;
        v23 = v35 + 32 + 16 * v3;
        v24 = *v23;
        *v23 = v20;
        v25 = *(v23 + 8);
        *(v23 + 8) = v33;
        result = sub_1A31ECC9C(v24, v25);
        if (v15 >= *(v35 + 16))
        {
          goto LABEL_23;
        }

        v26 = v22 + v31;
        v27 = *(v22 + 16 * v15);
        *v26 = v32;
        v28 = *(v22 + v31 + 8);
        *(v26 + 8) = v18;
        result = sub_1A31ECC9C(v27, v28);
        *v30 = v35;
      }

      --v2;
      if (v3++ == v34)
      {
        *v29 = v4;
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A34852B4(uint64_t result)
{
  v2 = *(*v1 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 8);
    v27 = result;
    v28 = v2 - 2;
    while (1)
    {
      v8 = v6 + 0x5851F42D4C957F2DLL * v5;
      v9 = __ROR4__((v5 >> 45) ^ (v5 >> 27), v5 >> 59);
      v5 = v6 + 0x5851F42D4C957F2DLL * v8;
      v10 = __ROR4__((v8 >> 45) ^ (v8 >> 27), v8 >> 59) | (v9 << 32);
      v11 = v10 * v2;
      v12 = (v10 * v2) >> 64;
      if (v2 > v10 * v2)
      {
        v13 = -v2 % v2;
        if (v13 > v11)
        {
          do
          {
            v14 = v6 + 0x5851F42D4C957F2DLL * v5;
            v15 = __ROR4__((v14 >> 45) ^ (v14 >> 27), v14 >> 59) | (__ROR4__((v5 >> 45) ^ (v5 >> 27), v5 >> 59) << 32);
            v5 = v6 + 0x5851F42D4C957F2DLL * v14;
          }

          while (v13 > v15 * v2);
          v12 = (v15 * v2) >> 64;
        }
      }

      v16 = v4 + v12;
      if (__OFADD__(v4, v12))
      {
        break;
      }

      if (v4 != v16)
      {
        v17 = *v1;
        v18 = *(*v1 + 16);
        if (v4 >= v18)
        {
          goto LABEL_22;
        }

        if (v16 >= v18)
        {
          goto LABEL_23;
        }

        v19 = *(v17 + 32 + 8 * v16);
        v20 = *(v17 + 32 + 8 * v4);
        v21 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v1 = v17;
        if ((result & 1) == 0)
        {
          result = sub_1A3485970(v17);
          v17 = result;
          *v1 = result;
        }

        if (v4 >= *(v17 + 16))
        {
          goto LABEL_24;
        }

        v22 = v17 + 8 * v4;
        v23 = *(v22 + 32);
        *(v22 + 32) = v21;

        sub_1A34CDB60();
        v24 = *v1;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v1 = v24;
        if ((result & 1) == 0)
        {
          result = sub_1A3485970(v24);
          v24 = result;
          *v1 = result;
        }

        if (v16 >= *(v24 + 16))
        {
          goto LABEL_25;
        }

        v25 = v24 + 8 * v16;
        v26 = *(v25 + 32);
        *(v25 + 32) = v20;

        result = sub_1A34CDB60();
        v3 = v28;
      }

      --v2;
      if (v4++ == v3)
      {
        *v27 = v5;
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A34854C4(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = 0;
    v7 = *result;
    v6 = *(result + 8);
    v28 = result;
    while (1)
    {
      v9 = v6 + 0x5851F42D4C957F2DLL * v7;
      v10 = __ROR4__((v7 >> 45) ^ (v7 >> 27), v7 >> 59);
      v7 = v6 + 0x5851F42D4C957F2DLL * v9;
      v11 = __ROR4__((v9 >> 45) ^ (v9 >> 27), v9 >> 59) | (v10 << 32);
      v12 = v11 * v3;
      v13 = (v11 * v3) >> 64;
      if (v3 > v11 * v3)
      {
        v14 = -v3 % v3;
        if (v14 > v12)
        {
          do
          {
            v15 = v6 + 0x5851F42D4C957F2DLL * v7;
            v16 = __ROR4__((v15 >> 45) ^ (v15 >> 27), v15 >> 59) | (__ROR4__((v7 >> 45) ^ (v7 >> 27), v7 >> 59) << 32);
            v7 = v6 + 0x5851F42D4C957F2DLL * v15;
          }

          while (v14 > v16 * v3);
          v13 = (v16 * v3) >> 64;
        }
      }

      v17 = v5 + v13;
      if (__OFADD__(v5, v13))
      {
        break;
      }

      if (v5 != v17)
      {
        v18 = *(v2 + 16);
        if (v5 >= v18)
        {
          goto LABEL_20;
        }

        if (v17 >= v18)
        {
          goto LABEL_21;
        }

        v19 = v2 + 32 + 24 * v5;
        v20 = *v19;
        v30 = *(v19 + 8);
        v21 = v2 + 32 + 24 * v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A3485984(v2);
          v2 = result;
        }

        v25 = *(v2 + 16);
        if (v5 >= v25)
        {
          goto LABEL_22;
        }

        v26 = v2 + 32 + 24 * v5;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;
        if (v17 >= v25)
        {
          goto LABEL_23;
        }

        v27 = v2 + 32 + 24 * v17;
        *v27 = v20;
        *(v27 + 8) = v30;
        *v29 = v2;
      }

      --v3;
      if (v5++ == v4)
      {
        *v28 = v7;
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_1A34856B4(unint64_t *a1)
{
  v3 = type metadata accessor for VisualIdentity(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v30 - v7;
  v32 = v1;
  v8 = *v1;
  v9 = *(*v1 + 16);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    v11 = 0;
    v30 = a1;
    v31 = v9 - 2;
    v14 = a1;
    v13 = *a1;
    v12 = v14[1];
    while (1)
    {
      v16 = v12 + 0x5851F42D4C957F2DLL * v13;
      v17 = __ROR4__((v13 >> 45) ^ (v13 >> 27), v13 >> 59);
      v13 = v12 + 0x5851F42D4C957F2DLL * v16;
      v18 = __ROR4__((v16 >> 45) ^ (v16 >> 27), v16 >> 59) | (v17 << 32);
      v19 = v18 * v9;
      v20 = (v18 * v9) >> 64;
      if (v9 > v18 * v9)
      {
        v21 = -v9 % v9;
        if (v21 > v19)
        {
          do
          {
            v22 = v12 + 0x5851F42D4C957F2DLL * v13;
            v23 = __ROR4__((v22 >> 45) ^ (v22 >> 27), v22 >> 59) | (__ROR4__((v13 >> 45) ^ (v13 >> 27), v13 >> 59) << 32);
            v13 = v12 + 0x5851F42D4C957F2DLL * v22;
          }

          while (v21 > v23 * v9);
          v20 = (v23 * v9) >> 64;
        }
      }

      v24 = v11 + v20;
      if (__OFADD__(v11, v20))
      {
        break;
      }

      if (v11 != v24)
      {
        v25 = v8[2];
        if (v11 >= v25)
        {
          goto LABEL_20;
        }

        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v26 = v8 + v35;
        v27 = *(v33 + 72);
        v37 = v11;
        v34 = v27 * v11;
        sub_1A3300BB8(v8 + v35 + v27 * v11, v36);
        if (v24 >= v25)
        {
          goto LABEL_21;
        }

        v28 = v27 * v24;
        sub_1A3300BB8(&v26[v27 * v24], v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A34859D0(v8);
        }

        if (v37 >= v8[2])
        {
          goto LABEL_22;
        }

        v29 = v8 + v35;
        sub_1A34521B8(v5, v8 + v35 + v34);
        if (v24 >= v8[2])
        {
          goto LABEL_23;
        }

        sub_1A34521B8(v36, &v29[v28]);
        v10 = v31;
        *v32 = v8;
        v11 = v37;
      }

      --v9;
      if (v11++ == v10)
      {
        *v30 = v13;
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1A3485A48@<X0>(uint64_t a1@<X8>)
{
  sub_1A333A814();
  result = sub_1A34CB0E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A3485AF4()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v0 + 17) != 1)
  {
    v7 = *(v0 + 8);
    sub_1A34C9010();
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A346E344(v7, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

uint64_t sub_1A3485C50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PaletteButtonStyle();
  sub_1A328D790(v1 + *(v10 + 24), v9, &qword_1EB0C7EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A329D98C(v9, a1, &qword_1EB0CC3B0);
  }

  sub_1A34CD650();
  v12 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A3485E38@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v132 = sub_1A34CB610();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1A34CC990();
  MEMORY[0x1EEE9AC00](v129);
  v128 = v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1A34CA5D0();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v119 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1A34CCB40();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v115 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = v96 - v7;
  v118 = sub_1A34CCC60();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v114 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A34CC8E0();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A34CB260();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v96[0] = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3F0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v96 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v96 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v96 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3F8);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v96 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC400);
  MEMORY[0x1EEE9AC00](v98);
  v101 = v96 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC408);
  MEMORY[0x1EEE9AC00](v99);
  v103 = v96 - v30;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC410);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v96 - v31;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC418);
  MEMORY[0x1EEE9AC00](v134);
  v105 = v96 - v32;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC420);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v135 = v96 - v33;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC428);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v107 = v96 - v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC430);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = v96 - v35;
  sub_1A34CB740();
  v36 = sub_1A34CC550();
  v37 = *(v26 + 44);
  v100 = v28;
  *&v28[v37] = v36;
  v96[1] = sub_1A34CBB10();
  v120 = v1;
  sub_1A3485C50(v24);
  sub_1A34CB250();
  (*(v11 + 56))(v21, 0, 1, v10);
  v38 = *(v14 + 56);
  sub_1A328D790(v24, v16, &qword_1EB0CC3B0);
  sub_1A328D790(v21, &v16[v38], &qword_1EB0CC3B0);
  v39 = *(v11 + 48);
  if (v39(v16, 1, v10) != 1)
  {
    sub_1A328D790(v16, v97, &qword_1EB0CC3B0);
    if (v39(&v16[v38], 1, v10) != 1)
    {
      v40 = v96[0];
      (*(v11 + 32))(v96[0], &v16[v38], v10);
      sub_1A3489C14(&qword_1EB0CC468, MEMORY[0x1E697C550]);
      v41 = v97;
      v42 = sub_1A34CD040();
      v43 = *(v11 + 8);
      v43(v40, v10);
      sub_1A3288FDC(v21, &qword_1EB0CC3B0);
      sub_1A3288FDC(v24, &qword_1EB0CC3B0);
      v43(v41, v10);
      sub_1A3288FDC(v16, &qword_1EB0CC3B0);
      if (v42)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_1A34CBB70();
      goto LABEL_10;
    }

    sub_1A3288FDC(v21, &qword_1EB0CC3B0);
    sub_1A3288FDC(v24, &qword_1EB0CC3B0);
    (*(v11 + 8))(v97, v10);
LABEL_6:
    sub_1A3288FDC(v16, &qword_1EB0CC3F0);
    goto LABEL_7;
  }

  sub_1A3288FDC(v21, &qword_1EB0CC3B0);
  sub_1A3288FDC(v24, &qword_1EB0CC3B0);
  if (v39(&v16[v38], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3288FDC(v16, &qword_1EB0CC3B0);
LABEL_9:
  sub_1A34CBB60();
LABEL_10:
  v44 = sub_1A34CBBC0();

  KeyPath = swift_getKeyPath();
  v46 = v101;
  sub_1A329D98C(v100, v101, &qword_1EB0CC3F8);
  v47 = (v46 + *(v98 + 36));
  *v47 = KeyPath;
  v47[1] = v44;
  LOBYTE(v44) = sub_1A34CBA80();
  sub_1A34CA460();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v103;
  sub_1A329D98C(v46, v103, &qword_1EB0CC400);
  v57 = v56 + *(v99 + 36);
  *v57 = v44;
  *(v57 + 8) = v49;
  *(v57 + 16) = v51;
  *(v57 + 24) = v53;
  *(v57 + 32) = v55;
  *(v57 + 40) = 0;
  sub_1A34CCC80();
  sub_1A34CA760();
  v58 = v104;
  sub_1A329D98C(v56, v104, &qword_1EB0CC408);
  v59 = (v58 + *(v102 + 36));
  v60 = v141;
  *v59 = v140;
  v59[1] = v60;
  v59[2] = v142;
  sub_1A34CCC80();
  sub_1A34CADA0();
  v61 = v105;
  sub_1A329D98C(v58, v105, &qword_1EB0CC410);
  v62 = (v61 + *(v134 + 36));
  v63 = v148;
  v62[4] = v147;
  v62[5] = v63;
  v62[6] = v149;
  v64 = v144;
  *v62 = v143;
  v62[1] = v64;
  v65 = v146;
  v62[2] = v145;
  v62[3] = v65;
  v136 = 0x6853726F74696465;
  v137 = 0xEB00000000746565;
  sub_1A3485AF4();
  if (v66)
  {
    sub_1A34CCD60();
  }

  v67 = sub_1A3489870();
  v68 = MEMORY[0x1E69E6158];
  v69 = v134;
  sub_1A34CC210();
  sub_1A3288FDC(v61, &qword_1EB0CC418);
  v70 = v115;
  sub_1A34CCB10();
  v71 = v123;
  v72 = v119;
  v73 = v124;
  (*(v123 + 104))(v119, *MEMORY[0x1E697DBA8], v124);
  v74 = v116;
  sub_1A34CCB20();
  (*(v71 + 8))(v72, v73);
  v75 = *(v121 + 8);
  v76 = v70;
  v77 = v122;
  v75(v76, v122);
  v78 = v114;
  sub_1A34CCB70();
  v75(v74, v77);
  v79 = v125;
  sub_1A34CC8D0();
  (*(v117 + 8))(v78, v118);
  LODWORD(v124) = *MEMORY[0x1E697F468];
  v80 = v124;
  v81 = sub_1A34CB200();
  v123 = *(*(v81 - 8) + 104);
  v82 = v128;
  (v123)(v128, v80, v81);
  v136 = v69;
  v137 = v68;
  v138 = v67;
  v139 = MEMORY[0x1E69E6168];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = sub_1A3489C14(&qword_1EB0C6F78, MEMORY[0x1E6981998]);
  v85 = v107;
  v86 = v108;
  v87 = v129;
  v88 = v135;
  sub_1A34CBF20();
  sub_1A3489BB4(v82, MEMORY[0x1E6981998]);
  (*(v126 + 8))(v79, v127);
  (*(v106 + 8))(v88, v86);
  v89 = v130;
  sub_1A34CB600();
  v136 = v86;
  v137 = v87;
  v138 = OpaqueTypeConformance2;
  v139 = v84;
  swift_getOpaqueTypeConformance2();
  v90 = v109;
  v91 = v111;
  sub_1A34CC1A0();
  (*(v131 + 8))(v89, v132);
  (*(v110 + 8))(v85, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC460);
  v93 = v133;
  v94 = v133 + *(v92 + 36);
  (v123)(v94, v124, v81);
  *(v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6308) + 36)) = 0;
  return (*(v112 + 32))(v93, v90, v113);
}

uint64_t sub_1A3486FF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC2F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC2E8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  *v8 = sub_1A34CCC80();
  v8[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC300);
  sub_1A34871BC(a1, a2 & 1, v8 + *(v14 + 44));
  sub_1A34CCC80();
  sub_1A34CADA0();
  sub_1A329D98C(v8, v12, &qword_1EB0CC2F8);
  v15 = &v12[*(v10 + 44)];
  v16 = v20[5];
  *(v15 + 4) = v20[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v20[6];
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 1) = v17;
  v18 = v20[3];
  *(v15 + 2) = v20[2];
  *(v15 + 3) = v18;
  return sub_1A329D98C(v12, a3, &qword_1EB0CC2E8);
}

uint64_t sub_1A34871BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v46 = sub_1A34CB410();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34CB0B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC308);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - v11);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC310);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v34 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC318);
  MEMORY[0x1EEE9AC00](v39);
  v16 = &v34 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC320);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v34 - v17;
  *v12 = 0x4014000000000000;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC328);
  sub_1A3487850(a1, a2 & 1, v12 + *(v19 + 44));
  *(v12 + *(v10 + 44)) = 1;
  v37 = sub_1A34CCCB0();
  sub_1A34C9010();
  v20 = a1;
  v42 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v21 = sub_1A34CBA30();
    sub_1A34CA210();

    v22 = v41;
    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v22, v6);
    v20 = v49;
  }

  v35 = v7;
  v36 = v6;
  swift_getKeyPath();
  *&v49 = v20;
  sub_1A3489C14(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v20 + 40))
  {

    v23 = 0;
  }

  else
  {
    swift_getKeyPath();
    *&v49 = v20;
    sub_1A34C99A0();

    v24 = *(v20 + 42);

    v23 = v24 == 2;
  }

  sub_1A329D98C(v12, v14, &qword_1EB0CC308);
  v25 = &v14[*(v38 + 36)];
  *v25 = v37;
  v25[8] = v23;
  sub_1A34CCC80();
  sub_1A34CA760();
  sub_1A329D98C(v14, v16, &qword_1EB0CC310);
  v26 = &v16[*(v39 + 36)];
  v27 = v50;
  *v26 = v49;
  *(v26 + 1) = v27;
  *(v26 + 2) = v51;
  sub_1A34C9010();
  if ((v42 & 1) == 0)
  {
    sub_1A34CD650();
    v28 = sub_1A34CBA30();
    sub_1A34CA210();

    v29 = v41;
    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v35 + 8))(v29, v36);
    a1 = v47;
  }

  swift_getKeyPath();
  v47 = a1;
  sub_1A34C99A0();

  v30 = *(a1 + 43);

  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  sub_1A329D98C(v16, v18, &qword_1EB0CC318);
  *&v18[*(v40 + 36)] = v31;
  v47 = 0x736E6F74747562;
  v48 = 0xE700000000000000;
  v32 = v43;
  sub_1A34CB660();
  sub_1A3488F70();
  sub_1A34CC000();
  (*(v44 + 8))(v32, v46);
  return sub_1A3288FDC(v18, &qword_1EB0CC320);
}

uint64_t sub_1A3487850@<X0>(ValueMetadata *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v81 = sub_1A34CB160();
  v72 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1E0);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v68 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC390);
  v76 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v68 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EA8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v68 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC398);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v68 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3A0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v68 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC380);
  MEMORY[0x1EEE9AC00](v91);
  v80 = &v68 - v13;
  v88 = type metadata accessor for PaletteButtonStyle();
  MEMORY[0x1EEE9AC00](v88);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v68 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3A8);
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v68 - v17;
  v18 = sub_1A34CB0B0();
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  v21 = a1;
  v22 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v23 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v94 + 8))(v20, v95);
    v21 = v96;
  }

  swift_getKeyPath();
  v96 = v21;
  sub_1A3489C14(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v24 = BYTE2(v21[2].Description);

  sub_1A34C9010();
  v25 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v26 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v94 + 8))(v20, v95);
    v25 = v96;
  }

  swift_getKeyPath();
  v96 = v25;
  sub_1A34C99A0();

  Description = v25[2].Description;

  if (v24)
  {
    if (v24 == 1 || (Description & 1) != 0)
    {
      v96 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001CLL, 0x80000001A35133E0);
      v97 = v28;
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      *(v29 + 24) = v22 & 1;
      sub_1A328A95C();
      sub_1A34C9010();
      v30 = v83;
      sub_1A34CC7C0();
      *v15 = 0;
      *(v15 + 1) = swift_getKeyPath();
      *(v15 + 8) = 0;
      v31 = v88;
      v32 = *(v88 + 24);
      *&v15[v32] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC0);
      swift_storeEnumTagMultiPayload();
      v33 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
      v34 = sub_1A3489C14(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
      v35 = v85;
      v36 = v87;
      sub_1A34CBEB0();
      sub_1A3489BB4(v15, type metadata accessor for PaletteButtonStyle);
      (*(v84 + 8))(v30, v36);
      v37 = v86;
      v38 = v89;
      (*(v86 + 16))(v92, v35, v89);
      swift_storeEnumTagMultiPayload();
      sub_1A34893D0();
      v96 = v36;
      v97 = v31;
      v98 = v33;
      v99 = v34;
      swift_getOpaqueTypeConformance2();
      sub_1A34CB3E0();
      return (*(v37 + 8))(v35, v38);
    }

    else
    {
      sub_1A34C9010();
      if ((v22 & 1) == 0)
      {
        sub_1A34CD650();
        v54 = sub_1A34CBA30();
        sub_1A34CA210();

        sub_1A34CB0A0();
        swift_getAtKeyPath();

        (*(v94 + 8))(v20, v95);
      }

      type metadata accessor for VisualIdentityEditorViewModel();
      sub_1A34CCA40();
      v55 = v68;
      v56 = v74;
      sub_1A34CCA30();
      swift_getKeyPath();
      v57 = v69;
      sub_1A34CCA50();

      v95 = *(v73 + 8);
      v95(v55, v56);
      swift_getKeyPath();
      sub_1A34CC920();

      sub_1A3288FDC(v57, &qword_1EB0CB1E0);
      v58 = v71;
      sub_1A34CB150();
      v59 = sub_1A34895DC();
      v60 = sub_1A3489C14(&qword_1EB0C0938, MEMORY[0x1E697C4E8]);
      v61 = v75;
      v62 = v81;
      sub_1A34CBE70();
      (*(v72 + 8))(v58, v62);
      sub_1A3489708(&v96);
      v63 = v76;
      v64 = v82;
      (*(v76 + 16))(v79, v61, v82);
      swift_storeEnumTagMultiPayload();
      v65 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
      v66 = sub_1A3489C14(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
      v96 = v87;
      v97 = v88;
      v98 = v65;
      v99 = v66;
      swift_getOpaqueTypeConformance2();
      v96 = &type metadata for AvatarEditorPalette;
      v97 = v62;
      v98 = v59;
      v99 = v60;
      swift_getOpaqueTypeConformance2();
      v67 = v80;
      sub_1A34CB3E0();
      sub_1A3211560(v67, v92);
      swift_storeEnumTagMultiPayload();
      sub_1A34893D0();
      sub_1A34CB3E0();
      sub_1A3288FDC(v67, &qword_1EB0CC380);
      (*(v63 + 8))(v61, v64);
      return (v95)(v77, v56);
    }
  }

  else
  {
    v96 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000018, 0x80000001A3513400);
    v97 = v40;
    v41 = swift_allocObject();
    *(v41 + 16) = a1;
    *(v41 + 24) = v22 & 1;
    sub_1A328A95C();
    sub_1A34C9010();
    v42 = v83;
    sub_1A34CC7C0();
    *v15 = 0;
    *(v15 + 1) = swift_getKeyPath();
    *(v15 + 8) = 0;
    v43 = v88;
    v44 = *(v88 + 24);
    *&v15[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7EC0);
    swift_storeEnumTagMultiPayload();
    v45 = sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    v46 = sub_1A3489C14(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
    v47 = v85;
    v48 = v87;
    sub_1A34CBEB0();
    sub_1A3489BB4(v15, type metadata accessor for PaletteButtonStyle);
    (*(v84 + 8))(v42, v48);
    v49 = v86;
    v50 = v89;
    (*(v86 + 16))(v79, v47, v89);
    swift_storeEnumTagMultiPayload();
    v96 = v48;
    v97 = v43;
    v98 = v45;
    v99 = v46;
    swift_getOpaqueTypeConformance2();
    v51 = sub_1A34895DC();
    v52 = sub_1A3489C14(&qword_1EB0C0938, MEMORY[0x1E697C4E8]);
    v96 = &type metadata for AvatarEditorPalette;
    v97 = v81;
    v98 = v51;
    v99 = v52;
    swift_getOpaqueTypeConformance2();
    v53 = v80;
    sub_1A34CB3E0();
    sub_1A3211560(v53, v92);
    swift_storeEnumTagMultiPayload();
    sub_1A34893D0();
    sub_1A34CB3E0();
    sub_1A3288FDC(v53, &qword_1EB0CC380);
    return (*(v49 + 8))(v47, v50);
  }
}

uint64_t sub_1A34888EC(uint64_t a1, char a2)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  if (*(a1 + 42) == 1)
  {
    sub_1A3354F0C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = a1;
    *(&v11 - 8) = 1;
    v12 = a1;
    sub_1A3489C14(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3488B18(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3300BB8(a1, v4);
  return sub_1A3356DBC(v4);
}

uint64_t sub_1A3488BA4(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1A34CB0B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v10 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v11 = type metadata accessor for VisualIdentity(0);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1A335ADC8(v5);

  return sub_1A3288FDC(v5, &qword_1EB0C5D28);
}

uint64_t sub_1A3488D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC2D0);
  sub_1A3488E2C();
  return sub_1A34CB4D0();
}

unint64_t sub_1A3488E2C()
{
  result = qword_1EB0CC2D8;
  if (!qword_1EB0CC2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC2D0);
    sub_1A3488EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC2D8);
  }

  return result;
}

unint64_t sub_1A3488EB8()
{
  result = qword_1EB0CC2E0;
  if (!qword_1EB0CC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC2E8);
    sub_1A3284D0C(&qword_1EB0CC2F0, &qword_1EB0CC2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC2E0);
  }

  return result;
}

unint64_t sub_1A3488F70()
{
  result = qword_1EB0CC330;
  if (!qword_1EB0CC330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC320);
    sub_1A3488FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC330);
  }

  return result;
}

unint64_t sub_1A3488FFC()
{
  result = qword_1EB0CC338;
  if (!qword_1EB0CC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC318);
    sub_1A3489088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC338);
  }

  return result;
}

unint64_t sub_1A3489088()
{
  result = qword_1EB0CC340;
  if (!qword_1EB0CC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC310);
    sub_1A3489140();
    sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC340);
  }

  return result;
}

unint64_t sub_1A3489140()
{
  result = qword_1EB0CC348;
  if (!qword_1EB0CC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC308);
    sub_1A34891CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC348);
  }

  return result;
}

unint64_t sub_1A34891CC()
{
  result = qword_1EB0CC350;
  if (!qword_1EB0CC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC328);
    sub_1A3284D0C(&qword_1EB0CC358, &qword_1EB0CC360);
    sub_1A3489284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC350);
  }

  return result;
}

unint64_t sub_1A3489284()
{
  result = qword_1EB0CC368;
  if (!qword_1EB0CC368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC370);
    sub_1A34893D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    type metadata accessor for PaletteButtonStyle();
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    sub_1A3489C14(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC368);
  }

  return result;
}

unint64_t sub_1A34893D0()
{
  result = qword_1EB0CC378;
  if (!qword_1EB0CC378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    type metadata accessor for PaletteButtonStyle();
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    sub_1A3489C14(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1A34CB160();
    sub_1A34895DC();
    sub_1A3489C14(&qword_1EB0C0938, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC378);
  }

  return result;
}

uint64_t type metadata accessor for PaletteButtonStyle()
{
  result = qword_1EB0CC3C0;
  if (!qword_1EB0CC3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A34895DC()
{
  result = qword_1EB0CC388;
  if (!qword_1EB0CC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC388);
  }

  return result;
}

uint64_t sub_1A3489660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A328D790(a1, &v5 - v3, &qword_1EB0CC3B0);
  return sub_1A34CAF70();
}

void sub_1A3489790()
{
  sub_1A33E0504(319, &qword_1EB0CC3D0, &qword_1EB0C7D60);
  if (v0 <= 0x3F)
  {
    sub_1A33E0504(319, &qword_1EB0CC3D8, &qword_1EB0CC3B0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A3489870()
{
  result = qword_1EB0CC438;
  if (!qword_1EB0CC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC418);
    sub_1A34898FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC438);
  }

  return result;
}

unint64_t sub_1A34898FC()
{
  result = qword_1EB0CC440;
  if (!qword_1EB0CC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC410);
    sub_1A3489988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC440);
  }

  return result;
}

unint64_t sub_1A3489988()
{
  result = qword_1EB0CC448;
  if (!qword_1EB0CC448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC408);
    sub_1A3489A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC448);
  }

  return result;
}

unint64_t sub_1A3489A14()
{
  result = qword_1EB0CC450;
  if (!qword_1EB0CC450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC400);
    sub_1A3489ACC();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC450);
  }

  return result;
}

unint64_t sub_1A3489ACC()
{
  result = qword_1EB0CC458;
  if (!qword_1EB0CC458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC3F8);
    sub_1A3489C14(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC458);
  }

  return result;
}

uint64_t sub_1A3489BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3489C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3489C5C()
{
  result = qword_1EB0CC470;
  if (!qword_1EB0CC470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC420);
    sub_1A34CC990();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC418);
    sub_1A3489870();
    swift_getOpaqueTypeConformance2();
    sub_1A3489C14(&qword_1EB0C6F78, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C2ED0, &qword_1EB0C6308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC470);
  }

  return result;
}

uint64_t sub_1A3489E34()
{
  sub_1A34CDAD0();

  strcpy(v8, "identifiers: ");
  sub_1A34C9DE0();
  v0 = MEMORY[0x1A58EEBA0](v7, MEMORY[0x1E69E6158]);
  v2 = v1;

  MEMORY[0x1A58EEA30](v0, v2);

  MEMORY[0x1A58EEA30](0x3A73646E696B202CLL, 0xE900000000000020);
  sub_1A34C9DE0();
  v3 = MEMORY[0x1A58EEBA0](v7, &type metadata for ContactLikenessKindAppEnumRepresentation);
  v5 = v4;

  MEMORY[0x1A58EEA30](v3, v5);

  return v8[0];
}

uint64_t sub_1A3489F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactLikeness(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_1A34C9E40();
  v9 = *(v8 - 8);
  (*(v9 + 56))(&v5[v7], 1, 1, v8);
  *&v5[v2[9]] = 0;
  *&v5[v2[10]] = 0;
  *&v5[v2[11]] = 0;
  *&v5[v2[12]] = 0;
  sub_1A34C9010();
  sub_1A34C9D90();

  v11 = v46;
  if (v46)
  {
    v42 = v7;
    v43 = v3;
    v44 = a1;
    v41 = &v39;
    v39 = v45;
    MEMORY[0x1EEE9AC00](v10);
    v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
    v14 = *(*(v13 - 8) + 64);
    MEMORY[0x1EEE9AC00](v13 - 8);
    v16 = &v39 - v15;
    sub_1A34C9010();
    sub_1A34C9D90();

    if ((*(v9 + 48))(v16, 1, v8) == 1)
    {

      sub_1A3288FDC(v16, &qword_1EB0CC4C8);
      if (qword_1EB0C4B68 != -1)
      {
        swift_once();
      }

      v17 = sub_1A34CA250();
      __swift_project_value_buffer(v17, qword_1EB0EE050);
      v18 = sub_1A34CD640();
      v19 = sub_1A34CA230();
      v20 = os_log_type_enabled(v19, v18);
      v3 = v43;
      a1 = v44;
      if (v20)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1A31E6000, v19, v18, "Data intent file was unexpectedly nil", v21, 2u);
        MEMORY[0x1A58F1010](v21, -1, -1);
      }

      v7 = v42;
    }

    else
    {
      (*(v9 + 32))(v40, v16, v8);
      sub_1A34C9010();
      sub_1A34C9D90();

      v28 = v45;
      if (v45 != 5)
      {
        v34 = v40;
        *v5 = v39;
        *(v5 + 1) = v11;
        (*(v9 + 16))(&v5[v2[5]], v34, v8);
        v35 = v2[8];
        v5[v2[7]] = v28;
        sub_1A34C9010();
        sub_1A34C9D90();

        v39 = &v39;
        v5[v35] = v45;
        MEMORY[0x1EEE9AC00](v36);
        sub_1A34C9010();
        sub_1A34C9D90();

        (*(v9 + 8))(v34, v8);
        sub_1A348AD94(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &v5[v42]);
        v37 = v44;
        sub_1A33A067C(v5, v44);
        (*(v43 + 56))(v37, 0, 1, v2);
        return sub_1A33A06E0(v5);
      }

      if (qword_1EB0C4B68 != -1)
      {
        swift_once();
      }

      v29 = sub_1A34CA250();
      __swift_project_value_buffer(v29, qword_1EB0EE050);
      v30 = sub_1A34CD640();
      v31 = sub_1A34CA230();
      v32 = os_log_type_enabled(v31, v30);
      v7 = v42;
      v3 = v43;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1A31E6000, v31, v30, "Likeness kind was unexpectedly nil", v33, 2u);
        MEMORY[0x1A58F1010](v33, -1, -1);
      }

      else
      {
      }

      a1 = v44;
      (*(v9 + 8))(v40, v8);
    }
  }

  else
  {
    if (qword_1EB0C4B68 != -1)
    {
      swift_once();
    }

    v22 = sub_1A34CA250();
    __swift_project_value_buffer(v22, qword_1EB0EE050);
    v23 = sub_1A34CD640();
    v24 = sub_1A34CA230();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v7;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1A31E6000, v24, v23, "Contact identifier was unexpectedly nil", v26, 2u);
      v27 = v26;
      v7 = v25;
      MEMORY[0x1A58F1010](v27, -1, -1);
    }
  }

  sub_1A3288FDC(&v5[v7], &qword_1EB0CC4C8);
  return (*(v3 + 56))(a1, 1, 1, v2);
}

unint64_t sub_1A348A61C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_1A34CA200();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v27 - v10;
  sub_1A34C9010();
  sub_1A34C9D90();
  v12 = v6;
  v13 = v7;

  if ((*(v7 + 48))(v11, 1, v12) == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0CC4C8);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1A34CDAD0();

    v33 = 0xD000000000000013;
    v34 = 0x80000001A3513570;
    sub_1A34C9010();
    sub_1A34C9D90();

    if (v32)
    {
      v14 = v31;
    }

    else
    {
      v14 = 10023;
    }

    if (v32)
    {
      v15 = v32;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    MEMORY[0x1A58EEA30](v14, v15);

    MEMORY[0x1A58EEA30](0x746164206F6E202CLL, 0xE900000000000061);
    return v33;
  }

  else
  {
    v17 = *(v7 + 32);
    v27 = v12;
    v17(v9, v11, v12);
    v28 = v9;
    sub_1A34C9E30();
    v18 = v29;
    if ((*(v29 + 48))(v2, 1, v3) == 1)
    {
      sub_1A3288FDC(v2, &qword_1EB0C75C0);
      v19 = 0xE700000000000000;
      v20 = 0x65707974206F6ELL;
    }

    else
    {
      (*(v18 + 32))(v5, v2, v3);
      sub_1A32CD4CC(&qword_1EB0C77B8, MEMORY[0x1E69E8450]);
      v20 = sub_1A34CDDF0();
      v19 = v21;
      (*(v18 + 8))(v5, v3);
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1A34CDAD0();

    v33 = 0xD000000000000013;
    v34 = 0x80000001A3513570;
    sub_1A34C9010();
    sub_1A34C9D90();

    if (v32)
    {
      v22 = v31;
    }

    else
    {
      v22 = 10023;
    }

    if (v32)
    {
      v23 = v32;
    }

    else
    {
      v23 = 0xE200000000000000;
    }

    MEMORY[0x1A58EEA30](v22, v23);

    MEMORY[0x1A58EEA30](0x203A61746164202CLL, 0xE800000000000000);
    MEMORY[0x1A58EEA30](v20, v19);

    v24 = MEMORY[0x1A58EEA30](0x61646174656D202CLL, 0xEC000000203A6174);
    MEMORY[0x1EEE9AC00](v24);
    sub_1A34C9010();
    sub_1A34C9D90();

    v25 = sub_1A34CD160();
    MEMORY[0x1A58EEA30](v25);

    v16 = v33;
    (*(v13 + 8))(v28, v27);
  }

  return v16;
}

uint64_t sub_1A348ABCC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A34CA250();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A34CA240();
}

uint64_t ContactLikeness.contactIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactLikeness.metadataFileRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactLikeness(0) + 24);

  return sub_1A348ACE0(v3, a1);
}

uint64_t sub_1A348ACE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactLikeness.metadataFileRepresentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ContactLikeness(0) + 24);

  return sub_1A348AD94(a1, v3);
}

uint64_t sub_1A348AD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ContactLikeness.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactLikeness(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ContactLikeness.contentIsSensitive.setter(char a1)
{
  result = type metadata accessor for ContactLikeness(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ContactLikeness.data.getter()
{
  v1 = type metadata accessor for ContactLikeness(0);
  v2 = *(v1 + 36);
  if (*&v0[v2])
  {
    v3 = *&v0[v2];
  }

  else
  {
    v4 = sub_1A34C9E40();
    v22 = &v19;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *(v5 + 16);
    v10 = v9(v8, &v0[*(v1 + 20)], v4, v7);
    v21 = &v19;
    v11 = *(v0 + 1);
    v20 = *v0;
    v12 = MEMORY[0x1EEE9AC00](v10);
    v9(v8, v8, v4, v12);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v13, v8, v4);
    v16 = (v15 + v14);
    *v16 = v20;
    v16[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4D0);
    swift_allocObject();

    v17 = v0;
    v3 = sub_1A34CA320();
    (*(v5 + 8))(v8, v4);
    *(v17 + v2) = v3;
    sub_1A34C9010();
  }

  sub_1A34C9010();
  return v3;
}

uint64_t sub_1A348B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_1A34CD4A0();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = sub_1A34C9E40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a3, v13, v16);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v14 + 32))(v20 + v18, v17, v13);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1A34900E8;
  v23[1] = v11;
  sub_1A34C9010();

  sub_1A32C0B38(0, 0, v10, &unk_1A34FC580, v20);
}

uint64_t sub_1A348B3B0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1A34C9E40() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A348B164(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1A348B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_1A348B4FC;

  return MEMORY[0x1EEDEC0B8]();
}

uint64_t sub_1A348B4FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_1A348B864;
  }

  else
  {
    v5 = sub_1A348B614;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1A348B614()
{
  v27 = v0;
  if (qword_1EB0C4B60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0EE038);
  sub_1A31EC1E0(v1, v2);

  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    result = sub_1A31EE23C(v9, v8, &v26);
    *(v10 + 4) = result;
    *(v10 + 12) = 2048;
    v13 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v14 = 0;
        goto LABEL_15;
      }

      v15 = *(*(v0 + 56) + 16);
      v16 = *(*(v0 + 56) + 24);
      v17 = __OFSUB__(v16, v15);
      v14 = v16 - v15;
      if (!v17)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v14 = *(v0 + 70);
LABEL_15:
      v20 = *(v0 + 56);
      v21 = *(v0 + 64);
      *(v10 + 14) = v14;
      sub_1A31EC234(v20, v21);
      _os_log_impl(&dword_1A31E6000, v4, v5, "Unwrapping likeness data (%s): %ld bytes", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1A58F1010](v11, -1, -1);
      MEMORY[0x1A58F1010](v10, -1, -1);
      goto LABEL_16;
    }

    v18 = *(v0 + 56);
    v19 = *(v0 + 60);
    v17 = __OFSUB__(v19, v18);
    LODWORD(v14) = v19 - v18;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v14 = v14;
    goto LABEL_15;
  }

  sub_1A31EC234(*(v0 + 56), *(v0 + 64));
LABEL_16:

  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  v24 = *(v0 + 32);
  sub_1A31EC1E0(v23, v22);
  v24(v23, v22, 0);
  sub_1A31EC234(v23, v22);
  sub_1A31EC234(v23, v22);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1A348B864()
{
  v20 = v0;
  if (qword_1EB0C4B60 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0EE038);

  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1A31EE23C(v8, v7, &v19);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error unwrapping likeness data (%s): %@", v9, 0x16u);
    sub_1A3288FDC(v10, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1A58F1010](v11, -1, -1);
    MEMORY[0x1A58F1010](v9, -1, -1);
  }

  v14 = v0[9];
  v15 = v0[4];
  v16 = v14;
  v15(v14, 0, 1);

  v17 = v0[1];

  return v17();
}

uint64_t ContactLikeness.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactLikeness(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*ContactLikeness.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ContactLikeness.data.getter();
  return sub_1A348BB1C;
}

uint64_t sub_1A348BB1C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for ContactLikeness(0) + 36);
  if (a2)
  {
    sub_1A34C9010();

    *(v4 + v5) = v3;
  }

  else
  {

    *(v4 + v5) = v3;
  }

  return result;
}

uint64_t ContactLikeness.metadata.getter()
{
  v1 = type metadata accessor for ContactLikeness(0);
  v2 = *(v1 + 40);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
    v16[1] = v16;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4 - 8);
    v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = sub_1A348ACE0(v0 + *(v1 + 24), v7);
    v9 = *v0;
    v10 = v0[1];
    MEMORY[0x1EEE9AC00](v8);
    sub_1A348ACE0(v7, v7);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_1A348BFA8(v7, v12 + v11);
    v13 = (v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v13 = v9;
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4D8);
    swift_allocObject();

    v14 = v0;
    v3 = sub_1A34CA320();
    sub_1A3288FDC(v7, &qword_1EB0CC4C8);
    *(v14 + v2) = v3;
    sub_1A34C9010();
  }

  sub_1A34C9010();
  return v3;
}

uint64_t sub_1A348BDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_1A34CD4A0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v25 - v17;
  sub_1A348ACE0(a3, &v25 - v17);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A348BFA8(v18, v21 + v19);
  v22 = (v21 + v20);
  *v22 = a4;
  v22[1] = a5;
  v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a1;
  v23[1] = a2;

  sub_1A34C9010();
  sub_1A32C0B38(0, 0, v12, &unk_1A34FC570, v21);
}

uint64_t sub_1A348BFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A348C018(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A348BDAC(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1A348C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A348C0FC, 0, 0);
}

uint64_t sub_1A348C0FC()
{
  v22 = v0;
  v1 = v0[4];
  v2 = sub_1A34C9E40();
  v0[9] = v2;
  v3 = *(v2 - 8);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  v5 = swift_task_alloc();
  sub_1A348ACE0(v1, v5);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0CC4C8);

    if (qword_1EB0C4B60 != -1)
    {
      swift_once();
    }

    v6 = sub_1A34CA250();
    __swift_project_value_buffer(v6, qword_1EB0EE038);

    v7 = sub_1A34CA230();
    v8 = sub_1A34CD640();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[5];
      v9 = v0[6];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1A31EE23C(v10, v9, &v19);
      _os_log_impl(&dword_1A31E6000, v7, v8, "Error unwrapping likeness metadata (%s): unexpectedly nil", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1A58F1010](v12, -1, -1);
      MEMORY[0x1A58F1010](v11, -1, -1);
    }

    v13 = v0[7];
    sub_1A3490030();
    v14 = swift_allocError();
    *v15 = 1;
    v19 = v14;
    v20 = 0;
    v21 = 1;
    v13(&v19);
    sub_1A3490084(v19, v20, v21, sub_1A348CEB8);
    v16 = v0[1];

    return v16();
  }

  else
  {
    (*(v3 + 32))(v4, v5, v2);

    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1A348C478;

    return MEMORY[0x1EEDEC0B8]();
  }
}

uint64_t sub_1A348C478(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v5 = sub_1A348C778;
  }

  else
  {
    v5 = sub_1A348C590;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A348C590()
{
  v18 = v0;
  v1 = v0[15];
  sub_1A34C90B0();
  swift_allocObject();
  sub_1A34C90A0();
  sub_1A3490094();
  sub_1A34C9090();
  v2 = v1;
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  if (v2)
  {
    (*(v6 + 8))(v0[11], v0[9]);

    sub_1A31EC234(v4, v3);
    v8 = v0[7];

    v15 = v2;
    v16 = 0;
    v17 = 1;
    v9 = v2;
    v8(&v15);

    sub_1A3490084(v15, v16, v17, sub_1A348CEB8);
  }

  else
  {
    v10 = v0[7];

    v11 = v0[2];
    v12 = v0[3];
    v15 = v11;
    v16 = v12;
    v17 = 0;
    sub_1A32F74C0(v11, v12);
    v10(&v15);
    sub_1A31EC234(v4, v3);
    sub_1A31EEE60(v11, v12);
    sub_1A3490084(v15, v16, v17, sub_1A348CEB8);
    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A348C778()
{
  v9 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[15];
  v2 = v0[7];

  v6 = v1;
  v7 = 0;
  v8 = 1;
  v3 = v1;
  v2(&v6);

  sub_1A3490084(v6, v7, v8, sub_1A348CEB8);
  v4 = v0[1];

  return v4();
}

uint64_t ContactLikeness.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactLikeness(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*ContactLikeness.metadata.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ContactLikeness.metadata.getter();
  return sub_1A348C8D0;
}

uint64_t sub_1A348C8D0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for ContactLikeness(0) + 40);
  if (a2)
  {
    sub_1A34C9010();

    *(v4 + v5) = v3;
  }

  else
  {

    *(v4 + v5) = v3;
  }

  return result;
}

uint64_t sub_1A348C980()
{
  *(v0 + 40) = ContactLikeness.metadata.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1A348CA28;

  return MEMORY[0x1EEDB5DD8](v0 + 16);
}

uint64_t sub_1A348CA28()
{

  if (v0)
  {

    v1 = sub_1A348CBA0;
  }

  else
  {

    v1 = sub_1A348CB70;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A348CB70()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xF000000000000000) == 0xB000000000000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  if ((v1 & 0xF000000000000000) == 0xB000000000000000)
  {
    v3 = 0xF000000000000000;
  }

  else
  {
    v3 = *(v0 + 24);
  }

  return (*(v0 + 8))(v2, v3);
}

uint64_t sub_1A348CBDC()
{
  *(v0 + 40) = ContactLikeness.metadata.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1A348CC84;

  return MEMORY[0x1EEDB5DD8](v0 + 16);
}

uint64_t sub_1A348CC84()
{

  if (v0)
  {

    v1 = sub_1A348CEA0;
  }

  else
  {

    v1 = sub_1A348CDCC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A348CDCC()
{
  v1 = v0[3];
  if (v1 >> 60 == 15 || (v1 & 0xF000000000000000) == 0xB000000000000000)
  {
    v7 = 0;
  }

  else
  {
    v3 = v0[2];
    v4 = objc_allocWithZone(CNUIBackgroundColors);
    v5 = sub_1A34C9680();
    v6 = [v4 initWithData_];

    sub_1A348CEB8(v3, v1);
    v7 = v6;
  }

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1A348CEB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1A31EEE60(a1, a2);
  }

  return a1;
}

uint64_t ContactLikeness.monogram.getter()
{
  v1 = type metadata accessor for ContactLikeness(0);
  v2 = *(v1 + 44);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = sub_1A34C9E40();
    v16[1] = v16;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x1EEE9AC00](v4);
    v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = *(v5 + 16);
    v10 = v9(v16 - v8, v0 + *(v1 + 20), v4, v7);
    v16[0] = v16;
    v11 = MEMORY[0x1EEE9AC00](v10);
    v9(v16 - v8, v16 - v8, v4, v11);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v16 - v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4E0);
    swift_allocObject();
    v14 = v0;
    v3 = sub_1A34CA320();
    (*(v5 + 8))(v16 - v8, v4);
    *(v14 + v2) = v3;
    sub_1A34C9010();
  }

  sub_1A34C9010();
  return v3;
}

uint64_t sub_1A348D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_1A348D198;

  return MEMORY[0x1EEDEC0B8]();
}

uint64_t sub_1A348D198(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_1A348D404;
  }

  else
  {
    v5 = sub_1A348D2B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A348D2B0()
{
  v11 = v0;
  v1 = *(v0 + 72);
  sub_1A34C90B0();
  swift_allocObject();
  sub_1A34C90A0();
  sub_1A348FE7C();
  sub_1A34C9090();
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (v1)
  {
    sub_1A31EC234(*(v0 + 56), *(v0 + 64));

    v4 = *(v0 + 32);
    v9 = v1;
    v10 = 1;
    v5 = v1;
    v4(&v9);
  }

  else
  {
    v6 = *(v0 + 32);

    v9 = *(v0 + 16);
    v10 = 0;
    v6(&v9);
    sub_1A31EC234(v3, v2);
  }

  sub_1A3490084(v9, *(&v9 + 1), v10, sub_1A348FE68);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A348D404()
{
  v9 = v0;
  v1 = v0[9];
  v2 = v0[4];
  v6 = v1;
  v7 = 0;
  v8 = 1;
  v3 = v1;
  v2(&v6);

  sub_1A3490084(v6, v7, v8, sub_1A348FE68);
  v4 = v0[1];

  return v4();
}

uint64_t ContactLikeness.monogram.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactLikeness(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*ContactLikeness.monogram.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ContactLikeness.monogram.getter();
  return sub_1A348D53C;
}

uint64_t sub_1A348D53C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for ContactLikeness(0) + 44);
  if (a2)
  {
    sub_1A34C9010();

    *(v4 + v5) = v3;
  }

  else
  {

    *(v4 + v5) = v3;
  }

  return result;
}

uint64_t ContactLikeness.silhouette.getter()
{
  v1 = type metadata accessor for ContactLikeness(0);
  v2 = *(v1 + 48);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = sub_1A34C9E40();
    v16[1] = v16;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x1EEE9AC00](v4);
    v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = *(v5 + 16);
    v10 = v9(v16 - v8, v0 + *(v1 + 20), v4, v7);
    v16[0] = v16;
    v11 = MEMORY[0x1EEE9AC00](v10);
    v9(v16 - v8, v16 - v8, v4, v11);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v16 - v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4E8);
    swift_allocObject();
    v14 = v0;
    v3 = sub_1A34CA320();
    (*(v5 + 8))(v16 - v8, v4);
    *(v14 + v2) = v3;
    sub_1A34C9010();
  }

  sub_1A34C9010();
  return v3;
}

uint64_t sub_1A348D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_1A34CD4A0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_1A34C9E40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13, v16);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v14 + 32))(v18 + v17, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v19 = (v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a1;
  v19[1] = a2;
  sub_1A34C9010();
  sub_1A32C0B38(0, 0, v11, a5, v18);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = sub_1A34C9E40();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A348DB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1A348DB9C;

  return MEMORY[0x1EEDEC0B8]();
}

uint64_t sub_1A348DB9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v5 = sub_1A348DDF8;
  }

  else
  {
    v5 = sub_1A348DCB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A348DCB4()
{
  v11 = v0;
  v1 = v0[8];
  sub_1A34C90B0();
  swift_allocObject();
  sub_1A34C90A0();
  sub_1A348FC08();
  sub_1A34C9090();
  v3 = v0[6];
  v2 = v0[7];
  if (v1)
  {
    sub_1A31EC234(v0[6], v0[7]);

    v4 = v0[3];
    v9 = v1;
    v10 = 256;
    v5 = v1;
    v4(&v9);

    sub_1A348FBFC(v9, v10, SHIBYTE(v10));
  }

  else
  {
    v6 = v0[3];

    v9 = v0[2];
    v10 = 0;
    v6(&v9);
    sub_1A31EC234(v3, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A348DDF8()
{
  v8 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v6 = v1;
  v7 = 256;
  v3 = v1;
  v2(&v6);

  sub_1A348FBFC(v6, v7, SHIBYTE(v7));
  v4 = v0[1];

  return v4();
}

uint64_t ContactLikeness.silhouette.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactLikeness(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*ContactLikeness.silhouette.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ContactLikeness.silhouette.getter();
  return sub_1A348DF20;
}

uint64_t sub_1A348DF20(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for ContactLikeness(0) + 48);
  if (a2)
  {
    sub_1A34C9010();

    *(v4 + v5) = v3;
  }

  else
  {

    *(v4 + v5) = v3;
  }

  return result;
}

uint64_t static ContactLikeness.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ContactLikeness(0);
  if (*(a1 + *(v4 + 28)) != *(a2 + *(v4 + 28)))
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_1A34CDE30();
}

uint64_t sub_1A348E030(void *a1, void *a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 28)) != *(a2 + *(a3 + 28)))
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A34CDE30();
  }
}

uint64_t ContactLikeness.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t ContactLikeness.Kind.description.getter()
{
  v1 = *v0;
  v2 = 0x65756F686C69732ELL;
  v3 = 0x497261746176612ELL;
  v4 = 0x6570696365722ELL;
  if (v1 != 3)
  {
    v4 = 0x726574736F702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6172676F6E6F6D2ELL;
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

uint64_t sub_1A348E278(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_1EB0CC590;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC688);
  swift_allocObject();
  *(v2 + v3) = sub_1A34C9D70();
  v4 = sub_1A34C9BF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_1A34C9C50();
  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t sub_1A348E3D0()
{
  sub_1A34C9C40();

  return swift_deallocClassInstance();
}

uint64_t sub_1A348E420()
{
  v0 = qword_1EB0CC478;

  return v0;
}

uint64_t sub_1A348E458()
{
  v0 = qword_1EB0CC488;

  return v0;
}

uint64_t sub_1A348E588()
{
  sub_1A34C9010();
  sub_1A34C9D90();

  if (v5)
  {
    v0 = type metadata accessor for ContactAvatarEntityRepresentation(0);
    v1 = MEMORY[0x1A58EEBA0](v5, v0);
    v3 = v2;

    MEMORY[0x1A58EEA30](v1, v3);
  }

  return 0x3A73726174617661;
}

uint64_t sub_1A348E6B0(uint64_t a1)
{
  v3 = qword_1EB0CC5A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC668);
  swift_allocObject();
  *(v1 + v3) = sub_1A34C9D70();
  v4 = qword_1EB0CC5B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC670);
  swift_allocObject();
  *(v1 + v4) = sub_1A34C9D70();
  v5 = qword_1EB0CC5B8;
  swift_allocObject();
  *(v1 + v5) = sub_1A34C9D70();
  v6 = qword_1EB0CC5C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC678);
  swift_allocObject();
  *(v1 + v6) = sub_1A34C9D70();
  v7 = qword_1EB0CC5C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC680);
  swift_allocObject();
  *(v1 + v7) = sub_1A34C9D70();
  v8 = sub_1A34C9BF0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v10);
  v12 = sub_1A34C9C50();
  (*(v9 + 8))(a1, v8);
  return v12;
}

uint64_t sub_1A348E8CC()
{
}

uint64_t sub_1A348E93C()
{
  sub_1A34C9C40();
  sub_1A34C9010();

  return swift_deallocClassInstance();
}

uint64_t sub_1A348E9E0()
{
  v0 = qword_1EB0CC498;

  return v0;
}

uint64_t sub_1A348EA18()
{
  v0 = qword_1EB0CC4A8;

  return v0;
}

ContactsUICore::ContactLikenessKindAppEnumRepresentation_optional __swiftcall ContactLikenessKindAppEnumRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactLikenessKindAppEnumRepresentation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7465756F686C6973;
  v3 = 0x6D49726174617661;
  v4 = 0x657069636572;
  if (v1 != 3)
  {
    v4 = 0x726574736F70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6172676F6E6F6DLL;
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

uint64_t static ContactLikenessKindAppEnumRepresentation.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EB0CC4B8;

  return v0;
}

uint64_t static ContactLikenessKindAppEnumRepresentation.enumIdentifier.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EB0CC4B8 = a1;
  off_1EB0CC4C0 = a2;
}

uint64_t sub_1A348ED88()
{
  swift_beginAccess();
  v0 = qword_1EB0CC4B8;

  return v0;
}

unint64_t sub_1A348EF2C()
{
  result = qword_1EB0CC4F0;
  if (!qword_1EB0CC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC4F0);
  }

  return result;
}

unint64_t sub_1A348EFB4()
{
  result = qword_1EB0CC508;
  if (!qword_1EB0CC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC508);
  }

  return result;
}

unint64_t sub_1A348F00C()
{
  result = qword_1EB0CC510;
  if (!qword_1EB0CC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC510);
  }

  return result;
}

unint64_t sub_1A348F064()
{
  result = qword_1EB0CC518;
  if (!qword_1EB0CC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC518);
  }

  return result;
}

unint64_t sub_1A348F0BC()
{
  result = qword_1EB0CC520;
  if (!qword_1EB0CC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC520);
  }

  return result;
}

unint64_t sub_1A348F114()
{
  result = qword_1EB0CC528;
  if (!qword_1EB0CC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC528);
  }

  return result;
}

unint64_t sub_1A348F198()
{
  result = qword_1EB0CC540;
  if (!qword_1EB0CC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC540);
  }

  return result;
}

unint64_t sub_1A348F1F0()
{
  result = qword_1EB0CC548;
  if (!qword_1EB0CC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC548);
  }

  return result;
}

unint64_t sub_1A348F248()
{
  result = qword_1EB0CC550;
  if (!qword_1EB0CC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC550);
  }

  return result;
}

void sub_1A348F2C4()
{
  sub_1A34C9E40();
  if (v0 <= 0x3F)
  {
    sub_1A348F438();
    if (v1 <= 0x3F)
    {
      sub_1A348F490();
      if (v2 <= 0x3F)
      {
        sub_1A338656C(319, &qword_1EB0CC570, &qword_1EB0CC4D0);
        if (v3 <= 0x3F)
        {
          sub_1A338656C(319, &qword_1EB0CC578, &qword_1EB0CC4D8);
          if (v4 <= 0x3F)
          {
            sub_1A338656C(319, &qword_1EB0CC580, &qword_1EB0CC4E0);
            if (v5 <= 0x3F)
            {
              sub_1A338656C(319, &qword_1EB0CC588, &qword_1EB0CC4E8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A348F438()
{
  if (!qword_1EB0CC568)
  {
    sub_1A34C9E40();
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0CC568);
    }
  }
}

void sub_1A348F490()
{
  if (!qword_1ED854638)
  {
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED854638);
    }
  }
}

unint64_t sub_1A348FA78()
{
  result = qword_1EB0CC690;
  if (!qword_1EB0CC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC690);
  }

  return result;
}

uint64_t sub_1A348FACC(uint64_t a1)
{
  v4 = *(sub_1A34C9E40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3292050;

  return sub_1A348DB04(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_1A348FBFC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

unint64_t sub_1A348FC08()
{
  result = qword_1EB0CC698;
  if (!qword_1EB0CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC698);
  }

  return result;
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = sub_1A34C9E40();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A348FD38(uint64_t a1)
{
  v4 = *(sub_1A34C9E40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3292C58;

  return sub_1A348D100(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1A348FE68(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1A348FE7C()
{
  result = qword_1EB0CC6A0;
  if (!qword_1EB0CC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6A0);
  }

  return result;
}

uint64_t sub_1A348FED0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A3292C58;

  return sub_1A348C0D4(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

unint64_t sub_1A3490030()
{
  result = qword_1EB0CC6A8;
  if (!qword_1EB0CC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6A8);
  }

  return result;
}

void sub_1A3490084(id a1, uint64_t a2, char a3, void (*a4)(id))
{
  if (a3)
  {
  }

  else
  {
    a4(a1);
  }
}

unint64_t sub_1A3490094()
{
  result = qword_1EB0CC6B0;
  if (!qword_1EB0CC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6B0);
  }

  return result;
}

uint64_t sub_1A34900E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1A3490128(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A34C9E40() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A3292C58;

  return sub_1A348B460(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t TonalGradientStyle.colors.getter()
{
  v0 = sub_1A34CC450();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC930();
  sub_1A34C9010();
  v4 = sub_1A34CD800();
  v5 = sub_1A31EC6B0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *v12.i64 = v5;
  *v13.i64 = v11;
  v14 = sub_1A32D225C(v12, v7, v9, v13);
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A34DCA90;
  if (v16 > 0.5 && (v14 >= 0.12 ? (v18 = v14 < 0.175) : (v18 = 0), v18))
  {
    if (qword_1EB0C1020 != -1)
    {
      swift_once();
    }

    v28 = xmmword_1EB0C1048;
    v29 = unk_1EB0C1058;
    v30 = xmmword_1EB0C1068;
    v26 = xmmword_1EB0C1028;
    v27 = unk_1EB0C1038;
    sub_1A31EC734(&v26, v5, v7, v9, v11);
    v19 = *MEMORY[0x1E69814D8];
    v20 = *(v1 + 104);
    v20(v3, v19, v0);
    *(v17 + 32) = sub_1A34CC580();
    if (qword_1EB0C1078 != -1)
    {
      swift_once();
    }

    v21 = &xmmword_1EB0C1080;
  }

  else
  {
    if (qword_1EB0C2BB0 != -1)
    {
      swift_once();
    }

    v28 = xmmword_1EB0C2BD8;
    v29 = unk_1EB0C2BE8;
    v30 = xmmword_1EB0C2BF8;
    v26 = xmmword_1EB0C2BB8;
    v27 = unk_1EB0C2BC8;
    sub_1A31EC734(&v26, v5, v7, v9, v11);
    v19 = *MEMORY[0x1E69814D8];
    v20 = *(v1 + 104);
    v20(v3, v19, v0);
    *(v17 + 32) = sub_1A34CC580();
    if (qword_1EB0C2B58 != -1)
    {
      swift_once();
    }

    v21 = &xmmword_1EB0C2B60;
  }

  v22 = v21[3];
  v25[2] = v21[2];
  v25[3] = v22;
  v25[4] = v21[4];
  v23 = *v21;
  v25[1] = v21[1];
  v25[0] = v23;
  sub_1A31EC734(v25, v5, v7, v9, v11);
  v20(v3, v19, v0);
  *(v17 + 40) = sub_1A34CC580();
  return v17;
}

double sub_1A34906D4()
{
  xmmword_1EB0C2BB8 = xmmword_1A34FC630;
  unk_1EB0C2BC8 = xmmword_1A34FC640;
  xmmword_1EB0C2BD8 = xmmword_1A34FC650;
  unk_1EB0C2BE8 = xmmword_1A34FC660;
  result = 0.0;
  xmmword_1EB0C2BF8 = xmmword_1A34DF480;
  return result;
}

double sub_1A3490714()
{
  xmmword_1EB0C2B60 = xmmword_1A34FC670;
  *algn_1EB0C2B70 = xmmword_1A34FC680;
  xmmword_1EB0C2B80 = xmmword_1A34FC690;
  unk_1EB0C2B90 = xmmword_1A34FC6A0;
  result = 0.0;
  xmmword_1EB0C2BA0 = xmmword_1A34DF480;
  return result;
}

double sub_1A3490754()
{
  xmmword_1EB0C1028 = xmmword_1A34FC630;
  unk_1EB0C1038 = xmmword_1A34FC6B0;
  xmmword_1EB0C1048 = xmmword_1A34FC6C0;
  unk_1EB0C1058 = xmmword_1A34FC6D0;
  result = 0.0;
  xmmword_1EB0C1068 = xmmword_1A34DF480;
  return result;
}

double sub_1A3490794()
{
  xmmword_1EB0C1080 = xmmword_1A34FC6E0;
  *algn_1EB0C1090 = xmmword_1A34FC6F0;
  xmmword_1EB0C10A0 = xmmword_1A34FC700;
  unk_1EB0C10B0 = xmmword_1A34FC710;
  result = 0.0;
  xmmword_1EB0C10C0 = xmmword_1A34DF480;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So8CAFilterCIeghg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1A3490800()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v3 = sub_1A34CD0E0();
  v4 = [v2 initWithType_];

  if (v1)
  {
    sub_1A34C9010();
    v1(v4);
    sub_1A32142B0(v1);
  }

  return v4;
}

unint64_t sub_1A34908A4()
{
  result = qword_1EB0C2810;
  if (!qword_1EB0C2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2810);
  }

  return result;
}

uint64_t sub_1A34908F8(uint64_t a1)
{
  v2 = sub_1A3490AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3490934(uint64_t a1)
{
  v2 = sub_1A3490AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactLikeness.Silhouette.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC6B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3490AE0();
  sub_1A34CDFA0();
  v9[1] = v7;
  type metadata accessor for CNContactType(0);
  sub_1A3490CC4(&qword_1EB0C7A28);
  sub_1A34CDDC0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A3490AE0()
{
  result = qword_1EB0CC6C0;
  if (!qword_1EB0CC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6C0);
  }

  return result;
}

uint64_t ContactLikeness.Silhouette.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC6C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3490AE0();
  sub_1A34CDF90();
  if (!v2)
  {
    type metadata accessor for CNContactType(0);
    sub_1A3490CC4(&qword_1EB0C7A50);
    sub_1A34CDD30();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A3490CC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNContactType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3490D5C()
{
  result = qword_1EB0CC6D0;
  if (!qword_1EB0CC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6D0);
  }

  return result;
}

unint64_t sub_1A3490DB4()
{
  result = qword_1EB0CC6D8;
  if (!qword_1EB0CC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6D8);
  }

  return result;
}

unint64_t sub_1A3490E0C()
{
  result = qword_1EB0CC6E0;
  if (!qword_1EB0CC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC6E0);
  }

  return result;
}

unint64_t sub_1A3490E70(uint64_t a1, double a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1A33F0888(a1, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v12;
  }

  else
  {
    result = sub_1A33DB370(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1A33DDED0();
        v11 = v13;
      }

      result = sub_1A3491844(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1A3490F34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1A31FA144(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1A33F0D38(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1A32F7584(a2);
    *v2 = v6;
  }

  else
  {
    sub_1A3288FDC(a1, &qword_1EB0C7690);
    sub_1A3491644(a2, v7);
    sub_1A32F7584(a2);
    return sub_1A3288FDC(v7, &qword_1EB0C7690);
  }

  return result;
}

uint64_t sub_1A3490FF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9660);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ContactLikeness(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1A3288FDC(a1, &qword_1EB0C9660);
    sub_1A34916E8(a2, a3, a4, v11);

    return sub_1A3288FDC(v11, &qword_1EB0C9660);
  }

  else
  {
    sub_1A33A0E48(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1A33F0E84(v15, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_1A34911BC(__int128 *a1, uint64_t a2)
{
  v4 = a1[7];
  v21 = a1[6];
  v22 = v4;
  v23 = *(a1 + 128);
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  v6 = a1[5];
  v19 = a1[4];
  v20 = v6;
  v7 = a1[1];
  v15 = *a1;
  v16 = v7;
  sub_1A34C9490();
  swift_allocObject();
  sub_1A34C9480();
  sub_1A34C9460();
  sub_1A3492238();
  v8 = sub_1A34C9470();
  if (!v2)
  {
    v10 = v8;
    v11 = v9;
    sub_1A33CAF7C(a2, v14);
    v13[3] = MEMORY[0x1E6969080];
    v13[0] = v10;
    v13[1] = v11;
    sub_1A3490F34(v13, v14);
  }
}

uint64_t sub_1A34912C0(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  v5 = a1[3];
  v15 = a1[2];
  v16 = v5;
  sub_1A34C9490();
  swift_allocObject();
  sub_1A34C9480();
  sub_1A34C9460();
  sub_1A349228C();
  v6 = sub_1A34C9470();
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    sub_1A33CAF7C(a2, v12);
    v11[3] = MEMORY[0x1E6969080];
    v11[0] = v8;
    v11[1] = v9;
    sub_1A3490F34(v11, v12);
  }
}

uint64_t sub_1A34913A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v22, 0, sizeof(v22));
  v3 = a1;
  sub_1A34604B4(v3, v22, v21);

  v4 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  v5 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001A350EE80;
  v19 = v4;
  v20 = v5;
  sub_1A34CDA40();
  sub_1A34911BC(v21, v16);
  sub_1A32F7584(v16);
  v6 = v19;
  v7 = objc_opt_self();
  v8 = sub_1A3444DEC(v6, v5);
  v9 = sub_1A34CD0E0();
  v10 = [v7 finalizedConfiguration:v8 forExtensionIdentifier:v9];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_1A3444DEC(v6, v5);
  }

  v12 = sub_1A3444A44(v11, 0);
  sub_1A335DED4(v12 & 0xFFFFFFFF00000001, v13 & 1, v14, v3, a2);
  sub_1A335DA80(v21);
}

double sub_1A3491564@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A31F56D4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A31F8190();
      v9 = v17;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for MonogramSpec.LookupKey();
    sub_1A31F6B94(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = (*(v9 + 56) + 96 * v7);
    v13 = v12[3];
    a2[2] = v12[2];
    a2[3] = v13;
    v14 = v12[5];
    a2[4] = v12[4];
    a2[5] = v14;
    v15 = v12[1];
    *a2 = *v12;
    a2[1] = v15;
    sub_1A34919CC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1A3491644@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A33DB3BC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A33DE730();
      v9 = v11;
    }

    sub_1A32F7584(*(v9 + 48) + 40 * v7);
    sub_1A31FA144((*(v9 + 56) + 32 * v7), a2);
    sub_1A3491E84(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A34916E8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_1A33DB69C(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A33DE8D4();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for ContactLikeness(0);
    v20 = *(v13 - 8);
    sub_1A33A0E48(v12 + *(v20 + 72) * v9, a4);
    sub_1A3492028(v9, v11);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a4;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ContactLikeness(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a4;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1A3491844(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A34CD980() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1A34CDF10();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A34919CC(int64_t a1, uint64_t a2)
{
  v4 = sub_1A34C9120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v35 - v8;
  v42 = type metadata accessor for MonogramSpec.LookupKey();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v41 = a2;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = (sub_1A34CD980() + 1) & ~v13;
    v17 = *(v9 + 72);
    v39 = (v5 + 48);
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    v18 = v41;
    v43 = v17;
    while (1)
    {
      v19 = v15;
      v20 = v12;
      v21 = v4;
      v22 = v17 * v14;
      sub_1A31F5D70(*(v18 + 48) + v17 * v14, v11);
      sub_1A34CDF20();
      v23 = *v11;
      sub_1A34CDF40();
      if (v23 != 6)
      {
        MEMORY[0x1A58EF750](v23);
      }

      if (v11[16] == 1)
      {
        sub_1A34CDF40();
      }

      else
      {
        v24 = *(v11 + 1);
        sub_1A34CDF40();
        MEMORY[0x1A58EF750](v24);
      }

      if (v11[17] != 2)
      {
        sub_1A34CDF40();
      }

      sub_1A34CDF40();
      if (v11[18] != 2)
      {
        sub_1A34CDF40();
      }

      sub_1A34CDF40();
      v25 = v40;
      sub_1A31F6D00(&v11[*(v42 + 32)], v40);
      v4 = v21;
      if ((*v39)(v25, 1, v21) == 1)
      {
        sub_1A34CDF40();
      }

      else
      {
        v26 = v38;
        (*v37)(v38, v25, v4);
        sub_1A34CDF40();
        sub_1A34922E0();
        sub_1A34CCFE0();
        (*v36)(v26, v4);
      }

      v12 = v20;
      v27 = sub_1A34CDF70();
      sub_1A31F6B94(v11);
      v15 = v19;
      v28 = v27 & v19;
      if (a1 >= v16)
      {
        v18 = v41;
        v17 = v43;
        if (v28 < v16)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = v41;
        v17 = v43;
        if (v28 >= v16)
        {
          goto LABEL_22;
        }
      }

      if (a1 >= v28)
      {
LABEL_22:
        if (v17 * a1 < v22 || *(v18 + 48) + v17 * a1 >= (*(v18 + 48) + v22 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_27:
          v17 = v43;
        }

        else if (v17 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_27;
        }

        v29 = *(v18 + 56);
        v30 = (v29 + 96 * a1);
        v31 = (v29 + 96 * v14);
        if (a1 != v14 || v30 >= v31 + 96)
        {
          memmove(v30, v31, 0x60uLL);
          v17 = v43;
          a1 = v14;
        }
      }

LABEL_4:
      v14 = (v14 + 1) & v19;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v18 = v41;
LABEL_32:
  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t sub_1A3491E84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A34CD980() + 1) & ~v5;
    do
    {
      sub_1A33CAF7C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1A34CDA00();
      result = sub_1A32F7584(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A3492028(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A34CD980() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v9);

      sub_1A34CD1C0();
      v10 = sub_1A34CDF70();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = v12 + 24 * v3;
      v14 = (v12 + 24 * v6);
      if (v3 != v6 || v13 >= v14 + 24)
      {
        v15 = *v14;
        *(v13 + 16) = *(v14 + 2);
        *v13 = v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for ContactLikeness(0) - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A3492238()
{
  result = qword_1EB0C1A58;
  if (!qword_1EB0C1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A58);
  }

  return result;
}

unint64_t sub_1A349228C()
{
  result = qword_1EB0C1D60;
  if (!qword_1EB0C1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D60);
  }

  return result;
}

unint64_t sub_1A34922E0()
{
  result = qword_1ED854A40;
  if (!qword_1ED854A40)
  {
    sub_1A34C9120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854A40);
  }

  return result;
}

uint64_t sub_1A3492338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_1EB0C1510) = 0;
  v14 = (v5 + qword_1EB0ED0E8);
  *v14 = a2;
  v14[1] = a3;
  sub_1A3494674(a1, v13, type metadata accessor for ContactCardConfiguration);

  sub_1A34C99D0();
  sub_1A32A313C(a1);
  sub_1A34946DC(v13, v5 + qword_1EB0C1618, type metadata accessor for ContactCardConfiguration);
  v15 = (v5 + *(*v5 + 112));
  *v15 = a2;
  v15[1] = a3;
  v16 = (v5 + *(*v5 + 120));
  *v16 = a2;
  v16[1] = a3;
  v17 = (v5 + qword_1EB0C1620);
  *v17 = a4;
  v17[1] = a5;

  return v5;
}

uint64_t sub_1A34924A8()
{
}

uint64_t sub_1A34924EC()
{
  sub_1A32A313C(v0 + qword_1EB0C1618);

  v1 = *(*v0 + 128);
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A34C9010();

  return swift_deallocClassInstance();
}

void sub_1A34926E8()
{
  sub_1A3492838(319, &qword_1EB0C1190, &type metadata for ContactCardDetailsStyle, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3492838(319, &qword_1EB0C1130, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A32BF0BC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ContactCardNotesPropertyViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_1A3492838(319, &qword_1EB0C0548, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A3492888();
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

void sub_1A3492838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3492888()
{
  if (!qword_1EB0C1208)
  {
    v0 = sub_1A34CA4C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1208);
    }
  }
}

uint64_t sub_1A34928FC()
{
  v1 = v0;
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A328D790(v1, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    memcpy(v11, v10, sizeof(v11));
  }

  else
  {
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v7 = v11[208];
  sub_1A3292144(v11);
  return v7;
}

uint64_t sub_1A3492A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v15[1] = a1;
  v3 = type metadata accessor for ContactCardNotes(0);
  v15[0] = *(v3 - 8);
  v4 = *(v15[0] + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC6E8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC6F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  *v7 = sub_1A34CB290();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC6F8);
  sub_1A3492D2C(v2, &v7[*(v11 + 44)]);
  sub_1A3284D0C(&qword_1EB0C0478, &qword_1EB0CC6E8);
  sub_1A34CC1F0();
  sub_1A3288FDC(v7, &qword_1EB0CC6E8);
  sub_1A3494674(v2, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardNotes);
  v12 = (*(v15[0] + 80) + 16) & ~*(v15[0] + 80);
  v13 = swift_allocObject();
  sub_1A34946DC(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContactCardNotes);
  sub_1A3493F88();
  sub_1A34CBF50();

  return sub_1A3288FDC(v10, &qword_1EB0CC6F0);
}

uint64_t sub_1A3492D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v142 = a2;
  v114 = type metadata accessor for ContactCardNotes(0);
  v139 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v140 = v2;
  v141 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1A34CB240();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v101 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v101 - v5;
  v6 = sub_1A34CB0B0();
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CB2B0();
  v9 = *(v8 - 8);
  v116 = v8;
  v117 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5428);
  v12 = *(v11 - 8);
  v112 = v11;
  v113 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v101 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC708) - 8;
  MEMORY[0x1EEE9AC00](v115);
  v109 = &v101 - v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC710);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v101 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC718);
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v101 - v16;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC720);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v101 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC728);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v125 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC730);
  v132 = *(v19 - 8);
  v133 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v101 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC738);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC740);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v138 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v101 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v134 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v143 = &v101 - v29;
  sub_1A34546F8(v151);
  sub_1A31EE4BC(v153, v148);
  sub_1A3292144(v151);
  v107 = v149;
  v108 = v150;
  v106 = __swift_project_boxed_opaque_existential_1(v148, v149);
  *&v145 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x414C5F5345544F4ELL, 0xEB000000004C4542);
  *(&v145 + 1) = v30;
  sub_1A328A95C();
  v31 = sub_1A34CBE30();
  v33 = v32;
  v35 = v34;
  sub_1A34546F8(&v145);
  sub_1A34C9010();
  sub_1A3292144(&v145);
  v36 = sub_1A34CBE10();
  v38 = v37;
  v40 = v39;
  sub_1A328A9B0(v31, v33, v35 & 1);

  v41 = sub_1A34CBDF0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v40 & 1;
  v49 = v105;
  sub_1A328A9B0(v36, v38, v48);

  *&v145 = v41;
  *(&v145 + 1) = v43;
  LOBYTE(v146) = v45 & 1;
  v147 = v47;
  v50 = v109;
  sub_1A34CC1F0();
  sub_1A328A9B0(v41, v43, v45 & 1);
  v51 = v114;

  __swift_destroy_boxed_opaque_existential_0(v148);
  sub_1A34CB1A0();
  v52 = v49 + *(v51 + 32);
  v53 = *v52;
  v54 = *(v52 + 16);
  v145 = v53;
  v146 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC748);
  sub_1A34CC760();
  v55 = v110;
  sub_1A34CCD90();
  v56 = v111;
  sub_1A34CB2A0();
  sub_1A3284D0C(&qword_1EB0C0388, &qword_1EB0C5428);
  sub_1A3494070(&qword_1EB0C0928, MEMORY[0x1E697C5B0]);
  v57 = v112;
  v58 = v116;
  sub_1A34CBFF0();
  (*(v117 + 8))(v56, v58);
  (*(v113 + 8))(v55, v57);
  sub_1A34546F8(v151);
  v59 = v153[5];
  sub_1A34C9010();
  sub_1A3292144(v151);
  KeyPath = swift_getKeyPath();
  v61 = (v50 + *(v115 + 44));
  *v61 = KeyPath;
  v61[1] = v59;
  v62 = *(v49 + 272);
  if (*(v49 + 280) != 1)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v63 = sub_1A34CBA30();
    sub_1A34CA210();

    v64 = v102;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(v62, 0);
    (*(v103 + 8))(v64, v104);
    LOBYTE(v62) = v151[0];
  }

  v65 = v127;
  sub_1A34548A0(v127);
  sub_1A34546F8(v151);
  sub_1A31EE4BC(&v154, &v145);
  sub_1A3292144(v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90F0);
  v66 = swift_dynamicCast();
  v67 = v135;
  if (v66)
  {
    v68 = v148[0];
    v69 = v137;
  }

  else
  {
    v69 = v137;
    if (v62 & 1) != 0 || (v70 = v101, (*(v135 + 104))(v101, *MEMORY[0x1E697F608], v137), v71 = sub_1A34CA5C0(), (*(v67 + 8))(v70, v69), (v71))
    {
      v68 = sub_1A34CC4D0();
    }

    else
    {
      sub_1A34CC500();
      v68 = sub_1A34CC540();
    }
  }

  (*(v67 + 8))(v65, v69);
  v72 = swift_getKeyPath();
  v73 = v120;
  sub_1A32122A4(v50, v120);
  v74 = (v73 + *(v122 + 36));
  *v74 = v72;
  v74[1] = v68;
  sub_1A3494110();
  v75 = v118;
  sub_1A34CC220();
  sub_1A3288FDC(v73, &qword_1EB0CC710);
  v76 = sub_1A34CC4E0();
  LOBYTE(v72) = sub_1A34CBA90();
  v77 = v119;
  (*(v121 + 32))(v119, v75, v123);
  v78 = v124;
  v79 = v77 + *(v124 + 36);
  *v79 = v76;
  *(v79 + 8) = v72;
  v80 = v49 + *(v51 + 36);
  v81 = *v80;
  v82 = *(v80 + 8);
  LOBYTE(v75) = *(v80 + 16);
  v83 = sub_1A3494340();
  v84 = v125;
  sub_1A34CC350();
  sub_1A3288FDC(v77, &qword_1EB0CC720);
  v151[0] = v81;
  v151[1] = v82;
  v152 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC700);
  sub_1A34CA4A0();
  v144 = v148[0];
  v85 = v141;
  sub_1A3494674(v49, v141, type metadata accessor for ContactCardNotes);
  v86 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v87 = swift_allocObject();
  sub_1A34946DC(v85, v87 + v86, type metadata accessor for ContactCardNotes);
  *&v145 = v78;
  *(&v145 + 1) = v83;
  swift_getOpaqueTypeConformance2();
  v88 = v126;
  v89 = v130;
  sub_1A34CC3C0();

  (*(v128 + 8))(v84, v89);
  LOBYTE(v77) = sub_1A34928FC();
  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = (v77 & 1) == 0;
  v92 = v129;
  (*(v132 + 32))(v129, v88, v133);
  v93 = (v92 + *(v131 + 36));
  *v93 = v90;
  v93[1] = sub_1A330071C;
  v93[2] = v91;
  sub_1A34944C0();
  v94 = v136;
  sub_1A34CC1F0();
  sub_1A3288FDC(v92, &qword_1EB0CC738);
  v95 = v143;
  v96 = v134;
  sub_1A328D790(v143, v134, &qword_1EB0C5988);
  v97 = v138;
  sub_1A321232C(v94, v138);
  v98 = v142;
  sub_1A328D790(v96, v142, &qword_1EB0C5988);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC758);
  sub_1A321232C(v97, v98 + *(v99 + 48));
  sub_1A3288FDC(v94, &qword_1EB0CC740);
  sub_1A349460C(v95);
  sub_1A3288FDC(v97, &qword_1EB0CC740);
  return sub_1A349460C(v96);
}

uint64_t sub_1A3493C9C(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A328D790(a1, v16, &unk_1EB0C5650);
  if (v17 == 1)
  {
    memcpy(v18, v16, sizeof(v18));
  }

  else
  {
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v7 = LOBYTE(v18[26]);
  result = sub_1A3292144(v18);
  if (v7 == 1)
  {
    v9 = type metadata accessor for ContactCardNotes(0);
    v10 = a1 + *(v9 + 36);
    v11 = *v10;
    v12 = *(v10 + 8);
    LOBYTE(v10) = *(v10 + 16);
    *v16 = v11;
    *&v16[8] = v12;
    v16[16] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC700);
    result = sub_1A34CA4A0();
    if ((v18[0] & 1) == 0)
    {
      v13 = *(v9 + 32);
      v14 = *(a1 + v13 + 16);
      *v16 = *(a1 + v13);
      *&v16[16] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC748);
      sub_1A34CC740();
      sub_1A3331244(v18[0], v18[1]);
    }
  }

  return result;
}

uint64_t sub_1A3493ECC()
{
  type metadata accessor for ContactCardNotes(0);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34928FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC700);
  sub_1A34CA4B0();
}

unint64_t sub_1A3493F88()
{
  result = qword_1EB0C0CC0;
  if (!qword_1EB0C0CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC6F0);
    sub_1A3284D0C(&qword_1EB0C0478, &qword_1EB0CC6E8);
    sub_1A3494070(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CC0);
  }

  return result;
}

uint64_t sub_1A3494070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A34940B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CAFE0();
  *a1 = result;
  return result;
}

unint64_t sub_1A3494110()
{
  result = qword_1EB0C0BA8;
  if (!qword_1EB0C0BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC710);
    sub_1A34941C8();
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BA8);
  }

  return result;
}

unint64_t sub_1A34941C8()
{
  result = qword_1EB0C0DE8;
  if (!qword_1EB0C0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5428);
    sub_1A34CB2B0();
    sub_1A3284D0C(&qword_1EB0C0388, &qword_1EB0C5428);
    sub_1A3494070(&qword_1EB0C0928, MEMORY[0x1E697C5B0]);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DE8);
  }

  return result;
}

unint64_t sub_1A3494340()
{
  result = qword_1EB0C0E20;
  if (!qword_1EB0C0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC710);
    sub_1A3494110();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1ED853740, &qword_1EB0CC750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E20);
  }

  return result;
}

uint64_t sub_1A349444C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContactCardNotes(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A34944C0()
{
  result = qword_1EB0C0DA0;
  if (!qword_1EB0C0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC720);
    sub_1A3494340();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C0668, &unk_1EB0C4C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DA0);
  }

  return result;
}

uint64_t sub_1A349460C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3494674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A34946DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3494744()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A349486C()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A34949AC()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t MeshGradientPoint.init(location:color:mass:minimumX:maximumX:minimumY:maximumY:isFocalPoint:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = result;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *a3 = a2;
  return result;
}

uint64_t sub_1A3494B04()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EE088);
  __swift_project_value_buffer(v0, qword_1EB0EE088);
  return sub_1A34CA240();
}

uint64_t MeshGradientPoint.color.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

ContactsUICore::MeshGradientPoint::CodingKeys_optional __swiftcall MeshGradientPoint.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ContactsUICore::MeshGradientPoint::CodingKeys_optional __swiftcall MeshGradientPoint.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = MeshGradientPoint.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1A3494DD8()
{
  v1 = *v0;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x596D756D6978616DLL;
  if (v1 != 6)
  {
    v3 = 0x506C61636F467369;
  }

  v4 = 0x586D756D6978616DLL;
  if (v1 != 4)
  {
    v4 = 0x596D756D696E696DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1936941421;
  if (v1 != 2)
  {
    v5 = 0x586D756D696E696DLL;
  }

  if (*v0)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1A3494F00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461636F6CLL;
  v5 = 0xE800000000000000;
  v6 = 0x596D756D6978616DLL;
  if (v2 != 6)
  {
    v6 = 0x506C61636F467369;
    v5 = 0xEC000000746E696FLL;
  }

  v7 = 0x586D756D6978616DLL;
  if (v2 != 4)
  {
    v7 = 0x596D756D696E696DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1936941421;
  if (v2 != 2)
  {
    v9 = 0x586D756D696E696DLL;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x726F6C6F63;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

ContactsUICore::MeshGradientPoint::CodingKeys_optional sub_1A3494FF8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = MeshGradientPoint.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1A349503C(uint64_t a1)
{
  v2 = sub_1A3495400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3495078(uint64_t a1)
{
  v2 = sub_1A3495400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MeshGradientPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC760);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = v1[1];
  v9 = *(v1 + 2);
  v19 = *(v1 + 3);
  v11 = v1[4];
  v10 = v1[5];
  v13 = v1[6];
  v12 = v1[7];
  v14 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3495400();
  sub_1A34CDFA0();
  v20 = v8;
  v21 = v9;
  v24 = 0;
  type metadata accessor for CGPoint(0);
  sub_1A34959A4(&qword_1EB0C00E0);
  sub_1A34CDDC0();
  if (!v2)
  {
    v20 = sub_1A32E98C0();
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = 1;
    sub_1A32EBF3C();
    sub_1A34CDDC0();
    v20 = v11;
    v24 = 2;
    sub_1A33E4A94();
    sub_1A34CDDC0();
    v20 = v10;
    v24 = 3;
    sub_1A34CDDC0();
    v20 = v13;
    v24 = 4;
    sub_1A34CDDC0();
    v20 = v12;
    v24 = 5;
    sub_1A34CDDC0();
    v20 = v14;
    v24 = 6;
    sub_1A34CDDC0();
    LOBYTE(v20) = 7;
    sub_1A34CDD90();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A3495400()
{
  result = qword_1EB0C2688[0];
  if (!qword_1EB0C2688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB0C2688);
  }

  return result;
}

uint64_t MeshGradientPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1A34CC450();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC768);
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v31 - v8;
  v10 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1A3495400();
  v11 = v9;
  sub_1A34CDF90();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v12 = v32;
  v13 = v4;
  v14 = v7;
  type metadata accessor for CGPoint(0);
  LOBYTE(v35) = 0;
  sub_1A34959A4(&qword_1EB0C00D8);
  v15 = v33;
  v16 = v11;
  sub_1A34CDD30();
  v17 = v40;
  v18 = v41;
  LOBYTE(v35) = 1;
  sub_1A32EC05C();
  sub_1A34CDD30();
  (*(v12 + 104))(v6, *MEMORY[0x1E69814D8], v13);
  v19 = sub_1A34CC580();
  LOBYTE(v35) = 2;
  sub_1A33E4B6C();
  sub_1A34CDD30();
  v20 = v40;
  LOBYTE(v35) = 3;
  sub_1A34CDD30();
  v21 = v40;
  LOBYTE(v35) = 4;
  sub_1A34CDD30();
  v22 = v40;
  LOBYTE(v35) = 5;
  sub_1A34CDD30();
  v23 = v40;
  LOBYTE(v35) = 6;
  sub_1A34CDD30();
  v24 = v40;
  v49 = 7;
  v25 = sub_1A34CDD00();
  (*(v14 + 8))(v16, v15);
  LOBYTE(v16) = v25 & 1;
  LOBYTE(v35) = v25 & 1;
  DWORD1(v35) = *(v50 + 3);
  *(&v35 + 1) = v50[0];
  *(&v35 + 1) = v17;
  *&v36 = v18;
  *(&v36 + 1) = v19;
  *&v37 = v20;
  *(&v37 + 1) = v21;
  *&v38 = v22;
  *(&v38 + 1) = v23;
  v39 = v24;
  v26 = v37;
  v27 = v38;
  v28 = v31;
  *(v31 + 64) = v24;
  v28[2] = v26;
  v28[3] = v27;
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  sub_1A342B4B4(&v35, &v40);
  __swift_destroy_boxed_opaque_existential_0(v34);
  LOBYTE(v40) = v16;
  *(&v40 + 1) = v50[0];
  HIDWORD(v40) = *(v50 + 3);
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  return sub_1A342B510(&v40);
}

uint64_t sub_1A34959A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MeshGradientPoint.push(by:focalPoint:sigma:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(v5 + 1);
  v48 = *v5;
  v49 = v11;
  v12 = *(v5 + 3);
  v50 = *(v5 + 2);
  v51 = v12;
  v52 = v5[8];
  v14 = *(&v48 + 1);
  v13 = *&v49;
  v15 = sqrt((*(&v48 + 1) - a3) * (*(&v48 + 1) - a3) + (*&v49 - a4) * (*&v49 - a4));
  v43 = exp(-(v15 * v15) / ((a5 + a5) * a5));
  v44 = v50;
  v16 = v43 / *&v50;
  v17 = a4 - v10;
  v18 = (a3 - v9) * (v43 / *&v50);
  v19 = v17 * (v43 / *&v50);
  if (qword_1EB0C4B70 != -1)
  {
    swift_once();
  }

  v20 = *(&v48 + 1) + v18;
  v21 = *&v49 + v19;
  v22 = sub_1A34CA250();
  __swift_project_value_buffer(v22, qword_1EB0EE088);
  sub_1A342B4B4(&v48, &v46);
  v23 = sub_1A34CA230();
  v24 = sub_1A34CD630();
  sub_1A342B510(&v48);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136316418;
    v46 = v14;
    v47 = v13;
    v27 = sub_1A34CD170();
    v29 = sub_1A31EE23C(v27, v28, &v45);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v46 = a3;
    v47 = a4;
    v30 = sub_1A34CD170();
    v32 = sub_1A31EE23C(v30, v31, &v45);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v20;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v21;
    *(v25 + 42) = 2048;
    *(v25 + 44) = v16;
    *(v25 + 52) = 2048;
    *(v25 + 54) = v43;
    _os_log_impl(&dword_1A31E6000, v23, v24, "Transformed point %s by forcingPoint: %s) to x: %f, y: %f, factor %f falloff: %f", v25, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v26, -1, -1);
    MEMORY[0x1A58F1010](v25, -1, -1);
  }

  v33 = *(&v50 + 1);
  v34 = v51;
  if (*(&v50 + 1) > *&v51)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (*(&v50 + 1) >= v20)
  {
    v35 = *(&v50 + 1);
    if ((~*(&v50 + 1) & 0x7FF0000000000000) == 0)
    {
      if ((*(&v50 + 1) & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v35 = v20;
      }

      else
      {
        v35 = *(&v50 + 1);
      }
    }
  }

  else
  {
    v35 = v20;
  }

  if (v35 <= *&v51)
  {
    v36 = v35;
  }

  else
  {
    v36 = *&v51;
    if ((~v51 & 0x7FF0000000000000) == 0)
    {
      if ((v51 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *&v51;
      }
    }
  }

  v37 = *(&v51 + 1);
  v38 = v52;
  if (*(&v51 + 1) > v52)
  {
    goto LABEL_33;
  }

  if (*(&v51 + 1) >= v21)
  {
    v39 = *(&v51 + 1);
    if ((~*(&v51 + 1) & 0x7FF0000000000000) == 0)
    {
      if ((*(&v51 + 1) & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v39 = v13 + v19;
      }

      else
      {
        v39 = *(&v51 + 1);
      }
    }
  }

  else
  {
    v39 = v13 + v19;
  }

  if (v39 <= v52)
  {
    v40 = v39;
  }

  else
  {
    v40 = v52;
    if ((~*&v52 & 0x7FF0000000000000) == 0)
    {
      if ((*&v52 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = v52;
      }
    }
  }

  v41 = *(&v49 + 1);
  v42 = v48;
  *(a2 + 8) = v36;
  *(a2 + 16) = v40;
  *(a2 + 24) = v41;
  *(a2 + 32) = v44;
  *(a2 + 40) = v33;
  *(a2 + 48) = v34;
  *(a2 + 56) = v37;
  *(a2 + 64) = v38;
  *a2 = v42;
  sub_1A342B4B4(&v48, &v46);
}

uint64_t MeshGradientPoint.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  sub_1A34CDF40();
  sub_1A34CCDF0();
  sub_1A34CC4C0();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x1A58EF770](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x1A58EF770](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x1A58EF770](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1A58EF770](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  return MEMORY[0x1A58EF770](*&v10);
}

uint64_t MeshGradientPoint.hashValue.getter()
{
  sub_1A34CDF20();
  MeshGradientPoint.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A3495EAC()
{
  sub_1A34CDF20();
  MeshGradientPoint.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A3495EF0()
{
  sub_1A34CDF20();
  MeshGradientPoint.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t _s14ContactsUICore17MeshGradientPointV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) != LOBYTE(a2->f64[0]))
  {
    return 0;
  }

  v3 = a1[4].f64[0];
  v9 = a1[2];
  v10 = a1[3];
  v7 = a2[2];
  v8 = a2[3];
  v4 = a2[4].f64[0];
  if ((sub_1A34CCDD0() & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1A34CC460();
  v6 = vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v10, v8)));
  v6.i16[0] = vminv_u16(v6);
  return v5 & v6.i32[0] & (v3 == v4);
}

unint64_t sub_1A3495FF0()
{
  result = qword_1EB0CC770;
  if (!qword_1EB0CC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC770);
  }

  return result;
}

unint64_t sub_1A3496048()
{
  result = qword_1EB0C2678;
  if (!qword_1EB0C2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2678);
  }

  return result;
}

unint64_t sub_1A34960A0()
{
  result = qword_1EB0C2680;
  if (!qword_1EB0C2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2680);
  }

  return result;
}

unint64_t sub_1A34960F8()
{
  result = qword_1EB0CC778;
  if (!qword_1EB0CC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshGradientPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MeshGradientPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *SharedProfileController.__allocating_init()()
{
  type metadata accessor for SharedProfileController();
  memset(v1, 0, 41);
  swift_allocObject();
  return sub_1A3496F88(v1);
}

uint64_t type metadata accessor for SharedProfileController()
{
  result = qword_1EB0C3008;
  if (!qword_1EB0C3008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *SharedProfileController.__allocating_init(sharedProfileSettings:)(unsigned __int8 *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = a1[40];
  v6 = *a1;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for SharedProfileController();
  swift_allocObject();
  return sub_1A3496F88(&v6);
}

uint64_t sub_1A34963B0()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EE0A0);
  __swift_project_value_buffer(v0, qword_1EB0EE0A0);
  return sub_1A34CA240();
}

id sub_1A3496430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DC310;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle_];
  result = [v1 descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = result;
  qword_1EB0CC780 = v0;
  return result;
}

uint64_t sub_1A34964F0(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  *v11 = v2;
  *&v11[9] = *(a1 + 25);
  if (*(v1 + 24) != (v10 & 1))
  {
    goto LABEL_2;
  }

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  if (*(v1 + 32) != __PAIR128__(*v11, *(&v10 + 1)) && (sub_1A34CDE30() & 1) == 0)
  {
    goto LABEL_2;
  }

  if (__PAIR128__(v7, v6) == *&v11[8])
  {
    if (v8 == v11[24])
    {
      goto LABEL_10;
    }

LABEL_2:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3497210();
    sub_1A34C9990();
    sub_1A34999A8(&v10);
  }

  if (sub_1A34CDE30() & 1) == 0 || ((v8 ^ v11[24]))
  {
    goto LABEL_2;
  }

LABEL_10:
  v9 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v9;
  *(v1 + 49) = *(a1 + 25);
}

uint64_t sub_1A34966A4(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 49) = *(a2 + 25);
  sub_1A34999FC(a2, &v4);
}

uint64_t sub_1A3496714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3497210();
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

uint64_t sub_1A34967B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12[0] = *a1;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  v17 = v10;

  return a5(v12);
}

uint64_t sub_1A3496824@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_1A3497210();
  sub_1A34C99A0();

  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(v9 + 64);
  *a1 = *(v9 + 24);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_1A34968C0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_getKeyPath();
  *&v20 = v1;
  sub_1A3497210();
  sub_1A34C99A0();

  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  LOBYTE(v20) = *(v1 + 24);
  *(&v20 + 1) = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v14[0] = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;

  sub_1A3497FA4(&v20, v14);

  LOBYTE(v20) = v2;
  *(&v20 + 1) = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  return sub_1A34964F0(&v20);
}

void (*sub_1A34969CC(uint64_t *a1))(char **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v1;
  swift_getKeyPath();
  *(v5 + 64) = OBJC_IVAR____TtC14ContactsUICore23SharedProfileController___observationRegistrar;
  *(v5 + 48) = v1;
  *(v5 + 72) = sub_1A3497210();
  sub_1A34C99A0();

  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v2 + 64);
  *v5 = *(v2 + 24);
  *(v5 + 8) = v7;
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;

  return sub_1A3496AC0;
}

void sub_1A3496AC0(char **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 2);
  v6 = *(*a1 + 4);
  v18 = *(*a1 + 1);
  v19 = *(*a1 + 3);
  v20 = (*a1)[40];
  swift_getKeyPath();
  v7 = *(v3 + 7);
  *(v3 + 6) = v7;
  if (a2)
  {

    sub_1A34C99A0();

    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    v12 = *(v7 + 64);
    v21[0] = *(v7 + 24);
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    LOBYTE(v27) = v4;
    *(&v27 + 1) = v18;
    v28 = v5;
    v29 = v19;
    v30 = v6;
    v31 = v20;

    sub_1A3497FA4(v21, &v27);

    LOBYTE(v27) = v4;
    *(&v27 + 1) = v18;
    v28 = v5;
    v29 = v19;
    v30 = v6;
    v31 = v20;
    sub_1A34964F0(&v27);
  }

  else
  {
    sub_1A34C99A0();

    v13 = *(v7 + 32);
    v14 = *(v7 + 40);
    v15 = *(v7 + 48);
    v16 = *(v7 + 56);
    v17 = *(v7 + 64);
    v21[0] = *(v7 + 24);
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    LOBYTE(v27) = v4;
    *(&v27 + 1) = v18;
    v28 = v5;
    v29 = v19;
    v30 = v6;
    v31 = v20;

    sub_1A3497FA4(v21, &v27);

    LOBYTE(v27) = v4;
    *(&v27 + 1) = v18;
    v28 = v5;
    v29 = v19;
    v30 = v6;
    v31 = v20;
    sub_1A34964F0(&v27);
  }

  free(v3);
}

uint64_t sub_1A3496CD8()
{
  swift_getKeyPath();
  sub_1A3497210();
  sub_1A34C99A0();

  swift_beginAccess();
}

uint64_t sub_1A3496D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3497210();
  sub_1A34C99A0();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1A3496E1C(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1A33BAC98(*(v1 + 72), a1))
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3497210();
    sub_1A34C9990();
  }
}

uint64_t sub_1A3496F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t *sub_1A3496F88(__int128 *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = a1[1];
  v23 = *a1;
  v24[0] = v7;
  *(v24 + 9) = *(a1 + 25);
  v9 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 40);
  v1[2] = [objc_opt_self() cn_defaultProvider];
  v1[9] = MEMORY[0x1E69E7CD0];
  sub_1A34C99D0();
  v14 = [v1[2] isNicknameSharingEnabled];
  v15 = [v1[2] cn_sharingAudience];
  if (!*&v24[0])
  {
    v13 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0xE000000000000000;
    LOBYTE(v9) = v14;
    v12 = 0xE000000000000000;
  }

  *(v1 + 24) = v9 & 1;
  v16 = v15 == 2;
  v1[4] = v8;
  v1[5] = v11;
  v1[6] = v10;
  v1[7] = v12;
  *(v1 + 64) = v13 & 1;
  sub_1A328D790(&v23, v22, &qword_1EB0CC7E0);
  sub_1A34CD460();
  v17 = sub_1A34CD4A0();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v18;
  *(v19 + 40) = v14;
  v20 = v24[0];
  *(v19 + 48) = v23;
  *(v19 + 64) = v20;
  *(v19 + 73) = *(v24 + 9);
  *(v19 + 89) = v16;
  *(v19 + 96) = v3;
  sub_1A32C2F5C(0, 0, v6, &unk_1A34FD0F0, v19);

  sub_1A3288FDC(v6, &qword_1EB0C6110);
  return v1;
}

unint64_t sub_1A3497210()
{
  result = qword_1EB0C3020;
  if (!qword_1EB0C3020)
  {
    type metadata accessor for SharedProfileController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C3020);
  }

  return result;
}

uint64_t sub_1A3497268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 225) = a7;
  *(v7 + 224) = a5;
  *(v7 + 176) = a4;
  *(v7 + 184) = a6;

  return MEMORY[0x1EEE6DFA0](sub_1A3497300, 0, 0);
}

uint64_t sub_1A3497300()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    goto LABEL_18;
  }

  v2 = (v0 + 80);
  if (*(v0 + 224) == 1)
  {
    *(v0 + 200) = *(Strong + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1A3497888;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7E8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A341ABB4;
    *(v0 + 104) = &block_descriptor_29;
    *(v0 + 112) = v3;
    [swift_unknownObjectRetain() fetchPersonalNicknameAsContactWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  if (qword_1EB0C4B80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v5 = sub_1A34CD350();
  *v2 = 0;
  v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v7 = *v2;
  if (v6)
  {
  }

  else
  {
    v8 = v7;
    v9 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v10 = sub_1A34CA250();
    __swift_project_value_buffer(v10, qword_1EB0EDA40);
    v11 = v9;
    v12 = sub_1A34CA230();
    v13 = sub_1A34CD640();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1A31E6000, v12, v13, "Could not fetch unified me contact: %@", v14, 0xCu);
      sub_1A3288FDC(v15, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v15, -1, -1);
      MEMORY[0x1A58F1010](v14, -1, -1);
    }

    else
    {
    }

    v6 = 0;
  }

  *(v0 + 208) = v6;
  if (*(*(v0 + 184) + 16))
  {

LABEL_18:
    v18 = *(v0 + 8);

    return v18();
  }

  if (!v6)
  {

    goto LABEL_18;
  }

  v19 = qword_1EB0C4B78;
  v20 = v6;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_1A34CA250();
  __swift_project_value_buffer(v21, qword_1EB0EE0A0);
  v22 = sub_1A34CA230();
  v23 = sub_1A34CD660();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 224);
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v24;
    _os_log_impl(&dword_1A31E6000, v22, v23, "Populating shared profile settings from nickname provider, isNicknameSharingEnabled: %{BOOL}d", v25, 8u);
    MEMORY[0x1A58F1010](v25, -1, -1);
  }

  swift_weakInit();
  sub_1A34CD450();
  *(v0 + 216) = sub_1A34CD440();
  v27 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3497BC4, v27, v26);
}

uint64_t sub_1A3497888()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3497994, 0, 0);
}

uint64_t sub_1A3497994()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  *(v0 + 208) = v1;
  if (*(*(v0 + 184) + 16))
  {

LABEL_3:

    v2 = *(v0 + 8);

    return v2();
  }

  if (!v1)
  {
    goto LABEL_3;
  }

  v4 = qword_1EB0C4B78;
  v5 = v1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1A34CA250();
  __swift_project_value_buffer(v6, qword_1EB0EE0A0);
  v7 = sub_1A34CA230();
  v8 = sub_1A34CD660();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 224);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_1A31E6000, v7, v8, "Populating shared profile settings from nickname provider, isNicknameSharingEnabled: %{BOOL}d", v10, 8u);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  swift_weakInit();
  sub_1A34CD450();
  *(v0 + 216) = sub_1A34CD440();
  v12 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3497BC4, v12, v11);
}

uint64_t sub_1A3497BC4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 225);

  sub_1A3497D60(v0 + 80, v1, v2 & 1);

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A3497CCC, 0, 0);
}

uint64_t sub_1A3497CCC()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3497D60(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    *&v16 = v6;
    sub_1A3497210();
    sub_1A34C99A0();

    v7 = *(v6 + 24);
    v8 = [a2 givenName];
    v9 = sub_1A34CD110();
    v11 = v10;

    v12 = [a2 familyName];
    v13 = sub_1A34CD110();
    v15 = v14;

    LOBYTE(v16) = v7;
    *(&v16 + 1) = v9;
    v17 = v11;
    v18 = v13;
    v19 = v15;
    v20 = a3 & 1;
    sub_1A34964F0(&v16);
  }

  return result;
}

uint64_t sub_1A3497E98(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3497210();
  sub_1A34C99A0();

  swift_getKeyPath();
  sub_1A34C99C0();

  swift_beginAccess();
  sub_1A34643D0(&v3, a1);
  swift_endAccess();
  swift_getKeyPath();
  sub_1A34C99B0();
}

uint64_t sub_1A3497FA4(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v11 = *(result + 40);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = a2[40];
  if (*result != *a2)
  {
    result = sub_1A3497E98(2);
  }

  if (v2 != v6 || v3 != v7)
  {
    result = sub_1A34CDE30();
    if ((result & 1) == 0)
    {
      result = sub_1A3497E98(1);
    }
  }

  if (v4 != v8 || v5 != v9)
  {
    result = sub_1A34CDE30();
    if ((result & 1) == 0)
    {
      result = sub_1A3497E98(1);
    }
  }

  if (v11 != v10)
  {

    return sub_1A3497E98(2);
  }

  return result;
}

void sub_1A34980C4(void *a1)
{
  swift_getKeyPath();
  sub_1A3497210();
  sub_1A34C99A0();

  swift_beginAccess();
  if (*(*(v1 + 72) + 16))
  {
    sub_1A3498218(a1);
  }

  else
  {
    if (qword_1EB0C4B78 != -1)
    {
      swift_once();
    }

    v3 = sub_1A34CA250();
    __swift_project_value_buffer(v3, qword_1EB0EE0A0);
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A31E6000, v4, v5, "Skipping update to shared profile, no changes made to shared profile settings or visual identity", v6, 2u);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }
  }
}

void sub_1A3498218(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v26 = v1;
  sub_1A3497210();
  sub_1A34C99A0();

  swift_beginAccess();
  if (sub_1A3336EDC(2, *(v1 + 72)))
  {
    if (qword_1EB0C4B78 != -1)
    {
      swift_once();
    }

    v4 = sub_1A34CA250();
    __swift_project_value_buffer(v4, qword_1EB0EE0A0);
    sub_1A34C9010();
    v5 = sub_1A34CA230();
    v6 = sub_1A34CD660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      swift_getKeyPath();
      v25 = v1;
      sub_1A34C99A0();

      *(v7 + 4) = *(v1 + 24);

      _os_log_impl(&dword_1A31E6000, v5, v6, "Updating shared profile settings, isSharingEnabled: %{BOOL}d", v7, 8u);
      MEMORY[0x1A58F1010](v7, -1, -1);
    }

    else
    {
    }

    v8 = *(v1 + 16);
    swift_getKeyPath();
    v25 = v1;
    sub_1A34C99A0();

    [v8 setSharingEnabled_];
    swift_getKeyPath();
    v25 = v1;
    sub_1A34C99A0();

    if (*(v1 + 64))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [v8 cn:v9 setSharingAudience:?];
  }

  swift_getKeyPath();
  v25 = v1;
  sub_1A34C99A0();

  if (sub_1A3336EDC(1, *(v1 + 72)) & 1) != 0 || (swift_getKeyPath(), v25 = v1, sub_1A34C99A0(), , (sub_1A3336EDC(0, *(v1 + 72))))
  {
    if (qword_1EB0C4B78 != -1)
    {
      swift_once();
    }

    v10 = sub_1A34CA250();
    __swift_project_value_buffer(v10, qword_1EB0EE0A0);
    sub_1A34C9010();
    v11 = sub_1A34CA230();
    v12 = sub_1A34CD660();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v13 = 136315138;
      swift_getKeyPath();
      sub_1A34C99A0();

      sub_1A34998AC();

      v14 = sub_1A34CD560();
      v16 = v15;

      v17 = sub_1A31EE23C(v14, v16, &v25);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1A31E6000, v11, v12, "Updating personal nickname for changes: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1A58F1010](v24, -1, -1);
      MEMORY[0x1A58F1010](v13, -1, -1);
    }

    v18 = [a1 selfOrMutableCopy];
    swift_getKeyPath();
    v25 = v2;
    sub_1A34C99A0();

    v19 = sub_1A34CD0E0();

    [v18 setGivenName_];

    swift_getKeyPath();
    v25 = v2;
    sub_1A34C99A0();

    v20 = sub_1A34CD0E0();

    [v18 setFamilyName_];

    v21 = *(v2 + 16);
    v22 = v18;
    v23 = sub_1A33A35BC(v22, 0);
    [v21 cn:v23 setPersonalNicknameWithSharingResult:?];
  }
}

uint64_t SharedProfileController.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14ContactsUICore23SharedProfileController___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedProfileController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14ContactsUICore23SharedProfileController___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A34988F4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A34CD0E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1EB0EDA38 = v2;
}

uint64_t sub_1A3498990@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CC7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;

  v7 = sub_1A34CD0E0();

  v8 = [v2 objectForKey_];

  if (v8)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31FA144(v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  v10 = swift_dynamicCast();
  v11 = *(*(v9 - 8) + 56);
  if (v10)
  {
    v11(v6, 0, 1, v9);
    return sub_1A349991C(v6, a1);
  }

  else
  {
    v13 = *(v9 - 8);
    v11(v6, 1, 1, v9);
    if (qword_1EB0C4B98 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, qword_1EB0EE0D0);
    sub_1A328D790(v14, a1, &qword_1EB0C63B0);
    result = (*(v13 + 48))(v6, 1, v9);
    if (result != 1)
    {
      return sub_1A3288FDC(v6, &unk_1EB0CC7D0);
    }
  }

  return result;
}

uint64_t sub_1A3498BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;

  v7 = sub_1A34CD0E0();

  v8 = [v2 objectForKey_];

  if (v8)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31FA144(v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  v9 = sub_1A34C9720();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  v12 = *(v11 + 56);
  if (v10)
  {
    v12(v6, 0, 1, v9);
    return (*(v11 + 32))(a1, v6, v9);
  }

  else
  {
    v12(v6, 1, 1, v9);
    if (qword_1EB0C4B90 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, qword_1EB0EE0B8);
    (*(v11 + 16))(a1, v14, v9);
    result = (*(v11 + 48))(v6, 1, v9);
    if (result != 1)
    {
      return sub_1A3288FDC(v6, &qword_1EB0C63B0);
    }
  }

  return result;
}

uint64_t sub_1A3498E5C()
{

  v1 = sub_1A34CD0E0();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31FA144(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  return swift_dynamicCast() & v4;
}

uint64_t sub_1A3498F40()
{
  v0 = sub_1A34C9720();
  __swift_allocate_value_buffer(v0, qword_1EB0EE0B8);
  __swift_project_value_buffer(v0, qword_1EB0EE0B8);
  return sub_1A34C96D0();
}

uint64_t sub_1A3498F8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  __swift_allocate_value_buffer(v0, qword_1EB0EE0D0);
  v1 = __swift_project_value_buffer(v0, qword_1EB0EE0D0);
  v2 = sub_1A34C9720();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t SharedProfileController.lastBannerInteractionDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C2E98 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1A3498990(a1);
}

uint64_t sub_1A349908C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C2E98 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1A3498990(a1);
}

uint64_t sub_1A34990EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A328D790(a1, &v6 - v3, &qword_1EB0C63B0);
  return _s14ContactsUICore23SharedProfileControllerC25lastBannerInteractionDate10Foundation0I0VSgvs_0(v4);
}

void (*SharedProfileController.lastBannerInteractionDate.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  *v4 = v5;
  v6 = *(*(v5 - 8) + 64);
  if (v2)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v6);
    v4[2] = malloc(v6);
    v4[3] = malloc(v6);
    v4[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v4[5] = v7;
  if (qword_1EB0C2E98 != -1)
  {
    swift_once();
  }

  v4[6] = qword_1EB0EDA38;
  sub_1A3498990(v8);
  return sub_1A34992F8;
}

void sub_1A34992F8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  sub_1A328D790((*a1)[5], v4, &qword_1EB0C63B0);
  sub_1A328D790(v4, v5, &qword_1EB0C63B0);
  sub_1A328D790(v5, v6, &qword_1EB0C63B0);
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[1];
  v12 = v3[2];
  if (a2)
  {
    sub_1A328D790(v3[2], v3[1], &qword_1EB0C63B0);
    v13 = sub_1A34CDE70();

    v14 = sub_1A34CD0E0();

    [v8 setObject:v13 forKey:v14];

    swift_unknownObjectRelease();
    sub_1A3288FDC(v12, &qword_1EB0C63B0);
  }

  else
  {
    v15 = sub_1A34CDE70();

    v16 = sub_1A34CD0E0();

    [v8 setObject:v15 forKey:v16];

    swift_unknownObjectRelease();
  }

  sub_1A3288FDC(v9, &qword_1EB0C63B0);
  sub_1A3288FDC(v10, &qword_1EB0C63B0);
  sub_1A3288FDC(v7, &qword_1EB0C63B0);
  free(v7);
  free(v10);
  free(v9);
  free(v12);
  free(v11);

  free(v3);
}

uint64_t _s14ContactsUICore23SharedProfileControllerC25lastBannerInteractionDate10Foundation0I0VSgvs_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  if (qword_1EB0C2E98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB0EDA38;
  sub_1A328D790(a1, v10, &qword_1EB0C63B0);
  sub_1A328D790(v10, v7, &qword_1EB0C63B0);
  sub_1A328D790(v7, v4, &qword_1EB0C63B0);
  v12 = sub_1A34CDE70();

  v13 = sub_1A34CD0E0();

  [v11 setObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  sub_1A3288FDC(a1, &qword_1EB0C63B0);
  sub_1A3288FDC(v7, &qword_1EB0C63B0);
  return sub_1A3288FDC(v10, &qword_1EB0C63B0);
}

uint64_t sub_1A349970C()
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

unint64_t sub_1A3499858()
{
  result = qword_1EB0CC7B8;
  if (!qword_1EB0CC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC7B8);
  }

  return result;
}

unint64_t sub_1A34998AC()
{
  result = qword_1EB0CC7C0;
  if (!qword_1EB0CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CC7C0);
  }

  return result;
}

uint64_t sub_1A349991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3499A58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 89);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3292050;

  return sub_1A3497268(a1, v4, v5, v6, v7, v1 + 48, v8);
}

uint64_t type metadata accessor for VisualIdentityOnboardingGallery()
{
  result = qword_1EB0C16F0;
  if (!qword_1EB0C16F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3499BB8()
{
  sub_1A31EF2A0(319, qword_1ED854EB0, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1A32CC9FC();
    if (v1 <= 0x3F)
    {
      sub_1A31EF2A0(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3499CA8@<X0>(_BYTE *a1@<X8>)
{
  sub_1A32BA6A8();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3499D44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 43);
  return result;
}

uint64_t sub_1A3499E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 44);
  return result;
}

double sub_1A3499EE4@<D0>(double *a1@<X8>)
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A3499F80@<X0>(_BYTE *a1@<X8>)
{
  sub_1A336E6EC();
  result = sub_1A34CB0E0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1A349A03C@<X0>(void *a1@<X8>)
{
  sub_1A336E698();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A349A08C()
{
  sub_1A336E698();

  return sub_1A34CB0F0();
}

uint64_t sub_1A349A0EC()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for VisualIdentityOnboardingGallery() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A34C9010();
  if ((v7 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1A349A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1A34CB7C0();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A34CB530();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC808);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC810);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC818);
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v33 = a1;
  sub_1A34CBA70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC820);
  sub_1A349FC48();
  sub_1A34CA550();
  sub_1A3284D0C(&unk_1EB0C11D8, &qword_1EB0CC808);
  v18 = v26;
  sub_1A34CC1F0();
  (*(v9 + 8))(v11, v8);
  v19 = sub_1A34CBAA0();
  sub_1A34CB500();
  v20 = sub_1A349FD30();
  MEMORY[0x1A58ED7D0](v19, 0x4034000000000000, 0, v7, v12, v20);
  (*(v5 + 8))(v7, v27);
  sub_1A3288FDC(v14, &qword_1EB0CC810);
  sub_1A34CB7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  LOBYTE(v7) = sub_1A34CBA70();
  *(inited + 32) = v7;
  v22 = sub_1A34CBA50();
  *(inited + 33) = v22;
  sub_1A34CBA60();
  sub_1A34CBA60();
  if (sub_1A34CBA60() != v7)
  {
    sub_1A34CBA60();
  }

  sub_1A34CBA60();
  if (sub_1A34CBA60() != v22)
  {
    sub_1A34CBA60();
  }

  v34 = v12;
  v35 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v29;
  sub_1A34CC090();
  (*(v31 + 8))(v18, v32);
  return (*(v28 + 8))(v17, v23);
}

uint64_t sub_1A349A720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC828);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  *v4 = sub_1A34CB280();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC830);
  sub_1A349A84C(a1, &v4[*(v5 + 44)]);
  sub_1A3284D0C(&qword_1EB0C0468, &qword_1EB0CC828);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v4, &qword_1EB0CC828);
}

uint64_t sub_1A349A84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v92 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC838) - 8;
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v76[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v76[-v4];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC840);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v76[-v5];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC848) - 8;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v76[-v8];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC850);
  MEMORY[0x1EEE9AC00](v86);
  v10 = &v76[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC858);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v76[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC860);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC868);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v76[-v25];
  *v10 = sub_1A34CB280();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC870);
  sub_1A349B288(&v10[*(v26 + 44)]);
  sub_1A3284D0C(&qword_1EB0C0470, &qword_1EB0CC850);
  sub_1A34CC1F0();
  sub_1A3288FDC(v10, &qword_1EB0CC850);
  sub_1A34CCC80();
  sub_1A34CADA0();
  sub_1A329D98C(v13, v17, &qword_1EB0CC858);
  v27 = &v17[*(v15 + 44)];
  v28 = v110;
  v27[4] = v109;
  v27[5] = v28;
  v27[6] = v111;
  v29 = v106;
  *v27 = v105;
  v27[1] = v29;
  v30 = v108;
  v27[2] = v107;
  v27[3] = v30;
  LOBYTE(v10) = sub_1A34CBA80();
  sub_1A34CA460();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1A329D98C(v17, v23, &qword_1EB0CC860);
  v39 = &v23[*(v19 + 44)];
  *v39 = v10;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v93;
  sub_1A329D98C(v23, v93, &qword_1EB0CC868);
  sub_1A34CCC80();
  sub_1A34CA760();
  v85 = v114;
  v86 = v112;
  v83 = v117;
  v84 = v116;
  v101 = 1;
  v100 = v113;
  v99 = v115;
  v41 = sub_1A34CB110();
  v42 = v81;
  *v81 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC878);
  sub_1A349B7E0(v82, v42 + *(v43 + 44));
  sub_1A3284D0C(&qword_1EB0C04D8, &qword_1EB0CC840);
  v44 = v94;
  sub_1A34CC1F0();
  sub_1A3288FDC(v42, &qword_1EB0CC840);
  KeyPath = swift_getKeyPath();
  v46 = &v44[*(v87 + 44)];
  *v46 = KeyPath;
  v46[1] = 0x3FED27D27D27D27DLL;
  sub_1A34CCC80();
  sub_1A34CA760();
  v87 = v120;
  v88 = v118;
  v81 = v123;
  v82 = v122;
  v104 = 1;
  v103 = v119;
  v102 = v121;
  v47 = swift_getKeyPath();
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v48 = sub_1A34CA600();
  v49 = v80;
  *v80 = v48;
  *(v49 + 8) = v50 & 1;
  *(v49 + 16) = swift_getKeyPath();
  *(v49 + 24) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBB18);
  v52 = v51[14];
  *(v49 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v53 = v49 + v51[15];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  v54 = v49 + v51[16];
  v96 = 0;
  sub_1A34CC730();
  v55 = v98;
  *v54 = v97;
  *(v54 + 8) = v55;
  v57 = v51[18];
  v56 = v51[19];
  *(v49 + v51[17]) = v47;
  *(v49 + v57) = 1;
  *(v49 + v56) = 1;
  v58 = swift_getKeyPath();
  v59 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAE8) + 36);
  *v59 = v58;
  *(v59 + 8) = 257;
  *(v59 + 10) = 0;
  v60 = swift_getKeyPath();
  v61 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC880) + 36);
  *v61 = v60;
  *(v61 + 8) = 0;
  v62 = swift_getKeyPath();
  v63 = (v49 + *(v90 + 44));
  *v63 = v62;
  v63[1] = 0x3FE4B77DC7C4CF2BLL;
  v64 = v95;
  sub_1A328D790(v40, v95, &qword_1EB0CC868);
  LOBYTE(v60) = v101;
  LOBYTE(v17) = v100;
  v77 = v99;
  v65 = v89;
  sub_1A328D790(v44, v89, &qword_1EB0CC848);
  v78 = v104;
  v79 = v103;
  LODWORD(v90) = v102;
  v66 = v91;
  sub_1A328D790(v49, v91, &qword_1EB0CC838);
  v67 = v64;
  v68 = v92;
  sub_1A328D790(v67, v92, &qword_1EB0CC868);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC888);
  v70 = v68 + v69[12];
  *v70 = 0;
  *(v70 + 8) = v60;
  v71 = v85;
  *(v70 + 16) = v86;
  *(v70 + 24) = v17;
  *(v70 + 32) = v71;
  *(v70 + 40) = v77;
  v72 = v83;
  *(v70 + 48) = v84;
  *(v70 + 56) = v72;
  sub_1A328D790(v65, v68 + v69[16], &qword_1EB0CC848);
  v73 = v68 + v69[20];
  *v73 = 0;
  *(v73 + 8) = v78;
  *(v73 + 16) = v88;
  *(v73 + 24) = v79;
  *(v73 + 32) = v87;
  *(v73 + 40) = v90;
  v74 = v81;
  *(v73 + 48) = v82;
  *(v73 + 56) = v74;
  sub_1A328D790(v66, v68 + v69[24], &qword_1EB0CC838);
  sub_1A3288FDC(v49, &qword_1EB0CC838);
  sub_1A3288FDC(v94, &qword_1EB0CC848);
  sub_1A3288FDC(v93, &qword_1EB0CC868);
  sub_1A3288FDC(v66, &qword_1EB0CC838);
  sub_1A3288FDC(v65, &qword_1EB0CC848);
  return sub_1A3288FDC(v95, &qword_1EB0CC868);
}

uint64_t sub_1A349B288@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC980);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - v8;
  v9 = sub_1A349A0EC();
  swift_getKeyPath();
  v54 = v9;
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v10 = *(v9 + 40);

  v11 = "OnboardingDescriptionText";
  if (v10)
  {
    v11 = "MonogramSourceText";
  }

  v54 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000022, v11 | 0x8000000000000000);
  v55 = v12;
  sub_1A328A95C();
  v13 = sub_1A34CBE30();
  v15 = v14;
  v17 = v16;
  sub_1A34CBB10();
  sub_1A34CBB60();
  sub_1A34CBBC0();

  v18 = sub_1A34CBE10();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1A328A9B0(v13, v15, v17 & 1);

  v54 = v18;
  v55 = v20;
  v56 = v22 & 1;
  v57 = v24;
  sub_1A34CC1F0();
  sub_1A328A9B0(v18, v20, v22 & 1);

  v54 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000002BLL, 0x80000001A35138F0);
  v55 = v25;
  v26 = sub_1A34CBE30();
  v28 = v27;
  v30 = v29;
  sub_1A34CBB10();
  v31 = sub_1A34CBE10();
  v33 = v32;
  LOBYTE(v20) = v34;

  sub_1A328A9B0(v26, v28, v30 & 1);

  LODWORD(v54) = sub_1A34CB580();
  v35 = sub_1A34CBDF0();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;
  sub_1A328A9B0(v31, v33, v20 & 1);

  KeyPath = swift_getKeyPath();
  v54 = v35;
  v55 = v37;
  v56 = v28 & 1;
  v57 = v40;
  v58 = KeyPath;
  v59 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9338);
  sub_1A338CBF8();
  v42 = v50;
  sub_1A34CC1F0();
  sub_1A328A9B0(v35, v37, v28 & 1);

  v43 = v53;
  v44 = v49;
  sub_1A328D790(v53, v49, &qword_1EB0C5988);
  v45 = v51;
  sub_1A328D790(v42, v51, &qword_1EB0CC980);
  v46 = v52;
  sub_1A328D790(v44, v52, &qword_1EB0C5988);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC988);
  sub_1A328D790(v45, v46 + *(v47 + 48), &qword_1EB0CC980);
  sub_1A3288FDC(v42, &qword_1EB0CC980);
  sub_1A3288FDC(v43, &qword_1EB0C5988);
  sub_1A3288FDC(v45, &qword_1EB0CC980);
  return sub_1A3288FDC(v44, &qword_1EB0C5988);
}

uint64_t sub_1A349B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v108 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC890);
  MEMORY[0x1EEE9AC00](v88);
  v84 = (&v83 - v2);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC898);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v83 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8A0);
  v106 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v86 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v83 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8B0);
  MEMORY[0x1EEE9AC00](v100);
  v98 = (&v83 - v11);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8B8);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v83 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8C0);
  MEMORY[0x1EEE9AC00](v101);
  v115 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v83 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8C8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = (&v83 - v16);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8D0);
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v83 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8D8);
  MEMORY[0x1EEE9AC00](v95);
  v119 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v83 - v20;
  v112 = sub_1A34CB220();
  v120 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1A34CB7E0();
  v22 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8E0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8E8);
  v117 = *(v104 - 1);
  MEMORY[0x1EEE9AC00](v104);
  v29 = &v83 - v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8F0);
  MEMORY[0x1EEE9AC00](v91);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v83 - v33);
  *v27 = sub_1A34CB280();
  *(v27 + 1) = 0x4020000000000000;
  v27[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC8F8);
  sub_1A349C878(&v27[*(v35 + 44)]);
  sub_1A34CB7D0();
  v113 = MEMORY[0x1E6981870];
  v36 = sub_1A3284D0C(&qword_1EB0C0488, &qword_1EB0CC8E0);
  sub_1A34CC140();
  v121 = *(v22 + 8);
  v122 = v22 + 8;
  v121(v24, v123);
  v37 = v24;
  sub_1A3288FDC(v27, &qword_1EB0CC8E0);
  v38 = v109;
  sub_1A34CB210();
  v124 = v25;
  v125 = v36;
  v114 = MEMORY[0x1E697D248];
  swift_getOpaqueTypeConformance2();
  v39 = v104;
  sub_1A34CC1B0();
  v120 = *(v120 + 8);
  v40 = v112;
  (v120)(v38, v112);
  v117[1](v29, v39);
  v117 = v34;
  v41 = v40;
  sub_1A34CAC10();
  v104 = v31;
  sub_1A3288FDC(v31, &qword_1EB0CC8F0);
  v42 = sub_1A34CB280();
  v43 = v92;
  *v92 = v42;
  *(v43 + 8) = 0x4020000000000000;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC900);
  sub_1A349CE08(v43 + *(v44 + 44));
  sub_1A34CB7D0();
  v45 = sub_1A3284D0C(&unk_1EB0C0498, &qword_1EB0CC8C8);
  v46 = v93;
  v47 = v94;
  sub_1A34CC140();
  v121(v37, v123);
  sub_1A3288FDC(v43, &qword_1EB0CC8C8);
  sub_1A34CB210();
  v124 = v47;
  v125 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v119;
  v49 = v96;
  sub_1A34CC1B0();
  (v120)(v38, v41);
  (*(v97 + 8))(v46, v49);
  sub_1A34CAC10();
  sub_1A3288FDC(v48, &qword_1EB0CC8D8);
  v50 = sub_1A34CB280();
  v51 = v98;
  *v98 = v50;
  *(v51 + 8) = 0x4020000000000000;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC908);
  sub_1A349D394(v51 + *(v52 + 44));
  sub_1A34CB7D0();
  v53 = sub_1A3284D0C(&qword_1EB0C0480, &qword_1EB0CC8B0);
  v54 = v99;
  v55 = v100;
  sub_1A34CC140();
  v113 = v37;
  v121(v37, v123);
  sub_1A3288FDC(v51, &qword_1EB0CC8B0);
  sub_1A34CB210();
  v124 = v55;
  v125 = v53;
  swift_getOpaqueTypeConformance2();
  v56 = v115;
  v57 = v102;
  v58 = v54;
  sub_1A34CC1B0();
  v59 = v112;
  (v120)(v38);
  (*(v103 + 8))(v58, v57);
  sub_1A34CAC10();
  sub_1A3288FDC(v56, &qword_1EB0CC8C0);
  v60 = sub_1A349A0EC();
  swift_getKeyPath();
  v124 = v60;
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  LOBYTE(v58) = *(v60 + 40);

  v61 = 1;
  if ((v58 & 1) == 0)
  {
    v62 = sub_1A34CB280();
    v63 = v84;
    *v84 = v62;
    *(v63 + 8) = 0x4020000000000000;
    *(v63 + 16) = 0;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC918);
    sub_1A349D920(v63 + *(v64 + 44));
    v65 = v113;
    sub_1A34CB7D0();
    v66 = sub_1A3284D0C(&qword_1EB0C0490, &qword_1EB0CC890);
    v67 = v87;
    v68 = v88;
    sub_1A34CC140();
    v121(v65, v123);
    sub_1A3288FDC(v63, &qword_1EB0CC890);
    v69 = v109;
    sub_1A34CB210();
    v124 = v68;
    v125 = v66;
    swift_getOpaqueTypeConformance2();
    v70 = v86;
    v71 = v90;
    sub_1A34CC1B0();
    (v120)(v69, v59);
    (*(v89 + 8))(v67, v71);
    v72 = v85;
    sub_1A34CAC10();
    sub_1A3288FDC(v70, &qword_1EB0CC8A0);
    sub_1A329D98C(v72, v111, &qword_1EB0CC8A0);
    v61 = 0;
  }

  v73 = v111;
  (*(v106 + 56))(v111, v61, 1, v110);
  v74 = v104;
  sub_1A328D790(v117, v104, &qword_1EB0CC8F0);
  v76 = v118;
  v75 = v119;
  sub_1A328D790(v118, v119, &qword_1EB0CC8D8);
  v77 = v115;
  v78 = v116;
  sub_1A328D790(v116, v115, &qword_1EB0CC8C0);
  v79 = v107;
  sub_1A328D790(v73, v107, &qword_1EB0CC8A8);
  v80 = v108;
  sub_1A328D790(v74, v108, &qword_1EB0CC8F0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC910);
  sub_1A328D790(v75, v80 + v81[12], &qword_1EB0CC8D8);
  sub_1A328D790(v77, v80 + v81[16], &qword_1EB0CC8C0);
  sub_1A328D790(v79, v80 + v81[20], &qword_1EB0CC8A8);
  sub_1A3288FDC(v73, &qword_1EB0CC8A8);
  sub_1A3288FDC(v78, &qword_1EB0CC8C0);
  sub_1A3288FDC(v76, &qword_1EB0CC8D8);
  sub_1A3288FDC(v117, &qword_1EB0CC8F0);
  sub_1A3288FDC(v79, &qword_1EB0CC8A8);
  sub_1A3288FDC(v77, &qword_1EB0CC8C0);
  sub_1A3288FDC(v75, &qword_1EB0CC8D8);
  return sub_1A3288FDC(v74, &qword_1EB0CC8F0);
}

uint64_t sub_1A349C878@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC968);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v11;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v56 = sub_1A34CA600();
  v57 = v12 & 1;
  if (qword_1EB0C2330 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB0ED450;

  v14 = sub_1A34CA600();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v51 = v14;
  LOBYTE(v52) = v16 & 1;
  v53 = KeyPath;
  LOBYTE(v54) = 0;
  v55 = v13;
  v18 = sub_1A349FF68();
  v19 = sub_1A349FE6C();
  sub_1A34CBEB0();

  v51 = &type metadata for NewPhotoButton;
  v52 = &type metadata for OnboardingPlaceholderButtonStyle;
  v53 = v18;
  v54 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v45;
  v21 = v46;
  sub_1A34CC0F0();
  (*(v44 + 8))(v7, v20);
  v51 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A3512C50);
  v52 = v22;
  sub_1A328A95C();
  v23 = sub_1A34CBE30();
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_1A34CBBF0();
  v27 = sub_1A34CBE10();
  v29 = v28;
  v31 = v30;

  sub_1A328A9B0(v23, v25, v13 & 1);

  LODWORD(v51) = sub_1A34CB590();
  v32 = sub_1A34CBDF0();
  v34 = v33;
  LOBYTE(v25) = v35;
  v37 = v36;
  sub_1A328A9B0(v27, v29, v31 & 1);

  v51 = v32;
  v52 = v34;
  LOBYTE(v53) = v25 & 1;
  v54 = v37;
  v38 = v48;
  sub_1A34CC1F0();
  sub_1A328A9B0(v32, v34, v25 & 1);

  v39 = v47;
  sub_1A328D790(v21, v47, &qword_1EB0CC970);
  v40 = v50;
  sub_1A328D790(v38, v50, &qword_1EB0C5988);
  v41 = v49;
  sub_1A328D790(v39, v49, &qword_1EB0CC970);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC978);
  sub_1A328D790(v40, v41 + *(v42 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v38, &qword_1EB0C5988);
  sub_1A3288FDC(v21, &qword_1EB0CC970);
  sub_1A3288FDC(v40, &qword_1EB0C5988);
  return sub_1A3288FDC(v39, &qword_1EB0CC970);
}

uint64_t sub_1A349CE08@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC950);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC958);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v11;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v56 = sub_1A34CA600();
  v57 = v12 & 1;
  if (qword_1EB0C2318 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB0ED440;

  v14 = sub_1A34CA600();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v51 = v14;
  LOBYTE(v52) = v16 & 1;
  v53 = KeyPath;
  LOBYTE(v54) = 0;
  v55 = v13;
  v18 = sub_1A349FF14();
  v19 = sub_1A349FE6C();
  sub_1A34CBEB0();

  v51 = &type metadata for NewMonogramButton;
  v52 = &type metadata for OnboardingPlaceholderButtonStyle;
  v53 = v18;
  v54 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v45;
  v21 = v46;
  sub_1A34CC0F0();
  (*(v44 + 8))(v7, v20);
  v51 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000014, 0x80000001A350F790);
  v52 = v22;
  sub_1A328A95C();
  v23 = sub_1A34CBE30();
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_1A34CBBF0();
  v27 = sub_1A34CBE10();
  v29 = v28;
  v31 = v30;

  sub_1A328A9B0(v23, v25, v13 & 1);

  LODWORD(v51) = sub_1A34CB590();
  v32 = sub_1A34CBDF0();
  v34 = v33;
  LOBYTE(v25) = v35;
  v37 = v36;
  sub_1A328A9B0(v27, v29, v31 & 1);

  v51 = v32;
  v52 = v34;
  LOBYTE(v53) = v25 & 1;
  v54 = v37;
  v38 = v48;
  sub_1A34CC1F0();
  sub_1A328A9B0(v32, v34, v25 & 1);

  v39 = v47;
  sub_1A328D790(v21, v47, &qword_1EB0CC958);
  v40 = v50;
  sub_1A328D790(v38, v50, &qword_1EB0C5988);
  v41 = v49;
  sub_1A328D790(v39, v49, &qword_1EB0CC958);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC960);
  sub_1A328D790(v40, v41 + *(v42 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v38, &qword_1EB0C5988);
  sub_1A3288FDC(v21, &qword_1EB0CC958);
  sub_1A3288FDC(v40, &qword_1EB0C5988);
  return sub_1A3288FDC(v39, &qword_1EB0CC958);
}

uint64_t sub_1A349D394@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC938);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v11;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v56 = sub_1A34CA600();
  v57 = v12 & 1;
  if (qword_1EB0C2320 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB0ED448;

  v14 = sub_1A34CA600();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v51 = v14;
  LOBYTE(v52) = v16 & 1;
  v53 = KeyPath;
  LOBYTE(v54) = 0;
  v55 = v13;
  v18 = sub_1A349FEC0();
  v19 = sub_1A349FE6C();
  sub_1A34CBEB0();

  v51 = &type metadata for NewMemojiButton;
  v52 = &type metadata for OnboardingPlaceholderButtonStyle;
  v53 = v18;
  v54 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v45;
  v21 = v46;
  sub_1A34CC0F0();
  (*(v44 + 8))(v7, v20);
  v51 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A350E9A0);
  v52 = v22;
  sub_1A328A95C();
  v23 = sub_1A34CBE30();
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_1A34CBBF0();
  v27 = sub_1A34CBE10();
  v29 = v28;
  v31 = v30;

  sub_1A328A9B0(v23, v25, v13 & 1);

  LODWORD(v51) = sub_1A34CB590();
  v32 = sub_1A34CBDF0();
  v34 = v33;
  LOBYTE(v25) = v35;
  v37 = v36;
  sub_1A328A9B0(v27, v29, v31 & 1);

  v51 = v32;
  v52 = v34;
  LOBYTE(v53) = v25 & 1;
  v54 = v37;
  v38 = v48;
  sub_1A34CC1F0();
  sub_1A328A9B0(v32, v34, v25 & 1);

  v39 = v47;
  sub_1A328D790(v21, v47, &qword_1EB0CC940);
  v40 = v50;
  sub_1A328D790(v38, v50, &qword_1EB0C5988);
  v41 = v49;
  sub_1A328D790(v39, v49, &qword_1EB0CC940);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC948);
  sub_1A328D790(v40, v41 + *(v42 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v38, &qword_1EB0C5988);
  sub_1A3288FDC(v21, &qword_1EB0CC940);
  sub_1A3288FDC(v40, &qword_1EB0C5988);
  return sub_1A3288FDC(v39, &qword_1EB0CC940);
}

uint64_t sub_1A349D920@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC920);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC928);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v11;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v56 = sub_1A34CA600();
  v57 = v12 & 1;
  if (qword_1EB0C2308 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB0ED438;

  v14 = sub_1A34CA600();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v51 = v14;
  LOBYTE(v52) = v16 & 1;
  v53 = KeyPath;
  LOBYTE(v54) = 0;
  v55 = v13;
  v18 = sub_1A349FE18();
  v19 = sub_1A349FE6C();
  sub_1A34CBEB0();

  v51 = &type metadata for NewEmojiButton;
  v52 = &type metadata for OnboardingPlaceholderButtonStyle;
  v53 = v18;
  v54 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v45;
  v21 = v46;
  sub_1A34CC0F0();
  (*(v44 + 8))(v7, v20);
  v51 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350FA80);
  v52 = v22;
  sub_1A328A95C();
  v23 = sub_1A34CBE30();
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_1A34CBBF0();
  v27 = sub_1A34CBE10();
  v29 = v28;
  v31 = v30;

  sub_1A328A9B0(v23, v25, v13 & 1);

  LODWORD(v51) = sub_1A34CB590();
  v32 = sub_1A34CBDF0();
  v34 = v33;
  LOBYTE(v25) = v35;
  v37 = v36;
  sub_1A328A9B0(v27, v29, v31 & 1);

  v51 = v32;
  v52 = v34;
  LOBYTE(v53) = v25 & 1;
  v54 = v37;
  v38 = v48;
  sub_1A34CC1F0();
  sub_1A328A9B0(v32, v34, v25 & 1);

  v39 = v47;
  sub_1A328D790(v21, v47, &qword_1EB0CC928);
  v40 = v50;
  sub_1A328D790(v38, v50, &qword_1EB0C5988);
  v41 = v49;
  sub_1A328D790(v39, v49, &qword_1EB0CC928);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC930);
  sub_1A328D790(v40, v41 + *(v42 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v38, &qword_1EB0C5988);
  sub_1A3288FDC(v21, &qword_1EB0CC928);
  sub_1A3288FDC(v40, &qword_1EB0C5988);
  return sub_1A3288FDC(v39, &qword_1EB0CC928);
}

uint64_t sub_1A349DEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7E80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - v5;
  v6 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D40);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC800);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v26 = a1;
  v13 = sub_1A349A0EC();
  swift_getKeyPath();
  v33 = v13;
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v13 + 43) == 1)
  {
  }

  else
  {
    swift_getKeyPath();
    v33 = v13;
    sub_1A34C99A0();

    v14 = *(v13 + 44);

    if ((v14 & 1) == 0)
    {
      v17 = sub_1A34CB430();
      MEMORY[0x1EEE9AC00](v17);
      *(&v25 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
      sub_1A32B51E4();
      v18 = v27;
      sub_1A34CA680();
      v19 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
      v21 = v29;
      v20 = v30;
      MEMORY[0x1A58ECCD0](v18, v30, v19);
      (*(v4 + 16))(v9, v21, v3);
      (*(v4 + 56))(v9, 0, 1, v3);
      v33 = v20;
      v34 = v19;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1A58ECCE0](v9, v3, OpaqueTypeConformance2);
      sub_1A3288FDC(v9, &qword_1EB0CC800);
      (*(v4 + 8))(v21, v3);
      (*(v28 + 8))(v18, v20);
      goto LABEL_6;
    }
  }

  (*(v4 + 56))(v9, 1, 1, v3);
  v15 = sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  v33 = v30;
  v34 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A58ECCE0](v9, v3, v16);
  sub_1A3288FDC(v9, &qword_1EB0CC800);
LABEL_6:
  v23 = sub_1A349F9AC();
  MEMORY[0x1A58ECCD0](v12, v31, v23);
  return sub_1A3288FDC(v12, &qword_1EB0CC800);
}

uint64_t sub_1A349E400(uint64_t a1)
{
  v2 = type metadata accessor for VisualIdentityOnboardingGallery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4C45434E4143, 0xE600000000000000);
  v11 = v10;
  sub_1A349FAA8(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1A34A0078(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for VisualIdentityOnboardingGallery);
  v19[0] = v9;
  v19[1] = v11;
  v16 = v19;
  v17 = 0x6B72616D78;
  v18 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A349E6DC(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for VisualIdentityOnboardingGallery() + 20);
  v7 = *v6;
  if (*(v6 + 16) == 1)
  {
    v8 = sub_1A34C9010();
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v9 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32B56DC();
    v8 = (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  v7(v8);
}

uint64_t sub_1A349E85C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7F0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-v2];
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *v3 = sub_1A34CA600();
  v3[8] = v4 & 1;
  v5 = v1[9];
  *&v3[v5] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v6 = &v3[v1[10]];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *&v3[v1[11]] = 0x4034000000000000;
  sub_1A349A23C(v0, &v3[v1[12]]);
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7F8);
  sub_1A3284D0C(qword_1EB0C18C8, &qword_1EB0CC7F0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC800);
  v8 = sub_1A349F9AC();
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A34CC380();
  return sub_1A3288FDC(v3, &qword_1EB0CC7F0);
}

double sub_1A349EA94@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  sub_1A34CCDE0();
  sub_1A34CCE00();
  MEMORY[0x1A58EE2C0](v3);
  sub_1A34CA9D0();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1A349EB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1EB0ED450 = v0;
  return result;
}

uint64_t sub_1A349EC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1EB0ED440 = v0;
  return result;
}

uint64_t sub_1A349ED1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1EB0ED448 = v0;
  return result;
}

uint64_t sub_1A349EE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1EB0ED438 = v0;
  return result;
}

double sub_1A349EF14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v62 - v4;
  v71 = sub_1A34CB160();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A34CB730();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CB0B0();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScaledRoundedRectangle();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC990);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC998);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v62 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC9A0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v62 - v18;
  v87 = *(v2 + 8);
  v80 = v2;
  v86 = *v2;
  v19 = v86;
  v20 = v87;
  sub_1A34C9010();
  v21 = v19;
  v69 = v20;
  if ((v20 & 1) == 0)
  {
    sub_1A34CD650();
    v22 = sub_1A34CBA30();
    sub_1A34CA210();

    v23 = v77;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v86, &qword_1EB0C6E58);
    (*(v78 + 8))(v23, v79);
    v21 = v81;
  }

  swift_getKeyPath();
  *&v81 = v21;
  v64 = sub_1A34A00E0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v24 = *(v21 + 40);

  if (v24)
  {
    v25 = 0.25;
  }

  else
  {
    v25 = 0.5;
  }

  v26 = *(v10 + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1A34CB200();
  (*(*(v28 - 8) + 104))(v12 + v26, v27, v28);
  *v12 = v25;
  v29 = v80[4];

  if (sub_1A34CB750())
  {
    v30 = 0.5;
  }

  else
  {
    v30 = 1.0;
  }

  sub_1A34A0078(v12, v15, type metadata accessor for ScaledRoundedRectangle);
  v31 = &v15[*(v13 + 52)];
  *v31 = v29;
  *(v31 + 2) = v30;
  *&v15[*(v13 + 56)] = 256;
  v63 = sub_1A34CCC80();
  v33 = v32;
  v34 = v74;
  v35 = &v74[*(v16 + 36)];
  sub_1A34CB740();
  v36 = v68;
  sub_1A34CB150();
  sub_1A34A00E0(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
  sub_1A34A00E0(&qword_1EB0C0938, MEMORY[0x1E697C4E8]);
  v37 = v67;
  v38 = v71;
  sub_1A34CBE70();
  (*(v70 + 8))(v36, v38);
  (*(v65 + 8))(v7, v37);
  sub_1A34CBB60();
  v39 = sub_1A34CBB40();
  v40 = v72;
  (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
  v41 = sub_1A34CBB90();
  sub_1A3288FDC(v40, &qword_1EB0C86B8);
  KeyPath = swift_getKeyPath();
  v43 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86D8) + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  v44 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86E0) + 36)];
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v46 = *MEMORY[0x1E69816C8];
  v47 = sub_1A34CC670();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  v48 = sub_1A34CC500();
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC9A8) + 36)] = v48;
  v49 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC9B0) + 36)];
  *v49 = v63;
  v49[1] = v33;
  sub_1A329D98C(v15, v34, &qword_1EB0CC990);
  sub_1A34C9010();
  if ((v69 & 1) == 0)
  {
    sub_1A34CD650();
    v50 = sub_1A34CBA30();
    sub_1A34CA210();

    v51 = v77;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v86, &qword_1EB0C6E58);
    (*(v78 + 8))(v51, v79);
    v19 = v81;
  }

  swift_getKeyPath();
  *&v81 = v19;
  sub_1A34C99A0();

  v52 = *(v19 + 40);

  if (v52 == 1)
  {
    v85 = *(v80 + 24);
    v53 = v80[2];
    v84 = v53;
    if ((v85 & 1) == 0)
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v54 = sub_1A34CBA30();
      sub_1A34CA210();

      v55 = v77;
      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A3288FDC(&v84, &qword_1EB0C8700);
      (*(v78 + 8))(v55, v79);
      v53 = v81;
    }
  }

  else
  {
    v53 = 0x3FF0000000000000;
  }

  v56 = v75;
  sub_1A329D98C(v34, v75, &qword_1EB0CC998);
  v57 = v56 + *(v73 + 36);
  *v57 = v53;
  *(v57 + 8) = 0;
  sub_1A34CCC80();
  sub_1A34CA760();
  v58 = v76;
  sub_1A329D98C(v56, v76, &qword_1EB0CC9A0);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC9B8) + 36));
  v60 = v82;
  *v59 = v81;
  v59[1] = v60;
  result = *&v83;
  v59[2] = v83;
  return result;
}

unint64_t sub_1A349F9AC()
{
  result = qword_1EB0C07A0;
  if (!qword_1EB0C07A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8D40);
    sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07A0);
  }

  return result;
}

uint64_t sub_1A349FAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentityOnboardingGallery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A349FB0C()
{
  v1 = *(type metadata accessor for VisualIdentityOnboardingGallery() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A349E6DC(v2);
}

uint64_t sub_1A349FB6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CAFA0();
  *a1 = result;
  return result;
}

uint64_t sub_1A349FBC0()
{
  sub_1A328A95C();

  return sub_1A34CC6C0();
}

unint64_t sub_1A349FC48()
{
  result = qword_1EB0C0CB8;
  if (!qword_1EB0C0CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC820);
    sub_1A3284D0C(&qword_1EB0C0468, &qword_1EB0CC828);
    sub_1A34A00E0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CB8);
  }

  return result;
}

unint64_t sub_1A349FD30()
{
  result = qword_1EB0C0EA0;
  if (!qword_1EB0C0EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC810);
    sub_1A3284D0C(&unk_1EB0C11D8, &qword_1EB0CC808);
    sub_1A34A00E0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EA0);
  }

  return result;
}

unint64_t sub_1A349FE18()
{
  result = qword_1EB0C2808;
  if (!qword_1EB0C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2808);
  }

  return result;
}

unint64_t sub_1A349FE6C()
{
  result = qword_1EB0C1590[0];
  if (!qword_1EB0C1590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB0C1590);
  }

  return result;
}

unint64_t sub_1A349FEC0()
{
  result = qword_1EB0C27B0;
  if (!qword_1EB0C27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C27B0);
  }

  return result;
}

unint64_t sub_1A349FF14()
{
  result = qword_1EB0C2660;
  if (!qword_1EB0C2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2660);
  }

  return result;
}

unint64_t sub_1A349FF68()
{
  result = qword_1EB0C2800;
  if (!qword_1EB0C2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2800);
  }

  return result;
}

uint64_t sub_1A349FFBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A34A0004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A34A0078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A34A00E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A34A0138()
{
  result = qword_1EB0C0AC8;
  if (!qword_1EB0C0AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC9B8);
    sub_1A34A01C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AC8);
  }

  return result;
}

unint64_t sub_1A34A01C4()
{
  result = qword_1EB0C0BE8;
  if (!qword_1EB0C0BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC9A0);
    sub_1A34A0250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BE8);
  }

  return result;
}

unint64_t sub_1A34A0250()
{
  result = qword_1EB0C0E98;
  if (!qword_1EB0C0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC998);
    sub_1A3284D0C(&qword_1EB0C11C8, &qword_1EB0CC990);
    sub_1A3284D0C(&qword_1EB0C0980, &qword_1EB0CC9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E98);
  }

  return result;
}

char *XPCHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  sub_1A34C8A90();
  *(v2 + qword_1EB0EE0F0) = a1;
  *(v2 + qword_1EB0EE0F8) = a2;
  v7 = *((v6 & v5) + 0x50);
  v8 = *((v6 & v5) + 0x58);
  v44.receiver = v2;
  v44.super_class = type metadata accessor for XPCHostConnection();
  v37 = a1;
  v36 = a2;
  v9 = objc_msgSendSuper2(&v44, sel_init);
  v10 = qword_1EB0EE0F0;
  v11 = *&v9[qword_1EB0EE0F0];
  v12 = v9;
  [v11 setExportedObject_];
  v13 = *(v8 + 32);
  v14 = *&v9[v10];
  v15 = v13(v7, v8);
  [v14 setExportedInterface_];

  v16 = *(v8 + 40);
  v17 = *&v9[v10];
  v18 = v16(v7, v8);
  [v17 setRemoteObjectInterface_];

  [*&v9[v10] _setQueue_];
  v19 = *&v9[v10];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v7;
  v21[3] = v8;
  v21[4] = v20;
  v42 = sub_1A34A0EF0;
  v43 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1A32A5AB4;
  v41 = &block_descriptor_30;
  v22 = _Block_copy(&aBlock);
  v23 = v19;

  [v23 setInterruptionHandler_];
  _Block_release(v22);

  v24 = *&v9[v10];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v7;
  v26[3] = v8;
  v26[4] = v25;
  v42 = sub_1A34A10DC;
  v43 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1A32A5AB4;
  v41 = &block_descriptor_10;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v28 setInvalidationHandler_];
  _Block_release(v27);

  [*&v9[v10] resume];
  if (qword_1EB0C4BA0 != -1)
  {
    swift_once();
  }

  v29 = sub_1A34CA250();
  __swift_project_value_buffer(v29, qword_1EB0CC9C0);
  v30 = sub_1A34CA230();
  v31 = sub_1A34CD660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v12;
    *v33 = v9;
    v34 = v12;
    _os_log_impl(&dword_1A31E6000, v30, v31, "Created %@", v32, 0xCu);
    sub_1A32D376C(v33);
    MEMORY[0x1A58F1010](v33, -1, -1);
    MEMORY[0x1A58F1010](v32, -1, -1);
  }

  return v12;
}

id sub_1A34A07F4()
{
  v1 = *(v0 + qword_1EB0EE0F0);
  [v1 setExportedObject_];
  [v1 setInvalidationHandler_];
  [v1 setInterruptionHandler_];

  return [v1 invalidate];
}

uint64_t sub_1A34A0874()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0CC9C0);
  __swift_project_value_buffer(v0, qword_1EB0CC9C0);
  return sub_1A34CA240();
}

uint64_t static Logger.host.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  v3 = __swift_project_value_buffer(v2, qword_1EB0CC9C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t XPCHostConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EB0EE0E8;
  v4 = sub_1A34C9780();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCHostConnection.clientObject.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A34CD890();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v14[-v7];
  v9 = [*(v1 + qword_1EB0EE0F0) remoteObjectProxy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  v10 = swift_dynamicCast();
  v11 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v10)
  {
    v12 = *(AssociatedTypeWitness - 8);
    v11(v8, 0, 1, AssociatedTypeWitness);
    return (*(v12 + 32))(a1, v8, AssociatedTypeWitness);
  }

  else
  {
    v11(v8, 1, 1, AssociatedTypeWitness);
    result = (*(v5 + 8))(v8, v4);
    __break(1u);
  }

  return result;
}

id sub_1A34A0C10(void *a1)
{
  v1 = a1;
  sub_1A34A0C78();

  v2 = sub_1A34CD0E0();

  return v2;
}

uint64_t sub_1A34A0C78()
{
  swift_getObjectType();
  MEMORY[0x1A58EEA30](60, 0xE100000000000000);
  v0 = sub_1A34CE050();
  MEMORY[0x1A58EEA30](v0);

  MEMORY[0x1A58EEA30](32, 0xE100000000000000);
  sub_1A34CDC00();
  MEMORY[0x1A58EEA30](62, 0xE100000000000000);
  return 0;
}

void sub_1A34A0D7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EB0C4BA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0CC9C0);
    v3 = v1;
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_1A31E6000, v4, v5, "Connection interrupted for host connection: %@", v6, 0xCu);
      sub_1A32D376C(v7);
      MEMORY[0x1A58F1010](v7, -1, -1);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }

    [*&v3[qword_1EB0EE0F0] invalidate];
  }
}

void sub_1A34A0F04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EB0C4BA0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0CC9C0);
    v3 = v1;
    v4 = sub_1A34CA230();
    v5 = sub_1A34CD660();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2112;
      v8 = *(v3 + qword_1EB0EE0F8);
      *(v6 + 14) = v8;
      v7[1] = v8;
      v9 = v3;
      v10 = v8;
      _os_log_impl(&dword_1A31E6000, v4, v5, "Connection invalidated for host connection: %@ on queue = %@", v6, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C40);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v7, -1, -1);
      MEMORY[0x1A58F1010](v6, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))();
  }
}

id XPCHostConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCHostConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A34A1208(uint64_t a1)
{
  v2 = qword_1EB0EE0E8;
  v3 = sub_1A34C9780();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EB0EE0F8);
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_1A331DC3C(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v10 = sub_1A34CD350();

  v11 = [v9 initWithArray_];

  sub_1A34CD550();
  v12 = sub_1A34CD540();

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

uint64_t sub_1A34A1418()
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

uint64_t VisualIdentityType.localizedDescription.getter()
{
  if (*v0)
  {
    v1 = "VISUAL_IDENTITY_AVATAR";
  }

  else
  {
    v1 = "ypePicker11Coordinator";
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000016, v1 | 0x8000000000000000);
}

uint64_t VisualIdentityType.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t VisualIdentityType.description.getter()
{
  if (*v0)
  {
    return 0x726574736F50;
  }

  else
  {
    return 0x726174617641;
  }
}

uint64_t sub_1A34A1668()
{
  if (*v0)
  {
    return 0x726574736F50;
  }

  else
  {
    return 0x726174617641;
  }
}

uint64_t sub_1A34A16EC()
{
  result = sub_1A34C9780();
  if (v1 <= 0x3F)
  {
    result = sub_1A34A17B8(319, &qword_1ED853730);
    if (v2 <= 0x3F)
    {
      result = sub_1A34A17B8(319, qword_1ED8535C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A34A17B8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A34A185C()
{
  result = type metadata accessor for VisualIdentity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A34A18F8@<X0>(uint64_t a1@<X8>)
{
  sub_1A328D790(v1, v21, &qword_1EB0CCA58);
  v22 = sub_1A34A1BE0;
  v23 = 0;
  sub_1A328D790(v1, v18, &qword_1EB0CCA58);
  v19 = sub_1A34A1C7C;
  v20 = 0;
  sub_1A328D790(v1, v15, &qword_1EB0CCA58);
  v16 = sub_1A34A1D08;
  v17 = 0;
  sub_1A328D790(v1, v12, &qword_1EB0CCA58);
  v13 = sub_1A34A1DF4;
  v14 = 0;
  sub_1A328D790(v1, v9, &qword_1EB0CCA58);
  v10 = sub_1A34A1F44;
  v11 = 0;
  sub_1A328D790(v21, v8, &qword_1EB0CCA60);
  sub_1A328D790(v18, v7, &qword_1EB0CCA68);
  sub_1A328D790(v15, v6, &qword_1EB0CCA70);
  sub_1A328D790(v12, v5, &qword_1EB0CCA78);
  sub_1A328D790(v9, v4, &qword_1EB0CCA80);
  sub_1A328D790(v8, a1, &qword_1EB0CCA60);
  sub_1A328D790(v7, a1 + 72, &qword_1EB0CCA68);
  sub_1A328D790(v6, a1 + 144, &qword_1EB0CCA70);
  sub_1A328D790(v5, a1 + 216, &qword_1EB0CCA78);
  sub_1A328D790(v4, a1 + 288, &qword_1EB0CCA80);
  sub_1A3288FDC(v9, &qword_1EB0CCA80);
  sub_1A3288FDC(v12, &qword_1EB0CCA78);
  sub_1A3288FDC(v15, &qword_1EB0CCA70);
  sub_1A3288FDC(v18, &qword_1EB0CCA68);
  sub_1A3288FDC(v21, &qword_1EB0CCA60);
  sub_1A3288FDC(v4, &qword_1EB0CCA80);
  sub_1A3288FDC(v5, &qword_1EB0CCA78);
  sub_1A3288FDC(v6, &qword_1EB0CCA70);
  sub_1A3288FDC(v7, &qword_1EB0CCA68);
  return sub_1A3288FDC(v8, &qword_1EB0CCA60);
}

__n128 sub_1A34A1BE0@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = *(a1 + 64);
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v10 = 0;
  sub_1A328D790(&v11, v8, &qword_1EB0CA1E0);
  sub_1A34CC730();
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 8) = v5;
  v6 = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v6;
  *(a2 + 80) = v15;
  result = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = result;
  return result;
}

double sub_1A34A1C7C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A3335004(v3, v4, v5, v9);
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v10;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  return result;
}

__n128 sub_1A34A1D08@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v19 = a1[2];
  v20 = v3;
  v21 = *(a1 + 8);
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v16 = 0;
  sub_1A328D790(&v17, v14, &qword_1EB0C5420);
  sub_1A34CC730();
  v5 = v14[0];
  v6 = v15;
  v16 = 0;
  sub_1A34CC730();
  v7 = v14[0];
  v8 = v15;
  v9 = sub_1A34CA4D0();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v11 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v11;
  *(a2 + 96) = v21;
  result = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = result;
  *(a2 + 104) = v9 & 1;
  *(a2 + 112) = v13;
  *(a2 + 120) = v10 & 1;
  return result;
}

double sub_1A34A1DF4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v19 = a1[4];
  v20 = v3;
  v21 = *(a1 + 96);
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A328D790(&v15, v24, qword_1EB0CCA88);
  sub_1A33C4524();
  v6 = sub_1A34CA600();
  v8 = v7;
  v23[0] = 0;
  sub_1A34CC730();
  v9 = *&v24[8];
  *&v24[55] = v18;
  *&v24[71] = v19;
  *&v24[87] = v20;
  *&v24[7] = v15;
  *&v24[23] = v16;
  *&v24[39] = v17;
  v10 = *&v24[32];
  *(a2 + 57) = *&v24[48];
  v11 = *&v24[80];
  *(a2 + 73) = *&v24[64];
  *(a2 + 89) = v11;
  result = *v24;
  v13 = *&v24[16];
  *(a2 + 9) = *v24;
  *(a2 + 25) = v13;
  v14 = v24[0];
  v24[103] = v21;
  *a2 = v6;
  *(a2 + 8) = v8 & 1;
  *(a2 + 105) = *&v24[96];
  *(a2 + 41) = v10;
  *(a2 + 113) = *v23;
  *(a2 + 116) = *&v23[3];
  *(a2 + 120) = v14;
  *(a2 + 124) = *&v22[3];
  *(a2 + 121) = *v22;
  *(a2 + 128) = v9;
  return result;
}

uint64_t sub_1A34A1F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  sub_1A34C9010();
  sub_1A34C9010();

  sub_1A31EE004(v7, v8);
  sub_1A34CC730();
  result = sub_1A34CA4D0();
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = result & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10 & 1;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  return result;
}

uint64_t sub_1A34A2010(uint64_t a1)
{
  sub_1A31EE4BC(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCA58);
  sub_1A34CC910();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A34A206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCA58);
  MEMORY[0x1A58EE120](v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  v5 = *(a1 + 16);
  v6 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a2, v6 ^ 1u, 1, v5);
}

uint64_t sub_1A34A2124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = a1[2];
  v5 = sub_1A34CC960();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v54 - v6;
  v7 = a1[3];
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v54 - v11;
  v12 = sub_1A34CD890();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = *(v4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v54 - v20;
  v21 = sub_1A34CD890();
  v69 = *(v21 - 8);
  v70 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v54 - v24;
  v25 = v2;
  sub_1A34A206C(a1, v15);
  v26 = v16;
  if ((*(v16 + 48))(v15, 1, v4) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v27 = v67;
    (*(v71 + 56))(v67, 1, 1, v7);
    v28 = *(a1[5] + 8);
  }

  else
  {
    v55 = *(v16 + 32);
    v29 = v66;
    v55(v66, v15, v4);
    v30 = *(v25 + 64);
    v58 = *(v25 + 56);
    v57 = v30;
    v59 = v7;
    v56 = v16;
    v31 = v60;
    (*(v26 + 16))(v60, v29, v4);
    sub_1A34CD450();
    v32 = sub_1A34CD440();
    v33 = v59;
    v34 = (*(v26 + 80) + 64) & ~*(v26 + 80);
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    *(v35 + 2) = v32;
    *(v35 + 3) = v36;
    *(v35 + 4) = v4;
    *(v35 + 5) = v33;
    v38 = a1[4];
    v54 = a1[5];
    v37 = v54;
    *(v35 + 6) = v38;
    *(v35 + 7) = v37;
    v55(&v35[v34], v31, v4);
    (*(*(a1 - 1) + 16))(v73, v25, a1);
    v39 = sub_1A34CD440();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = MEMORY[0x1E69E85E0];
    *(v40 + 32) = v4;
    *(v40 + 40) = v33;
    *(v40 + 48) = v38;
    v41 = v54;
    *(v40 + 56) = v54;
    v42 = v73[3];
    *(v40 + 96) = v73[2];
    *(v40 + 112) = v42;
    *(v40 + 128) = v74;
    v43 = v73[1];
    *(v40 + 64) = v73[0];
    *(v40 + 80) = v43;
    v44 = v61;
    sub_1A34CC940();
    v45 = v65;
    v58(v44);
    (*(v63 + 8))(v44, v64);
    (*(v56 + 8))(v66, v4);
    v28 = *(v41 + 8);
    v46 = v62;
    sub_1A3345BC8(v45, v33, v28);
    v47 = v71;
    v48 = *(v71 + 8);
    v48(v45, v33);
    sub_1A3345BC8(v46, v33, v28);
    v48(v46, v33);
    v27 = v67;
    (*(v47 + 32))(v67, v45, v33);
    (*(v47 + 56))(v27, 0, 1, v33);
  }

  v49 = v68;
  sub_1A34480D0(v27, v68);
  v50 = v70;
  v51 = *(v69 + 8);
  v51(v27, v70);
  v75 = v28;
  WitnessTable = swift_getWitnessTable();
  sub_1A3345BC8(v49, v50, WitnessTable);
  return (v51)(v49, v50);
}

uint64_t sub_1A34A2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[3] = a5;
  v11[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  type metadata accessor for EditorPaletteIf();
  return sub_1A34A2010(v11);
}

uint64_t sub_1A34A28BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A34A28F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A34A2940(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A34A29A8()
{
  result = qword_1EB0CCB10;
  if (!qword_1EB0CCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCB10);
  }

  return result;
}

uint64_t sub_1A34A2AA4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED098);
  __swift_project_value_buffer(v0, qword_1EB0ED098);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2B24()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED050);
  __swift_project_value_buffer(v0, qword_1EB0ED050);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2BA4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED038);
  __swift_project_value_buffer(v0, qword_1EB0ED038);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2C24()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED068);
  __swift_project_value_buffer(v0, qword_1EB0ED068);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2CA4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ED080);
  __swift_project_value_buffer(v0, qword_1EB0ED080);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2D24()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EE100);
  __swift_project_value_buffer(v0, qword_1EB0EE100);
  return sub_1A34CA240();
}

uint64_t sub_1A34A2DA8()
{
  v0 = sub_1A34CC450();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F0);
  sub_1A34CCC30();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F8);
  sub_1A34CCC10();
  *(swift_allocObject() + 16) = xmmword_1A34DD060;
  sub_1A34CCBF0();
  sub_1A34CCBC0();
  sub_1A34CCBD0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1A34CC570();
  sub_1A34CCC20();

  return v4;
}

uint64_t sub_1A34A3030()
{
  v0 = sub_1A34CCC60();
  __swift_allocate_value_buffer(v0, qword_1EB0ECEF0);
  __swift_project_value_buffer(v0, qword_1EB0ECEF0);
  sub_1A34A3090();
  return sub_1A34CCC50();
}

unint64_t sub_1A34A3090()
{
  result = qword_1EB0C1D50;
  if (!qword_1EB0C1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D50);
  }

  return result;
}

unint64_t sub_1A34A30F8()
{
  result = qword_1EB0C1D40;
  if (!qword_1EB0C1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D40);
  }

  return result;
}

unint64_t sub_1A34A3150()
{
  result = qword_1EB0C1D48;
  if (!qword_1EB0C1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D48);
  }

  return result;
}

uint64_t sub_1A34A31A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1A34CA670();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;
  sub_1A34C9010();
  v12 = sub_1A34CCC80();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = sub_1A34CB550();
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA878) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_1A328D790(v33, v20, &qword_1EB0CCB98);
  sub_1A328D790(&v35, v20, &qword_1EB0CA6B8);
  sub_1A3288FDC(v40, &qword_1EB0CA6B8);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1A3288FDC(v20, &qword_1EB0CCB98);
}

uint64_t sub_1A34A33A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1A34CA670();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;
  sub_1A34C9010();
  v12 = sub_1A34CCC80();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB88);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB90) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_1A328D790(v33, v20, &qword_1EB0CCB98);
  sub_1A328D790(&v35, v20, &qword_1EB0CA6B8);
  sub_1A3288FDC(v40, &qword_1EB0CA6B8);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1A3288FDC(v20, &qword_1EB0CCB98);
}

uint64_t SnowglobeAvatarView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = sub_1A34A3600;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  return result;
}

void *SnowglobeAvatarView.init(contacts:listener:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  *(a4 + 16) = sub_1A31ED290;
  *(a4 + 24) = result;
  *(a4 + 32) = 0;
  return result;
}

uint64_t SnowglobeAvatarView.Model.__allocating_init(contacts:listener:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  SnowglobeAvatarView.Model.init(contacts:listener:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1A34A36DC(void *a1)
{
  v1 = [a1 identifier];
  sub_1A34CD110();

  return sub_1A34CDA40();
}

int64_t sub_1A34A3754(uint64_t a1)
{
  v2 = type metadata accessor for SnowglobeAvatarView.Model();
  sub_1A31EDC74(&unk_1ED8541F0, type metadata accessor for SnowglobeAvatarView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (qword_1ED854358 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED857DE0;
  if (qword_1ED857DE0 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v20[0] >> 62;
  if (v20[0] >> 62)
  {
LABEL_23:
    v18 = sub_1A34CD9B0();
    result = sub_1A34CD9B0();
    if (result < 0)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    if (v18 >= v3)
    {
      v19 = v3;
    }

    else
    {
      v19 = v18;
    }

    if (v18 < 0)
    {
      v19 = v3;
    }

    if (v3)
    {
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }

    result = sub_1A34CD9B0();
    if (result >= v6)
    {
      goto LABEL_12;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= qword_1ED857DE0)
  {
    v5 = qword_1ED857DE0;
  }

  else
  {
    v5 = *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1ED857DE0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (result < v6)
  {
    goto LABEL_33;
  }

LABEL_12:
  if ((v20[0] & 0xC000000000000001) != 0 && v6)
  {
    sub_1A31EC194(0, &qword_1ED854E70);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_1A34CDAE0();
      v7 = v8;
    }

    while (v6 != v8);
  }

  else
  {
  }

  if (v2)
  {
    v10 = sub_1A34CDC30();
    v11 = v13;
    v9 = v14;
    v12 = v15;
  }

  else
  {
    v9 = 0;
    v10 = v20[0] & 0xFFFFFFFFFFFFFF8;
    v11 = (v20[0] & 0xFFFFFFFFFFFFFF8) + 32;
    v12 = (2 * v6) | 1;
  }

  v20[5] = v10;
  v20[6] = v11;
  v20[7] = v9;
  v20[8] = v12;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  sub_1A31F0BF8(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBB0);
  sub_1A3284D0C(&qword_1EB0C0078, &qword_1EB0CCBB0);
  sub_1A34A55A4();
  sub_1A31EBC58();
  return sub_1A34CC9C0();
}

id sub_1A34A3A98@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *a1;
  type metadata accessor for SnowglobeAvatarView.Model();
  sub_1A31EDC74(&unk_1ED8541F0, type metadata accessor for SnowglobeAvatarView.Model);
  v3 = sub_1A34CA650() + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);

  v6 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v7 = sub_1A32F27E4(v10, 1);
  a2[3] = v6;
  v8 = sub_1A31EDC74(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  *a2 = v7;
  a2[4] = v8;
  a2[5] = Strong;
  a2[6] = v5;

  return v10;
}

int64_t sub_1A34A3BE4()
{
  v0 = type metadata accessor for SnowglobeAvatarView.Model();
  sub_1A31EDC74(&unk_1ED8541F0, type metadata accessor for SnowglobeAvatarView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v1 = v26;
  if (qword_1ED854358 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = qword_1ED857DE0;
    if (qword_1ED857DE0 < 0)
    {
      __break(1u);
    }

    else
    {
      v0 = v1 >> 62;
      if (!(v1 >> 62))
      {
        result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= qword_1ED857DE0)
        {
          v4 = qword_1ED857DE0;
        }

        else
        {
          v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (qword_1ED857DE0)
        {
          v5 = v4;
        }

        else
        {
          v5 = 0;
        }

        if (result < v5)
        {
          goto LABEL_47;
        }

        goto LABEL_11;
      }
    }

    v24 = sub_1A34CD9B0();
    result = sub_1A34CD9B0();
    if (result < 0)
    {
      goto LABEL_50;
    }

    if (v24 >= v2)
    {
      v25 = v2;
    }

    else
    {
      v25 = v24;
    }

    if (v24 < 0)
    {
      v25 = v2;
    }

    if (v2)
    {
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }

    result = sub_1A34CD9B0();
    if (result < v5)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

LABEL_11:
    if ((v1 & 0xC000000000000001) != 0 && v5)
    {
      sub_1A31EC194(0, &qword_1ED854E70);

      v6 = 0;
      do
      {
        v7 = v6 + 1;
        sub_1A34CDAE0();
        v6 = v7;
      }

      while (v5 != v7);
    }

    else
    {
    }

    if (v0)
    {
      sub_1A34CDC30();
      v8 = v9;
      v0 = v10;
      v12 = v11;

      v5 = v12 >> 1;
    }

    else
    {
      v8 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v13 = v5 - v0;
    if (__OFSUB__(v5, v0))
    {
      goto LABEL_48;
    }

    if (!v13)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    v1 = &v26;
    result = sub_1A32EBB94(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_49;
    }

    v14 = v26;
    if (v5 <= v0)
    {
      v15 = v0;
    }

    else
    {
      v15 = v5;
    }

    v16 = v15 - v0;
    v17 = (v8 + 8 * v0);
    while (v16)
    {
      v1 = *v17;
      v18 = [v1 identifier];
      v19 = sub_1A34CD110();
      v0 = v20;

      v26 = v14;
      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        v1 = &v26;
        sub_1A32EBB94((v21 > 1), v22 + 1, 1);
        v14 = v26;
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v19;
      v23[5] = v0;
      --v16;
      ++v17;
      if (!--v13)
      {
        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  swift_unknownObjectRelease();
  v14 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
  sub_1A34A54DC();
  return sub_1A34CDA40();
}

uint64_t sub_1A34A3F78@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  *a1 = v3;
  return result;
}

uint64_t sub_1A34A3FF8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A34C9010();
  return sub_1A34CA380();
}

uint64_t sub_1A34A4074()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  return v1;
}

uint64_t sub_1A34A40E8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB70);
  sub_1A34CA340();
  return swift_endAccess();
}

uint64_t sub_1A34A4160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB70);
  sub_1A34CA350();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1A34A42E4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB70);
  sub_1A34CA340();
  return swift_endAccess();
}

uint64_t SnowglobeAvatarView.Model.init(contacts:listener:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = v3;
  v10 = v7 + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener;
  *(v7 + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1ED854358 != -1)
  {
    swift_once();
  }

  v11 = &unk_1ED857000;
  v12 = qword_1ED857DE0;
  if (qword_1ED857DE0 < 0)
  {
    __break(1u);
LABEL_53:
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = v11;
    }

    i = sub_1A34CD9B0();
    result = sub_1A34CD9B0();
    if (result < 0)
    {
LABEL_74:
      __break(1u);
      return result;
    }

    if (i >= v12)
    {
      v48 = v12;
    }

    else
    {
      v48 = i;
    }

    if (i < 0)
    {
      v48 = v12;
    }

    if (v12)
    {
      v15 = v48;
    }

    else
    {
      v15 = 0;
    }

    if (sub_1A34CD9B0() >= v15)
    {
      goto LABEL_12;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v11 = (a1 & 0xFFFFFFFFFFFFFF8);
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 >= qword_1ED857DE0)
  {
    v14 = qword_1ED857DE0;
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1ED857DE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v13 < v15)
  {
    goto LABEL_66;
  }

LABEL_12:
  if ((a1 & 0xC000000000000001) != 0 && v15)
  {
    sub_1A31EC194(0, &qword_1ED854E70);

    v16 = 0;
    do
    {
      v17 = v16 + 1;
      sub_1A34CDAE0();
      v16 = v17;
    }

    while (v15 != v17);
  }

  else
  {
  }

  if (v6)
  {
    v4 = sub_1A34CDC30();
    v6 = v18;
    i = v19;
    v15 = v20;

    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    i = 0;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v15 = (2 * v15) | 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v15 >> 1, i))
  {
    goto LABEL_71;
  }

  if (v23 != (v15 >> 1) - i)
  {
    goto LABEL_72;
  }

  v24 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  i = v24;
  if (v24)
  {
    goto LABEL_30;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v21)
  {
    swift_unknownObjectRelease();
LABEL_30:
    swift_beginAccess();
    v4 = i;
    *&v57 = i;
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB78);
    sub_1A34CA330();
    swift_endAccess();
    *(v10 + 8) = a3;
    swift_unknownObjectWeakAssign();

    v25 = *(i + 16);
    v49 = v7;
    if (!v25)
    {
      goto LABEL_68;
    }

LABEL_33:
    v62 = MEMORY[0x1E69E7CC0];
    a3 = &v62;
    sub_1A32EBE74(0, v25 & ~(v25 >> 63), 0);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = v62;
      v55 = i & 0xC000000000000001;
      v27 = objc_opt_self();
      v28 = i;
      v54 = v27;
      v29 = 0;
      v51 = *MEMORY[0x1E695C328];
      v50 = *MEMORY[0x1E695C400];
      v30 = &selRef_fingerprintForContactIdentifier_;
      v52 = v25;
      v53 = i;
      while (1)
      {
        v31 = v55 ? MEMORY[0x1A58EF310](v29, v28) : *(v28 + 8 * v29 + 32);
        v32 = v31;
        v33 = [v31 identifier];
        v34 = sub_1A34CD110();
        v36 = v35;
        result = [v54 componentsForContact_];
        if (!result)
        {
          break;
        }

        v38 = result;

        if ([v32 v30[359]])
        {
          v56 = [v32 contactType] == 1;
        }

        else
        {
          v56 = 0;
        }

        if ([v32 v30[359]] && (v39 = objc_msgSend(v32, sel_thumbnailImageData)) != 0)
        {
          v40 = v39;
          v41 = sub_1A34C9690();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0xF000000000000000;
        }

        sub_1A34CDF80();
        sub_1A34CDF40();
        if (v43 >> 60 != 15)
        {
          sub_1A34C96A0();
        }

        v65 = v59;
        v66 = v60;
        v67 = v61;
        v63 = v57;
        v64 = v58;
        v44 = sub_1A34CDF60();
        sub_1A31EEE60(v41, v43);

        v62 = v26;
        v46 = *(v26 + 16);
        v45 = *(v26 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1A32EBE74((v45 > 1), v46 + 1, 1);
          v26 = v62;
        }

        ++v29;
        *(v26 + 16) = v46 + 1;
        v47 = v26 + 40 * v46;
        *(v47 + 32) = v34;
        *(v47 + 40) = v36;
        *(v47 + 48) = v38;
        *(v47 + 56) = v56;
        *(v47 + 64) = v44;
        v28 = v53;
        v30 = &selRef_fingerprintForContactIdentifier_;
        if (v52 == v29)
        {

          swift_unknownObjectRelease();
          goto LABEL_69;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_unknownObjectRelease_n();
LABEL_22:
    sub_1A31ED194(v4, v6, i, v15, &qword_1ED854E70);
  }

LABEL_67:
  v25 = sub_1A34CD9B0();
  v49 = v7;
  if (v25)
  {
    goto LABEL_33;
  }

LABEL_68:
  swift_unknownObjectRelease();

  v26 = MEMORY[0x1E69E7CC0];
LABEL_69:
  result = v49;
  *(v49 + 16) = v26;
  return result;
}

unint64_t sub_1A34A4910()
{
  result = qword_1ED853F48;
  if (!qword_1ED853F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB40);
    sub_1A3284D0C(&qword_1ED853F00, &qword_1EB0CCB48);
    sub_1A34A49C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F48);
  }

  return result;
}

unint64_t sub_1A34A49C8()
{
  result = qword_1ED853F70;
  if (!qword_1ED853F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F70);
  }

  return result;
}

unint64_t sub_1A34A4A1C()
{
  result = qword_1ED853F40;
  if (!qword_1ED853F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB20);
    sub_1A34A4AA8();
    sub_1A34A49C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F40);
  }

  return result;
}

unint64_t sub_1A34A4AA8()
{
  result = qword_1ED853F50;
  if (!qword_1ED853F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB38);
    sub_1A34A4B60();
    sub_1A3284D0C(&qword_1ED853F08, &qword_1EB0CCB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F50);
  }

  return result;
}

unint64_t sub_1A34A4B60()
{
  result = qword_1ED853F60;
  if (!qword_1ED853F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB50);
    sub_1A3284D0C(&unk_1ED853FE8, &qword_1EB0CCB58);
    sub_1A34A4C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F60);
  }

  return result;
}

unint64_t sub_1A34A4C18()
{
  result = qword_1ED853EF8;
  if (!qword_1ED853EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB60);
    sub_1A31EBC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853EF8);
  }

  return result;
}

char *sub_1A34A4CA4(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v29 = a1;
    v3 = sub_1A34CD9B0();
    a1 = v29;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a1;
    v38 = MEMORY[0x1E69E7CC0];
    result = sub_1A32EBE74(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v1;
      v4 = v38;
      v36 = v5 & 0xC000000000000001;
      v7 = objc_opt_self();
      v8 = v5;
      v35 = v7;
      v9 = 0;
      v32 = *MEMORY[0x1E695C328];
      v31 = *MEMORY[0x1E695C400];
      v10 = &selRef_fingerprintForContactIdentifier_;
      v33 = v3;
      v34 = v5;
      while (1)
      {
        v11 = v36 ? MEMORY[0x1A58EF310](v9, v8) : *(v8 + 8 * v9 + 32);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_1A34CD110();
        v16 = v15;
        result = [v35 componentsForContact_];
        if (!result)
        {
          break;
        }

        v17 = result;

        if ([v12 v10[359]])
        {
          v37 = [v12 contactType] == 1;
        }

        else
        {
          v37 = 0;
        }

        if ([v12 v10[359]] && (v18 = objc_msgSend(v12, sel_thumbnailImageData)) != 0)
        {
          v19 = v18;
          v20 = sub_1A34C9690();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0xF000000000000000;
        }

        sub_1A34CDF80();
        sub_1A34CDF40();
        if (v22 >> 60 != 15)
        {
          sub_1A34C96A0();
        }

        v23 = sub_1A34CDF60();
        sub_1A31EEE60(v20, v22);

        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1A32EBE74((v24 > 1), v25 + 1, 1);
        }

        ++v9;
        *(v38 + 16) = v25 + 1;
        v26 = v38 + 40 * v25;
        *(v26 + 32) = v14;
        *(v26 + 40) = v16;
        *(v26 + 48) = v17;
        *(v26 + 56) = v37;
        *(v26 + 64) = v23;
        v8 = v34;
        v10 = &selRef_fingerprintForContactIdentifier_;
        if (v33 == v9)
        {
          v2 = v30;
          goto LABEL_23;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v27 = *(v2 + 16);

    v28 = sub_1A342770C(v4, v27);

    if (v28)
    {
    }

    else
    {
      *(v2 + 16) = v4;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A34C9010();

      return sub_1A34CA380();
    }
  }

  return result;
}

uint64_t SnowglobeAvatarView.Model.deinit()
{

  v1 = OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model__contacts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A31F08B0(v0 + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener);
  return v0;
}

uint64_t sub_1A34A50B8@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() standardPreferences];
  v5 = sub_1A34CD0E0();
  v6 = [v4 userHasOptedInToPreference_];

  if (v6)
  {
    a1(v9);
    sub_1A34CDA30();
    sub_1A32F7584(v9);
    v7 = sub_1A34CC470();
  }

  else
  {
    v7 = sub_1A34CC4E0();
  }

  sub_1A34A33A4(v7, a2);
}

void sub_1A34A5208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56D8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A34A52F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_1A34A533C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A34A5424()
{
  result = qword_1ED853F20;
  if (!qword_1ED853F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB80);
    sub_1A34A4910();
    sub_1A34A4A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F20);
  }

  return result;
}

unint64_t sub_1A34A54DC()
{
  result = qword_1EB0CCBA8;
  if (!qword_1EB0CCBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCBA8);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  sub_1A31F3C20();

  return swift_deallocObject();
}

unint64_t sub_1A34A55A4()
{
  result = qword_1EB0C00A0;
  if (!qword_1EB0C00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C00A0);
  }

  return result;
}

unint64_t sub_1A34A55F8()
{
  result = qword_1ED853F58;
  if (!qword_1ED853F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB90);
    sub_1A3284D0C(&qword_1ED853F10, &qword_1EB0CCB88);
    sub_1A3284D0C(&qword_1ED853F30, &qword_1EB0CA6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F58);
  }

  return result;
}

uint64_t sub_1A34A56DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
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

uint64_t sub_1A34A5724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A34A579C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1A34CB0B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  sub_1A34C9010();
  if ((v11 & 1) == 0)
  {
    sub_1A34CD650();
    v12 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A34A71D0(v1);
    (*(v7 + 8))(v9, v6);
    v10 = v19;
  }

  swift_getKeyPath();
  v19 = v10;
  sub_1A34A74A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v13 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  sub_1A34A7200(v10 + v13, v5);
  v14 = type metadata accessor for VisualIdentity(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v5, 1, v14) == 1)
  {
    swift_getKeyPath();
    v18[0] = v10;
    sub_1A34C99A0();

    v16 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v10 + v16, a1);

    result = v15(v5, 1, v14);
    if (result != 1)
    {
      return sub_1A34A7270(v5);
    }
  }

  else
  {

    return sub_1A3336E78(v5, a1);
  }

  return result;
}

uint64_t sub_1A34A5AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1A34CB0B0();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBB8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  *v12 = sub_1A34CB280();
  *(v12 + 1) = 0x4034000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBC0);
  sub_1A34A5F90(v1, &v12[*(v13 + 44)]);
  v14 = sub_1A34CCCB0();
  sub_1A34A579C(v8);
  v15 = &v12[*(v10 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBC8) + 36);
  v17 = sub_1A34C9780();
  (*(*(v17 - 8) + 16))(v15 + v16, v8, v17);
  sub_1A34A74E8(v8, type metadata accessor for VisualIdentity);
  *v15 = v14;
  sub_1A34CCCB0();
  v18 = sub_1A34CCCC0();

  v19 = *v2;
  v20 = *(v2 + 8);
  sub_1A34C9010();
  v21 = v19;
  if ((v20 & 1) == 0)
  {
    sub_1A34CD650();
    v22 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A34A71D0(v2);
    (*(v32 + 8))(v5, v3);
    v21 = v34;
  }

  v31 = v3;
  swift_getKeyPath();
  v34 = v21;
  sub_1A34A74A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v23 = *(v21 + 40);

  v24 = v33;
  sub_1A3213180(v12, v33);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBD0) + 36);
  *v25 = v18;
  *(v25 + 8) = v23;
  sub_1A3288FDC(v12, &qword_1EB0CCBB8);
  v26 = sub_1A34CCCB0();
  sub_1A34C9010();
  if ((v20 & 1) == 0)
  {
    sub_1A34CD650();
    v27 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A34A71D0(v2);
    (*(v32 + 8))(v5, v31);
    v19 = v34;
  }

  swift_getKeyPath();
  v34 = v19;
  sub_1A34C99A0();

  v28 = *(v19 + 42);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBD8);
  v30 = v24 + *(result + 36);
  *v30 = v26;
  *(v30 + 8) = v28;
  return result;
}

uint64_t sub_1A34A5F90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v53 = sub_1A34CB0B0();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9780();
  v55 = *(v4 - 8);
  v5 = v55;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v7;
  v8 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBE0);
  MEMORY[0x1EEE9AC00](v60);
  v12 = (&v50 - v11);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBE8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBF0);
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v50 - v18;
  *v12 = sub_1A34CCC80();
  v12[1] = v19;
  v20 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBF8) + 44);
  v56 = a1;
  sub_1A34A67E4(a1, v20);
  v70 = 0x3FF0000000000000;
  sub_1A34A579C(v10);
  v21 = *(v5 + 16);
  v22 = v4;
  v21(v7, v10, v4);
  sub_1A34A74E8(v10, type metadata accessor for VisualIdentity);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC00);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC08);
  v25 = sub_1A3284D0C(&qword_1EB0CCC10, &qword_1EB0CCBE0);
  v26 = sub_1A34A74A0(&qword_1EB0C2A38, MEMORY[0x1E69695A8]);
  v27 = sub_1A34A72D8();
  v28 = sub_1A3284D0C(&qword_1EB0CCC30, &qword_1EB0CCC08);
  v57 = v27;
  v58 = v26;
  v59 = v25;
  v29 = v22;
  v61 = v23;
  v62 = v14;
  v30 = v60;
  v31 = v54;
  sub_1A34CC060();
  (*(v55 + 8))(v31, v29);
  v32 = v56;
  sub_1A3288FDC(v12, &qword_1EB0CCBE0);
  v80 = 0x3FF0000000000000;
  v33 = *v32;
  LOBYTE(a1) = *(v32 + 8);
  sub_1A34C9010();
  if ((a1 & 1) == 0)
  {
    sub_1A34CD650();
    v34 = sub_1A34CBA30();
    sub_1A34CA210();

    v35 = v51;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A34A71D0(v32);
    (*(v52 + 8))(v35, v53);
    v33 = v70;
  }

  swift_getKeyPath();
  v70 = v33;
  sub_1A34A74A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v36 = *(v33 + 40);

  v79 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC38);
  v70 = v30;
  v71 = &type metadata for VisualIdentityTransitionProperties;
  v72 = v29;
  v73 = v61;
  v74 = v24;
  v75 = v59;
  v76 = v58;
  v77 = v57;
  v78 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1A336F284();
  sub_1A34A7390();
  v38 = v64;
  v37 = v65;
  v39 = v62;
  sub_1A34CC060();
  (*(v63 + 8))(v39, v37);
  type metadata accessor for VisualIdentityEditorViewModel();
  v40 = sub_1A34CA600();
  LOBYTE(v39) = v41;
  v43 = v66;
  v42 = v67;
  v44 = *(v67 + 16);
  v45 = v68;
  v44(v66, v38, v68);
  v46 = v69;
  v44(v69, v43, v45);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC58) + 48)];
  *v47 = v40;
  v47[8] = v39 & 1;
  v48 = *(v42 + 8);
  sub_1A34C9010();
  v48(v38, v45);

  return (v48)(v43, v45);
}

uint64_t sub_1A34A67E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VisualIdentityPreview();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-v9];
  sub_1A34A579C(&v6[v4[7]]);
  v11 = *(a1 + 32);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A34A74A0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  *v6 = sub_1A34CA600();
  v6[8] = v12 & 1;
  *(v6 + 2) = swift_getKeyPath();
  *(v6 + 3) = 0;
  v6[32] = 0;
  *(v6 + 5) = swift_getKeyPath();
  v6[48] = 0;
  *&v6[v4[10]] = 0;
  v13 = &v6[v4[11]];
  v6[v4[8]] = 1;
  v6[v4[9]] = 1;
  *v13 = v11;
  v13[8] = 0;
  v17[15] = 0;
  sub_1A34A74A0(&qword_1EB0C2268, type metadata accessor for VisualIdentityPreview);
  sub_1A32CCEC4();
  sub_1A34CC250();
  sub_1A34A74E8(v6, type metadata accessor for VisualIdentityPreview);
  KeyPath = swift_getKeyPath();
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC78);
  v16 = a2 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_1A34A6B20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a2;
  sub_1A34CCE10();
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v14 - 8) + 16))(a5, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v16 = (a5 + *(result + 36));
  *v16 = v9;
  v16[1] = v9;
  v16[2] = v11;
  v16[3] = v13;
  return result;
}

uint64_t sub_1A34A6BF8@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC08);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCC68);
  v9 = sub_1A3284D0C(&qword_1EB0C2F48, &qword_1EB0CCC68);
  v13[1] = MEMORY[0x1E69E63B0];
  v13[2] = v8;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v9;
  swift_getOpaqueTypeConformance2();
  sub_1A34CA870();
  v10 = sub_1A3284D0C(&qword_1EB0CCC30, &qword_1EB0CCC08);
  MEMORY[0x1A58EC4C0](v4, &type metadata for VisualIdentityTransitionProperties, v1, v10);
  v11 = *(v2 + 8);
  v11(v4, v1);
  MEMORY[0x1A58EC4E0](v7, &type metadata for VisualIdentityTransitionProperties, v1, v10);
  MEMORY[0x1A58EC4D0](v4, &type metadata for VisualIdentityTransitionProperties, v1, v10);
  v11(v4, v1);
  return (v11)(v7, v1);
}

uint64_t sub_1A34A6E88@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v18 = a1;
  v3 = sub_1A34CC860();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCC68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v21 = a2;
  v19 = 0;
  v20 = 1;
  sub_1A34CC850();
  v14 = MEMORY[0x1E69E63B0];
  sub_1A34CAA90();
  v15 = sub_1A3284D0C(&qword_1EB0C2F48, &qword_1EB0CCC68);
  MEMORY[0x1A58ED080](v10, v14, v4, v15);
  v16 = *(v5 + 8);
  v16(v10, v4);
  v21 = 1.0;
  sub_1A34CC840();
  v19 = 0;
  v20 = 1;
  sub_1A34CAA90();
  MEMORY[0x1A58ED080](v7, v14, v4, v15);
  v16(v7, v4);
  MEMORY[0x1A58ED0A0](v13, v14, v4, v15);
  sub_1A34CB870();
  v16(v7, v4);
  v16(v10, v4);
  return (v16)(v13, v4);
}

uint64_t sub_1A34A7200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A34A7270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A34A72D8()
{
  result = qword_1EB0CCC18;
  if (!qword_1EB0CCC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCC00);
    sub_1A3284D0C(&qword_1EB0CCC20, &qword_1EB0CCC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCC18);
  }

  return result;
}

unint64_t sub_1A34A7390()
{
  result = qword_1EB0CCC40;
  if (!qword_1EB0CCC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCC38);
    sub_1A3284D0C(&qword_1EB0CCC48, &qword_1EB0CCC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCC40);
  }

  return result;
}

double sub_1A34A7448@<D0>(double *a1@<X8>)
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  result = v3;
  *a1 = v3;
  a1[1] = 1.0;
  return result;
}

uint64_t sub_1A34A74A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A34A74E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A34A7558()
{
  result = qword_1EB0CCC80;
  if (!qword_1EB0CCC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCBD8);
    sub_1A34A7610();
    sub_1A3284D0C(&qword_1EB0CCCC0, &qword_1EB0CCCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCC80);
  }

  return result;
}

unint64_t sub_1A34A7610()
{
  result = qword_1EB0CCC88;
  if (!qword_1EB0CCC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCBD0);
    sub_1A34A76C8();
    sub_1A3284D0C(&qword_1EB0CCCB0, &qword_1EB0CCCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCC88);
  }

  return result;
}

unint64_t sub_1A34A76C8()
{
  result = qword_1EB0CCC90;
  if (!qword_1EB0CCC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCBB8);
    sub_1A3284D0C(&qword_1EB0CCC98, &qword_1EB0CCCA0);
    sub_1A3284D0C(&qword_1EB0CCCA8, &qword_1EB0CCBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCC90);
  }

  return result;
}

uint64_t sub_1A34A77AC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v39 = a8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = sub_1A34CB3F0();
  v38 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  if (v36)
  {
    v35(v37, v25);
    v28 = v40;
    sub_1A3345BC8(v20, a5, v40);
    v29 = *(v17 + 8);
    v29(v20, a5);
    sub_1A3345BC8(v23, a5, v28);
    sub_1A342B9B8(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
  }

  else
  {
    v30 = v41;
    sub_1A3345BC8(v37, a4, v41);
    sub_1A3345BC8(v15, a4, v30);
    sub_1A342BAB0(v12, a5, a4);
    v31 = *(v10 + 8);
    v31(v12, a4);
    v31(v15, a4);
  }

  v42 = v40;
  v43 = v41;
  WitnessTable = swift_getWitnessTable();
  sub_1A3345BC8(v27, v24, WitnessTable);
  return (*(v38 + 8))(v27, v24);
}

double MonogramSolarium.Container.init(type:backgroundRepresentation:)@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for MonogramSolarium.Container();
  v8 = a3 + v7[5];
  type metadata accessor for CGSize(0);
  sub_1A34CC730();
  result = *&v11;
  *v8 = v11;
  *(v8 + 2) = v12;
  *(a3 + v7[6]) = v4;
  v10 = a3 + v7[7];
  *v10 = v5;
  v10[8] = v6;
  return result;
}

uint64_t sub_1A34A7BE4(uint64_t a1)
{
  v2 = sub_1A34CA5D0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A34CAE30();
}

uint64_t MonogramSolarium.Container.ContainerType.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A34A7D38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A328D790(v2, &v14 - v9, &unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA5D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1A34A7F38()
{
  result = qword_1ED854380;
  if (!qword_1ED854380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCCE0);
    sub_1A34A7FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854380);
  }

  return result;
}

unint64_t sub_1A34A7FC4()
{
  result = qword_1ED854368;
  if (!qword_1ED854368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCCD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCCE8);
    sub_1A34A8090();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854368);
  }

  return result;
}

unint64_t sub_1A34A8090()
{
  result = qword_1ED854378;
  if (!qword_1ED854378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCCE8);
    sub_1A3284D0C(qword_1ED854388, &qword_1EB0CCCF0);
    sub_1A3284D0C(&qword_1ED854658, &qword_1EB0CCCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854378);
  }

  return result;
}

unint64_t sub_1A34A8178()
{
  result = qword_1EB0CCD00;
  if (!qword_1EB0CCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCD00);
  }

  return result;
}

uint64_t sub_1A34A81CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CCB40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = v1 + *(type metadata accessor for MonogramSolarium.Container() + 28);
  if (!*(v10 + 8))
  {
    v11 = *v10;
    sub_1A34C9010();
    sub_1A34CC4E0();
    v12 = sub_1A34CC460();

    if (v12)
    {
      sub_1A34CCB30();
      sub_1A34CCB00();
      v13 = *(v4 + 8);
      v13(v6, v3);
      sub_1A34CCB70();
      sub_1A31ECC9C(v11, 0);
      v13(v9, v3);
      v14 = sub_1A34CCC60();
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }

    sub_1A31ECC9C(v11, 0);
  }

  v16 = sub_1A34CCC60();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t sub_1A34A8420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A34CAD60();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A34CCE50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v12;
  v19[4] = *(a1 + 64);
  v20 = *(a1 + 80);
  v13 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A34DAA10;
  if (*(a3 + *(type metadata accessor for MonogramSolarium.Container() + 24)))
  {
    v15 = *(v5 + 20);
    v16 = *MEMORY[0x1E697F468];
    v17 = sub_1A34CB200();
    (*(*(v17 - 8) + 104))(&v7->i8[v15], v16, v17);
    *v7 = vdupq_n_s64(0x4044000000000000uLL);
    sub_1A34A8C60(&qword_1EB0CCD18, MEMORY[0x1E697EAF0]);
  }

  else
  {
    sub_1A31FB248();
  }

  *(v14 + 32) = sub_1A34CCA20();
  sub_1A34CCE40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCE8);
  sub_1A34A8090();
  sub_1A34CBFD0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A34A86B0@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a2;
  v34 = a1;
  v37 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCD28);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v31 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCD30);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1A34CCC60();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v43[2] = *(v4 + 32);
  v43[3] = v16;
  v43[4] = *(v4 + 64);
  v44 = *(v4 + 80);
  v17 = *(v4 + 16);
  v43[0] = *v4;
  v43[1] = v17;
  sub_1A328D790(v34, v11, &qword_1EB0CB200);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A3288FDC(v11, &qword_1EB0CB200);
    v18 = *(v4 + 32);
    v20 = *(v4 + 64);
    v40 = *(v4 + 48);
    v19 = v40;
    v41 = v20;
    v42 = *(v4 + 80);
    v21 = v42;
    v23 = *(v4 + 16);
    v39[0] = *v4;
    v22 = v39[0];
    v39[1] = v23;
    v39[2] = v18;
    *(v6 + 2) = v18;
    *(v6 + 3) = v19;
    *(v6 + 4) = v20;
    *(v6 + 10) = v21;
    *v6 = v22;
    *(v6 + 1) = v23;
    swift_storeEnumTagMultiPayload();
    sub_1A328D790(v39, v38, &qword_1EB0CCCE8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCE8);
    v25 = sub_1A34A8090();
    v38[0] = v24;
    v38[1] = v25;
    swift_getOpaqueTypeConformance2();
    return sub_1A34CB3E0();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v32(v43, v15);
    v27 = v33;
    v28 = v36;
    (*(v33 + 16))(v6, v8, v36);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCE8);
    v30 = sub_1A34A8090();
    *&v39[0] = v29;
    *(&v39[0] + 1) = v30;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
    (*(v27 + 8))(v8, v28);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_1A34A8B10()
{
  result = qword_1ED854370;
  if (!qword_1ED854370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCD08);
    sub_1A34A7F38();
    sub_1A34A7FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854370);
  }

  return result;
}

unint64_t sub_1A34A8BA4()
{
  result = qword_1ED853FB8;
  if (!qword_1ED853FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCD38);
    sub_1A31FB8AC();
    sub_1A34A8C60(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FB8);
  }

  return result;
}

uint64_t sub_1A34A8C60(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1A34A8CA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE550;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE560;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE570;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE580;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF42F98B537AFE1;
  *(v0 + 336) = 0xBFA6666666666666;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FE590;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC97BB18C6B7875;
  *(v0 + 480) = 0x3FC6EEEEEEEEEEEFLL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE5A0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE5B0;
  *(v0 + 592) = xmmword_1A34FE5C0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA6DDD2051A5BALL;
  *(v0 + 624) = 0x3FC6EEEEEEEEEEEFLL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FE5D0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC5973DDE28638BLL;
  *(v0 + 768) = 0x3FD3555555555555;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE5E0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE01C33323ECFD6;
  *(v0 + 912) = 0x3FDA222222222222;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE5F0;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF42F98B537AFE1;
  *(v0 + 1056) = 0x3FD4222222222222;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FE600;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC97BB18C6B7875;
  *(v0 + 1200) = 0x3FE399999999999ALL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FE610;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA48C23572AFEBLL;
  *(v0 + 1344) = 0x3FE399999999999ALL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FE620;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC62BA989A43AC6;
  *(v0 + 1488) = 0x3FEACCCCCCCCCCCDLL;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FE630;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFEE308EBFB40DLL;
  *(v0 + 1632) = 0x3FE9AAAAAAAAAAABLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FE640;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF41D0B3FC834FALL;
  *(v0 + 1776) = 0x3FEADDDDDDDDDDDELL;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FE650;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC97BB18C6B7875;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FE660;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA48C23572AFEBLL;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FE670;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED820 = xmmword_1A34FAD90;
  qword_1EB0ED830 = v0;
  *algn_1EB0ED838 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED840 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED850 = 0;
  *algn_1EB0ED851 = *v59;
  dword_1EB0ED854 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED858 = 0u;
  *(&xmmword_1EB0ED860 + 8) = 0u;
  qword_1EB0ED878 = v57;
  return result;
}

double sub_1A34A9AE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE680;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF289608CBF9903;
  *(v0 + 336) = 0xBFA5555555555555;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FE6C0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC90B3FEA40443BLL;
  *(v0 + 480) = 0x3FC6EEEEEEEEEEEFLL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FE6D0;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE6E0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x3FD999999999999ALL;
  *(v0 + 576) = xmmword_1A34FAC90;
  *(v0 + 592) = xmmword_1A34FAC90;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA51BCFE8A97C2;
  *(v0 + 624) = 0x3FC6EEEEEEEEEEEFLL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FE6D0;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FE6F0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFBCFC6F6F2AFD4DLL;
  *(v0 + 768) = 0x3FD3777777777777;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE700;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x3FF8000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FDA222222222222;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FE710;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE720;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x3FF8000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF289608CBF9903;
  *(v0 + 1056) = 0x3FD4444444444444;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FE730;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FE740;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FE750;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4000000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v0 + 1344) = 0x3FE3AAAAAAAAAAABLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FE740;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FE760;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFBCFC6F6F2AFD4DLL;
  *(v0 + 1488) = 0x3FEB555555555555;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FE770;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE00012FD0396C0;
  *(v0 + 1632) = 0x3FEA222222222222;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FE780;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF289608CBF9903;
  *(v0 + 1776) = 0x3FEB666666666666;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FE790;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FAD70;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FE7A0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED950 = xmmword_1A34FAD90;
  qword_1EB0ED960 = v0;
  *algn_1EB0ED968 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED970 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED980 = 0;
  *algn_1EB0ED981 = *v59;
  dword_1EB0ED984 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED988 = 0u;
  *(&xmmword_1EB0ED990 + 8) = 0u;
  qword_1EB0ED9A8 = v57;
  return result;
}

double sub_1A34AA924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE7B0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE7C0;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE7D0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE7E0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF32BDC491EF73ALL;
  *(v0 + 336) = 0xBFB9111111111111;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FE7F0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC8E745E0EFA13ALL;
  *(v0 + 480) = 0x3FC9DDDDDDDDDDDELL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE800;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE810;
  *(v0 + 592) = xmmword_1A34FE820;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA48C23572AFEBLL;
  *(v0 + 624) = 0x3FC9DDDDDDDDDDDELL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FE830;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC62BA989A43AC6;
  *(v0 + 768) = 0x3FD4888888888889;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE840;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FDFEE308EBFB40DLL;
  *(v0 + 912) = 0x3FDB555555555555;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE850;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF3194ED3AF7C52;
  *(v0 + 1056) = 0x3FD5777777777777;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FE860;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC97BB18C6B7875;
  *(v0 + 1200) = 0x3FE5222222222222;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FE870;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA23A74A93BA1CLL;
  *(v0 + 1344) = 0x3FE5444444444444;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FE880;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC5973DDE28638BLL;
  *(v0 + 1488) = 0x3FED777777777777;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FE890;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE01C33323ECFD6;
  *(v0 + 1632) = 0x3FEBEEEEEEEEEEEFLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FE8A0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF3194ED3AF7C52;
  *(v0 + 1776) = 0x3FED888888888889;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FE8B0;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FCA101D37E74FB0;
  *(v0 + 1920) = 0x3FF0D55555555555;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FE8C0;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA6DDD2051A5BALL;
  *(v0 + 2064) = 0x3FF0D55555555555;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FE8D0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED460 = xmmword_1A34FAD90;
  qword_1EB0ED470 = v0;
  *algn_1EB0ED478 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED480 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED490 = 0;
  *algn_1EB0ED491 = *v59;
  dword_1EB0ED494 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED498 = 0u;
  *(&xmmword_1EB0ED4A0 + 8) = 0u;
  qword_1EB0ED4B8 = v57;
  return result;
}

double sub_1A34AB7AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE8E0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF30B3EC2CBF556;
  *(v0 + 336) = 0xBFA7777777777777;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FE8F0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC90B3FEA40443BLL;
  *(v0 + 480) = 0x3FC4444444444444;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE900;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE910;
  *(v0 + 592) = xmmword_1A34FE920;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA51BCFE8A97C2;
  *(v0 + 624) = 0x3FC4444444444444;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FE930;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD5777777777777;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE940;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD8222222222222;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE950;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF30B3EC2CBF556;
  *(v0 + 1056) = 0x3FD6222222222222;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FE960;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE5444444444444;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FE970;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v0 + 1344) = 0x3FE5444444444444;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FE980;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC607AF805397C5;
  *(v0 + 1488) = 0x3FED333333333333;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FE990;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE00012FD0396C0;
  *(v0 + 1632) = 0x3FEB555555555555;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FE9A0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF30B3EC2CBF556;
  *(v0 + 1776) = 0x3FED333333333333;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FE9B0;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF1222222222222;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FE9C0;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF1222222222222;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FE9D0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED760 = xmmword_1A34FAD90;
  qword_1EB0ED770 = v0;
  *algn_1EB0ED778 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED780 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED790 = 0;
  *algn_1EB0ED791 = *v59;
  dword_1EB0ED794 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED798 = 0u;
  *(&xmmword_1EB0ED7A0 + 8) = 0u;
  qword_1EB0ED7B8 = v57;
  return result;
}

double sub_1A34AC590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE9E0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE9F0;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FEA00;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FEA10;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF31DCC383B703DLL;
  *(v0 + 336) = 0xBFB8888888888889;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEA20;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876D43EC46D00;
  *(v0 + 480) = 0x3FC9555555555555;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEA30;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FACC0;
  *(v0 + 592) = xmmword_1A34FEA40;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2CA213ABA1F3;
  *(v0 + 624) = 0x3FC9555555555555;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEA50;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD2EEEEEEEEEEEFLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FEA60;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FDA000000000000;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FEA70;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF31DCC383B703DLL;
  *(v0 + 1056) = 0x3FD3DDDDDDDDDDDELL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEA80;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3CCCCCCCCCCCDLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEA90;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA078728CCAC24;
  *(v0 + 1344) = 0x3FE3EEEEEEEEEEEFLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEAA0;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v0 + 1488) = 0x3FEC555555555555;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEAB0;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5F0244941E2;
  *(v0 + 1632) = 0x3FEACCCCCCCCCCCDLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEAC0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 1776) = 0x3FEC666666666666;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEAD0;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0888888888889;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FEAE0;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0888888888889;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEAF0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED4C0 = xmmword_1A34FAD90;
  qword_1EB0ED4D0 = v0;
  *algn_1EB0ED4D8 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED4E0 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED4F0 = 0;
  *algn_1EB0ED4F1 = *v59;
  dword_1EB0ED4F4 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED4F8 = 0u;
  *(&xmmword_1EB0ED500 + 8) = 0u;
  qword_1EB0ED518 = v57;
  return result;
}

double sub_1A34AD3E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE8E0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF2E623D7ECFF87;
  *(v0 + 336) = 0xBFA7777777777777;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FE8F0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC90B3FEA40443BLL;
  *(v0 + 480) = 0x3FC4444444444444;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE900;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE910;
  *(v0 + 592) = xmmword_1A34FE920;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA51BCFE8A97C2;
  *(v0 + 624) = 0x3FC4444444444444;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEB00;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD4CCCCCCCCCCCDLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FEB10;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD7777777777777;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FEB20;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF2E623D7ECFF87;
  *(v0 + 1056) = 0x3FD5777777777777;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEB30;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE4EEEEEEEEEEEFLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEB40;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v0 + 1344) = 0x3FE4EEEEEEEEEEEFLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEB50;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC607AF805397C5;
  *(v0 + 1488) = 0x3FED333333333333;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FE990;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE00012FD0396C0;
  *(v0 + 1632) = 0x3FEB555555555555;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FE9A0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2E623D7ECFF87;
  *(v0 + 1776) = 0x3FED333333333333;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FAD60;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FAD70;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEB60;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED5E0 = xmmword_1A34FAD90;
  qword_1EB0ED5F0 = v0;
  *algn_1EB0ED5F8 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED600 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED610 = 0;
  *algn_1EB0ED611 = *v59;
  dword_1EB0ED614 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED618 = 0u;
  *(&xmmword_1EB0ED620 + 8) = 0u;
  qword_1EB0ED638 = v57;
  return result;
}

double sub_1A34AE0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FAC30;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FAC50;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FAC70;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FAC80;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF31DCC383B703DLL;
  *(v0 + 336) = 0xBFB9111111111111;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FACA0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876D43EC46D00;
  *(v0 + 480) = 0x3FC9111111111111;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FACB0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FACC0;
  *(v0 + 592) = xmmword_1A34FACD0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2CA213ABA1F3;
  *(v0 + 624) = 0x3FC9111111111111;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FACE0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD2CCCCCCCCCCCDLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FACF0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD9DDDDDDDDDDDELL;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FAD00;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF31DCC383B703DLL;
  *(v0 + 1056) = 0x3FD3BBBBBBBBBBBCLL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FAD10;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3BBBBBBBBBBBCLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FAD20;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA078728CCAC24;
  *(v0 + 1344) = 0x3FE3DDDDDDDDDDDELL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FAD30;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v0 + 1488) = 0x3FEC444444444444;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEB70;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5F0244941E2;
  *(v0 + 1632) = 0x3FEABBBBBBBBBBBCLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEB80;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 1776) = 0x3FEC555555555555;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FAD60;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FAD70;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FAD80;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED8F0 = xmmword_1A34FAD90;
  qword_1EB0ED900 = v0;
  *algn_1EB0ED908 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED910 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED920 = 0;
  *algn_1EB0ED921 = *v59;
  dword_1EB0ED924 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED928 = 0u;
  *(&xmmword_1EB0ED930 + 8) = 0u;
  qword_1EB0ED948 = v57;
  return result;
}

double sub_1A34AEF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE8E0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 336) = 0xBFA4444444444444;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEB90;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC90B3FEA40443BLL;
  *(v0 + 480) = 0x3FC4444444444444;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FE900;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE910;
  *(v0 + 592) = xmmword_1A34FE920;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA51BCFE8A97C2;
  *(v0 + 624) = 0x3FC4444444444444;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEBA0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD5777777777777;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE940;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD8222222222222;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE950;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 1056) = 0x3FD6888888888889;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEBB0;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC99FAB95BC1B77;
  *(v0 + 1200) = 0x3FE4AAAAAAAAAAABLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEBC0;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA51BCFE8A97C2;
  *(v0 + 1344) = 0x3FE4AAAAAAAAAAABLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEBD0;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC57343D4D7C08ALL;
  *(v0 + 1488) = 0x3FEC99999999999ALL;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEBE0;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE0252DE7E28C8FLL;
  *(v0 + 1632) = 0x3FEABBBBBBBBBBBCLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEBF0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF30B3EC2CBF556;
  *(v0 + 1776) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEC00;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC99FAB95BC1B77;
  *(v0 + 1920) = 0x3FF1E66666666666;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FEC10;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA51BCFE8A97C2;
  *(v0 + 2064) = 0x3FF1E66666666666;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEC20;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED580 = xmmword_1A34FAD90;
  qword_1EB0ED590 = v0;
  *algn_1EB0ED598 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED5A0 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED5B0 = 0;
  *algn_1EB0ED5B1 = *v59;
  dword_1EB0ED5B4 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED5B8 = 0u;
  *(&xmmword_1EB0ED5C0 + 8) = 0u;
  qword_1EB0ED5D8 = v57;
  return result;
}

double sub_1A34AFD78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE9E0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE9F0;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FEA00;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FEA10;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF31DCC383B703DLL;
  *(v0 + 336) = 0xBFB8888888888889;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEA20;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876D43EC46D00;
  *(v0 + 480) = 0x3FC9555555555555;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEA30;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FACC0;
  *(v0 + 592) = xmmword_1A34FEA40;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2CA213ABA1F3;
  *(v0 + 624) = 0x3FC9555555555555;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEA50;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD2EEEEEEEEEEEFLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FEA60;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FDA000000000000;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FEA70;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF31DCC383B703DLL;
  *(v0 + 1056) = 0x3FD3DDDDDDDDDDDELL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEA80;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3CCCCCCCCCCCDLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEA90;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA078728CCAC24;
  *(v0 + 1344) = 0x3FE3EEEEEEEEEEEFLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEAA0;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v0 + 1488) = 0x3FEC555555555555;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEAB0;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5F0244941E2;
  *(v0 + 1632) = 0x3FEACCCCCCCCCCCDLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEAC0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v0 + 1776) = 0x3FEC666666666666;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEAD0;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0888888888889;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FEAE0;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0888888888889;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEAF0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED7C0 = xmmword_1A34FAD90;
  qword_1EB0ED7D0 = v0;
  *algn_1EB0ED7D8 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED7E0 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED7F0 = 0;
  *algn_1EB0ED7F1 = *v59;
  dword_1EB0ED7F4 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED7F8 = 0u;
  *(&xmmword_1EB0ED800 + 8) = 0u;
  qword_1EB0ED818 = v57;
  return result;
}

double sub_1A34B0BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FEC30;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FEC40;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FEC50;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FEC60;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF3194ED3AF7C52;
  *(v0 + 336) = 0xBFB999999999999ALL;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEC70;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC852DA3573C9FFLL;
  *(v0 + 480) = 0x3FC8CCCCCCCCCCCDLL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEC80;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FEC90;
  *(v0 + 592) = xmmword_1A34FECA0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA23A74A93BA1CLL;
  *(v0 + 624) = 0x3FC8CCCCCCCCCCCDLL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FECB0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC62BA989A43AC6;
  *(v0 + 768) = 0x3FD2AAAAAAAAAAABLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FECC0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FDFEE308EBFB40DLL;
  *(v0 + 912) = 0x3FD9777777777777;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FECD0;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF3194ED3AF7C52;
  *(v0 + 1056) = 0x3FD399999999999ALL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FECE0;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC8E745E0EFA13ALL;
  *(v0 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FECF0;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FE9FE8C5FB4C44DLL;
  *(v0 + 1344) = 0x3FE3CCCCCCCCCCCDLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FED00;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC6C01535201201;
  *(v0 + 1488) = 0x3FEC333333333333;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FED10;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFA3FAB901C870;
  *(v0 + 1632) = 0x3FEAAAAAAAAAAAABLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FED20;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F433E8D08683;
  *(v0 + 1776) = 0x3FEC444444444444;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FED30;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC8E745E0EFA13ALL;
  *(v0 + 1920) = 0x3FF0777777777777;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FED40;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA23A74A93BA1CLL;
  *(v0 + 2064) = 0x3FF0777777777777;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FED50;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED520 = xmmword_1A34FAD90;
  qword_1EB0ED530 = v0;
  *algn_1EB0ED538 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED540 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED550 = 0;
  *algn_1EB0ED551 = *v59;
  dword_1EB0ED554 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED558 = 0u;
  *(&xmmword_1EB0ED560 + 8) = 0u;
  qword_1EB0ED578 = v57;
  return result;
}

double sub_1A34B1A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FAC30;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FAC50;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FAC70;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FAC80;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF289608CBF9903;
  *(v0 + 336) = 0xBFB9111111111111;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FACA0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876D43EC46D00;
  *(v0 + 480) = 0x3FC9111111111111;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FACB0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FACC0;
  *(v0 + 592) = xmmword_1A34FACD0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2CA213ABA1F3;
  *(v0 + 624) = 0x3FC9111111111111;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FED60;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607AF805397C5;
  *(v0 + 768) = 0x3FD2CCCCCCCCCCCDLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FACF0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD9DDDDDDDDDDDELL;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FAD00;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF289608CBF9903;
  *(v0 + 1056) = 0x3FD3BBBBBBBBBBBCLL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FED70;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC876D43EC46D00;
  *(v0 + 1200) = 0x3FE3666666666666;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FED80;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA078728CCAC24;
  *(v0 + 1344) = 0x3FE3777777777777;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FED90;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v0 + 1488) = 0x3FEB222222222222;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEDA0;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE0252DE7E28C8FLL;
  *(v0 + 1632) = 0x3FEA333333333333;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEDB0;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF289608CBF9903;
  *(v0 + 1776) = 0x3FEC333333333333;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEDC0;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0DDDDDDDDDDDELL;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FEDD0;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0DDDDDDDDDDDELL;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEDE0;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED700 = xmmword_1A34FAD90;
  qword_1EB0ED710 = v0;
  *algn_1EB0ED718 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED720 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED730 = 0;
  *algn_1EB0ED731 = *v59;
  dword_1EB0ED734 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED738 = 0u;
  *(&xmmword_1EB0ED740 + 8) = 0u;
  qword_1EB0ED758 = v57;
  return result;
}

double sub_1A34B2884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FE680;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF289608CBF9903;
  *(v0 + 336) = 0xBFA5555555555555;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEDF0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC99FAB95BC1B77;
  *(v0 + 480) = 0x3FC4000000000000;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEE00;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FEE10;
  *(v0 + 592) = xmmword_1A34FEE20;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA76D7E9698D91;
  *(v0 + 624) = 0x3FC4000000000000;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEE30;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFBCFC6F6F2AFD4DLL;
  *(v0 + 768) = 0x3FD3777777777777;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FE700;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FDA222222222222;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FE720;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF289608CBF9903;
  *(v0 + 1056) = 0x3FD4444444444444;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEE40;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC7E268934895C5;
  *(v0 + 1200) = 0x3FE4000000000000;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEE50;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v0 + 1344) = 0x3FE4333333333333;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEE60;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFBE2546C622ABC3;
  *(v0 + 1488) = 0x3FEABBBBBBBBBBBCLL;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FAD40;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5F0244941E2;
  *(v0 + 1632) = 0x3FE9888888888889;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FAD50;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF276D317501E1BLL;
  *(v0 + 1776) = 0x3FEACCCCCCCCCCCDLL;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEE70;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC876D43EC46D00;
  *(v0 + 1920) = 0x3FF13BBBBBBBBBBCLL;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FEE80;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA078728CCAC24;
  *(v0 + 2064) = 0x3FF13BBBBBBBBBBCLL;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEE90;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0EE120 = xmmword_1A34FAD90;
  qword_1EB0EE130 = v0;
  unk_1EB0EE138 = xmmword_1A34FADA0;
  qword_1EB0EE148 = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0EE150 = 0;
  *algn_1EB0EE151 = *v59;
  dword_1EB0EE154 = *&v59[3];
  result = 0.0;
  unk_1EB0EE158 = 0u;
  unk_1EB0EE168 = 0u;
  qword_1EB0EE178 = v57;
  return result;
}

double sub_1A34B37BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FEEA0;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FE690;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FE6A0;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FE6B0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF37A8F8368D6C2;
  *(v0 + 336) = 0xBFA7777777777777;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEEB0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC90B3FEA40443BLL;
  *(v0 + 480) = 0x3FC1DDDDDDDDDDDELL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEEC0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FE910;
  *(v0 + 592) = xmmword_1A34FE920;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA51BCFE8A97C2;
  *(v0 + 624) = 0x3FC1DDDDDDDDDDDELL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEED0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFCBD3E4332A0014;
  *(v0 + 768) = 0x3FD5333333333333;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FEEE0;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE00012FD0396C0;
  *(v0 + 912) = 0x3FD999999999999ALL;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FEEF0;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF37A8F8368D6C2;
  *(v0 + 1056) = 0x3FD5555555555555;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FEF00;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1200) = 0x3FE3BBBBBBBBBBBCLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FEF10;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v0 + 1344) = 0x3FE3BBBBBBBBBBBCLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FEF20;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFCBD3E4332A0014;
  *(v0 + 1488) = 0x3FEB444444444444;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FEF30;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FE00012FD0396C0;
  *(v0 + 1632) = 0x3FE9777777777777;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FEF40;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF37A8F8368D6C2;
  *(v0 + 1776) = 0x3FEB555555555555;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FEF50;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v0 + 1920) = 0x3FF0800000000000;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FAD70;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v0 + 2064) = 0x3FF0800000000000;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FEF60;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED640 = xmmword_1A34FAD90;
  qword_1EB0ED650 = v0;
  *algn_1EB0ED658 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED660 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED670 = 0;
  *algn_1EB0ED671 = *v59;
  dword_1EB0ED674 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED678 = 0u;
  *(&xmmword_1EB0ED680 + 8) = 0u;
  qword_1EB0ED698 = v57;
  return result;
}

double sub_1A34B45D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC0C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FAC20;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  v1 = sub_1A34CC590();
  sub_1A34CCE20();
  v3 = v2;
  sub_1A34CCDE0();
  *(v0 + 40) = xmmword_1A34FEF70;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1A34FAC40;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0;
  sub_1A34C9A00();
  v5 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 112) = xmmword_1A34FEF80;
  *(v0 + 128) = v5;
  *(v0 + 136) = xmmword_1A34FAC40;
  *(v0 + 152) = xmmword_1A34FAC60;
  *(v0 + 168) = v6;
  *(v0 + 104) = 0;
  sub_1A34C9A00();
  v7 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 184) = xmmword_1A34FEF90;
  *(v0 + 200) = v7;
  *(v0 + 208) = xmmword_1A34FAC40;
  *(v0 + 224) = xmmword_1A34FAC60;
  *(v0 + 240) = v8;
  *(v0 + 176) = 0;
  sub_1A34C9A00();
  v9 = sub_1A34CC590();
  sub_1A34CCDE0();
  *(v0 + 256) = xmmword_1A34FEFA0;
  *(v0 + 272) = v9;
  *(v0 + 280) = 0x4010000000000000;
  *(v0 + 288) = xmmword_1A34FAC90;
  *(v0 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 312) = v10;
  *(v0 + 248) = 0;
  sub_1A34C9A00();
  v11 = sub_1A34CC590();
  sub_1A34CCE30();
  v13 = v12;
  sub_1A34CCDE0();
  *(v0 + 328) = 0x3FF31DC2CBF68D4ALL;
  *(v0 + 336) = 0xBFB999999999999ALL;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x4010000000000000;
  *(v0 + 360) = v13;
  *(v0 + 368) = xmmword_1A34FAC60;
  *(v0 + 384) = v14;
  *(v0 + 320) = 0;
  sub_1A34C9A00();
  v15 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 400) = xmmword_1A34FEFB0;
  *(v0 + 416) = v15;
  *(v0 + 424) = 0x4010000000000000;
  *(v0 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 440) = v16;
  *(v0 + 448) = xmmword_1A34FAC90;
  *(v0 + 392) = 0;
  sub_1A34C9A00();
  v17 = sub_1A34CC590();
  *(v0 + 472) = 0x3FC876884AB61200;
  *(v0 + 480) = 0x3FC8CCCCCCCCCCCDLL;
  *(v0 + 488) = v17;
  *(v0 + 496) = xmmword_1A34FAC40;
  *(v0 + 512) = xmmword_1A34FAC60;
  *(v0 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 464) = 0;
  sub_1A34C9A00();
  v18 = sub_1A34CC590();
  *(v0 + 544) = xmmword_1A34FEFC0;
  *(v0 + 560) = v18;
  *(v0 + 568) = 0x4010000000000000;
  *(v0 + 576) = xmmword_1A34FEFD0;
  *(v0 + 592) = xmmword_1A34FEFE0;
  *(v0 + 536) = 1;
  sub_1A34C9A00();
  v19 = sub_1A34CC590();
  *(v0 + 616) = 0x3FEA2C9882ECEE27;
  *(v0 + 624) = 0x3FC8CCCCCCCCCCCDLL;
  *(v0 + 632) = v19;
  *(v0 + 640) = xmmword_1A34FAC40;
  *(v0 + 656) = xmmword_1A34FAC60;
  *(v0 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 608) = 0;
  sub_1A34C9A00();
  v20 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 688) = xmmword_1A34FEFF0;
  *(v0 + 704) = v20;
  *(v0 + 712) = 0x4010000000000000;
  *(v0 + 720) = v21;
  *(v0 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 736) = xmmword_1A34FAC90;
  *(v0 + 680) = 0;
  sub_1A34C9A00();
  v22 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 760) = 0xBFC607FB7461F2C5;
  *(v0 + 768) = 0x3FD2AAAAAAAAAAABLL;
  *(v0 + 776) = v22;
  *(v0 + 784) = xmmword_1A34FAC40;
  *(v0 + 800) = v23;
  *(v0 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 752) = 0;
  sub_1A34C9A00();
  v24 = sub_1A34CC590();
  *(v0 + 832) = xmmword_1A34FF000;
  *(v0 + 848) = v24;
  *(v0 + 856) = 0x4010000000000000;
  *(v0 + 864) = xmmword_1A34FAC90;
  *(v0 + 880) = xmmword_1A34FAC90;
  *(v0 + 824) = 0;
  sub_1A34C9A00();
  v25 = sub_1A34CC590();
  *(v0 + 904) = 0x3FE0000000000000;
  *(v0 + 912) = 0x3FD9777777777777;
  *(v0 + 920) = v25;
  *(v0 + 928) = xmmword_1A34FAC40;
  *(v0 + 944) = xmmword_1A34FAC60;
  *(v0 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 896) = 0;
  sub_1A34C9A00();
  v26 = sub_1A34CC590();
  *(v0 + 976) = xmmword_1A34FF010;
  *(v0 + 992) = v26;
  *(v0 + 1000) = 0x4010000000000000;
  *(v0 + 1008) = xmmword_1A34FAC90;
  *(v0 + 1024) = xmmword_1A34FAC90;
  *(v0 + 968) = 0;
  sub_1A34C9A00();
  v27 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1048) = 0x3FF31DC2CBF68D4ALL;
  *(v0 + 1056) = 0x3FD399999999999ALL;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = 0x4010000000000000;
  *(v0 + 1080) = v28;
  *(v0 + 1088) = xmmword_1A34FAC60;
  *(v0 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1040) = 0;
  sub_1A34C9A00();
  v29 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1120) = xmmword_1A34FF020;
  *(v0 + 1136) = v29;
  *(v0 + 1144) = 0x4010000000000000;
  *(v0 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1160) = v30;
  *(v0 + 1168) = xmmword_1A34FAC90;
  *(v0 + 1112) = 0;
  sub_1A34C9A00();
  v31 = sub_1A34CC590();
  *(v0 + 1192) = 0x3FC90AF3F631E93BLL;
  *(v0 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v0 + 1208) = v31;
  *(v0 + 1216) = xmmword_1A34FAC40;
  *(v0 + 1232) = xmmword_1A34FAC60;
  *(v0 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1184) = 0;
  sub_1A34C9A00();
  v32 = sub_1A34CC590();
  *(v0 + 1264) = xmmword_1A34FF030;
  *(v0 + 1280) = v32;
  *(v0 + 1288) = 0x4010000000000000;
  *(v0 + 1296) = xmmword_1A34FAC90;
  *(v0 + 1312) = xmmword_1A34FAC90;
  *(v0 + 1256) = 0;
  sub_1A34C9A00();
  v33 = sub_1A34CC590();
  *(v0 + 1336) = 0x3FEA077D980DF858;
  *(v0 + 1344) = 0x3FE3CCCCCCCCCCCDLL;
  *(v0 + 1352) = v33;
  *(v0 + 1360) = xmmword_1A34FAC40;
  *(v0 + 1376) = xmmword_1A34FAC60;
  *(v0 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1328) = 0;
  sub_1A34C9A00();
  v34 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1408) = xmmword_1A34FF040;
  *(v0 + 1424) = v34;
  *(v0 + 1432) = 0x4010000000000000;
  *(v0 + 1440) = v35;
  *(v0 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1456) = xmmword_1A34FAC90;
  *(v0 + 1400) = 0;
  sub_1A34C9A00();
  v36 = sub_1A34CC590();
  sub_1A34CCE20();
  *(v0 + 1480) = 0xBFC69C671FDDCA00;
  *(v0 + 1488) = 0x3FEC333333333333;
  *(v0 + 1496) = v36;
  *(v0 + 1504) = xmmword_1A34FAC40;
  *(v0 + 1520) = v37;
  *(v0 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1472) = 0;
  sub_1A34C9A00();
  v38 = sub_1A34CC590();
  *(v0 + 1552) = xmmword_1A34FF050;
  *(v0 + 1568) = v38;
  *(v0 + 1576) = 0x4010000000000000;
  *(v0 + 1584) = xmmword_1A34FAC90;
  *(v0 + 1600) = xmmword_1A34FAC90;
  *(v0 + 1544) = 0;
  sub_1A34C9A00();
  v39 = sub_1A34CC590();
  *(v0 + 1624) = 0x3FDFB5CA2A421462;
  *(v0 + 1632) = 0x3FEAAAAAAAAAAAABLL;
  *(v0 + 1640) = v39;
  *(v0 + 1648) = xmmword_1A34FAC40;
  *(v0 + 1664) = xmmword_1A34FAC60;
  *(v0 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1616) = 0;
  sub_1A34C9A00();
  v40 = sub_1A34CC590();
  *(v0 + 1696) = xmmword_1A34FF060;
  *(v0 + 1712) = v40;
  *(v0 + 1720) = 0x4010000000000000;
  *(v0 + 1728) = xmmword_1A34FAC90;
  *(v0 + 1744) = xmmword_1A34FAC90;
  *(v0 + 1688) = 0;
  sub_1A34C9A00();
  v41 = sub_1A34CC590();
  sub_1A34CCE30();
  *(v0 + 1768) = 0x3FF2F8A7E117977BLL;
  *(v0 + 1776) = 0x3FEC444444444444;
  *(v0 + 1784) = v41;
  *(v0 + 1792) = 0x4010000000000000;
  *(v0 + 1800) = v42;
  *(v0 + 1808) = xmmword_1A34FAC60;
  *(v0 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1760) = 0;
  sub_1A34C9A00();
  v43 = sub_1A34CC590();
  sub_1A34CCE20();
  v45 = v44;
  sub_1A34CCE00();
  *(v0 + 1840) = xmmword_1A34FF070;
  *(v0 + 1856) = v43;
  *(v0 + 1864) = 0x4010000000000000;
  *(v0 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v0 + 1880) = v45;
  *(v0 + 1888) = v46;
  *(v0 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1832) = 0;
  sub_1A34C9A00();
  v47 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1912) = 0x3FC90AF3F631E93BLL;
  *(v0 + 1920) = 0x3FF0777777777777;
  *(v0 + 1928) = v47;
  *(v0 + 1936) = xmmword_1A34FAC40;
  *(v0 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1960) = v48;
  *(v0 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1904) = 0;
  sub_1A34C9A00();
  v49 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 1984) = xmmword_1A34FF080;
  *(v0 + 2000) = v49;
  *(v0 + 2008) = 0x4010000000000000;
  *(v0 + 2016) = xmmword_1A34FAC90;
  *(v0 + 2032) = v50;
  *(v0 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 1976) = 0;
  sub_1A34C9A00();
  v51 = sub_1A34CC590();
  sub_1A34CCE00();
  *(v0 + 2056) = 0x3FEA2C9882ECEE27;
  *(v0 + 2064) = 0x3FF0777777777777;
  *(v0 + 2072) = v51;
  *(v0 + 2080) = xmmword_1A34FAC40;
  *(v0 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2104) = v52;
  *(v0 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2048) = 0;
  sub_1A34C9A00();
  v53 = sub_1A34CC590();
  sub_1A34CCE30();
  v55 = v54;
  sub_1A34CCE00();
  *(v0 + 2128) = xmmword_1A34FF090;
  *(v0 + 2144) = v53;
  *(v0 + 2152) = 0x4010000000000000;
  *(v0 + 2160) = v55;
  *(v0 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2176) = v56;
  *(v0 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A34DCA90;
  sub_1A34C9A00();
  *(v57 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  *(v57 + 40) = sub_1A34CC590();
  xmmword_1EB0ED890 = xmmword_1A34FAD90;
  qword_1EB0ED8A0 = v0;
  *algn_1EB0ED8A8 = xmmword_1A34FADA0;
  *(&xmmword_1EB0ED8B0 + 1) = 0x3FDCCCCCCCCCCCCDLL;
  byte_1EB0ED8C0 = 0;
  *algn_1EB0ED8C1 = *v59;
  dword_1EB0ED8C4 = *&v59[3];
  result = 0.0;
  *algn_1EB0ED8C8 = 0u;
  *(&xmmword_1EB0ED8D0 + 8) = 0u;
  qword_1EB0ED8E8 = v57;
  return result;
}

uint64_t sub_1A34B5424(uint64_t a1, void (*a2)(char *))
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8990);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1A329D98C(a1, v5, &qword_1EB0C57E8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57F0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0C57E8);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14(v9);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 56))(a1, 1, 1, v10);
}

uint64_t sub_1A34B564C(uint64_t a1, void (*a2)(char *))
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1A329D98C(a1, v5, &qword_1EB0C57D0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0C57D0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14(v9);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 56))(a1, 1, 1, v10);
}

uint64_t sub_1A34B5874(uint64_t a1, void (*a2)(char *))
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5808);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5810);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1A329D98C(a1, v5, &qword_1EB0C5808);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5818);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0C5808);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14(v9);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 56))(a1, 1, 1, v10);
}

uint64_t sub_1A34B5A9C(uint64_t a1, void (*a2)(char *))
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1A329D98C(a1, v5, &qword_1EB0C57B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1A3288FDC(v5, &qword_1EB0C57B8);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14(v9);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 56))(a1, 1, 1, v10);
}

id sub_1A34B5EC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemojiPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A34B5F84()
{
  sub_1A34B601C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A34B601C()
{
  if (!qword_1EB0C1FE8)
  {
    v0 = type metadata accessor for PendingUserInputRequest();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1FE8);
    }
  }
}

uint64_t sub_1A34B6074(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A34B60D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

id sub_1A34B6130()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8) + 36));
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0CCDB0);
    sub_1A34CBA20();
    v3 = [objc_allocWithZone(CNUICombinedPickerViewControllerWrapper) initWithMemojiMetadata:v2 delegate:v12 clearBackground:*(v0 + *(type metadata accessor for MemojiPickerView(0) + 20))];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0CCDB0);
    sub_1A34CBA20();
    v3 = [objc_allocWithZone(CNUICombinedPickerViewControllerWrapper) initWithDelegate:v12 clearBackground:*(v0 + *(type metadata accessor for MemojiPickerView(0) + 20))];
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0CCDB0);
  sub_1A34CBA20();
  v5 = *&v12[OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_wrapper];
  *&v12[OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_wrapper] = v4;
  v6 = v4;

  v7 = [v6 wrappedViewController];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v9 = v8;
  v10 = sub_1A34CD0E0();
  [v9 setAccessibilityIdentifier_];

  return v9;
}

void sub_1A34B6324()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0CCDB0);
  sub_1A34CBA20();
  v5 = v8;
  sub_1A34B6940(v1, v4);
  v6 = OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A34B6E98(v4, v5 + v6);
  swift_endAccess();
}

uint64_t sub_1A34B6404@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1A34B6940(v1, &v10 - v4);
  v6 = type metadata accessor for MemojiPickerView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_wrapper] = 0;
  sub_1A34B6940(v5, &v7[OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_request]);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A3288FDC(v5, &qword_1EB0CA2C8);
  *a1 = v8;
  return result;
}

uint64_t sub_1A34B6500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34B6E08(&qword_1EB0C2740, type metadata accessor for MemojiPickerView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A34B6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34B6E08(&qword_1EB0C2740, type metadata accessor for MemojiPickerView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A34B6628()
{
  sub_1A34B6E08(&qword_1EB0C2740, type metadata accessor for MemojiPickerView);
  sub_1A34CB940();
  __break(1u);
}

uint64_t sub_1A34B6680(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCDA0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  LOBYTE(a1) = *(v1 + *(a1 + 20));
  sub_1A34B6940(v1, &v7 - v4);
  v5[*(type metadata accessor for MemojiPickerView(0) + 20)] = a1;
  v5[*(v3 + 36)] = sub_1A34CBA90();
  sub_1A34B6A58();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v5, &qword_1EB0CCDA0);
}

uint64_t sub_1A34B678C(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C0);
  return sub_1A34CD400();
}

uint64_t sub_1A34B67E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A34B6940(v1 + v7, v6);
  v17 = a1;
  v16 = &v17;
  v8 = *&v6[*(v4 + 48)];
  v13 = sub_1A34B69B0;
  v14 = &v15;
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1A34B69B8(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));
  return sub_1A3288FDC(v6, &qword_1EB0CA2C8);
}

uint64_t sub_1A34B6940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A34B6A58()
{
  result = qword_1EB0C0F48;
  if (!qword_1EB0C0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCDA0);
    sub_1A34B6E08(&qword_1EB0C2748, type metadata accessor for MemojiPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F48);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1A34B6CD8()
{
  sub_1A34B601C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A34B6D4C()
{
  result = qword_1EB0C0C58;
  if (!qword_1EB0C0C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCDA8);
    sub_1A34B6A58();
    sub_1A34B6E08(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C58);
  }

  return result;
}

uint64_t sub_1A34B6E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A34B6E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A34B6F0C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t Resettable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1A34CD890();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2, v6, v8);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  sub_1A34B7578(a1, a2);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

Swift::Void __swiftcall Resettable.reset()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = sub_1A34CD890();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  (*(v5 + 16))(&v12[-v7], v2, v4, v6);
  v13 = v3;
  v14 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6200);
  sub_1A34B6F0C(sub_1A34B79D8, v12, MEMORY[0x1E69E73E0], v9, v10, v15);
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v2, v4);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
}

uint64_t Resettable.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CD890();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A34B7578@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(result + 28));
  if (v4)
  {
    v5 = v2;
    v6 = result;
    v7 = sub_1A34C9010();
    v4(v7);
    sub_1A32142B0(v4);
    v8 = *(v6 + 16);
    v9 = sub_1A34CD890();
    (*(*(v9 - 8) + 8))(v5, v9);
    v11 = *(v8 - 8);
    (*(v11 + 16))(v5, a2, v8);
    v10 = *(v11 + 56);

    return v10(v5, 0, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Resettable.initializer.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  sub_1A321418C(v2);
  return v2;
}

uint64_t Resettable.initializer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  result = sub_1A32142B0(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1A34B7748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (a1 + *(type metadata accessor for Resettable() + 32));
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = swift_allocObject();
    *(v9 + 2) = v5;
    *(v9 + 3) = v7;
    *(v9 + 4) = v8;
    v10 = sub_1A34B7F28;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;

  return sub_1A321418C(v7);
}

uint64_t sub_1A34B77EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    v9 = sub_1A34B7F00;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (a2 + *(type metadata accessor for Resettable() + 32));
  v11 = *v10;
  sub_1A321418C(v6);
  result = sub_1A32142B0(v11);
  *v10 = v9;
  v10[1] = v8;
  return result;
}

uint64_t Resettable.onReset.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_1A321418C(v2);
  return v2;
}

uint64_t Resettable.onReset.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  result = sub_1A32142B0(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1A34B7948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = type metadata accessor for Resettable();
  v7 = *(a2 + *(result + 32));
  if (v7)
  {
    sub_1A34C9010();
    v7(a1);
    result = sub_1A32142B0(v7);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t Resettable.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  result = type metadata accessor for Resettable();
  v4 = (a2 + *(result + 28));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

void sub_1A34B7A90()
{
  sub_1A34CD890();
  if (v0 <= 0x3F)
  {
    sub_1A337169C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A34B7B18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A34B7C98(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      v22[1] = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1A34B7F50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1A34B7F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A34B8008(uint64_t a1)
{
  result = sub_1A34B8030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A34B8030()
{
  result = qword_1EB0CCE38;
  if (!qword_1EB0CCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCE38);
  }

  return result;
}

uint64_t sub_1A34B80A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1347375683, 0xE400000000000000);
  v6 = v5;
  v7 = swift_allocObject();
  v8 = *(v2 + 112);
  *(v7 + 112) = *(v2 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(v2 + 128);
  v9 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v9;
  v10 = *(v2 + 80);
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = v10;
  v11 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v11;
  *&v34 = v4;
  *(&v34 + 1) = v6;
  sub_1A34B8C0C(v2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  v34 = *(v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v12 = v32[0];
  v13 = v32[1];
  v14 = v33;
  v15 = swift_allocObject();
  v16 = *(v2 + 112);
  *(v15 + 112) = *(v2 + 96);
  *(v15 + 128) = v16;
  *(v15 + 144) = *(v2 + 128);
  v17 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v17;
  v18 = *(v2 + 80);
  *(v15 + 80) = *(v2 + 64);
  *(v15 + 96) = v18;
  v19 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v19;
  v20 = swift_allocObject();
  v21 = *(v2 + 112);
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(v2 + 128);
  v22 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v22;
  v23 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v23;
  v24 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v24;
  KeyPath = swift_getKeyPath();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCE40) + 36));
  *v26 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCE48);
  v28 = v26 + v27[9];
  *v28 = v12;
  *(v28 + 1) = v13;
  v28[16] = v14;
  v29 = (v26 + v27[10]);
  *v29 = sub_1A34B8C44;
  v29[1] = v15;
  v30 = (v26 + v27[11]);
  *v30 = sub_1A34B8C4C;
  v30[1] = v20;
  sub_1A34B8C0C(v2, v32);
  return sub_1A34B8C0C(v2, v32);
}

uint64_t sub_1A34B8384(uint64_t *a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = v6;
  v7 = v14;
  sub_1A34C9010();
  if ((v7 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v13, &qword_1EB0C6E58);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 44))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 0;
    v12 = v6;
    sub_1A33C4524();
    sub_1A34C9990();
  }

  else
  {
    *(v6 + 44) = 0;
  }
}

uint64_t sub_1A34B8594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 96);
  v69 = *(a1 + 80);
  v70 = v4;
  v5 = *(a1 + 32);
  v65 = *(a1 + 16);
  v66 = v5;
  v6 = *(a1 + 64);
  v8 = *(a1 + 16);
  v7 = *(a1 + 32);
  v67 = *(a1 + 48);
  v68 = v6;
  v9 = *(a1 + 96);
  v41 = v69;
  v42 = v9;
  v37 = v8;
  v38 = v7;
  v71 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0CCA88);
  sub_1A34CC930();
  swift_getKeyPath();
  v41 = v72[4];
  v42 = v72[5];
  v43 = v73;
  v37 = v72[0];
  v38 = v72[1];
  v39 = v72[2];
  v40 = v72[3];
  sub_1A34CC920();

  sub_1A3288FDC(v72, qword_1EB0CCA88);
  v10 = v63;
  v36 = v64;
  sub_1A34CC930();
  swift_getKeyPath();
  v60 = v74[4];
  v61 = v74[5];
  v62 = v75;
  v56 = v74[0];
  v57 = v74[1];
  v58 = v74[2];
  v59 = v74[3];
  sub_1A34CC920();

  sub_1A3288FDC(v74, qword_1EB0CCA88);
  v11 = v51;
  v12 = v52;
  v13 = v55;
  v34 = v54;
  v35 = v53;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ImageCroppingView();
  v15 = a2 + v14[5];
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  sub_1A34CC730();
  v16 = v49;
  v17 = v50;
  v18 = v48;
  *v15 = v47;
  *(v15 + 1) = v18;
  v15[32] = v16;
  *(v15 + 5) = v17;
  v19 = a2 + v14[6];
  type metadata accessor for CGPoint(0);
  v44 = 0uLL;
  sub_1A34CC730();
  v20 = v48;
  *v19 = v47;
  *(v19 + 2) = v20;
  v21 = (a2 + v14[7]);
  *&v44 = 0x3FF0000000000000;
  sub_1A34CC730();
  v22 = *(&v47 + 1);
  *v21 = v47;
  v21[1] = v22;
  v23 = a2 + v14[8];
  *v23 = v10;
  *(v23 + 8) = v36;
  *(a2 + v14[9]) = 0x4072C00000000000;
  v24 = a2 + v14[10];
  *v24 = v11;
  *(v24 + 1) = v12;
  *(v24 + 1) = v35;
  *(v24 + 2) = v34;
  v24[48] = v13;
  sub_1A34CCC80();
  sub_1A34CA760();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CD8) + 36));
  v26 = v57;
  *v25 = v56;
  v25[1] = v26;
  v25[2] = v58;
  v27 = swift_allocObject();
  v28 = *(a1 + 112);
  *(v27 + 112) = *(a1 + 96);
  *(v27 + 128) = v28;
  *(v27 + 144) = *(a1 + 128);
  v29 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v29;
  v30 = *(a1 + 80);
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = v30;
  v31 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v31;
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCE50) + 36));
  *v32 = sub_1A34B8C54;
  v32[1] = v27;
  v32[2] = 0;
  v32[3] = 0;
  return sub_1A34B8C0C(a1, &v37);
}

uint64_t sub_1A34B8948(uint64_t *a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = v6;
  v7 = v14;
  sub_1A34C9010();
  if ((v7 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v13, &qword_1EB0C6E58);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 44) == 1)
  {
    *(v6 + 44) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 1;
    v12 = v6;
    sub_1A33C4524();
    sub_1A34C9990();
  }
}

unint64_t sub_1A34B8C5C()
{
  result = qword_1EB0CCE58;
  if (!qword_1EB0CCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCE40);
    sub_1A3284D0C(&qword_1EB0CCE60, &qword_1EB0CCE68);
    sub_1A3284D0C(&unk_1EB0CCE70, &qword_1EB0CCE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CCE58);
  }

  return result;
}

uint64_t sub_1A34B8D40@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A34BE7CC(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A34B8DF4()
{
  swift_getKeyPath();
  sub_1A34BE7CC(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
  sub_1A34C9990();
}

void sub_1A34B8F20(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v5 = sub_1A34CD370();

  *a3 = v5;
}

uint64_t sub_1A34B8FA4@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1A34C9230();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1A34C9330();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1A34B9044(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 note];
  v4 = sub_1A34CD110();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1A34B909C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callAlert];
  *a2 = result;
  return result;
}

uint64_t sub_1A34B90D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows);
}

uint64_t sub_1A34B91AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A34B9294()
{
  swift_getKeyPath();
  sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C9990();
}

uint64_t ContactCardDetails.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v40 - v11);
  *a2 = swift_getKeyPath();
  *(a2 + 264) = 0;
  v13 = type metadata accessor for ContactCardDetails();
  v14 = a2 + v13[9];
  *v14 = sub_1A34CA4D0() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = v13[6];
  sub_1A34BE884(a1, a2 + v17, type metadata accessor for ContactCardConfiguration);
  sub_1A34BE884(a1, v12, type metadata accessor for ContactCardConfiguration);
  type metadata accessor for ContactCardDetailsViewModel(0);
  swift_allocObject();
  v18 = sub_1A33B0170(v12);
  *(a2 + 272) = v18;
  sub_1A34BE884(a2 + v17, v9, type metadata accessor for ContactCardConfiguration);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A34BE8EC(v9, type metadata accessor for ContactCardConfiguration);
  if (Strong)
  {
    v40[0] = v6;
    v20 = *(a2 + v17);
    v21 = objc_allocWithZone(type metadata accessor for ContactCardActionsViewModel(0));
    v22 = v20;
    swift_unknownObjectRetain();
    v23 = sub_1A3414878(v22, Strong, 4);

    swift_unknownObjectRelease();
    *(a2 + v13[8]) = v23;
    v24 = *(v18 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration);
    v25 = type metadata accessor for ContactCardCustomActionsViewModel();
    v26 = objc_allocWithZone(v25);
    v27 = OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__actionsProvider;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v28 = v24;
    sub_1A34C99D0();
    *&v26[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_contact] = v28;
    swift_unknownObjectRetain();
    v29 = v28;
    sub_1A31F08B0(&v26[v27]);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *&v26[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_placement] = 2;
    *&v26[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections] = MEMORY[0x1E69E7CC0];
    v41.receiver = v26;
    v41.super_class = v25;
    v30 = objc_msgSendSuper2(&v41, sel_init);
    swift_getKeyPath();
    v40[1] = v30;
    sub_1A34BE7CC(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
    sub_1A34C99A0();

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      [v31 addObserver_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    v32 = 7;
    v6 = v40[0];
  }

  else
  {
    v30 = 0;
    *(a2 + v13[7]) = 0;
    v32 = 8;
  }

  *(a2 + v13[v32]) = v30;
  if (qword_1EB0C12A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1A34CA250();
  __swift_project_value_buffer(v33, qword_1EB0ED038);
  sub_1A34BE884(a1, v6, type metadata accessor for ContactCardConfiguration);
  v34 = sub_1A34CA230();
  v35 = sub_1A34CD660();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138477827;
    v38 = *v6;
    sub_1A34BE8EC(v6, type metadata accessor for ContactCardConfiguration);
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&dword_1A31E6000, v34, v35, "[ContactCardDetails] init for %{private}@", v36, 0xCu);
    sub_1A3288FDC(v37, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v37, -1, -1);
    MEMORY[0x1A58F1010](v36, -1, -1);
  }

  else
  {

    sub_1A34BE8EC(a1, type metadata accessor for ContactCardConfiguration);
    a1 = v6;
  }

  return sub_1A34BE8EC(a1, type metadata accessor for ContactCardConfiguration);
}

uint64_t type metadata accessor for ContactCardDetails()
{
  result = qword_1EB0C2628;
  if (!qword_1EB0C2628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1A34B98CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A34B9A4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DAA30;
  v1 = objc_opt_self();
  if (qword_1EB0C4BC8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v2 = sub_1A34CD350();

  type metadata accessor for ContactCardDetails();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCFD8);
  sub_1A34CD170();
  v3 = sub_1A34CD0E0();

  v4 = [v1 descriptorWithKeyDescriptors:v2 description:v3];

  *(v0 + 32) = v4;
  qword_1EB0CCE80 = v0;
}

uint64_t static ContactCardDetails.descriptorsForRequiredKeys.getter()
{
  if (qword_1EB0C4BC0 != -1)
  {
    swift_once();
  }
}

uint64_t ContactCardDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCED8);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCEE0);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ContactCardDetails();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCEE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = sub_1A34BA144();
  if (v14)
  {
    v15 = *(v1 + 272);
    swift_getKeyPath();
    v26 = v15;
    sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
    sub_1A34C99A0();

    v16 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
    swift_beginAccess();
    v25 = *(v15 + v16);
    sub_1A34BE884(v2, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardDetails);
    v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v18 = swift_allocObject();
    sub_1A34BE94C(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ContactCardDetails);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF08);
    sub_1A34C9780();
    sub_1A3284D0C(&qword_1EB0CCF10, &qword_1EB0CCF08);
    sub_1A34BDF70();
    sub_1A34BE7CC(&unk_1EB0CCF18, type metadata accessor for ContactCardDetailsViewModel.Section);
    sub_1A34CC9D0();
    (*(v11 + 16))(v7, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1A34BDEEC();
    sub_1A34CB3E0();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCEF0);
    sub_1A34BDE3C();
    sub_1A34CCA00();
    v20 = v24;
    (*(v3 + 16))(v7, v5, v24);
    swift_storeEnumTagMultiPayload();
    sub_1A34BDEEC();
    sub_1A34BDF70();
    sub_1A34CB3E0();
    return (*(v3 + 8))(v5, v20);
  }
}

uint64_t sub_1A34BA144()
{
  v1 = v0;
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A328D790(v1, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    memcpy(v11, v10, sizeof(v11));
  }

  else
  {
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v7 = v11[209];
  sub_1A3292144(v11);
  return v7;
}

uint64_t sub_1A34BA2C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCEF0);
  sub_1A34BDE3C();
  return sub_1A34CCA00();
}

uint64_t sub_1A34BA338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardDetailsViewModel.Section(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactCardDetails();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = *(*(a1 + *(v5 + 32)) + 16);
  v17[0] = 0;
  v17[1] = v12;
  swift_getKeyPath();
  sub_1A34BE884(a2, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardDetails);
  sub_1A34BE884(a1, v8, type metadata accessor for ContactCardDetailsViewModel.Section);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1A34BE94C(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for ContactCardDetails);
  sub_1A34BE94C(v8, v15 + v14, type metadata accessor for ContactCardDetailsViewModel.Section);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCEF8);
  sub_1A32D3A44();
  sub_1A3284D0C(&qword_1EB0C0330, &unk_1EB0CCEF8);
  return sub_1A34CC9C0();
}

uint64_t sub_1A34BA5F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for ContactCardDetailsViewModel.Section(0);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + *(result + 24));
    if (v5 < *(v7 + 16))
    {
      sub_1A33B2534(v7 + 184 * v5 + 32, v8);
      sub_1A34BA67C(v8, a3);
      return sub_1A33B25F4(v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A34BA67C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a1;
  v73 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF38);
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v54 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF40);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v54 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF48);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v54 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF50);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v54 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF58);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF60);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF68);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF70);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v60 = type metadata accessor for ContactCardActions();
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF78);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF80);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v67 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  v29 = type metadata accessor for ContactCardDetails();
  v30 = [*(v3 + *(v29 + 24)) isCoreRecentsAccepted];
  v61 = v3;
  if (v30)
  {
    v31 = *(v3 + *(v29 + 32));
    if (v31)
    {
      v32 = v31;
      ContactCardActions.init(model:placement:)(v32, 4, v19);
      sub_1A34BE884(v19, v17, type metadata accessor for ContactCardActions);
      swift_storeEnumTagMultiPayload();
      sub_1A34BE7CC(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
      sub_1A34CB3E0();

      sub_1A34BE8EC(v19, type metadata accessor for ContactCardActions);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A34BE7CC(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
      sub_1A34CB3E0();
    }

    sub_1A34BE814(v23, v28);
    (*(v21 + 56))(v28, 0, 1, v20);
  }

  else
  {
    (*(v21 + 56))(v28, 1, 1, v20);
  }

  v33 = v66;
  v34 = *v66;
  v35 = v68;
  if (*v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
    v74[0] = v34;
    KeyPath = swift_getKeyPath();
    sub_1A34C9010();
    v36 = sub_1A34CD040();

    if (v36)
    {
      v37 = v55;
      sub_1A34BB6FC(v33, v55);
      sub_1A328D790(v37, v58, &qword_1EB0CCF58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCFA0);
      sub_1A34BE490();
      sub_1A34BE608();
      v38 = v59;
      sub_1A34CB3E0();
      sub_1A328D790(v38, v64, &qword_1EB0CCF50);
      swift_storeEnumTagMultiPayload();
      sub_1A34BE404();
      sub_1A34BE6E0();
      sub_1A34CB3E0();

      sub_1A3288FDC(v38, &qword_1EB0CCF50);
      v39 = v37;
      v40 = &qword_1EB0CCF58;
    }

    else
    {
      if ((sub_1A34BBB78() & 1) == 0)
      {
        if (qword_1EB0C1B08 != -1)
        {
          swift_once();
        }

        if (sub_1A3335C04(v34, qword_1EB0ED228))
        {

          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCFB0);
          (*(*(v50 - 8) + 56))(v35, 1, 1, v50);
          goto LABEL_15;
        }

        v74[0] = v34;
        KeyPath = swift_getKeyPath();
        v51 = sub_1A34CD040();

        if (v51)
        {
          v52 = 1;
        }

        else
        {
          v74[0] = v34;
          KeyPath = swift_getKeyPath();
          v52 = sub_1A34CD040();
        }

        v53 = v54;
        sub_1A34BBFCC(v33, v52 & 1, v54);
        sub_1A328D790(v53, v64, &qword_1EB0CCF38);
        swift_storeEnumTagMultiPayload();
        sub_1A34BE404();
        sub_1A34BE6E0();
        sub_1A34CB3E0();

        sub_1A3288FDC(v53, &qword_1EB0CCF38);
LABEL_14:
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCFB0);
        (*(*(v44 - 8) + 56))(v35, 0, 1, v44);
LABEL_15:
        v42 = v71;
        sub_1A3213AF4(v35, v71);
        v41 = 0;
        goto LABEL_16;
      }

      sub_1A34BBC68(v33, v74);
      sub_1A328D790(v74, v58, &unk_1EB0CCFA0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCFA0);
      sub_1A34BE490();
      sub_1A34BE608();
      v43 = v59;
      sub_1A34CB3E0();
      sub_1A328D790(v43, v64, &qword_1EB0CCF50);
      swift_storeEnumTagMultiPayload();
      sub_1A34BE404();
      sub_1A34BE6E0();
      sub_1A34CB3E0();

      sub_1A3288FDC(v43, &qword_1EB0CCF50);
      v39 = v74;
      v40 = &unk_1EB0CCFA0;
    }

    sub_1A3288FDC(v39, v40);
    goto LABEL_14;
  }

  v41 = 1;
  v42 = v71;
LABEL_16:
  (*(v69 + 56))(v42, v41, 1, v70);
  v45 = v67;
  sub_1A328D790(v28, v67, &qword_1EB0CCF80);
  v46 = v72;
  sub_1A328D790(v42, v72, &qword_1EB0CCF68);
  v47 = v73;
  sub_1A328D790(v45, v73, &qword_1EB0CCF80);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF88);
  sub_1A328D790(v46, v47 + *(v48 + 48), &qword_1EB0CCF68);
  sub_1A3288FDC(v42, &qword_1EB0CCF68);
  sub_1A3288FDC(v28, &qword_1EB0CCF80);
  sub_1A3288FDC(v46, &qword_1EB0CCF68);
  return sub_1A3288FDC(v45, &qword_1EB0CCF80);
}

uint64_t sub_1A34BB260(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardDetails();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(a1 + 272);
  swift_getKeyPath();
  v10[0] = v5;
  sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v6 = *(*(v5 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows) + 16);
  v10[0] = 0;
  v10[1] = v6;
  swift_getKeyPath();
  sub_1A34BE884(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardDetails);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1A34BE94C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ContactCardDetails);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCEF8);
  sub_1A32D3A44();
  sub_1A3284D0C(&qword_1EB0C0330, &unk_1EB0CCEF8);
  return sub_1A34CC9C0();
}

uint64_t sub_1A34BB4B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 272);
  swift_getKeyPath();
  v8[0] = v5;
  sub_1A34BE7CC(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows);
    if (v4 < *(v7 + 16))
    {
      sub_1A33B2534(v7 + 184 * v4 + 32, v8);
      sub_1A34BA67C(v8, a3);
      return sub_1A33B25F4(v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A34BB5C0()
{
  v1 = *(*(v0 + 272) + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration);
  if ([v1 isSuggested])
  {

    return 0;
  }

  v3 = [v1 iOSLegacyIdentifier];
  if (v3 == *MEMORY[0x1E695C248])
  {
    v4 = [v1 isSuggestedMe];

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  v5 = *(v0 + *(type metadata accessor for ContactCardDetails() + 24));
  if ([v5 isCoreRecentsAccepted])
  {
    return 0;
  }

  sub_1A34B98CC(v12);
  v6 = v12[208];
  sub_1A3292144(v12);
  if ((v6 & 1) == 0)
  {
    v7 = [v5 note];
    v8 = sub_1A34CD110();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A34BB6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCFC0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35[-v6];
  v8 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35[-v12];
  v14 = type metadata accessor for ContactCardNotes(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CCF90);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v35[-v17];
  if (sub_1A34BB5C0())
  {
    v19 = type metadata accessor for ContactCardDetails();
    v40 = v5;
    v41 = a2;
    v20 = v19;
    sub_1A34BE884(v2 + *(v19 + 24), v13, type metadata accessor for ContactCardConfiguration);
    v39 = v7;
    v22 = *(a1 + 56);
    v21 = *(a1 + 64);
    v23 = (v2 + *(v20 + 36));
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v23) = v23[16];
    v46 = v24;
    v47 = v25;
    v48 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
    sub_1A34CA490();
    v37 = v44;
    v38 = v43;
    v36 = v45;
    *v16 = swift_getKeyPath();
    v16[264] = 0;
    *(v16 + 34) = swift_getKeyPath();
    v16[280] = 0;
    v26 = v14[6];
    *&v16[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C70);
    swift_storeEnumTagMultiPayload();
    v27 = &v16[v14[8]];
    *v27 = v22;
    v27[1] = v21;
    v27[2] = 0;
    sub_1A34BE884(v13, v10, type metadata accessor for ContactCardConfiguration);
    v28 = sub_1A34CD110();
    v30 = v29;
    type metadata accessor for ContactCardNotesPropertyViewModel(0);
    swift_allocObject();

    v31 = sub_1A3492338(v10, v22, v21, v28, v30);
    sub_1A34BE8EC(v13, type metadata accessor for ContactCardConfiguration);
    *&v16[v14[7]] = v31;
    v32 = &v16[v14[9]];
    v33 = v37;
    *v32 = v38;
    *(v32 + 1) = v33;
    v32[16] = v36;
    sub_1A34BE7CC(&qword_1EB0C2788, type metadata accessor for ContactCardNotes);
    sub_1A34CC1F0();
    sub_1A34BE8EC(v16, type metadata accessor for ContactCardNotes);
    sub_1A328D790(v18, v39, &unk_1EB0CCF90);
    swift_storeEnumTagMultiPayload();
    sub_1A34BE51C();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v18, &unk_1EB0CCF90);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A34BE51C();
    return sub_1A34CB3E0();
  }
}

uint64_t sub_1A34BBB78()
{
  v1 = *v0;
  swift_getKeyPath();
  if (!v1)
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
  sub_1A34C9010();
  v2 = sub_1A34CD040();

  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    sub_1A34C9010();
    LOBYTE(v1) = sub_1A34CD040();

LABEL_5:

    return v1 & 1;
  }

  LOBYTE(v1) = 1;
  return v1 & 1;
}

id sub_1A34BBC68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = a1[16];
  if (!v12)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v35 = a1[16];
  v13 = *a1;
  KeyPath = swift_getKeyPath();
  if (!v13)
  {
    v24 = v35;

    goto LABEL_7;
  }

  v38 = v13;
  v36 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
  sub_1A34C9010();
  v15 = v35;
  v16 = sub_1A34CD040();

  if ((v16 & 1) == 0)
  {
LABEL_7:
    v17 = 2;
    goto LABEL_8;
  }

  v17 = 1;
LABEL_8:
  v34 = v17;
  sub_1A34BE884(*(v3 + 272) + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration, v11, type metadata accessor for ContactCardConfiguration);
  v18 = swift_getKeyPath();
  LOBYTE(v36) = 0;
  v37 = 0;
  sub_1A34CC730();
  v33 = v38;
  v25 = v39;
  sub_1A34BE884(v11, v8, type metadata accessor for ContactCardConfiguration);
  v26 = sub_1A34CD110();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCFD0);
  v19 = swift_allocObject();
  v29 = v35;
  sub_1A34C99D0();
  sub_1A34BE8EC(v11, type metadata accessor for ContactCardConfiguration);
  sub_1A34BE94C(v8, v19 + qword_1EB0C1618, type metadata accessor for ContactCardConfiguration);
  v21 = v25;
  v22 = v33;
  v20 = v34;
  v12 = v35;
  *(v19 + *(*v19 + 112)) = v29;
  *(v19 + *(*v19 + 120)) = v29;
  v30 = (v19 + qword_1EB0C1620);
  *v30 = v26;
  v30[1] = v28;
  v23 = v36;
LABEL_9:
  *a2 = v18;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 264) = v23;
  *(a2 + 272) = v19;
  *(a2 + 280) = v20;
  *(a2 + 288) = v12;
  *(a2 + 296) = 0;
  *(a2 + 304) = v22;
  *(a2 + 312) = v21;

  return v12;
}

uint64_t sub_1A34BBFCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v68 = a3;
  v7 = type metadata accessor for ContactCardDetails();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v8;
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ContactCardLabeledPropertyView();
  MEMORY[0x1EEE9AC00](v67);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  v65 = v3;
  if (v11)
  {
    *&v70 = v11;
    v69 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
    sub_1A34C9010();
    v13 = sub_1A34CD040();

    if (v13)
    {
      v61 = sub_1A34BC798();
      v60 = v14;
      v15 = *(a1 + 64);
      v59 = *(a1 + 56);
      v16 = *(a1 + 32);
      v62 = *(a1 + 24);
      v17 = *(v4 + *(v7 + 24));

      v18 = [v17 isSuggested];
      sub_1A328D790(a1 + 80, &v70, &qword_1EB0C7690);
      if (*(&v71 + 1))
      {
        sub_1A34BEA18();
        if (swift_dynamicCast())
        {
          v19 = v69;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        sub_1A3288FDC(&v70, &qword_1EB0C7690);
        v19 = 0;
      }

      type metadata accessor for ContactCardPostalAddressViewModel(0);
      v31 = swift_allocObject();
      *(v31 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel____lazy_storage___mainThreadScheduler) = 0;
      v36 = OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress;
      *(v31 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__postalAddress) = 0;
      *(v31 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageObservable) = 0;
      *(v31 + OBJC_IVAR____TtC14ContactsUICore33ContactCardPostalAddressViewModel__imageCancelable) = 0;
      sub_1A34C99D0();
      v37 = *(v31 + v36);
      v38 = v19;

      *(v31 + v36) = v19;
      *(v31 + 80) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      sub_1A34C99D0();
      v39 = v60;
      *(v31 + 16) = v61;
      *(v31 + 24) = v39;
      *(v31 + 32) = v59;
      *(v31 + 40) = v15;
      *(v31 + 48) = 0;

      *(v31 + 56) = v62;
      *(v31 + 64) = v16;
      *(v31 + 72) = v18;
      *(v31 + 88) = 0;
      *(v31 + 90) = 0;
      *(v31 + 104) = 0;
      *(v31 + 112) = 0;
      *(v31 + 96) = 0;
      *(v31 + 120) = 0;
      if (v18)
      {
        v40 = sub_1A34CC5E0();
        sub_1A346FC14(v40);
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  LODWORD(v62) = a2;
  v59 = sub_1A34BC798();
  v58 = v20;
  v21 = *(a1 + 64);
  v56 = *(a1 + 56);
  v55 = *(a1 + 72);
  v22 = *(a1 + 32);
  v60 = *(a1 + 24);
  v23 = *(v4 + *(v7 + 24));
  v61 = v22;

  v57 = v21;

  v24 = [v23 isSuggested];
  v25 = swift_getKeyPath();
  if (v11)
  {
    *&v70 = v11;
    v69 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
    sub_1A34C9010();
    v54 = sub_1A34CD040();
  }

  else
  {

    v54 = 0;
  }

  v26 = *(a1 + 153);
  v27 = *(a1 + 168);
  if (v27 >= 2)
  {
    v28 = *(a1 + 160);
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  if (qword_1EB0C1DF8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EB0ED2A0;
  v30 = *(a1 + 176);
  type metadata accessor for ContactCardLabeledPropertyViewModel(0);
  v31 = swift_allocObject();
  *(v31 + 80) = 0;
  *(v31 + 56) = 0;
  *(v31 + 64) = 0;
  sub_1A34C9010();
  sub_1A34C99D0();
  v32 = v58;
  *(v31 + 16) = v59;
  *(v31 + 24) = v32;
  v33 = v57;
  *(v31 + 32) = v56;
  *(v31 + 40) = v33;
  *(v31 + 48) = v55;

  v34 = v61;
  *(v31 + 56) = v60;
  *(v31 + 64) = v34;
  *(v31 + 72) = v24;
  *(v31 + 88) = v62 & 1;
  *(v31 + 89) = v54 & 1;
  *(v31 + 90) = v26;
  *(v31 + 96) = v28;
  *(v31 + 104) = v27;
  *(v31 + 112) = v29;
  *(v31 + 120) = v30;
  if (v24)
  {
    sub_1A34C9010();
    v35 = sub_1A34CC5E0();
    sub_1A346FC14(v35);
  }

LABEL_22:
  v41 = v67;
  v42 = (v10 + *(v67 + 24));
  v42[3] = type metadata accessor for ContactCardLabeledPropertyViewModel(0);
  v42[4] = &off_1F162A118;
  *v42 = v31;
  sub_1A33B2534(a1, &v70);
  v43 = v66;
  sub_1A34BE884(v65, v66, type metadata accessor for ContactCardDetails);
  v44 = (*(v63 + 80) + 193) & ~*(v63 + 80);
  v45 = swift_allocObject();
  v46 = v79;
  *(v45 + 144) = v78;
  *(v45 + 160) = v46;
  *(v45 + 176) = v80;
  *(v45 + 192) = v81;
  v47 = v75;
  *(v45 + 80) = v74;
  *(v45 + 96) = v47;
  v48 = v77;
  *(v45 + 112) = v76;
  *(v45 + 128) = v48;
  v49 = v71;
  *(v45 + 16) = v70;
  *(v45 + 32) = v49;
  v50 = v73;
  *(v45 + 48) = v72;
  *(v45 + 64) = v50;
  sub_1A34BE94C(v43, v45 + v44, type metadata accessor for ContactCardDetails);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  sub_1A3373E40(v10 + *(v41 + 28));
  v51 = (v10 + *(v41 + 20));
  *v51 = sub_1A34BE9B4;
  v51[1] = v45;
  sub_1A34BE7CC(&qword_1EB0C1758, type metadata accessor for ContactCardLabeledPropertyView);
  sub_1A34CC1F0();
  return sub_1A3213F20(v10);
}

uint64_t sub_1A34BC798()
{
  v1 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v0[6];
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = v0[5];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *v0;
    if (*v0)
    {
      v7 = qword_1EB0C1BE8;
      sub_1A34C9010();
      if (v7 != -1)
      {
        swift_once();
      }

      if (sub_1A3335C04(v6, qword_1EB0C1BF8))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
        v28[0] = v6;
        v26[0] = swift_getKeyPath();
        v8 = sub_1A34CD040();

        if (v8)
        {
          v9 = 0x80000001A3511720;
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v25 = sub_1A3332448(MEMORY[0x1E69E7CC0], v10, v9, v4, v3);

        return v25;
      }
    }

    sub_1A34CD0D0();
    if (qword_1EB0C02C0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB0C02D0;
    sub_1A34C9810();
    return sub_1A34CD150();
  }

  else
  {
LABEL_27:
    if (*v0)
    {
      v11 = sub_1A34BCD9C();
      v13 = sub_1A34BD954(v11, v12);

      return v13;
    }

    else
    {
      if (qword_1EB0C4BD0 != -1)
      {
        swift_once();
      }

      v15 = sub_1A34CA250();
      __swift_project_value_buffer(v15, qword_1EB0CCE90);
      sub_1A33B2534(v0, v28);
      v16 = sub_1A34CA230();
      v17 = sub_1A34CD660();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136315138;
        sub_1A33B2534(v28, v26);
        v20 = sub_1A34CD160();
        v22 = v21;
        sub_1A33B25F4(v28);
        v23 = sub_1A31EE23C(v20, v22, &v27);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1A31E6000, v16, v17, "[ContactCardPropertyRowItem] missing localization for: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1A58F1010](v19, -1, -1);
        MEMORY[0x1A58F1010](v18, -1, -1);
      }

      else
      {

        sub_1A33B25F4(v28);
      }

      return 0;
    }
  }
}

uint64_t sub_1A34BCBC8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 && a1[2])
  {
    v8 = type metadata accessor for ContactCardDetails();
    sub_1A34BE884(a2 + *(v8 + 24), v7, type metadata accessor for ContactCardConfiguration);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1A34C9010();
    sub_1A34BE8EC(v7, type metadata accessor for ContactCardConfiguration);
    if (!Strong)
    {

      v14 = a1[17];
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_1A34BCD9C();
    v10 = sub_1A34CD0E0();

    v11 = sub_1A34CD0E0();
    v12 = [Strong shouldPerformDefaultActionForPropertyKey:v10 propertyIdentifier:v11];
    swift_unknownObjectRelease();

    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = a1[17];
  if (v14)
  {
LABEL_6:
    v14(v5);
  }

LABEL_7:
  v15 = (a2 + *(type metadata accessor for ContactCardDetails() + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v15) = v15[16];
  v18[8] = v16;
  v19 = v17;
  v20 = v15;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5440);
  return sub_1A34CA480();
}

uint64_t sub_1A34BCD9C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
  v0 = sub_1A34CD040();

  if (v0)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v1 = sub_1A34CD040();

  if (v1)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v2 = sub_1A34CD040();

  if (v2)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v3 = sub_1A34CD040();

  if (v3)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v4 = sub_1A34CD040();

  if (v4)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v5 = sub_1A34CD040();

  if (v5)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v6 = sub_1A34CD040();

  if (v6)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v7 = sub_1A34CD040();

  if (v7)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v8 = sub_1A34CD040();

  if (v8)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v9 = sub_1A34CD040();

  if (v9)
  {
    return sub_1A34CD110();
  }

  swift_getKeyPath();
  v10 = sub_1A34CD040();

  if (v10)
  {
    return sub_1A34CD110();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A34BD10C()
{
  result = sub_1A34BD12C();
  qword_1EB0CCE88 = result;
  return result;
}

uint64_t sub_1A34BD12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34FF500;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C2D8];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C300];
  v4 = *MEMORY[0x1E695C240];
  *(v0 + 48) = *MEMORY[0x1E695C300];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C2F0];
  v6 = *MEMORY[0x1E695C230];
  *(v0 + 64) = *MEMORY[0x1E695C2F0];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C390];
  v8 = *MEMORY[0x1E695C308];
  *(v0 + 80) = *MEMORY[0x1E695C390];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C310];
  v95 = *MEMORY[0x1E695C348];
  v10 = *MEMORY[0x1E695C348];
  *(v0 + 96) = *MEMORY[0x1E695C310];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E695C350];
  v94 = *MEMORY[0x1E695C340];
  v12 = *MEMORY[0x1E695C340];
  *(v0 + 112) = *MEMORY[0x1E695C350];
  *(v0 + 120) = v12;
  v92 = *MEMORY[0x1E695C328];
  v98 = *MEMORY[0x1E695C358];
  v13 = *MEMORY[0x1E695C358];
  *(v0 + 128) = *MEMORY[0x1E695C328];
  *(v0 + 136) = v13;
  v93 = *MEMORY[0x1E695C1F8];
  v101 = *MEMORY[0x1E695C2C8];
  v14 = *MEMORY[0x1E695C2C8];
  *(v0 + 144) = *MEMORY[0x1E695C1F8];
  *(v0 + 152) = v14;
  v15 = *MEMORY[0x1E695C1D0];
  v100 = *MEMORY[0x1E695C318];
  v16 = *MEMORY[0x1E695C318];
  *(v0 + 160) = *MEMORY[0x1E695C1D0];
  *(v0 + 168) = v16;
  v96 = *MEMORY[0x1E695C320];
  v104 = *MEMORY[0x1E695C278];
  v17 = *MEMORY[0x1E695C278];
  *(v0 + 176) = *MEMORY[0x1E695C320];
  *(v0 + 184) = v17;
  v99 = *MEMORY[0x1E695C400];
  v107 = *MEMORY[0x1E695C270];
  v18 = *MEMORY[0x1E695C270];
  *(v0 + 192) = *MEMORY[0x1E695C400];
  *(v0 + 200) = v18;
  v97 = *MEMORY[0x1E695C410];
  v106 = *MEMORY[0x1E695C330];
  v19 = *MEMORY[0x1E695C330];
  *(v0 + 208) = *MEMORY[0x1E695C410];
  *(v0 + 216) = v19;
  v102 = *MEMORY[0x1E695C208];
  v110 = *MEMORY[0x1E695C360];
  v20 = *MEMORY[0x1E695C360];
  *(v0 + 224) = *MEMORY[0x1E695C208];
  *(v0 + 232) = v20;
  v105 = *MEMORY[0x1E695C1F0];
  v113 = *MEMORY[0x1E695C418];
  v21 = *MEMORY[0x1E695C418];
  *(v0 + 240) = *MEMORY[0x1E695C1F0];
  *(v0 + 248) = v21;
  v103 = *MEMORY[0x1E695C3A8];
  v112 = *MEMORY[0x1E695C3D0];
  v22 = *MEMORY[0x1E695C3D0];
  *(v0 + 256) = *MEMORY[0x1E695C3A8];
  *(v0 + 264) = v22;
  v108 = *MEMORY[0x1E695C2B0];
  v116 = *MEMORY[0x1E695C1E0];
  v23 = *MEMORY[0x1E695C1E0];
  *(v0 + 272) = *MEMORY[0x1E695C2B0];
  *(v0 + 280) = v23;
  v111 = *MEMORY[0x1E695C3F8];
  v119 = *MEMORY[0x1E695C1E8];
  v24 = *MEMORY[0x1E695C1E8];
  *(v0 + 288) = *MEMORY[0x1E695C3F8];
  *(v0 + 296) = v24;
  v109 = *MEMORY[0x1E695C2E0];
  v118 = *MEMORY[0x1E695C1D8];
  v25 = *MEMORY[0x1E695C1D8];
  *(v0 + 304) = *MEMORY[0x1E695C2E0];
  *(v0 + 312) = v25;
  v114 = *MEMORY[0x1E695C298];
  v120 = *MEMORY[0x1E695C280];
  v26 = *MEMORY[0x1E695C280];
  *(v0 + 320) = *MEMORY[0x1E695C298];
  *(v0 + 328) = v26;
  v117 = *MEMORY[0x1E695C2E8];
  v122 = *MEMORY[0x1E695C3C8];
  v27 = *MEMORY[0x1E695C3C8];
  *(v0 + 336) = *MEMORY[0x1E695C2E8];
  *(v0 + 344) = v27;
  v115 = *MEMORY[0x1E695C3C0];
  v121 = *MEMORY[0x1E695C338];
  v28 = *MEMORY[0x1E695C338];
  *(v0 + 352) = *MEMORY[0x1E695C3C0];
  *(v0 + 360) = v28;
  v123 = *MEMORY[0x1E695C200];
  *(v0 + 368) = *MEMORY[0x1E695C200];
  v125 = v0;
  v124 = *MEMORY[0x1E695C1C0];
  v29 = v1;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v95;
  v39 = v11;
  v40 = v94;
  v41 = v92;
  v42 = v98;
  v43 = v93;
  v44 = v101;
  v45 = v15;
  v46 = v100;
  v47 = v96;
  v48 = v104;
  v49 = v99;
  v50 = v107;
  v51 = v97;
  v52 = v106;
  v53 = v102;
  v54 = v110;
  v55 = v105;
  v56 = v113;
  v57 = v103;
  v58 = v112;
  v59 = v108;
  v60 = v116;
  v61 = v111;
  v62 = v119;
  v63 = v109;
  v64 = v118;
  v65 = v114;
  v66 = v120;
  v67 = v117;
  v68 = v122;
  v69 = v115;
  v70 = v121;
  v71 = v123;
  v72 = v124;
  MEMORY[0x1A58EEB60]();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A34CD390();
  }

  sub_1A34CD3B0();
  v73 = @"imageBackgroundColorsData";
  MEMORY[0x1A58EEB60]();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A34CD390();
  }

  sub_1A34CD3B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34E7C90;
  v75 = *MEMORY[0x1E695C420];
  v76 = *MEMORY[0x1E695C428];
  *(inited + 32) = *MEMORY[0x1E695C420];
  *(inited + 40) = v76;
  v77 = *MEMORY[0x1E695C438];
  *(inited + 48) = *MEMORY[0x1E695C438];
  v78 = v75;
  v79 = v76;
  v80 = v77;
  sub_1A31EABF0(inited);
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1A34E7C90;
  v82 = *MEMORY[0x1E695C238];
  v83 = *MEMORY[0x1E695C3A0];
  *(v81 + 32) = *MEMORY[0x1E695C238];
  *(v81 + 40) = v83;
  v84 = *MEMORY[0x1E695C398];
  *(v81 + 48) = *MEMORY[0x1E695C398];
  v85 = v82;
  v86 = v83;
  v87 = v84;
  sub_1A31EABF0(v81);
  v88 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1A58EEB60]();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A34CD390();
  }

  sub_1A34CD3B0();
  v89 = v125;
  if ([objc_opt_self() descriptorForRequiredKeys])
  {
    v90 = swift_unknownObjectRetain();
    MEMORY[0x1A58EEB60](v90);
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A34CD390();
    }

    sub_1A34CD3B0();
    swift_unknownObjectRelease();
    return v125;
  }

  return v89;
}

uint64_t sub_1A34BD81C()
{
  if (qword_1EB0C4BC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A34BD884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34E5180;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v1 = sub_1A33BEBD4(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EB0C1BF8 = v1;
  return result;
}

uint64_t sub_1A34BD954(uint64_t a1, unint64_t a2)
{
  if (qword_1EB0C4BE8 != -1)
  {
    swift_once();
  }

  if (qword_1EB0CCEC8)
  {
    v4 = qword_1EB0CCEC8;
    v5 = sub_1A34CD0E0();
    v6 = sub_1A34CD0E0();
    v7 = CNUICoreLocalizedStringForPropertyWithFormatKey(v5, v6, 0, v4);

    v8 = sub_1A34CD110();
  }

  else
  {
    if (qword_1EB0C4BE0 != -1)
    {
      swift_once();
    }

    v9 = sub_1A34CA250();
    __swift_project_value_buffer(v9, qword_1EB0CCEB0);

    v10 = sub_1A34CA230();
    v11 = sub_1A34CD660();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1A31EE23C(a1, a2, &v15);
      _os_log_impl(&dword_1A31E6000, v10, v11, "[ContactCardDetails.String] missing localization for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1A34BDB78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A34CA250();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A34CA240();
}

void sub_1A34BDBF4()
{
  v0 = sub_1A34CD0E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB0CCEC8 = v1;
}

void sub_1A34BDC64()
{
  v0 = sub_1A34CD0E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB0C02D0 = v1;
}

uint64_t sub_1A34BDCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34CBA90();
  sub_1A34CA460();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCFE0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCFE8) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCFF0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1B0) + 28);
  sub_1A34CCB50();
  v18 = sub_1A34CCC60();
  result = (*(*(v18 - 8) + 56))(v16 + v17, 0, 1, v18);
  *v16 = KeyPath;
  return result;
}

unint64_t sub_1A34BDE3C()
{
  result = qword_1EB0C0408;
  if (!qword_1EB0C0408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCEF0);
    sub_1A3284D0C(&qword_1EB0C0330, &unk_1EB0CCEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0408);
  }

  return result;
}

unint64_t sub_1A34BDEEC()
{
  result = qword_1EB0C0420;
  if (!qword_1EB0C0420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCEE8);
    sub_1A34BDF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0420);
  }

  return result;
}

unint64_t sub_1A34BDF70()
{
  result = qword_1EB0C03A8;
  if (!qword_1EB0C03A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCED8);
    sub_1A34BDE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03A8);
  }

  return result;
}

uint64_t sub_1A34BE000()
{
  type metadata accessor for ContactCardDetails();

  return sub_1A34BA2C8();
}

void sub_1A34BE0C4()
{
  sub_1A33813A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactCardDetailsViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactCardConfiguration(319);
      if (v2 <= 0x3F)
      {
        sub_1A34BE1E0(319, &unk_1EB0C1540, type metadata accessor for ContactCardCustomActionsViewModel);
        if (v3 <= 0x3F)
        {
          sub_1A34BE1E0(319, &unk_1EB0C1B18, type metadata accessor for ContactCardActionsViewModel);
          if (v4 <= 0x3F)
          {
            sub_1A34BE234();
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

void sub_1A34BE1E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A34CD890();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A34BE234()
{
  if (!qword_1EB0C1200)
  {
    v0 = sub_1A34CA4E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1200);
    }
  }
}

unint64_t sub_1A34BE28C()
{
  result = qword_1EB0C0820;
  if (!qword_1EB0C0820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CCF28);
    sub_1A34BDEEC();
    sub_1A34BDF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0820);
  }

  return result;
}

uint64_t sub_1A34BE320@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardDetails() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContactCardDetailsViewModel.Section(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1A34BA5F0(a1, v9, a2);
}

unint64_t sub_1A34BE404()
{
  result = qword_1EB0C07F8;
  if (!qword_1EB0C07F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCF50);
    sub_1A34BE490();
    sub_1A34BE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07F8);
  }

  return result;
}

unint64_t sub_1A34BE490()
{
  result = qword_1EB0C0900;
  if (!qword_1EB0C0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCF58);
    sub_1A34BE51C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0900);
  }

  return result;
}

unint64_t sub_1A34BE51C()
{
  result = qword_1EB0C0F58;
  if (!qword_1EB0C0F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CCF90);
    sub_1A34BE7CC(&qword_1EB0C2788, type metadata accessor for ContactCardNotes);
    sub_1A34BE7CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F58);
  }

  return result;
}

unint64_t sub_1A34BE608()
{
  result = qword_1EB0C1D98;
  if (!qword_1EB0C1D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CCFA0);
    sub_1A34BE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D98);
  }

  return result;
}

unint64_t sub_1A34BE68C()
{
  result = qword_1EB0C1DA8;
  if (!qword_1EB0C1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1DA8);
  }

  return result;
}

unint64_t sub_1A34BE6E0()
{
  result = qword_1EB0C0F00;
  if (!qword_1EB0C0F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCF38);
    sub_1A34BE7CC(&qword_1EB0C1758, type metadata accessor for ContactCardLabeledPropertyView);
    sub_1A34BE7CC(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F00);
  }

  return result;
}

uint64_t sub_1A34BE7CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A34BE814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A34BE884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A34BE8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A34BE94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A34BE9B4()
{
  v1 = *(type metadata accessor for ContactCardDetails() - 8);
  v2 = v0 + ((*(v1 + 80) + 193) & ~*(v1 + 80));

  return sub_1A34BCBC8((v0 + 16), v2);
}

unint64_t sub_1A34BEA18()
{
  result = qword_1EB0C01D0[0];
  if (!qword_1EB0C01D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB0C01D0);
  }

  return result;
}

uint64_t sub_1A34BEA64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardDetails() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A34BB4B8(a1, v6, a2);
}

unint64_t sub_1A34BEB48()
{
  result = qword_1EB0C0C00;
  if (!qword_1EB0C0C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCFF0);
    sub_1A34BEC00();
    sub_1A3284D0C(&qword_1EB0C0678, &qword_1EB0CB1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C00);
  }

  return result;
}

unint64_t sub_1A34BEC00()
{
  result = qword_1EB0C0EC8;
  if (!qword_1EB0C0EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCFE8);
    sub_1A3284D0C(&qword_1EB0C0750, &qword_1EB0CCFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EC8);
  }

  return result;
}

uint64_t CNContactStore.refreshContactsForDisplay(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A335E180;

  return sub_1A34BED64(a1, a2, a3);
}

uint64_t sub_1A34BED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1A34CA250();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A34BEE40, 0, 0);
}

uint64_t sub_1A34BEE40()
{
  v29 = v0;
  if (qword_1EB0C4778 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v2, qword_1EB0EDAE8);
  v0[13] = v5;
  (*(v3 + 16))(v1, v5, v2);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();

  v0[14] = sub_1A34C9EE0();

  sub_1A34C9EA0();
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9678);
  swift_allocObject();
  v6 = sub_1A34C9DC0();
  v0[15] = v6;
  sub_1A34C9EB0();
  sub_1A34C9010();
  sub_1A34C9010();
  v7 = sub_1A34CA230();
  v8 = sub_1A34CD620();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v27 = v0[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    v15 = sub_1A34C9E70();
    v17 = sub_1A31EE23C(v15, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v28[1] = v6;
    sub_1A34C9010();
    ContactIntent = FetchContactIntentRepresentation.description.getter();
    v20 = v19;

    v21 = sub_1A31EE23C(ContactIntent, v20, v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1A31E6000, v7, v8, "%s Intent: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v14, -1, -1);
    MEMORY[0x1A58F1010](v13, -1, -1);

    v22 = *(v11 + 8);
    v22(v27, v12);
  }

  else
  {

    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v0[16] = v22;
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_1A34BF1A0;
  v25 = v0[6];
  v24 = v0[7];

  return sub_1A34C1AB4(v25, v24);
}

uint64_t sub_1A34BF1A0(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[18] = a1;
  v5[19] = v2;

  if (v2)
  {
    v6 = sub_1A34BF6B4;
  }

  else
  {
    v5[20] = a2;
    v6 = sub_1A34BF2C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A34BF2C8()
{
  v1 = v0[15];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CD078);
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[23] = v3;
  ObjectType = swift_getObjectType();
  v0[3] = v1;
  v5 = sub_1A34C9CE0();
  v0[24] = v5;
  v0[25] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[26] = v6;
  sub_1A34C1D38();
  sub_1A34C1894(&qword_1EB0CD040);
  sub_1A339B944();
  sub_1A34C9BA0();
  swift_allocObject();
  v7 = sub_1A34C9B90();
  v0[27] = v7;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1A34BF50C;
  v9 = v0[20];
  v10 = MEMORY[0x1E698ADD0];

  return MEMORY[0x1EEDEBDD8](v3, v0 + 3, v6, v7, v10, ObjectType, &type metadata for FetchContactIntentRepresentation, v9);
}

uint64_t sub_1A34BF50C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1A34BFF1C;
  }

  else
  {

    v5 = sub_1A34BF9F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A34BF6B4()
{
  v32 = v0;
  v1 = v0[19];
  v2 = sub_1A34CD640();
  v3 = v1;
  v4 = sub_1A34CA230();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A31E6000, v4, v2, "Error performing intent: %@", v5, 0xCu);
    sub_1A3288FDC(v6, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  sub_1A34C9EB0();
  sub_1A34C9010();
  v9 = v1;
  v10 = sub_1A34CA230();
  v11 = sub_1A34CD640();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[16];
  if (v12)
  {
    v29 = v0[8];
    v30 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v14 = 136315394;
    v17 = sub_1A34C9E70();
    v19 = sub_1A31EE23C(v17, v18, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_1A31E6000, v10, v11, "%s Error performing intent: %@", v14, 0x16u);
    sub_1A3288FDC(v15, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1A58F1010](v16, -1, -1);
    MEMORY[0x1A58F1010](v14, -1, -1);

    v22 = v29;
    v23 = v30;
  }

  else
  {
    v24 = v0[10];
    v25 = v0[8];

    v23 = v24;
    v22 = v25;
  }

  v13(v23, v22);

  sub_1A34C9E80();

  v26 = v0[1];
  v27 = MEMORY[0x1E69E7CC0];

  return v26(v27);
}

uint64_t sub_1A34BF9F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CD088);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_1A34C9CA0();
  sub_1A34C9D60();
  (*(v2 + 8))(v3, v1);
  v4 = v0[4];
  v0[30] = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_1A34BFC6C;

    return ContactFetchResultEntityRepresentation.contacts.getter();
  }

  else
  {

    v7 = sub_1A34CD620();
    v8 = sub_1A34CA230();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A31E6000, v8, v7, "No values were returned from the intent execution", v9, 2u);
      MEMORY[0x1A58F1010](v9, -1, -1);
    }

    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];

    swift_unknownObjectRelease();

    (*(v11 + 8))(v10, v12);

    sub_1A34C9E80();

    v13 = v0[1];
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1A34BFC6C(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A34BFD6C, 0, 0);
}

uint64_t sub_1A34BFD6C()
{
  v1 = v0[32];
  if (v1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    swift_unknownObjectRelease();
  }

  else
  {
    v2 = sub_1A34CD620();
    v3 = sub_1A34CA230();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A31E6000, v3, v2, "No contacts were returned from the intent execution", v4, 2u);
      MEMORY[0x1A58F1010](v4, -1, -1);
    }

    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];

    swift_unknownObjectRelease();

    (*(v6 + 8))(v5, v7);
    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1A34C9E80();

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_1A34BFF1C()
{
  v32 = v0;
  swift_unknownObjectRelease();

  v1 = v0[29];
  v2 = sub_1A34CD640();
  v3 = v1;
  v4 = sub_1A34CA230();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A31E6000, v4, v2, "Error performing intent: %@", v5, 0xCu);
    sub_1A3288FDC(v6, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  sub_1A34C9EB0();
  sub_1A34C9010();
  v9 = v1;
  v10 = sub_1A34CA230();
  v11 = sub_1A34CD640();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[16];
  if (v12)
  {
    v29 = v0[8];
    v30 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v14 = 136315394;
    v17 = sub_1A34C9E70();
    v19 = sub_1A31EE23C(v17, v18, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_1A31E6000, v10, v11, "%s Error performing intent: %@", v14, 0x16u);
    sub_1A3288FDC(v15, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1A58F1010](v16, -1, -1);
    MEMORY[0x1A58F1010](v14, -1, -1);

    v22 = v29;
    v23 = v30;
  }

  else
  {
    v24 = v0[10];
    v25 = v0[8];

    v23 = v24;
    v22 = v25;
  }

  v13(v23, v22);

  sub_1A34C9E80();

  v26 = v0[1];
  v27 = MEMORY[0x1E69E7CC0];

  return v26(v27);
}

uint64_t FetchContactIntentRepresentation.init(identifiers:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9678);
  swift_allocObject();
  result = sub_1A34C9DC0();
  *a1 = result;
  return result;
}

uint64_t sub_1A34C02F4()
{
  v1 = sub_1A34C9E40();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  v4 = swift_task_alloc();
  sub_1A34C9010();
  sub_1A34C9D90();

  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0CC4C8);

    if (qword_1EB0C4778 != -1)
    {
      swift_once();
    }

    v5 = sub_1A34CA250();
    __swift_project_value_buffer(v5, qword_1EB0EDAE8);
    v6 = sub_1A34CD640();
    v7 = sub_1A34CA230();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A31E6000, v7, v6, "Contact data not available", v8, 2u);
      MEMORY[0x1A58F1010](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(0);
  }

  else
  {
    (*(v2 + 32))(v3, v4, v1);

    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_1A34C05C4;

    return MEMORY[0x1EEDEC0B8]();
  }
}

uint64_t sub_1A34C05C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1A34C0814;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1A34C06F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A34C06F8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = objc_opt_self();
  v7 = sub_1A34C9680();
  v8 = [v6 contactsFromData_];

  sub_1A31EC194(0, &qword_1ED854E70);
  v9 = sub_1A34CD370();

  sub_1A31EC234(v1, v2);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1A34C0814()
{
  if (qword_1EB0C4778 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0EDAE8);
  v3 = sub_1A34CD640();
  v4 = v1;
  v5 = sub_1A34CA230();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A31E6000, v5, v3, "Could not load archived contacts: %@", v8, 0xCu);
    sub_1A3288FDC(v9, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v9, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1A34C0A4C()
{

  sub_1A34C9010();
  sub_1A34C9DF0();
}

void (*FetchContactIntentRepresentation.identifiers.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C9DD0();
  return sub_1A33038D0;
}

uint64_t FetchContactIntentRepresentation.description.getter()
{
  sub_1A34CDAD0();
  MEMORY[0x1A58EEA30](0xD000000000000030, 0x80000001A3513C30);
  sub_1A34C9DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
  sub_1A329A208();
  v0 = sub_1A34CD010();
  v2 = v1;

  MEMORY[0x1A58EEA30](v0, v2);

  MEMORY[0x1A58EEA30](23840, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A34C0CFC(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_1A34C0D60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1A34C0E18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_1A34C0E88()
{
  sub_1A34C9010();
  sub_1A34C9D90();
}

uint64_t sub_1A34C0EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = sub_1A348ACE0(a1, &v7 - v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A348ACE0(&v7 - v4, &v7 - v4);
  sub_1A34C9010();
  sub_1A34C9DA0();

  return sub_1A3288FDC(&v7 - v4, &qword_1EB0CC4C8);
}

uint64_t sub_1A34C0FE4()
{
  sub_1A34C9010();
  sub_1A34C9D90();
}

uint64_t sub_1A34C1034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A348ACE0(a1, &v5 - v3);
  sub_1A34C9010();
  sub_1A34C9DA0();

  return sub_1A3288FDC(a1, &qword_1EB0CC4C8);
}

void (*sub_1A34C10FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_1EB0CD018);
  sub_1A34C9010();
  *(v4 + 40) = sub_1A34C9D80();
  return sub_1A34C1188;
}

void sub_1A34C1188(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1A34C11DC()
{
  sub_1A34C9010();
  v0 = sub_1A34C9DB0();

  return v0;
}

uint64_t ContactFetchResultEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_1EB0CD018;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC670);
  swift_allocObject();
  *(v2 + v3) = sub_1A34C9D70();
  v4 = sub_1A34C9BF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_1A34C9C50();
  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t ContactFetchResultEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_1EB0CD018;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC670);
  swift_allocObject();
  *(v1 + v3) = sub_1A34C9D70();
  v4 = sub_1A34C9BF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_1A34C9C50();
  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t ContactFetchResultEntityRepresentation.deinit()
{
  v0 = sub_1A34C9C40();

  return v0;
}

uint64_t ContactFetchResultEntityRepresentation.__deallocating_deinit()
{
  sub_1A34C9C40();

  return swift_deallocClassInstance();
}

uint64_t sub_1A34C1558(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v4 = *a3;

  return v4;
}

uint64_t type metadata accessor for ContactFetchResultEntityRepresentation()
{
  result = qword_1EB0CD068;
  if (!qword_1EB0CD068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A34C1894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactFetchResultEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_get_4Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_1A34C1AB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A34C1AD4, 0, 0);
}

uint64_t sub_1A34C1AD4()
{
  v1 = [objc_opt_self() defaultEnvironment];
  v2 = sub_1A31EC194(0, &qword_1EB0C9668);
  v3 = MEMORY[0x1E698AE70];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = sub_1A34C9D40();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9670);
  swift_task_alloc();
  sub_1A34C9D00();
  v7 = *(sub_1A34C9D10() - 8);
  swift_task_alloc();
  (*(v7 + 104))();
  sub_1A34C9D30();

  v8 = sub_1A34C9D20();
  v10 = v9;
  (*(v5 + 8))(v6, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v11 = v0[1];

  return v11(v8, v10);
}

unint64_t sub_1A34C1D38()
{
  result = qword_1EB0CD080;
  if (!qword_1EB0CD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CD080);
  }

  return result;
}

id sub_1A34C1DB4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB0C27E0 = result;
  return result;
}

uint64_t sub_1A34C1E0C()
{
  v0 = sub_1A34C9F80();
  __swift_allocate_value_buffer(v0, qword_1EB0ED0B0);
  __swift_project_value_buffer(v0, qword_1EB0ED0B0);
  if (qword_1EB0C27D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB0C27E0;
  return sub_1A34C9F70();
}

uint64_t sub_1A34C1EB4()
{
  v0 = sub_1A34C9F80();
  __swift_allocate_value_buffer(v0, qword_1EB0ED0C8);
  __swift_project_value_buffer(v0, qword_1EB0ED0C8);
  if (qword_1EB0C27D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB0C27E0;
  return sub_1A34C9F70();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EB0CD2C0 == -1)
  {
    if (qword_1EB0CD2C8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EB0CD2C8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EB0CD2B8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EB0CD2AC > a3)
      {
        return 1;
      }

      if (dword_1EB0CD2AC >= a3)
      {
        return dword_1EB0CD2B0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EB0CD2C8;
  if (qword_1EB0CD2C8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EB0CD2C8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1A58F0510](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EB0CD2AC, &dword_1EB0CD2B0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __LoadRTTUtilities_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/RTTUtilities.framework/RTTUtilities (%d)", v1, 8u);
}

void __LoadPersonaUI_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PersonaUI.framework/PersonaUI (%d)", v1, 8u);
}

void __LoadCoreLocation_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/CoreLocation.framework/CoreLocation (%d)", v1, 8u);
}

void __LoadMapKit_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/MapKit.framework/MapKit (%d)", v1, 8u);
}

void __LoadPhotos_block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __LoadPhotosUI_block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __LoadPassKitCore_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore (%d)", v1, 8u);
}

void __LoadAddressBookLegacy_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AddressBookLegacy.framework/AddressBookLegacy (%d)", v1, 8u);
}

void __LoadAvatarPersistence_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AvatarPersistence.framework/AvatarPersistence (%d)", v1, 8u);
}

void __LoadAccessibilityUIUtilities_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AccessibilityUIUtilities.framework/AccessibilityUIUtilities (%d)", v1, 8u);
}

void __LoadContactsAssistantServices_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/ContactsAssistantServices.framework/ContactsAssistantServices (%d)", v1, 8u);
}

void __LoadGameCenterUI_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/GameCenterUI.framework/GameCenterUI (%d)", v1, 8u);
}

void __LoadFTServices_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1A31E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/FTServices.framework/FTServices (%d)", v1, 8u);
}

void __LoadPersonaUI_block_invoke_cold_1_0()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7378](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}