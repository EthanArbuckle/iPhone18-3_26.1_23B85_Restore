uint64_t sub_24616E624(uint64_t a1)
{
  v1 = a1;
  if (qword_281391898 != -1)
  {
    a1 = swift_once();
  }

  v11 = v1;
  MEMORY[0x28223BE20](a1);
  v10[2] = &v11;
  if (sub_246189598(sub_2461700E4, v10, v2))
  {
    v3 = sub_24619F8BC();
    v5 = v4;
    if (v3 == sub_24619F8BC() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_24619FBFC();

      if ((v8 & 1) == 0)
      {
        return 0xD000000000000011;
      }
    }
  }

  return sub_24619F8BC();
}

uint64_t sub_24616E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (qword_281391890 != -1)
  {
    a1 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](a1);
  v44 = &v45;
  v5 = sub_246189598(sub_24617038C, v43, v4);
  if (v5)
  {
    v6 = MEMORY[0x277D005A0];
    goto LABEL_12;
  }

  if (qword_2813918B8 != -1)
  {
    v5 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v5);
  v44 = &v45;
  v8 = sub_246189598(sub_24617038C, v43, v7);
  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_27EE3F798 != -1)
  {
    v8 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v8);
  v44 = &v45;
  v10 = sub_246189598(sub_24617038C, v43, v9);
  if (v10)
  {
LABEL_11:
    v6 = MEMORY[0x277D005B8];
    goto LABEL_12;
  }

  if (qword_2813918C0 != -1)
  {
    v10 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v10);
  v44 = &v45;
  v15 = sub_246189598(sub_24617038C, v43, v14);
  if (v15)
  {
    v6 = MEMORY[0x277D005C8];
    goto LABEL_12;
  }

  if (qword_281391BE0 != -1)
  {
    v15 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v15);
  v44 = &v45;
  v17 = sub_246189598(sub_24617038C, v43, v16);
  if (v17)
  {
    v6 = MEMORY[0x277D005D8];
    goto LABEL_12;
  }

  if (qword_2813918B0 != -1)
  {
    v17 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v17);
  v44 = &v45;
  if (sub_246189598(sub_24617038C, v43, v18))
  {
    v6 = MEMORY[0x277D005A8];
    goto LABEL_12;
  }

  v19 = sub_24619F8BC();
  v21 = v20;
  if (v19 == sub_24619F8BC() && v21 == v22)
  {
    v6 = MEMORY[0x277D005B0];
LABEL_28:

    goto LABEL_12;
  }

  v23 = sub_24619FBFC();

  if (v23)
  {
    v6 = MEMORY[0x277D005B0];
    goto LABEL_12;
  }

  if (qword_281391EC8 != -1)
  {
    v24 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v24);
  v44 = &v45;
  if (sub_246189598(sub_24617038C, v43, v25))
  {
    v6 = MEMORY[0x277D00588];
    goto LABEL_12;
  }

  v26 = sub_24619F8BC();
  v28 = v27;
  if (v26 == sub_24619F8BC() && v28 == v29)
  {
    v6 = MEMORY[0x277D00598];
    goto LABEL_28;
  }

  v30 = sub_24619FBFC();

  if (v30)
  {
    v6 = MEMORY[0x277D00598];
    goto LABEL_12;
  }

  v31 = sub_24619F8BC();
  v33 = v32;
  if (v31 == sub_24619F8BC() && v33 == v34)
  {
    v6 = MEMORY[0x277D00590];
    goto LABEL_28;
  }

  v35 = sub_24619FBFC();

  if (v35)
  {
    v6 = MEMORY[0x277D00590];
    goto LABEL_12;
  }

  v36 = sub_24619F8BC();
  v38 = v37;
  v40 = sub_24619F8BC();
  v41 = v36;
  v6 = MEMORY[0x277D005C0];
  if (v41 == v40 && v38 == v39)
  {
    goto LABEL_28;
  }

  v42 = sub_24619FBFC();

  if ((v42 & 1) == 0)
  {
    v6 = MEMORY[0x277D005D0];
  }

LABEL_12:
  v11 = *v6;
  v12 = sub_24619F12C();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_24616EDF4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F908, &qword_2461A0F60);
  if (swift_dynamicCast())
  {
    sub_246158944(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_24619EE4C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_246170234(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24619FB0C();
  }

  sub_24616F304(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24616FAA8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_24616F3CC(sub_24617029C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_24619EE8C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_24616F924(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24619F91C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24619F94C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24619FB0C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_24616F924(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24619F92C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_24619EE9C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_24619EE9C();
    sub_246170358(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_246170358(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_246170304(*&__src[0], *(&__src[0] + 1));

  sub_2461701E0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_24616F304@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_24616F9F0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_24619EE3C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_24619EDEC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_24619EE7C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_24616F3CC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2461701E0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2461701E0(v6, v5);
    *v3 = xmmword_2461A0F00;
    sub_2461701E0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_24619EDFC() && __OFSUB__(v6, sub_24619EE2C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_24619EE3C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_24619EDDC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_24616F870(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2461701E0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2461A0F00;
    sub_2461701E0(0, 0xC000000000000000);
    sub_24619EE6C();
    result = sub_24616F870(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24616F770@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_24616F9F0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24616FB48(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24616FBC4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_24616F804(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_24616F870(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_24619EDFC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_24619EE2C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_24619EE1C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_24616F924(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24619F95C();
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
    v5 = MEMORY[0x24C19A860](15, a1 >> 16);
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

uint64_t sub_24616F9A0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_24619FAFC();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24616F9F0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24616FAA8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_24619EE3C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_24619EE0C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24619EE7C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24616FB48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24619EE3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24619EDEC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24619EE7C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24616FBC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24619EE3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24619EDEC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0()
{
  v15 = MEMORY[0x277D84F90];
  if (qword_281391898 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v0);
  if (qword_281391890 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v1);
  if (qword_281391EC8 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v2);
  if (qword_2813918B8 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v3);
  if (qword_27EE3F798 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v4);
  if (qword_2813918C0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v5);
  if (qword_2813918B0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v6);
  if (qword_281391C88 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v7);
  if (qword_2813918D0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v8);
  if (qword_27EE3F7A0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v9);
  if (qword_281391ED0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v10);
  if (qword_281391BE0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v11);
  if (qword_281391EC0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v12);
  if (qword_281391CE0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v13);
  return v15;
}

unint64_t sub_246170038()
{
  result = qword_27EE3F8F0;
  if (!qword_27EE3F8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F8F8, &qword_2461A0F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3F8F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_246170104()
{
  result = qword_281391870;
  if (!qword_281391870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F900, &qword_2461A0F58);
    sub_246170188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391870);
  }

  return result;
}

unint64_t sub_246170188()
{
  result = qword_281391F98;
  if (!qword_281391F98)
  {
    sub_24619F1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391F98);
  }

  return result;
}

uint64_t sub_2461701E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_246170234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F910, &qword_2461A0F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24617029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_24616F804(sub_24617036C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_246170304(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_246170358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2461701E0(a1, a2);
  }

  return a1;
}

uint64_t sub_2461703A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_24618BC30(a3, v26 - v10, &qword_27EE3F870, &qword_2461A0FE0);
  v12 = sub_24619F9CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24616CFC4(v11, &qword_27EE3F870, &qword_2461A0FE0);
  }

  else
  {
    sub_24619F9BC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24619F99C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24619F8EC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2461706A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24616B164(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_24616595C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_24616A524();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_24616941C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2461707A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D007A0];
  v3 = sub_24619F7FC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_246170814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24618BC30(a3, v24 - v10, &qword_27EE3F870, &qword_2461A0FE0);
  v12 = sub_24619F9CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24616CFC4(v11, &qword_27EE3F870, &qword_2461A0FE0);
  }

  else
  {
    sub_24619F9BC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24619F99C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24619F8EC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_246170AC0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24616565C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ODIServiceProviderId(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__CFString *sub_246170BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0F70;
  *(v0 + 32) = @"com.apple.bko.ach_ingest";
  *(v0 + 40) = @"com.apple.bko.repayment";
  *(v0 + 48) = @"com.apple.bko.repayment_change";
  *(v0 + 56) = @"com.apple.bko.installment_repayment_change";
  *(v0 + 64) = @"com.apple.bko.installment_request_auth";
  *(v0 + 72) = @"com.apple.bko.id_update";
  qword_2813927F0 = v0;
  v1 = @"com.apple.bko.ach_ingest";
  v2 = @"com.apple.bko.repayment";
  v3 = @"com.apple.bko.repayment_change";
  v4 = @"com.apple.bko.installment_repayment_change";
  v5 = @"com.apple.bko.installment_request_auth";

  return @"com.apple.bko.id_update";
}

void *sub_246170CB4()
{
  if (qword_281391BD8 != -1)
  {
    swift_once();
  }

  v0 = qword_281392818;
  v1 = qword_2813918C8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_246170AC0(v2);
  qword_2813927C8 = v0;
  return result;
}

__CFString *sub_246170D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0F80;
  *(v0 + 32) = @"com.apple.cash.topup";
  *(v0 + 40) = @"com.apple.cash.cip";
  *(v0 + 48) = @"com.apple.cash.ach";
  *(v0 + 56) = @"com.apple.cash.p2p";
  *(v0 + 64) = @"com.apple.cash.p2p.proximity";
  qword_2813927E0 = v0;
  v1 = @"com.apple.cash.topup";
  v2 = @"com.apple.cash.cip";
  v3 = @"com.apple.cash.ach";
  v4 = @"com.apple.cash.p2p";

  return @"com.apple.cash.p2p.proximity";
}

id sub_246170E74(uint64_t a1, void **a2, id *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2461A0F90;
  v8 = *a2;
  v12 = *a3;
  v9 = *a3;
  *(v7 + 32) = *a2;
  *(v7 + 40) = v9;
  *a4 = v7;
  v10 = v8;

  return v12;
}

__CFString *sub_246170F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FA0;
  *(v0 + 32) = @"com.apple.saving.add";
  *(v0 + 40) = @"com.apple.saving.others";
  *(v0 + 48) = @"com.apple.saving.fromcash";
  *(v0 + 56) = @"com.apple.saving.setting";
  *(v0 + 64) = @"com.apple.saving.onboard";
  *(v0 + 72) = @"com.apple.saving.firstaccess";
  *(v0 + 80) = @"com.apple.saving.frombank";
  *(v0 + 88) = @"com.apple.saving.fromsplit";
  *(v0 + 96) = @"com.apple.saving.tocash";
  *(v0 + 104) = @"com.apple.saving.tobank";
  qword_2813927E8 = v0;
  v1 = @"com.apple.saving.add";
  v2 = @"com.apple.saving.others";
  v3 = @"com.apple.saving.fromcash";
  v4 = @"com.apple.saving.setting";
  v5 = @"com.apple.saving.onboard";
  v6 = @"com.apple.saving.firstaccess";
  v7 = @"com.apple.saving.frombank";
  v8 = @"com.apple.saving.fromsplit";
  v9 = @"com.apple.saving.tocash";

  return @"com.apple.saving.tobank";
}

__CFString *sub_246171050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0EF0;
  *(v0 + 32) = @"com.apple.bc.consent";
  *(v0 + 40) = @"com.apple.bc.validation";
  *(v0 + 48) = @"com.apple.bc.validation.bg.relinking";
  qword_2813927D8 = v0;
  v1 = @"com.apple.bc.consent";
  v2 = @"com.apple.bc.validation";

  return @"com.apple.bc.validation.bg.relinking";
}

__CFString *sub_246171108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FB0;
  *(v0 + 32) = @"com.apple.apc.provision.supereasy";
  *(v0 + 40) = @"com.apple.apc.provision.easy";
  *(v0 + 48) = @"com.apple.apc.provision.manual";
  *(v0 + 56) = @"com.apple.apc.provision.inapp";
  *(v0 + 64) = @"com.apple.apc.provision.transit";
  *(v0 + 72) = @"com.apple.apc.provision.access";
  *(v0 + 80) = @"com.apple.apc.provision.identity";
  *(v0 + 88) = @"com.apple.apc.provision.mdp";
  *(v0 + 96) = @"com.apple.apc.provision.cash";
  *(v0 + 104) = @"com.apple.apc.provision.bw";
  *(v0 + 112) = @"com.apple.apc.provision.tap";
  *(v0 + 120) = @"com.apple.apc.provision.other";
  qword_281392858 = v0;
  v1 = @"com.apple.apc.provision.supereasy";
  v2 = @"com.apple.apc.provision.easy";
  v3 = @"com.apple.apc.provision.manual";
  v4 = @"com.apple.apc.provision.inapp";
  v5 = @"com.apple.apc.provision.transit";
  v6 = @"com.apple.apc.provision.access";
  v7 = @"com.apple.apc.provision.identity";
  v8 = @"com.apple.apc.provision.mdp";
  v9 = @"com.apple.apc.provision.cash";
  v10 = @"com.apple.apc.provision.bw";
  v11 = @"com.apple.apc.provision.tap";

  return @"com.apple.apc.provision.other";
}

__CFString *sub_246171280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FB0;
  *(v0 + 32) = @"com.apple.authkit.sign_in";
  *(v0 + 40) = @"com.apple.authkit.trusted_phone_number_change";
  *(v0 + 48) = @"com.apple.authkit.trusted_device_change";
  *(v0 + 56) = @"com.apple.authkit.password_change";
  *(v0 + 64) = @"com.apple.authkit.apple_id_change";
  *(v0 + 72) = @"com.apple.authkit.liveness";
  *(v0 + 80) = @"com.apple.authkit.recovery";
  *(v0 + 88) = @"com.apple.authkit.security_key_change";
  *(v0 + 96) = @"com.apple.authkit.recovery_key_change";
  *(v0 + 104) = @"com.apple.authkit.adp_change";
  *(v0 + 112) = @"com.apple.authkit.account_creation";
  *(v0 + 120) = @"com.apple.authkit.hsa2upgrade";
  qword_281392848 = v0;
  v1 = @"com.apple.authkit.sign_in";
  v2 = @"com.apple.authkit.trusted_phone_number_change";
  v3 = @"com.apple.authkit.trusted_device_change";
  v4 = @"com.apple.authkit.password_change";
  v5 = @"com.apple.authkit.apple_id_change";
  v6 = @"com.apple.authkit.liveness";
  v7 = @"com.apple.authkit.recovery";
  v8 = @"com.apple.authkit.security_key_change";
  v9 = @"com.apple.authkit.recovery_key_change";
  v10 = @"com.apple.authkit.adp_change";
  v11 = @"com.apple.authkit.account_creation";

  return @"com.apple.authkit.hsa2upgrade";
}

uint64_t sub_246171420(uint64_t a1, void *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2461A0FC0;
  *(v5 + 32) = *a2;
  *a3 = v5;

  return MEMORY[0x2821F9840]();
}

void *sub_2461714EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v31 - v3;
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager;
  if (*(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager))
  {
    v6 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
    sub_24616CB20(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v32);
    v8 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundle);
    v9 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier + 8);
    v31[0] = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier);
    v10 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier);
    v11 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier + 8);
    type metadata accessor for ODIBindingsManager();
    v6 = swift_allocObject();
    v6[13] = 0;
    swift_unknownObjectWeakInit();
    v12 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

    v13 = [v12 init];
    v6[16] = 0;
    v6[2] = v7;
    v6[13] = &off_2858EF4B0;
    v6[14] = v13;
    swift_unknownObjectWeakAssign();
    sub_24616CB20(v32, (v6 + 3));
    v14 = type metadata accessor for ODIBindingsFiller(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = v8;

    v18 = v7;
    v19 = v9;
    v20 = v0;
    v6[9] = sub_24615AC28(v10, v11, v8, v31[0], v19);
    v21 = type metadata accessor for ODIBindingsManager.CallbackQueuer(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v6[8] = sub_24615E014();
    sub_24619F27C();
    v31[1] = sub_24619F8BC();
    v31[2] = v24;

    MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v6[10] = sub_24619F24C();
    type metadata accessor for ODIFieldsManager();
    swift_allocObject();
    v25 = v18;
    v26 = sub_24619B458(v10, v11, v25);

    v6[11] = v26;
    v6[15] = sub_24616D0C0(v25);
    v27 = sub_24619F9CC();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v6;

    sub_246170814(0, 0, v4, &unk_2461A1310, v28);

    __swift_destroy_boxed_opaque_existential_1(v32);
    v29 = *(v20 + v5);
    *(v20 + v5) = v6;
  }

  return v6;
}

uint64_t sub_246171854()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_24619F7FC();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_24619F46C();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = sub_24619F22C();
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v1[14] = *(v10 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246171A18, v0, 0);
}

uint64_t sub_246171A18()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v0[10] + 104))(v0[11], *MEMORY[0x277D006B0], v0[9]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_246171AE4;
  v3 = v0[16];
  v4 = v0[11];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_246171AE4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 144) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_246171C58, v6, 0);
}

uint64_t sub_246171C58()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[12];
  v23 = v0[18];
  v24 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v19 = v0[5];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[4];
  v18 = *(v22 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v22 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  sub_24619FAEC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD00000000000001CLL, 0x80000002461A8500);
  v17 = v3;
  sub_24619FB6C();
  v7 = v0[2];
  v8 = v0[3];
  (*(v4 + 104))(v5, *MEMORY[0x277D00760], v6);
  sub_24619F6CC();

  (*(v4 + 8))(v5, v6);
  v9 = sub_24619F9CC();
  (*(*(v9 - 8) + 56))(v19, 1, 1, v9);
  (*(v2 + 16))(v20, v1, v3);
  v10 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v21 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v22;
  *(v13 + 24) = v10;
  (*(v2 + 32))(v13 + v11, v20, v17);
  *(v13 + v12) = v22;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_retain_n();

  sub_2461703A8(0, 0, v19, &unk_2461A1308, v13);

  (*(v2 + 8))(v1, v17);

  v14 = v0[1];
  v15 = v0[18];

  return v14(v15);
}

uint64_t sub_246171F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v8 = sub_24619F7FC();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = sub_24619F22C();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461720AC, a5, 0);
}

uint64_t sub_2461720AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D00608])
  {
    v6 = v0[8];
    v5 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
    __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    sub_24619FAEC();

    v11 = sub_24619F1AC();
    v12 = MEMORY[0x24C19A8B0](v8, v11);
    MEMORY[0x24C19A830](v12);

    (*(v6 + 104))(v5, *MEMORY[0x277D00760], v7);
    sub_24619F6CC();

    (*(v6 + 8))(v5, v7);
    v13 = *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[13] = v13;
    v14 = sub_2461725A8;
LABEL_5:

    return MEMORY[0x2822009F8](v14, v13, 0);
  }

  if (v4 == *MEMORY[0x277D00600])
  {
    v16 = v0[8];
    v15 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];
    v41 = *(v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
    __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    sub_24619FAEC();

    v20 = sub_24619F1AC();
    v21 = MEMORY[0x24C19A8B0](v18, v20);
    MEMORY[0x24C19A830](v21);

    (*(v16 + 104))(v15, *MEMORY[0x277D00760], v17);
    sub_24619F6CC();

    (*(v16 + 8))(v15, v17);
    v13 = *(v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[14] = v13;
    v14 = sub_246172648;
    goto LABEL_5;
  }

  v22 = *MEMORY[0x277D00610];
  v23 = (v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  v24 = v23[4];
  v25 = v4;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  if (v25 == v22)
  {
    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[7];
    (*(v27 + 104))(v26, *MEMORY[0x277D00760], v28);
    sub_24619F6CC();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v29 = v0[11];
    v30 = v0[9];
    v39 = v0[10];
    v31 = v0[8];
    v40 = v0[7];
    v42 = v0[12];
    v32 = v0[4];
    sub_24619FAEC();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000013, 0x80000002461A8520);
    sub_24619FB6C();
    v33 = v0[2];
    v34 = v0[3];
    (*(v31 + 104))(v30, *MEMORY[0x277D00760], v40);
    sub_24619F6FC();

    (*(v31 + 8))(v30, v40);
    (*(v29 + 8))(v42, v39);
  }

  v35 = v0[12];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2461725A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = *(v1 + 112);
  if (v3 <= 2)
  {
    LOBYTE(v3) = 2;
  }

  *(v1 + 112) = v3;
  return MEMORY[0x2822009F8](sub_2461725DC, v2, 0);
}

uint64_t sub_2461725DC()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_246172648()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v1 + 112);
  if (v3 <= 1)
  {
    LOBYTE(v3) = 1;
  }

  *(v1 + 112) = v3;
  return MEMORY[0x2822009F8](sub_24618BD08, v2, 0);
}

uint64_t sub_246172754()
{
  sub_24619FAEC();
  MEMORY[0x24C19A830](0x697373655349444FLL, 0xEF20726F66206E6FLL);
  v2 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  type metadata accessor for ODIServiceProviderId(0);
  sub_24619FB6C();
  return 0;
}

id ODISessionInternal.__allocating_init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return ODISessionInternal.init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(a1, a2, a3, a4, a5, a6);
}

id ODISessionInternal.init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v135 = a6;
  v136 = a3;
  v137 = a5;
  v127 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v111 - v12;
  v13 = sub_24619F68C();
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24619F12C();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = *(v131 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v111 - v20;
  v21 = sub_24619EF4C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v117 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24619EF5C();
  v121 = *(v24 - 8);
  v122 = v24;
  v25 = *(v121 + 64);
  MEMORY[0x28223BE20](v24);
  v129 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24619EFBC();
  v125 = *(v27 - 8);
  v126 = v27;
  v28 = *(v125 + 64);
  MEMORY[0x28223BE20](v27);
  v124 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24619F7FC();
  v114 = *(v30 - 8);
  v115 = v30;
  v31 = v114[8];
  MEMORY[0x28223BE20](v30);
  v113 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v33 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  v34 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  v35 = *(*(v34 - 8) + 56);
  v134 = v33;
  v35(&v7[v33], 1, 1, v34);
  v36 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager] = 0;
  v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut] = 0;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla] = 0x400B333333333333;
  v38 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedDsidTypes;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedDsidTypes] = &unk_2858EF4C0;
  v39 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedServices;
  v40 = _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0();
  *&v7[v39] = v40;
  v41 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID] = a1;
  v133 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType;
  v116 = a2;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType] = a2;
  *&v143 = a1;
  v139[2] = &v143;
  v138 = a1;

  LOBYTE(a1) = sub_246189598(sub_2461700E4, v139, v40);

  if (a1)
  {
    v42 = *&v7[v38];
    v43 = *(v42 + 16);
    v44 = (v42 + 32);
    while (v43)
    {
      v45 = *v44++;
      --v43;
      if (v45 == *&v7[v133])
      {
        v46 = v136;
        v47 = v137;
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundle] = v136;
        v48 = v46;
        v49 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier];
        *v49 = v127;
        *(v49 + 1) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F920, &qword_2461A0FF0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_2461A0FC0;
        v51 = MEMORY[0x277D84D30];
        *(v50 + 56) = MEMORY[0x277D84CC0];
        *(v50 + 64) = v51;

        v112 = v48;
        *(v50 + 32) = sub_246189640(0xFFFFFFFEuLL) + 1;
        v52 = sub_24619F8CC();
        v53 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier];
        *v53 = v52;
        v53[1] = v54;
        v144 = sub_24619EEFC();
        v145 = MEMORY[0x277D004B0];
        __swift_allocate_boxed_opaque_existential_1(&v143);

        sub_24619EECC();
        v55 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
        sub_246158944(&v143, &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger]);
        sub_24616CB20(&v7[v55], &v143);
        v134 = v145;
        v111 = __swift_project_boxed_opaque_existential_1(&v143, v144);
        v141 = 0;
        v142 = 0xE000000000000000;
        sub_24619FAEC();

        v141 = 0xD000000000000023;
        v142 = 0x80000002461A7000;
        v56 = sub_24619F8BC();
        MEMORY[0x24C19A830](v56);

        v57 = v113;
        v58 = v114;
        v59 = v115;
        (v114[13])(v113, *MEMORY[0x277D00788], v115);
        sub_24619F6CC();

        (v58[1])(v57, v59);
        __swift_destroy_boxed_opaque_existential_1(&v143);
        v115 = v55;
        sub_24616CB20(&v7[v55], &v143);
        v114 = v145;
        __swift_project_boxed_opaque_existential_1(&v143, v144);
        (*(v125 + 104))(v124, *MEMORY[0x277D004E8], v126);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F928, &qword_2461A0FF8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2461A0F80;
        *(inited + 32) = 0x776F6C666B726F77;
        *(inited + 40) = 0xEA00000000004449;
        v141 = sub_24619F8BC();
        v142 = v61;
        MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
        v62 = v142;
        *(inited + 48) = v141;
        *(inited + 56) = v62;
        strcpy((inited + 64), "odiSessionID");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        v64 = *v53;
        v63 = v53[1];
        v134 = v53;
        *(inited + 80) = v64;
        *(inited + 88) = v63;
        *(inited + 96) = 0x6570795464697364;
        *(inited + 104) = 0xE800000000000000;
        v141 = v116;

        *(inited + 112) = sub_24619FBBC();
        *(inited + 120) = v65;
        *(inited + 128) = 0xD000000000000016;
        *(inited + 136) = 0x80000002461A7030;
        if (v136)
        {
          v66 = [v112 bundlePath];
          v67 = sub_24619F8BC();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        *(inited + 144) = v67;
        *(inited + 152) = v69;
        *(inited + 160) = 0xD000000000000018;
        *(inited + 168) = 0x80000002461A2110;
        v77 = v137;
        *(inited + 176) = v127;
        *(inited + 184) = v77;
        v78 = sub_246189F8C(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F930, &qword_2461A1000);
        swift_arrayDestroy();
        v141 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F938, &qword_2461A1008);
        sub_24618A0A0();
        v79 = v124;
        sub_24619F70C();

        (*(v125 + 8))(v79, v126);
        __swift_destroy_boxed_opaque_existential_1(&v143);
        sub_24619F27C();
        v80 = v134;
        v81 = *v134;
        v82 = v134[1];
        v83 = v138;
        *&v143 = sub_24619F8BC();
        *(&v143 + 1) = v84;

        MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller] = sub_24619F24C();
        sub_24619F52C();
        sub_24619EF6C();
        sub_24616CB20(&v7[v115], &v143);
        v85 = type metadata accessor for ODISessionStateMachine(0);
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        v88 = v83;
        v89 = v135;
        swift_unknownObjectRetain();
        v90 = sub_24619E2C0(&v143, v88, v89);

        swift_unknownObjectRelease();
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState] = v90;
        v91 = *v80;
        v92 = v80[1];
        type metadata accessor for ODIFieldsManager();
        swift_allocObject();
        v93 = v88;

        v94 = sub_24619B458(v91, v92, v93);

        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager] = v94;
        v95 = v130;
        sub_24616E778(v93, v130);
        sub_24619F8BC();
        (*(v131 + 16))(v128, v95, v132);
        v96 = *&v7[v133];
        if (v96 > 3)
        {
          v97 = MEMORY[0x277D00710];
        }

        else
        {
          v97 = qword_278E9C5C0[v96];
        }

        (*(v118 + 104))(v120, *v97, v119);
        sub_24619F01C();
        v98 = *v134;
        v99 = v134[1];

        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator] = sub_24619EFEC();
        v100 = type metadata accessor for ODISessionInternal(0);
        v140.receiver = v7;
        v140.super_class = v100;
        v101 = objc_msgSendSuper2(&v140, sel_init);
        v102 = sub_24619F9CC();
        v103 = *(*(v102 - 8) + 56);
        v104 = v123;
        v103(v123, 1, 1, v102);
        v105 = swift_allocObject();
        v105[2] = 0;
        v105[3] = 0;
        v105[4] = v101;
        v106 = v101;
        sub_2461703A8(0, 0, v104, &unk_2461A1020, v105);

        v103(v104, 1, 1, v102);
        v107 = swift_allocObject();
        v107[2] = 0;
        v107[3] = 0;
        v107[4] = v106;
        v108 = v106;
        sub_2461703A8(0, 0, v104, &unk_2461A1030, v107);

        v103(v104, 1, 1, v102);
        v109 = swift_allocObject();
        v109[2] = 0;
        v109[3] = 0;
        v109[4] = v108;
        sub_246170814(0, 0, v104, &unk_2461A1040, v109);

        (*(v131 + 8))(v130, v132);
        v110 = v129;
        sub_24619EF3C();

        swift_unknownObjectRelease();
        (*(v121 + 8))(v110, v122);
        return v108;
      }
    }
  }

  swift_unknownObjectRelease();

  sub_24616CFC4(v134 + v7, &qword_27EE3F918, &qword_2461A0FE8);
  v70 = *(v36 + 1);

  v71 = *&v7[v37];

  v72 = *&v7[v38];

  v73 = *&v7[v39];

  type metadata accessor for ODISessionInternal(0);
  swift_defaultActor_destroy();
  v74 = *((*MEMORY[0x277D85000] & *v7) + 0x30);
  v75 = *((*MEMORY[0x277D85000] & *v7) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2461736C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_24619F51C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_24619F7FC();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461737E4, 0, 0);
}

uint64_t sub_2461737E4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 144) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v6 = *(v4 + v5 + 32);
  __swift_project_boxed_opaque_existential_1((v4 + v5), *(v4 + v5 + 24));
  *(v0 + 224) = *MEMORY[0x277D00788];
  v7 = *(v2 + 104);
  *(v0 + 152) = v7;
  *(v0 + 160) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  sub_24619F6CC();
  v8 = *(v2 + 8);
  *(v0 + 168) = v8;
  *(v0 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v10 = *(MEMORY[0x277D00570] + 4);
  v13 = (*MEMORY[0x277D00570] + MEMORY[0x277D00570]);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_246173964;

  return v13(v0 + 16);
}

uint64_t sub_246173964()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_246173ECC;
  }

  else
  {
    v3 = sub_246173A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_246173A78()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D006F8] + 4);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_246173B34;
  v5 = v0[14];

  return MEMORY[0x282152F08](v5, v1, v2);
}

uint64_t sub_246173B34()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2461740B8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[27] = v4;
    *v4 = v3;
    v4[1] = sub_246173CA8;
    v5 = v3[11];
    v6 = v3[14];

    return sub_2461759DC(v6);
  }
}

uint64_t sub_246173CA8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_246173DA4, 0, 0);
}

uint64_t sub_246173DA4()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v10 = *(v0 + 112);
  v6 = (*(v0 + 88) + *(v0 + 144));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2(v4, v3, v5);
  sub_24619F6CC();
  v11(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_246173ECC()
{
  v1 = *(v0 + 192);
  v21 = *(v0 + 168);
  v23 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = (*(v0 + 88) + *(v0 + 144));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000018, 0x80000002461A8660);
  swift_getErrorValue();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_24619FBEC();
  v18(v3, v2, v4);
  sub_24619F6EC();

  v21(v3, v4);
  v22 = *(v0 + 168);
  v24 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 224);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v20 = *(v0 + 112);
  v14 = (*(v0 + 88) + *(v0 + 144));
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v10(v12, v11, v13);
  sub_24619F6CC();
  v22(v12, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2461740B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 208);
  v21 = *(v0 + 168);
  v23 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = (*(v0 + 88) + *(v0 + 144));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000018, 0x80000002461A8660);
  swift_getErrorValue();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_24619FBEC();
  v18(v3, v2, v4);
  sub_24619F6EC();

  v21(v3, v4);
  v22 = *(v0 + 168);
  v24 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 224);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v20 = *(v0 + 112);
  v14 = (*(v0 + 88) + *(v0 + 144));
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v10(v12, v11, v13);
  sub_24619F6CC();
  v22(v12, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2461742AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24619F7FC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617436C, 0, 0);
}

uint64_t sub_24617436C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 48) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v6 = *(v4 + v5 + 32);
  __swift_project_boxed_opaque_existential_1((v4 + v5), *(v4 + v5 + 24));
  *(v0 + 104) = *MEMORY[0x277D00788];
  v7 = *(v2 + 104);
  *(v0 + 56) = v7;
  *(v0 + 64) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  sub_24619F6CC();
  v8 = *(v2 + 8);
  *(v0 + 72) = v8;
  *(v0 + 80) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 88) = v9;

  return MEMORY[0x2822009F8](sub_24617449C, v9, 0);
}

uint64_t sub_24617449C()
{
  v1 = v0[11];
  sub_24619CC30();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_246174534;
  v3 = v0[2];

  return sub_246174FE4();
}

uint64_t sub_246174534()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_246174630, 0, 0);
}

uint64_t sub_246174630()
{
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = (*(v0 + 16) + *(v0 + 48));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v1(v4, v3, v5);
  sub_24619F6CC();
  v10(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_246174728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_24619F46C();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461747E8, 0, 0);
}

uint64_t sub_2461747E8()
{
  v1 = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v0[14] + 104))(v0[15], *MEMORY[0x277D006B0], v0[13]);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2461748AC;
  v3 = v0[15];

  return sub_246197B48(v3);
}

uint64_t sub_2461748AC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_246174A18, v5, 0);
}

uint64_t sub_246174A18()
{
  v1 = *(v0 + 96);
  *(v0 + 136) = sub_2461714EC();

  return MEMORY[0x2822009F8](sub_246174A84, 0, 0);
}

uint64_t sub_246174A84()
{
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9D0, &qword_2461A1338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0FC0;
  *(inited + 32) = @"debugSessionId";
  v3 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier + 8);
  v5 = MEMORY[0x277D837E0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 72) = v5;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  v6 = @"debugSessionId";

  v7 = sub_24618AF08(inited);
  v0[18] = v7;
  swift_setDeallocating();
  sub_24616CFC4(inited + 32, &qword_27EE3F8E0, &qword_2461A0EC0);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_246174BC8;
  v9 = v0[17];

  return sub_246163338(v7);
}

uint64_t sub_246174BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_246174ED4;
    v5 = 0;
  }

  else
  {
    v7 = v2[17];
    v6 = v2[18];
    v8 = v2[12];

    v4 = sub_246174CF8;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_246174CF8()
{
  v0[21] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_246174DA4;

  return sub_246161B48();
}

uint64_t sub_246174DA4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 120);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_246174ED4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_246174FE4()
{
  v1[2] = v0;
  v2 = sub_24619F7FC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_24619F60C();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_24619F68C();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = sub_24619F7DC();
  v1[13] = v12;
  v13 = *(v12 - 8);
  v1[14] = v13;
  v14 = *(v13 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461751F0, v0, 0);
}

uint64_t sub_2461751F0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v2 = *(MEMORY[0x277D00558] + 4);
  v5 = (*MEMORY[0x277D00558] + MEMORY[0x277D00558]);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_2461752A0;

  return v5();
}

uint64_t sub_2461752A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_2461753B8, v5, 0);
}

uint64_t sub_2461753B8()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  sub_24619F8BC();
  v4 = *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType);
  if (v4 > 3)
  {
    v5 = MEMORY[0x277D00710];
  }

  else
  {
    v5 = qword_278E9C5C0[v4];
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  (*(v1 + 104))(v0[12], *v5, v0[10]);
  sub_24619F7BC();
  v9 = *(MEMORY[0x277D00728] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_2461754FC;
  v11 = v0[15];
  v12 = v0[6];

  return MEMORY[0x282152FE0](v12);
}

uint64_t sub_2461754FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = sub_2461758F0;
  }

  else
  {
    v6 = sub_246175634;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_246175634()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v6 = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[20] = v6;

  return MEMORY[0x2822009F8](sub_2461756FC, v6, 0);
}

uint64_t sub_2461756FC()
{
  v1 = v0[20];
  v2 = v0[2];
  sub_24619C0B4(4, 0, 1, v0[9]);

  return MEMORY[0x2822009F8](sub_246175778, v2, 0);
}

uint64_t sub_246175778()
{
  v1 = v0[14];
  v17 = v0[13];
  v18 = v0[15];
  v2 = v0[8];
  v15 = v0[7];
  v16 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = (v0[2] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  (*(v3 + 104))(v4, *MEMORY[0x277D00758], v5);
  sub_24619F6DC();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2461758F0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_24616CFC4(v3, &qword_27EE3F968, &qword_2461A1248);
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2461759DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24619F46C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_24619F7FC();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246175AF8, v1, 0);
}

uint64_t sub_246175AF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 96);
  v5 = *(v0 + 72);
  v18 = *(v0 + 64);
  v6 = sub_2461714EC();
  v7 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  v8 = *(v5 + v7 + 32);
  __swift_project_boxed_opaque_existential_1((v5 + v7), *(v5 + v7 + 24));
  *(v0 + 304) = *MEMORY[0x277D00760];
  v9 = *(v1 + 104);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v2);
  sub_24619F6DC();
  v10 = *(v1 + 8);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  v11 = sub_24619F4EC();
  *(v0 + 176) = v11;
  v12 = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  v13 = *MEMORY[0x277D006B0];
  v14 = *(v4 + 104);
  *(v0 + 184) = v14;
  *(v0 + 192) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v20, v13, v19);
  v15 = swift_task_alloc();
  *(v0 + 200) = v15;
  *v15 = v0;
  v15[1] = sub_246175CBC;
  v16 = *(v0 + 96);

  return sub_2461989D0(v16, v11);
}

uint64_t sub_246175CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *v0;

  v8 = *(v5 + 8);
  v1[26] = v8;
  v1[27] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = swift_task_alloc();
  v1[28] = v9;
  *v9 = v7;
  v9[1] = sub_246175E88;
  v10 = v1[9];

  return sub_2461872B0();
}

uint64_t sub_246175E88()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_246176D5C;
  }

  else
  {
    v6 = sub_246175FB4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_246175FB4()
{
  v1 = v0[8];
  v2 = sub_24619F4FC();
  v0[30] = v2;
  v33 = v0[20];
  v35 = v0[21];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  v6 = (v5 + v0[17]);
  if (v2)
  {
    v7 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_24619FAEC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F900, &qword_2461A0F58);
    v8 = sub_24619F83C();
    MEMORY[0x24C19A830](v8);

    v9 = *MEMORY[0x277D007A0];
    v10 = sub_24619F7FC();
    (*(*(v10 - 8) + 104))(v3, v9, v10);
    sub_24619F73C();

    v33(v3, v4);
    v0[31] = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);

    v11 = sub_246176348;
    v12 = 0;
  }

  else
  {
    v13 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v14 = *MEMORY[0x277D007A0];
    v15 = sub_24619F7FC();
    v16 = (*(v15 - 8) + 104);
    v32 = v14;
    v17 = v14;
    v18 = *v16;
    (*v16)(v3, v17, v15);
    sub_24619F73C();
    v33(v3, v4);
    v19 = v0[8];
    v20 = sub_24619F50C();
    if ((v21 & 1) == 0)
    {
      v34 = v0[20];
      v36 = v0[21];
      v22 = v0[15];
      v31 = v0[13];
      v23 = v0[9];
      v24 = (v23 + v0[17]);
      v25 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla;
      *(v23 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla) = v20 * 0.001;
      v30 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v0[5] = 0;
      v0[6] = 0xE000000000000000;
      MEMORY[0x24C19A830](0x6E20736920414C53, 0xEB0000000020776FLL);
      v26 = *(v23 + v25);
      sub_24619FA3C();
      v27 = v0[5];
      v28 = v0[6];
      v18(v22, v32, v15);
      sub_24619F74C();

      v34(v22, v31);
    }

    v12 = *(v0[9] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[34] = v12;
    v11 = sub_2461768F4;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_246176348()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(*(v0 + 248) + 88);
  (*(v0 + 184))(*(v0 + 96), *MEMORY[0x277D006B8], *(v0 + 80));
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_246176404;
  v5 = *(v0 + 96);

  return sub_2461989D0(v5, v1);
}

uint64_t sub_246176404()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);
  v9 = *v0;

  v4(v5, v6);

  return MEMORY[0x2822009F8](sub_24617659C, v7, 0);
}

uint64_t sub_24617659C()
{
  v1 = v0[31];

  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_246176634;
  v3 = v0[16];

  return sub_246160084();
}

uint64_t sub_246176634()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_246176744, v2, 0);
}

uint64_t sub_246176744()
{
  v1 = v0[8];
  v2 = sub_24619F50C();
  if ((v3 & 1) == 0)
  {
    v4 = v0[20];
    v18 = v0[21];
    v5 = v0[15];
    v6 = v0[13];
    v7 = v0[9];
    v8 = (v7 + v0[17]);
    v9 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla;
    *(v7 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla) = v2 * 0.001;
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x24C19A830](0x6E20736920414C53, 0xEB0000000020776FLL);
    v11 = *(v7 + v9);
    sub_24619FA3C();
    v12 = v0[5];
    v13 = v0[6];
    v14 = *MEMORY[0x277D007A0];
    v15 = sub_24619F7FC();
    (*(*(v15 - 8) + 104))(v5, v14, v15);
    sub_24619F74C();

    v4(v5, v6);
  }

  v16 = *(v0[9] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[34] = v16;

  return MEMORY[0x2822009F8](sub_2461768F4, v16, 0);
}

uint64_t sub_2461768F4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 72);
  sub_24619CF04();

  return MEMORY[0x2822009F8](sub_246176960, v2, 0);
}

uint64_t sub_246176960()
{
  v1 = v0[20];
  v9 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[13];
  v6 = (v0[9] + v0[17]);
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3(v4, *MEMORY[0x277D00798], v5);
  sub_24619F6CC();
  v1(v4, v5);

  return MEMORY[0x2822009F8](sub_246176A60, 0, 0);
}

uint64_t sub_246176A60()
{
  *(v0 + 280) = *(*(v0 + 128) + 80);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_246176B20, v2, v1);
}

uint64_t sub_246176B20()
{
  v1 = v0[35];
  sub_24619F25C();
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_246176BBC;
  v3 = v0[16];

  return sub_2461639F0(1);
}

uint64_t sub_246176BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_246176EEC;
  }

  else
  {
    v6 = sub_246176CE8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_246176CE8()
{
  v1 = v0[16];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_246176D5C()
{
  v1 = *(v0 + 232);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v2 = *(v0 + 304);
  v17 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = (*(v0 + 72) + *(v0 + 136));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_24619FC3C();
  MEMORY[0x24C19A830](v10);

  v15(v3, v2, v4);
  sub_24619F6EC();

  v18(v3, v4);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_246176EEC()
{
  v1 = *(v0 + 296);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v2 = *(v0 + 304);
  v17 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = (*(v0 + 72) + *(v0 + 136));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_24619FC3C();
  MEMORY[0x24C19A830](v10);

  v15(v3, v2, v4);
  sub_24619F6EC();

  v18(v3, v4);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24617707C(void *a1)
{
  v2 = v1;
  v4 = sub_24619F7FC();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v42 - v10;
  v12 = sub_24619EF4C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24619EF5C();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24619F53C();
  v46 = v17;
  sub_24619EF6C();
  v18 = sub_24619F9CC();
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;

  sub_2461703A8(0, 0, v11, &unk_2461A1050, v20);

  if (a1)
  {
    v21 = sub_24618BD20((v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger));
    if (v21)
    {
      if (*(v21 + 16))
      {
        v22 = v21;
        v19(v11, 1, 1, v18);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v2;
        v23[5] = v22;

        sub_246170814(0, 0, v11, &unk_2461A1060, v23);

        goto LABEL_16;
      }
    }
  }

  v44 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v45 = v14;
  sub_24616CB20(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v52);
  v42[1] = v54;
  v42[0] = __swift_project_boxed_opaque_existential_1(v52, v53);
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_24619FAEC();

  v50 = 0xD00000000000002FLL;
  v51 = 0x80000002461A7070;
  if (a1 && (v24 = [a1 attributes]) != 0)
  {
    v25 = v24;
    type metadata accessor for ODIAttributeKey(0);
    sub_24618AC5C(&qword_281391860, type metadata accessor for ODIAttributeKey);
    sub_24619F82C();

    v26 = sub_24619F84C();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  MEMORY[0x24C19A830](v26, v28);

  v29 = *MEMORY[0x277D007A0];
  v30 = v48;
  v31 = v49;
  v43 = *(v48 + 104);
  v43(v7, v29, v49);
  sub_24619F76C();

  v33 = v30 + 8;
  v32 = *(v30 + 8);
  v32(v7, v31);
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_24616CB20(v44 + v2, v52);
  v44 = __swift_project_boxed_opaque_existential_1(v52, v53);
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_24619FAEC();

  v50 = 0xD000000000000026;
  v51 = 0x80000002461A70A0;
  if (a1)
  {
    v34 = [a1 attributes];
    v35 = 7104878;
    if (v34)
    {
      type metadata accessor for ODIAttributeKey(0);
      sub_24618AC5C(&qword_281391860, type metadata accessor for ODIAttributeKey);
      v48 = v33;
      sub_24619F82C();

      v36 = sub_24619F83C();
      v38 = v37;

      v35 = v36;
    }

    else
    {
      v38 = 0xE300000000000000;
    }
  }

  else
  {
    v38 = 0xE300000000000000;
    v35 = 7104878;
  }

  MEMORY[0x24C19A830](v35, v38);

  v39 = v49;
  v43(v7, v29, v49);
  sub_24619F79C();

  v32(v7, v39);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v14 = v45;
LABEL_16:
  v40 = v46;
  sub_24619EF3C();
  return (*(v47 + 8))(v40, v14);
}

uint64_t sub_246177760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_24619F3FC();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617784C, 0, 0);
}

uint64_t sub_24617784C()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v3 - 8) + 56))(v1, 1, 5, v3);

  return MEMORY[0x2822009F8](sub_24617790C, v2, 0);
}

uint64_t sub_24617790C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_24619DA28(v4, v1);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2461779C8, 0, 0);
}

uint64_t sub_2461779C8()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_246177A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_246177A54, a4, 0);
}

uint64_t sub_246177A54()
{
  v1 = v0[2];
  v0[4] = sub_2461714EC();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_246177AF8;
  v3 = v0[3];

  return sub_246163338(v3);
}

uint64_t sub_246177AF8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_246177C34, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_246177C34()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_246177CF4(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = sub_24619F4DC();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24619F7FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v9 + 104))(v12, *MEMORY[0x277D00790], v8);
  sub_24619F6CC();
  (*(v9 + 8))(v12, v8);
  sub_24619F4BC();
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;

  sub_246180944(v7, sub_24618A538, v14);

  return (*(v4 + 8))(v7, v18);
}

void sub_2461781AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_24619F88C();
    if (a3)
    {
LABEL_3:
      v7 = sub_24619EE5C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_24617823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v28[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v28 - v7;
  v29 = sub_24619EFBC();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24619F7FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  v18 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24);
  v28[1] = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), v18);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000004CLL, 0x80000002461A7100);
  v34 = a1;
  v19 = sub_24619FBBC();
  MEMORY[0x24C19A830](v19);

  (*(v13 + 104))(v16, *MEMORY[0x277D007A0], v12);
  sub_24619F73C();

  (*(v13 + 8))(v16, v12);
  v20 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v21 = v29;
  (*(v8 + 104))(v11, *MEMORY[0x277D004F0], v29);
  v22 = v28[0];
  v35 = v28[0];
  sub_24619FBBC();
  sub_24619F71C();

  (*(v8 + 8))(v11, v21);
  v23 = sub_24619F9CC();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v30;
  v25[5] = v22;
  v26 = v33;
  v25[6] = v32;
  v25[7] = v26;

  sub_2461703A8(0, 0, v24, &unk_2461A1070, v25);
}

uint64_t sub_24617862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_246161518;

  return sub_246178A7C(a5, a6, a7);
}

uint64_t sub_246178778(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_24619F9CC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2461703A8(0, 0, v8, &unk_2461A1080, v10);
}

uint64_t sub_24617889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2461788C0, a4, 0);
}

uint64_t sub_2461788C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2461788EC, v1, 0);
}

uint64_t sub_2461788EC()
{
  v1 = v0[5];
  sub_24619D1D8(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_246178A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = sub_24619EEBC();
  v4[31] = v7;
  v8 = *(v7 - 8);
  v4[32] = v8;
  v9 = *(v8 + 64) + 15;
  v4[33] = swift_task_alloc();
  v10 = sub_24619F43C();
  v4[34] = v10;
  v11 = *(v10 - 8);
  v4[35] = v11;
  v12 = *(v11 + 64) + 15;
  v4[36] = swift_task_alloc();
  v13 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v14 = sub_24619F7FC();
  v4[38] = v14;
  v15 = *(v14 - 8);
  v4[39] = v15;
  v16 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v17 = sub_24619F3FC();
  v4[41] = v17;
  v18 = *(v17 - 8);
  v4[42] = v18;
  v19 = *(v18 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246178D20, v3, 0);
}

uint64_t sub_246178D20()
{
  v1 = *(*(v0 + 216) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 376) = v1;
  return MEMORY[0x2822009F8](sub_246178D4C, v1, 0);
}

uint64_t sub_246178D4C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[27];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[48] = v7;
  v0[49] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_246178E10, v5, 0);
}

uint64_t sub_246178E10()
{
  v1 = v0[46];
  v2 = sub_24619F35C();
  v3 = v0[46];
  if (v2)
  {
    v4 = v0[42];
    v44 = v0[41];
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];
    v8 = (v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
    v9 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    (*(v6 + 104))(v5, *MEMORY[0x277D00778], v7);
    sub_24619F6FC();
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v3, v44);
    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[43];
    v12 = v0[44];
    v14 = v0[40];
    v16 = v0[36];
    v15 = v0[37];
    v17 = v0[33];
    v19 = v0[29];
    v18 = v0[30];
    v45 = v0[28];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[46];
    v23 = sub_24619F3CC();
    v24 = MEMORY[0x277D00778];
    if ((v23 & 1) == 0)
    {
      v26 = v0[39];
      v25 = v0[40];
      v27 = v0[38];
      v28 = (v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
      v29 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      (*(v26 + 104))(v25, *v24, v27);
      sub_24619F6FC();
      (*(v26 + 8))(v25, v27);
    }

    v30 = v0[46];
    v31 = sub_24619F2DC();
    v32 = v0[47];
    if (v31)
    {
      v34 = v0[39];
      v33 = v0[40];
      v35 = v0[38];
      v46 = v0[37];
      v36 = (v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
      v37 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      (*(v34 + 104))(v33, *v24, v35);
      sub_24619F6CC();
      (*(v34 + 8))(v33, v35);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
      (*(*(v38 - 8) + 56))(v46, 5, 5, v38);
      v39 = sub_24617A8EC;
    }

    else
    {
      v40 = v0[41];
      v41 = v0[37];
      v0[50] = swift_allocBox();
      v0[51] = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
      (*(*(v43 - 8) + 56))(v41, 5, 5, v43);
      v39 = sub_2461791FC;
    }

    return MEMORY[0x2822009F8](v39, v32, 0);
  }
}

uint64_t sub_2461791FC()
{
  v1 = v0[47];
  v2 = v0[37];
  v3 = v0[27];
  sub_24619DA28(v2, v0[51]);
  sub_24618AD14(v2, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246179298, v3, 0);
}

uint64_t sub_246179298()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);
  v5 = *(v0 + 328);
  v6 = *(v0 + 208);
  (*(v0 + 200))();
  v3(v4, v1, v5);
  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  *v7 = v0;
  v7[1] = sub_246179370;
  v8 = *(v0 + 360);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);

  return sub_246180EE8(v8, v10);
}

uint64_t sub_246179370()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 336);
  v5 = *(*v0 + 328);
  v6 = *v0;

  v7 = *(v4 + 8);
  v1[53] = v7;
  v1[54] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = swift_task_alloc();
  v1[55] = v8;
  *v8 = v6;
  v8[1] = sub_246179518;
  v9 = v1[27];

  return sub_246181868();
}

uint64_t sub_246179518()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_246179628, v2, 0);
}

uint64_t sub_246179628()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  if (*(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) == 1 && v2 == 0)
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    (*(v10 + 104))(v9, *MEMORY[0x277D00778], v11);
    sub_24619F6CC();
    (*(v10 + 8))(v9, v11);
    v5 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    v6 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId + 8);
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
    v5 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    *(v0 + 448) = v5;
    v6 = *(v4 + 8);
    *(v0 + 456) = v6;
    if (!v2)
    {
      v118 = *(v0 + 408);
      v122 = *(v0 + 392);
      v114 = *(v0 + 384);
      v126 = *(v0 + 376);
      v56 = *(v0 + 320);
      v101 = *(v0 + 360);
      v104 = *(v0 + 328);
      v58 = *(v0 + 304);
      v57 = *(v0 + 312);
      v59 = *(v0 + 280);
      v107 = *(v0 + 272);
      v110 = *(v0 + 288);
      v98 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      (*(v57 + 104))(v56, *MEMORY[0x277D00778], v58);

      sub_24619F6CC();
      (*(v57 + 8))(v56, v58);
      *(v0 + 464) = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
      v114(v101, v118, v104);
      (*(v59 + 104))(v110, *MEMORY[0x277D006A8], v107);
      v54 = sub_24617A1BC;
      v55 = v126;
      goto LABEL_19;
    }

    if (v2 != 2)
    {
      if (v2 == 1)
      {
        v7 = *(v0 + 432);
        v8 = *(v0 + 400);
        (*(v0 + 424))(*(v0 + 368), *(v0 + 328));
      }

      else
      {
        v123 = *(v0 + 424);
        v127 = *(v0 + 432);
        v60 = *(v0 + 400);
        v61 = *(v0 + 320);
        v115 = *(v0 + 328);
        v119 = *(v0 + 368);
        v63 = *(v0 + 304);
        v62 = *(v0 + 312);
        v111 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
        __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
        sub_24619FAEC();

        *(v0 + 184) = v2;
        v64 = sub_24619FBBC();
        MEMORY[0x24C19A830](v64);

        (*(v62 + 104))(v61, *MEMORY[0x277D00778], v63);
        sub_24619F6FC();

        (*(v62 + 8))(v61, v63);
        v123(v119, v115);
      }

LABEL_29:

      v87 = *(v0 + 360);
      v86 = *(v0 + 368);
      v89 = *(v0 + 344);
      v88 = *(v0 + 352);
      v90 = *(v0 + 320);
      v92 = *(v0 + 288);
      v91 = *(v0 + 296);
      v93 = *(v0 + 264);
      v95 = *(v0 + 232);
      v94 = *(v0 + 240);
      v129 = *(v0 + 224);

      v96 = *(v0 + 8);

      return v96();
    }
  }

  v99 = v5;
  *(v0 + 488) = v6;
  *(v0 + 496) = v5;
  sub_24619EF2C();
  v120 = v6;

  if (sub_24619EF1C())
  {
    v102 = *(v0 + 424);
    v105 = *(v0 + 432);
    v13 = *(v0 + 408);
    v15 = *(v0 + 384);
    v14 = *(v0 + 392);
    v16 = *(v0 + 352);
    v17 = *(v0 + 328);
    v18 = *(v0 + 264);
    v124 = *(v0 + 248);
    v112 = *(v0 + 216);
    v116 = *(v0 + 256);
    v19 = sub_24619F7EC();
    sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740]);
    v108 = swift_allocError();
    v21 = v20;
    v15(v16, v13, v17);
    v22 = sub_24619F39C();
    LOBYTE(v14) = v23;
    v102(v16, v17);
    v24 = *&v22;
    if (v14)
    {
      v24 = 0.0;
    }

    *v21 = v24;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D00738], v19);
    v25 = *(v112 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
    sub_24619F8BC();
    sub_24619EEAC();
    sub_24619EF0C();

    (*(v116 + 8))(v18, v124);
  }

  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  v28 = *(v0 + 392);
  v29 = *(v0 + 344);
  v30 = *(v0 + 328);
  v31 = *(v0 + 216);
  (*(v0 + 384))(v29, *(v0 + 408), v30);
  sub_24619F3DC();
  v33 = v32;
  v27(v29, v30);
  v125 = *(v31 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v31 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  if (v33)
  {
    v34 = *(v0 + 312);
    v35 = *(v0 + 320);
    v36 = *(v0 + 304);
    v37 = *(v0 + 240);
    v38 = *(v0 + 216);
    sub_24619FAEC();
    *(v0 + 168) = 0;
    *(v0 + 176) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000075, 0x80000002461A80C0);
    sub_24619FA3C();
    MEMORY[0x24C19A830](0xD000000000000011, 0x80000002461A8140);
    v40 = *(v0 + 168);
    v39 = *(v0 + 176);
    (*(v34 + 104))(v35, *MEMORY[0x277D00778], v36);
    sub_24619F6DC();

    (*(v34 + 8))(v35, v36);
    v41 = v38;
    v42 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
    swift_beginAccess();
    sub_24618BC30(v41 + v42, v37, &qword_27EE3F918, &qword_2461A0FE8);
    v43 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v45(v37, 1, v43);
    v47 = *(v0 + 240);
    if (v46 || !*v47)
    {
      sub_24616CFC4(v47, &qword_27EE3F918, &qword_2461A0FE8);
    }

    else
    {
      v65 = *(v0 + 240);
      v66 = *v47;

      sub_24616CFC4(v65, &qword_27EE3F918, &qword_2461A0FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
      sub_24619F9DC();
    }

    v67 = *(v0 + 392);
    v68 = *(v0 + 232);
    v69 = *(v0 + 216);
    (*(v0 + 384))(&v68[*(v43 + 20)], *(v0 + 408), *(v0 + 328));
    *v68 = 0;
    (*(v44 + 56))(v68, 0, 1, v43);
    swift_beginAccess();
    sub_24618ACA4(v68, v41 + v42);
    swift_endAccess();
    v70 = sub_24617148C();
    v72 = v71;
    v73 = v45(v71, 1, v43);
    v75 = *(v0 + 424);
    v74 = *(v0 + 432);
    v76 = *(v0 + 400);
    v77 = *(v0 + 368);
    v78 = *(v0 + 328);
    if (v73)
    {

      (v70)(v0 + 16, 0);
    }

    else
    {
      v79 = *(v0 + 216);
      v80 = *(v0 + 224);
      v128 = v80;
      v81 = sub_24619F9CC();
      (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
      v82 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal);
      v83 = swift_allocObject();
      v83[2] = v79;
      v83[3] = v82;
      v83[4] = v79;
      v83[5] = v76;
      v83[6] = v99;
      v83[7] = v120;
      swift_retain_n();

      v84 = sub_246170814(0, 0, v128, &unk_2461A12F0, v83);
      v85 = *v72;
      *v72 = v84;

      v70();
    }

    v75(v77, v78);
    goto LABEL_29;
  }

  v113 = *(v0 + 408);
  v117 = *(v0 + 392);
  v121 = *(v0 + 376);
  v48 = *(v0 + 360);
  v49 = *(v0 + 320);
  v50 = *(v0 + 304);
  v51 = *(v0 + 312);
  v52 = *(v0 + 280);
  v106 = *(v0 + 288);
  v109 = *(v0 + 384);
  v100 = *(v0 + 328);
  v103 = *(v0 + 272);
  v53 = *(v0 + 216);
  (*(v51 + 104))(v49, *MEMORY[0x277D00778], v50);
  sub_24619F6DC();
  (*(v51 + 8))(v49, v50);
  *(v0 + 504) = *(v53 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v109(v48, v113, v100);
  (*(v52 + 104))(v106, *MEMORY[0x277D006A0], v103);
  v54 = sub_24617A5D8;
  v55 = v121;
LABEL_19:

  return MEMORY[0x2822009F8](v54, v55, 0);
}

uint64_t sub_24617A1BC()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[59] = v3;
  v4 = *(MEMORY[0x277D00560] + 4);
  v12 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v5 = swift_task_alloc();
  v0[60] = v5;
  *v5 = v0;
  v5[1] = sub_24617A2B0;
  v6 = v0[57];
  v7 = v0[58];
  v8 = v0[56];
  v9 = v0[45];
  v10 = v0[36];

  return v12(v9, v10, v3, v8, v6);
}

uint64_t sub_24617A2B0()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 456);
  v12 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v5 = *(*v0 + 360);
  v6 = *(*v0 + 328);
  v7 = *(*v0 + 288);
  v8 = *(*v0 + 280);
  v9 = *(*v0 + 272);
  v10 = *(*v0 + 216);
  v13 = *v0;

  (*(v8 + 8))(v7, v9);
  v4(v5, v6);

  return MEMORY[0x2822009F8](sub_24617A4D0, v10, 0);
}

uint64_t sub_24617A4D0()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 400);
  (*(v0 + 424))(*(v0 + 368), *(v0 + 328));

  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 320);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v15 = *(v0 + 224);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24617A5D8()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[64] = v3;
  v4 = *(MEMORY[0x277D00560] + 4);
  v12 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_24617A6CC;
  v6 = v0[62];
  v7 = v0[63];
  v8 = v0[61];
  v9 = v0[45];
  v10 = v0[36];

  return v12(v9, v10, v3, v6, v8);
}

uint64_t sub_24617A6CC()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 488);
  v12 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v5 = *(*v0 + 360);
  v6 = *(*v0 + 328);
  v7 = *(*v0 + 288);
  v8 = *(*v0 + 280);
  v9 = *(*v0 + 272);
  v10 = *(*v0 + 216);
  v13 = *v0;

  (*(v8 + 8))(v7, v9);
  v4(v5, v6);

  return MEMORY[0x2822009F8](sub_24618BD0C, v10, 0);
}

uint64_t sub_24617A8EC()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[37];
  v6 = v0[27];
  sub_24619DA28(v5, v2);
  sub_24618AD14(v5, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v7 = *(v4 + 8);
  v0[66] = v7;
  v0[67] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);

  return MEMORY[0x2822009F8](sub_24617A9C0, v6, 0);
}

uint64_t sub_24617A9C0()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 368);
  v4 = *(v0 + 328);
  v5 = *(v0 + 208);
  (*(v0 + 200))();
  v2(v3, v4);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 320);
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  v13 = *(v0 + 264);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v18 = *(v0 + 224);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24617AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[14] = a4;
  v9 = sub_24619F43C();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = sub_24619F3FC();
  v7[20] = v12;
  v13 = *(v12 - 8);
  v7[21] = v13;
  v14 = *(v13 + 64) + 15;
  v7[22] = swift_task_alloc();
  v15 = sub_24619F7FC();
  v7[23] = v15;
  v16 = *(v15 - 8);
  v7[24] = v16;
  v17 = *(v16 + 64) + 15;
  v7[25] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24617AC9C, a4, 0);
}

uint64_t sub_24617AC9C()
{
  v1 = *(MEMORY[0x277D857E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_24617AD3C;

  return MEMORY[0x282200480](10000000000);
}

uint64_t sub_24617AD3C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[25];
    v5 = v2[26];
    v7 = v2[22];
    v8 = v2[19];

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    v11 = v2[14];

    return MEMORY[0x2822009F8](sub_24617AEA0, v11, 0);
  }
}

uint64_t sub_24617AEA0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v12 = v0[21];
  v13 = v0[20];
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[19];
  v6 = v0[14];
  v7 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618ACA4(v1, v6 + v8);
  swift_endAccess();
  v9 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v3 + 104))(v4, *MEMORY[0x277D00778], v5);
  sub_24619F6DC();
  (*(v3 + 8))(v4, v5);
  swift_beginAccess();
  sub_24619F34C();
  swift_endAccess();
  v0[29] = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  swift_beginAccess();
  (*(v12 + 16))(v14, v2, v13);
  (*(v15 + 104))(v17, *MEMORY[0x277D006A0], v16);
  v10 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[30] = v10;

  return MEMORY[0x2822009F8](sub_24617B0D4, v10, 0);
}

uint64_t sub_24617B0D4()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[31] = v3;
  v4 = *(MEMORY[0x277D00560] + 4);
  v12 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_24617B1C8;
  v6 = v0[29];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[16];

  return v12(v7, v8, v3, v9, v10);
}

uint64_t sub_24617B1C8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v7 = *(*v0 + 160);
  v8 = *(*v0 + 152);
  v9 = *(*v0 + 144);
  v10 = *(*v0 + 136);
  v13 = *v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_24617B3EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 640) = a4;
  *(v5 + 128) = a3;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_24619F3FC();
  *(v5 + 152) = v7;
  v8 = *(v7 - 8);
  *(v5 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v10 = sub_24619F22C();
  *(v5 + 176) = v10;
  v11 = *(v10 - 8);
  *(v5 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v13 = sub_24619F4DC();
  *(v5 + 208) = v13;
  v14 = *(v13 - 8);
  *(v5 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F978, &qword_2461A1258) - 8) + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  v17 = sub_24619F4AC();
  *(v5 + 240) = v17;
  v18 = *(v17 - 8);
  *(v5 + 248) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v20 = sub_24619EEBC();
  *(v5 + 264) = v20;
  v21 = *(v20 - 8);
  *(v5 + 272) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  v23 = sub_24619F42C();
  *(v5 + 288) = v23;
  v24 = *(v23 - 8);
  *(v5 + 296) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  v26 = sub_24619F2CC();
  *(v5 + 312) = v26;
  v27 = *(v26 - 8);
  *(v5 + 320) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v29 = sub_24619F1EC();
  *(v5 + 336) = v29;
  v30 = *(v29 - 8);
  *(v5 + 344) = v30;
  v31 = *(v30 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F970, &qword_2461A1250) - 8) + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  v33 = sub_24619F7FC();
  *(v5 + 384) = v33;
  v34 = *(v33 - 8);
  *(v5 + 392) = v34;
  v35 = *(v34 + 64) + 15;
  *(v5 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617B854, v4, 0);
}

uint64_t sub_24617B854()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 640);
  v3 = *(v0 + 120);
  v4 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 408) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v36 = (v1 + v4);
  sub_24616CB20(v1 + v4, v0 + 16);
  v41 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000004ALL, 0x80000002461A7E20);
  v5 = sub_24619F4CC();
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x24C19A830](v7, v8);

  MEMORY[0x24C19A830](0xD000000000000014, 0x80000002461A7E70);
  if (v2)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    *(v0 + 104) = *(v0 + 128);
    sub_24618B618();
    v10 = sub_24619FA7C();
    v9 = v11;
  }

  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v16 = *(v0 + 136);
  v38 = *(v0 + 120);
  MEMORY[0x24C19A830](v10, v9);

  v17 = *MEMORY[0x277D00770];
  *(v0 + 632) = v17;
  v18 = *(v13 + 104);
  *(v0 + 416) = v18;
  *(v0 + 424) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v35 = v18;
  v18(v12, v17, v15);
  sub_24619F6DC();

  v19 = *(v13 + 8);
  *(v0 + 432) = v19;
  *(v0 + 440) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v20 = sub_24619EFDC();
  *(v0 + 448) = v20;
  v21 = *(v20 - 8);
  *(v0 + 456) = v21;
  v22 = *(v21 + 56);
  *(v0 + 464) = v22;
  *(v0 + 472) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v14, 1, 1, v20);
  *(v0 + 480) = sub_2461714EC();
  if (sub_24619F4CC())
  {
    v23 = *(v0 + 400);
    v24 = *(v0 + 384);
    v42 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v35(v23, v17, v24);
    sub_24619F6DC();
    v19(v23, v24);

    return MEMORY[0x2822009F8](sub_24617BE34, 0, 0);
  }

  else
  {
    sub_24619F9FC();
    v40 = *(v0 + 432);
    v43 = *(v0 + 440);
    v25 = *(v0 + 416);
    v37 = *(v0 + 424);
    v26 = *(v0 + 400);
    v27 = *(v0 + 384);
    v39 = *(v0 + 640);
    v28 = *(v0 + 128);
    v29 = (*(v0 + 136) + *(v0 + 408));
    v30 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    *(v0 + 636) = *MEMORY[0x277D00760];
    v25(v26);
    sub_24619F6DC();
    v40(v26, v27);
    v31 = *(MEMORY[0x277D004B8] + 4);

    v32 = swift_task_alloc();
    *(v0 + 496) = v32;
    *v32 = v0;
    v32[1] = sub_24617C338;
    v33 = *(v0 + 136);

    return MEMORY[0x282152BB8]();
  }
}

uint64_t sub_24617BE34()
{
  v1 = *(v0 + 480);
  v11 = *(v0 + 432);
  v12 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 632);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v2(v5, v4, v6);
  sub_24619F6DC();
  v11(v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *v8 = v0;
  v8[1] = sub_24617BF60;
  v9 = *(v0 + 480);

  return sub_246160084();
}

uint64_t sub_24617BF60()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24617C070, v2, 0);
}

uint64_t sub_24617C070()
{
  sub_24619F9FC();
  v13 = *(v0 + 432);
  v14 = *(v0 + 440);
  v1 = *(v0 + 416);
  v11 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v12 = *(v0 + 640);
  v4 = *(v0 + 128);
  v5 = (*(v0 + 136) + *(v0 + 408));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  *(v0 + 636) = *MEMORY[0x277D00760];
  v1(v2);
  sub_24619F6DC();
  v13(v2, v3);
  v7 = *(MEMORY[0x277D004B8] + 4);

  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *v8 = v0;
  v8[1] = sub_24617C338;
  v9 = *(v0 + 136);

  return MEMORY[0x282152BB8]();
}

uint64_t sub_24617C338()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_24617DE18;
  }

  else
  {
    v7 = *(v2 + 136);

    v6 = sub_24617C47C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24617C47C()
{
  v0[64] = v0[63];
  v0[65] = *(v0[17] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617C54C, v2, v1);
}

uint64_t sub_24617C54C()
{
  v1 = v0[65];
  v2 = v0[41];
  sub_24619F23C();
  v3 = swift_task_alloc();
  v0[66] = v3;
  *v3 = v0;
  v3[1] = sub_24617C5E8;
  v4 = v0[17];

  return sub_246171854();
}

uint64_t sub_24617C5E8(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_24617C700, v3, 0);
}

uint64_t sub_24617C700()
{
  v1 = v0[67];
  v2 = v0[41];
  v3 = v0[15];
  sub_24619F2AC();
  if (sub_24619F4CC())
  {
    v4 = v0[64];
    sub_24619F9FC();
    v0[68] = v4;
    if (v4)
    {
      v5 = v0[60];
      v6 = v0[47];
      v8 = v0[40];
      v7 = v0[41];
      v9 = v0[39];

LABEL_6:
      (*(v8 + 8))(v7, v9);
      sub_24616CFC4(v6, &qword_27EE3F970, &qword_2461A1250);
      v17 = v0[50];
      v18 = v0[46];
      v19 = v0[47];
      v21 = v0[44];
      v20 = v0[45];
      v22 = v0[41];
      v23 = v0[38];
      v24 = v0[35];
      v25 = v0[32];
      v26 = v0[29];
      v47 = v0[28];
      v48 = v0[25];
      v49 = v0[24];
      v50 = v0[21];
      v51 = v0[18];

      v27 = v0[1];

      return v27();
    }

    v29 = swift_task_alloc();
    v0[69] = v29;
    *v29 = v0;
    v29[1] = sub_24617CB40;
    v30 = v0[60];
    v31 = v0[38];

    return sub_246160CAC(v31);
  }

  else
  {
    v10 = v0[45];
    v11 = MEMORY[0x277D84F90];
    sub_24619F1CC();
    v12 = v0[64];
    v0[70] = v11;
    sub_24619F9FC();
    if (v12)
    {
      v13 = v0[60];
      v6 = v0[47];
      v7 = v0[45];
      v9 = v0[42];
      v8 = v0[43];
      v15 = v0[40];
      v14 = v0[41];
      v16 = v0[39];

      (*(v15 + 8))(v14, v16);
      goto LABEL_6;
    }

    v32 = v0[15];
    if (sub_24619F4CC())
    {
      v33 = *(v0[17] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
      v0[71] = v33;

      return MEMORY[0x2822009F8](sub_24617D2F0, v33, 0);
    }

    else
    {
      v34 = v0[15];
      if ((sub_24619F4CC() & 1) == 0)
      {
        v36 = v0[58];
        v35 = v0[59];
        v37 = v0[56];
        v38 = v0[57];
        v39 = v0[47];
        sub_24616CFC4(v39, &qword_27EE3F970, &qword_2461A1250);
        (*(v38 + 104))(v39, *MEMORY[0x277D00540], v37);
        v36(v39, 0, 1, v37);
      }

      v40 = v0[70];
      v42 = v0[40];
      v41 = v0[41];
      v43 = v0[39];
      v44 = v0[29];
      (*(v0[43] + 16))(v0[44], v0[45], v0[42]);
      (*(v42 + 16))(v44, v41, v43);
      (*(v42 + 56))(v44, 0, 1, v43);

      v45 = swift_task_alloc();
      v0[72] = v45;
      *v45 = v0;
      v45[1] = sub_24617D4B8;
      v46 = v0[17];

      return sub_246171854();
    }
  }
}

uint64_t sub_24617CB40()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24617CC50, v2, 0);
}

uint64_t sub_24617CC50()
{
  v61 = *(v0 + 432);
  v63 = *(v0 + 440);
  v65 = *(v0 + 424);
  v67 = *(v0 + 416);
  v1 = *(v0 + 632);
  v59 = *(v0 + 632);
  v2 = *(v0 + 400);
  v58 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = (*(v0 + 136) + *(v0 + 408));
  v8 = *(v0 + 288);
  v68 = sub_24619F41C();
  (*(v6 + 8))(v5, v8);
  v56 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24619FAEC();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD00000000000001CLL, 0x80000002461A7F90);
  sub_24619FB6C();
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v67(v2, v1, v58);
  sub_24619F72C();

  v61(v2, v58);
  v57 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24619FAEC();

  v11 = MEMORY[0x24C19A8B0](v68, MEMORY[0x277D837D0]);
  MEMORY[0x24C19A830](v11);

  v67(v2, v59, v58);
  sub_24619F6DC();

  v61(v2, v58);
  if (*(v68 + 16))
  {
    sub_24619EF2C();
    if (sub_24619EF1C())
    {
      v13 = *(v0 + 272);
      v12 = *(v0 + 280);
      v14 = *(v0 + 264);
      v15 = *(v0 + 136);
      v16 = sub_24619F7EC();
      sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740]);
      v17 = swift_allocError();
      *v18 = v68;
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D00730], v16);
      v19 = *(v15 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
      sub_24619F8BC();

      sub_24619EEAC();
      sub_24619EF0C();

      (*(v13 + 8))(v12, v14);
    }
  }

  v20 = *(v0 + 544);
  *(v0 + 560) = v68;
  sub_24619F9FC();
  if (v20)
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 376);
    v23 = *(v0 + 360);
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v27 = *(v0 + 320);
    v26 = *(v0 + 328);
    v28 = *(v0 + 312);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    sub_24616CFC4(v22, &qword_27EE3F970, &qword_2461A1250);
    v29 = *(v0 + 400);
    v30 = *(v0 + 368);
    v31 = *(v0 + 376);
    v33 = *(v0 + 352);
    v32 = *(v0 + 360);
    v34 = *(v0 + 328);
    v35 = *(v0 + 304);
    v36 = *(v0 + 280);
    v37 = *(v0 + 256);
    v38 = *(v0 + 232);
    v60 = *(v0 + 224);
    v62 = *(v0 + 200);
    v64 = *(v0 + 192);
    v66 = *(v0 + 168);
    v69 = *(v0 + 144);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v41 = *(v0 + 120);
    if (sub_24619F4CC())
    {
      v42 = *(*(v0 + 136) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
      *(v0 + 568) = v42;

      return MEMORY[0x2822009F8](sub_24617D2F0, v42, 0);
    }

    else
    {
      v43 = *(v0 + 120);
      if ((sub_24619F4CC() & 1) == 0)
      {
        v45 = *(v0 + 464);
        v44 = *(v0 + 472);
        v46 = *(v0 + 448);
        v47 = *(v0 + 456);
        v48 = *(v0 + 376);
        sub_24616CFC4(v48, &qword_27EE3F970, &qword_2461A1250);
        (*(v47 + 104))(v48, *MEMORY[0x277D00540], v46);
        v45(v48, 0, 1, v46);
      }

      v49 = *(v0 + 560);
      v51 = *(v0 + 320);
      v50 = *(v0 + 328);
      v52 = *(v0 + 312);
      v53 = *(v0 + 232);
      (*(*(v0 + 344) + 16))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
      (*(v51 + 16))(v53, v50, v52);
      (*(v51 + 56))(v53, 0, 1, v52);

      v54 = swift_task_alloc();
      *(v0 + 576) = v54;
      *v54 = v0;
      v54[1] = sub_24617D4B8;
      v55 = *(v0 + 136);

      return sub_246171854();
    }
  }
}

uint64_t sub_24617D2F0()
{
  v1 = *(v0 + 136);
  *(v0 + 641) = *(*(v0 + 568) + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered);
  return MEMORY[0x2822009F8](sub_24617D324, v1, 0);
}

uint64_t sub_24617D324()
{
  if (*(v0 + 641) == 1)
  {
    v1 = *(v0 + 120);
    if (sub_24619F4CC())
    {
      goto LABEL_6;
    }

    v2 = MEMORY[0x277D00540];
  }

  else
  {
    v2 = MEMORY[0x277D00548];
  }

  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v7 = *(v0 + 376);
  sub_24616CFC4(v7, &qword_27EE3F970, &qword_2461A1250);
  (*(v6 + 104))(v7, *v2, v5);
  v4(v7, 0, 1, v5);
LABEL_6:
  v8 = *(v0 + 560);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 312);
  v12 = *(v0 + 232);
  (*(*(v0 + 344) + 16))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
  (*(v10 + 16))(v12, v9, v11);
  (*(v10 + 56))(v12, 0, 1, v11);

  v13 = swift_task_alloc();
  *(v0 + 576) = v13;
  *v13 = v0;
  v13[1] = sub_24617D4B8;
  v14 = *(v0 + 136);

  return sub_246171854();
}

uint64_t sub_24617D4B8(uint64_t a1)
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 584) = a1;

  return MEMORY[0x2822009F8](sub_24617D5D0, v3, 0);
}

uint64_t sub_24617D5D0()
{
  v19 = v0[70];
  v20 = v0[73];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[32];
  v16 = v0[29];
  v17 = v0[44];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v18 = v0[17];
  (*(v0[27] + 16))(v0[28], v0[15], v0[26]);
  sub_24618BC30(v1, v2, &qword_27EE3F970, &qword_2461A1250);
  v8 = *MEMORY[0x277D00610];
  v9 = *(v7 + 104);
  v9(v5, v8, v6);
  v9(v4, v8, v6);
  sub_24619F49C();
  v10 = *(v18 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v11 = *(MEMORY[0x277D00568] + 4);
  v21 = (*MEMORY[0x277D00568] + MEMORY[0x277D00568]);
  v12 = swift_task_alloc();
  v0[74] = v12;
  *v12 = v0;
  v12[1] = sub_24617D774;
  v13 = v0[32];
  v14 = v0[14];

  return v21(v14, v13);
}

uint64_t sub_24617D774()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v9 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = *(v2 + 560);
    v5 = *(v2 + 136);

    v6 = sub_24617E068;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = sub_24617D89C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24617D89C()
{
  v15 = v0;
  v1 = v0[15];
  v2 = sub_24619F4CC();
  v3 = v0[17];
  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = v0[45];
  v3 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[76] = v3;
  v5 = sub_24619F1DC();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_246189514(*(v5 + 16), 0);
    v9 = sub_2461896CC(&v14, v8 + 4, v7, v6);
    sub_24616CAF0();
    if (v9 != v7)
    {
      __break(1u);
LABEL_5:
      v10 = v0[70];

      v11 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
      v0[78] = v11;
      v12 = sub_24617DCDC;
      goto LABEL_8;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v0[77] = v8;
  v12 = sub_24617D9C4;
  v11 = v3;
LABEL_8:

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24617D9C4()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[70];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v13 = v0[17];
  v8 = v0[14];
  sub_24619F5DC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v9 - 8) + 56))(v7, 0, 5, v9);
  sub_24619DA28(v7, v5);
  sub_24618AD14(v7, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v4 + 8))(v5, v6);
  v10 = *(v3 + 16);

  v11 = *(v1 + 16);

  sub_24619C0B4(v10, v11, 0, v8);

  return MEMORY[0x2822009F8](sub_24617DB30, v13, 0);
}

uint64_t sub_24617DB30()
{
  v1 = v0[60];
  v2 = v0[47];
  v14 = v0[50];
  v15 = v0[46];
  v3 = v0[45];
  v4 = v0[43];
  v13 = v0[42];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[39];
  v16 = v0[44];
  v17 = v0[38];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v18 = v0[35];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[21];
  v24 = v0[18];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v13);
  sub_24616CFC4(v2, &qword_27EE3F970, &qword_2461A1250);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24617DCDC()
{
  v1 = v0[78];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
  sub_24619F5DC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v8 - 8) + 56))(v5, 0, 5, v8);
  sub_24619DA28(v5, v2);
  sub_24618AD14(v5, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v3 + 8))(v2, v4);
  sub_24619C0B4(3, 0, 1, v7);

  return MEMORY[0x2822009F8](sub_24618BD10, v6, 0);
}

uint64_t sub_24617DE18()
{
  v12 = *(v0 + 504);
  v1 = *(v0 + 636);
  v15 = *(v0 + 432);
  v16 = *(v0 + 440);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 384);
  v6 = *(v0 + 136);

  v13 = *(v6 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v6 + v3), *(v6 + v3 + 24));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000032, 0x80000002461A7EE0);
  swift_getErrorValue();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_24619FBEC();
  v2(v4, v1, v5);
  sub_24619F6EC();

  v15(v4, v5);
  v14 = *(v6 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v6 + v3), *(v6 + v3 + 24));
  v2(v4, v1, v5);
  sub_24619F6CC();

  v15(v4, v5);
  *(v0 + 512) = 0;
  *(v0 + 520) = *(*(v0 + 136) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630]);
  v10 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617C54C, v10, v9);
}

uint64_t sub_24617E068()
{
  v1 = v0[60];
  v28 = v0[47];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[30];

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_24616CFC4(v28, &qword_27EE3F970, &qword_2461A1250);
  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[41];
  v17 = v0[38];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[29];
  v23 = v0[28];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[21];
  v27 = v0[18];
  v29 = v0[75];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24617E234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24616D024;

  return sub_2461872B0();
}

uint64_t sub_24617E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24619F64C();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = sub_24619EEBC();
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v11 = *(v10 + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_24619F02C();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_24619EFDC();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v20 = sub_24619F42C();
  v5[37] = v20;
  v21 = *(v20 - 8);
  v5[38] = v21;
  v22 = *(v21 + 64) + 15;
  v5[39] = swift_task_alloc();
  v23 = sub_24619EFBC();
  v5[40] = v23;
  v24 = *(v23 - 8);
  v5[41] = v24;
  v25 = *(v24 + 64) + 15;
  v5[42] = swift_task_alloc();
  v26 = sub_24619F4DC();
  v5[43] = v26;
  v27 = *(v26 - 8);
  v5[44] = v27;
  v5[45] = *(v27 + 64);
  v5[46] = swift_task_alloc();
  v28 = sub_24619F60C();
  v5[47] = v28;
  v29 = *(v28 - 8);
  v5[48] = v29;
  v30 = *(v29 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v31 = sub_24619F7FC();
  v5[53] = v31;
  v32 = *(v31 - 8);
  v5[54] = v32;
  v33 = *(v32 + 64) + 15;
  v5[55] = swift_task_alloc();
  v34 = sub_24619F3FC();
  v5[56] = v34;
  v35 = *(v34 - 8);
  v5[57] = v35;
  v36 = *(v35 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617E764, v4, 0);
}

uint64_t sub_24617E764()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 480) = v1;
  return MEMORY[0x2822009F8](sub_24617E790, v1, 0);
}

uint64_t sub_24617E790()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[22];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v0[61] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[62] = v7;
  v0[63] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_24617E858, v5, 0);
}

uint64_t sub_24617E858()
{
  v1 = *(v0 + 472);
  if (sub_24619F3BC())
  {
    v2 = *(v0 + 472);
    if ((sub_24619F35C() & 1) == 0)
    {
      v4 = *(v0 + 432);
      v3 = *(v0 + 440);
      v5 = *(v0 + 424);
      v6 = (*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
      v7 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      (*(v4 + 104))(v3, *MEMORY[0x277D00750], v5);
      sub_24619F6FC();
      (*(v4 + 8))(v3, v5);
    }
  }

  v8 = *(v0 + 472);
  v9 = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla);
  v10 = sub_24619F36C();
  v18 = v9 - v17;
  if (v18 <= 0.5)
  {
    v18 = 0.5;
  }

  v19 = v18 * 1000000000.0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v19 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282152BB8](v10, v11, v12, v13, v14, v15, v16);
  }

  v21 = *(v0 + 432);
  v20 = *(v0 + 440);
  v45 = *(v0 + 368);
  v46 = *(v0 + 360);
  v22 = *(v0 + 352);
  v47 = *(v0 + 176);
  v48 = *(v0 + 424);
  v23 = *(v0 + 152);
  v43 = v23;
  v44 = *(v0 + 344);
  v24 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 512) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v25 = (v47 + v24);
  v40 = *(v47 + v24 + 32);
  v42 = v19;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000003CLL, 0x80000002461A7BB0);
  v26 = sub_24619F4CC();
  v27 = (v26 & 1) == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x24C19A830](v28, v29);

  MEMORY[0x24C19A830](41, 0xE100000000000000);
  *(v0 + 648) = *MEMORY[0x277D00790];
  v30 = *(v21 + 104);
  *(v0 + 520) = v30;
  *(v0 + 528) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v30(v20);
  sub_24619F6CC();

  v31 = *(v21 + 8);
  *(v0 + 536) = v31;
  *(v0 + 544) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v20, v48);
  v41 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_24619FAEC();

  *(v0 + 112) = v42;
  v32 = sub_24619FBBC();
  MEMORY[0x24C19A830](v32);

  v33 = *MEMORY[0x277D007A0];
  *(v0 + 652) = v33;
  v34 = sub_24619F7FC();
  (*(*(v34 - 8) + 104))(v20, v33, v34);
  sub_24619F74C();

  v31(v20, v48);
  (*(v22 + 16))(v45, v43, v44);
  v35 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v36 = swift_allocObject();
  *(v0 + 552) = v36;
  *(v36 + 16) = v47;
  (*(v22 + 32))(v36 + v35, v45, v44);
  *(v36 + ((v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v37 = *(MEMORY[0x277D004B8] + 4);

  v38 = swift_task_alloc();
  *(v0 + 560) = v38;
  *v38 = v0;
  v38[1] = sub_24617ED64;
  v10 = *(v0 + 416);
  v16 = *(v0 + 376);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = &unk_2461A12C8;
  v11 = v42;
  v15 = v36;

  return MEMORY[0x282152BB8](v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24617ED64()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v9 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_24617F1D4;
  }

  else
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 176);

    v5 = sub_24617EE8C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24617EE8C()
{
  v25 = v0[67];
  v26 = v0[68];
  v1 = v0[66];
  v2 = v0[65];
  v35 = v0[56];
  v37 = v0[59];
  v3 = v0[55];
  v4 = v0[53];
  v28 = v0[52];
  v31 = v0[57];
  v33 = v0[48];
  v39 = v0[47];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[42];
  v24 = v0[22];
  v29 = v0[18];
  v5 = (v24 + v0[64]);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2(v3, *MEMORY[0x277D00780], v4);
  sub_24619F6CC();
  v25(v3, v4);
  v27 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  (*(v21 + 104))(v23, *MEMORY[0x277D004F8], v22);
  sub_24619FAEC();

  v7 = *(v24 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  v8 = sub_24619F8BC();
  MEMORY[0x24C19A830](v8);

  MEMORY[0x24C19A830](0x5354206874697720, 0xEA00000000004449);
  sub_24619F5CC();
  sub_24619F71C();

  (*(v21 + 8))(v23, v22);
  (*(v31 + 8))(v37, v35);
  (*(v33 + 32))(v29, v28, v39);
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[55];
  v13 = v0[51];
  v12 = v0[52];
  v15 = v0[49];
  v14 = v0[50];
  v16 = v0[46];
  v17 = v0[42];
  v18 = v0[39];
  v30 = v0[36];
  v32 = v0[35];
  v34 = v0[34];
  v36 = v0[31];
  v38 = v0[28];
  v40 = v0[25];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24617F1D4()
{
  v1 = v0[71];
  v2 = v0[69];
  v15 = v0[67];
  v16 = v0[68];
  v14 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[55];
  v6 = v0[53];
  v7 = v0[22];

  v8 = *(v7 + v4 + 32);
  __swift_project_boxed_opaque_existential_1((v7 + v4), *(v7 + v4 + 24));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000002CLL, 0x80000002461A7C20);
  swift_getErrorValue();
  v9 = v0[5];
  v10 = v0[6];
  sub_24619FBEC();
  v3(v5, *MEMORY[0x277D00780], v6);
  sub_24619F6EC();

  v15(v5, v6);
  v0[72] = sub_2461714EC();
  v11 = swift_task_alloc();
  v0[73] = v11;
  *v11 = v0;
  v11[1] = sub_24617F38C;
  v12 = v0[39];

  return sub_246160CAC(v12);
}

uint64_t sub_24617F38C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24617F49C, v2, 0);
}

uint64_t sub_24617F49C()
{
  *(v0 + 592) = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  sub_24619F01C();
  sub_24618AC5C(&qword_27EE3F9B8, MEMORY[0x277D00578]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617F564, v2, v1);
}

uint64_t sub_24617F564()
{
  v1 = v0[74];
  v2 = v0[39];
  v3 = v0[36];
  sub_24619F00C();
  v4 = v0[22];

  return MEMORY[0x2822009F8](sub_24617F600, v4, 0);
}

uint64_t sub_24617F600()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 288);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = *(v3 + 32);
  v5(v1, v4, v2);
  if (sub_24619F5BC())
  {
    v25 = *(v0 + 652);
    v32 = *(v0 + 544);
    v30 = *(v0 + 568);
    v31 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 448);
    v38 = *(v0 + 472);
    v7 = *(v0 + 440);
    v26 = *(v0 + 424);
    v27 = *(v0 + 576);
    v42 = *(v0 + 408);
    v40 = *(v0 + 376);
    v8 = *(v0 + 304);
    v28 = *(v0 + 296);
    v29 = *(v0 + 312);
    v34 = *(v0 + 144);
    v9 = (*(v0 + 176) + *(v0 + 512));
    v10 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v11 = sub_24619F7FC();
    (*(*(v11 - 8) + 104))(v7, v25, v11);
    sub_24619F74C();

    v31(v7, v26);
    (*(v8 + 8))(v29, v28);
    (*(v6 + 8))(v38, v36);
    v5(v34, v42, v40);
    v13 = *(v0 + 464);
    v12 = *(v0 + 472);
    v14 = *(v0 + 440);
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);
    v21 = *(v0 + 312);
    v33 = *(v0 + 288);
    v35 = *(v0 + 280);
    v37 = *(v0 + 272);
    v39 = *(v0 + 248);
    v41 = *(v0 + 224);
    v43 = *(v0 + 200);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 384) + 8))(*(v0 + 408), *(v0 + 376));
    v24 = *(v0 + 480);

    return MEMORY[0x2822009F8](sub_24617F924, v24, 0);
  }
}

uint64_t sub_24617F924()
{
  v1 = v0[60];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v2, v1 + v5, v4);
  v7 = sub_24619F5BC();
  (*(v3 + 8))(v2, v4);
  if ((v7 & 1) != 0 && ((v8 = v0[60], *(v8 + 136) != 1) || *(v8 + 120) >= 3uLL))
  {
    v9 = v0[22];
    v6(v0[50], v1 + v5, v0[47]);
    v11 = sub_24617FA90;
  }

  else
  {
    v9 = v0[22];
    sub_24618B528();
    v10 = swift_allocError();
    swift_willThrow();

    v11 = sub_24617FE98;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_24617FA90()
{
  v1 = *(v0 + 652);
  v10 = *(v0 + 536);
  v11 = *(v0 + 544);
  v12 = *(v0 + 480);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 280);
  v5 = (*(v0 + 176) + *(v0 + 512));
  (*(*(v0 + 384) + 32))(*(v0 + 144), *(v0 + 400), *(v0 + 376));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = sub_24619F7FC();
  (*(*(v7 - 8) + 104))(v2, v1, v7);
  sub_24619F74C();
  v10(v2, v3);
  sub_24619F5DC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v8 - 8) + 56))(v4, 0, 5, v8);

  return MEMORY[0x2822009F8](sub_24617FC44, v12, 0);
}

uint64_t sub_24617FC44()
{
  v1 = v0[60];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  v5 = v0[35];
  v6 = v0[22];
  sub_24619DA28(v5, v2);
  sub_24618AD14(v5, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v7 = *(v3 + 8);
  v0[75] = v7;
  v0[76] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);

  return MEMORY[0x2822009F8](sub_24617FD18, v6, 0);
}

uint64_t sub_24617FD18()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[59];
  v6 = v0[56];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];

  (*(v8 + 8))(v7, v9);
  v2(v5, v6);
  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[55];
  v14 = v0[51];
  v13 = v0[52];
  v16 = v0[49];
  v15 = v0[50];
  v17 = v0[46];
  v18 = v0[42];
  v19 = v0[39];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[25];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24617FE98()
{
  v1 = *(v0 + 568);
  v60 = *(v0 + 536);
  v65 = *(v0 + 544);
  v55 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 648);
  v4 = *(v0 + 440);
  v5 = *(v0 + 424);
  v70 = *(v0 + 248);
  v75 = *(v0 + 232);
  v6 = (*(v0 + 176) + *(v0 + 512));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2(v4, v3, v5);
  sub_24619F6DC();
  v60(v4, v5);
  *(v0 + 128) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
  v9 = swift_dynamicCast();
  *(v0 + 656) = v9;
  if (v9)
  {
    v71 = *(v0 + 536);
    v76 = *(v0 + 544);
    v51 = *(v0 + 520);
    v56 = *(v0 + 528);
    v10 = *(v0 + 648);
    v11 = *(v0 + 440);
    v12 = *(v0 + 424);
    v13 = *(v0 + 264);
    v61 = *(v0 + 256);
    v66 = *(v0 + 272);
    v14 = (*(v0 + 176) + *(v0 + 512));
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v51(v11, v10, v12);
    sub_24619F6EC();
    v71(v11, v12);
    (*(v13 + 104))(v66, *MEMORY[0x277D00500], v61);
    sub_24619EF2C();
    v16 = sub_24619EF1C();
    *(v0 + 616) = v16;
    if (v16)
    {
      v17 = *(v0 + 480);
      *(v0 + 624) = sub_24619F7EC();
      sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740]);
      *(v0 + 632) = swift_allocError();
      *(v0 + 640) = v18;

      return MEMORY[0x2822009F8](sub_246180454, v17, 0);
    }
  }

  else
  {
    v19 = *(v0 + 568);
    v72 = *(v0 + 536);
    v77 = *(v0 + 544);
    v52 = *(v0 + 520);
    v57 = *(v0 + 528);
    v50 = *(v0 + 648);
    v20 = *(v0 + 440);
    v21 = *(v0 + 424);
    v22 = *(v0 + 264);
    v62 = *(v0 + 256);
    v67 = *(v0 + 272);
    v23 = (*(v0 + 176) + *(v0 + 512));
    v24 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_24619FAEC();
    MEMORY[0x24C19A830](0xD000000000000016, 0x80000002461A7C90);
    swift_getErrorValue();
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    sub_24619FBEC();
    MEMORY[0x24C19A830](0xD00000000000002BLL, 0x80000002461A7CB0);
    v52(v20, v50, v21);
    sub_24619F6EC();

    v72(v20, v21);
    (*(v22 + 104))(v67, *MEMORY[0x277D00508], v62);
  }

  v27 = *(v0 + 576);
  v28 = *(v0 + 456);
  v73 = *(v0 + 448);
  v78 = *(v0 + 472);
  v29 = *(v0 + 304);
  v63 = *(v0 + 296);
  v68 = *(v0 + 312);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v53 = *(v0 + 568);
  v58 = *(v0 + 256);
  v33 = *(v0 + 192);
  v32 = *(v0 + 200);
  v34 = *(v0 + 176);
  v35 = *(v0 + 184);
  v36 = *(v0 + 144);
  *(v34 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) = *(v0 + 656);
  v37 = *(v34 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  sub_24619F8BC();
  sub_24619F62C();
  sub_24619F63C();

  (*(v33 + 8))(v32, v35);
  (*(v31 + 8))(v30, v58);
  (*(v29 + 8))(v68, v63);
  (*(v28 + 8))(v78, v73);
  v39 = *(v0 + 464);
  v38 = *(v0 + 472);
  v40 = *(v0 + 440);
  v42 = *(v0 + 408);
  v41 = *(v0 + 416);
  v44 = *(v0 + 392);
  v43 = *(v0 + 400);
  v45 = *(v0 + 368);
  v46 = *(v0 + 336);
  v47 = *(v0 + 312);
  v54 = *(v0 + 288);
  v59 = *(v0 + 280);
  v64 = *(v0 + 272);
  v69 = *(v0 + 248);
  v74 = *(v0 + 224);
  v79 = *(v0 + 200);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_246180454()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 176);
  (*(v0 + 496))(*(v0 + 464), *(v0 + 480) + *(v0 + 488), *(v0 + 448));

  return MEMORY[0x2822009F8](sub_2461804D0, v2, 0);
}

uint64_t sub_2461804D0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 448);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v44 = *(v0 + 632);
  v47 = *(v0 + 208);
  v9 = *(v0 + 176);
  sub_24619F36C();
  v11 = v10;
  (*(v5 + 8))(v4, v6);
  *v1 = v11;
  (*(*(v2 - 8) + 104))(v1, *MEMORY[0x277D00738], v2);
  v12 = *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  sub_24619F8BC();
  sub_24619EEAC();
  sub_24619EF0C();

  (*(v8 + 8))(v7, v47);

  v13 = *(v0 + 576);
  v14 = *(v0 + 456);
  v45 = *(v0 + 448);
  v48 = *(v0 + 472);
  v15 = *(v0 + 304);
  v40 = *(v0 + 296);
  v42 = *(v0 + 312);
  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v36 = *(v0 + 568);
  v38 = *(v0 + 256);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v22 = *(v0 + 144);
  *(v20 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) = *(v0 + 656);
  v23 = *(v20 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  sub_24619F8BC();
  sub_24619F62C();
  sub_24619F63C();

  (*(v19 + 8))(v18, v21);
  (*(v17 + 8))(v16, v38);
  (*(v15 + 8))(v42, v40);
  (*(v14 + 8))(v48, v45);
  v25 = *(v0 + 464);
  v24 = *(v0 + 472);
  v26 = *(v0 + 440);
  v28 = *(v0 + 408);
  v27 = *(v0 + 416);
  v30 = *(v0 + 392);
  v29 = *(v0 + 400);
  v31 = *(v0 + 368);
  v32 = *(v0 + 336);
  v33 = *(v0 + 312);
  v37 = *(v0 + 288);
  v39 = *(v0 + 280);
  v41 = *(v0 + 272);
  v43 = *(v0 + 248);
  v46 = *(v0 + 224);
  v49 = *(v0 + 200);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2461807EC()
{
  v1 = v0[36];
  (*(v0[48] + 56))(v1, 1, 1, v0[47]);
  sub_24616CFC4(v1, &qword_27EE3F968, &qword_2461A1248);
  v2 = v0[60];

  return MEMORY[0x2822009F8](sub_24617F924, v2, 0);
}

uint64_t sub_246180888(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 1;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_246161518;

  return sub_24617B3EC(a1, a3, v7, 0);
}

uint64_t sub_246180944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v33 = sub_24619F4DC();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v28 = &v26 - v7;
  v9 = sub_24619EF4C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_24619EF5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  sub_24619F54C();
  sub_24619EF6C();
  v18 = sub_24619F9CC();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v12 + 16))(v15, v17, v11);
  (*(v3 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v33);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v3 + 80) + v20 + 8) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v12 + 32))(v22 + v19, v15, v11);
  *(v22 + v20) = v30;
  (*(v3 + 32))(v22 + v21, v27, v33);
  v23 = (v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;

  sub_2461703A8(0, 0, v28, &unk_2461A1330, v22);

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_246180CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_246180D80;

  return sub_246182F78(a6, a7, a8);
}

uint64_t sub_246180D80()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_246180E7C, 0, 0);
}

uint64_t sub_246180E7C()
{
  v1 = *(v0 + 16);
  sub_24619EF3C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_246180EE8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24619F3FC();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = sub_24619F0FC();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246181024, v2, 0);
}

uint64_t sub_246181024()
{
  v1 = *(v0 + 80);
  v2 = sub_2461714EC()[9];

  *(v0 + 160) = *(v2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder);

  sub_24619F6BC();
  sub_24618AC5C(&qword_281391F70, MEMORY[0x277D00718]);
  v4 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24618111C, v4, v3);
}

uint64_t sub_24618111C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[10];
  sub_24619F69C();

  return MEMORY[0x2822009F8](sub_246181190, v3, 0);
}

uint64_t sub_246181190()
{
  v2 = v0[18];
  v1 = v0[19];
  v27 = v1;
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v23 = v0[17];
  v24 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
  v25 = v0[9];
  v9 = *(v0[10] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  v10 = sub_24619F8BC();
  v21 = v11;
  v22 = v10;
  v26 = sub_24619F88C();
  (*(v3 + 16))(v2, v1, v5);
  (*(v6 + 16))(v4, v8, v7);
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = (v23 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v22;
  *(v14 + 3) = v21;
  *(v14 + 4) = v25;
  v15 = &v14[v12];
  v16 = v5;
  (*(v3 + 32))(v15, v2, v5);
  (*(v6 + 32))(&v14[v13], v4, v7);
  v0[6] = sub_24618B338;
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2461817DC;
  v0[5] = &block_descriptor_82;
  v17 = _Block_copy(v0 + 2);
  v18 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v17);

  (*(v3 + 8))(v27, v16);

  v19 = v0[1];

  return v19();
}

unint64_t sub_2461813EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A8, &qword_2461A12A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0FA0;
  *(inited + 32) = 0x4965636976726573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = sub_24619F88C();
  *(inited + 56) = 0x54656D6F6374756FLL;
  *(inited + 64) = 0xEB00000000657079;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000002461A7A40;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 104), "geocodeErrors");
  *(inited + 118) = -4864;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x80000002461A7A60;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x80000002461A7A80;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000002461A7AA0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000002461A7AC0;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0xD000000000000021;
  *(inited + 232) = 0x80000002461A7AE0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD000000000000021;
  *(inited + 256) = 0x80000002461A7B10;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_24618B234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9B0, &unk_2461A12B0);
  swift_arrayDestroy();
  v6 = sub_24619F3AC();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v8, 0xD000000000000018, 0x80000002461A7B40);
  v9 = sub_24619F3DC();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v11, 0xD000000000000021, 0x80000002461A7B60);
  v12 = sub_24619F2EC();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v14, 0xD000000000000016, 0x80000002461A7B90);
  return v5;
}

id sub_2461817DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24618B1E8();
    v5 = sub_24619F80C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_246181868()
{
  v1[11] = v0;
  v2 = sub_24619F3FC();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246181928, v0, 0);
}

uint64_t sub_246181928()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_246181954, v1, 0);
}

uint64_t sub_246181954()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_246181978, v1, 0);
}

uint64_t sub_246181978()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_246181A30, v5, 0);
}

uint64_t sub_246181A30()
{
  v1 = *(v0 + 128);
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = COERCE_DOUBLE(sub_24619F38C());
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  if (v8)
  {
    v9 = -1.0;
  }

  else
  {
    v9 = v6;
  }

  v10 = sub_24619F88C();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v1;
  *(v11 + 32) = v9;
  v0[6] = sub_24618B1C4;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2461817DC;
  v0[5] = &block_descriptor;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v12);

  v14 = v0[1];

  return v14();
}

unint64_t sub_246181BBC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24619F7FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A8, &qword_2461A12A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0EF0;
  *(inited + 32) = 0x4965636976726573;
  *(inited + 40) = 0xE900000000000064;
  v12 = *(a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  *(inited + 48) = v12;
  *(inited + 56) = 0x7954656372756F73;
  *(inited + 64) = 0xEA00000000006570;
  v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v14 = v12;
  *(inited + 72) = [v13 initWithInteger_];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000002461A79D0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v15 = sub_24618B234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9B0, &unk_2461A12B0);
  swift_arrayDestroy();
  v16 = *(a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_24619FAEC();

  v20 = 0xD00000000000001CLL;
  v21 = 0x80000002461A79F0;
  sub_24618B1E8();
  v17 = sub_24619F83C();
  MEMORY[0x24C19A830](v17);

  (*(v7 + 104))(v10, *MEMORY[0x277D007A0], v6);
  sub_24619F73C();

  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_246181EC4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 305) = a3;
  *(v4 + 80) = a1;
  v5 = sub_24619F46C();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v8 = sub_24619F58C();
  *(v4 + 128) = v8;
  v9 = *(v8 - 8);
  *(v4 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v11 = sub_24619F7FC();
  *(v4 + 152) = v11;
  v12 = *(v11 - 8);
  *(v4 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v14 = sub_24619F11C();
  *(v4 + 176) = v14;
  v15 = *(v14 - 8);
  *(v4 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v17 = sub_24619F60C();
  *(v4 + 208) = v17;
  v18 = *(v17 - 8);
  *(v4 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246182108, v3, 0);
}

uint64_t sub_246182108()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 88), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D006F0])
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 305);
    (*(*(v0 + 216) + 96))(v5, *(v0 + 208));
    (*(v8 + 16))(v6, v5, v7);
    v67 = *(v0 + 224);
    v10 = *(v0 + 200);
    if (v9 == 1)
    {
      v11 = *(v0 + 184);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 152);
      v61 = *(v0 + 96);
      v63 = *(v0 + 176);
      v58 = *(v61 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
      __swift_project_boxed_opaque_existential_1((v61 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v61 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000032, 0x80000002461A7910);
      v15 = sub_24619F10C();
      MEMORY[0x24C19A830](v15);

      (*(v13 + 104))(v12, *MEMORY[0x277D00790], v14);
      sub_24619F6DC();

      v16 = *(v13 + 8);
      v17 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v12, v14);
      v18 = sub_24619F10C();
      v20 = v19;
      v21 = *(v11 + 8);
      v21(v10, v63);
      v22 = (v61 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
      v23 = *(v61 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId + 8);
      *v22 = v18;
      v22[1] = v20;
      v24 = 0x281391000;

      v21(v67, v63);
    }

    else
    {
      v38 = *(v0 + 184);
      v39 = *(v0 + 192);
      v40 = *(v0 + 168);
      v41 = *(v0 + 160);
      v60 = *(v0 + 152);
      v62 = *(v0 + 176);
      v42 = *(v0 + 96);
      v65 = *(v38 + 8);
      (v65)(*(v0 + 200));
      (*(v38 + 32))(v39, v67, v62);
      v69 = *(v42 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
      __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v42 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000056, 0x80000002461A78B0);
      v43 = sub_24619F10C();
      MEMORY[0x24C19A830](v43);

      (*(v41 + 104))(v40, *MEMORY[0x277D00790], v60);
      sub_24619F6DC();

      v16 = *(v41 + 8);
      v17 = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v40, v60);
      v24 = 0x281391000;
      v65(v39, v62);
    }
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 224);
    v27 = *(v0 + 208);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    v68 = *(v0 + 152);
    if (v4 == *MEMORY[0x277D006E8])
    {
      v30 = *(v0 + 136);
      v31 = *(v0 + 144);
      v32 = *(v0 + 128);
      v59 = v32;
      v33 = *(v0 + 96);
      v64 = v30;
      (*(v25 + 96))(v26, v27);
      (*(v30 + 32))(v31, v26, v32);
      v24 = 0x281391000uLL;
      v57 = *(v33 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v33 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD00000000000003ELL, 0x80000002461A7870);
      v34 = v31;
      *(v0 + 72) = sub_24619F57C();
      v35 = sub_24619FBBC();
      MEMORY[0x24C19A830](v35);

      (*(v29 + 104))(v28, *MEMORY[0x277D00790], v68);
      sub_24619F6EC();

      v16 = *(v29 + 8);
      v17 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v28, v68);
      (*(v64 + 8))(v34, v59);
      v36 = (v33 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
      v37 = *(v33 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId + 8);
      *v36 = 0;
      v36[1] = 0;
    }

    else
    {
      v44 = (*(v0 + 96) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
      v66 = v44[4];
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      v45 = *MEMORY[0x277D007A0];
      v46 = sub_24619F7FC();
      (*(*(v46 - 8) + 104))(v28, v45, v46);
      sub_24619F75C();
      v16 = *(v29 + 8);
      v17 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v28, v68);
      (*(v25 + 8))(v26, v27);
      v24 = 0x281391000uLL;
    }
  }

  v48 = *(v0 + 160);
  v47 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = *(v0 + 96);
  v51 = *(v24 + 3080);
  *(v0 + 232) = v16;
  *(v0 + 240) = v51;
  v52 = *(v50 + v51 + 32);
  __swift_project_boxed_opaque_existential_1((v50 + v51), *(v50 + v51 + 24));
  (*(v48 + 104))(v47, *MEMORY[0x277D00798], v49);
  sub_24619F6DC();
  *(v0 + 248) = v17;
  v16(v47, v49);
  v53 = swift_task_alloc();
  *(v0 + 256) = v53;
  *v53 = v0;
  v53[1] = sub_246182838;
  v54 = *(v0 + 96);
  v55 = *(v0 + 80);

  return sub_246185B60(v55);
}

uint64_t sub_246182838()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_246182D9C;
  }

  else
  {
    v6 = sub_246182964;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_246182964()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v0[34] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v2 + 104))(v1, *MEMORY[0x277D006B0], v3);

  return MEMORY[0x2822009F8](sub_2461829F8, 0, 0);
}

uint64_t sub_2461829F8()
{
  v1 = *(*(v0 + 272) + 64);
  *(v0 + 280) = v1;
  return MEMORY[0x2822009F8](sub_246182A1C, v1, 0);
}

uint64_t sub_246182A1C()
{
  v1 = v0[35];
  v2 = v0[15];
  swift_beginAccess();
  v3 = sub_246189354(v2);
  v0[36] = v3;
  swift_endAccess();
  if (v3)
  {
    v4 = *(MEMORY[0x277D857D0] + 4);
    v5 = swift_task_alloc();
    v0[37] = v5;
    *v5 = v0;
    v5[1] = sub_246182BB0;
    v6 = MEMORY[0x277D84A98];
    v7 = MEMORY[0x277D84AC0];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 38, v3, v8, v6, v7);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    v9 = v0[28];
    v10 = v0[24];
    v11 = v0[25];
    v12 = v0[21];
    v13 = v0[18];
    v14 = v0[15];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_246182BB0()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_246182CDC, v3, 0);
}

uint64_t sub_246182CDC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_246182D9C()
{
  v1 = v0[33];
  v17 = v0[31];
  v16 = v0[29];
  v2 = v0[21];
  v3 = v0[19];
  v4 = (v0[12] + v0[30]);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000049, 0x80000002461A7820);
  swift_getErrorValue();
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v9 = sub_24619FC3C();
  MEMORY[0x24C19A830](v9);

  v10 = *MEMORY[0x277D007A0];
  v11 = sub_24619F7FC();
  (*(*(v11 - 8) + 104))(v2, v10, v11);
  sub_24619F77C();

  v16(v2, v3);
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v0[34] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v13 + 104))(v12, *MEMORY[0x277D006B0], v14);

  return MEMORY[0x2822009F8](sub_2461829F8, 0, 0);
}

uint64_t sub_246182F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_24619EFBC();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = sub_24619F60C();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v12 = sub_24619F3FC();
  v4[31] = v12;
  v13 = *(v12 - 8);
  v4[32] = v13;
  v4[33] = *(v13 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246183134, v3, 0);
}

uint64_t sub_246183134()
{
  v1 = v0[30];
  v2 = *(v0[23] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[36] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v3 - 8) + 56))(v1, 3, 5, v3);

  return MEMORY[0x2822009F8](sub_2461831F8, v2, 0);
}

uint64_t sub_2461831F8()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[23];
  sub_24619DA28(v2, v0[35]);
  sub_24618AD14(v2, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246183290, v3, 0);
}

uint64_t sub_246183290()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[23];
  (*(v2 + 16))(v1, v0[35], v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = v4;
  (*(v2 + 32))(v6 + v5, v1, v3);

  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_2461833D4;
  v8 = v0[29];
  v9 = v0[23];
  v10 = v0[20];

  return sub_24617E2C4(v8, v10, &unk_2461A1280, v6);
}

uint64_t sub_2461833D4()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_246183500, v3, 0);
}

uint64_t sub_246183500()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v23 = v0[22];
  v22 = v0[21];
  sub_24616CB20(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, (v0 + 14));
  v21 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  (*(v3 + 104))(v2, *MEMORY[0x277D004D8], v5);
  sub_24619FAEC();

  v6 = *(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  v7 = sub_24619F8BC();
  MEMORY[0x24C19A830](v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F988, &qword_2461A1288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0F90;
  *(inited + 32) = 0x64616F6C796170;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_24619F5FC();
  *(inited + 56) = v9;
  *(inited + 64) = 1684632436;
  *(inited + 72) = 0xE400000000000000;
  v10 = sub_24619F5CC();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  *(inited + 80) = v12;
  *(inited + 88) = v13;
  v14 = sub_24618B034(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F990, &qword_2461A1290);
  swift_arrayDestroy();
  v0[19] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F998, &qword_2461A1298);
  sub_24618B148();
  sub_24619F70C();

  (*(v3 + 8))(v2, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v15 = sub_24619F5FC();
  v22(v15);

  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_2461837E4;
  v17 = v0[35];
  v18 = v0[29];
  v19 = v0[23];

  return sub_246181EC4(v17, v18, 1);
}

uint64_t sub_2461837E4()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2461838F4, v2, 0);
}

uint64_t sub_2461838F4()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2461839CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24619F7FC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246183A90, 0, 0);
}

uint64_t sub_246183A90()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[3] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  (*(v2 + 104))(v1, *MEMORY[0x277D00790], v3);
  sub_24619F6DC();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_24615C678;
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  return sub_246181EC4(v7, v9, 0);
}

uint64_t sub_246183BD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_24619F7FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v7 + 104))(v10, *MEMORY[0x277D00798], v6);
  sub_24619F6DC();
  (*(v7 + 8))(v10, v6);
  v12 = sub_24619F9CC();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v13;
  v14[4] = v1;
  swift_retain_n();
  sub_2461703A8(0, 0, v5, &unk_2461A1240, v14);
}

uint64_t sub_246183E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v6 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_24619F60C();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = sub_24619F22C();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F970, &qword_2461A1250) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v15 = *(*(sub_24619F4DC() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F978, &qword_2461A1258) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v17 = sub_24619F4AC();
  v4[24] = v17;
  v18 = *(v17 - 8);
  v4[25] = v18;
  v19 = *(v18 + 64) + 15;
  v4[26] = swift_task_alloc();
  v20 = sub_24619F3FC();
  v4[27] = v20;
  v21 = *(v20 - 8);
  v4[28] = v21;
  v22 = *(v21 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v23 = sub_24619F7FC();
  v4[31] = v23;
  v24 = *(v23 - 8);
  v4[32] = v24;
  v25 = *(v24 + 64) + 15;
  v4[33] = swift_task_alloc();
  v26 = sub_24619F42C();
  v4[34] = v26;
  v27 = *(v26 - 8);
  v4[35] = v27;
  v28 = *(v27 + 64) + 15;
  v4[36] = swift_task_alloc();
  v29 = sub_24619F1EC();
  v4[37] = v29;
  v30 = *(v29 - 8);
  v4[38] = v30;
  v31 = *(v30 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v32 = sub_24619F2CC();
  v4[41] = v32;
  v33 = *(v32 - 8);
  v4[42] = v33;
  v34 = *(v33 + 64) + 15;
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24618429C, a4, 0);
}

uint64_t sub_24618429C()
{
  v1 = v0[11];
  v0[44] = sub_2461714EC();
  v0[45] = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630]);
  v3 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24618436C, v3, v2);
}

uint64_t sub_24618436C()
{
  v1 = v0[45];
  v2 = v0[43];
  sub_24619F23C();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_246184408;
  v4 = v0[11];

  return sub_246171854();
}

uint64_t sub_246184408(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_246184520, v3, 0);
}

uint64_t sub_246184520()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_24619F2AC();
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_2461845C4;
  v4 = v0[44];
  v5 = v0[36];

  return sub_246160CAC(v5);
}

uint64_t sub_2461845C4()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2461846D4, v2, 0);
}

uint64_t sub_2461846D4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 88);
  v22 = *(v0 + 248);
  v21 = sub_24619F41C();
  *(v0 + 392) = v21;
  (*(v5 + 8))(v2, v4);
  v9 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 400) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v10 = (v8 + v9);
  v19 = *(v8 + v9 + 32);
  __swift_project_boxed_opaque_existential_1((v8 + v9), *(v8 + v9 + 24));
  sub_24619FAEC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD000000000000029, 0x80000002461A7600);
  sub_24619FB6C();
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *MEMORY[0x277D00798];
  *(v0 + 504) = v13;
  v14 = *(v7 + 104);
  *(v0 + 408) = v14;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v6, v13, v22);
  sub_24619F72C();

  v15 = *(v7 + 8);
  *(v0 + 424) = v15;
  *(v0 + 432) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v6, v22);
  v20 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000031, 0x80000002461A7630);
  v16 = MEMORY[0x24C19A8B0](v21, MEMORY[0x277D837D0]);
  MEMORY[0x24C19A830](v16);

  v14(v6, v13, v22);
  sub_24619F6DC();

  v15(v6, v22);
  v17 = *(v8 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 440) = v17;

  return MEMORY[0x2822009F8](sub_246184988, v17, 0);
}

uint64_t sub_246184988()
{
  v1 = v0[55];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_246184A44, v5, 0);
}

uint64_t sub_246184A44()
{
  v1 = v0[49];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[23];
  (*(v0[38] + 16))(v0[39], v0[40], v0[37]);
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_246184B58;
  v7 = v0[11];

  return sub_246171854();
}

uint64_t sub_246184B58(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_246184C70, v3, 0);
}

uint64_t sub_246184C70()
{
  v18 = v0[39];
  v19 = v0[49];
  v1 = v0[26];
  v2 = v0[22];
  v17 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v20 = v0[11];
  v21 = v0[57];
  sub_24619F4BC();
  v8 = sub_24619EFDC();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = *MEMORY[0x277D00610];
  v10 = *(v5 + 104);
  v10(v4, v9, v7);
  v10(v6, v9, v7);
  sub_24619F49C();
  v11 = *(v20 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v12 = *(MEMORY[0x277D00568] + 4);
  v22 = (*MEMORY[0x277D00568] + MEMORY[0x277D00568]);
  v13 = swift_task_alloc();
  v0[58] = v13;
  *v13 = v0;
  v13[1] = sub_246184E2C;
  v14 = v0[26];
  v15 = v0[13];

  return v22(v15, v14);
}

uint64_t sub_246184E2C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 392);
    v6 = *(v2 + 88);

    v7 = sub_246185874;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 88);
    v7 = sub_246184F6C;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_246184F6C()
{
  v14 = v0;
  v1 = v0[40];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  v6 = sub_24619F1DC();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_246189514(*(v6 + 16), 0);
    v10 = sub_2461896CC(&v13, v9 + 4, v8, v7);
    sub_24616CAF0();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  v0[59] = v9;
  v11 = v0[55];

  return MEMORY[0x2822009F8](sub_246185090, v11, 0);
}

uint64_t sub_246185090()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[49];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[27];
  v7 = v0[16];
  v8 = v0[12];
  v13 = v0[11];
  sub_24619F5DC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v9 - 8) + 56))(v8, 0, 5, v9);
  sub_24619DA28(v8, v5);
  sub_24618AD14(v8, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v4 + 8))(v5, v6);
  v10 = *(v3 + 16);

  v11 = *(v1 + 16);

  sub_24619C0B4(v10, v11, 0, v7);

  return MEMORY[0x2822009F8](sub_2461851FC, v13, 0);
}

uint64_t sub_2461851FC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_2461852A4;
  v2 = v0[44];

  return sub_24616468C();
}

uint64_t sub_2461852A4()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2461853B4, v2, 0);
}

uint64_t sub_2461853B4()
{
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 504);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = (*(v0 + 88) + *(v0 + 400));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v1(v4, v3, v5);
  sub_24619F6DC();
  v12(v4, v5);
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *v8 = v0;
  v8[1] = sub_2461854EC;
  v9 = *(v0 + 240);
  v10 = *(v0 + 88);

  return sub_246185B60(v9);
}

uint64_t sub_2461854EC()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_246185940;
  }

  else
  {
    v6 = sub_246185618;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_246185618()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v8 = v0[55];
  (*(v1 + 8))(v0[43], v0[41]);

  return MEMORY[0x2822009F8](sub_246185708, v8, 0);
}

uint64_t sub_246185708()
{
  v1 = *(v0 + 88);
  *(*(v0 + 440) + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered) = 1;
  return MEMORY[0x2822009F8](sub_24618573C, v1, 0);
}

uint64_t sub_24618573C()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[26];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_246185874()
{
  v1 = v0[13];
  (*(v0[15] + 56))(v1, 1, 1, v0[14]);
  sub_24616CFC4(v1, &qword_27EE3F968, &qword_2461A1248);
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_2461852A4;
  v3 = v0[44];

  return sub_24616468C();
}

uint64_t sub_246185940()
{
  v1 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 496);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v22 = *(v0 + 264);
  v6 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = (*(v0 + 88) + *(v0 + 400));
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v20, v2);
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = sub_24619FC3C();
  MEMORY[0x24C19A830](v14);

  v15 = *MEMORY[0x277D007A0];
  v16 = sub_24619F7FC();
  (*(*(v16 - 8) + 104))(v22, v15, v16);
  sub_24619F77C();

  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  (*(v0 + 424))(*(v0 + 264), *(v0 + 248));

  return MEMORY[0x2822009F8](sub_246185708, v18, 0);
}

uint64_t sub_246185B60(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_24619F43C();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v9 = *(v8 + 64) + 15;
  v2[28] = swift_task_alloc();
  v10 = sub_24619F7FC();
  v2[29] = v10;
  v11 = *(v10 - 8);
  v2[30] = v11;
  v12 = *(v11 + 64) + 15;
  v2[31] = swift_task_alloc();
  v13 = *(*(type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v14 = sub_24619F3FC();
  v2[33] = v14;
  v15 = *(v14 - 8);
  v2[34] = v15;
  v16 = *(v15 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246185DBC, v1, 0);
}

uint64_t sub_246185DBC()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v3 + 16);
  v0[38] = v6;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  sub_24619F34C();
  v7 = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[40] = v7;

  return MEMORY[0x2822009F8](sub_246185E58, v7, 0);
}

uint64_t sub_246185E58()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[20];
  v7 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v0[41] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v3(v4, v1 + v7, v5);

  return MEMORY[0x2822009F8](sub_246185F18, v6, 0);
}

uint64_t sub_246185F18()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = sub_24619F37C();
  v6 = *(v4 + 8);
  *(v0 + 336) = v6;
  *(v0 + 344) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  if (v5)
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 256);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
    (*(*(v9 - 8) + 56))(v8, 4, 5, v9);
    v10 = sub_246186544;
LABEL_3:

    return MEMORY[0x2822009F8](v10, v7, 0);
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 160);
  sub_24619F36C();
  sub_24619F39C();
  v14 = v13;
  v55 = (v12 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  sub_24616CB20(v12 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v0 + 16);
  v48 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7520);
  if (v14)
  {
    v15 = 0xE400000000000000;
    v16 = 543975790;
  }

  else
  {
    v16 = sub_24619FA2C();
    v15 = v17;
  }

  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  v51 = *(v0 + 216);
  v53 = *(v0 + 208);
  v50 = *(v0 + 200);
  v56 = *(v0 + 160);
  MEMORY[0x24C19A830](v16, v15);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  v47 = *MEMORY[0x277D00768];
  v21 = *(v19 + 104);
  v21(v18);
  sub_24619F6DC();

  v22 = *(v19 + 8);
  v22(v18, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v49 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7560);
  v23 = sub_24619FA2C();
  MEMORY[0x24C19A830](v23);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  (v21)(v18, v47, v20);
  sub_24619F6DC();

  v24 = v22;
  v22(v18, v20);
  v25 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618BC30(v56 + v25, v50, &qword_27EE3F918, &qword_2461A0FE8);
  v26 = (*(v51 + 48))(v50, 1, v53);
  v27 = *(v0 + 200);
  if (v26 == 1)
  {
    v28 = *(v0 + 344);
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24616CFC4(v27, &qword_27EE3F918, &qword_2461A0FE8);
  }

  else
  {
    v29 = *(v0 + 296);
    v30 = *(v0 + 208);
    sub_24618BC98(*(v0 + 200), *(v0 + 224), type metadata accessor for ODISessionInternal.PendingFeedback);
    *(v0 + 392) = *(v30 + 20);
    if (sub_24619F37C())
    {
      v31 = *(v0 + 248);
      v32 = *(v0 + 232);
      v52 = v55[4];
      v54 = *(v0 + 224);
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      (v21)(v31, *MEMORY[0x277D00798], v32);
      sub_24619F6DC();
      v24(v31, v32);
      if (*v54)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
        sub_24619F9DC();
      }

      v7 = *(v0 + 320);
      v33 = *(v0 + 192);
      (*(*(v0 + 216) + 56))(v33, 1, 1, *(v0 + 208));
      swift_beginAccess();
      sub_24618ACA4(v33, v56 + v25);
      swift_endAccess();
      v10 = sub_246186B8C;
      goto LABEL_3;
    }

    v34 = *(v0 + 344);
    v35 = *(v0 + 224);
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24618AD14(v35, type metadata accessor for ODISessionInternal.PendingFeedback);
  }

  v37 = *(v0 + 288);
  v36 = *(v0 + 296);
  v38 = *(v0 + 280);
  v40 = *(v0 + 248);
  v39 = *(v0 + 256);
  v41 = *(v0 + 224);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 184);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_246186544()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[20];
  sub_24619DA28(v6, v4);
  sub_24618AD14(v6, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_246186604, v7, 0);
}

uint64_t sub_246186604()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  sub_24619F36C();
  sub_24619F39C();
  v4 = v3;
  v45 = (v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  sub_24616CB20(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v0 + 16);
  v38 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7520);
  if (v4)
  {
    v5 = 0xE400000000000000;
    v6 = 543975790;
  }

  else
  {
    v6 = sub_24619FA2C();
    v5 = v7;
  }

  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v41 = *(v0 + 216);
  v43 = *(v0 + 208);
  v40 = *(v0 + 200);
  v46 = *(v0 + 160);
  MEMORY[0x24C19A830](v6, v5);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  v37 = *MEMORY[0x277D00768];
  v11 = *(v9 + 104);
  v11(v8);
  sub_24619F6DC();

  v12 = *(v9 + 8);
  v12(v8, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v39 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7560);
  v13 = sub_24619FA2C();
  MEMORY[0x24C19A830](v13);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  (v11)(v8, v37, v10);
  sub_24619F6DC();

  v14 = v12;
  v12(v8, v10);
  v15 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618BC30(v46 + v15, v40, &qword_27EE3F918, &qword_2461A0FE8);
  if ((*(v41 + 48))(v40, 1, v43) == 1)
  {
    v16 = *(v0 + 344);
    v17 = *(v0 + 200);
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24616CFC4(v17, &qword_27EE3F918, &qword_2461A0FE8);
LABEL_13:
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v28 = *(v0 + 280);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(v0 + 224);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 184);

    v35 = *(v0 + 8);

    return v35();
  }

  v18 = *(v0 + 296);
  v19 = *(v0 + 208);
  sub_24618BC98(*(v0 + 200), *(v0 + 224), type metadata accessor for ODISessionInternal.PendingFeedback);
  *(v0 + 392) = *(v19 + 20);
  if ((sub_24619F37C() & 1) == 0)
  {
    v24 = *(v0 + 344);
    v25 = *(v0 + 224);
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24618AD14(v25, type metadata accessor for ODISessionInternal.PendingFeedback);
    goto LABEL_13;
  }

  v20 = *(v0 + 248);
  v21 = *(v0 + 232);
  v42 = v45[4];
  v44 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  (v11)(v20, *MEMORY[0x277D00798], v21);
  sub_24619F6DC();
  v14(v20, v21);
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
    sub_24619F9DC();
  }

  v22 = *(v0 + 320);
  v23 = *(v0 + 192);
  (*(*(v0 + 216) + 56))(v23, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_24618ACA4(v23, v46 + v15);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_246186B8C, v22, 0);
}

uint64_t sub_246186B8C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 160);
  (*(v0 + 304))(*(v0 + 288), *(v0 + 320) + *(v0 + 328), *(v0 + 264));

  return MEMORY[0x2822009F8](sub_246186C08, v2, 0);
}

uint64_t sub_246186C08()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224) + *(v0 + 392);
  v6 = sub_24619F37C();
  v2(v3, v4);
  if (v6)
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 256);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
    (*(*(v9 - 8) + 56))(v8, 4, 5, v9);
    v10 = sub_246186D98;
  }

  else
  {
    v11 = *(v0 + 312);
    (*(v0 + 304))(*(v0 + 280), *(v0 + 224) + *(v0 + 392), *(v0 + 264));
    sub_24619F34C();
    v7 = *(v0 + 320);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = v15 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
    *(v0 + 352) = *(v15 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    *(v0 + 360) = *(v16 + 8);
    *(v0 + 368) = *(v15 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
    (*(v13 + 104))(v12, *MEMORY[0x277D006A0], v14);

    v10 = sub_246186EFC;
  }

  return MEMORY[0x2822009F8](v10, v7, 0);
}

uint64_t sub_246186D98()
{
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[20];
  sub_24619DA28(v2, v0[35]);
  sub_24618AD14(v2, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246186E34, v3, 0);
}

uint64_t sub_246186E34()
{
  v1 = v0[40];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
  v0[44] = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
  v0[45] = *(v6 + 8);
  v0[46] = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  (*(v3 + 104))(v2, *MEMORY[0x277D006A0], v4);

  return MEMORY[0x2822009F8](sub_246186EFC, v1, 0);
}

uint64_t sub_246186EFC()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[47] = v3;
  v4 = *(MEMORY[0x277D00560] + 4);
  v12 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_246186FF0;
  v6 = v0[45];
  v7 = v0[46];
  v8 = v0[44];
  v9 = v0[35];
  v10 = v0[23];

  return v12(v9, v10, v3, v8, v6);
}

uint64_t sub_246186FF0()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v7 = *(*v0 + 160);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_24618719C, v7, 0);
}

uint64_t sub_24618719C()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[37];
  v4 = v0[33];
  v5 = v0[28];
  v2(v0[35], v4);
  v2(v3, v4);
  sub_24618AD14(v5, type metadata accessor for ODISessionInternal.PendingFeedback);
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2461872B0()
{
  v1[14] = v0;
  v2 = sub_24619F2CC();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = sub_24619F1AC();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = sub_24619F7FC();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v11 = *(*(sub_24619EF4C() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v12 = sub_24619EF5C();
  v1[25] = v12;
  v13 = *(v12 - 8);
  v1[26] = v13;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461874B0, v0, 0);
}

uint64_t sub_2461874B0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 112);
  sub_24619F56C();
  sub_24619EF6C();
  v7 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 224) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v8 = *(v6 + v7 + 32);
  __swift_project_boxed_opaque_existential_1((v6 + v7), *(v6 + v7 + 24));
  sub_24619FAEC();

  v9 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  v10 = sub_24619F8BC();
  MEMORY[0x24C19A830](v10);

  *(v0 + 376) = *MEMORY[0x277D00760];
  v11 = *(v5 + 104);
  *(v0 + 232) = v11;
  *(v0 + 240) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v2);
  sub_24619F6DC();

  v12 = *(v5 + 8);
  *(v0 + 248) = v12;
  *(v0 + 256) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v4);
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_246187684;
  v14 = *(v0 + 112);

  return sub_246171854();
}

uint64_t sub_246187684(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_24618779C, v3, 0);
}

uint64_t sub_24618779C()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + 16);
  *(v0 + 280) = v2;
  v24 = *(v0 + 248);
  v25 = *(v0 + 256);
  v3 = *(v0 + 232);
  v23 = *(v0 + 240);
  v4 = *(v0 + 376);
  v5 = *(v0 + 224);
  v6 = *(v0 + 112);
  if (v2)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v22 = *(v6 + v5 + 32);
    __swift_project_boxed_opaque_existential_1((v6 + v5), *(v6 + v5 + 24));
    sub_24619FAEC();

    v10 = MEMORY[0x24C19A8B0](v1, v9);
    MEMORY[0x24C19A830](v10);

    v3(v7, v4, v8);
    sub_24619F6DC();

    v24(v7, v8);
    v11 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    *(v0 + 288) = v11;

    return MEMORY[0x2822009F8](sub_246187A38, v11, 0);
  }

  else
  {
    v12 = *(v0 + 216);
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);

    v15 = *(v6 + v5 + 32);
    __swift_project_boxed_opaque_existential_1((v6 + v5), *(v6 + v5 + 24));
    v3(v13, v4, v14);
    sub_24619F6DC();
    v24(v13, v14);
    sub_24619EF3C();
    v16 = *(v0 + 192);
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_246187A38()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v0[37] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v5 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = swift_beginAccess();
  v9 = 0;
  v10 = (v3 + 8);
  while (1)
  {
    if (v9 >= *(v0[34] + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    v11 = v0[36];
    (*(v3 + 16))(v0[20], v5 + *(v3 + 72) * v9, v0[18]);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v12 = v0[36];
      swift_task_reportUnexpectedExecutor();
    }

    v13 = *(v1 + v4);
    v14 = v0[20];
    if (!*(v13 + 16))
    {
      v20 = v0[14];
      (*v10)(v0[20], v0[18]);
      v21 = sub_246187C68;
      goto LABEL_11;
    }

    v15 = *(v1 + v4);

    v16 = sub_246165BBC(v14);
    if ((v17 & 1) == 0)
    {
      v22 = v0[14];
      v23 = v0[20];
      v24 = v0[18];

      (*v10)(v23, v24);
      v6 = sub_24618BD14;
      v7 = v22;
      goto LABEL_14;
    }

    v18 = *(*(v13 + 56) + v16);
    (*v10)(v0[20], v0[18]);

    if ((v18 & 1) == 0)
    {
      break;
    }

    if (++v9 == v0[35])
    {
      v19 = v0[34];
      v20 = v0[14];

      v21 = sub_24618BD04;
LABEL_11:
      v6 = v21;
      v7 = v20;
      goto LABEL_14;
    }
  }

  v7 = v0[14];
  v6 = sub_24618BD14;
LABEL_14:
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_246187C68()
{
  v1 = *(v0[14] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  v2 = sub_2461714EC()[9];

  v0[5] = type metadata accessor for ODIBindingsFiller(0);
  v3 = sub_24618AC5C(&qword_281391CA8, type metadata accessor for ODIBindingsFiller);
  v0[2] = v2;
  v0[6] = v3;
  v4 = *(MEMORY[0x277D00628] + 4);
  v9 = (*MEMORY[0x277D00628] + MEMORY[0x277D00628]);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_246187DB0;
  v6 = v0[34];
  v7 = v0[14];

  return v9(v6, &unk_2461A1220, v7, v0 + 2);
}

uint64_t sub_246187DB0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 288);
  v6 = *v1;
  *(v2 + 380) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_246187ED0, v4, 0);
}

uint64_t sub_246187ED0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 112);
  sub_24619D774(*(v0 + 272), *(v0 + 380));

  return MEMORY[0x2822009F8](sub_246187F58, v2, 0);
}

uint64_t sub_246187F58()
{
  v1 = v0[36];
  v2 = (v0[14] + v0[28]);
  v3 = v2[3];
  v0[39] = v3;
  v0[40] = v2[4];
  v0[41] = __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_24619FAEC();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD000000000000031, 0x80000002461A7480);

  return MEMORY[0x2822009F8](sub_246188028, v1, 0);
}

uint64_t sub_246188028()
{
  v1 = v0[14];
  v0[42] = *(v0[36] + v0[37]);

  return MEMORY[0x2822009F8](sub_2461880A0, v1, 0);
}

uint64_t sub_2461880A0()
{
  v1 = *(v0 + 336);
  v19 = *(v0 + 328);
  v20 = *(v0 + 320);
  v18 = *(v0 + 312);
  v21 = *(v0 + 248);
  v22 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 376);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v23 = *(v0 + 112);
  v7 = (v23 + *(v0 + 224));
  v8 = *(v0 + 144);
  sub_24618AC5C(&qword_281391FA8, MEMORY[0x277D005E0]);
  v9 = sub_24619F83C();
  v11 = v10;

  MEMORY[0x24C19A830](v9, v11);

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v2(v5, v4, v6);
  sub_24619F6DC();

  v21(v5, v6);
  v14 = v7[3];
  *(v0 + 344) = v14;
  *(v0 + 352) = v7[4];
  *(v0 + 360) = __swift_project_boxed_opaque_existential_1(v7, v14);
  sub_24619FAEC();

  *(v0 + 96) = 0xD000000000000014;
  *(v0 + 104) = 0x80000002461A74C0;
  *(v0 + 368) = *(v23 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630]);
  v16 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_2461882D0, v16, v15);
}

uint64_t sub_2461882D0()
{
  v1 = v0[46];
  v2 = v0[17];
  v3 = v0[14];
  sub_24619F23C();

  return MEMORY[0x2822009F8](sub_246188340, v3, 0);
}

uint64_t sub_246188340()
{
  v21 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  v1 = *(v0 + 232);
  v19 = *(v0 + 240);
  v20 = *(v0 + 344);
  v2 = *(v0 + 376);
  v25 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_24618AC5C(&qword_281391F78, MEMORY[0x277D00690]);
  v8 = sub_24619FBBC();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  MEMORY[0x24C19A830](v8, v10);

  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v1(v3, v2, v4);
  sub_24619F72C();

  v23(v3, v4);
  sub_24619EF3C();
  v13 = *(v0 + 192);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 136);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_246188518(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_246188534, a2, 0);
}

uint64_t sub_246188534()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_2461714EC();

  return MEMORY[0x2822009F8](sub_2461885A0, 0, 0);
}

uint64_t sub_2461885A0()
{
  v1 = *(*(v0 + 40) + 72);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2461885C4, v1, 0);
}

uint64_t sub_2461885C4()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);
  if (v2)
  {
    v0[8] = v2;
    v3 = v0[5];

    return MEMORY[0x2822009F8](sub_2461888C4, 0, 0);
  }

  else
  {
    v4 = sub_24618AC5C(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    v7 = sub_24619F48C();
    *v6 = v0;
    v6[1] = sub_246188744;
    v8 = v0[6];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0xD000000000000010, 0x80000002461A23D0, sub_24616B3C4, v8, v7);
  }
}

uint64_t sub_246188744()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_246188854, v2, 0);
}

uint64_t sub_246188854()
{
  v0[8] = v0[2];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_2461888C4, 0, 0);
}

uint64_t sub_2461888C4()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_24619F48C();
  v4 = MEMORY[0x277D006E0];
  v2[3] = v3;
  v2[4] = v4;
  *v2 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_24618893C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_24619F9CC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_2461703A8(0, 0, v4, &unk_2461A1090, v6);
}

uint64_t sub_246188A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_24619F7FC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_24619F3FC();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246188B60, 0, 0);
}

uint64_t sub_246188B60()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_246188B8C, v1, 0);
}

uint64_t sub_246188B8C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);

  return MEMORY[0x2822009F8](sub_246188C40, 0, 0);
}

uint64_t sub_246188C40()
{
  v1 = v0[11];
  if (sub_24619F3BC())
  {
    v2 = v0[11];
    if (sub_24619F3CC())
    {
      v3 = v0[11];
      if ((sub_24619F35C() & 1) == 0)
      {
        v5 = v0[7];
        v4 = v0[8];
        v6 = v0[6];
        v7 = (v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
        v8 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v7[3]);
        (*(v5 + 104))(v4, *MEMORY[0x277D00750], v6);
        sub_24619F6FC();
        (*(v5 + 8))(v4, v6);
      }
    }
  }

  v9 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t ODISessionInternal.deinit()
{
  v28 = sub_24619F7FC();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24619EFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  sub_24616CB20(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v31);
  v25[1] = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v6 + 104))(v9, *MEMORY[0x277D004E0], v5);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24619FAEC();

  v29 = 0xD00000000000001ELL;
  v30 = 0x80000002461A7190;
  v27 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID;
  v10 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  v11 = sub_24619F8BC();
  MEMORY[0x24C19A830](v11);

  sub_24619F78C();

  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v12 = v26;
  sub_24616CB20(v0 + v26, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v13 = v28;
  (*(v1 + 104))(v4, *MEMORY[0x277D00750], v28);
  sub_24619F6CC();
  (*(v1 + 8))(v4, v13);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_24616CFC4(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback, &qword_27EE3F918, &qword_2461A0FE8);
  v14 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);

  v15 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId + 8);

  v16 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);

  v17 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier + 8);

  v18 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);

  v19 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v12));
  v20 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);

  v21 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);

  v22 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedDsidTypes);

  v23 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedServices);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODISessionInternal.__deallocating_deinit()
{
  ODISessionInternal.deinit();

  return MEMORY[0x282200960](v0);
}

void ODISessionInternal.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ODISessionInternal.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_246189354(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_246165AE8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_246169E84();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_24619F46C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_2461695CC(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_24618941C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_246165240;

  return v7(a1);
}

void *sub_246189514(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A8, &unk_2461A1260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_246189598(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_246189640(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x24C19B290](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x24C19B290](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2461896CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_246189824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24619F8BC();
  v6 = v5;
  if (v4 == sub_24619F8BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24619FBFC();
  }

  return v9 & 1;
}

unint64_t sub_2461898B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F980, &qword_2461A1270);
    v3 = sub_24619FB9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2461899D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9E8, &qword_2461A1378);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
    v8 = sub_24619FB9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v10, v6, &qword_27EE3F9E8, &qword_2461A1378);
      result = sub_2461659D4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ODIFieldsKey();
      result = sub_24618BC98(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ODIFieldsKey);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_246189BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9E0, &unk_2461A1368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F858, &unk_2461A0D90);
    v8 = sub_24619FB9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v10, v6, &qword_27EE3F9E0, &unk_2461A1368);
      result = sub_246165AE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24619F46C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_246189DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9D8, &unk_2461A1358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
    v8 = sub_24619FB9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v10, v6, &qword_27EE3F9D8, &unk_2461A1358);
      result = sub_246165AE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24619F46C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_246189F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9F0, &qword_2461A1388);
    v3 = sub_24619FB9C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_24618A0A0()
{
  result = qword_281391880;
  if (!qword_281391880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F938, &qword_2461A1008);
    sub_24618A12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391880);
  }

  return result;
}

unint64_t sub_24618A12C()
{
  result = qword_281391878;
  if (!qword_281391878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F940, &qword_2461A1010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391878);
  }

  return result;
}

uint64_t sub_24618A1A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_2461736C8(a1, v4, v5, v6);
}

uint64_t sub_24618A25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_2461742AC(a1, v4, v5, v6);
}

uint64_t sub_24618A310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246174728(a1, v4, v5, v6);
}

uint64_t sub_24618A3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246177760(a1, v4, v5, v6);
}

uint64_t sub_24618A478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24616D024;

  return sub_246177A34(a1, v4, v5, v7, v6);
}

uint64_t sub_24618A538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24618A560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24616D024;

  return sub_24617862C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24618A634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24616D024;

  return sub_24617889C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24618A6FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246188A44(a1, v4, v5, v6);
}

void sub_24618A7B8()
{
  sub_24618AA58();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24618AA58()
{
  if (!qword_281391C58)
  {
    type metadata accessor for ODISessionInternal.PendingFeedback(255);
    v0 = sub_24619FA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281391C58);
    }
  }
}

void sub_24618AAD8()
{
  sub_24618AB5C();
  if (v0 <= 0x3F)
  {
    sub_24619F3FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24618AB5C()
{
  if (!qword_281391868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F950, &qword_2461A1210);
    v0 = sub_24619FA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281391868);
    }
  }
}

uint64_t sub_24618ABC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24616D024;

  return sub_246188518(a1, v1);
}

uint64_t sub_24618AC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24618ACA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24618AD14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24618AD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246183E30(a1, v4, v5, v6);
}

uint64_t sub_24618AE28(uint64_t a1)
{
  v4 = *(sub_24619F3FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_246161518;

  return sub_2461839CC(a1, v6, v1 + v5);
}

unint64_t sub_24618AF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
    v3 = sub_24619FB9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24618BC30(v4, &v11, &qword_27EE3F8E0, &qword_2461A0EC0);
      v5 = v11;
      result = sub_246165C90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_246158944(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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