uint64_t WalletPassDates.date.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WalletPassDates.endDate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WalletPassDates.init(date:endDate:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v48 = a2;
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = sub_251E71A68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v46 = a1;
  sub_251E6F170(a1, v14);
  v25 = *(v16 + 48);
  if (v25(v14, 1, v15) == 1)
  {
    sub_251E6F1F0(v14);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    (*(v16 + 32))(v24, v14, v15);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v26 = sub_251E71A08();
    __swift_project_value_buffer(v26, qword_27F4BD7F0);
    v44 = sub_251E719E8();
    v45 = v27;
    (*(v16 + 8))(v24, v15);
  }

  v28 = v43;
  sub_251E6F170(v48, v12);
  if (v25(v12, 1, v15) == 1)
  {
    sub_251E6F1F0(v12);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    (*(v16 + 32))(v22, v12, v15);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v31 = sub_251E71A08();
    __swift_project_value_buffer(v31, qword_27F4BD7F0);
    v30 = sub_251E719E8();
    v29 = v32;
    (*(v16 + 8))(v22, v15);
  }

  v33 = v47;
  sub_251E6F170(v47, v28);
  if (v25(v28, 1, v15) == 1)
  {
    sub_251E6F1F0(v33);
    sub_251E6F1F0(v48);
    sub_251E6F1F0(v46);
    result = sub_251E6F1F0(v28);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = v42;
    (*(v16 + 32))(v42, v28, v15);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v38 = sub_251E71A08();
    __swift_project_value_buffer(v38, qword_27F4BD7F0);
    v36 = sub_251E719E8();
    v35 = v39;
    sub_251E6F1F0(v47);
    sub_251E6F1F0(v48);
    sub_251E6F1F0(v46);
    result = (*(v16 + 8))(v37, v15);
  }

  v40 = v45;
  *a4 = v44;
  a4[1] = v40;
  a4[2] = v30;
  a4[3] = v29;
  a4[4] = v36;
  a4[5] = v35;
  return result;
}

uint64_t sub_251E6F170(uint64_t a1, uint64_t a2)
{
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E6F1F0(uint64_t a1)
{
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall WalletPassDates.init(date:endDate:startDate:)(HealthRecordsWalletSupport::WalletPassDates *__return_ptr retstr, Swift::String_optional date, Swift::String_optional endDate, Swift::String_optional startDate)
{
  retstr->date = date;
  retstr->endDate = endDate;
  retstr->startDate = startDate;
}

uint64_t sub_251E6F278()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x7461447472617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_251E6F2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E71620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6F304(uint64_t a1)
{
  v2 = sub_251E6F594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6F340(uint64_t a1)
{
  v2 = sub_251E6F594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassDates.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD8D8, sub_251E6F594);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6F594();
  sub_251E71F68();
  v19 = 0;
  v14 = v16[5];
  sub_251E71DD8();
  if (!v14)
  {
    v18 = 1;
    sub_251E71DD8();
    v17 = 2;
    sub_251E71DD8();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_251E6F534(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_251E71E68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_251E6F594()
{
  result = qword_27F4BD8E0;
  if (!qword_27F4BD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8E0);
  }

  return result;
}

unint64_t sub_251E6F5EC()
{
  result = qword_27F4BD8E8;
  if (!qword_27F4BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8E8);
  }

  return result;
}

uint64_t sub_251E6F660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_251E6F6A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251E6F754(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_251E6F7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_251E6F848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_251E6F890(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_251E6F924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251E6F96C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_251E6F9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251E6FA3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_251E6FAAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251E6FB08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251E6FB98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_251E6FC28(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WalletPassField.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WalletPassField.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251E6FE38(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_251E6FEC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WalletPass.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WalletPass.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251E700DC()
{
  result = qword_27F4BD8F0;
  if (!qword_27F4BD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8F0);
  }

  return result;
}

unint64_t sub_251E70134()
{
  result = qword_27F4BD8F8;
  if (!qword_27F4BD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8F8);
  }

  return result;
}

unint64_t sub_251E7018C()
{
  result = qword_27F4BD900;
  if (!qword_27F4BD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD900);
  }

  return result;
}

unint64_t sub_251E701E4()
{
  result = qword_27F4BD908;
  if (!qword_27F4BD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD908);
  }

  return result;
}

unint64_t sub_251E7023C()
{
  result = qword_27F4BD910;
  if (!qword_27F4BD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD910);
  }

  return result;
}

unint64_t sub_251E70294()
{
  result = qword_27F4BD918;
  if (!qword_27F4BD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD918);
  }

  return result;
}

unint64_t sub_251E702EC()
{
  result = qword_27F4BD920;
  if (!qword_27F4BD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD920);
  }

  return result;
}

unint64_t sub_251E70344()
{
  result = qword_27F4BD928;
  if (!qword_27F4BD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD928);
  }

  return result;
}

unint64_t sub_251E7039C()
{
  result = qword_27F4BD930;
  if (!qword_27F4BD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD930);
  }

  return result;
}

unint64_t sub_251E703F4()
{
  result = qword_27F4BD938;
  if (!qword_27F4BD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD938);
  }

  return result;
}

unint64_t sub_251E7044C()
{
  result = qword_27F4BD940;
  if (!qword_27F4BD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD940);
  }

  return result;
}

unint64_t sub_251E704A4()
{
  result = qword_27F4BD948;
  if (!qword_27F4BD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD948);
  }

  return result;
}

unint64_t sub_251E704FC()
{
  result = qword_27F4BD950;
  if (!qword_27F4BD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD950);
  }

  return result;
}

unint64_t sub_251E70554()
{
  result = qword_27F4BD958;
  if (!qword_27F4BD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD958);
  }

  return result;
}

unint64_t sub_251E705AC()
{
  result = qword_27F4BD960;
  if (!qword_27F4BD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD960);
  }

  return result;
}

unint64_t sub_251E70604()
{
  result = qword_27F4BD968;
  if (!qword_27F4BD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD968);
  }

  return result;
}

unint64_t sub_251E7065C()
{
  result = qword_27F4BD970;
  if (!qword_27F4BD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD970);
  }

  return result;
}

unint64_t sub_251E706B4()
{
  result = qword_27F4BD978;
  if (!qword_27F4BD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD978);
  }

  return result;
}

uint64_t sub_251E70708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000251E741B0 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000251E741D0 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_251E71EB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974 || (sub_251E71EB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636E75614C707061 && a2 == 0xEC0000004C525568 || (sub_251E71EB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000251E741F0 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_251E71EB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_251E71EB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000251E74210 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C6F436C6562616CLL && a2 == 0xEA0000000000726FLL || (sub_251E71EB8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x747865546F676F6CLL && a2 == 0xE800000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x615068746C616568 && a2 == 0xEA00000000007373 || (sub_251E71EB8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7365646F63726162 && a2 == 0xE800000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_251E71EB8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251E74230 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x646564696F76 && a2 == 0xE600000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073 || (sub_251E71EB8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E6176656C6572 && a2 == 0xED00007365746144)
  {

    return 19;
  }

  else
  {
    v6 = sub_251E71EB8();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_251E70D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946726564616568 && a2 == 0xEC00000073646C65;
  if (v4 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x467972616D697270 && a2 == 0xED000073646C6569 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF73646C65694679 || (sub_251E71EB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xEF73646C65694679 || (sub_251E71EB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6569466B636162 && a2 == 0xEA00000000007364)
  {

    return 4;
  }

  else
  {
    v6 = sub_251E71EB8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_251E70F50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67696C4174786574 && a2 == 0xED0000746E656D6ELL || (sub_251E71EB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF65756C61566465 || (sub_251E71EB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251E74250 == a2 || (sub_251E71EB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74537265626D756ELL && a2 == 0xEB00000000656C79 || (sub_251E71EB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C79745365746164 && a2 == 0xE900000000000065 || (sub_251E71EB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065 || (sub_251E71EB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x547365726F6E6769 && a2 == 0xEF656E6F5A656D69 || (sub_251E71EB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974616C65527369 && a2 == 0xEA00000000006576 || (sub_251E71EB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 7827314 && a2 == 0xE300000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_251E71EB8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_251E71348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456567617373656DLL && a2 == 0xEF676E69646F636ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_251E71EB8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_251E714B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564757469746C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_251E71EB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6176656C6572 && a2 == 0xEC00000074786554)
  {

    return 3;
  }

  else
  {
    v6 = sub_251E71EB8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_251E71620(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_251E71EB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_251E71EB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_251E71EB8();

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

unint64_t sub_251E71740()
{
  result = qword_27F4BD980;
  if (!qword_27F4BD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD980);
  }

  return result;
}

void sub_251E71794(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251E71CB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}