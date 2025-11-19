uint64_t sub_255F8E90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_255F95990() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564756C657270 && a2 == 0xE700000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEC000000736E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_255F95990();

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

uint64_t sub_255F8EA30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_255F95990() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255F95990();

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

uint64_t sub_255F8EB44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_255F95990() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_255F95990() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255F95990();

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

uint64_t sub_255F8ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t sub_255F8ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }
}

uint64_t sub_255F8EDA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return result;
    }
  }

  return sub_255F8EE20(result, a2);
}

uint64_t sub_255F8EE20(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_255F8EE64@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_255F72F90(v2, v3, v4);
}

__n128 sub_255F8EE88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = a2;
  return result;
}

__n128 sub_255F8EEA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_255F8EEF0(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

uint64_t sub_255F8EF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_255F8EFB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_33LinkPresentationStyleSheetParsing11TokenParserV4NodeO5BlockVSg(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_255F8F0A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_255F8F0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_255F8F184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_255F8F1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_33LinkPresentationStyleSheetParsing0cD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_255F8F270(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255F8F2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_255F8F300(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

char *sub_255F8F32C(uint64_t a1, char a2)
{
  sub_255F7247C(&v47);
  v3 = v48;
  if (v48 >> 1 != 0xFFFFFFFF)
  {
    v24 = MEMORY[0x277D84F90];
    v5 = *(&v49 + 1);
    v6 = v49;
    v7 = *(&v48 + 1);
    v8 = *(&v47 + 1);
    while (1)
    {
      v9 = v47;
      if (v3 >> 60 == 2)
      {
        sub_255F72760();
        sub_255F8F7A8(a1, &v47);
        v39 = v51;
        v42 = v52;
        v45 = v53;
        v46 = v54;
        v27 = v47;
        v30 = v48;
        v33 = v49;
        v36 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_255F93320(0, *(v24 + 2) + 1, 1, v24);
        }

        v21 = *(v24 + 2);
        v20 = *(v24 + 3);
        if (v21 >= v20 >> 1)
        {
          v24 = sub_255F93320((v20 > 1), v21 + 1, 1, v24);
        }

        sub_255F75FA8(v9, v8, v3);
        *(v24 + 2) = v21 + 1;
        v22 = &v24[120 * v21];
        *(v22 + 4) = v33;
        *(v22 + 5) = v36;
        *(v22 + 2) = v27;
        *(v22 + 3) = v30;
        v22[144] = v46;
        *(v22 + 7) = v42;
        *(v22 + 8) = v45;
        *(v22 + 6) = v39;
        goto LABEL_7;
      }

      if (v3 >> 60 != 10)
      {
        break;
      }

      v10 = v7 | v8 | v6;
      if (v5 || v3 != 0xA000000000000000 || v47 != 9 || v10)
      {
        if ((v5 || v3 != 0xA000000000000000 || v47 != 10 || v10) && (v5 || v3 != 0xA000000000000000 || v47 != 11 || v10))
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          sub_255F72760();
          sub_255F8FF00(a1, &v47);
          v37 = v51;
          v40 = v52;
          v43 = v53;
          v25 = v47;
          v28 = v48;
          v31 = v49;
          v34 = v50;
          v11 = v54;
          if (v54 != 255)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_255F93320(0, *(v24 + 2) + 1, 1, v24);
            }

            v13 = *(v24 + 2);
            v12 = *(v24 + 3);
            if (v13 >= v12 >> 1)
            {
              v24 = sub_255F93320((v12 > 1), v13 + 1, 1, v24);
            }

            *(v24 + 2) = v13 + 1;
            v14 = &v24[120 * v13];
            *(v14 + 3) = v28;
            *(v14 + 4) = v31;
            *(v14 + 2) = v25;
            *(v14 + 7) = v40;
            *(v14 + 8) = v43;
            *(v14 + 5) = v34;
            *(v14 + 6) = v37;
            v14[144] = v11;
          }
        }
      }

LABEL_7:
      sub_255F7247C(&v47);
      v8 = *(&v47 + 1);
      v7 = *(&v48 + 1);
      v3 = v48;
      v5 = *(&v49 + 1);
      v6 = v49;
      if (v48 >> 1 == 0xFFFFFFFF)
      {
        return v24;
      }
    }

    sub_255F72760();
    v15 = a1;
    sub_255F8FF00(a1, &v47);
    v38 = v51;
    v41 = v52;
    v44 = v53;
    v26 = v47;
    v29 = v48;
    v32 = v49;
    v35 = v50;
    v16 = v54;
    if (v54 == 255)
    {
      sub_255F75FA8(v9, v8, v3);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_255F93320(0, *(v24 + 2) + 1, 1, v24);
      }

      v18 = *(v24 + 2);
      v17 = *(v24 + 3);
      if (v18 >= v17 >> 1)
      {
        v24 = sub_255F93320((v17 > 1), v18 + 1, 1, v24);
      }

      sub_255F75FA8(v9, v8, v3);
      *(v24 + 2) = v18 + 1;
      v19 = &v24[120 * v18];
      *(v19 + 3) = v29;
      *(v19 + 4) = v32;
      *(v19 + 2) = v26;
      *(v19 + 7) = v41;
      *(v19 + 8) = v44;
      *(v19 + 5) = v35;
      *(v19 + 6) = v38;
      v19[144] = v16;
    }

    a1 = v15;
    goto LABEL_7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_255F8F7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255F7247C(&v66);
  if (v67 >> 1 == 0xFFFFFFFF)
  {
    sub_255F796F4();
    swift_allocError();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 4;
    return swift_willThrow();
  }

  else
  {
    v36 = a2;
    v37 = v66;
    v38 = *(&v67 + 1);
    v39 = v68;
    v40 = v67;
    v41 = *(&v68 + 1);
    result = sub_255F7247C(&v66);
    v6 = v67;
    if (v67 >> 1 == 0xFFFFFFFF)
    {
      v49 = MEMORY[0x277D84F90];
LABEL_38:
      LOBYTE(v66) = 1;
      *v36 = v37;
      *(v36 + 16) = v40;
      *(v36 + 24) = v38;
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      *(v36 + 48) = v49;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      *(v36 + 72) = 0x1FFFFFFFELL;
      *(v36 + 80) = 0u;
      *(v36 + 96) = 0u;
      *(v36 + 112) = 1;
    }

    else
    {
      v73 = *(&v68 + 1);
      v50 = v68;
      v7 = *(&v67 + 1);
      v8 = *(&v66 + 1);
      v49 = MEMORY[0x277D84F90];
      sub_255F93440();
      v44 = a1;
      while (1)
      {
        v9 = v66;
        *(&v66 + 1) = v8;
        *&v67 = v6;
        *(&v67 + 1) = v7;
        *&v68 = v50;
        *(&v68 + 1) = v73;
        v70 = xmmword_255F96040;
        v71 = 0xA000000000000000;
        v72 = 0uLL;
        if (sub_255F95430())
        {
          result = sub_255F75FA8(v9, v8, v6);
          goto LABEL_38;
        }

        if (v6 >> 60 == 10 && v9 == 19 && !v8 && v6 == 0xA000000000000000 && !(v50 | v7 | v73))
        {
          break;
        }

        v46 = v9;
        sub_255F72760();
        sub_255F7247C(&v66);
        v10 = v67;
        if (v67 >> 1 == 0xFFFFFFFF)
        {
          sub_255F75FA8(v37, *(&v37 + 1), v40);
          sub_255F796F4();
          swift_allocError();
          *v26 = 0u;
          *(v26 + 16) = 0u;
          *(v26 + 32) = 4;
          swift_willThrow();
          v27 = v46;
          v28 = v8;
          v29 = v6;
LABEL_43:
          sub_255F75FA8(v27, v28, v29);
        }

        v11 = *(&v66 + 1);
        v12 = v66;
        v13 = *(&v68 + 1);
        v45 = v8;
        if (v67 >> 60 == 1)
        {
          v70 = v66;
          v71 = v67;
          v72 = v68;
          sub_255F91DFC(a1, &v70, &v66);
          sub_255F75FA8(v12, v11, v10);
          v11 = *(&v66 + 1);
          v12 = v66;
          v13 = *(&v68 + 1);
          v47 = v68;
          v48 = *(&v67 + 1);
          v15 = v69;
          v10 = v67 | 0x800000000000000;
        }

        else
        {
          v47 = v68;
          v48 = *(&v67 + 1);
          if (v67 >> 60 == 10)
          {
            v14 = *(&v67 + 1) | *(&v66 + 1) | v68;
            if (!*(&v68 + 1) && v67 == 0xA000000000000000 && v66 == 15 && !v14 || !*(&v68 + 1) && v67 == 0xA000000000000000 && v66 == 17 && !v14 || (v15 = 0, !*(&v68 + 1)) && v67 == 0xA000000000000000 && v66 == 19 && !v14)
            {
              v70 = v66;
              *&v71 = 0xA000000000000000;
              *(&v71 + 1) = *(&v67 + 1);
              v72 = v68;
              v16 = *(&v66 + 1);
              v43 = v66;
              v17 = *(&v67 + 1);
              v18 = v68;
              sub_255F7E470(&v61);
              v19 = v62;
              if (v62 >> 1 == 0xFFFFFFFF)
              {
                sub_255F75FA8(v37, *(&v37 + 1), v40);
                sub_255F796F4();
                swift_allocError();
                *v32 = sub_255F91DE0;
                *(v32 + 8) = 0;
                *(v32 + 16) = 0;
                *(v32 + 24) = 0;
                *(v32 + 32) = 3;
                swift_willThrow();
                sub_255F75FA8(v46, v45, v6);
                v27 = v43;
                v28 = v16;
                v29 = 0xA000000000000000;
                goto LABEL_43;
              }

              v42 = v16;
              v20 = v16;
              v21 = *(&v61 + 1);
              v22 = v61;
              v70 = __PAIR128__(v20, v43);
              *&v71 = 0xA000000000000000;
              *(&v71 + 1) = v17;
              v72 = v18;
              sub_255F919DC(v44, &v70, &v61, &v66);
              sub_255F75FA8(v22, v21, v19);
              sub_255F75FA8(v43, v42, 0xA000000000000000);
              v11 = *(&v66 + 1);
              v12 = v66;
              v13 = *(&v68 + 1);
              v47 = v68;
              v48 = *(&v67 + 1);
              v15 = v69;
              v10 = v67 | 0x400000000000000;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_255F931F8(0, *(v49 + 2) + 1, 1, v49);
        }

        v24 = *(v49 + 2);
        v23 = *(v49 + 3);
        if (v24 >= v23 >> 1)
        {
          v49 = sub_255F931F8((v23 > 1), v24 + 1, 1, v49);
        }

        sub_255F75FA8(v46, v45, v6);
        *(v49 + 2) = v24 + 1;
        v25 = &v49[56 * v24];
        *(v25 + 4) = v12;
        *(v25 + 5) = v11;
        *(v25 + 6) = v10;
        *(v25 + 7) = v48;
        *(v25 + 8) = v47;
        *(v25 + 9) = v13;
        *(v25 + 10) = v15;
        a1 = v44;
        result = sub_255F7247C(&v66);
        v8 = *(&v66 + 1);
        v7 = *(&v67 + 1);
        v6 = v67;
        v73 = *(&v68 + 1);
        v50 = v68;
        if (v67 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_38;
        }
      }

      v70 = xmmword_255F96080;
      *&v71 = 0xA000000000000000;
      *(&v71 + 1) = v7;
      *&v72 = v50;
      *(&v72 + 1) = v73;
      sub_255F7E470(&v61);
      v30 = v62;
      if (v62 >> 1 == 0xFFFFFFFF)
      {
        sub_255F796F4();
        swift_allocError();
        *v31 = sub_255F91DE0;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        *(v31 + 32) = 3;
        swift_willThrow();
        v28 = *(&v37 + 1);
        v27 = v37;
        v29 = v40;
        goto LABEL_43;
      }

      v33 = v61;
      v56 = xmmword_255F96080;
      v57 = 0xA000000000000000;
      v58 = v7;
      v59 = v50;
      v60 = v73;
      v51 = v61;
      v52 = v62;
      v53 = v63;
      v54 = v64;
      v55 = v65;
      sub_255F919DC(a1, &v56, &v51, &v66);
      result = sub_255F75FA8(v33, *(&v33 + 1), v30);
      v34 = v67;
      *(v36 + 56) = v66;
      v35 = v69;
      *v36 = v37;
      *(v36 + 16) = v40;
      *(v36 + 24) = v38;
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      *(v36 + 48) = v49;
      *(v36 + 72) = v34;
      *(v36 + 88) = v68;
      *(v36 + 104) = v35;
      *(v36 + 112) = 1;
    }
  }

  return result;
}

double sub_255F8FF00@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_255F953D0();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_255F7247C(&v84);
  v6 = *v85;
  if (*v85 >> 1 == 0xFFFFFFFFLL)
  {
    v67 = MEMORY[0x277D84F90];
LABEL_3:

    v7 = sub_255F94E10();
    v9 = v53;
    v8 = v54;
    v10 = v55;
    (*(v54 + 16))(v53, v7, v55);
    v11 = sub_255F953B0();
    v12 = sub_255F95690();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_255F70000, v11, v12, "Reached unexpected EOF while consuming qualified rule", v13, 2u);
      MEMORY[0x259C548D0](v13, -1, -1);
    }

    (*(v8 + 8))(v9, v10);
LABEL_6:
    v14 = 0uLL;
    v15 = v56;
LABEL_52:
    *(v15 + 5) = v14;
    *(v15 + 6) = v14;
    *(v15 + 3) = v14;
    *(v15 + 4) = v14;
    *(v15 + 1) = v14;
    *(v15 + 2) = v14;
    *v15 = v14;
    *(v15 + 112) = -1;
  }

  else
  {
    v16 = *&v85[8];
    v66 = *&v85[24];
    v67 = MEMORY[0x277D84F90];
    v17 = *(&v84 + 1);
    while (1)
    {
      v18 = vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0] | v66;
      v19 = v6 >> 60 == 10 && v84 == 19;
      v20 = v19 && v17 == 0;
      v21 = v20 && v6 == 0xA000000000000000;
      v22 = v21 && v18 == 0;
      v63 = v16;
      if (v22)
      {
        break;
      }

      v62 = v84;
      sub_255F72760();
      sub_255F7247C(&v84);
      v23 = *v85;
      if (*v85 >> 1 == 0xFFFFFFFFLL)
      {
        v43 = v62;
        v44 = v17;
        v45 = v6;
LABEL_51:
        sub_255F75FA8(v43, v44, v45);

        v15 = v56;
        v14 = 0uLL;
        goto LABEL_52;
      }

      v25 = *(&v84 + 1);
      v24 = v84;
      v26 = *&v85[8];
      v27 = *&v85[16];
      v61 = v17;
      if (*v85 >> 60 == 1)
      {
        v82 = v84;
        *v83 = *v85;
        *&v83[16] = *&v85[16];
        sub_255F91DFC(v65, &v82, &v84);
        sub_255F75FA8(v24, v25, v23);
        v25 = *(&v84 + 1);
        v24 = v84;
        *&v64 = *&v85[8];
        v60 = *&v85[24];
        v27 = *&v85[16];
        v29 = v86;
        v23 = *v85 | 0x800000000000000;
      }

      else
      {
        *&v64 = *&v85[8];
        if (*v85 >> 60 == 10)
        {
          v28 = *&v85[8] | *(&v84 + 1) | *&v85[16];
          if ((*&v85[24] || *v85 != 0xA000000000000000 || v84 != 15 || v28) && (*&v85[24] || *v85 != 0xA000000000000000 || v84 != 17 || v28) && ((v29 = 0, *&v85[24]) || *v85 != 0xA000000000000000 || v84 != 19 || v28))
          {
            v60 = *&v85[24];
          }

          else
          {
            v82 = v84;
            *v83 = 0xA000000000000000;
            *&v83[8] = *&v85[8];
            *&v83[16] = *&v85[16];
            sub_255F7E470(&v77);
            v30 = v78;
            if (v78 >> 1 == 0xFFFFFFFF)
            {
              sub_255F75FA8(v62, v61, v6);
              v43 = v24;
              v44 = v25;
              v45 = 0xA000000000000000;
              goto LABEL_51;
            }

            v31 = v26;
            v60 = v80;
            v57 = v25;
            v58 = v24;
            v32 = v25;
            v33 = *(&v77 + 1);
            v34 = v77;
            *&v82 = v24;
            *(&v82 + 1) = v32;
            *v83 = 0xA000000000000000;
            *&v83[8] = v31;
            v59 = v27;
            *&v83[16] = v27;
            sub_255F919DC(v65, &v82, &v77, &v84);
            sub_255F75FA8(v34, v33, v30);
            sub_255F75FA8(v58, v57, 0xA000000000000000);
            v25 = *(&v84 + 1);
            v24 = v84;
            *&v64 = *&v85[8];
            v60 = *&v85[24];
            v27 = *&v85[16];
            v29 = v86;
            v23 = *v85 | 0x400000000000000;
          }
        }

        else
        {
          v60 = *&v85[24];
          v29 = 0;
        }
      }

      v35 = v25;
      v36 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_255F931F8(0, *(v67 + 2) + 1, 1, v67);
      }

      v38 = *(v67 + 2);
      v37 = *(v67 + 3);
      if (v38 >= v37 >> 1)
      {
        v67 = sub_255F931F8((v37 > 1), v38 + 1, 1, v67);
      }

      sub_255F75FA8(v62, v61, v6);
      v39 = v67;
      *(v67 + 2) = v38 + 1;
      v40 = &v39[56 * v38];
      *(v40 + 4) = v36;
      *(v40 + 5) = v35;
      v41 = v64;
      *(v40 + 6) = v23;
      *(v40 + 7) = v41;
      v42 = v60;
      *(v40 + 8) = v27;
      *(v40 + 9) = v42;
      *(v40 + 10) = v29;
      sub_255F7247C(&v84);
      v17 = *(&v84 + 1);
      v6 = *v85;
      v16 = *&v85[8];
      v66 = *&v85[24];
      if (*v85 >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_3;
      }
    }

    v64 = xmmword_255F96080;
    v82 = xmmword_255F96080;
    *&v83[8] = v16;
    *v83 = 0xA000000000000000;
    *&v83[24] = v66;
    sub_255F7E470(&v77);
    v46 = v78;
    if (v78 >> 1 == 0xFFFFFFFF)
    {

      goto LABEL_6;
    }

    v47 = v77;
    v73 = v64;
    v74 = 0xA000000000000000;
    v75 = v63;
    v76 = v66;
    v68 = v77;
    v69 = v78;
    v70 = v79;
    v71 = v80;
    v72 = v81;
    sub_255F919DC(v65, &v73, &v68, &v84);
    sub_255F75FA8(v47, *(&v47 + 1), v46);
    v48 = v86;
    v49 = v56;
    *v56 = v67;
    v50 = *v85;
    *(v49 + 1) = v84;
    *(v49 + 3) = v50;
    *&v14 = *&v85[16];
    *(v49 + 5) = *&v85[16];
    v49[7] = v48;
    *(v49 + 112) = 0;
  }

  return *&v14;
}

char *sub_255F90548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_255F953D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a1;
  sub_255F7247C(&v118);
  v10 = *v119;
  if (*v119 >> 1 == 0xFFFFFFFFLL)
  {
    return MEMORY[0x277D84F90];
  }

  v100 = v8;
  v97 = v4;
  v83 = v2;
  v84 = 0;
  v13 = *&v119[24];
  v12 = *&v119[16];
  v14 = *&v119[8];
  v15 = *(&v118 + 1);
  v93 = (v5 + 8);
  v94 = (v5 + 16);
  *&v9 = 136315138;
  v91 = v9;
  v105 = xmmword_255F95FA0;
  v82 = xmmword_255F96910;
  v86 = xmmword_255F96040;
  v87 = MEMORY[0x277D84F90];
  v16 = v95;
  while (1)
  {
    v23 = v118;
    v24 = v10 >> 60;
    if (v10 >> 60 == 10)
    {
      v36 = v14 | v15 | v12;
      if (!v13 && v10 == 0xA000000000000000 && v118 == 9 && v36 == 0)
      {
        goto LABEL_8;
      }

      if (!v13 && v10 == 0xA000000000000000 && v118 == 13 && !v36)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    if (v24)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B488, &unk_255F95F90);
    v58 = swift_allocObject();
    *(v58 + 16) = v82;
    *(v58 + 32) = v23;
    *(v58 + 40) = v15;
    *(v58 + 48) = v10;
    *(v58 + 56) = v14;
    *(v58 + 64) = v12;
    *(v58 + 72) = v13;
    *&v92 = v58;
    v101 = v23;
    v102 = v15;
    v103 = v14;
    v104 = v12;
    sub_255F72F90(v23, v15, v10);
    sub_255F7247C(&v118);
    v59 = *v119;
    if (*v119 >> 1 != 0xFFFFFFFFLL)
    {
      *&v96 = *&v119[24];
      v60 = *&v119[16];
      v61 = *&v119[8];
      v62 = *(&v118 + 1);
      v85 = sub_255F93440();
      while (1)
      {
        v63 = v118;
        *(&v118 + 1) = v62;
        v88 = v62;
        v89 = v59;
        *v119 = v59;
        *&v119[8] = v61;
        v90 = v61;
        v64 = v60;
        *&v119[16] = v60;
        *&v119[24] = v96;
        v110 = v86;
        v111 = 0xA000000000000000;
        v112 = 0uLL;
        if (sub_255F95430())
        {
          break;
        }

        v65 = v92;
        v67 = *(v92 + 16);
        v66 = *(v92 + 24);
        if (v67 >= v66 >> 1)
        {
          v65 = sub_255F75E88((v66 > 1), v67 + 1, 1, v92);
        }

        *(v65 + 2) = v67 + 1;
        *&v92 = v65;
        v68 = &v65[48 * v67];
        v69 = v88;
        v70 = v89;
        *(v68 + 4) = v63;
        *(v68 + 5) = v69;
        v71 = v90;
        *(v68 + 6) = v70;
        *(v68 + 7) = v71;
        v72 = v96;
        *(v68 + 8) = v64;
        *(v68 + 9) = v72;
        sub_255F7247C(&v118);
        v62 = *(&v118 + 1);
        v61 = *&v119[8];
        v59 = *v119;
        *&v96 = *&v119[24];
        v60 = *&v119[16];
        if (*v119 >> 1 == 0xFFFFFFFFLL)
        {
          goto LABEL_6;
        }
      }

      sub_255F75FA8(v63, v88, v89);
    }

LABEL_6:
    nullsub_1(v92);
    v17 = sub_255F7276C();
    v19 = v18;
    v21 = v20;

    *&v106 = v17;
    *(&v106 + 1) = v19;
    LOWORD(v107) = v21 & 0x101;
    v22 = v84;
    sub_255F90E74(&v106, &v118);
    if (!v22)
    {
      v84 = 0;

      v109[0] = v118;
      v73 = *v119;
      v110 = *&v119[8];
      v111 = *&v119[24];
      LOBYTE(v112) = v119[40];
      if (*v119 >> 1 != 0xFFFFFFFFLL)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_255F93494(0, *(v87 + 2) + 1, 1, v87);
        }

        v75 = *(v87 + 2);
        v74 = *(v87 + 3);
        if (v75 >= v74 >> 1)
        {
          v87 = sub_255F93494((v74 > 1), v75 + 1, 1, v87);
        }

        sub_255F75FA8(v101, v102, v10);
        v76 = v87;
        *(v87 + 2) = v75 + 1;
        v77 = &v76[64 * v75];
        *(v77 + 2) = v109[0];
        *(v77 + 6) = v73;
        v78 = v110;
        v79 = v111;
        v77[88] = v112;
        *(v77 + 72) = v79;
        *(v77 + 56) = v78;
        goto LABEL_8;
      }

      v41 = v101;
      v42 = v102;
      v43 = v10;
      goto LABEL_30;
    }

    MEMORY[0x259C547B0](v22);
    sub_255F75FA8(v101, v102, v10);

    v84 = 0;
LABEL_8:
    sub_255F7247C(&v118);
    v15 = *(&v118 + 1);
    v14 = *&v119[8];
    v10 = *v119;
    v13 = *&v119[24];
    v12 = *&v119[16];
    if (*v119 >> 1 == 0xFFFFFFFFLL)
    {
      return v87;
    }
  }

  if (v24 != 2)
  {
LABEL_12:
    v25 = sub_255F94E10();
    v26 = v97;
    (*v94)(v100, v25, v97);
    sub_255F72F90(v23, v15, v10);
    v27 = sub_255F953B0();
    v28 = v13;
    v29 = sub_255F95690();
    sub_255F75FA8(v23, v15, v10);
    LODWORD(v96) = v29;
    v30 = os_log_type_enabled(v27, v29);
    v98 = v28;
    v99 = v10;
    v103 = v14;
    v104 = v12;
    v101 = v23;
    v102 = v15;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *&v92 = swift_slowAlloc();
      *&v110 = v92;
      *v31 = v91;
      *&v118 = v23;
      *(&v118 + 1) = v15;
      *v119 = v10;
      *&v119[8] = v14;
      *&v119[16] = v12;
      *&v119[24] = v28;
      sub_255F72F90(v23, v15, v10);
      v32 = sub_255F95440();
      v34 = sub_255F935A0(v32, v33, &v110);

      *(v31 + 4) = v34;
      _os_log_impl(&dword_255F70000, v27, v96, "Could not parse token while consuming list of declarations: current token %s not of valid type.", v31, 0xCu);
      v35 = v92;
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x259C548D0](v35, -1, -1);
      MEMORY[0x259C548D0](v31, -1, -1);

      (*v93)(v100, v97);
    }

    else
    {

      (*v93)(v100, v26);
    }

    v16 = v95;
    do
    {
      sub_255F7247C(&v118);
      v38 = *v119;
      if (*v119 >> 1 == 0xFFFFFFFFLL)
      {
        break;
      }

      v39 = v118;
      v110 = v105;
      *&v111 = 0xA000000000000000;
      sub_255F93440();
      v112 = 0uLL;
      *(&v111 + 1) = 0;
      v40 = sub_255F95430();
      sub_255F75FA8(v39, *(&v39 + 1), v38);
    }

    while ((v40 & 1) == 0);
    v41 = v101;
    v42 = v102;
    v43 = v99;
LABEL_30:
    sub_255F75FA8(v41, v42, v43);
    goto LABEL_8;
  }

  v101 = v118;
  v102 = v15;
  v103 = v14;
  v44 = v84;
  sub_255F8F7A8(v16, &v118);
  if (v44)
  {
    MEMORY[0x259C547B0](v44);
    goto LABEL_56;
  }

  v104 = v12;
  v84 = 0;
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v117 = v123;
  v110 = v118;
  v111 = *v119;
  v112 = *&v119[16];
  v113 = *&v119[32];
  if (v123)
  {
    v45 = *(&v114 + 1);
    v89 = v115;
    v90 = v114;
    v88 = *(&v115 + 1);
    v46 = *(&v116 + 1);
    v85 = v116;
    v47 = *(&v113 + 1);
    v48 = v112;
    v96 = v110;
    v92 = v111;

    v109[0] = v96;
    v109[1] = v92;
    v49 = MEMORY[0x277D84F90];
    v109[2] = v48;
    if (v45 >> 1 != 0xFFFFFFFF)
    {

      sub_255F79ED4(v47, v90, v45);
      v49 = v46;
    }

    sub_255F8EEA8(v109, v49, 0, &v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_255F93494(0, *(v87 + 2) + 1, 1, v87);
    }

    v51 = *(v87 + 2);
    v50 = *(v87 + 3);
    v52 = v102;
    if (v51 >= v50 >> 1)
    {
      v80 = v102;
      v81 = sub_255F93494((v50 > 1), v51 + 1, 1, v87);
      v52 = v80;
      v87 = v81;
    }

    sub_255F75FA8(v101, v52, v10);
    v53 = v87;
    *(v87 + 2) = v51 + 1;
    v54 = &v53[64 * v51];
    v55 = v106;
    v56 = v107;
    v57 = v108[0];
    *(v54 + 73) = *(v108 + 9);
    *(v54 + 3) = v56;
    *(v54 + 4) = v57;
    *(v54 + 2) = v55;
    goto LABEL_8;
  }

  sub_255F93AD4(&v110);
LABEL_56:
  result = sub_255F95840();
  __break(1u);
  return result;
}

void sub_255F90E74(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_255F953D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F7247C(&v59);
  if (v60 >> 1 == 0xFFFFFFFF)
  {
    sub_255F796F4();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 4;
    swift_willThrow();
    return;
  }

  v48 = v60;
  v52 = v9;
  v51 = v6;
  v53 = v5;
  v49 = a2;
  v50 = v2;
  v45 = v59;
  v46 = *(&v60 + 1);
  v47 = v61[0];
  v66 = a1;
  sub_255F72760();
  v54 = xmmword_255F95FA0;
  do
  {
    sub_255F7247C(&v59);
    v11 = v60;
    if (v60 >> 1 == 0xFFFFFFFF)
    {
      break;
    }

    v12 = v59;
    v62 = v54;
    v63 = 0xA000000000000000;
    v65 = 0;
    v64 = 0uLL;
    v13 = static Token.== infix(_:_:)(&v59, &v62);
    sub_255F75FA8(v12, *(&v12 + 1), v11);
  }

  while ((v13 & 1) != 0);
  sub_255F7247C(&v59);
  v14 = v59;
  v15 = v60;
  v16 = v61[0];
  if (v60 >> 1 == 0xFFFFFFFF)
  {
    sub_255F93B28(v59, *(&v59 + 1), v60);
    sub_255F75FA8(v45, *(&v45 + 1), v48);
    sub_255F75FA8(v14, *(&v14 + 1), v15);
    sub_255F75FA8(12, 0, 0xA000000000000000);
    v17 = v53;
    v18 = v51;
LABEL_13:
    v24 = sub_255F94E10();
    (*(v18 + 16))(v52, v24, v17);
    sub_255F93B28(v14, *(&v14 + 1), v15);
    v25 = sub_255F953B0();
    v26 = sub_255F95690();
    sub_255F75FA8(v14, *(&v14 + 1), v15);
    LODWORD(v66) = v26;
    v27 = v26;
    v28 = v25;
    if (os_log_type_enabled(v25, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v62 = v30;
      *v29 = 136315138;
      v59 = v14;
      v60 = v15;
      v61[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B898, &qword_255F99DD0);
      v31 = sub_255F95440();
      v33 = sub_255F935A0(v31, v32, &v62);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_255F70000, v28, v66, "Could not consume declaration: current token %s not a colon.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x259C548D0](v30, -1, -1);
      MEMORY[0x259C548D0](v29, -1, -1);

      (*(v51 + 8))(v52, v53);
    }

    else
    {
      sub_255F75FA8(v14, *(&v14 + 1), v15);

      (*(v18 + 8))(v52, v53);
    }

    v34 = v49;
    *v49 = 0;
    v34[1] = 0;
    v34[2] = 0x1FFFFFFFELL;
    *(v34 + 3) = 0u;
    *(v34 + 5) = 0u;
    *(v34 + 56) = 0;
    return;
  }

  v62 = xmmword_255F96030;
  v63 = 0xA000000000000000;
  v64 = 0uLL;
  v65 = 0;
  sub_255F93B28(v59, *(&v59 + 1), v60);
  sub_255F93B28(v14, *(&v14 + 1), v15);
  sub_255F93440();
  v19 = sub_255F95430();
  sub_255F726E0(v62, *(&v62 + 1), v63);
  sub_255F726E0(v59, *(&v59 + 1), v60);
  sub_255F75FA8(v14, *(&v14 + 1), v15);
  v17 = v53;
  v18 = v51;
  if ((v19 & 1) == 0)
  {
    sub_255F75FA8(v45, *(&v45 + 1), v48);
    goto LABEL_13;
  }

  sub_255F75FA8(v14, *(&v14 + 1), v15);
  sub_255F7247C(&v62);
  v20 = v63;
  if (v63 >> 1 == 0xFFFFFFFF)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = v64;
    v21 = MEMORY[0x277D84F90];
    v36 = v65;
    v37 = *(&v62 + 1);
    do
    {
      v54 = v35;
      v38 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_255F931F8(0, *(v21 + 2) + 1, 1, v21);
      }

      v40 = *(v21 + 2);
      v39 = *(v21 + 3);
      v41 = v54;
      if (v40 >= v39 >> 1)
      {
        v43 = sub_255F931F8((v39 > 1), v40 + 1, 1, v21);
        v41 = v54;
        v21 = v43;
      }

      *(v21 + 2) = v40 + 1;
      v42 = &v21[56 * v40];
      *(v42 + 4) = v38;
      *(v42 + 5) = v37;
      *(v42 + 6) = v20;
      *(v42 + 9) = v36;
      *(v42 + 10) = 0;
      *(v42 + 56) = v41;
      sub_255F7247C(&v62);
      v37 = *(&v62 + 1);
      v20 = v63;
      v35 = v64;
      v36 = v65;
    }

    while (v63 >> 1 != 0xFFFFFFFF);
  }

  v55 = v45;
  v56 = v48;
  v57 = v46;
  v58 = v47;
  sub_255F8EEA8(&v55, v21, 0, &v59);
  v22 = v60;
  v23 = v49;
  *v49 = v59;
  v23[1] = v22;
  v23[2] = v61[0];
  *(v23 + 41) = *(v61 + 9);
}

uint64_t sub_255F915D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v18 = *a2;
  v19 = v3;
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  sub_255F7E470(&v16);
  v9 = v17;
  if (v17 >> 1 == 0xFFFFFFFF)
  {
    sub_255F796F4();
    swift_allocError();
    *v10 = sub_255F91DE0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 3;
    return swift_willThrow();
  }

  else
  {
    v12 = v16;
    v18 = v4;
    v19 = v3;
    v20 = v5;
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v13 = *(&v16 + 1);
    sub_255F919DC(a1, &v18, &v16, a3);
    return sub_255F75FA8(v12, v13, v9);
  }
}

uint64_t sub_255F91714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255F7247C(&v26);
  v6 = v27;
  if (v27 >> 1 == 0xFFFFFFFF)
  {
    sub_255F796F4();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 4;
    return swift_willThrow();
  }

  v31 = v2;
  v8 = v26;
  v9 = v28;
  v10 = v29;
  if (v27 >> 60 == 1)
  {
    v22 = v26;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_255F91DFC(a1, &v22, &v26);
    result = sub_255F75FA8(v8, *(&v8 + 1), v6);
    v13 = v29;
    v14 = v30;
    v15 = v27 | 0x800000000000000;
  }

  else
  {
    if (v27 >> 60 != 10 || ((v11 = v28 | *(&v26 + 1) | *(&v28 + 1), v29) || v27 != 0xA000000000000000 || v26 != 15 || v11) && (v29 || v27 != 0xA000000000000000 || v26 != 17 || v11) && (v29 || v27 != 0xA000000000000000 || v26 != 19 || v11))
    {
      *a2 = v26;
      *(a2 + 8) = *(&v8 + 1);
      *(a2 + 16) = v6;
      *(a2 + 24) = v9;
      *(a2 + 40) = v10;
      *(a2 + 48) = 0;
      return result;
    }

    v22 = v26;
    v23 = 0xA000000000000000;
    v24 = v28;
    v25 = 0;
    v19 = *(&v28 + 1);
    sub_255F7E470(&v20);
    if (v21 >> 1 == 0xFFFFFFFF)
    {
      sub_255F796F4();
      swift_allocError();
      *v12 = sub_255F91DE0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 3;
      swift_willThrow();
      return sub_255F75FA8(v8, *(&v8 + 1), 0xA000000000000000);
    }

    v17 = v21;
    v18 = v20;
    v22 = v8;
    v23 = 0xA000000000000000;
    *&v24 = v9;
    *(&v24 + 1) = v19;
    v25 = 0;
    sub_255F919DC(a1, &v22, &v20, &v26);
    sub_255F75FA8(v18, *(&v18 + 1), v17);
    result = sub_255F75FA8(v8, *(&v8 + 1), 0xA000000000000000);
    v13 = v29;
    v14 = v30;
    v15 = v27 | 0x400000000000000;
  }

  v16 = v28;
  *a2 = v26;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

double sub_255F919DC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v33 = a2[5];
  v34 = a2[4];
  v38 = *a3;
  v39 = a3[1];
  v36 = *(a3 + 5);
  v37 = *(a3 + 4);
  sub_255F7247C(&v42);
  v10 = v43;
  if (v43 >> 1 != 0xFFFFFFFF)
  {
    v35 = MEMORY[0x277D84F90];
    sub_255F93440();
    v31 = v6;
    v32 = a4;
    v29 = v8;
    v30 = v7;
    v28 = v9;
    while (1)
    {
      v12 = v42;
      *&v43 = v10;
      v48 = v39;
      v47 = v38;
      v49 = v37;
      v50 = v36;
      v13 = sub_255F95430();
      sub_255F75FA8(v12, *(&v12 + 1), v10);
      if (v13)
      {
LABEL_33:
        v6 = v31;
        a4 = v32;
        v8 = v29;
        v7 = v30;
        v9 = v28;
        goto LABEL_34;
      }

      sub_255F72760();
      sub_255F7247C(&v42);
      v14 = v43;
      if (v43 >> 1 == 0xFFFFFFFF)
      {
        goto LABEL_6;
      }

      v16 = *(&v42 + 1);
      v15 = v42;
      v17 = *(&v43 + 1);
      v18 = v44;
      v19 = v45;
      if (v43 >> 60 == 10)
      {
        v20 = *(&v43 + 1) | *(&v42 + 1) | v44;
        if ((v45 || v43 != 0xA000000000000000 || v42 != 15 || v20) && (v45 || v43 != 0xA000000000000000 || v42 != 17 || v20) && (v45 || v43 != 0xA000000000000000 || v42 != 19 || v20))
        {
LABEL_25:
          v27 = 0;
          goto LABEL_27;
        }

        v47 = v42;
        *&v48 = 0xA000000000000000;
        *(&v48 + 1) = *(&v43 + 1);
        v49 = v44;
        v50 = 0;
        sub_255F7E470(v40);
        v11 = v41;
        if (v41 >> 1 != 0xFFFFFFFF)
        {
          v25 = v40[0];
          v26 = v40[1];
          *&v47 = v15;
          *(&v47 + 1) = v16;
          *&v48 = 0xA000000000000000;
          *(&v48 + 1) = v17;
          v49 = v18;
          v50 = 0;
          sub_255F919DC(&v42, a1, &v47, v40);
          sub_255F75FA8(v25, v26, v11);
          sub_255F75FA8(v15, v16, 0xA000000000000000);
          v16 = *(&v42 + 1);
          v15 = v42;
          v17 = *(&v43 + 1);
          v18 = v44;
          v19 = v45;
          v27 = v46;
          v14 = v43 | 0x400000000000000;
          goto LABEL_27;
        }

        sub_255F75FA8(v15, v16, 0xA000000000000000);
LABEL_6:
        sub_255F7247C(&v42);
        v10 = v43;
        if (v43 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v43 >> 60 != 1)
        {
          goto LABEL_25;
        }

        v47 = v42;
        v48 = v43;
        v49 = v44;
        v50 = v45;
        sub_255F91DFC(a1, &v47, &v42);
        sub_255F75FA8(v15, v16, v14);
        v16 = *(&v42 + 1);
        v15 = v42;
        v17 = *(&v43 + 1);
        v18 = v44;
        v19 = v45;
        v27 = v46;
        v14 = v43 | 0x800000000000000;
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_255F931F8(0, *(v35 + 2) + 1, 1, v35);
        }

        v22 = *(v35 + 2);
        v21 = *(v35 + 3);
        if (v22 >= v21 >> 1)
        {
          v35 = sub_255F931F8((v21 > 1), v22 + 1, 1, v35);
        }

        *(v35 + 2) = v22 + 1;
        v23 = &v35[56 * v22];
        *(v23 + 4) = v15;
        *(v23 + 5) = v16;
        *(v23 + 6) = v14;
        *(v23 + 7) = v17;
        *(v23 + 8) = v18;
        *(v23 + 9) = v19;
        *(v23 + 10) = v27;
        sub_255F7247C(&v42);
        v10 = v43;
        v6 = v31;
        a4 = v32;
        v8 = v29;
        v7 = v30;
        v9 = v28;
        if (v43 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_34:
  *&v42 = v6;
  *(&v42 + 1) = v7;
  *&v43 = v8;
  *(&v43 + 1) = v9;
  v44 = v34;
  v45 = v33;
  sub_255F72F90(v6, v7, v8);
  *&result = sub_255F8EE88(&v42, v35, a4).n128_u64[0];
  return result;
}

double sub_255F91DFC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v158 = *a2;
  v157 = a2[1];
  v155 = a2[3];
  v156 = a2[2];
  v153 = a2[5];
  v154 = a2[4];
  sub_255F7247C(&v191);
  v5 = v192;
  if (v192 >> 1 != 0xFFFFFFFF)
  {
    v6 = MEMORY[0x277D84F90];
    sub_255F93440();
    v159 = v6;
    v152 = a3;
    while (1)
    {
      while (1)
      {
        v7 = v191;
        v192 = v5;
        v185 = xmmword_255F95FC0;
        v186 = 0xA000000000000000;
        v188 = 0;
        v189 = 0;
        v187 = 0;
        v8 = sub_255F95430();
        sub_255F75FA8(v7, *(&v7 + 1), v5);
        if (v8)
        {
LABEL_168:
          a3 = v152;
          goto LABEL_169;
        }

        sub_255F72760();
        sub_255F7247C(&v191);
        v9 = v192;
        if (v192 >> 1 != 0xFFFFFFFF)
        {
          break;
        }

LABEL_6:
        sub_255F7247C(&v191);
        v5 = v192;
        if (v192 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_168;
        }
      }

      v10 = *(&v191 + 1);
      v11 = v191;
      v13 = v193;
      v12 = v194;
      v14 = v195;
      if (v192 >> 60 == 10)
      {
        break;
      }

      if (v192 >> 60 != 1)
      {
        goto LABEL_25;
      }

      v185 = v191;
      v186 = v192;
      v187 = v193;
      v188 = v194;
      v189 = v195;
      sub_255F91DFC(&v191, a1, &v185);
      sub_255F75FA8(v11, v10, v9);
      v10 = *(&v191 + 1);
      v11 = v191;
      v13 = v193;
      v12 = v194;
      v14 = v195;
      v150 = v196;
      v9 = v192 | 0x800000000000000;
LABEL_162:
      v90 = v12;
      v91 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_255F931F8(0, *(v159 + 2) + 1, 1, v159);
      }

      v93 = *(v159 + 2);
      v92 = *(v159 + 3);
      if (v93 >= v92 >> 1)
      {
        v159 = sub_255F931F8((v92 > 1), v93 + 1, 1, v159);
      }

      *(v159 + 2) = v93 + 1;
      v94 = &v159[56 * v93];
      *(v94 + 4) = v91;
      *(v94 + 5) = v10;
      *(v94 + 6) = v9;
      *(v94 + 7) = v13;
      *(v94 + 8) = v90;
      *(v94 + 9) = v14;
      *(v94 + 10) = v150;
      sub_255F7247C(&v191);
      v5 = v192;
      a3 = v152;
      if (v192 >> 1 == 0xFFFFFFFF)
      {
        goto LABEL_169;
      }
    }

    v15 = v193 | *(&v191 + 1) | v194;
    if ((v195 || v192 != 0xA000000000000000 || v191 != 15 || v15) && (v195 || v192 != 0xA000000000000000 || v191 != 17 || v15) && (v195 || v192 != 0xA000000000000000 || v191 != 19 || v15))
    {
LABEL_25:
      v150 = 0;
      goto LABEL_162;
    }

    v185 = v191;
    v186 = 0xA000000000000000;
    v187 = v193;
    v188 = v194;
    v189 = 0;
    sub_255F7E470(&v179);
    if (v180 >> 1 == 0xFFFFFFFF)
    {
      sub_255F75FA8(v11, v10, 0xA000000000000000);
      goto LABEL_6;
    }

    v151 = v180;
    v140 = v10;
    v148 = *(&v179 + 1);
    v149 = v179;
    v146 = v182;
    v147 = v181;
    v145 = v183;
    sub_255F7247C(&v185);
    v16 = v186;
    v141 = MEMORY[0x277D84F90];
    if (v186 >> 1 == 0xFFFFFFFF)
    {
LABEL_160:
      v89 = v140;
    }

    else
    {
      v141 = MEMORY[0x277D84F90];
      v139 = v11;
      v143 = v12;
      v144 = v13;
      v142 = a1;
      while (1)
      {
        v17 = v185;
        v186 = v16;
        *&v179 = v149;
        *(&v179 + 1) = v148;
        v180 = v151;
        v181 = v147;
        v182 = v146;
        v183 = v145;
        v18 = sub_255F95430();
        sub_255F75FA8(v17, *(&v17 + 1), v16);
        if (v18)
        {
          break;
        }

        sub_255F72760();
        sub_255F7247C(&v185);
        v19 = v186;
        if (v186 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_30;
        }

        v21 = *(&v185 + 1);
        v20 = v185;
        v23 = v187;
        v22 = v188;
        v24 = v189;
        if (v186 >> 60 == 10)
        {
          v25 = v187 | *(&v185 + 1) | v188;
          v12 = v143;
          v13 = v144;
          if ((v189 || v186 != 0xA000000000000000 || v185 != 15 || v25) && (v189 || v186 != 0xA000000000000000 || v185 != 17 || v25) && (v189 || v186 != 0xA000000000000000 || v185 != 19 || v25))
          {
LABEL_49:
            v137 = 0;
            goto LABEL_152;
          }

          v179 = v185;
          v180 = 0xA000000000000000;
          v181 = v187;
          v182 = v188;
          v183 = 0;
          sub_255F7E470(&v173);
          if (v174 >> 1 != 0xFFFFFFFF)
          {
            v138 = v174;
            v127 = v22;
            v135 = *(&v173 + 1);
            v136 = v173;
            v133 = v176;
            v134 = v175;
            v130 = v23;
            v132 = v177;
            sub_255F7247C(&v179);
            v26 = v180;
            v128 = MEMORY[0x277D84F90];
            if (v180 >> 1 != 0xFFFFFFFF)
            {
              v128 = MEMORY[0x277D84F90];
              v125 = v21;
              v126 = v20;
              while (1)
              {
                v27 = *(&v179 + 1);
                v28 = v179;
                v180 = v26;
                *&v173 = v136;
                *(&v173 + 1) = v135;
                v174 = v138;
                v175 = v134;
                v176 = v133;
                v177 = v132;
                v29 = sub_255F95430();
                sub_255F75FA8(v28, v27, v26);
                if (v29)
                {
                  break;
                }

                sub_255F72760();
                sub_255F7247C(&v179);
                v30 = v180;
                if (v180 >> 1 == 0xFFFFFFFF)
                {
LABEL_53:
                  sub_255F7247C(&v179);
                  v26 = v180;
                  if (v180 >> 1 == 0xFFFFFFFF)
                  {
                    break;
                  }
                }

                else
                {
                  v32 = *(&v179 + 1);
                  v31 = v179;
                  v33 = v181;
                  v34 = v182;
                  if (v180 >> 60 == 10)
                  {
                    v35 = v181 | *(&v179 + 1) | v182;
                    if ((v183 || v180 != 0xA000000000000000 || v179 != 15 || v35) && (v183 || v180 != 0xA000000000000000 || v179 != 17 || v35) && (v183 || v180 != 0xA000000000000000 || v179 != 19 || v35))
                    {
                      v122 = v183;
                      v123 = v182;
                      v38 = 0;
                      v12 = v143;
                      v13 = v144;
                    }

                    else
                    {
                      v173 = v179;
                      v174 = v180;
                      v175 = v181;
                      v176 = v182;
                      v177 = v183;
                      v36 = v179;
                      sub_255F7E470(&v162);
                      if (v163 >> 1 == 0xFFFFFFFF)
                      {
                        sub_255F75FA8(v36, v32, 0xA000000000000000);
                        goto LABEL_53;
                      }

                      v121 = v163;
                      v119 = *(&v162 + 1);
                      v120 = v162;
                      v117 = v165;
                      v118 = v164;
                      v115 = v33;
                      v116 = v166;
                      sub_255F7247C(&v173);
                      v39 = v174;
                      v111 = MEMORY[0x277D84F90];
                      v40 = v36;
                      v124 = v34;
                      if (v174 >> 1 != 0xFFFFFFFF)
                      {
                        v110 = v32;
                        v111 = MEMORY[0x277D84F90];
                        v113 = v36;
                        do
                        {
                          while (1)
                          {
                            v42 = *(&v173 + 1);
                            v43 = v173;
                            v174 = v39;
                            *&v162 = v120;
                            *(&v162 + 1) = v119;
                            v163 = v121;
                            v164 = v118;
                            v165 = v117;
                            v166 = v116;
                            v44 = sub_255F95430();
                            sub_255F75FA8(v43, v42, v39);
                            if (v44)
                            {
                              v12 = v143;
                              v13 = v144;
                              v40 = v113;
                              v32 = v110;
                              goto LABEL_143;
                            }

                            sub_255F72760();
                            sub_255F7247C(&v173);
                            v45 = v174;
                            if (v174 >> 1 != 0xFFFFFFFF)
                            {
                              break;
                            }

LABEL_78:
                            sub_255F7247C(&v173);
                            v39 = v174;
                            if (v174 >> 1 == 0xFFFFFFFF)
                            {
                              v40 = v113;
                              v32 = v110;
                              goto LABEL_142;
                            }
                          }

                          v46 = *(&v173 + 1);
                          v47 = v173;
                          v48 = v175;
                          v49 = v176;
                          v50 = v177;
                          if (v174 >> 60 != 10)
                          {
                            v52 = v173;
                            if (v174 >> 60 == 1)
                            {
                              v162 = v173;
                              v163 = v174;
                              v164 = v175;
                              v165 = v176;
                              v166 = v177;
                              v54 = *(&v173 + 1);
                              sub_255F91DFC(&v173, v142, &v162);
                              sub_255F75FA8(v52, v54, v45);
                              v46 = *(&v173 + 1);
                              v52 = v173;
                              v48 = v175;
                              v49 = v176;
                              v50 = v177;
                              v53 = v178;
                              v45 = v174 | 0x800000000000000;
                            }

                            else
                            {
                              v53 = 0;
                            }

                            goto LABEL_133;
                          }

                          v51 = v175 | *(&v173 + 1) | v176;
                          if (!v177 && v174 == 0xA000000000000000 && v173 == 15 && !v51 || !v177 && v174 == 0xA000000000000000 && v173 == 17 && !v51 || !v177 && v174 == 0xA000000000000000 && v173 == 19 && !v51)
                          {
                            v162 = v173;
                            v163 = v174;
                            v164 = v175;
                            v165 = v176;
                            v166 = v177;
                            v41 = *(&v173 + 1);
                            sub_255F7E470(&v168);
                            if (v169 >> 1 != 0xFFFFFFFF)
                            {
                              v103 = v48;
                              v104 = v169;
                              v99 = v49;
                              v100 = v41;
                              v108 = *(&v168 + 1);
                              v109 = v168;
                              v106 = v171;
                              v107 = v170;
                              v105 = v172;
                              v55 = v142;
                              sub_255F7247C(&v162);
                              v56 = v163;
                              v101 = MEMORY[0x277D84F90];
                              if (v163 >> 1 == 0xFFFFFFFF)
                              {
LABEL_131:
                                v76 = v47;
LABEL_132:
                                *&v162 = v76;
                                *(&v162 + 1) = v100;
                                v163 = 0xA000000000000000;
                                v164 = v103;
                                v165 = v99;
                                v166 = 0;
                                sub_255F93B28(v76, v100, 0xA000000000000000);
                                sub_255F8EE88(&v162, v101, &v173);
                                sub_255F75FA8(v109, v108, v104);
                                sub_255F75FA8(v76, v100, 0xA000000000000000);
                                v46 = *(&v173 + 1);
                                v52 = v173;
                                v48 = v175;
                                v49 = v176;
                                v50 = v177;
                                v53 = v178;
                                v45 = v174 | 0x400000000000000;
                                goto LABEL_133;
                              }

                              v101 = MEMORY[0x277D84F90];
                              v98 = v47;
                              while (1)
                              {
                                v58 = *(&v162 + 1);
                                v59 = v162;
                                v163 = v56;
                                *&v168 = v109;
                                *(&v168 + 1) = v108;
                                v169 = v104;
                                v170 = v107;
                                v171 = v106;
                                v172 = v105;
                                v60 = sub_255F95430();
                                sub_255F75FA8(v59, v58, v56);
                                if (v60)
                                {
                                  v76 = v98;
                                  goto LABEL_132;
                                }

                                sub_255F72760();
                                sub_255F7247C(&v162);
                                v61 = v163;
                                if (v163 >> 1 != 0xFFFFFFFF)
                                {
                                  v63 = *(&v162 + 1);
                                  v62 = v162;
                                  v64 = v164;
                                  v65 = v165;
                                  v66 = v166;
                                  if (v163 >> 60 != 10)
                                  {
                                    v96 = v162;
                                    v97 = v165;
                                    if (v163 >> 60 == 1)
                                    {
                                      v69 = *(&v162 + 1);
                                      v168 = v162;
                                      v169 = v163;
                                      v170 = v164;
                                      v171 = v165;
                                      v172 = v166;
                                      sub_255F91DFC(&v162, v142, &v168);
                                      sub_255F75FA8(v96, v69, v61);
                                      v63 = *(&v162 + 1);
                                      v64 = v164;
                                      v96 = v162;
                                      v97 = v165;
                                      v66 = v166;
                                      v68 = v167;
                                      v61 = v163 | 0x800000000000000;
                                    }

                                    else
                                    {
                                      v68 = 0;
                                    }

LABEL_123:
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v101 = sub_255F931F8(0, *(v101 + 2) + 1, 1, v101);
                                    }

                                    v74 = *(v101 + 2);
                                    v73 = *(v101 + 3);
                                    if (v74 >= v73 >> 1)
                                    {
                                      v101 = sub_255F931F8((v73 > 1), v74 + 1, 1, v101);
                                    }

                                    *(v101 + 2) = v74 + 1;
                                    v75 = &v101[56 * v74];
                                    *(v75 + 4) = v96;
                                    *(v75 + 5) = v63;
                                    *(v75 + 6) = v61;
                                    *(v75 + 7) = v64;
                                    *(v75 + 8) = v97;
                                    *(v75 + 9) = v66;
                                    *(v75 + 10) = v68;
                                    v55 = v142;
                                    sub_255F7247C(&v162);
                                    v56 = v163;
                                    v47 = v98;
                                    if (v163 >> 1 == 0xFFFFFFFF)
                                    {
                                      goto LABEL_131;
                                    }

                                    continue;
                                  }

                                  v67 = v164 | *(&v162 + 1) | v165;
                                  if ((v166 || v163 != 0xA000000000000000 || v162 != 15 || v67) && (v166 || v163 != 0xA000000000000000 || v162 != 17 || v67) && (v166 || v163 != 0xA000000000000000 || v162 != 19 || v67))
                                  {
                                    v96 = v162;
                                    v97 = v165;
                                    v68 = 0;
                                    goto LABEL_123;
                                  }

                                  v168 = v162;
                                  v169 = v163;
                                  v170 = v164;
                                  v171 = v165;
                                  v172 = v166;
                                  sub_255F7E470(v160);
                                  v57 = v161;
                                  if (v161 >> 1 != 0xFFFFFFFF)
                                  {
                                    v70 = v65;
                                    v71 = v160[1];
                                    v72 = v160[0];
                                    *&v168 = v62;
                                    *(&v168 + 1) = v63;
                                    v169 = 0xA000000000000000;
                                    v170 = v64;
                                    v171 = v70;
                                    v172 = 0;
                                    sub_255F919DC(&v162, v55, &v168, v160);
                                    sub_255F75FA8(v72, v71, v57);
                                    sub_255F75FA8(v62, v63, 0xA000000000000000);
                                    v63 = *(&v162 + 1);
                                    v64 = v164;
                                    v96 = v162;
                                    v97 = v165;
                                    v66 = v166;
                                    v68 = v167;
                                    v61 = v163 | 0x400000000000000;
                                    goto LABEL_123;
                                  }

                                  sub_255F75FA8(v62, v63, 0xA000000000000000);
                                }

                                sub_255F7247C(&v162);
                                v56 = v163;
                                if (v163 >> 1 == 0xFFFFFFFF)
                                {
                                  v47 = v98;
                                  goto LABEL_131;
                                }
                              }
                            }

                            sub_255F75FA8(v47, v41, 0xA000000000000000);
                            goto LABEL_78;
                          }

                          v52 = v173;
                          v53 = 0;
LABEL_133:
                          v102 = v45;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v111 = sub_255F931F8(0, *(v111 + 2) + 1, 1, v111);
                          }

                          v78 = *(v111 + 2);
                          v77 = *(v111 + 3);
                          if (v78 >= v77 >> 1)
                          {
                            v111 = sub_255F931F8((v77 > 1), v78 + 1, 1, v111);
                          }

                          *(v111 + 2) = v78 + 1;
                          v79 = &v111[56 * v78];
                          *(v79 + 4) = v52;
                          *(v79 + 5) = v46;
                          *(v79 + 6) = v102;
                          *(v79 + 7) = v48;
                          *(v79 + 8) = v49;
                          *(v79 + 9) = v50;
                          *(v79 + 10) = v53;
                          sub_255F7247C(&v173);
                          v39 = v174;
                          v32 = v110;
                          v40 = v113;
                        }

                        while (v174 >> 1 != 0xFFFFFFFF);
                      }

LABEL_142:
                      v12 = v143;
                      v13 = v144;
LABEL_143:
                      *&v173 = v40;
                      *(&v173 + 1) = v32;
                      v174 = 0xA000000000000000;
                      v175 = v115;
                      v80 = v40;
                      v176 = v124;
                      v177 = 0;
                      sub_255F93B28(v40, v32, 0xA000000000000000);
                      sub_255F8EE88(&v173, v111, &v179);
                      sub_255F75FA8(v120, v119, v121);
                      sub_255F75FA8(v80, v32, 0xA000000000000000);
                      v32 = *(&v179 + 1);
                      v31 = v179;
                      v33 = v181;
                      v122 = v183;
                      v123 = v182;
                      v38 = v184;
                      v30 = v180 | 0x400000000000000;
                    }
                  }

                  else
                  {
                    v122 = v183;
                    v123 = v182;
                    v12 = v143;
                    v13 = v144;
                    if (v180 >> 60 == 1)
                    {
                      v173 = v179;
                      v174 = v180;
                      v175 = v181;
                      v176 = v182;
                      v177 = v183;
                      v112 = v180;
                      v37 = v179;
                      sub_255F91DFC(&v179, v142, &v173);
                      sub_255F75FA8(v37, v32, v112);
                      v32 = *(&v179 + 1);
                      v31 = v179;
                      v33 = v181;
                      v122 = v183;
                      v123 = v182;
                      v38 = v184;
                      v30 = v180 | 0x800000000000000;
                    }

                    else
                    {
                      v38 = 0;
                    }
                  }

                  v114 = v31;
                  v81 = v32;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v128 = sub_255F931F8(0, *(v128 + 2) + 1, 1, v128);
                  }

                  v83 = *(v128 + 2);
                  v82 = *(v128 + 3);
                  if (v83 >= v82 >> 1)
                  {
                    v128 = sub_255F931F8((v82 > 1), v83 + 1, 1, v128);
                  }

                  *(v128 + 2) = v83 + 1;
                  v84 = &v128[56 * v83];
                  *(v84 + 4) = v114;
                  *(v84 + 5) = v81;
                  *(v84 + 6) = v30;
                  *(v84 + 7) = v33;
                  *(v84 + 8) = v123;
                  *(v84 + 9) = v122;
                  *(v84 + 10) = v38;
                  sub_255F7247C(&v179);
                  v26 = v180;
                  v21 = v125;
                  v20 = v126;
                  if (v180 >> 1 == 0xFFFFFFFF)
                  {
                    goto LABEL_151;
                  }
                }
              }

              v12 = v143;
              v13 = v144;
              v21 = v125;
              v20 = v126;
            }

LABEL_151:
            *&v179 = v20;
            *(&v179 + 1) = v21;
            v180 = 0xA000000000000000;
            v181 = v130;
            v182 = v127;
            v183 = 0;
            sub_255F93B28(v20, v21, 0xA000000000000000);
            sub_255F8EE88(&v179, v128, &v185);
            sub_255F75FA8(v136, v135, v138);
            sub_255F75FA8(v20, v21, 0xA000000000000000);
            v21 = *(&v185 + 1);
            v20 = v185;
            v23 = v187;
            v22 = v188;
            v24 = v189;
            v137 = v190;
            v19 = v186 | 0x400000000000000;
            goto LABEL_152;
          }

          sub_255F75FA8(v20, v21, 0xA000000000000000);
          v14 = 0;
          a1 = v142;
          v9 = 0xA000000000000000;
LABEL_30:
          sub_255F7247C(&v185);
          v16 = v186;
          if (v186 >> 1 == 0xFFFFFFFF)
          {
            v11 = v139;
            v12 = v143;
            v13 = v144;
            goto LABEL_160;
          }
        }

        else
        {
          v12 = v143;
          v13 = v144;
          if (v186 >> 60 != 1)
          {
            goto LABEL_49;
          }

          v179 = v185;
          v180 = v186;
          v181 = v187;
          v182 = v188;
          v183 = v189;
          sub_255F91DFC(&v185, v142, &v179);
          sub_255F75FA8(v20, v21, v19);
          v21 = *(&v185 + 1);
          v20 = v185;
          v23 = v187;
          v22 = v188;
          v24 = v189;
          v137 = v190;
          v19 = v186 | 0x800000000000000;
LABEL_152:
          v129 = v24;
          v131 = v23;
          v85 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_255F931F8(0, *(v141 + 2) + 1, 1, v141);
          }

          v9 = 0xA000000000000000;
          v87 = *(v141 + 2);
          v86 = *(v141 + 3);
          a1 = v142;
          if (v87 >= v86 >> 1)
          {
            v141 = sub_255F931F8((v86 > 1), v87 + 1, 1, v141);
          }

          *(v141 + 2) = v87 + 1;
          v88 = &v141[56 * v87];
          *(v88 + 4) = v20;
          *(v88 + 5) = v85;
          *(v88 + 6) = v19;
          *(v88 + 7) = v131;
          *(v88 + 8) = v22;
          *(v88 + 9) = v129;
          *(v88 + 10) = v137;
          sub_255F7247C(&v185);
          v16 = v186;
          v11 = v139;
          v14 = 0;
          if (v186 >> 1 == 0xFFFFFFFF)
          {
            goto LABEL_160;
          }
        }
      }

      v11 = v139;
      v89 = v140;
      v12 = v143;
      v13 = v144;
    }

    *&v185 = v11;
    *(&v185 + 1) = v89;
    v186 = v9;
    v187 = v13;
    v188 = v12;
    v189 = v14;
    sub_255F93B28(v11, v89, v9);
    sub_255F8EE88(&v185, v141, &v191);
    sub_255F75FA8(v149, v148, v151);
    sub_255F75FA8(v11, v89, v9);
    v10 = *(&v191 + 1);
    v11 = v191;
    v13 = v193;
    v12 = v194;
    v14 = v195;
    v150 = v196;
    v9 = v192 | 0x400000000000000;
    goto LABEL_162;
  }

  v159 = MEMORY[0x277D84F90];
LABEL_169:
  *&v191 = v158;
  *(&v191 + 1) = v157;
  v192 = v156;
  v193 = v155;
  v194 = v154;
  v195 = v153;
  sub_255F72F90(v158, v157, v156);
  *&result = sub_255F8EE88(&v191, v159, a3).n128_u64[0];
  return result;
}

char *sub_255F931F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B8A8, &qword_255F99DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255F93320(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B8B0, qword_255F99DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_255F93440()
{
  result = qword_27F81B890;
  if (!qword_27F81B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B890);
  }

  return result;
}

char *sub_255F93494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B8A0, &qword_255F99DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_255F935A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255F9366C(v11, 0, 0, 1, a1, a2);
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
    sub_255F93B3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_255F9366C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255F93778(a5, a6);
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
    result = sub_255F957E0();
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

uint64_t sub_255F93778(uint64_t a1, unint64_t a2)
{
  v4 = sub_255F937C4(a1, a2);
  sub_255F938F4(&unk_28680BAC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255F937C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_255F79368(v5, 0);
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

  result = sub_255F957E0();
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
        v10 = sub_255F95540();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255F79368(v10, 0);
        result = sub_255F95760();
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

uint64_t sub_255F938F4(uint64_t result)
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

  result = sub_255F939E0(result, v12, 1, v3);
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

char *sub_255F939E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4D0, "b4");
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

uint64_t sub_255F93B28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_255F72F90(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_255F93B3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255F93B98(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_255F944D8(v3);
}

uint64_t sub_255F93BCC(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = sub_255F94D68;
  v10[3] = 0;
  v10[4] = sub_255F93DA8(sub_255F94D28, v10, a2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
  sub_255F94CC4();
  v8 = sub_255F95420();

  return v8;
}

uint64_t sub_255F93CA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  sub_255F82090(0, v2, 0);
  v3 = v17;
  if (v2)
  {
    v4 = (a1 + 80);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 2);
      v15[0] = *(v4 - 3);
      v15[1] = v6;
      v15[2] = *(v4 - 1);
      v16 = v5;
      v7 = sub_255F949F8(v15);
      v17 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_255F82090((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v3 = v17;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_255F93DA8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_255F956A0();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_255F955E0();
  v70 = sub_255F95810();
  v65 = sub_255F95820();
  sub_255F957F0();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_255F955D0();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_255F95710();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_255F95800();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_255F95710();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_255F95800();
      sub_255F95710();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_255F9449C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = v1;
  return sub_255F949F8(v4);
}

uint64_t sub_255F944D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 >> 60;
  if ((v4 >> 60) <= 4)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        v6 = v2;
LABEL_15:
        v11 = a1[1];

        return v6;
      }

      v18 = v2;
      v21 = a1[1];

      v2 = 40;
      goto LABEL_22;
    }

    if (v5 == 2)
    {
      v8 = 64;
    }

    else
    {
      if (v5 != 3)
      {
        v18 = 34;
        MEMORY[0x259C540A0](v2, v3);
        v2 = 34;
        goto LABEL_22;
      }

      v8 = 35;
    }

    v18 = v8;
    goto LABEL_23;
  }

  if (v5 <= 7)
  {
    if (v5 != 5)
    {
      v6 = v2;
      if (v5 == 6)
      {
        return sub_255F95AA0();
      }

      goto LABEL_15;
    }

    v18 = 678195829;
    MEMORY[0x259C540A0](v2, v3);
    v2 = 41;
    goto LABEL_22;
  }

  if (v5 == 8)
  {
    v18 = v2;
    v20 = a1[1];

    v2 = 37;
LABEL_22:
    v3 = 0xE100000000000000;
    goto LABEL_23;
  }

  v10 = a1[4];
  v9 = a1[5];
  if (v5 == 9)
  {
    v18 = v2;
    v19 = a1[1];

    v2 = v10;
    v3 = v9;
LABEL_23:
    MEMORY[0x259C540A0](v2, v3);
    return v18;
  }

  v12 = a1[3];
  v13 = v10 | v3;
  if (v4 == 0xA000000000000000 && !(v13 | v2 | v9 | v12))
  {
    return 0xD000000000000012;
  }

  v14 = v13 | v12;
  if (!v9 && v4 == 0xA000000000000000 && v2 == 1 && !v14)
  {
    return 0x6C72752D6461623CLL;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 2 && !v14)
  {
    return 0xD000000000000015;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 3 && !v14)
  {
    return 15742;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 4 && !v14)
  {
    return 15740;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 5 && !v14)
  {
    return 15710;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 6 && !v14)
  {
    return 15652;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 7 && !v14)
  {
    return 15658;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 8 && !v14)
  {
    return 31868;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 9 && !v14)
  {
    return 32;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 10 && !v14)
  {
    return 757932348;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 11 && !v14)
  {
    return 4074797;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 12 && !v14)
  {
    return 58;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 13 && !v14)
  {
    return 59;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 14 && !v14)
  {
    return 44;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 15 && !v14)
  {
    return 91;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 16 && !v14)
  {
    return 93;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 17 && !v14)
  {
    return 40;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 18 && !v14)
  {
    return 41;
  }

  if (!v9 && v4 == 0xA000000000000000 && v2 == 19 && !v14)
  {
    return 123;
  }

  v17 = v2 == 20 && v14 == 0 && v4 == 0xA000000000000000;
  if (v9 == 0 && v17)
  {
    return 125;
  }

  else
  {
    return 4607813;
  }
}

uint64_t sub_255F949F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = (v3 >> 58) & 3;
  if (v7)
  {
    v8 = a1[6];
    if (v7 == 1)
    {
      v9 = v3 & 0xF3FFFFFFFFFFFFFFLL;
      v37 = *a1;
      v38 = v1;
      v39 = v3 & 0xF3FFFFFFFFFFFFFFLL;
      v40 = v4;
      v41 = v6;
      v42 = v5;
      sub_255F7E470(v32);
      v10 = v33;
      if (v33 >> 1 == 0xFFFFFFFF)
      {
        return 0;
      }

      v29 = v35;
      v30 = v36;
      v18 = v32[0];
      v27 = v32[1];
      v28 = v34;
      v37 = v2;
      v38 = v1;
      v39 = v9;
      v40 = v4;
      v41 = v6;
      v42 = v5;
      v31 = sub_255F944D8(&v37);
      v20 = v19;
      v37 = sub_255F93CA8(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
      sub_255F94CC4();
      v21 = sub_255F95420();
      v23 = v22;

      v37 = v18;
      v38 = v27;
      v39 = v10;
      v40 = v28;
      v41 = v29;
      v42 = v30;
      v26 = sub_255F944D8(&v37);
      v25 = v24;
      sub_255F75FA8(v18, v27, v10);
      v37 = v31;
      v38 = v20;

      MEMORY[0x259C540A0](v21, v23);

      MEMORY[0x259C540A0](v26, v25);
    }

    else
    {
      v37 = *a1;
      v38 = v1;
      v39 = v3 & 0xF3FFFFFFFFFFFFFFLL;
      v40 = v4;
      v41 = v6;
      v42 = v5;
      v12 = sub_255F944D8(&v37);
      v14 = v13;
      v37 = sub_255F93CA8(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
      sub_255F94CC4();
      v15 = sub_255F95420();
      v17 = v16;

      v37 = v12;
      v38 = v14;

      MEMORY[0x259C540A0](v15, v17);

      MEMORY[0x259C540A0](41, 0xE100000000000000);
    }

    return v37;
  }

  else
  {
    v37 = *a1;
    v38 = v1;
    v39 = v3;
    v40 = v4;
    v41 = v6;
    v42 = v5;
    return sub_255F944D8(&v37);
  }
}

unint64_t sub_255F94CC4()
{
  result = qword_27F81B5A8;
  if (!qword_27F81B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5A0, &qword_255F96EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81B5A8);
  }

  return result;
}

uint64_t sub_255F94D28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_255F94D6C()
{
  v0 = sub_255F953D0();
  __swift_allocate_value_buffer(v0, qword_27F821098);
  __swift_project_value_buffer(v0, qword_27F821098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F81B8C0, &qword_255F99EA8);
  sub_255F95440();
  return sub_255F953C0();
}

uint64_t sub_255F94E10()
{
  if (qword_27F821090 != -1)
  {
    swift_once();
  }

  v0 = sub_255F953D0();

  return __swift_project_value_buffer(v0, qword_27F821098);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255F94EAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F821090 != -1)
  {
    swift_once();
  }

  v2 = sub_255F953D0();
  v3 = __swift_project_value_buffer(v2, qword_27F821098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TokenParser.init<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t TokenParser.parse()()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v1)
  {
    return v3;
  }

  nullsub_1(v5);
  v6 = sub_255F7276C();
  v8 = v7;
  v10 = v9;

  v35[0] = v6;
  v35[1] = v8;
  v36 = v10 & 0x101;
  v11 = sub_255F8F32C(v35, 1);
  sub_255F79B28(v2, v34);
  v12 = *(v11 + 2);
  if (!v12)
  {

    v3 = MEMORY[0x277D84F90];
LABEL_12:
    sub_255F79B84(v34);
    return v3;
  }

  v37 = MEMORY[0x277D84F90];
  result = sub_255F951E0(0, v12, 0);
  if (*(v11 + 2))
  {
    v14 = 0;
    v3 = v37;
    v15 = 32;
    while (1)
    {
      v16 = *&v11[v15 + 80];
      v28[4] = *&v11[v15 + 64];
      v28[5] = v16;
      v28[6] = *&v11[v15 + 96];
      v29 = v11[v15 + 112];
      v17 = *&v11[v15 + 16];
      v28[0] = *&v11[v15];
      v28[1] = v17;
      v18 = *&v11[v15 + 48];
      v28[2] = *&v11[v15 + 32];
      v28[3] = v18;
      result = sub_255F79874(v28, &v30);
      v19 = v30;
      v20 = v31;
      v21 = v32;
      v22 = v33;
      v37 = v3;
      v24 = *(v3 + 16);
      v23 = *(v3 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v31;
        v27 = v30;
        result = sub_255F951E0((v23 > 1), v24 + 1, 1);
        v20 = v26;
        v19 = v27;
        v3 = v37;
      }

      *(v3 + 16) = v24 + 1;
      v25 = v3 + 48 * v24;
      *(v25 + 32) = v19;
      *(v25 + 48) = v20;
      *(v25 + 64) = v21;
      *(v25 + 72) = v22;
      if (v12 - 1 == v14)
      {
        break;
      }

      ++v14;
      v15 += 120;
      if (v14 >= *(v11 + 2))
      {
        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

char *sub_255F951E0(char *a1, int64_t a2, char a3)
{
  result = sub_255F95210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F95210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B8B8, &qword_255F99EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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