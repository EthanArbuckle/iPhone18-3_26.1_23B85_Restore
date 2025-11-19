void *TokenDecoder.init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = *(*(sub_2581372F4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2581372D4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v3[2] = sub_2581372C4();
  v12 = sub_258137334();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v4[3] = v15;
  v4[4] = sub_2581301B8(a1, a2);
  v4[5] = v16;
  sub_2581306DC(a3, (v4 + 6));
  return v4;
}

uint64_t sub_2581301B8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920768, &qword_258137DE0);
  if (swift_dynamicCast())
  {
    sub_2581306DC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_2581373B4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2581306F4(__src);
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
    v4 = sub_2581375E4();
  }

  sub_258130814(v4, v5, &v42);
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
  *&__src[0] = sub_258135DC8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v10 = sub_2581354D8(sub_2581360CC);
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
        sub_2581373F4();
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
      v28 = sub_258135B20(v16, v14, v15);
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
      v8 = sub_258137524();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_258137554();
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
        v30 = sub_2581375E4();
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

    v16 = sub_258135B20(v16, v14, v15);
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

    v16 = sub_258137534();
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
      sub_258137404();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_258137404();
    sub_2581306C8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_2581306C8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2581308DC(*&__src[0], *(&__src[0] + 1));

  sub_258130930(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2581306C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258130930(a1, a2);
  }

  return a1;
}

uint64_t sub_2581306DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2581306F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920770, &qword_258137DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25813075C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_258130814@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25813075C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2581373A4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_258137354();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2581373D4();
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

uint64_t sub_2581308DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_258130930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t TokenDecoder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_258130930(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_258130A84()
{
  v1 = sub_2581374F4();
  SecTaskCopyValueForEntitlement(v0, v1, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E0, &unk_258137A10);
  return swift_dynamicCast() & v3;
}

uint64_t sub_258130B04(uint64_t a1)
{
  v2 = v1;
  v4 = SecTaskCopyTeamIdentifier();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = 0;
      v9 = 0;
      sub_258137504();
    }
  }

  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v6 = sub_2581374F4();
  SecTaskCopyValueForEntitlement(v2, v6, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E0, &unk_258137A10);
  if ((swift_dynamicCast() & 1) != 0 && v9)
  {
    return v8;
  }

  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of static TeamIdentifierRetrieving.teamIdentifier(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t getEnumTagSinglePayload for KeyGenerator(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for KeyGenerator(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_258130E64()
{
  v1 = *v0;
  sub_2581376B4();
  MEMORY[0x259C7A210](v1);
  return sub_2581376D4();
}

uint64_t sub_258130ED8()
{
  v1 = *v0;
  sub_2581376B4();
  MEMORY[0x259C7A210](v1);
  return sub_2581376D4();
}

uint64_t sub_258130F1C()
{
  v0 = sub_2581375A4();
  *(v0 + 16) = 32;
  *(v0 + 48) = 0u;
  *(v0 + 32) = 0u;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, (v0 + 32)))
  {

    sub_2581315D0();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  else
  {
    v3 = sub_258135CEC(v0);

    return v3;
  }
}

uint64_t sub_258130FE8(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 32)
    {
      return result;
    }
  }

  v8 = result;
  sub_2581315D0();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  return sub_258130930(v8, a2);
}

unint64_t sub_2581310A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v37 = a5;
  v38 = a6;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  v44 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E8, &qword_258137AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v32 - v11;
  v12 = sub_2581374E4();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2581374B4();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258137474();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43 = a3;
  *(&v43 + 1) = a4;
  sub_2581308DC(a3, a4);
  sub_258137464();
  v43 = xmmword_258137AA0;
  v24 = sub_258131514();
  sub_2581374A4();
  if (v6)
  {
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v33 = v20;
    v43 = v36;
    v25 = v35;
    v26 = v39;
    (*(v35 + 16))(v39, v18, v15);
    (*(v25 + 56))(v26, 0, 1, v15);
    v41 = v37;
    v42 = v38;
    sub_258137494();
    v38 = v18;
    sub_258131568(v26);
    v27 = sub_2581374C4();
    if (v28 >> 60 == 15)
    {
      sub_2581315D0();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
    }

    else
    {
      v24 = v27;
    }

    (*(v34 + 8))(v40, v12);
    (*(v25 + 8))(v38, v15);
    (*(v33 + 8))(v23, v19);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v24;
}

unint64_t sub_258131514()
{
  result = qword_27F9206F0;
  if (!qword_27F9206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9206F0);
  }

  return result;
}

uint64_t sub_258131568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E8, &qword_258137AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2581315D0()
{
  result = qword_27F9206F8;
  if (!qword_27F9206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9206F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptorError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2581317B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_258131808(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258131868()
{
  result = qword_27F920700;
  if (!qword_27F920700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920700);
  }

  return result;
}

uint64_t sub_2581318C4()
{
  sub_2581376B4();
  MEMORY[0x259C7A210](0);
  return sub_2581376D4();
}

uint64_t sub_258131908()
{
  sub_2581376B4();
  MEMORY[0x259C7A210](0);
  return sub_2581376D4();
}

id KeyRetriever.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D26568]) init];
  *a1 = result;
  return result;
}

uint64_t KeyRetriever.retrieveEncodingKeyData()()
{
  v1 = *v0;
  v2 = [*v0 managedSettings];
  v3 = [v2 tokenEncodingKey];

  if (!v3)
  {
    v4 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_6;
  }

  v4 = sub_258137414();
  v6 = v5;

  sub_2581308DC(v4, v6);
  v8 = sub_2581373E4();
  v9 = v7;
  if (v6 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2581308DC(v4, v6);
      sub_2581308DC(v8, v9);
      v18 = sub_2581323A4(v4, v6, v8, v9);
      sub_2581306C8(v8, v9);
      sub_258130930(v8, v9);
      sub_258130930(v4, v6);
      sub_2581306C8(v4, v6);
      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

LABEL_10:
    sub_2581306C8(v4, v6);
    sub_2581306C8(v8, v9);
    goto LABEL_11;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_2581306C8(v4, v6);
LABEL_6:
  v10 = [v1 allowedClient];
  v11 = [v10 tokenKeys];

  if (!v11)
  {
    sub_2581306C8(v4, v6);
    v4 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_15;
  }

  sub_258131C7C();
  v12 = sub_2581375B4();

  sub_258131CD0(v12, &v19);

  sub_2581306C8(v4, v6);
  v4 = v19;
  v6 = v20;
  if (v20 >> 60 == 15)
  {
    goto LABEL_15;
  }

LABEL_11:
  sub_2581308DC(v4, v6);
  v13 = sub_2581373E4();
  v15 = v14;
  v16 = sub_2581323A4(v4, v6, v13, v14);
  sub_258130930(v13, v15);
  if (v16)
  {
    sub_258130930(v4, v6);
LABEL_15:
    sub_258131C28();
    swift_allocError();
    swift_willThrow();
    sub_2581306C8(v4, v6);
    return v4;
  }

  sub_2581306C8(v4, v6);
  return v4;
}

unint64_t sub_258131C28()
{
  result = qword_27F920708;
  if (!qword_27F920708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920708);
  }

  return result;
}

unint64_t sub_258131C7C()
{
  result = qword_27F920710;
  if (!qword_27F920710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920710);
  }

  return result;
}

uint64_t sub_258131CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_2581375C4();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    sub_258132290(result, *(a1 + 36), a1, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
    sub_2581308DC(v8, *(&v8 + 1));
    result = sub_258130930(v6, v7);
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t KeyRetriever.retrieveDecodingKeyDatas()()
{
  v1 = *v0;
  v2 = [v1 managedSettings];
  v3 = [v2 tokenDecodingKeys];

  if (v3)
  {
    sub_258131C7C();
    v4 = sub_2581375B4();

    result = v4;
    if (*(v4 + 16))
    {
      return result;
    }
  }

  v6 = [v1 allowedClient];
  v7 = [v6 tokenKeys];

  if (v7)
  {
    sub_258131C7C();
    v8 = sub_2581375B4();

    result = v8;
    if (*(v8 + 16))
    {
      return result;
    }
  }

  sub_258131C28();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_258131ED0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_258137364();
    if (v10)
    {
      v11 = sub_258137394();
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
      result = sub_258137384();
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
  v10 = sub_258137364();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_258137394();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_258137384();
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

uint64_t sub_258132100(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_2581322EC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_258130930(a3, a4);
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
  sub_258131ED0(v14, a3, a4, &v13);
  v10 = v4;
  sub_258130930(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_258132290@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 48) + 16 * result);
    *a4 = v4;
    return sub_2581308DC(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2581322EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_258137364();
  v11 = result;
  if (result)
  {
    result = sub_258137394();
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

  sub_258137384();
  sub_258131ED0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2581323A4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2581308DC(a3, a4);
          return sub_258132100(v13, a2, a3, a4) & 1;
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

uint64_t sub_258132518(uint64_t *a1, int a2)
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

uint64_t sub_258132560(uint64_t result, int a2, int a3)
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

unint64_t sub_2581325C8()
{
  result = qword_27F920718;
  if (!qword_27F920718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920718);
  }

  return result;
}

uint64_t sub_25813261C()
{
  v1 = *v0;
  sub_2581376B4();
  sub_258137514();

  return sub_2581376D4();
}

uint64_t sub_2581326C8()
{
  *v0;
  *v0;
  sub_258137514();
}

uint64_t sub_258132760()
{
  v1 = *v0;
  sub_2581376B4();
  sub_258137514();

  return sub_2581376D4();
}

uint64_t sub_258132808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258135E68();
  *a2 = result;
  return result;
}

void sub_258132838(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000004449;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 0x69616D6F44626577;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_258132950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x79726F6765746163;
  v4 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v3 = 0x69616D6F44626577;
    v4 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x79726F6765746163;
  v8 = 0xEA00000000004449;
  if (*a2 != 1)
  {
    v7 = 0x69616D6F44626577;
    v8 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258137664();
  }

  return v11 & 1;
}

uint64_t sub_258132A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_258137664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_258137664();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_258132B70(char a1)
{
  sub_2581376B4();
  MEMORY[0x259C7A210](a1 & 1);
  return sub_2581376D4();
}

uint64_t sub_258132BB8(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 1835365481;
  }
}

BOOL sub_258132BEC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_258132B38(*a1, *a2);
}

uint64_t sub_258132C04(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_258132B70(*v1);
}

uint64_t sub_258132C18(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_258132B48(a1, *v2);
}

uint64_t sub_258132C2C(uint64_t a1, void *a2)
{
  sub_2581376B4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_258132B48(v8, *v2);
  return sub_2581376D4();
}

uint64_t sub_258132C78(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_258132BB8(*v1);
}

uint64_t sub_258132C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_258132A64(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_258132CCC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_258135EB4();
  *a2 = result;
  return result;
}

uint64_t sub_258132D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_258132D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_258132DA8(void *a1, uint64_t a2)
{
  v14[2] = *(a2 + 16);
  v4 = *(a2 + 24);
  v14[0] = *(a2 + 32);
  type metadata accessor for Annotated.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_258137654();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[1];
  sub_2581376F4();
  v17 = 0;
  v12 = v14[3];
  sub_258137644();
  if (!v12)
  {
    v16 = *(v11 + *(a2 + 44));
    v15 = 1;
    sub_258136B74();
    sub_258137644();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258132F68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Annotated.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_258137624();
  v29 = *(v33 - 8);
  v9 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v31 = a2;
  v32 = a3;
  v12 = type metadata accessor for Annotated();
  v27 = *(v12 - 8);
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v26 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v35;
  sub_2581376E4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v35 = a1;
  v26 = v12;
  v19 = v29;
  v20 = v30;
  v38 = 0;
  v21 = v33;
  v22 = v31;
  sub_258137614();
  (*(v20 + 32))(v18, v34, v22);
  v36 = 1;
  sub_258136B20();
  sub_258137614();
  (*(v19 + 8))(v11, v21);
  v23 = v26;
  v24 = v27;
  v18[*(v26 + 44)] = v37;
  (*(v24 + 16))(v28, v18, v23);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v24 + 8))(v18, v23);
}

uint64_t sub_258133344()
{
  sub_258137334();
  sub_258136084(&qword_27F920758, MEMORY[0x277CC87B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
  sub_258136154(&qword_27F920760, &qword_27F920738, &qword_258137DD8);
  result = sub_258137444();
  if (!v0)
  {
    v2 = v10;
    v3 = v11;
    v4 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v4 != 2)
      {
        sub_258130930(v10, v11);
        v5 = 0;
        return 100 * (v5 / 100) - v5 + 100;
      }

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      v2 = sub_258130930(v10, v11);
      v5 = v6 - v7;
      if (!__OFSUB__(v6, v7))
      {
        return 100 * (v5 / 100) - v5 + 100;
      }

      __break(1u);
    }

    else if (!v4)
    {
      sub_258130930(v10, v11);
      v5 = BYTE6(v11);
      return 100 * (v5 / 100) - v5 + 100;
    }

    v8 = HIDWORD(v2);
    v9 = v2;
    result = sub_258130930(v2, v3);
    LODWORD(v5) = v8 - v9;
    if (__OFSUB__(v8, v9))
    {
      __break(1u);
      return result;
    }

    v5 = v5;
    return 100 * (v5 / 100) - v5 + 100;
  }

  return result;
}

uint64_t sub_2581334F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_258137664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_258137664();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2581335BC(char a1)
{
  if (a1)
  {
    return 0x676E6964646170;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_2581335EC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v18 = *(a2 + 16);
  v20 = v18;
  v21 = v4;
  v17 = *(a2 + 40);
  v22 = v17;
  type metadata accessor for Padded.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_258137654();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v19;
  sub_2581376F4();
  LOBYTE(v20) = 0;
  v12 = v23;
  sub_258137644();
  if (!v12)
  {
    v13 = (v11 + *(a2 + 60));
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v20) = 1;
    sub_258137634();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2581337B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  v46 = *(a2 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](a1);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  v55 = v19;
  type metadata accessor for Padded.CodingKeys();
  swift_getWitnessTable();
  v49 = sub_258137624();
  v45 = *(v49 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v22 = &v42 - v21;
  v47 = a2;
  v48 = a4;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v23 = type metadata accessor for Padded();
  v43 = *(v23 - 8);
  v24 = *(v43 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v56;
  sub_2581376E4();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v26;
  v56 = a1;
  v42 = v23;
  v31 = v45;
  v30 = v46;
  LOBYTE(v51) = 0;
  v32 = v49;
  v33 = v47;
  sub_258137614();
  v34 = v29;
  (*(v30 + 32))(v29, v50, v33);
  LOBYTE(v51) = 1;
  v35 = sub_258137604();
  v37 = v36;
  (*(v31 + 8))(v22, v32);
  v38 = v42;
  v39 = &v34[*(v42 + 60)];
  *v39 = v35;
  v39[1] = v37;
  v40 = v43;
  (*(v43 + 16))(v44, v34, v38);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return (*(v40 + 8))(v34, v38);
}

BOOL sub_258133B60(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return sub_258132B38(*a1, *a2);
}

uint64_t sub_258133B7C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_258132B70(*v1);
}

uint64_t sub_258133B94(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_258132B48(a1, *v2);
}

uint64_t sub_258133BAC(uint64_t a1, void *a2)
{
  sub_2581376B4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_258132B48(v10, *v2);
  return sub_2581376D4();
}

uint64_t sub_258133BFC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_2581335BC(*v1);
}

uint64_t sub_258133C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_2581334F0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_258133C4C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_258135EB4();
  *a2 = result;
  return result;
}

uint64_t sub_258133C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_258133CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void *TokenEncoder.__allocating_init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = sub_2581372F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = swift_allocObject();
  v9 = sub_258137334();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v8[2] = v12;
  v8[3] = sub_2581301B8(a1, a2);
  v8[4] = v13;
  sub_2581306DC(a3, (v8 + 5));
  return v8;
}

void *TokenEncoder.init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = sub_2581372F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_258137334();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v4[2] = v13;
  v4[3] = sub_2581301B8(a1, a2);
  v4[4] = v14;
  sub_2581306DC(a3, (v4 + 5));
  return v4;
}

uint64_t sub_258133F80()
{
  v2 = v0;
  v3 = v0[8];
  v4 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
  result = (*(v4 + 8))(v3, v4);
  if (!v1)
  {
    v24 = result;
    v25 = v6;
    v7 = v0[2];

    sub_258133344();
    sub_258137574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
    sub_258136154(&qword_27F920760, &qword_27F920738, &qword_258137DD8);
    v8 = sub_258137314();
    v10 = v9;

    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      v12 = v25;
      v13 = v24;
      if (v11 != 2)
      {
LABEL_13:
        v20 = v13;
        sub_2581308DC(v13, v12);
        v21 = sub_258130FE8(v20, v12);
        v23 = v22;
        sub_2581310A4(v8, v10, v21, v22, v2[3], v2[4]);
        sub_258137434();
        sub_258130930(v21, v23);
        sub_258130930(v8, v10);
        return sub_258130930(v24, v25);
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (!v17)
      {
LABEL_11:
        if (__ROR8__(0x8F5C28F5C28F5C29 * v14 + 0x51EB851EB851EB8, 2) >= 0x28F5C28F5C28F5DuLL)
        {
          v18 = v12;
          v19 = v13;
          sub_2581359AC();
          swift_allocError();
          swift_willThrow();
          sub_258130930(v19, v18);
          return sub_258130930(v8, v10);
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v12 = v25;
      v13 = v24;
      if (!v11)
      {
        v14 = BYTE6(v10);
        goto LABEL_11;
      }
    }

    LODWORD(v14) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      return result;
    }

    v14 = v14;
    goto LABEL_11;
  }

  return result;
}

void *TokenEncoder.deinit()
{
  v1 = v0[2];

  sub_258130930(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t TokenEncoder.__deallocating_deinit()
{
  v1 = v0[2];

  sub_258130930(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *TokenDecoder.__allocating_init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = sub_2581372F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = swift_allocObject();
  v9 = sub_2581372D4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v8[2] = sub_2581372C4();
  v12 = sub_258137334();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v8[3] = v15;
  v8[4] = sub_2581301B8(a1, a2);
  v8[5] = v16;
  sub_2581306DC(a3, (v8 + 6));
  return v8;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2581344E8(uint64_t a1, unint64_t a2)
{
  v6 = v2[9];
  v7 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (!v3)
  {
    a2 = sub_2581345A0(a1, v8, a2);
  }

  return a2;
}

unint64_t sub_2581345A0(uint64_t a1, uint64_t a2, int a3)
{
  v92 = a3;
  v104 = a1;
  v128 = *MEMORY[0x277D85DE8];
  v99 = sub_2581374E4();
  v4 = *(v99 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v99);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_258137474();
  v8 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v110 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v97 = (v4 + 8);
  v100 = (v9 + 8);
  v93 = *MEMORY[0x277CC51E0];

  v95 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0xF000000000000000;
  v102 = a2 + 56;
  v96 = a2;
  v98 = v7;
  v101 = v15;
LABEL_4:
  v19 = v17;
  if (!v14)
  {
    goto LABEL_6;
  }

  do
  {
    v17 = v19;
LABEL_9:
    v20 = (*(a2 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
    v21 = *v20;
    v11 = v20[1];
    v22 = v11 >> 62;
    v114 = v21;
    v109 = v18;
    if ((v11 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_83;
      }

      v25 = v21 + 16;
      v24 = *(v21 + 16);
      v23 = *(v25 + 8);
      v26 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (!v22)
      {
        if (BYTE6(v11) != 32)
        {
          goto LABEL_83;
        }

        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_93;
      }

      v26 = HIDWORD(v21) - v21;
    }

    sub_2581308DC(v114, v11);
    sub_2581308DC(v114, v11);
    v21 = v114;
    if (v26 != 32)
    {
LABEL_83:
      v83 = v21;
      sub_2581315D0();
      swift_allocError();
      *v84 = 1;
      swift_willThrow();

      sub_258130930(v83, v11);
      MEMORY[0x259C7A450](v95);
      sub_2581306C8(v16, v109);
      sub_258130930(v83, v11);
      goto LABEL_84;
    }

LABEL_20:
    v27 = v16;
    v14 &= v14 - 1;
    v28 = v21;
    sub_258130930(v21, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920720, &qword_258137DD0);
    v112 = sub_258137424();
    v30 = v29;
    v31 = v105[5];
    v107 = v105[4];
    v108 = v31;
    v123 = v28;
    v124 = v11;
    sub_2581308DC(v28, v11);
    sub_258137464();
    v113 = v30;
    v32 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      v33 = v112;
      if (v32 != 2)
      {
        goto LABEL_74;
      }

      v35 = *(v112 + 16);
      v34 = *(v112 + 24);
      v36 = v34 - v35;
      if (__OFSUB__(v34, v35))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v32)
      {
        v33 = v112;
        if (BYTE6(v113) < 0x1CuLL)
        {
          goto LABEL_74;
        }

        goto LABEL_31;
      }

      v33 = v112;
      if (__OFSUB__(HIDWORD(v112), v112))
      {
        goto LABEL_94;
      }

      v36 = HIDWORD(v112) - v112;
    }

    sub_2581308DC(v33, v113);
    if (v36 < 28)
    {
LABEL_74:
      v68 = v33;
      v69 = v113;
      sub_258130930(v68, v113);
      v70 = sub_258137454();
      sub_258136084(&qword_27F920728, MEMORY[0x277CC51E8]);
      v71 = swift_allocError();
      (*(*(v70 - 8) + 104))(v72, v93, v70);
      swift_willThrow();
      sub_258130930(v114, v11);
      sub_258130930(v112, v69);
      MEMORY[0x259C7A450](v95);
      v11 = v102;
      (*v100)(v110, v103);
      v111 = 0;
      v95 = v71;
      v15 = v101;
      v18 = v109;
      v16 = v27;
      goto LABEL_4;
    }

LABEL_31:
    v126 = MEMORY[0x277CC9318];
    v127 = MEMORY[0x277CC9300];
    v123 = v33;
    v124 = v113;
    v37 = __swift_project_boxed_opaque_existential_1(&v123, MEMORY[0x277CC9318]);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    v106 = v11;
    if ((v39 >> 62) > 1)
    {
      v16 = v27;
      if (v40 != 2)
      {
        goto LABEL_67;
      }

      v94 = v27;
      v45 = *(v38 + 16);
      v46 = *(v38 + 24);
      v47 = sub_258137364();
      if (v47)
      {
        v48 = v47;
        v49 = sub_258137394();
        if (__OFSUB__(v45, v49))
        {
          goto LABEL_98;
        }

        v50 = (v45 - v49 + v48);
        v51 = v46 - v45;
        if (__OFSUB__(v46, v45))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
        }
      }

      else
      {
        v50 = 0;
        v51 = v46 - v45;
        if (__OFSUB__(v46, v45))
        {
          goto LABEL_97;
        }
      }

      v56 = sub_258137384();
      if (v56 < v51)
      {
        v51 = v56;
      }

      if (!v50)
      {
        v16 = v94;
LABEL_66:
        a2 = v96;
LABEL_67:
        v61 = v111;
        v41 = v107;
        goto LABEL_71;
      }

      v16 = v94;
      v41 = v107;
      if (!v51)
      {
        goto LABEL_63;
      }

      a2 = v96;
      if (v51 >= 15)
      {
        goto LABEL_61;
      }

      memset(__dst, 0, sizeof(__dst));
      v122 = v51;
      memcpy(__dst, v50, v51);
      v89 = v89 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v122 << 16)) << 32);
    }

    else
    {
      v16 = v27;
      if (!v40)
      {
        __src = v38;
        v116 = v39;
        v117 = BYTE2(v39);
        v118 = BYTE3(v39);
        v119 = BYTE4(v39);
        v120 = BYTE5(v39);
        if (BYTE6(v39))
        {
          v41 = v107;
          if (BYTE6(v39) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v122 = BYTE6(v39);
            memcpy(__dst, &__src, BYTE6(v39));
            v91 = v91 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v122 << 16)) << 32);
          }

          else
          {
            v42 = sub_2581373A4();
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            swift_allocObject();
            sub_258137354();
          }
        }

        else
        {
          v41 = v107;
        }

        goto LABEL_70;
      }

      if (v38 >> 32 < v38)
      {
        goto LABEL_96;
      }

      v52 = sub_258137364();
      if (v52)
      {
        v53 = v52;
        v54 = sub_258137394();
        if (__OFSUB__(v38, v54))
        {
          goto LABEL_99;
        }

        v55 = (v38 - v54 + v53);
      }

      else
      {
        v55 = 0;
      }

      v57 = sub_258137384();
      if (v57 >= (v38 >> 32) - v38)
      {
        v51 = (v38 >> 32) - v38;
      }

      else
      {
        v51 = v57;
      }

      if (!v55)
      {
        goto LABEL_66;
      }

      v41 = v107;
      if (!v51)
      {
LABEL_63:
        a2 = v96;
        goto LABEL_70;
      }

      a2 = v96;
      if (v51 >= 15)
      {
LABEL_61:
        v58 = sub_2581373A4();
        v59 = *(v58 + 48);
        v60 = *(v58 + 52);
        swift_allocObject();
        sub_258137354();
        if (v51 >= 0x7FFFFFFF)
        {
          sub_2581373D4();
          v62 = swift_allocObject();
          *(v62 + 16) = 0;
          *(v62 + 24) = v51;
        }

        goto LABEL_70;
      }

      memset(__dst, 0, sizeof(__dst));
      v122 = v51;
      memcpy(__dst, v55, v51);
      v90 = v90 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v122 << 16)) << 32);
    }

LABEL_70:
    v61 = v111;
LABEL_71:
    __swift_destroy_boxed_opaque_existential_1(&v123);
    v63 = v98;
    sub_2581374D4();
    v123 = v41;
    v124 = v108;
    sub_258131514();
    v64 = v110;
    v65 = sub_258137484();
    v111 = v61;
    if (v61)
    {
      sub_258130930(v114, v106);
      sub_258130930(v112, v113);
      MEMORY[0x259C7A450](v95);
      (*v97)(v63, v99);
      (*v100)(v64, v103);
      v95 = v111;
      v111 = 0;
      v11 = v102;
      v15 = v101;
      v18 = v109;
      goto LABEL_4;
    }

    v67 = v65;
    v18 = v66;
    sub_258130930(v114, v106);
    sub_258130930(v112, v113);
    sub_2581306C8(v16, v109);
    (*v97)(v63, v99);
    (*v100)(v64, v103);
    v16 = v67;
    v19 = v17;
    v11 = v102;
    v15 = v101;
  }

  while (v14);
  while (1)
  {
LABEL_6:
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
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
      goto LABEL_97;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v19;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v18 >> 60 == 15)
  {
    if (!v95)
    {
      sub_258135910();
      swift_allocError();
    }

    swift_willThrow();
  }

  else
  {
    v73 = v105;
    v74 = v105[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
    v11 = v18;
    sub_258136154(&qword_27F920740, &qword_27F920738, &qword_258137DD8);
    v75 = v111;
    sub_2581372B4();
    if (v75)
    {
      MEMORY[0x259C7A450](v95);
      sub_2581306C8(v16, v18);
    }

    else
    {
      v76 = v16;
      v78 = v123;
      v77 = v124;
      v79 = v125;
      v80 = v73;
      v81 = v126;
      v11 = v127;
      v82 = v80[3];
      swift_bridgeObjectRetain_n();
      sub_258133344();
      if (v81 == sub_258137574() && v11 == v87)
      {
      }

      else
      {
        v88 = sub_258137664();

        swift_bridgeObjectRelease_n();
        if ((v88 & 1) == 0)
        {
          sub_2581359AC();
          swift_allocError();
          swift_willThrow();
          sub_2581306C8(v76, v18);

          MEMORY[0x259C7A450](v95);
          goto LABEL_84;
        }
      }

      v11 = sub_258135EBC(v78, v77, v79, v92);

      MEMORY[0x259C7A450](v95);
      sub_2581306C8(v76, v18);
    }
  }

LABEL_84:
  v85 = *MEMORY[0x277D85DE8];
  return v11;
}

void *TokenDecoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_258130930(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  return v0;
}

void *sub_2581354D8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
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
      sub_258130930(v6, v5);
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

    sub_258130930(v6, v5);
    *v3 = xmmword_258137D30;
    sub_258130930(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_258137364() && __OFSUB__(v6, sub_258137394()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2581373A4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_258137344();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_258135A6C(v6, v6 >> 32, a1);

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

    sub_258130930(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_258137D30;
    sub_258130930(0, 0xC000000000000000);
    sub_2581373C4();
    result = sub_258135A6C(v20[2], v20[3], a1);
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

_BYTE *sub_25813587C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_25813075C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258135BEC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258135C68(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_258135910()
{
  result = qword_27F920730;
  if (!qword_27F920730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920730);
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

unint64_t sub_2581359AC()
{
  result = qword_27F920748;
  if (!qword_27F920748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920748);
  }

  return result;
}

void *sub_258135A00(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_258135A6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_258137364();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_258137394();
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

  v12 = sub_258137384();
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

uint64_t sub_258135B20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_258137564();
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
    v5 = MEMORY[0x259C7A090](15, a1 >> 16);
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

uint64_t sub_258135B9C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_2581375D4();
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

uint64_t sub_258135BEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2581373A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258137354();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2581373D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258135C68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2581373A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258137354();
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

uint64_t sub_258135CEC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920778, &qword_258137DF0);
  v10 = sub_258136154(qword_27F920780, &qword_27F920778, &qword_258137DF0);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25813587C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_258135DC8(uint64_t result)
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
      v2 = sub_2581373A4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_258137374();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2581373D4();
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

uint64_t sub_258135E68()
{
  v0 = sub_2581375F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_258135EBC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  if (!a3)
  {
    v6 = 0xE800000000000000;
    v5 = 0x4449656C646E7562;
    v7 = a4;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0xE800000000000000;
    if (v5 != 0x4449656C646E7562)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v5 = 0x79726F6765746163;
  }

  else
  {
    v5 = 0x69616D6F44626577;
  }

  if (a3 == 1)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  v7 = a4;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v7 == 1)
  {
    v8 = 0x79726F6765746163;
  }

  else
  {
    v8 = 0x69616D6F44626577;
  }

  if (v7 == 1)
  {
    v9 = 0xEA00000000004449;
  }

  else
  {
    v9 = 0xE90000000000006ELL;
  }

  if (v5 != v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v6 == v9)
  {

    return a1;
  }

LABEL_21:
  v10 = sub_258137664();

  if ((v10 & 1) == 0)
  {
    sub_258136030();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_258136030()
{
  result = qword_27F920750;
  if (!qword_27F920750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920750);
  }

  return result;
}

uint64_t sub_258136084(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2581360CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_258135A00(sub_258136134, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_258136154(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2581361C4(uint64_t a1)
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

uint64_t sub_25813623C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_2581363A4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_2581365FC(uint64_t a1)
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

uint64_t sub_258136674(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2581367B0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_258136994()
{
  result = qword_27F920888;
  if (!qword_27F920888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920888);
  }

  return result;
}

unint64_t sub_2581369EC()
{
  result = qword_27F920890;
  if (!qword_27F920890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920890);
  }

  return result;
}

unint64_t sub_258136A44()
{
  result = qword_27F920898;
  if (!qword_27F920898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920898);
  }

  return result;
}

unint64_t sub_258136A9C()
{
  result = qword_27F9208A0;
  if (!qword_27F9208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208A0);
  }

  return result;
}

unint64_t sub_258136B20()
{
  result = qword_27F9208A8;
  if (!qword_27F9208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208A8);
  }

  return result;
}

unint64_t sub_258136B74()
{
  result = qword_27F9208B0;
  if (!qword_27F9208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208B0);
  }

  return result;
}

unint64_t sub_258136BC8()
{
  result = qword_27F9208B8[0];
  if (!qword_27F9208B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9208B8);
  }

  return result;
}

uint64_t sub_258136C5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_258136CEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TeamIdentifierRetrieverError.hashValue.getter()
{
  v1 = *v0;
  sub_2581376B4();
  MEMORY[0x259C7A210](v1);
  return sub_2581376D4();
}

uint64_t static TeamIdentifierRetriever.teamIdentifierFromCurrentConnection()()
{
  v0 = [objc_opt_self() currentConnection];
  v1 = v0;
  if (v0)
  {
    [v0 auditToken];
    v5 = v8;
    v6 = v7;

    v3 = v5;
    v2 = v6;
  }

  else
  {
    v2 = 0uLL;
    v3 = 0uLL;
  }

  v7 = v2;
  v8 = v3;
  v9 = v1 == 0;
  return sub_258137098(&v7);
}

uint64_t sub_258136FE4()
{
  v0 = [objc_opt_self() currentConnection];
  v1 = v0;
  if (v0)
  {
    [v0 auditToken];
    v5 = v8;
    v6 = v7;

    v3 = v5;
    v2 = v6;
  }

  else
  {
    v2 = 0uLL;
    v3 = 0uLL;
  }

  v7 = v2;
  v8 = v3;
  v9 = v1 == 0;
  return sub_258137098(&v7);
}

uint64_t sub_258137098(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sub_258137260();
    swift_allocError();
    *v2 = 1;
LABEL_7:
    swift_willThrow();
    return v1;
  }

  v3 = *(a1 + 16);
  *v11.val = *a1;
  *&v11.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(*MEMORY[0x277CBECE8], &v11);
  if (!v4)
  {
    sub_258137260();
    swift_allocError();
    *v6 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  v1 = 0x656C707041;
  if ((sub_258130A84() & 1) == 0)
  {
    v8 = sub_258130B04(0x656C707041);
    if (v9)
    {
      v1 = v8;
    }

    else
    {
      sub_258137260();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
    }
  }

  return v1;
}

unint64_t sub_2581371EC()
{
  result = qword_27F9209C0;
  if (!qword_27F9209C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9209C0);
  }

  return result;
}

unint64_t sub_258137260()
{
  result = qword_27F9209C8;
  if (!qword_27F9209C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9209C8);
  }

  return result;
}