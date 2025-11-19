uint64_t sub_24328FFA8()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D088);
  __swift_project_value_buffer(v0, qword_27ED6D088);
  return sub_24329C268();
}

uint64_t sub_243290018(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = 2;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0xC000000000000000;
  v4 = -1.0;
  if (a3)
  {
    v5 = result;
    v6 = log2f(result / a2);
    result = v5;
    v4 = v6 + -0.5;
  }

  v7 = roundf(v4);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 32) = -v7;
  result = sub_243290E88(result, v4);
  *(v3 + 24) = result;
  v8 = result + 7;
  if (__OFADD__(result, 7))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v8 = result + 14;
  }

  v14 = sub_243290F18(v8 >> 3);
  v15 = v9;
  sub_243290B78(&v14, 0);
  v10 = v14;
  v11 = v15;
  swift_beginAccess();
  v12 = *(v3 + 48);
  v13 = *(v3 + 56);
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  sub_243290718(v12, v13);
  return v3;
}

unint64_t sub_24329013C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = v3[4];
  if (v5 < 1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v6 = 1;
  do
  {
    v7 = v3[3];
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_28;
    }

    result = sub_2432987E4(a2, a3, v7);
    if (v4)
    {
      goto LABEL_26;
    }

    v9 = result >> 3;
    swift_beginAccess();
    v10 = v3[6];
    v11 = v3[7];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_36;
      }

      if (v9 < *(v10 + 16))
      {
        goto LABEL_30;
      }

      if (v9 >= *(v10 + 24))
      {
        goto LABEL_32;
      }

      v14 = sub_24329C128();
      if (!v14)
      {
        goto LABEL_38;
      }

      v15 = v14;
      v16 = sub_24329C158();
      v17 = v9 - v16;
      if (__OFSUB__(v9, v16))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v12)
    {
      if (v9 >= v10 >> 32 || v9 < v10)
      {
        goto LABEL_31;
      }

      v18 = sub_24329C128();
      if (!v18)
      {
        goto LABEL_37;
      }

      v15 = v18;
      v19 = sub_24329C158();
      v17 = v9 - v19;
      if (__OFSUB__(v9, v19))
      {
        goto LABEL_33;
      }

LABEL_21:
      v20 = *(v15 + v17);
      goto LABEL_22;
    }

    if (v9 >= BYTE6(v11))
    {
      goto LABEL_29;
    }

    v25 = v3[6];
    v26 = v11;
    v27 = BYTE2(v11);
    v28 = BYTE3(v11);
    v29 = BYTE4(v11);
    v30 = BYTE5(v11);
    v13 = *(&v25 + v9);
LABEL_22:
    sub_24329C228();
    result = swift_endAccess();
    if (v5 == v6)
    {
      goto LABEL_26;
    }
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
LABEL_26:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_243290390(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = v3[4];
  if (v33 < 1)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_30;
  }

  v5 = v3;
  swift_beginAccess();
  v6 = 1;
  do
  {
    v7 = v5[3];
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_35;
    }

    v8 = sub_2432987E4(a2, a3, v7);
    if (v4)
    {
      goto LABEL_33;
    }

    v10 = v5[3];
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v11 = v8;
    if (v10 < v8)
    {
      goto LABEL_29;
    }

    v12 = v8 >> 3;
    v14 = v5[6];
    v13 = v5[7];
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v12 < *(v14 + 16))
      {
        goto LABEL_36;
      }

      if (v12 >= *(v14 + 24))
      {
        goto LABEL_39;
      }

      v17 = v5[6];

      v18 = sub_24329C128();
      if (!v18)
      {
        goto LABEL_46;
      }

      v19 = v18;
      v20 = sub_24329C158();
      v21 = v12 - v20;
      if (__OFSUB__(v12, v20))
      {
        goto LABEL_41;
      }

LABEL_23:
      v16 = *(v19 + v21);
      sub_243290718(v14, v13);
      goto LABEL_24;
    }

    if (v15)
    {
      if (v12 >= v14 >> 32 || v12 < v14)
      {
        goto LABEL_38;
      }

      v22 = sub_24329C128();
      if (!v22)
      {
        goto LABEL_45;
      }

      v19 = v22;
      v23 = sub_24329C158();
      v21 = v12 - v23;
      if (__OFSUB__(v12, v23))
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    if (v12 >= BYTE6(v13))
    {
      goto LABEL_37;
    }

    v36 = v5[6];
    v37 = v13;
    v38 = BYTE2(v13);
    v39 = BYTE3(v13);
    v40 = BYTE4(v13);
    v41 = BYTE5(v13);
    v16 = *(&v36 + v12);
LABEL_24:
    v24 = (1 << (v11 & 7)) & v16;
    v9 = v24 != 0;
    if (!v24 || v33 == v6)
    {
      goto LABEL_33;
    }
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
LABEL_29:
  if (qword_27ED6D080 != -1)
  {
    goto LABEL_43;
  }

LABEL_30:
  v26 = sub_24329C278();
  __swift_project_value_buffer(v26, qword_27ED6D088);
  v27 = sub_24329C258();
  v28 = sub_24329C368();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24328F000, v27, v28, "bit index larger than bit size", v29, 2u);
    MEMORY[0x245D2E7E0](v29, -1, -1);
  }

  sub_243290964();
  swift_allocError();
  *v30 = 0;
  swift_willThrow();
LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_243290718(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t BloomFilter.__deallocating_deinit()
{
  sub_243290718(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t BloomFilterError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_24329082C()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_2432908A0()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

unint64_t sub_2432908E8()
{
  result = qword_27ED6D0B8;
  if (!qword_27ED6D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0B8);
  }

  return result;
}

unint64_t sub_243290964()
{
  result = qword_27ED6D0C0;
  if (!qword_27ED6D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BloomFilterError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *sub_243290B78(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_243290718(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_24329C870;
      sub_243290718(0, 0xC000000000000000);
      result = sub_243290DE0(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_243290718(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_243290718(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_24329C870;
  sub_243290718(0, 0xC000000000000000);
  sub_24329C1C8();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_24329C128();
  if (result)
  {
    v13 = result;
    v14 = sub_24329C158();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_24329C148();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_243290DE0(int *a1, int a2)
{
  result = sub_24329C1D8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_24329C128();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_24329C158();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_24329C148();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_243290E88(uint64_t result, float a2)
{
  v2 = roundf((result * a2) / -0.69315);
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 <= 256)
  {
    return 256;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_243290EF8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_243290F18(uint64_t result)
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
      v2 = sub_24329C168();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_24329C138();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24329C1F8();
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

uint64_t sub_243290FB8(uint64_t *a1)
{
  v115[5] = *MEMORY[0x277D85DE8];
  v108 = sub_24329C248();
  v2 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20]();
  v107 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  v5 = a1[1];
  v6 = v5 >> 62;
  v104 = *a1;
  v103 = v104 >> 32;
  v109 = BYTE6(v5);
  v106 = (v7 + 8);
  v114 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v111 = v5 >> 62;
  while (1)
  {
    v9 = a1[2];
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = *(v104 + 24);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = v109;
      if (v6)
      {
        v10 = v103;
      }
    }

    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (v11)
    {
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
      goto LABEL_122;
    }

    if (v12 < 1)
    {
      goto LABEL_111;
    }

    type metadata accessor for BloomFilter();
    v13 = swift_allocObject();
    sub_243290018(1, 1, 1);
    v14 = sub_243292204();
    if ((v14 & 0x100) != 0)
    {

      if (qword_27ED6D080 == -1)
      {
LABEL_66:
        v63 = sub_24329C278();
        __swift_project_value_buffer(v63, qword_27ED6D088);
        v64 = sub_24329C258();
        v65 = sub_24329C368();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_24328F000, v64, v65, "unable to parse bloom hash enumeration", v66, 2u);
          MEMORY[0x245D2E7E0](v66, -1, -1);
        }

        v67 = 2;
        goto LABEL_110;
      }

LABEL_122:
      swift_once();
      goto LABEL_66;
    }

    if ((v14 - 1) >= 3u)
    {
      break;
    }

    *(v13 + 16) = v14 - 1;
    v15 = sub_24329207C();
    if ((v15 & 0x100000000) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v72 = sub_24329C278();
      __swift_project_value_buffer(v72, qword_27ED6D088);
      v73 = sub_24329C258();
      v74 = sub_24329C368();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_24328F000, v73, v74, "unable to parse bloom filter size", v75, 2u);
        MEMORY[0x245D2E7E0](v75, -1, -1);
      }

      v67 = 3;
      goto LABEL_110;
    }

    *(v13 + 24) = v15;
    v16 = sub_24329207C();
    if ((v16 & 0x100000000) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v76 = sub_24329C278();
      __swift_project_value_buffer(v76, qword_27ED6D088);
      v77 = sub_24329C258();
      v78 = sub_24329C368();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_24328F000, v77, v78, "unable to parse number of hash functions", v79, 2u);
        MEMORY[0x245D2E7E0](v79, -1, -1);
      }

      v67 = 4;
      goto LABEL_110;
    }

    *(v13 + 32) = v16;
    v17 = sub_243292204();
    if ((v17 & 0x100) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v80 = sub_24329C278();
      __swift_project_value_buffer(v80, qword_27ED6D088);
      v81 = sub_24329C258();
      v82 = sub_24329C368();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_24328F000, v81, v82, "unable to parse layer number", v83, 2u);
        MEMORY[0x245D2E7E0](v83, -1, -1);
      }

      v67 = 5;
      goto LABEL_110;
    }

    *(v13 + 40) = v17;
    v18 = *(v13 + 24);
    v11 = __OFADD__(v18, 7);
    v19 = v18 + 7;
    if (v11)
    {
      goto LABEL_113;
    }

    v20 = a1[2];
    v21 = v20 + v19 / 8;
    if (__OFADD__(v20, v19 / 8))
    {
      goto LABEL_114;
    }

    v22 = *a1;
    v23 = a1[1];
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 == 2)
      {
        if (*(v22 + 24) < v21)
        {
          goto LABEL_89;
        }
      }

      else if (v21 > 0)
      {
LABEL_89:

        if (qword_27ED6D080 != -1)
        {
          swift_once();
        }

        v84 = sub_24329C278();
        __swift_project_value_buffer(v84, qword_27ED6D088);
        v85 = sub_24329C258();
        v86 = sub_24329C368();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_24328F000, v85, v86, "unable to parse bloom filter bytes", v87, 2u);
          MEMORY[0x245D2E7E0](v87, -1, -1);
        }

        v67 = 6;
        goto LABEL_110;
      }
    }

    else if (v24)
    {
      if (v22 >> 32 < v21)
      {
        goto LABEL_89;
      }
    }

    else if (BYTE6(v23) < v21)
    {
      goto LABEL_89;
    }

    if (v21 < v20)
    {
      goto LABEL_115;
    }

    v25 = sub_24329C218();
    v27 = v25;
    v28 = v26;
    v29 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_39;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v30 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        goto LABEL_119;
      }

      if (!v30)
      {
        goto LABEL_39;
      }
    }

    else if (v29)
    {
      v35 = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_118;
      }

      v30 = v35;
      if (!v35)
      {
LABEL_39:
        sub_243290718(v25, v26);
        v33 = v4;
        goto LABEL_43;
      }
    }

    else
    {
      v30 = BYTE6(v26);
      if (!BYTE6(v26))
      {
        goto LABEL_39;
      }
    }

    v110 = v8;
    if (v30 < 1)
    {
      v33 = v4;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
      v33 = swift_allocObject();
      v34 = _swift_stdlib_malloc_size(v33);
      v33[2] = v30;
      v33[3] = 2 * v34 - 64;
    }

    v36 = v107;
    v37 = sub_24329C1E8();
    sub_243290718(v27, v28);
    (*v106)(v36, v108);
    v38 = v37 == v30;
    v8 = v110;
    v4 = MEMORY[0x277D84F90];
    if (!v38)
    {
      goto LABEL_117;
    }

LABEL_43:
    a1[2] = v21;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0C8, &qword_24329CA18);
    v115[3] = v39;
    v115[4] = sub_243291F68();
    v115[0] = v33;
    v40 = __swift_project_boxed_opaque_existential_1(v115, v39);
    v41 = *v40;
    v42 = *(*v40 + 16);
    if (v42)
    {
      LODWORD(v6) = v111;
      if (v42 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v113 = v42;
        memcpy(__dst, (v41 + 32), v42);
        v48 = *__dst;
        v49 = v105 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v113 << 16)) << 32);
        v105 = v49;
      }

      else
      {
        v43 = sub_24329C168();
        v44 = *(v43 + 48);
        v45 = *(v43 + 52);
        swift_allocObject();
        v46 = sub_24329C118();
        v47 = v46;
        if (v42 >= 0x7FFFFFFF)
        {
          sub_24329C1F8();
          v48 = swift_allocObject();
          *(v48 + 16) = 0;
          *(v48 + 24) = v42;
          v49 = v47 | 0x8000000000000000;
        }

        else
        {
          v48 = v42 << 32;
          v49 = v46 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v48 = 0;
      v49 = 0xC000000000000000;
      LODWORD(v6) = v111;
    }

    __swift_destroy_boxed_opaque_existential_1(v115);
    swift_beginAccess();
    v50 = *(v13 + 48);
    v51 = *(v13 + 56);
    *(v13 + 48) = v48;
    *(v13 + 56) = v49;
    sub_243290718(v50, v51);
    v53 = *(v13 + 48);
    v52 = *(v13 + 56);
    v54 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      v55 = 0;
      if (v54 == 2)
      {
        v58 = v53 + 16;
        v57 = *(v53 + 16);
        v56 = *(v58 + 8);
        v11 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (v11)
        {
          goto LABEL_120;
        }
      }
    }

    else if (v54)
    {
      LODWORD(v55) = HIDWORD(v53) - v53;
      if (__OFSUB__(HIDWORD(v53), v53))
      {
        goto LABEL_121;
      }

      v55 = v55;
    }

    else
    {
      v55 = BYTE6(v52);
    }

    v59 = *(v13 + 24);
    v11 = __OFADD__(v59, 7);
    v60 = v59 + 7;
    if (v11)
    {
      goto LABEL_116;
    }

    if (v55 != v60 / 8)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v88 = sub_24329C278();
      __swift_project_value_buffer(v88, qword_27ED6D088);

      v89 = sub_24329C258();
      v90 = sub_24329C368();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 134218240;
        v92 = *(v13 + 48);
        v93 = *(v13 + 56);
        v94 = v93 >> 62;
        if ((v93 >> 62) > 1)
        {
          if (v94 == 2)
          {
            v97 = v92 + 16;
            v95 = *(v92 + 16);
            v96 = *(v97 + 8);
            v11 = __OFSUB__(v96, v95);
            v92 = v96 - v95;
            if (v11)
            {
              __break(1u);
              goto LABEL_105;
            }
          }

          else
          {
            v92 = 0;
          }
        }

        else
        {
          if (!v94)
          {
            v92 = BYTE6(v93);
            goto LABEL_108;
          }

LABEL_105:
          v11 = __OFSUB__(HIDWORD(v92), v92);
          LODWORD(v92) = HIDWORD(v92) - v92;
          if (v11)
          {
            __break(1u);
          }

          v92 = v92;
        }

LABEL_108:
        *(v91 + 4) = v92;
        *(v91 + 12) = 2048;
        *(v91 + 14) = *(v13 + 24);
        v98 = v91;

        _os_log_impl(&dword_24328F000, v89, v90, "filter size (%ld) doesn't match encoded filter size (%ld", v98, 0x16u);
        MEMORY[0x245D2E7E0](v98, -1, -1);
      }

      else
      {
      }

      v67 = 1;
      goto LABEL_110;
    }

    MEMORY[0x245D2E330](v61);
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24329C328();
    }

    sub_24329C348();

    v8 = v114;
  }

  if (qword_27ED6D080 != -1)
  {
    swift_once();
  }

  v68 = sub_24329C278();
  __swift_project_value_buffer(v68, qword_27ED6D088);
  v69 = sub_24329C258();
  v70 = sub_24329C368();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_24328F000, v69, v70, "unsupported hash enumeration", v71, 2u);
    MEMORY[0x245D2E7E0](v71, -1, -1);
  }

  v67 = 7;
LABEL_110:
  sub_243290964();
  swift_allocError();
  *v99 = v67;
  swift_willThrow();

LABEL_111:
  v100 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_243291B8C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v33 = MEMORY[0x277CC9318];
  v34 = MEMORY[0x277CC9300];
  v30 = a1;
  v31 = a2;
  v4 = __swift_project_boxed_opaque_existential_1(&v30, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v28, 0, 14);
      sub_243291E48(v3, v2);
      v8 = v28;
      v9 = v28;
      goto LABEL_23;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_243291E48(v3, v2);
    v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_24329C128();
    if (v3)
    {
      v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = sub_24329C158();
      v5 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v3 += v5;
    }

    v13 = __OFSUB__(v11, v10);
    v14 = v11 - v10;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v28[0] = *v4;
    LOWORD(v28[1]) = v6;
    BYTE2(v28[1]) = BYTE2(v6);
    BYTE3(v28[1]) = BYTE3(v6);
    BYTE4(v28[1]) = BYTE4(v6);
    BYTE5(v28[1]) = BYTE5(v6);
    sub_243291E48(v3, v2);
    v8 = v28;
    v9 = v28 + BYTE6(v6);
    goto LABEL_23;
  }

  v15 = v5;
  v16 = v5 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_30;
  }

  sub_243291E48(v3, v2);
  v3 = sub_24329C128();
  if (v3)
  {
    v17 = sub_24329C158();
    if (!__OFSUB__(v15, v17))
    {
      v3 += v15 - v17;
      goto LABEL_15;
    }

LABEL_31:
    __break(1u);
  }

LABEL_15:
  v18 = sub_24329C148();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v3);
  if (v3)
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  v8 = v3;
LABEL_23:
  sub_243296E9C(v8, v9, v29);
  v21 = v29[0];
  v22 = v29[1];
  __swift_destroy_boxed_opaque_existential_1(&v30);
  v23 = 0;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v23 = *(v21 + 16);
    }
  }

  else if (v24)
  {
    v23 = v21;
  }

  v30 = v21;
  v31 = v22;
  v32 = v23;
  v25 = sub_243290FB8(&v30);
  sub_243290718(v30, v31);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243291E48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_243291F68()
{
  result = qword_27ED6D0D0;
  if (!qword_27ED6D0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6D0C8, &qword_24329CA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0D0);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_24329207C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0);
  sub_24329C108();
  sub_243290718(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return v7 << 32;
}

uint64_t sub_243292204()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0);
  sub_24329C108();
  sub_243290718(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return (v7 << 8);
}

uint64_t sub_243292384()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0);
  sub_24329C108();
  sub_243290718(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return (v7 << 16);
}

CascadingFilters::HashAlgorithmEnum_optional __swiftcall HashAlgorithmEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_243292528()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D0E0);
  __swift_project_value_buffer(v0, qword_27ED6D0E0);
  return sub_24329C268();
}

uint64_t sub_243292598()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432925DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24329268C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_2432926E0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_243292794()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (v4 >= 1)
    {

      v5 = 0;
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D2E3A0](v6, v3);
        }

        else
        {
          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = *(v7 + 24);

        v10 = __OFADD__(v5, v9);
        v5 += v9;
        if (v10)
        {
          break;
        }

        if (v4 == ++v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_12:
      result = sub_24329C3E8();
      v4 = result;
      if (!result)
      {
        return 0;
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

uint64_t sub_243292888()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432928CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24329297C()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432929C0(char a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243292A70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_243291E48(v4, v5);
}

uint64_t sub_243292AC8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243291E48(v2, v3);
  return sub_243290718(v5, v6);
}

uint64_t sub_243292B44()
{
  v1 = v0 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt;
  swift_beginAccess();
  v2 = *v1;
  sub_243291E48(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_243292BA0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_243290718(v6, v7);
}

uint64_t sub_243292C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_243292CC8()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_243292D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_243292DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v92[3] = MEMORY[0x277CC9318];
  v92[4] = MEMORY[0x277CC9300];
  v92[0] = a1;
  v92[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_1(v92, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v90, 0, 14);
      sub_243291E48(v5, v4);
      v10 = v90;
      v11 = v90;
      goto LABEL_23;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    sub_243291E48(v5, v4);
    v4 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = sub_24329C128();
    if (v5)
    {
      v4 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = sub_24329C158();
      v7 = v12 - v14;
      if (__OFSUB__(v12, v14))
      {
        __break(1u);
        goto LABEL_99;
      }

      v5 += v7;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v90[0] = *v6;
    LOWORD(v90[1]) = v8;
    BYTE2(v90[1]) = BYTE2(v8);
    BYTE3(v90[1]) = BYTE3(v8);
    BYTE4(v90[1]) = BYTE4(v8);
    BYTE5(v90[1]) = BYTE5(v8);
    sub_243291E48(v5, v4);
    v10 = v90;
    v11 = v90 + BYTE6(v8);
    goto LABEL_23;
  }

  v17 = v7;
  v18 = v7 >> 32;
  v16 = v18 - v17;
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_97;
  }

  sub_243291E48(v5, v4);
  v5 = sub_24329C128();
  if (!v5)
  {
    goto LABEL_15;
  }

  v19 = sub_24329C158();
  if (__OFSUB__(v17, v19))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v5 += v17 - v19;
LABEL_15:
  v20 = sub_24329C148();
  if (v20 >= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  v22 = (v21 + v5);
  if (v5)
  {
    v11 = v22;
  }

  else
  {
    v11 = 0;
  }

  v10 = v5;
LABEL_23:
  sub_243296E9C(v10, v11, v91);
  v23 = v91[0];
  v24 = v91[1];
  __swift_destroy_boxed_opaque_existential_1(v92);
  v25 = 0;
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v25 = *(v23 + 16);
    }
  }

  else if (v26)
  {
    v25 = v23;
  }

  v93 = v23;
  v94 = v24;
  v95 = v25;
  v27 = sub_243292384();
  if ((v27 & 0x10000) != 0)
  {
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v37 = sub_24329C278();
    __swift_project_value_buffer(v37, qword_27ED6D0E0);
    v38 = sub_24329C258();
    v39 = sub_24329C368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24328F000, v38, v39, "unable to parse filter version", v40, 2u);
      MEMORY[0x245D2E7E0](v40, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 2;
    goto LABEL_94;
  }

  if (v27 != 2)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_45:
      v43 = sub_24329C278();
      __swift_project_value_buffer(v43, qword_27ED6D0E0);
      v44 = sub_24329C258();
      v45 = sub_24329C368();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_24328F000, v44, v45, "unsupported filter version", v46, 2u);
        MEMORY[0x245D2E7E0](v46, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 7;
      goto LABEL_94;
    }

LABEL_97:
    swift_once();
    goto LABEL_45;
  }

  v28 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  swift_beginAccess();
  *(v3 + v28) = 2;
  v29 = sub_243292204();
  if ((v29 & 0x100) != 0)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_49:
      v47 = sub_24329C278();
      __swift_project_value_buffer(v47, qword_27ED6D0E0);
      v48 = sub_24329C258();
      v49 = sub_24329C368();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_24328F000, v48, v49, "unable to parse filter inverted indicator", v50, 2u);
        MEMORY[0x245D2E7E0](v50, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 3;
      goto LABEL_94;
    }

LABEL_100:
    swift_once();
    goto LABEL_49;
  }

  if (v29 == 1)
  {
    v30 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
    swift_beginAccess();
    *(v3 + v30) = 1;
  }

  v31 = sub_243292204();
  if ((v31 & 0x100) != 0)
  {
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v51 = sub_24329C278();
    __swift_project_value_buffer(v51, qword_27ED6D0E0);
    v52 = sub_24329C258();
    v53 = sub_24329C368();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_24328F000, v52, v53, "unable to parse salt length", v54, 2u);
      MEMORY[0x245D2E7E0](v54, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 4;
    goto LABEL_94;
  }

  if (v31 - 1 >= 0x20)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_58:
      v55 = sub_24329C278();
      __swift_project_value_buffer(v55, qword_27ED6D0E0);
      v56 = sub_24329C258();
      v57 = sub_24329C368();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_24328F000, v56, v57, "invalid salt length", v58, 2u);
        MEMORY[0x245D2E7E0](v58, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 1;
      goto LABEL_94;
    }

LABEL_102:
    swift_once();
    goto LABEL_58;
  }

  v32 = v95 + v31;
  if (__OFADD__(v95, v31))
  {
    __break(1u);
    goto LABEL_102;
  }

  v33 = v93;
  v34 = v94;
  v35 = v94 >> 62;
  if ((v94 >> 62) <= 1)
  {
    if (v35)
    {
      v36 = v93 >> 32;
    }

    else
    {
      v36 = BYTE6(v94);
    }

LABEL_64:
    if (v36 >= v32)
    {
      goto LABEL_65;
    }

LABEL_70:
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v69 = sub_24329C278();
    __swift_project_value_buffer(v69, qword_27ED6D0E0);
    v70 = sub_24329C258();
    v71 = sub_24329C368();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_24328F000, v70, v71, "unable to parse salt", v72, 2u);
      MEMORY[0x245D2E7E0](v72, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 5;
    goto LABEL_94;
  }

  if (v35 == 2)
  {
    v36 = *(v93 + 24);
    goto LABEL_64;
  }

  if (v32 > 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  if (v32 < v95)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v59 = sub_24329C218();
  v61 = sub_243296418(v59, v60);
  v95 = v32;
  v62 = sub_24329721C(v61);
  v64 = v63;

  v65 = (v3 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  *v65 = v62;
  v65[1] = v64;
  sub_243290718(v66, v67);
  if (v35 > 1)
  {
    v68 = 0;
    if (v35 == 2)
    {
      v68 = *(v33 + 24);
    }
  }

  else if (v35)
  {
    v68 = v33 >> 32;
  }

  else
  {
    v68 = BYTE6(v34);
  }

  v15 = __OFSUB__(v68, v32);
  v73 = v68 - v32;
  if (v15)
  {
    goto LABEL_104;
  }

  v74 = v32 + v73;
  if (__OFADD__(v32, v73))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      if (v74 <= 0)
      {
        goto LABEL_87;
      }

LABEL_90:
      if (qword_27ED6D0A0 == -1)
      {
LABEL_91:
        v84 = sub_24329C278();
        __swift_project_value_buffer(v84, qword_27ED6D0E0);
        v85 = sub_24329C258();
        v86 = sub_24329C368();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_24328F000, v85, v86, "unable to parse filters", v87, 2u);
          MEMORY[0x245D2E7E0](v87, -1, -1);
        }

        sub_243296594();
        swift_allocError();
        v42 = 6;
LABEL_94:
        *v41 = v42;
        swift_willThrow();
        v82 = v93;
        v83 = v94;
        goto LABEL_95;
      }

LABEL_106:
      swift_once();
      goto LABEL_91;
    }

    v75 = *(v33 + 24);
  }

  else if (v35)
  {
    v75 = v33 >> 32;
  }

  else
  {
    v75 = BYTE6(v34);
  }

  if (v75 < v74)
  {
    goto LABEL_90;
  }

LABEL_87:
  if (v74 < v32)
  {
    __break(1u);
  }

  v76 = sub_24329C218();
  v78 = sub_243296418(v76, v77);
  v79 = sub_24329721C(v78);
  v81 = v80;

  sub_243293878(v79, v81);
  sub_243290718(v33, v34);
  v82 = v79;
  v83 = v81;
LABEL_95:
  result = sub_243290718(v82, v83);
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243293878(uint64_t a1, unint64_t a2)
{
  result = sub_243291B8C(a1, a2);
  if (v3)
  {
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v7 = *(v2 + v6);
  *(v2 + v6) = v5;

  v8 = *(v2 + v6);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v12 = *(v2 + v6);
    }

    if (sub_24329C3E8())
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v9 = *(v2 + v6);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v18 = *(v2 + v6);
      }

      v10 = sub_24329C3E8();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
    result = swift_beginAccess();
    *(v2 + v11) = v10;
    return result;
  }

  if (qword_27ED6D0A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24329C278();
  __swift_project_value_buffer(v13, qword_27ED6D0E0);
  v14 = sub_24329C258();
  v15 = sub_24329C368();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24328F000, v14, v15, "no filters found", v16, 2u);
    MEMORY[0x245D2E7E0](v16, -1, -1);
  }

  sub_243296594();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t sub_243293A40(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  type metadata accessor for IndexGenerator();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  sub_243291E48(a1, a2);
  v9 = sub_24329C338();
  *(v9 + 16) = 32;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(inited + 40) = v9;
  v27 = inited;
  *(inited + 48) = 0;
  v10 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 >> 62)
  {
LABEL_21:
    v12 = sub_24329C3E8();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);

  swift_beginAccess();
  if (v12)
  {
    v14 = 0;
    v26 = v11 & 0xC000000000000001;
    v24 = v2;
    v25 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v2 = MEMORY[0x245D2E3A0](v14, v11);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          sub_243290718(v4, v11);

          swift_setDeallocating();
          sub_243290718(v27[2], v27[3]);
          v19 = v27[5];

          return v20 & 1;
        }
      }

      else
      {
        if (v14 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v2 = *(v11 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }
      }

      v16 = v11;
      v4 = *v13;
      v11 = v13[1];
      sub_243291E48(*v13, v11);
      v17 = sub_243290390(v27, v4, v11);
      if (v5)
      {
        goto LABEL_15;
      }

      v18 = v17;

      sub_243290718(v4, v11);
      if (!v18)
      {

        LOBYTE(v12) = v14;
        v2 = v24;
        goto LABEL_18;
      }

      ++v14;
      v11 = v16;
      if (v15 == v12)
      {
        v2 = v24;
        break;
      }
    }
  }

LABEL_18:
  swift_setDeallocating();
  sub_243290718(v27[2], v27[3]);
  v21 = v27[5];

  v22 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  v20 = v12 ^ *(v2 + v22);
  return v20 & 1;
}

uint64_t sub_243293CC8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  type metadata accessor for IndexGenerator();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  sub_243291E48(a1, a2);
  v8 = sub_24329C338();
  *(v8 + 16) = 32;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(inited + 40) = v8;
  v27 = inited;
  *(inited + 48) = 0;
  v9 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (v10 >> 62)
  {
LABEL_22:
    v11 = sub_24329C3E8();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v2;
  v12 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);

  swift_beginAccess();
  if (v11)
  {
    v13 = 0;
    v25 = v10 & 0xFFFFFFFFFFFFFF8;
    v26 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v2 = MEMORY[0x245D2E3A0](v13, v10);
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v2 = *(v10 + 8 * v13 + 32);

        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      v15 = v10;
      v17 = *v12;
      v16 = v12[1];
      sub_243291E48(*v12, v16);
      v18 = sub_243290390(v27, v17, v16);
      if (v4)
      {

        sub_243290718(v17, v16);
        swift_setDeallocating();
        sub_243290718(v27[2], v27[3]);
        v20 = v27[5];

        return v21 & 1;
      }

      v19 = v18;
      sub_243290718(v17, v16);
      if (!v19)
      {

        goto LABEL_19;
      }

      ++v13;
      v10 = v15;
      if (v14 == v11)
      {
        LOBYTE(v13) = v11;
        goto LABEL_18;
      }
    }
  }

  LOBYTE(v13) = 0;
LABEL_18:

LABEL_19:
  v22 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  v21 = v13 ^ *(v24 + v22);
  return v21 & 1;
}

uint64_t sub_243293F58(uint64_t result, uint64_t a2)
{
  v149 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_49:
    v43 = *(a2 + 16);
    if (!v43)
    {
      goto LABEL_112;
    }

    v44 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
    v129 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
    v45 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
    v46 = a2 + 32;
    swift_beginAccess();
    v119 = v45;
    swift_beginAccess();
    v47 = 0;
    v117 = a2 + 32;
    type metadata accessor for IndexGenerator();
    v106 = v44;
    v123 = v2;
    v107 = v43;
    while (1)
    {
      v127 = v47;
      v48 = (v46 + 16 * v47);
      v12 = *v48;
      v11 = v48[1];
      inited = swift_initStackObject();
      *(inited + 16) = v12;
      *(inited + 24) = v11;
      *(inited + 32) = 0;
      sub_243291E48(v12, v11);
      sub_243291E48(v12, v11);
      v50 = sub_24329C338();
      *(v50 + 16) = 32;
      *(v50 + 32) = 0u;
      *(v50 + 48) = 0u;
      *(inited + 40) = v50;
      *(inited + 48) = 0;
      v51 = *(v2 + v44);
      if (v51 >> 62)
      {
        if (v51 < 0)
        {
          v75 = *(v2 + v44);
        }

        v52 = sub_24329C3E8();
        if (v52)
        {
LABEL_53:
          v120 = v11;
          v104 = v52;
          v53 = v51 & 0xC000000000000001;

          swift_beginAccess();
          v54 = 0;
          v109 = v51 + 32;
          v111 = v51 & 0xFFFFFFFFFFFFFF8;
          v131 = inited;
          v125 = v12;
          v121 = v51;
          v102 = v51 & 0xC000000000000001;
          while (2)
          {
            if (v53)
            {
              v13 = MEMORY[0x245D2E3A0](v54, v51);
              v55 = v54 + 1;
              if (!__OFADD__(v54, 1))
              {
LABEL_60:
                v133 = v13[4];
                if (v133 < 1)
                {
                  goto LABEL_145;
                }

                v113 = v55;
                v115 = v54;
                v134 = *v129;
                v135 = v129[1];
                sub_243291E48(*v129, v135);
                swift_beginAccess();
                v56 = 1;
                v57 = v136;
LABEL_62:
                v58 = v13[3];
                if ((v58 & 0x8000000000000000) != 0)
                {
                  goto LABEL_127;
                }

                if (HIDWORD(v58))
                {
                  goto LABEL_128;
                }

                v59 = sub_2432987E4(v134, v135, v58);
                if (v57)
                {
                  sub_243290718(v125, v120);

                  goto LABEL_110;
                }

                v60 = v13[3];
                if ((v60 & 0x8000000000000000) != 0 || (v61 = v59, v60 < v59))
                {

                  if (qword_27ED6D080 == -1)
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_149;
                }

                v62 = v59 >> 3;
                v64 = v13[6];
                v63 = v13[7];
                v65 = v63 >> 62;
                if ((v63 >> 62) > 1)
                {
                  if (v65 != 2)
                  {
                    goto LABEL_153;
                  }

                  if (v62 < *(v64 + 16))
                  {
                    goto LABEL_136;
                  }

                  if (v62 >= *(v64 + 24))
                  {
                    goto LABEL_139;
                  }

                  v67 = v13[6];

                  v68 = sub_24329C128();
                  if (!v68)
                  {
                    goto LABEL_155;
                  }

                  v69 = v68;
                  v70 = sub_24329C158();
                  v71 = v62 - v70;
                  if (__OFSUB__(v62, v70))
                  {
                    goto LABEL_141;
                  }
                }

                else
                {
                  if (!v65)
                  {
                    if (v62 >= BYTE6(v63))
                    {
                      goto LABEL_137;
                    }

                    v137 = v13[6];
                    v138 = v63;
                    v139 = BYTE2(v63);
                    v140 = BYTE3(v63);
                    v141 = BYTE4(v63);
                    v142 = BYTE5(v63);
                    v66 = *(&v137 + v62);
                    goto LABEL_83;
                  }

                  if (v62 >= v64 >> 32 || v62 < v64)
                  {
                    goto LABEL_138;
                  }

                  v72 = sub_24329C128();
                  if (!v72)
                  {
                    goto LABEL_154;
                  }

                  v69 = v72;
                  v73 = sub_24329C158();
                  v71 = v62 - v73;
                  if (__OFSUB__(v62, v73))
                  {
                    goto LABEL_140;
                  }
                }

                v66 = *(v69 + v71);
                sub_243290718(v64, v63);
                inited = v131;
                v57 = 0;
LABEL_83:
                if (((1 << (v61 & 7)) & v66) == 0)
                {
                  v136 = v57;

                  sub_243290718(v134, v135);
                  v11 = v120;
                  v12 = v125;
                  v44 = v106;
                  v43 = v107;
                  v74 = v115;
LABEL_91:

                  goto LABEL_96;
                }

                if (v133 == v56)
                {
                  v136 = v57;

                  sub_243290718(v134, v135);
                  v54 = v113;
                  v12 = v125;
                  v51 = v121;
                  v53 = v102;
                  if (v113 != v104)
                  {
                    continue;
                  }

                  v74 = v104;
                  v43 = v107;
                  v44 = v106;
                  v11 = v120;
                  goto LABEL_91;
                }

                v41 = __OFADD__(v56++, 1);
                if (v41)
                {
                  goto LABEL_129;
                }

                goto LABEL_62;
              }
            }

            else
            {
              if (v54 >= *(v111 + 16))
              {
                __break(1u);
LABEL_149:
                swift_once();
LABEL_107:
                v83 = sub_24329C278();
                __swift_project_value_buffer(v83, qword_27ED6D088);
                v84 = sub_24329C258();
                v85 = sub_24329C368();
                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  *v86 = 0;
                  _os_log_impl(&dword_24328F000, v84, v85, "bit index larger than bit size", v86, 2u);
                  MEMORY[0x245D2E7E0](v86, -1, -1);
                }

                sub_243290964();
                swift_allocError();
                *v87 = 0;
                swift_willThrow();
                sub_243290718(v125, v120);

LABEL_110:
                sub_243290718(v134, v135);
                swift_setDeallocating();
                sub_243290718(*(inited + 16), *(inited + 24));
                v88 = *(inited + 40);
                goto LABEL_111;
              }

              v13 = *(v109 + 8 * v54);

              v55 = v54 + 1;
              if (!__OFADD__(v54, 1))
              {
                goto LABEL_60;
              }
            }

            break;
          }

LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          swift_once();
          goto LABEL_101;
        }
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_53;
        }
      }

      v74 = 0;
LABEL_96:
      swift_setDeallocating();
      sub_243290718(*(inited + 16), *(inited + 24));
      v76 = *(inited + 40);

      if ((v74 & 1) != *(v123 + v119))
      {
        if (qword_27ED6D0A0 != -1)
        {
          swift_once();
        }

        v96 = sub_24329C278();
        __swift_project_value_buffer(v96, qword_27ED6D0E0);
        v97 = sub_24329C258();
        v98 = sub_24329C368();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_24328F000, v97, v98, "verify failed: false positive", v99, 2u);
          MEMORY[0x245D2E7E0](v99, -1, -1);
        }

        sub_243296594();
        swift_allocError();
        v95 = 10;
        goto LABEL_123;
      }

      v47 = v127 + 1;
      result = sub_243290718(v12, v11);
      v2 = v123;
      v46 = v117;
      if (v127 + 1 == v43)
      {
        goto LABEL_112;
      }
    }
  }

  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  v126 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  v5 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  v6 = result + 32;
  swift_beginAccess();
  v118 = v5;
  swift_beginAccess();
  v7 = type metadata accessor for IndexGenerator();
  v8 = 0;
  v9 = MEMORY[0x277D84B78];
  v122 = v2;
  v103 = v4;
  v105 = v3;
  v112 = v7;
  v114 = v6;
  while (1)
  {
    v124 = v8;
    v10 = (v6 + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = swift_initStackObject();
    v13[2] = v12;
    v13[3] = v11;
    *(v13 + 8) = 0;
    sub_243291E48(v12, v11);
    sub_243291E48(v12, v11);
    v14 = sub_24329C338();
    *(v14 + 16) = 32;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    v13[5] = v14;
    *(v13 + 48) = 0;
    v15 = *(v2 + v4);
    v16 = v9;
    v128 = v15;
    if (v15 >> 62)
    {
      break;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_44:
    swift_setDeallocating();
    sub_243290718(v13[2], v13[3]);
    v42 = v13[5];

    if ((v17 & 1) == *(v2 + v118))
    {
      if (qword_27ED6D0A0 != -1)
      {
        swift_once();
      }

      v90 = sub_24329C278();
      __swift_project_value_buffer(v90, qword_27ED6D0E0);
      v91 = sub_24329C258();
      v92 = sub_24329C368();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_24328F000, v91, v92, "verify failed: false negative", v93, 2u);
        MEMORY[0x245D2E7E0](v93, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v95 = 9;
LABEL_123:
      *v94 = v95;
      swift_willThrow();
      result = sub_243290718(v12, v11);
      goto LABEL_112;
    }

    v9 = v16;
    v8 = v124 + 1;
    sub_243290718(v12, v11);
    result = v112;
    v6 = v114;
    if (v124 + 1 == v3)
    {
      goto LABEL_49;
    }
  }

  v17 = sub_24329C3E8();
  v15 = v128;
  if (!v17)
  {
    goto LABEL_44;
  }

LABEL_5:
  v120 = v11;
  v18 = v15 & 0xC000000000000001;

  swift_beginAccess();
  v19 = v128;
  v20 = 0;
  v130 = v13;
  v121 = v12;
  v100 = v18;
  v101 = v17;
LABEL_6:
  if (v18)
  {
    v21 = MEMORY[0x245D2E3A0](v20, v19);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_142;
    }
  }

  else
  {
    if (v20 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_146;
    }

    v21 = *(v128 + 32 + 8 * v20);

    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_142;
    }
  }

  v132 = v21[4];
  if (v132 < 1)
  {
    goto LABEL_143;
  }

  v108 = v22;
  v110 = v20;
  v134 = *v126;
  v135 = v126[1];
  sub_243291E48(*v126, v135);
  swift_beginAccess();
  v23 = 1;
  v24 = v136;
  while (1)
  {
    v25 = v21[3];
    if ((v25 & 0x8000000000000000) != 0)
    {
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
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (HIDWORD(v25))
    {
      goto LABEL_125;
    }

    v26 = sub_2432987E4(v134, v135, v25);
    v136 = v24;
    if (v24)
    {
      sub_243290718(v121, v120);

      goto LABEL_104;
    }

    v27 = v21[3];
    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    v28 = v26;
    if (v27 < v26)
    {
      break;
    }

    v29 = v16;
    v30 = v26 >> 3;
    v32 = v21[6];
    v31 = v21[7];
    v33 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v33 != 2)
      {
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
      }

      if (v30 < *(v32 + 16))
      {
        goto LABEL_130;
      }

      if (v30 >= *(v32 + 24))
      {
        goto LABEL_133;
      }

      v35 = v21[6];

      v36 = sub_24329C128();
      if (!v36)
      {
        goto LABEL_152;
      }

      v13 = v36;
      v37 = sub_24329C158();
      v38 = v30 - v37;
      if (__OFSUB__(v30, v37))
      {
        goto LABEL_135;
      }

LABEL_34:
      v34 = *(v13 + v38);
      sub_243290718(v32, v31);
      v13 = v130;
      goto LABEL_35;
    }

    if (v33)
    {
      if (v30 >= v32 >> 32 || v30 < v32)
      {
        goto LABEL_132;
      }

      v39 = sub_24329C128();
      if (!v39)
      {
        goto LABEL_151;
      }

      v13 = v39;
      v40 = sub_24329C158();
      v38 = v30 - v40;
      if (__OFSUB__(v30, v40))
      {
        goto LABEL_134;
      }

      goto LABEL_34;
    }

    if (v30 >= BYTE6(v31))
    {
      goto LABEL_131;
    }

    v143 = v21[6];
    v144 = v31;
    v145 = BYTE2(v31);
    v146 = BYTE3(v31);
    v147 = BYTE4(v31);
    v148 = BYTE5(v31);
    v34 = *(&v143 + v30);
LABEL_35:
    v16 = v29;
    if (((1 << (v28 & 7)) & v34) == 0)
    {

      sub_243290718(v134, v135);
      v12 = v121;
      v2 = v122;
      v11 = v120;
      v4 = v103;
      v3 = v105;
      LOBYTE(v17) = v110;
      goto LABEL_43;
    }

    v24 = 0;
    if (v132 == v23)
    {

      sub_243290718(v134, v135);
      v20 = v108;
      LOBYTE(v17) = v101;
      v12 = v121;
      v2 = v122;
      v19 = v128;
      v18 = v100;
      if (v108 == v101)
      {
        v4 = v103;
        v3 = v105;
        v11 = v120;
LABEL_43:

        goto LABEL_44;
      }

      goto LABEL_6;
    }

    v41 = __OFADD__(v23++, 1);
    if (v41)
    {
      goto LABEL_126;
    }
  }

  if (qword_27ED6D080 != -1)
  {
    goto LABEL_147;
  }

LABEL_101:
  v77 = sub_24329C278();
  __swift_project_value_buffer(v77, qword_27ED6D088);
  v78 = sub_24329C258();
  v79 = sub_24329C368();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_24328F000, v78, v79, "bit index larger than bit size", v80, 2u);
    MEMORY[0x245D2E7E0](v80, -1, -1);
  }

  sub_243290964();
  swift_allocError();
  *v81 = 0;
  swift_willThrow();
  sub_243290718(v121, v120);

LABEL_104:
  sub_243290718(v134, v135);
  swift_setDeallocating();
  sub_243290718(v13[2], v13[3]);
  v82 = v13[5];
LABEL_111:

LABEL_112:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_243294D68()
{
  v2 = v0;
  if (qword_27ED6D0A0 == -1)
  {
    goto LABEL_2;
  }

LABEL_67:
  swift_once();
LABEL_2:
  v3 = sub_24329C278();
  v4 = __swift_project_value_buffer(v3, qword_27ED6D0E0);
  v5 = sub_24329C258();
  v6 = sub_24329C358();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24328F000, v5, v6, "Cascading bloom filter details:", v7, 2u);
    MEMORY[0x245D2E7E0](v7, -1, -1);
  }

  v2 = v2;
  v8 = sub_24329C258();
  v9 = sub_24329C358();

  v10 = &loc_24329C000;
  v11 = 0x27ED6D000uLL;
  v100 = v4;
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_18;
  }

  v12 = swift_slowAlloc();
  v101 = swift_slowAlloc();
  v103[0] = v101;
  *v12 = 136315138;
  v13 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v1 = *(v2 + v13);
  if (v1 >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    while (1)
    {
      v21 = 7;
LABEL_15:
      v22 = v21 / 8;
      v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v1 setNumberStyle_];
      v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v24 = [v1 stringFromNumber_];

      if (!v24)
      {
        goto LABEL_79;
      }

      v25 = sub_24329C2E8();
      v27 = v26;

      v28 = sub_243296944(v25, v27, v103);

      *(v12 + 4) = v28;
      _os_log_impl(&dword_24328F000, v8, v9, "Size: %s bytes", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x245D2E7E0](v101, -1, -1);
      MEMORY[0x245D2E7E0](v12, -1, -1);

      v4 = v100;
      v10 = &loc_24329C000;
LABEL_18:
      v29 = v2;
      v30 = sub_24329C258();
      v31 = sub_24329C358();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        v33 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
        swift_beginAccess();
        *(v32 + 4) = *(v29 + v33);

        _os_log_impl(&dword_24328F000, v30, v31, "Version: %ld", v32, 0xCu);
        MEMORY[0x245D2E7E0](v32, -1, -1);
      }

      else
      {

        v30 = v29;
      }

      v34 = v29;
      v35 = sub_24329C258();
      v36 = sub_24329C358();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 67109120;
        v38 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
        swift_beginAccess();
        *(v37 + 4) = *(&v34->isa + v38);

        _os_log_impl(&dword_24328F000, v35, v36, "Inverted: %{BOOL}d", v37, 8u);
        MEMORY[0x245D2E7E0](v37, -1, -1);
      }

      else
      {

        v35 = v34;
      }

      v39 = v34;
      v40 = sub_24329C258();
      v41 = sub_24329C358();
      if (os_log_type_enabled(v40, v41))
      {
        break;
      }

      v40 = v39;
LABEL_37:

      v50 = v39;
      v12 = sub_24329C258();
      v51 = sub_24329C358();

      if (os_log_type_enabled(v12, v51))
      {
        v1 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v103[0] = v101;
        *v1 = v10[325];
        v52 = (v50 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
        swift_beginAccess();
        v54 = *v52;
        v53 = v52[1];
        sub_243291E48(v54, v53);
        sub_2432965E8(v54, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D130, &qword_24329CA60);
        sub_243297E74(&qword_27ED6D138, &qword_27ED6D130, &qword_24329CA60);
        v55 = sub_24329C2D8();
        v57 = v56;
        v58 = v54;
        v4 = v100;
        sub_243290718(v58, v53);

        v59 = v55;
        v11 = 0x27ED6D000uLL;
        v60 = sub_243296944(v59, v57, v103);

        *(v1 + 4) = v60;
        _os_log_impl(&dword_24328F000, v12, v51, "Salt (hex): %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x245D2E7E0](v101, -1, -1);
        MEMORY[0x245D2E7E0](v1, -1, -1);
      }

      v61 = v50;
      v62 = sub_24329C258();
      v63 = sub_24329C358();

      if (os_log_type_enabled(v62, v63))
      {
        v12 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v103[0] = v64;
        *v12 = 136315138;
        v65 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
        swift_beginAccess();
        if (v61[v65])
        {
          if (v61[v65] == 1)
          {
            v1 = 0xE900000000000032;
            v66 = 0x336C363532616853;
          }

          else
          {
            v1 = 0xE600000000000000;
            v66 = 0x363532616853;
          }
        }

        else
        {
          v1 = 0xEB00000000336873;
          v66 = 0x614872756D72754DLL;
        }

        v67 = sub_243296944(v66, v1, v103);

        *(v12 + 4) = v67;
        _os_log_impl(&dword_24328F000, v62, v63, "Hash Algorithm: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x245D2E7E0](v64, -1, -1);
        MEMORY[0x245D2E7E0](v12, -1, -1);
      }

      v68 = v61;
      v9 = v4;
      v69 = sub_24329C258();
      v8 = sub_24329C358();
      if (os_log_type_enabled(v69, v8))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        v12 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
        swift_beginAccess();
        *(v70 + 4) = *(v68 + v12);

        _os_log_impl(&dword_24328F000, v69, v8, "Number of bloom filters: %ld", v70, 0xCu);
        MEMORY[0x245D2E7E0](v70, -1, -1);
      }

      else
      {

        v69 = v68;
      }

      v71 = *(v11 + 264);
      swift_beginAccess();
      v72 = *(&v68->isa + v71);
      if (v72 >> 62)
      {
        v2 = sub_24329C3E8();
        if (!v2)
        {
          return;
        }
      }

      else
      {
        v2 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          return;
        }
      }

      if (v2 >= 1)
      {
        v73 = v72 & 0xC000000000000001;

        v74 = 0;
        v98 = v72 & 0xC000000000000001;
        v99 = v2;
        v97 = v72;
        while (1)
        {
          if (v73)
          {
            v75 = MEMORY[0x245D2E3A0](v74, v72);
          }

          else
          {
            v75 = *(v72 + 8 * v74 + 32);
          }

          swift_retain_n();
          v76 = sub_24329C258();
          v77 = sub_24329C358();
          if (os_log_type_enabled(v76, v77))
          {
            LODWORD(v101) = v77;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v102 = v79;
            *v78 = 134218754;
            *(v78 + 4) = v75[5];

            *(v78 + 12) = 2080;
            v80 = v75[3];
            v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
            [v1 setNumberStyle_];
            v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v82 = [v1 stringFromNumber_];

            if (!v82)
            {
              goto LABEL_77;
            }

            v83 = sub_24329C2E8();
            v2 = v84;

            v85 = sub_243296944(v83, v2, &v102);

            *(v78 + 14) = v85;
            *(v78 + 22) = 2080;
            v86 = v75[3];
            v20 = __OFADD__(v86, 7);
            v87 = v86 + 7;
            if (v20)
            {
              __break(1u);
              goto LABEL_66;
            }

            v88 = v87 / 8;
            v89 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
            [v89 setNumberStyle_];
            v90 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v91 = [v89 stringFromNumber_];

            if (!v91)
            {
              goto LABEL_78;
            }

            v92 = sub_24329C2E8();
            v94 = v93;

            v95 = sub_243296944(v92, v94, &v102);

            *(v78 + 24) = v95;
            *(v78 + 32) = 2048;
            v96 = v75[4];

            *(v78 + 34) = v96;

            _os_log_impl(&dword_24328F000, v76, v77, "filter %ld bit size: %s, size: %s bytes, number of hash functions: %ld", v78, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x245D2E7E0](v79, -1, -1);
            MEMORY[0x245D2E7E0](v78, -1, -1);

            v72 = v97;
            v73 = v98;
            v2 = v99;
          }

          else
          {
          }

          if (v2 == ++v74)
          {

            return;
          }
        }
      }

      __break(1u);
LABEL_71:
      v14 = sub_24329C3E8();
      if (v14)
      {
        goto LABEL_7;
      }
    }

    v42 = swift_slowAlloc();
    *v42 = 134217984;
    v43 = (v39 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
    swift_beginAccess();
    v45 = *v43;
    v44 = v43[1];
    v46 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      v47 = 0;
      if (v46 != 2)
      {
LABEL_36:
        *(v42 + 4) = 8 * v47;

        _os_log_impl(&dword_24328F000, v40, v41, "Salt length: %ld bits", v42, 0xCu);
        MEMORY[0x245D2E7E0](v42, -1, -1);
        goto LABEL_37;
      }

      v49 = v45 + 16;
      v45 = *(v45 + 16);
      v48 = *(v49 + 8);
      v20 = __OFSUB__(v48, v45);
      v47 = v48 - v45;
      if (!v20)
      {
LABEL_35:
        if ((v47 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v46)
    {
      v47 = BYTE6(v44);
      goto LABEL_35;
    }

    LODWORD(v47) = HIDWORD(v45) - v45;
    if (__OFSUB__(HIDWORD(v45), v45))
    {
      goto LABEL_76;
    }

    v47 = v47;
    goto LABEL_35;
  }

LABEL_7:
  if (v14 >= 1)
  {

    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x245D2E3A0](i, v1);
      }

      else
      {
        v18 = *(v1 + 8 * i + 32);
      }

      v19 = *(v17 + 24);

      v20 = __OFADD__(v15, v19);
      v15 += v19;
      if (v20)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v11 = 0x27ED6D000;
    v21 = v15 + 7;
    if (!__OFADD__(v15, 7))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:

  __break(1u);
LABEL_78:

  __break(1u);
LABEL_79:
  __break(1u);
}

id static CascadingBloomFilters.fromBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for CascadingBloomFilters()) init];
  sub_243292DC8(a1, a2);
  if (v2)
  {
  }

  return v5;
}

id CascadingBloomFilters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static CascadingBloomFilters.getBloomFiltersBytes(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v52[3] = MEMORY[0x277CC9318];
  v52[4] = MEMORY[0x277CC9300];
  v52[0] = a1;
  v52[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v52, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v50, 0, 14);
      sub_243291E48(v3, v2);
      v8 = v50;
      v9 = v50;
      goto LABEL_23;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_243291E48(v3, v2);
    v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_24329C128();
    if (v3)
    {
      v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = sub_24329C158();
      v5 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
        goto LABEL_91;
      }

      v3 += v5;
    }

    v13 = __OFSUB__(v11, v10);
    v14 = v11 - v10;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v50[0] = *v4;
    LOWORD(v50[1]) = v6;
    BYTE2(v50[1]) = BYTE2(v6);
    BYTE3(v50[1]) = BYTE3(v6);
    BYTE4(v50[1]) = BYTE4(v6);
    BYTE5(v50[1]) = BYTE5(v6);
    v6 = v50 + BYTE6(v6);
    sub_243291E48(v3, v2);
    v8 = v50;
    v9 = v6;
    goto LABEL_23;
  }

  v15 = v5;
  v16 = v5 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_89;
  }

  sub_243291E48(v3, v2);
  v3 = sub_24329C128();
  if (!v3)
  {
    goto LABEL_15;
  }

  v17 = sub_24329C158();
  if (__OFSUB__(v15, v17))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v3 += v15 - v17;
LABEL_15:
  v18 = sub_24329C148();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v3);
  if (v3)
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  v8 = v3;
LABEL_23:
  sub_243296E9C(v8, v9, v51);
  v21 = v51[0];
  v22 = v51[1];
  result = __swift_destroy_boxed_opaque_existential_1(v52);
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v26 = *(v21 + 16);
      v53 = v21;
      v54 = v22;
      v55 = v26;
      v25 = *(v21 + 16);
      goto LABEL_32;
    }
  }

  else if (v24)
  {
    v25 = v21;
    v53 = v21;
    v54 = v22;
    v55 = v21;
    goto LABEL_32;
  }

  v53 = v21;
  v54 = v22;
  v55 = 0;
  if (v24 > 1 || !v24)
  {
    goto LABEL_34;
  }

  v25 = v21;
LABEL_32:
  if (v25 > 3)
  {
    __break(1u);
  }

LABEL_34:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_99;
    }

    v27 = *(v21 + 24);
  }

  else if (v24)
  {
    v27 = v21 >> 32;
  }

  else
  {
    v27 = BYTE6(v22);
  }

  if (v27 >= 3)
  {
    v55 = 3;
    v28 = sub_243292204();
    if ((v28 & 0x100) != 0)
    {
      goto LABEL_81;
    }

    v6 = v28;
    if (v28 - 1 >= 0x20)
    {
      if (qword_27ED6D0A0 == -1)
      {
LABEL_48:
        v34 = sub_24329C278();
        __swift_project_value_buffer(v34, qword_27ED6D0E0);
        v35 = sub_24329C258();
        v36 = sub_24329C368();
        if (!os_log_type_enabled(v35, v36))
        {
          v38 = 1;
LABEL_86:

          sub_243296594();
          swift_allocError();
          *v48 = v38;
          swift_willThrow();
          sub_243290718(v53, v54);
          goto LABEL_87;
        }

        v6 *= 8;
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v6;
        _os_log_impl(&dword_24328F000, v35, v36, "invalid salt length (%ld)", v37, 0xCu);
        v38 = 1;
LABEL_84:
        MEMORY[0x245D2E7E0](v37, -1, -1);
        goto LABEL_86;
      }

LABEL_93:
      swift_once();
      goto LABEL_48;
    }

    v29 = v55 + v28;
    if (!__OFADD__(v55, v6))
    {
      v30 = 0;
      v31 = v53;
      v32 = v54;
      v33 = v54 >> 62;
      if ((v54 >> 62) > 1)
      {
        if (v33 == 2)
        {
          v30 = *(v53 + 16);
        }
      }

      else if (v33)
      {
        v30 = v53;
      }

      if (v29 < v30)
      {
        __break(1u);
      }

      else
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v39 = *(v53 + 24);
          }

          else
          {
            v39 = 0;
          }
        }

        else if (v33)
        {
          v39 = v53 >> 32;
        }

        else
        {
          v39 = BYTE6(v54);
        }

        if (v39 >= v29)
        {
          v55 += v6;
          if (v33 > 1)
          {
            if (v33 == 2)
            {
              v40 = *(v53 + 24);
            }

            else
            {
              v40 = 0;
            }
          }

          else if (v33)
          {
            v40 = v53 >> 32;
          }

          else
          {
            v40 = BYTE6(v54);
          }

          v13 = __OFSUB__(v40, v29);
          v41 = v40 - v29;
          if (!v13)
          {
            v6 = v29 + v41;
            if (!__OFADD__(v29, v41))
            {
              if (v33 > 1)
              {
                if (v33 != 2)
                {
                  if (v6 <= 0)
                  {
LABEL_78:
                    if (v6 >= v29)
                    {
                      v43 = sub_24329C218();
                      v45 = sub_243296418(v43, v44);
                      v55 = v6;
                      v6 = sub_24329721C(v45);

                      sub_243290718(v31, v32);
LABEL_87:
                      v49 = *MEMORY[0x277D85DE8];
                      return v6;
                    }

LABEL_98:
                    __break(1u);
                  }

LABEL_81:
                  if (qword_27ED6D0A0 == -1)
                  {
LABEL_82:
                    v46 = sub_24329C278();
                    __swift_project_value_buffer(v46, qword_27ED6D0E0);
                    v35 = sub_24329C258();
                    v47 = sub_24329C368();
                    if (!os_log_type_enabled(v35, v47))
                    {
                      v38 = 6;
                      goto LABEL_86;
                    }

                    v37 = swift_slowAlloc();
                    *v37 = 0;
                    _os_log_impl(&dword_24328F000, v35, v47, "unable to parse filters", v37, 2u);
                    v38 = 6;
                    goto LABEL_84;
                  }

LABEL_89:
                  swift_once();
                  goto LABEL_82;
                }

                v42 = *(v53 + 24);
              }

              else if (v33)
              {
                v42 = v53 >> 32;
              }

              else
              {
                v42 = BYTE6(v54);
              }

              if (v42 >= v6)
              {
                goto LABEL_78;
              }

              goto LABEL_81;
            }

LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_99:
  __break(1u);
  return result;
}

id CascadingBloomFilters.init()()
{
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version] = 2;
  v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm] = 2;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers] = 0;
  v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic] = 0;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt] = xmmword_24329C870;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadingBloomFilters();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CascadingBloomFilters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadingBloomFilters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CascadingFiltersError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_243296344()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1 + 1);
  return sub_24329C458();
}

uint64_t sub_2432963BC()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1 + 1);
  return sub_24329C458();
}

uint64_t sub_243296418(uint64_t a1, unint64_t a2)
{
  v4 = sub_24329C248();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_243290718(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_243299EB8(v11, 0);
      v15 = sub_24329C1E8();
      sub_243290718(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_243296594()
{
  result = qword_27ED6D128;
  if (!qword_27ED6D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D128);
  }

  return result;
}

uint64_t sub_2432965E8(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v42 = MEMORY[0x277D84F90];
    v9 = v5 & ~(v5 >> 63);
    sub_243296F30(0, v9, 0);
    v8 = v42;
    if (v4 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v29 = v4;
      while (1)
      {
        if (!v9)
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
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        if (v4 == 2)
        {
          if (v10 < *(a1 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(a1 + 24))
          {
            goto LABEL_45;
          }

          v15 = sub_24329C128();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = sub_24329C158();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v4 != 1)
          {
            if (v10 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v30 = a1;
            v31 = BYTE2(a1);
            v32 = BYTE3(a1);
            v33 = v28;
            v34 = BYTE5(a1);
            v35 = BYTE6(a1);
            v36 = HIBYTE(a1);
            v37 = a2;
            v38 = BYTE2(a2);
            v39 = BYTE3(a2);
            v40 = BYTE4(a2);
            v41 = BYTE5(a2);
            v17 = *(&v30 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = sub_24329C128();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = sub_24329C158();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
LABEL_37:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D168, &qword_24329CCB0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_24329CA50;
        *(v18 + 56) = MEMORY[0x277D84B78];
        *(v18 + 64) = MEMORY[0x277D84BC0];
        *(v18 + 32) = v17;
        v19 = sub_24329C2F8();
        v42 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v27 = v19;
          v24 = v20;
          sub_243296F30((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v19 = v27;
          v8 = v42;
        }

        *(v8 + 16) = v22 + 1;
        v23 = v8 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        ++v10;
        --v9;
        --v5;
        LODWORD(v4) = v29;
        if (!v5)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

LABEL_40:
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_243296944(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243296A10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243297EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243296A10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243296B1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24329C398();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243296B1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_243296B68(a1, a2);
  sub_243296C98(&unk_2855FB5D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243296B68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243299EB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24329C398();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24329C308();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243299EB8(v10, 0);
        result = sub_24329C378();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243296C98(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_243296D84(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_243296D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE *sub_243296E9C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_24329705C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24329711C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_243297198(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_243296F30(char *a1, int64_t a2, char a3)
{
  result = sub_243296F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243296F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D170, &qword_24329CCB8);
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

unint64_t sub_24329705C(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_243290EF8(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24329711C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24329C168();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24329C118();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24329C1F8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_243297198(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24329C168();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24329C118();
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

uint64_t sub_24329721C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0C8, &qword_24329CA18);
  v10 = sub_243297E74(&qword_27ED6D0D0, &qword_27ED6D0C8, &qword_24329CA18);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_243296E9C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_2432972FC()
{
  result = qword_27ED6D140;
  if (!qword_27ED6D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D140);
  }

  return result;
}

unint64_t sub_243297358()
{
  result = qword_27ED6D148;
  if (!qword_27ED6D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D148);
  }

  return result;
}

uint64_t sub_2432973C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24329741C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_24329752C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243297584(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2432975E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t getEnumTagSinglePayload for CascadingFiltersError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CascadingFiltersError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashAlgorithmEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HashAlgorithmEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243297E20()
{
  result = qword_27ED6D158;
  if (!qword_27ED6D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D158);
  }

  return result;
}

uint64_t sub_243297E74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243297EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ByteBuffer.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v4 = result;
    if (!v3)
    {
      v4 = 0;
    }

    goto LABEL_4;
  }

  v4 = 0;
  if (v3 != 2)
  {
LABEL_4:
    a3[2] = v4;
    return result;
  }

  a3[2] = *(result + 16);
  return result;
}

uint64_t ByteBuffer.readableBytesView.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 >= result)
  {
    return sub_24329C218();
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_24329C208();
  return *(a1._rawValue + 2);
}

uint64_t ByteBuffer.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_24329C218();
    v8 = v7;
    sub_24329C238();

    return sub_243290718(v6, v8);
  }

  return result;
}

uint64_t ByteBuffer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_24329C438();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_24329C218();
    v9 = v8;
    sub_24329C238();
    sub_243290718(v7, v9);
    return sub_24329C458();
  }

  return result;
}

uint64_t sub_243298158()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_24329C218();
    v8 = v7;
    sub_24329C238();

    return sub_243290718(v6, v8);
  }

  return result;
}

uint64_t sub_2432981FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_24329C438();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_24329C218();
    v9 = v8;
    sub_24329C238();
    sub_243290718(v7, v9);
    return sub_24329C458();
  }

  return result;
}

uint64_t ByteBufferError.hashValue.getter()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t sub_243298334()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t sub_2432983A0()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t _s16CascadingFilters10ByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    result = sub_24329C218();
    v10 = result;
    v12 = v11;
    v13 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v7 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v7 >> 32;
    }

    else
    {
      v14 = BYTE6(v8);
    }

    if (v14 >= v9)
    {
      v15 = sub_24329C218();
      v17 = v16;
      v18 = sub_243299948(v10, v12, v15, v16);
      sub_243290718(v10, v12);
      sub_243290718(v15, v17);
      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2432984FC()
{
  result = qword_27ED6D178;
  if (!qword_27ED6D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D178);
  }

  return result;
}

unint64_t sub_243298554()
{
  result = qword_27ED6D180;
  if (!qword_27ED6D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D180);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2432985D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_24329862C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ByteBufferError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ByteBufferError(_WORD *result, int a2, int a3)
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

uint64_t sub_243298774()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D188);
  __swift_project_value_buffer(v0, qword_27ED6D188);
  return sub_24329C268();
}

uint64_t sub_2432987E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = v4;
  v6 = v3;
  v84 = a1;
  v85 = a2;
  v95 = *MEMORY[0x277D85DE8];
  v73 = sub_24329C248();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v72 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_24329C298();
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v82 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_24329C2C8();
  v14 = *(v81 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v87 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = a3;
  v17 = ceil(log2(a3));
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v17 <= -1.0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v17 >= 4294967300.0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = v17 + 7;
  if (v17 >= 0xFFFFFFF9)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 8)
  {
    v20 = v18 >> 3;
    v19 = sub_24329C338();
    *(v19 + 16) = v20;
    v21 = (v19 + 16);
    bzero((v19 + 32), v20);
    v89[0] = v19;
    goto LABEL_9;
  }

  v19 = MEMORY[0x277D84F90];
  v21 = (MEMORY[0x277D84F90] + 16);
  v20 = *(MEMORY[0x277D84F90] + 16);
  v89[0] = MEMORY[0x277D84F90];
  if (v20)
  {
LABEL_9:
    v23 = 0;
    v24 = *(v6 + 48);
    v79 = (v11 + 8);
    v80 = (v11 + 16);
    v71 = (v8 + 8);
    v75 = (v14 + 8);
    v77 = v20;
    v78 = v19;
    v76 = v21;
    while (v24)
    {
LABEL_30:
      if (!v24 || (v52 = *(v6 + 40), v53 = *(v52 + 16) - v24, v53 < 0))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v23 >= *v21)
      {
        goto LABEL_50;
      }

      *(v19 + v23 + 32) = *(v52 + v53 + 32);
      v89[0] = v19;
      *(v6 + 48) = --v24;
      if (v20 == ++v23)
      {
        v22 = *v21;
        if (*v21 > 3)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v88 = *(v6 + 32);
    v25 = sub_24329705C(&v88, v89);
    v27 = v26;
    sub_24329C2B8();
    sub_243291E48(v25, v27 & 0xFFFFFFFFFFFFFFLL);
    sub_2432995D0(v25, v27 & 0xFFFFFFFFFFFFFFLL);
    v86 = v25;
    sub_243290718(v25, v27 & 0xFFFFFFFFFFFFFFLL);
    v29 = v84;
    v28 = v85;
    sub_243291E48(v84, v85);
    sub_2432995D0(v29, v28);
    sub_243290718(v29, v28);
    v30 = *(v6 + 16);
    v31 = *(v6 + 24);
    sub_243291E48(v30, v31);
    sub_2432995D0(v30, v31);
    sub_243290718(v30, v31);
    v32 = v82;
    sub_24329C2A8();
    v33 = v83;
    v93 = v83;
    v94 = sub_243299C10(&qword_27ED6D1B0, MEMORY[0x277CC5290]);
    v34 = __swift_allocate_boxed_opaque_existential_1(&v90);
    (*v80)(v34, v32, v33);
    __swift_project_boxed_opaque_existential_1(&v90, v93);
    sub_24329C1B8();
    (*v79)(v32, v33);
    v36 = v89[1];
    v35 = v89[2];
    __swift_destroy_boxed_opaque_existential_1(&v90);
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 != 2)
      {
LABEL_23:
        sub_243290718(v86, v27 & 0xFFFFFFFFFFFFFFLL);
        v41 = MEMORY[0x277D84F90];
LABEL_27:
        v47 = *(v6 + 40);
        *(v6 + 40) = v41;

        v48 = *(*(v6 + 40) + 16);
        if (v48 > 0xFF)
        {
          goto LABEL_51;
        }

        *(v6 + 48) = v48;
        v49 = *(v6 + 32);
        v50 = __CFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_52;
        }

        *(v6 + 32) = v51;
        (*v75)(v87, v81);
        v24 = *(v6 + 48);
        v20 = v77;
        v19 = v78;
        v21 = v76;
        goto LABEL_30;
      }

      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      v38 = v39 - v40;
      if (__OFSUB__(v39, v40))
      {
        goto LABEL_55;
      }

      if (!v38)
      {
LABEL_22:
        sub_243290718(v36, v35);
        goto LABEL_23;
      }
    }

    else if (v37)
    {
      v43 = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_54;
      }

      v38 = v43;
      if (!v43)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v38 = BYTE6(v35);
      if (!BYTE6(v35))
      {
        goto LABEL_22;
      }
    }

    v74 = v5;
    if (v38 < 1)
    {
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
      v41 = swift_allocObject();
      v42 = _swift_stdlib_malloc_size(v41);
      v41[2] = v38;
      v41[3] = 2 * v42 - 64;
    }

    v44 = v72;
    v45 = sub_24329C1E8();
    sub_243290718(v36, v35);
    sub_243290718(v86, v27 & 0xFFFFFFFFFFFFFFLL);
    (*v71)(v44, v73);
    v46 = v45 == v38;
    v5 = v74;
    if (!v46)
    {
      goto LABEL_53;
    }

    goto LABEL_27;
  }

  v22 = 0;
LABEL_35:
  v54 = 4 - v22;
  v55 = sub_24329C338();
  *(v55 + 16) = v54;
  bzero((v55 + 32), v54);
  sub_243296C98(v55);
  v19 = v89[0];
LABEL_36:
  v56 = sub_24329721C(v19);
  v58 = v57;

  v59 = 0;
  v60 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v60 == 2)
    {
      v59 = *(v56 + 16);
    }
  }

  else if (v60)
  {
    v59 = v56;
  }

  v90 = v56;
  v91 = v58;
  v92 = v59;
  v61 = sub_24329207C();
  if ((v61 & 0x100000000) == 0)
  {
    v62 = v61;
    sub_243290718(v90, v91);
    if (v70)
    {
      result = v62 % v70;
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  if (qword_27ED6D0A8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v64 = sub_24329C278();
  __swift_project_value_buffer(v64, qword_27ED6D188);
  v65 = sub_24329C258();
  v66 = sub_24329C368();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_24328F000, v65, v66, "error unable to convert index bytes to int", v67, 2u);
    MEMORY[0x245D2E7E0](v67, -1, -1);
  }

  sub_243299B0C();
  swift_allocError();
  swift_willThrow();
  result = sub_243290718(v90, v91);
LABEL_48:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

void *IndexGenerator.deinit()
{
  sub_243290718(v0[2], v0[3]);
  v1 = v0[5];

  return v0;
}

uint64_t IndexGenerator.__deallocating_deinit()
{
  sub_243290718(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t IndexGeneratorError.hashValue.getter()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t static IndexGenerator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6 & 1;
}

uint64_t sub_243299188(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6 & 1;
}

uint64_t sub_243299210@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_24329C128();
    if (v10)
    {
      v11 = sub_24329C158();
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
      result = sub_24329C148();
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
  v10 = sub_24329C128();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24329C158();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24329C148();
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

uint64_t sub_243299440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_243299890(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_243290718(a3, a4);
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
  sub_243299210(v14, a3, a4, &v13);
  v10 = v4;
  sub_243290718(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2432995D0(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_24329C2C8();
      sub_243299C10(&qword_27ED6D1B8, MEMORY[0x277CC5540]);
      result = sub_24329C288();
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

  result = sub_2432997B0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2432997B0(uint64_t a1, uint64_t a2)
{
  result = sub_24329C128();
  if (!result || (result = sub_24329C158(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24329C148();
      sub_24329C2C8();
      sub_243299C10(&qword_27ED6D1B8, MEMORY[0x277CC5540]);
      return sub_24329C288();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_243299890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24329C128();
  v11 = result;
  if (result)
  {
    result = sub_24329C158();
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

  sub_24329C148();
  sub_243299210(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_243299948(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_243291E48(a3, a4);
          return sub_243299440(v13, a2, a3, a4) & 1;
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

unint64_t sub_243299AB4()
{
  result = qword_27ED6D1A0;
  if (!qword_27ED6D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1A0);
  }

  return result;
}

unint64_t sub_243299B0C()
{
  result = qword_27ED6D1A8;
  if (!qword_27ED6D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1A8);
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

uint64_t sub_243299C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  sub_2432965E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D130, &qword_24329CA60);
  sub_243299E44();
  v2 = sub_24329C2D8();

  return v2;
}

uint64_t Data.bytes.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_24329C248();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v14 = sub_243299EB8(v11, 0);
      v15 = sub_24329C1E8();
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

unint64_t sub_243299E44()
{
  result = qword_27ED6D138;
  if (!qword_27ED6D138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6D130, &qword_24329CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D138);
  }

  return result;
}

void *sub_243299EB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_243299F50()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D1C0);
  __swift_project_value_buffer(v0, qword_27ED6D1C0);
  return sub_24329C268();
}

uint64_t sub_243299FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_24329A020()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_24329A058(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t CascadeBuilder.salt.getter()
{
  v1 = *(v0 + 24);
  sub_243291E48(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_24329A130(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_24329A190()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_24329A1C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_24329A260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_24329A2C0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_24329A2F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

__n128 sub_24329A390@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[4];
  *a1 = result;
  return result;
}

uint64_t sub_24329A3D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t CascadeBuilder.__allocating_init(hashAlgorithm:salt:includeCount:excludeCount:)(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 40) = *a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 48) = MEMORY[0x277D84F90];
  *(v10 + 56) = v11;
  *(v10 + 64) = a4;
  *(v10 + 72) = a5;
  *(v10 + 16) = v11;
  v12 = (v10 + 16);
  type metadata accessor for BloomFilter();
  swift_allocObject();
  sub_243291E48(a2, a3);
  *(sub_243290018(a4, a5, 1) + 40) = 1;
  swift_beginAccess();

  MEMORY[0x245D2E330](v13);
  if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
  sub_243290718(a2, a3);

  return v10;
}

uint64_t CascadeBuilder.init(hashAlgorithm:salt:includeCount:excludeCount:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  v13 = (v6 + 16);
  *(v6 + 40) = v11;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 48) = v12;
  *(v6 + 56) = v12;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  type metadata accessor for BloomFilter();
  swift_allocObject();
  sub_243291E48(a2, a3);
  *(sub_243290018(a4, a5, 1) + 40) = 1;
  swift_beginAccess();

  MEMORY[0x245D2E330](v14);
  if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
  sub_243290718(a2, a3);

  return v6;
}

uint64_t sub_24329A704(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (v4[8])
  {
    type metadata accessor for IndexGenerator();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    *(v7 + 32) = 0;
    sub_243291E48(a1, a2);
    v8 = sub_24329C338();
    *(v8 + 16) = 32;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v7 + 40) = v8;
    *(v7 + 48) = 0;
    swift_beginAccess();
    v9 = v4[2];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v21 = v4[2];

      MEMORY[0x245D2E3A0](0, v9);

LABEL_5:
      sub_24329013C(v7, v4[3], v4[4]);

      if (v3)
      {
      }

      swift_beginAccess();

      MEMORY[0x245D2E330](v17);
      if (*((v4[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v4[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24329C328();
      }

      sub_24329C348();
      swift_endAccess();

      v18 = v4[8];
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4[8] = v20;
      }

      return result;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27ED6D0B0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v12 = sub_24329C278();
  __swift_project_value_buffer(v12, qword_27ED6D1C0);
  v13 = sub_24329C258();
  v14 = sub_24329C368();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24328F000, v13, v14, "no more include capacity", v15, 2u);
    MEMORY[0x245D2E7E0](v15, -1, -1);
  }

  sub_24329A9C0();
  swift_allocError();
  *v16 = 3;
  return swift_willThrow();
}

unint64_t sub_24329A9C0()
{
  result = qword_27ED6D1D8;
  if (!qword_27ED6D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1D8);
  }

  return result;
}

uint64_t sub_24329AA14(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (!v4[9])
  {
    if (qword_27ED6D0B0 == -1)
    {
LABEL_8:
      v13 = sub_24329C278();
      __swift_project_value_buffer(v13, qword_27ED6D1C0);
      v14 = sub_24329C258();
      v15 = sub_24329C368();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_24328F000, v14, v15, "no more exclude capacity", v16, 2u);
        MEMORY[0x245D2E7E0](v16, -1, -1);
      }

      sub_24329A9C0();
      swift_allocError();
      *v17 = 1;
      return swift_willThrow();
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  type metadata accessor for IndexGenerator();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  sub_243291E48(a1, a2);
  v8 = sub_24329C338();
  *(v8 + 16) = 32;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0;
  swift_beginAccess();
  v9 = v4[2];
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_18;
  }

  v22 = v4[2];

  MEMORY[0x245D2E3A0](0, v9);

LABEL_5:
  v11 = sub_243290390(v7, v4[3], v4[4]);

  if (v3)
  {
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  swift_beginAccess();

  MEMORY[0x245D2E330](v18);
  if (*((v4[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_24329C348();
    swift_endAccess();
LABEL_14:

    v19 = v4[9];
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (!v20)
    {
      break;
    }

    __break(1u);
LABEL_20:
    sub_24329C328();
  }

  v4[9] = v21;
  return result;
}

uint64_t sub_24329ACD8()
{
  v2 = v1;
  v3 = v0;
  swift_beginAccess();
  v4 = v0[2];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = v0[2];
    }

    v5 = sub_24329C3E8();
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    swift_beginAccess();
    v6 = v0[7];
    v7 = v0 + 6;
    goto LABEL_8;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_beginAccess();
  v6 = v0[6];
  v7 = v0 + 7;
LABEL_8:
  swift_beginAccess();
  v9 = *v7;
  swift_bridgeObjectRetain_n();
  v10 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_79;
  }

  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v47 = (v9 >> 62);
  if (v9 >> 62)
  {
    v12 = sub_24329C3E8();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for BloomFilter();
  swift_allocObject();
  v46 = v9;

  v13 = sub_243290018(v11, v12, 0);
  v14 = *(v3 + 16);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_14;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    if (v46 < 0)
    {
      v6 = v46;
    }

    else
    {
      v6 = v46 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = sub_24329C3E8();
    v50 = v12;
    v21 = sub_24329C3E8();
    v47 = v3;
    v48 = v13;
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v14 < 0)
  {
    v34 = *(v3 + 16);
  }

  v35 = sub_24329C3E8();
  v16 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    goto LABEL_85;
  }

LABEL_14:
  v44 = v10;
  v45 = v5;
  *(v13 + 40) = v16;
  if (v10)
  {
    v10 = sub_24329C3E8();
    v51 = v6;
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_18:
    v9 = 0;
    v17 = v6 & 0xC000000000000001;
    v5 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v18 = MEMORY[0x245D2E3A0](v9, v6);
        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v11 = sub_24329C3E8();
          goto LABEL_10;
        }

        v18 = *(v6 + 8 * v9 + 32);

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_28;
        }
      }

      sub_24329013C(v18, *(v3 + 24), *(v3 + 32));
      if (v2)
      {
LABEL_43:

        return swift_bridgeObjectRelease_n();
      }

      ++v9;
      v19 = v6 == v10;
      v6 = v51;
      if (v19)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v6;
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_29:

  v12 = MEMORY[0x277D84F90];
  if (v47)
  {
    goto LABEL_86;
  }

  v20 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = MEMORY[0x277D84F90];
  v21 = v20;
  v47 = v3;
  v48 = v13;
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_31:
  v43 = v20;
  v10 = 0;
  v22 = v46;
  v3 = v46 & 0xC000000000000001;
  v5 = v46 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v3)
    {
      v9 = MEMORY[0x245D2E3A0](v10, v22);
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_77;
      }

      v9 = *(v22 + 8 * v10 + 32);

      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v23 = sub_243290390(v9, v47[3], v47[4]);
    if (v2)
    {
    }

    if (v23)
    {
      sub_24329C3A8();
      v24 = *(v50 + 16);
      sub_24329C3C8();
      v22 = v46;
      sub_24329C3D8();
      sub_24329C3B8();
    }

    else
    {
    }

    ++v10;
  }

  while (v6 != v21);
  v12 = v50;
  v3 = v47;
  v20 = v43;
LABEL_46:

  v6 = v51;
  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v26 = *(v12 + 16);
    if (!__OFSUB__(v20, v26))
    {
      goto LABEL_49;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    if (sub_24329C3E8() < 255)
    {
      goto LABEL_72;
    }

LABEL_95:
    if (qword_27ED6D0B0 != -1)
    {
      swift_once();
    }

    v36 = sub_24329C278();
    __swift_project_value_buffer(v36, qword_27ED6D1C0);
    v37 = sub_24329C258();
    v38 = sub_24329C368();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24328F000, v37, v38, "filter count exceeded limit (255)", v39, 2u);
      MEMORY[0x245D2E7E0](v39, -1, -1);
    }

    sub_24329A9C0();
    swift_allocError();
    *v40 = 4;
    swift_willThrow();
  }

  v26 = sub_24329C3E8();
  if (__OFSUB__(v20, v26))
  {
    goto LABEL_93;
  }

LABEL_49:
  if (v45)
  {
    v27 = (v3 + 48);
  }

  else
  {
    v27 = (v3 + 56);
  }

  swift_beginAccess();
  v28 = *v27;
  *v27 = v12;

  if (v20 != v26)
  {

    goto LABEL_70;
  }

  if (!v44)
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_69;
    }

LABEL_58:
    v3 = 0;
    v29 = v6 & 0xC000000000000001;
    v5 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29)
      {
        v9 = MEMORY[0x245D2E3A0](v3, v6);
        v30 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_78;
        }

        v9 = *(v6 + 8 * v3 + 32);

        v30 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      v49 = v9;
      MEMORY[0x28223BE20]();
      v42[2] = &v49;
      if (sub_24329BF1C(sub_24329C0E8, v42, v12))
      {
        break;
      }

      ++v3;
      v19 = v30 == v10;
      v6 = v51;
      if (v19)
      {
        goto LABEL_69;
      }
    }

    sub_24329A9C0();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
  }

  v10 = sub_24329C3E8();
  if (v10)
  {
    goto LABEL_58;
  }

LABEL_69:

LABEL_70:
  v20 = v47;
  v31 = v47[2];
  if (v31 >> 62)
  {
    goto LABEL_94;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 255)
  {
    goto LABEL_95;
  }

LABEL_72:
  swift_beginAccess();

  MEMORY[0x245D2E330](v32);
  if (*((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v41 = *((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
}

uint8_t *sub_24329B464()
{
  swift_beginAccess();
  if (*(v0 + 64) && *(v0 + 72))
  {
    if (qword_27ED6D0B0 != -1)
    {
      swift_once();
    }

    v3 = sub_24329C278();
    __swift_project_value_buffer(v3, qword_27ED6D1C0);
    v4 = sub_24329C258();
    v5 = sub_24329C368();
    if (os_log_type_enabled(v4, v5))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_24328F000, v4, v5, "includeCount and excludeCount not empty", v2, 2u);
      MEMORY[0x245D2E7E0](v2, -1, -1);
    }

    sub_24329A9C0();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    v7 = *(v0 + 56);
    if (v7 >> 62)
    {
      break;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_11:
    sub_24329ACD8();
    if (v1)
    {
      return v2;
    }

    v8 = *(v0 + 48);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v10 = *(v0 + 48);
      }

      if (!sub_24329C3E8())
      {
        goto LABEL_22;
      }
    }

    else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    sub_24329ACD8();
  }

  if (v7 < 0)
  {
    v9 = *(v0 + 56);
  }

  if (sub_24329C3E8())
  {
    goto LABEL_11;
  }

LABEL_22:
  v2 = [objc_allocWithZone(type metadata accessor for CascadingBloomFilters()) init];
  swift_beginAccess();
  v11 = *(v0 + 16);
  v12 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v13 = *&v2[v12];
  *&v2[v12] = v11;

  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = &v2[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt];
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = v14;
  v16[1] = v15;
  sub_243291E48(v14, v15);
  sub_243290718(v17, v18);
  LOBYTE(v14) = *(v0 + 40);
  v19 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  swift_beginAccess();
  v2[v19] = v14;
  v20 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  v2[v20] = 0;
  v21 = *(v0 + 16);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v25 = *(v0 + 16);
    }

    v22 = sub_24329C3E8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
  swift_beginAccess();
  *&v2[v23] = v22;
  return v2;
}

void *CascadeBuilder.deinit()
{
  v1 = v0[2];

  sub_243290718(v0[3], v0[4]);
  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t CascadeBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  sub_243290718(v0[3], v0[4]);
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t CascadeBuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

unint64_t sub_24329B8DC()
{
  result = qword_27ED6D1E0;
  if (!qword_27ED6D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1E0);
  }

  return result;
}

uint64_t sub_24329B934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24329B984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_24329B9D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

__n128 sub_24329BA24@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[4];
  *a2 = result;
  return result;
}

uint64_t sub_24329BA6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BuildStatus(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BuildStatus(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CascadeBuilderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CascadeBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24329BF1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x245D2E3A0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_24329C3E8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_24329C058(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6 & 1;
}