uint64_t sub_22BF0B730()
{
  if (!*(v0 + 40))
  {
    goto LABEL_3;
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  while (v1 != 10 || v2 != 0xE100000000000000)
  {
    v6 = sub_22BE3AFA0();

    if (v6)
    {
      goto LABEL_14;
    }

    v7 = sub_22C272F04();

    if ((v7 & 1) == 0)
    {
      return result;
    }

    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
LABEL_3:
    result = sub_22C273204();
    *(v0 + 32) = result;
    *(v0 + 40) = v4;
    if (!v4)
    {
      return result;
    }

    v1 = result;
    v2 = v4;
  }

LABEL_14:
}

uint64_t sub_22BF0B820()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_22C273204();
    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
    if (!v4)
    {
      return 0;
    }

    v1 = v3;
    v2 = v4;
  }

  if (v1 == 61 && v2 == 0xE100000000000000)
  {
  }

  else
  {
    v6 = sub_22BE3AFA0();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return 1;
}

uint64_t sub_22BF0B8D4@<X0>(uint64_t a1@<X8>)
{
  v5 = 0;
  if (!*(v1 + 40))
  {
    goto LABEL_3;
  }

  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  while (v3 != 32 || v2 != 0xE100000000000000)
  {
    sub_22BE1B328();
    if (sub_22BE3AFA0())
    {
      break;
    }

    if (v3 == 9 && v2 == 0xE100000000000000)
    {
    }

    else
    {
      sub_22BE1B328();
      v3 = sub_22BE3AFA0();

      if ((v3 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v9 = __OFADD__(v5, 4);
    v5 += 4;
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_21:
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
LABEL_3:
    result = sub_22C273204();
    *(v1 + 32) = result;
    *(v1 + 40) = v7;
    if (!v7)
    {
LABEL_22:
      *a1 = v5;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return result;
    }

    sub_22BE3E568();
  }

  v9 = __OFADD__(v5++, 1);
  if (!v9)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22BF0B9F4@<X0>(uint64_t a1@<X8>)
{
  v4 = 0;
  while (1)
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v2 = *(v1 + 32);
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

    sub_22C273204();
    if (!v7)
    {
      break;
    }

    sub_22BE3E568();
    if (v4)
    {
LABEL_4:
      MEMORY[0x2318AB8D0](92, 0xE100000000000000);
LABEL_5:
      v6 = sub_22BE1B328();
      MEMORY[0x2318AB8C0](v6);
      v4 = 0;
      goto LABEL_19;
    }

LABEL_8:
    v8 = v2 == 34 && v5 == 0xE100000000000000;
    if (v8 || (sub_22BE18D2C(), (sub_22C274014() & 1) != 0))
    {

      *a1 = 0;
      *(a1 + 8) = 0xE000000000000000;
      v11 = 5;
      goto LABEL_22;
    }

    if (v2 != 92 || v5 != 0xE100000000000000)
    {
      sub_22BE18D2C();
      if ((sub_22C274014() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v4 = 1;
LABEL_19:
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = 6;
LABEL_22:
  *(a1 + 16) = v11;
  return result;
}

unsigned __int8 *sub_22BF0BB10()
{
  sub_22BE1BA00();
  v32 = v4;
  sub_22C272F54();
  for (i = 0; ; i = 1)
  {
    while (1)
    {
      if (*(v1 + 40))
      {
        v3 = *(v1 + 32);
        v2 = *(v1 + 40);
      }

      else
      {
        *(v1 + 32) = sub_22C273204();
        *(v1 + 40) = v6;
        if (!v6)
        {
          goto LABEL_26;
        }

        sub_22BE3E568();
      }

      v7 = v3 == 48 && v2 == 0xE100000000000000;
      if (v7)
      {
        break;
      }

      sub_22BE1B328();
      if (sub_22C274014())
      {
        goto LABEL_17;
      }

      if (v3 != 57 || v2 != 0xE100000000000000)
      {
        break;
      }

LABEL_16:

      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      v9 = sub_22BE1B328();
      MEMORY[0x2318AB8C0](v9);
    }

    sub_22BE18D2C();
    if ((sub_22C274014() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v3 != 46 || v2 != 0xE100000000000000)
    {
      sub_22BE1B328();
      if ((sub_22BE3AFA0() & 1) == 0)
      {
        break;
      }
    }

    if (i)
    {

      v12 = v32;
      goto LABEL_27;
    }

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    v11 = sub_22BE1B328();
    MEMORY[0x2318AB8C0](v11);
  }

LABEL_26:
  v12 = v32;
  if (i)
  {
LABEL_27:
    result = sub_22BF2B0CC(0, v12);
    if ((v14 & 1) == 0)
    {
      *v0 = result;
      *(v0 + 8) = 0;
      v15 = 4;
LABEL_78:
      *(v0 + 16) = v15;
      return result;
    }

LABEL_76:
    *v0 = 0;
    *(v0 + 8) = 0;
    v15 = 6;
    goto LABEL_78;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {

    goto LABEL_76;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {
    v18 = sub_22BF14368(0, v32, 10);
    v29 = v30;
    goto LABEL_75;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    if ((v32 & 0xF00000000000000) != 0)
    {
      while (1)
      {
        sub_22BE18550();
        if (!v7 & v19)
        {
          break;
        }

        sub_22BE17C04();
        if (!v7)
        {
          break;
        }

        v18 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        sub_22BE230DC();
        if (v7)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

  result = sub_22C273B44();
  v17 = *result;
  if (v17 == 43)
  {
    if (v31 < 1)
    {
      goto LABEL_82;
    }

    if (v31 == 1)
    {
      goto LABEL_73;
    }

    v18 = 0;
    if (!result)
    {
      goto LABEL_64;
    }

    while (1)
    {
      sub_22BE18550();
      if (!v7 & v19)
      {
        break;
      }

      sub_22BE17C04();
      if (!v7)
      {
        break;
      }

      v18 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        break;
      }

      sub_22BE230DC();
      if (v7)
      {
        goto LABEL_74;
      }
    }

LABEL_73:
    v18 = 0;
    v22 = 1;
    goto LABEL_74;
  }

  if (v17 != 45)
  {
    if (!v31)
    {
      goto LABEL_73;
    }

    v18 = 0;
    if (!result)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v25 = *result - 48;
      if (v25 > 9)
      {
        goto LABEL_73;
      }

      v26 = 10 * v18;
      if ((v18 * 10) >> 64 != (10 * v18) >> 63)
      {
        goto LABEL_73;
      }

      v18 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_73;
      }

      ++result;
      if (!--v31)
      {
        goto LABEL_64;
      }
    }
  }

  if (v31 >= 1)
  {
    if (v31 == 1)
    {
      goto LABEL_73;
    }

    v18 = 0;
    if (result)
    {
      while (1)
      {
        sub_22BE18550();
        if (!v7 & v19)
        {
          goto LABEL_73;
        }

        sub_22BE17C04();
        if (!v7)
        {
          goto LABEL_73;
        }

        v18 = v21 - v20;
        if (__OFSUB__(v21, v20))
        {
          goto LABEL_73;
        }

        sub_22BE230DC();
        if (v7)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_64:
    v22 = 0;
LABEL_74:
    v29 = v22;
LABEL_75:

    if ((v29 & 1) == 0)
    {
      *v0 = v18;
      *(v0 + 8) = 0;
      v15 = 3;
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  __break(1u);
  __break(1u);
LABEL_82:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_22BF0BEF4()
{
  sub_22BE1BA00();
  v31 = 0;
  v32 = v2;
  sub_22C272F54();
  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = *(v1 + 32);
  for (i = *(v1 + 40); ; i = 0)
  {
    v29 = v4;
    v30 = v3;
    MEMORY[0x28223BE20](i);
    v28 = &v29;

    v8 = sub_22BF0CB24(sub_22BF0CE8C, v27, 0xD000000000000035, 0x800000022C2D3970);
    if (!v8)
    {
      v29 = v4;
      v30 = v3;
      MEMORY[0x28223BE20](v8);
      v28 = &v29;
      if (!sub_22BF0CB24(sub_22BF0CE8C, v27, 0x3837363534333231, 0xEA00000000003039))
      {
        break;
      }
    }

    MEMORY[0x2318AB8C0](v4, v3);

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
LABEL_3:
    v6 = sub_22C273204();
    *(v1 + 32) = v6;
    *(v1 + 40) = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v4 = v6;
    v3 = v7;
  }

LABEL_9:
  v10 = v31;
  v9 = v32;
  v11 = v31 == 1702195796 && v32 == 0xE400000000000000;
  if (v11 || (sub_22BE1A608() & 1) != 0 || (v10 == 1702195828 ? (v12 = v9 == 0xE400000000000000) : (v12 = 0), v12 || (sub_22BE1A608() & 1) != 0))
  {

    *v0 = xmmword_22C288190;
LABEL_20:
    v14 = 2;
    goto LABEL_21;
  }

  v15 = v10 == 0x65736C6146 && v9 == 0xE500000000000000;
  if (v15 || (sub_22BE1A608() & 1) != 0 || (v10 == 0x65736C6166 ? (v16 = v9 == 0xE500000000000000) : (v16 = 0), v16 || (sub_22BE1A608() & 1) != 0))
  {

    *v0 = 0;
    *(v0 + 8) = 0;
    goto LABEL_20;
  }

  v17 = v10 == 1701736270 && v9 == 0xE400000000000000;
  if (v17 || (sub_22BE1A608() & 1) != 0)
  {

    v18 = xmmword_22C288190;
  }

  else
  {
    v19 = v10 == 6581857 && v9 == 0xE300000000000000;
    if (v19 || (sub_22BE1A608() & 1) != 0)
    {

      v18 = xmmword_22C28B690;
    }

    else
    {
      v20 = v10 == 29295 && v9 == 0xE200000000000000;
      if (v20 || (sub_22BE1A608() & 1) != 0)
      {

        v18 = xmmword_22C28B680;
      }

      else
      {
        v21 = v10 == 7630702 && v9 == 0xE300000000000000;
        if (v21 || (sub_22BE1A608() & 1) != 0)
        {

          v18 = xmmword_22C28B670;
        }

        else
        {
          v22 = v10 == 7499622 && v9 == 0xE300000000000000;
          if (v22 || (sub_22BE1A608() & 1) != 0)
          {

            v18 = xmmword_22C28B660;
          }

          else
          {
            v23 = v10 == 28265 && v9 == 0xE200000000000000;
            if (v23 || (sub_22BE1A608() & 1) != 0)
            {

              v18 = xmmword_22C28B650;
            }

            else
            {
              v24 = v10 == 26217 && v9 == 0xE200000000000000;
              if (v24 || (sub_22BE1A608() & 1) != 0)
              {

                v18 = xmmword_22C28B640;
              }

              else
              {
                v25 = v10 == 1718185061 && v9 == 0xE400000000000000;
                if (v25 || (sub_22BE1A608() & 1) != 0)
                {

                  v18 = xmmword_22C28B630;
                }

                else
                {
                  if (v10 != 1702063205 || v9 != 0xE400000000000000)
                  {
                    result = sub_22BE1A608();
                    if ((result & 1) == 0)
                    {
                      *v0 = v10;
                      *(v0 + 8) = v9;
                      v14 = 1;
                      goto LABEL_21;
                    }
                  }

                  v18 = xmmword_22C28B620;
                }
              }
            }
          }
        }
      }
    }
  }

  *v0 = v18;
  v14 = 6;
LABEL_21:
  *(v0 + 16) = v14;
  return result;
}

Swift::String __swiftcall Lexer.remainingString()()
{
  while (1)
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 32);
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      goto LABEL_5;
    }

    v2 = sub_22C273204();
    if (!v3)
    {
      break;
    }

    v1 = v3;
LABEL_5:
    MEMORY[0x2318AB8C0](v2, v1);
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t static Lexer.Token.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      if (*&v3 != *&v5 || v2 != v6)
      {
        sub_22BE18944();
        v27 = sub_22C274014();
        v28 = sub_22BE191CC();
        sub_22BF0CE18(v28, v29, 1u);
        v30 = sub_22BE18944();
        sub_22BF0CE18(v30, v31, 1u);
        v32 = sub_22BE18944();
        sub_22BF0CE34(v32, v33, 1u);
        v34 = sub_22BE191CC();
        v36 = 1;
        goto LABEL_23;
      }

      v19 = 1;
      v56 = sub_22BE18944();
      sub_22BF0CE18(v56, v57, 1u);
      v58 = sub_22BE18944();
      sub_22BF0CE18(v58, v59, 1u);
      v60 = sub_22BE18944();
      sub_22BF0CE34(v60, v61, 1u);
      v62 = sub_22BE18944();
      v64 = 1;
LABEL_35:
      sub_22BF0CE34(v62, v63, v64);
      return v19 & 1;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v20 = sub_22BE18944();
      sub_22BF0CE34(v20, v21, 2u);
      v22 = sub_22BE191CC();
      sub_22BF0CE34(v22, v23, 2u);
      v19 = LOBYTE(v5) ^ LOBYTE(v3) ^ 1;
      return v19 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_25;
      }

      v24 = sub_22BE18944();
      sub_22BF0CE34(v24, v25, 3u);
      v10 = sub_22BE191CC();
      v12 = 3;
      goto LABEL_10;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_25;
      }

      v13 = *a1;
      v14 = *a2;
      v15 = sub_22BE18944();
      sub_22BF0CE34(v15, v16, 4u);
      v17 = sub_22BE191CC();
      sub_22BF0CE34(v17, v18, 4u);
      v19 = v3 == v5;
      return v19 & 1;
    case 5u:
      if (v7 != 5)
      {
LABEL_24:
        v46 = *(a1 + 8);

LABEL_25:
        v47 = sub_22BE191CC();
        sub_22BF0CE18(v47, v48, v7);
        v49 = sub_22BE18944();
        sub_22BF0CE34(v49, v50, v4);
        v51 = sub_22BE191CC();
        sub_22BF0CE34(v51, v52, v7);
        v19 = 0;
        return v19 & 1;
      }

      v37 = *a1;
      if (*&v3 == *&v5 && v2 == v6)
      {
        sub_22BF0CE18(*&v37, v2, 5u);
        v65 = sub_22BE18944();
        sub_22BF0CE18(v65, v66, 5u);
        v67 = sub_22BE18944();
        sub_22BF0CE34(v67, v68, 5u);
        v55 = sub_22BE18944();
        v70 = 5;
LABEL_359:
        sub_22BF0CE34(v55, v69, v70);
        v19 = 1;
        return v19 & 1;
      }

      v27 = sub_22C274014();
      v39 = sub_22BE191CC();
      sub_22BF0CE18(v39, v40, 5u);
      v41 = sub_22BE18944();
      sub_22BF0CE18(v41, v42, 5u);
      v43 = sub_22BE18944();
      sub_22BF0CE34(v43, v44, 5u);
      v34 = sub_22BE191CC();
      v36 = 5;
LABEL_23:
      sub_22BF0CE34(v34, v35, v36);
      return v27 & 1;
    case 6u:
      v53 = *a1;
      switch(*&v3)
      {
        case 1:
          if (v7 != 6 || *&v5 != 1 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v19 = 1;
          v62 = 1;
          v63 = 0;
          v64 = 6;
          goto LABEL_35;
        case 2:
          if (v7 != 6 || *&v5 != 2 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 2;
          break;
        case 3:
          if (v7 != 6 || *&v5 != 3 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 3;
          break;
        case 4:
          if (v7 != 6 || *&v5 != 4 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 4;
          break;
        case 5:
          if (v7 != 6 || *&v5 != 5 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 5;
          break;
        case 6:
          if (v7 != 6 || *&v5 != 6 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 6;
          break;
        case 7:
          if (v7 != 6 || *&v5 != 7 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 7;
          break;
        case 8:
          if (v7 != 6 || *&v5 != 8 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 8;
          break;
        case 9:
          if (v7 != 6 || *&v5 != 9 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 9;
          break;
        case 0xALL:
          if (v7 != 6 || *&v5 != 10 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 10;
          break;
        case 0xBLL:
          if (v7 != 6 || *&v5 != 11 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 11;
          break;
        case 0xCLL:
          if (v7 != 6 || *&v5 != 12 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 12;
          break;
        case 0xDLL:
          if (v7 != 6 || *&v5 != 13 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 13;
          break;
        case 0xELL:
          if (v7 != 6 || *&v5 != 14 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 14;
          break;
        case 0xFLL:
          if (v7 != 6 || *&v5 != 15 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 15;
          break;
        case 0x10:
          if (v7 != 6 || *&v5 != 16 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 16;
          break;
        case 0x11:
          if (v7 != 6 || *&v5 != 17 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 17;
          break;
        case 0x12:
          if (v7 != 6 || *&v5 != 18 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 18;
          break;
        case 0x13:
          if (v7 != 6 || *&v5 != 19 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 19;
          break;
        case 0x14:
          if (v7 != 6 || *&v5 != 20 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 20;
          break;
        case 0x15:
          if (v7 != 6 || *&v5 != 21 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 21;
          break;
        case 0x16:
          if (v7 != 6 || *&v5 != 22 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 22;
          break;
        case 0x17:
          if (v7 != 6 || *&v5 != 23 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 23;
          break;
        case 0x18:
          if (v7 != 6 || *&v5 != 24 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 24;
          break;
        case 0x19:
          if (v7 != 6 || *&v5 != 25 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 25;
          break;
        case 0x1ALL:
          if (v7 != 6 || *&v5 != 26 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 26;
          break;
        case 0x1BLL:
          if (v7 != 6 || *&v5 != 27 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 27;
          break;
        case 0x1CLL:
          if (v7 != 6 || *&v5 != 28 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 28;
          break;
        case 0x1DLL:
          if (v7 != 6 || *&v5 != 29 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 29;
          break;
        case 0x1ELL:
          if (v7 != 6 || *&v5 != 30 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 30;
          break;
        case 0x1FLL:
          if (v7 != 6 || *&v5 != 31 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 31;
          break;
        case 0x20:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 32 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 32;
          break;
        case 0x21:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 33 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 33;
          break;
        case 0x22:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 34 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 34;
          break;
        case 0x23:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 35 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 35;
          break;
        case 0x24:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 36 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 36;
          break;
        case 0x25:
          if (v7 != 6)
          {
            goto LABEL_25;
          }

          if (*&v5 != 37 || v6 != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 37;
          break;
        default:
          if (v7 != 6 || (v6 | *&v5) != 0)
          {
            goto LABEL_25;
          }

          sub_22BE1BEB8();
          v55 = 0;
          break;
      }

      v69 = 0;
      v70 = 6;
      goto LABEL_359;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_25;
      }

      v8 = sub_22BE18944();
      sub_22BF0CE34(v8, v9, 0);
      v10 = sub_22BE191CC();
      v12 = 0;
LABEL_10:
      sub_22BF0CE34(v10, v11, v12);
      v19 = *&v3 == *&v5;
      return v19 & 1;
  }
}

BOOL sub_22BF0CB24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v12[2] = a3;
  v12[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v12[4] = 0;
  v12[5] = v6;

  do
  {
    v7 = sub_22C273204();
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v12[0] = v7;
    v12[1] = v8;
    v10 = a1(v12);

    if (v4)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);

  return v9 != 0;
}

BOOL sub_22BF0CBD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_22BF0CCE8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_22BF0CE18(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 5)
  {
  }

  return result;
}

uint64_t sub_22BF0CE34(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 5)
  {
  }

  return result;
}

uint64_t sub_22BF0CE60(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t static Parser.parse(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v79 = a3;
  v8 = sub_22C2720A4();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271B04();

  v16 = sub_22C272084();
  v17 = sub_22C273794();

  v18 = os_log_type_enabled(v16, v17);
  v80 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&__src[0] = v4;
    *v19 = 136380675;
    *(v19 + 4) = sub_22BE61C88(a1, v80, __src);
    _os_log_impl(&dword_22BE15000, v16, v17, "Parsing plan:\n%{private}s", v19, 0xCu);
    sub_22BE26B64(v4);
    sub_22BE183C8();
    a2 = v80;
    sub_22BE183C8();
  }

  (*(v11 + 8))(v15, v8);
  *(&__src[4] + 1) = 0;
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v20;
  memset(&__src[2], 0, 32);
  LOBYTE(__src[4]) = -1;
  swift_bridgeObjectRetain_n();
  while (1)
  {
    Lexer.next()(__dst);
    sub_22BE36718();
    if (v21)
    {
      break;
    }

    v22 = sub_22BE230E8();
    sub_22BF0CE18(v22, v23, v24);
    if (v4)
    {
      sub_22BF0D574(0, 0, 0xFFu);
      v34 = sub_22BE230E8();
      sub_22BF0CE34(v34, v35, v36);
      break;
    }

    sub_22BF0D574(0, 0, 0xFFu);
    if (v17 < 0)
    {
      LOBYTE(v4) = 0;
      break;
    }

    v25 = sub_22BE1BED4();
    sub_22BF0D574(v25, v26, v27);
    v28 = sub_22BE1BED4();
    sub_22BF0D530(v28, v29, v30);
    __src[3] = 0uLL;
    LOBYTE(__src[4]) = -1;
    v31 = sub_22BE1BED4();
    sub_22BF0D530(v31, v32, v33);
  }

  v84 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 != 0xFF)
    {
      goto LABEL_16;
    }

    Lexer.next()(__dst);
    v37 = __dst[0];
    v38 = __dst[1];
    v39 = LOBYTE(__dst[2]);
    sub_22BF0D530(*&__src[3], *(&__src[3] + 1), __src[4]);
    *&__src[3] = v37;
    *(&__src[3] + 1) = v38;
    LOBYTE(__src[4]) = v39;
    if (v39 == 255)
    {
      break;
    }

    sub_22BE290CC();
    sub_22BF0CE18(v40, v41, v42);
LABEL_16:
    v43 = sub_22BE230E8();
    sub_22BF0D574(v43, v44, v45);
    sub_22BE290CC();
    sub_22BF0D530(v46, v47, v48);
    v49 = sub_22BF0D588();
    if (v5)
    {

      goto LABEL_33;
    }

    v50 = v49;

    v51 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE26828();
      v51 = v76;
    }

    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    v81 = 0;
    if (v53 >= v52 >> 1)
    {
      sub_22BE66B04(v52 > 1, v53 + 1, 1, v51);
      v51 = v77;
    }

    *(v51 + 16) = v53 + 1;
    v84 = v51;
    *(v51 + 8 * v53 + 32) = v50;
    v54 = *&__src[3];
    v55 = __src[4];
    while (1)
    {
      LOBYTE(v4) = v55;
      if (v55 == 0xFF)
      {
        Lexer.next()(__dst);
        sub_22BE36718();
        if (v21)
        {
          goto LABEL_30;
        }

        v56 = sub_22BE230E8();
        sub_22BF0CE18(v56, v57, v58);
      }

      if (v55)
      {
        v71 = sub_22BE1AEE4();
        sub_22BF0D574(v71, v72, v55);
        v73 = sub_22BE230E8();
        sub_22BF0CE34(v73, v74, v75);
        goto LABEL_30;
      }

      v59 = *(&__src[4] + 1);
      v60 = sub_22BE1AEE4();
      sub_22BF0D574(v60, v61, v55);
      if (v54 < v59)
      {
        break;
      }

      v62 = sub_22BE1BED4();
      sub_22BF0D574(v62, v63, v64);
      v65 = sub_22BE1BED4();
      sub_22BF0D530(v65, v66, v67);
      __src[3] = 0uLL;
      v55 = -1;
      LOBYTE(__src[4]) = -1;
      v68 = sub_22BE1BED4();
      sub_22BF0D530(v68, v69, v70);
      v54 = 0;
    }

    LOBYTE(v4) = 0;
LABEL_30:

    v5 = v81;
  }

  *v79 = v84;
LABEL_33:
  memcpy(__dst, __src, sizeof(__dst));
  return sub_22BF0D544(__dst);
}

uint64_t sub_22BF0D33C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  if (v2 == 255)
  {

    return Lexer.next()(a1);
  }

  else
  {
    v4 = *(v1 + 48);
    v3 = *(v1 + 56);
    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v2;
    sub_22BF0CE18(v4, v3, v2);
    result = sub_22BF0D530(v4, v3, v2);
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = -1;
  }

  return result;
}

uint64_t sub_22BF0D3C4()
{
  while (1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 48);
    v3 = *(v0 + 64);
    if (v3 == 255)
    {
      Lexer.next()(&v35);
      v2 = v35;
      v4 = v36;
      v3 = v37;
      v5 = sub_22BE3E574();
      result = sub_22BF0D530(v5, v6, v7);
      *(v0 + 48) = v2;
      *(v0 + 56) = v4;
      *(v0 + 64) = v3;
      if (v3 == 255)
      {
        return result;
      }

      v9 = sub_22BE25AB8();
      sub_22BF0CE18(v9, v10, v11);
    }

    if (v3)
    {
      break;
    }

    if (v2 < *(v0 + 72))
    {
      v32 = sub_22BE22BD8();

      return sub_22BF0D574(v32, v33, v34);
    }

    v12 = *(v0 + 64);
    if (v12 == 255)
    {
      v21 = sub_22BE22BD8();
      sub_22BF0D574(v21, v22, v23);
      Lexer.next()(&v35);
      LOBYTE(v12) = v37;
    }

    else
    {
      v13 = *(v0 + 56);
      v35 = *(v0 + 48);
      v36 = v13;
      v14 = sub_22BE22BD8();
      sub_22BF0D574(v14, v15, v16);
      v17 = sub_22BE18240();
      sub_22BF0D574(v17, v18, v12);
      v19 = sub_22BE18240();
      sub_22BF0D530(v19, v20, v12);
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = -1;
    }

    v24 = sub_22BE18240();
    sub_22BF0D530(v24, v25, v12);
  }

  v26 = sub_22BE22BD8();
  sub_22BF0D574(v26, v27, v28);
  v29 = sub_22BE25AB8();

  return sub_22BF0CE34(v29, v30, v31);
}

uint64_t sub_22BF0D530(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22BF0CE34(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22BF0D574(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22BF0CE18(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_22BF0D588()
{
  sub_22BF0D3C4();
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = v2;
  if (v2 == 255)
  {
    Lexer.next()(&v18);
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = sub_22BE3E574();
    sub_22BF0D530(v6, v7, v8);
    *(v0 + 48) = v3;
    *(v0 + 56) = v4;
    *(v0 + 64) = v5;
    if (v5 == 255)
    {
      goto LABEL_9;
    }

    sub_22BF0CE18(v3, v4, v5);
  }

  if (v5 == 6)
  {
    if (!(v3 ^ 0x20 | v4))
    {
      v15 = sub_22BE196A8();
      sub_22BF0D574(v15, v16, v2);
      sub_22BF0D33C(&v18);
      sub_22BF0D530(v18, v19, v20);
      v11 = sub_22BF0DCE4();
LABEL_12:
      v2 = v11;
      sub_22BF0D530(v3, v4, 6u);
      if (v1)
      {
        return v2;
      }

      goto LABEL_14;
    }

    if (!(v3 ^ 0x22 | v4))
    {
      v9 = sub_22BE196A8();
      sub_22BF0D574(v9, v10, v2);
      sub_22BF0D33C(&v18);
      sub_22BF0D530(v18, v19, v20);
      sub_22BF0D9C4();
      goto LABEL_12;
    }
  }

  v12 = sub_22BE196A8();
  sub_22BF0D574(v12, v13, v2);
  sub_22BF0D530(v3, v4, v5);
LABEL_9:
  sub_22BF0DDC4();
  if (v1)
  {
    return v2;
  }

  v2 = v14;
LABEL_14:
  sub_22BF0D3C4();
  return v2;
}

uint64_t sub_22BF0D6F8()
{
  v3 = v1;
  sub_22BF0D33C(&v54);
  if (v56)
  {
    if (v56 != 255)
    {
      sub_22BF0D530(v54, v55, v56);
    }

    goto LABEL_5;
  }

  if (v54 < *(v0 + 72))
  {
LABEL_5:
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v4, 1);
    return i;
  }

  v52 = *(v0 + 72);
  v53 = v54;
  *(v0 + 72) = v54;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v47 + 32) = v41)
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 48);
    v8 = *(v0 + 64);
    if (v8 == 255)
    {
      Lexer.next()(&v54);
      v7 = v54;
      v9 = v55;
      v8 = v56;
      v10 = sub_22BE3E574();
      sub_22BF0D530(v10, v11, v12);
      *(v0 + 48) = v7;
      *(v0 + 56) = v9;
      *(v0 + 64) = v8;
      if (v8 == 255)
      {
        goto LABEL_32;
      }

      sub_22BE289C0();
      sub_22BF0CE18(v13, v14, v15);
    }

    sub_22BE290CC();
    if (v8)
    {
      sub_22BF0D574(v16, v17, v18);
      sub_22BE289C0();
      sub_22BF0CE34(v19, v20, v21);
    }

    else
    {
      sub_22BF0D574(v16, v17, v18);
      if (v7 < v53)
      {
LABEL_32:
        *(v0 + 72) = v52;
        return i;
      }
    }

    sub_22BF0D3C4();
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = v22;
    if (v22 != 255)
    {
      break;
    }

    Lexer.next()(&v54);
    v23 = v54;
    v24 = v55;
    v25 = v56;
    v26 = sub_22BE3E574();
    sub_22BF0D530(v26, v27, v28);
    *(v0 + 48) = v23;
    *(v0 + 56) = v24;
    *(v0 + 64) = v25;
    if (v25 != 255)
    {
      v29 = sub_22BE18240();
      sub_22BF0CE18(v29, v30, v25);
      break;
    }

LABEL_22:
    sub_22BF0DDC4();
    if (v3)
    {
      goto LABEL_34;
    }

    v41 = v40;
LABEL_27:
    sub_22BF0D3C4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE26828();
      i = v48;
    }

    v47 = *(i + 16);
    v46 = *(i + 24);
    if (v47 >= v46 >> 1)
    {
      sub_22BE66B04(v46 > 1, v47 + 1, 1, i);
      i = v49;
    }

    *(i + 16) = v47 + 1;
  }

  if (v25 != 6)
  {
LABEL_21:
    v36 = sub_22BE191C0();
    sub_22BF0D574(v36, v37, v22);
    v38 = sub_22BE18240();
    sub_22BF0D530(v38, v39, v25);
    goto LABEL_22;
  }

  if (v23 ^ 0x20 | v24)
  {
    if (!(v23 ^ 0x22 | v24))
    {
      v31 = sub_22BE191C0();
      sub_22BF0D574(v31, v32, v22);
      sub_22BF0D33C(&v54);
      v33 = sub_22BF0D530(v54, v55, v56);
      v34 = v3;
      v35 = sub_22BF0D9C4(v33);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v42 = sub_22BE191C0();
  sub_22BF0D574(v42, v43, v22);
  sub_22BF0D33C(&v54);
  sub_22BF0D530(v54, v55, v56);
  v34 = v3;
  v35 = sub_22BF0DCE4();
LABEL_25:
  v3 = v34;
  if (!v34)
  {
    v41 = v35;
    v44 = sub_22BE18240();
    sub_22BF0D530(v44, v45, 6u);
    goto LABEL_27;
  }

  v50 = sub_22BE18240();
  sub_22BF0D530(v50, v51, 6u);
LABEL_34:

  *(v0 + 72) = v52;
  return i;
}

void sub_22BF0D9C4()
{
  sub_22BF0DED8(0, &v94);
  if (!v1)
  {
    v10 = v94;
    sub_22BE2C670(v2, v3, v4, v5, v6, v7, v8, v9, 27, 0, 27, 0, v96);
    v97 = sub_22BF0D6F8();
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = v11;
    if (v11 == 255)
    {
      Lexer.next()(&v94);
      v13 = v95;
      v12 = v94;
      v14 = v96;
      v15 = sub_22BE3E574();
      sub_22BF0D530(v15, v16, v17);
      *(v0 + 48) = v12;
      *(v0 + 56) = v13;
      *(v0 + 64) = v14;
      if (v14 == 255)
      {
        goto LABEL_19;
      }

      sub_22BF0CE18(v12, v13, v14);
    }

    if (v14)
    {
      v18 = sub_22BE196A8();
      sub_22BF0D574(v18, v19, v11);
      sub_22BF0CE34(v12, v13, v14);
    }

    else
    {
      v20 = *(v0 + 72);
      v21 = sub_22BE196A8();
      if (v12 != v23)
      {
        sub_22BF0D574(v21, v22, v11);
        goto LABEL_19;
      }

      sub_22BF0D574(v21, v22, v11);
      v24 = sub_22BF0D33C(&v94);
      v32 = sub_22BE201D0(v24, v25, v26, v27, v28, v29, v30, v31, v88, v91, v94);
      sub_22BF0D530(v32, v33, v34);
      v35 = *(v0 + 64);
      v36 = *(v0 + 48);
      v37 = *(v0 + 56);
      v38 = v35;
      if (v35 == 255)
      {
        Lexer.next()(&v94);
        v37 = v95;
        v36 = v94;
        v38 = v96;
        v39 = sub_22BE3E574();
        sub_22BF0D530(v39, v40, v41);
        *(v0 + 48) = v36;
        *(v0 + 56) = v37;
        *(v0 + 64) = v38;
        if (v38 == 255)
        {
          goto LABEL_19;
        }

        sub_22BF0CE18(v36, v37, v38);
      }

      if (v38 == 6)
      {
        if (!(v36 ^ 0x24 | v37))
        {
          v60 = sub_22BE191C0();
          sub_22BF0D574(v60, v61, v35);
          v62 = sub_22BF0D33C(&v94);
          v70 = sub_22BE201D0(v62, v63, v64, v65, v66, v67, v68, v69, v89, v92, v94);
          v73 = sub_22BF0D530(v70, v71, v72);
          sub_22BE2C670(v73, v74, v75, v76, v77, v78, v79, v80, v90, v93, v90, v93, v96);
          v85 = sub_22BF0D6F8();
          v58 = v97;
          v82 = v85;
          v86 = sub_22BE18240();
          sub_22BF0D530(v86, v87, 6u);
          goto LABEL_21;
        }

        if (!(v36 ^ 0x23 | v37))
        {
          v42 = sub_22BE191C0();
          sub_22BF0D574(v42, v43, v35);
          v44 = sub_22BF0D33C(&v94);
          v52 = sub_22BE201D0(v44, v45, v46, v47, v48, v49, v50, v51, v89, v92, v94);
          v55 = sub_22BF0D530(v52, v53, v54);
          v81 = sub_22BF0D9C4(v55);
          sub_22BE5CE4C(&qword_27D907388, &qword_22C2752F8);
          sub_22BE2B7C4();
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_22C275160;
          *(v82 + 32) = v81;
          v83 = sub_22BE1AEE4();
          sub_22BF0D530(v83, v84, 6u);
LABEL_20:
          v58 = v97;
LABEL_21:
          sub_22BE2B7C4();
          v59 = swift_allocObject();
          v59[2] = v10;
          v59[3] = v58;
          v59[4] = v82;
          return;
        }
      }

      v56 = sub_22BE191C0();
      sub_22BF0D574(v56, v57, v35);
      sub_22BF0D530(v36, v37, v38);
    }

LABEL_19:
    v82 = 0;
    goto LABEL_20;
  }
}

unint64_t sub_22BF0DCE4()
{
  result = sub_22BF0F528();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_22BE1A624();
    sub_22BF0F5D8(v5);
    sub_22BE3C37C(v11);
    v6 = v11[0];
    sub_22BE1A624();
    v8 = sub_22BF0F5D8(v7);
    v9 = sub_22BF0D6F8(v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    *(v10 + 32) = v6;
    *(v10 + 40) = v9;
    return v10 | 0x8000000000000000;
  }

  return result;
}

void sub_22BF0DDC4()
{
  sub_22BF0DED8(0, &v22);
  if (!v1)
  {
    v2 = v22;
    if (v22 >> 60 != 2 || *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 1)
    {
      goto LABEL_9;
    }

    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    if (v5 == 255)
    {
      Lexer.next()(v20);
      v6 = v20[0];
      v7 = v20[1];
      v5 = v21;
      v8 = sub_22BE3E574();
      sub_22BF0D530(v8, v9, v10);
      *(v0 + 48) = v6;
      *(v0 + 56) = v7;
      *(v0 + 64) = v5;
      if (v5 == 255)
      {
LABEL_9:
        *(swift_allocObject() + 16) = v2;
        return;
      }

      sub_22BE289C0();
      sub_22BF0CE18(v11, v12, v13);
    }

    v14 = sub_22BE25AB8();
    sub_22BF0D574(v14, v15, v16);
    if (v5)
    {
      sub_22BE289C0();
      sub_22BF0CE34(v17, v18, v19);
      sub_22BE3C37C(v20);
      sub_22BE63574(v2);
      v2 = v20[0];
    }

    goto LABEL_9;
  }
}

void sub_22BF0DED8(char a1@<W0>, unint64_t *a2@<X8>)
{
  sub_22BF0D3C4();
  sub_22BF0E384(&v71);
  if (!v3)
  {
    v67 = a1;
    v66 = a2;
    sub_22BF0D3C4();
    v6 = v71;
    while (1)
    {
      v7 = *(v2 + 48);
      v8 = *(v2 + 56);
      v9 = *(v2 + 64);
      if (v9 == 255)
      {
        Lexer.next()(&v69);
        v8 = *(&v69 + 1);
        v7 = v69;
        v9 = v70;
        v10 = sub_22BE3E574();
        sub_22BF0D530(v10, v11, v12);
        *(v2 + 48) = v7;
        *(v2 + 56) = v8;
        *(v2 + 64) = v9;
        if (v9 == 255)
        {
          goto LABEL_47;
        }

        sub_22BE25228();
        sub_22BF0CE18(v13, v14, v15);
      }

      if (v9 != 6 || (v7 - 2) > 0x1F)
      {
        break;
      }

      switch(v7)
      {
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 33:
          sub_22BE1BA14();
          if (v16 >= 5)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 9:
        case 11:
          sub_22BE1BA14();
          if (v20 < 6)
          {
            goto LABEL_20;
          }

          goto LABEL_45;
        case 13:
        case 16:
          sub_22BE1BA14();
          if (v18 >= 7)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 15:
          sub_22BE1BA14();
          if (v31 >= 9)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 18:
        case 31:
          sub_22BE1BA14();
          if (v17 >= 4)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 19:
          sub_22BE1BA14();
          if (v22 >= 0xB)
          {
            goto LABEL_48;
          }

LABEL_27:
          if (*(v2 + 64) == 255)
          {
            sub_22BE3AFB8();
            Lexer.next()(&v69);
          }

          else
          {
            v23 = *(v2 + 56);
            *&v69 = *(v2 + 48);
            *(&v69 + 1) = v23;
            sub_22BE3AFB8();
            v24 = sub_22BE18D3C();
            sub_22BF0D574(v24, v25, v26);
            v27 = sub_22BE18D3C();
            sub_22BF0D530(v27, v28, v29);
            sub_22BE1A230();
          }

          v46 = sub_22BE18D3C();
          sub_22BF0D530(v46, v47, v48);
          if (v6 >> 60)
          {
            v71 = v6;
            sub_22BF10374();
            sub_22BE3C818();
            swift_allocError();
            sub_22BE258F4(v65, 7);
            sub_22BEA7680(v6);
            sub_22BE63574(v71);
            sub_22BE63574(v6);
            return;
          }

          v50 = *(v6 + 16);
          v49 = *(v6 + 24);
          sub_22BEA7680(v6);

          v51 = sub_22BF0EB98();
          sub_22BE63574(v6);
          v52 = swift_allocObject();
          *(v52 + 16) = v50;
          *(v52 + 24) = v49;
          *(v52 + 32) = 0;
          *(v52 + 40) = 0;
          *(v52 + 48) = 0;
          *(v52 + 56) = v51;
          sub_22BE63574(v6);
          v6 = v52 | 0x7000000000000000;
          continue;
        case 20:
        case 21:
        case 22:
        case 24:
        case 26:
        case 27:
        case 28:
        case 32:
          goto LABEL_44;
        case 23:
        case 25:
          sub_22BE1BA14();
          if (v19 >= 0xA)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 29:
          sub_22BE1BA14();
          if (v21 >= 3)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 30:
          sub_22BE1BA14();
          if (v30 >= 2)
          {
LABEL_48:
            sub_22BE3AFB8();
LABEL_47:
            *v66 = v6;
            return;
          }

LABEL_22:
          v68 = v6;
          sub_22BE3AFB8();
          sub_22BEA7680(v6);
          sub_22BF0E918(&v68, &v69);
          sub_22BE63574(v6);
          sub_22BE63574(v6);
LABEL_23:
          v6 = v69;
          break;
        default:
          if (!v67)
          {
LABEL_20:
            if ((v7 - 2) <= 0x1F)
            {
              switch(v7)
              {
                case 18:
                case 20:
                case 21:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 31:
                case 32:
                  break;
                case 19:
                  goto LABEL_27;
                case 23:
                  if (*(v2 + 64) == 255)
                  {
                    sub_22BE3AFB8();
                    Lexer.next()(&v69);
                  }

                  else
                  {
                    v39 = *(v2 + 56);
                    *&v69 = *(v2 + 48);
                    *(&v69 + 1) = v39;
                    sub_22BE3AFB8();
                    v40 = sub_22BE18D3C();
                    sub_22BF0D574(v40, v41, v42);
                    v43 = sub_22BE18D3C();
                    sub_22BF0D530(v43, v44, v45);
                    sub_22BE1A230();
                  }

                  v56 = sub_22BE18D3C();
                  sub_22BF0D530(v56, v57, v58);
                  v59 = sub_22BEA7680(v6);
                  sub_22BE3C37C(&v69, v59);
                  v60 = v69;
                  v69 = xmmword_22C28B590;
                  v70 = 6;
                  sub_22BF0F5D8(&v69);
                  sub_22BE63574(v6);
                  sub_22BE236BC();
                  v61 = swift_allocObject();
                  *(v61 + 16) = v6;
                  *(v61 + 24) = v60;
                  v6 = v61 | 0x6000000000000000;
                  continue;
                case 25:
                  if (*(v2 + 64) == 255)
                  {
                    sub_22BE3AFB8();
                    Lexer.next()(&v69);
                  }

                  else
                  {
                    v32 = *(v2 + 56);
                    *&v69 = *(v2 + 48);
                    *(&v69 + 1) = v32;
                    sub_22BE3AFB8();
                    v33 = sub_22BE18D3C();
                    sub_22BF0D574(v33, v34, v35);
                    v36 = sub_22BE18D3C();
                    sub_22BF0D530(v36, v37, v38);
                    sub_22BE1A230();
                  }

                  v53 = sub_22BE18D3C();
                  sub_22BF0D530(v53, v54, v55);
                  v68 = v6;
                  sub_22BEA7680(v6);
                  sub_22BF0E69C(&v68, &v69);
                  sub_22BE63574(v6);
                  sub_22BE63574(v6);
                  goto LABEL_23;
                default:
                  goto LABEL_22;
              }
            }
          }

LABEL_45:
          sub_22BE3AFB8();
          v62 = v7;
          v63 = v8;
          v64 = 6;
          goto LABEL_46;
      }
    }

LABEL_44:
    sub_22BE3AFB8();
    sub_22BE25228();
LABEL_46:
    sub_22BF0CE34(v62, v63, v64);
    goto LABEL_47;
  }
}

void sub_22BF0E384(uint64_t *a1@<X8>)
{
  sub_22BF0D33C(&v28);
  v3 = v30;
  if (v30 == 255)
  {
    sub_22BF103C8();
    sub_22BE3C818();
    swift_allocError();
    *v7 = 0xD000000000000070;
    *(v7 + 8) = 0x800000022C2D39B0;
    *(v7 + 16) = xmmword_22C28B8A0;
    *(v7 + 32) = 0xEE00292873684C72;
    swift_willThrow();
  }

  else
  {
    v5 = v28;
    v4 = v29;
    switch(v30)
    {
      case 1u:
        sub_22BE236BC();
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *(v6 + 24) = v4;
        *a1 = v6;
        return;
      case 2u:
        sub_22BE2699C();
        v15 = swift_allocObject();
        *(v15 + 16) = v5 & 1;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        goto LABEL_10;
      case 3u:
        sub_22BE2699C();
        v15 = swift_allocObject();
        *(v15 + 16) = v5;
        *(v15 + 24) = 0;
        v16 = 1;
        goto LABEL_8;
      case 4u:
        sub_22BE2699C();
        v15 = swift_allocObject();
        *(v15 + 16) = v5;
        *(v15 + 24) = 0;
        v16 = 2;
LABEL_8:
        *(v15 + 32) = v16;
        goto LABEL_10;
      case 5u:
        sub_22BE2699C();
        v8 = swift_allocObject();
        sub_22BE1AB1C();
        v9 = String.unescapedForPython.getter();
        v11 = v10;
        v12 = sub_22BE1AB1C();
        sub_22BF0D530(v12, v13, 5u);
        *(v8 + 16) = v9;
        *(v8 + 24) = v11;
        *(v8 + 32) = 3;
        v14 = v8 | 0x2000000000000000;
        goto LABEL_11;
      case 6u:
        if (!(v28 ^ 1 | v29))
        {
          sub_22BE2699C();
          v15 = swift_allocObject();
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *(v15 + 32) = 7;
LABEL_10:
          v14 = v15 | 0x2000000000000000;
          goto LABEL_11;
        }

        sub_22BE25470();
        if (v17)
        {
          sub_22BE25470();
          if (v18)
          {
            sub_22BE25470();
            if (v19)
            {
              sub_22BE25470();
              if (!v20)
              {
                sub_22BF0EB20(a1);
                return;
              }

              sub_22BE25470();
              if (!v21)
              {
                sub_22BF0EAAC(a1);
                return;
              }

              if (!(v5 ^ 0x1C | v4))
              {
                v14 = 0xB000000000000008;
LABEL_11:
                *a1 = v14;
                return;
              }

              if (v5 ^ 0x1F | v4)
              {
LABEL_22:
                sub_22BF10374();
                sub_22BE3C818();
                swift_allocError();
                sub_22BE258F4(v25, 6);
                v26 = sub_22BE1AB1C();
                sub_22BF0D530(v26, v27, v3);
                return;
              }
            }

            sub_22BE35B3C();
            if (!v1)
            {
              v22 = v28;
              sub_22BE236BC();
              v23 = swift_allocObject();
              v24 = 2;
LABEL_31:
              *(v23 + 16) = v24;
              goto LABEL_32;
            }
          }

          else
          {
            sub_22BE35B3C();
            if (!v1)
            {
              v22 = v28;
              sub_22BE236BC();
              v23 = swift_allocObject();
              v24 = 1;
              goto LABEL_31;
            }
          }
        }

        else
        {
          sub_22BE35B3C();
          if (!v1)
          {
            v22 = v28;
            sub_22BE236BC();
            v23 = swift_allocObject();
            *(v23 + 16) = 0;
LABEL_32:
            *(v23 + 24) = v22;
            v14 = v23 | 0x3000000000000000;
            goto LABEL_11;
          }
        }

        break;
      default:
        goto LABEL_22;
    }
  }
}

unint64_t sub_22BF0E69C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  result = sub_22BF0F528();
  if (!v3)
  {
    v9 = result;
    v10 = v8;
    v31 = a2;
    v35 = 0;
    v12 = *(v2 + 48);
    v11 = *(v2 + 56);
    v13 = *(v2 + 64);
    v14 = v12;
    v15 = *(v4 + 56);
    v16 = v13;
    v17 = *(v4 + 64) == 255;
    if (v13 == 255)
    {
      v30 = *(v4 + 56);
      Lexer.next()(&v32);
      v14 = v32;
      v15 = v33;
      v16 = v34;
      sub_22BF0D530(*(v4 + 48), *(v4 + 56), *(v4 + 64));
      *(v4 + 48) = v14;
      *(v4 + 56) = v15;
      *(v4 + 64) = v16;
      if (v16 == 255)
      {
LABEL_13:
        sub_22BE2B7C4();
        v20 = swift_allocObject();
        *(v20 + 16) = v6;
        *(v20 + 24) = v9;
        *(v20 + 32) = v10;
        *v31 = v20 | 0x5000000000000000;
        return sub_22BEA7680(v6);
      }

      sub_22BF0CE18(v14, v15, v16);
      v11 = v30;
    }

    if (v16 != 6 || v14 != 19 || v15 != 0)
    {
      sub_22BF0D574(v12, v11, v13);
      sub_22BF0CE34(v14, v15, v16);
      goto LABEL_13;
    }

    sub_22BF0D574(v12, v11, v13);
    sub_22BF0D33C(&v32);
    sub_22BF0D530(v32, v33, v34);
    sub_22BEA7680(v6);
    v21 = v35;
    while (v6 >> 60 == 5)
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v32 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = v23;
      sub_22BEA7680(v22);

      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      v24 = sub_22BE18240();
      MEMORY[0x2318AB8D0](v24);

      sub_22BE63574(v6);
      v9 = v32;
      v10 = v33;
      v6 = v22;
    }

    if (!(v6 >> 60))
    {
      v25 = *(v6 + 24);
      v32 = *(v6 + 16);
      v33 = v25;

      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      v26 = sub_22BE18240();
      MEMORY[0x2318AB8D0](v26);

      v9 = v32;
      v10 = v33;
    }

    v27 = sub_22BF0EB98();
    if (v21)
    {
      swift_bridgeObjectRelease_n();
      return sub_22BE63574(v6);
    }

    else
    {
      v28 = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = v9;
      *(v29 + 24) = v10;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = v28;

      result = sub_22BE63574(v6);
      *v31 = v29 | 0x7000000000000000;
    }
  }

  return result;
}

unint64_t sub_22BF0E918@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_22BF0D33C(v17);
  v5 = v18;
  if (v18 == 255)
  {
    sub_22BF103C8();
    sub_22BE3C818();
    swift_allocError();
    *v16 = 0xD000000000000070;
    *(v16 + 8) = 0x800000022C2D39B0;
    *(v16 + 16) = xmmword_22C28B8B0;
    *(v16 + 32) = 0x800000022C2D3A30;
    return swift_willThrow();
  }

  else if (v18 == 6 && (v6 = v17[0] - 2, __PAIR128__((v17[0] >= 2uLL) + v17[1] - 1, v17[0] - 2) < 0x20) && ((0x9800FFFF >> v6) & 1) != 0)
  {
    v7 = byte_22C28BB2E[v6];
    v8 = sub_22BE1AEE4();
    sub_22BF0D530(v8, v9, 6u);
    result = sub_22BF0DED8(byte_22C28BB0E[v6]);
    if (!v2)
    {
      v11 = v17[0];
      sub_22BE2B7C4();
      v12 = swift_allocObject();
      *(v12 + 16) = v7;
      *(v12 + 24) = v4;
      *(v12 + 32) = v11;
      *a2 = v12 | 0x4000000000000000;
      return sub_22BEA7680(v4);
    }
  }

  else
  {
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v13, 9);
    v14 = sub_22BE1AEE4();
    return sub_22BF0D530(v14, v15, v5);
  }

  return result;
}

uint64_t sub_22BF0EAAC@<X0>(uint64_t *a1@<X8>)
{
  sub_22BE1A624();
  result = sub_22BF0FDA8(v3);
  if (!v1)
  {
    v5 = result;
    sub_22BE2699C();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = 0;
    *(result + 32) = 4;
    *a1 = result | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_22BF0EB20@<X0>(void *a1@<X8>)
{
  result = sub_22BF0DED8(0);
  if (!v1)
  {
    sub_22BE1A624();
    result = sub_22BF0F5D8(v4);
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22BF0EB98()
{
  v2 = v0;
  v113 = sub_22C2720A4();
  v3 = sub_22BE179D8(v113);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v114 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v110 = &v107 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v108 = &v107 - v11;
  MEMORY[0x28223BE20](v10);
  v109 = &v107 - v12;
  v13 = MEMORY[0x277D84F98];
  v124 = MEMORY[0x277D84F98];
  v112 = (v14 + 8);
  v119 = xmmword_22C28B5D0;
  v115 = xmmword_22C28B8C0;
  v117 = xmmword_22C28B570;
  while (1)
  {
    v15 = v13;
    sub_22BF0D3C4();
    v16 = *(v2 + 64);
    v17 = *(v2 + 48);
    v18 = *(v2 + 56);
    v19 = v16;
    if (v16 == 255)
    {
      sub_22BE31190();
      v17 = v120;
      v18 = v121;
      v19 = v122;
      sub_22BF10654();
      *(v2 + 48) = v17;
      *(v2 + 56) = v18;
      *(v2 + 64) = v19;
      if (v19 == 255)
      {
        goto LABEL_60;
      }

      sub_22BF0CE18(v17, v18, v19);
    }

    v120 = v17;
    v121 = v18;
    v122 = v19;
    sub_22BE1C2E8(v119);
    v20 = sub_22BE1AEE4();
    if (sub_22BE357F8(v20, v21, v16))
    {
      break;
    }

    v118 = v15;
    if (v19 != 1)
    {
      sub_22BF0CE34(v17, v18, v19);
      v32 = sub_22BE18560();
      sub_22BF0DED8(v32);
      if (v1)
      {
        goto LABEL_61;
      }

      v24 = v120;
      if (*(v15 + 16))
      {

        sub_22BE35528();
        v34 = v33;

        if (v34)
        {
          sub_22C271B04();
          v35 = sub_22C272084();
          v36 = sub_22C2737A4();
          if (sub_22BE22C54(v36))
          {
            v37 = sub_22BE202F8();
            sub_22BE33A00(v37);
            _os_log_impl(&dword_22BE15000, v35, v38, "Duplicate parameter in function call. Overriding!", v37, 2u);
            sub_22BE183C8();
          }

          (*v112)(v114, v113);
        }
      }

      goto LABEL_51;
    }

    sub_22BF0CE34(v17, v18, 1u);
    v22 = sub_22BE18560();
    sub_22BF0F7DC(v22, v23);
    if (v1)
    {
      goto LABEL_61;
    }

    v24 = v120;
    if (v120 >> 60)
    {
      if (v120 >> 60 != 6)
      {
        goto LABEL_46;
      }

      v40 = *((v120 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v120 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v40 >> 60)
      {
        sub_22BEA7680(v120);
        sub_22BEA7680(v40);
        sub_22BEA7680(v39);
        sub_22BE63574(v40);
        sub_22BE63574(v39);
        sub_22BE63574(v24);
        goto LABEL_46;
      }

      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      sub_22BEA7680(v120);
      sub_22BEA7680(v40);
      sub_22BEA7680(v39);

      sub_22BE63574(v40);
      if (v39 >> 60 != 2)
      {
        sub_22BE63574(v39);
        sub_22BE63574(v24);
LABEL_44:

        goto LABEL_45;
      }

      v43 = *((v39 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((v39 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_22BE63574(v39);
      sub_22BE63574(v24);
      if (v44 != 1)
      {
        goto LABEL_44;
      }

      v116 = v43;
      v111 = v41;
      v45 = *(v2 + 56);
      v46 = *(v2 + 64);
      LOBYTE(v47) = *(v2 + 64);
      v30 = v45;
      v48 = *(v2 + 48);
      if (v46 == 255)
      {
        v107 = *(v2 + 48);
        sub_22BE31190();
        v48 = v120;
        v30 = v121;
        v47 = v122;
        sub_22BF10654();
        *(v2 + 48) = v48;
        *(v2 + 56) = v30;
        *(v2 + 64) = v47;
        v49 = sub_22BE2F144();
        sub_22BF0D574(v49, v50, v51);
        if (v47 == 255)
        {
          sub_22BF0D574(v107, v45, 0xFFu);

          v86 = v48;
LABEL_42:
          sub_22BF0D530(v86, v30, 0xFFu);
          sub_22BF0D530(2, 0, 6u);
LABEL_45:
          v15 = v118;
LABEL_46:
          if (*(v15 + 16))
          {

            sub_22BE35528();
            v88 = v87;

            if (v88)
            {
              sub_22C271B04();
              v89 = sub_22C272084();
              v90 = sub_22C2737A4();
              if (sub_22BE22C54(v90))
              {
                v91 = sub_22BE202F8();
                sub_22BE33A00(v91);
                _os_log_impl(&dword_22BE15000, v89, v92, "Duplicate parameter in function call. Overriding!", v91, 2u);
                sub_22BE183C8();
              }

              (*v112)(v110, v113);
            }
          }

LABEL_51:
          sub_22BE3D41C();
          sub_22BEA7680(v24);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22BE38300();
          sub_22BE6263C();
          v13 = v123;
          v124 = v123;
          swift_endAccess();
          goto LABEL_52;
        }
      }

      v120 = v48;
      v121 = v30;
      v122 = v47;
      sub_22BE1C2E8(v115);
      sub_22BF0D574(v52, v45, v46);
      v53 = sub_22BE2F144();
      sub_22BE357F8(v53, v54, v55);
      sub_22BE19EDC();
      v56 = sub_22BE2F144();
      sub_22BF0D530(v56, v57, v58);
      if ((v46 & 1) == 0)
      {
        goto LABEL_44;
      }

      sub_22BE17C18(v115);
      v59 = sub_22BE18560();
      sub_22BF0DED8(v59);
      v60 = v120;
      v61 = v111;
      if (*(v118 + 16))
      {

        sub_22BE60508(v61, v42, v116, 1u);
        v63 = v62;

        if (v63)
        {
          sub_22C271B04();
          v64 = sub_22C272084();
          v65 = sub_22C2737A4();
          if (sub_22BE22C54(v65))
          {
            v66 = sub_22BE202F8();
            sub_22BE33A00(v66);
            _os_log_impl(&dword_22BE15000, v64, v67, "Duplicate parameter in function call. Overriding!", v66, 2u);
            sub_22BE183C8();
          }

          (*v112)(v108, v113);
        }
      }

      sub_22BE3D41C();
      sub_22BEA7680(v60);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE38300();
      sub_22BE196A8();
      sub_22BE6263C();
    }

    else
    {
      v25 = *(v120 + 24);
      v111 = *(v120 + 16);
      v27 = *(v2 + 48);
      v26 = *(v2 + 56);
      v28 = *(v2 + 64);
      v116 = v25;
      if (v28 == 255)
      {

        sub_22BE31190();
        v31 = v120;
        v30 = v121;
        v29 = v122;
        sub_22BF10654();
        *(v2 + 48) = v31;
        *(v2 + 56) = v30;
        *(v2 + 64) = v29;
        v68 = sub_22BE2565C();
        sub_22BF0D574(v68, v69, v29);
        if (v29 == 255)
        {
          sub_22BF0D574(v27, v26, 0xFFu);

          v86 = v31;
          goto LABEL_42;
        }
      }

      else
      {

        LOBYTE(v29) = v28;
        v30 = v26;
        v31 = v27;
      }

      v120 = v31;
      v121 = v30;
      v122 = v29;
      sub_22BE1C2E8(v115);
      sub_22BF0D574(v27, v26, v28);
      v70 = sub_22BE2565C();
      sub_22BE357F8(v70, v71, v29);
      sub_22BE19EDC();
      v72 = sub_22BE2565C();
      sub_22BF0D530(v72, v73, v29);
      if ((v26 & 1) == 0)
      {
        goto LABEL_44;
      }

      sub_22BE17C18(v115);
      v74 = v118;
      v75 = sub_22BE18560();
      sub_22BF0DED8(v75);
      v60 = v120;
      if (*(v74 + 16))
      {

        sub_22BE3C818();
        sub_22BE60508(v76, v77, v78, v79);
        v81 = v80;

        if (v81)
        {
          sub_22C271B04();
          v82 = sub_22C272084();
          v83 = sub_22C2737A4();
          if (sub_22BE22C54(v83))
          {
            v84 = sub_22BE202F8();
            sub_22BE33A00(v84);
            _os_log_impl(&dword_22BE15000, v82, v85, "Duplicate parameter in function call. Overriding!", v84, 2u);
            sub_22BE183C8();
          }

          (*v112)(v109, v113);
        }
      }

      sub_22BE3D41C();
      sub_22BEA7680(v60);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BE38300();
      sub_22BE194C4();
      sub_22BE6263C();
    }

    v13 = v123;
    v124 = v123;
    swift_endAccess();
    sub_22BE63574(v24);
    v24 = v60;
LABEL_52:
    sub_22BE63574(v24);
    sub_22BF0D3C4();
    v93 = *(v2 + 48);
    v94 = *(v2 + 56);
    v95 = *(v2 + 64);
    LOBYTE(v24) = *(v2 + 64);
    v96 = v94;
    v97 = v93;
    if (v95 == 255)
    {
      sub_22BE31190();
      v97 = v120;
      v96 = v121;
      LODWORD(v24) = v122;
      sub_22BF10654();
      *(v2 + 48) = v97;
      *(v2 + 56) = v96;
      *(v2 + 64) = v24;
      v98 = sub_22BE2565C();
      sub_22BF0D574(v98, v99, v24);
      if (v24 == 255)
      {
        sub_22BF0D574(v93, v94, 0xFFu);
        v104 = sub_22BE2565C();
        sub_22BF0D530(v104, v105, 0xFFu);
        sub_22BF0D530(20, 0, 6u);
        goto LABEL_57;
      }
    }

    v120 = v97;
    v121 = v96;
    v122 = v24;
    sub_22BE1C2E8(v119);
    sub_22BF0D574(v93, v94, v95);
    v100 = sub_22BE2565C();
    sub_22BE357F8(v100, v101, v24);
    sub_22BE19EDC();
    v102 = sub_22BE2565C();
    sub_22BF0D530(v102, v103, v24);
    if ((v93 & 1) == 0)
    {
LABEL_57:
      sub_22BE17C18(v117);
    }
  }

  sub_22BF0CE34(v17, v18, v19);
LABEL_60:
  sub_22BE17C18(v119);
  if (!v1)
  {
    return v15;
  }

LABEL_61:

  return v15;
}

uint64_t sub_22BF0F528()
{
  v1 = *(v0 + 64);
  if (v1 == 255)
  {
    Lexer.next()(&v15);
    v2 = v15;
    v1 = v16;
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = sub_22BE373A8();
    sub_22BF0CE18(v4, v5, v6);
    v7 = sub_22BE373A8();
    sub_22BF0D530(v7, v8, v9);
    sub_22BE1A230();
  }

  if (v1 == 255)
  {
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v10 = sub_22BE373A8();
    sub_22BF0D530(v10, v11, v12);
LABEL_7:
    sub_22BF10374();
    sub_22BE3C818();
    swift_allocError();
    sub_22BE258F4(v13, 3);
  }

  return v2;
}

uint64_t sub_22BF0F5D8(uint64_t a1)
{
  v2 = *a1;
  v57 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = v5;
  v8 = v4;
  if (v6 == 255)
  {
    Lexer.next()(&v54);
    v8 = v54;
    v7 = v55;
    v6 = v56;
    v9 = sub_22BE3E574();
    sub_22BF0D530(v9, v10, v11);
    *(v1 + 48) = v8;
    *(v1 + 56) = v7;
    *(v1 + 64) = v6;
    v12 = sub_22BE1B368();
    sub_22BF0D574(v12, v13, v14);
    if (v6 == 255)
    {
      sub_22BF0D574(v4, v5, 0xFFu);
      if (v3 == 255)
      {
        sub_22BF0CE18(v2, v57, 0xFFu);
        sub_22BF0D530(v8, v7, 0xFFu);
        goto LABEL_5;
      }

      v40 = v57;
      sub_22BF0CE18(v2, v57, v3);
      goto LABEL_9;
    }
  }

  v54 = v8;
  v55 = v7;
  v56 = v6;
  if (v3 == 255)
  {
    sub_22BE25228();
    sub_22BF0D574(v37, v38, v39);
    v40 = v57;
    sub_22BF0CE18(v2, v57, 0xFFu);
    v41 = sub_22BE1B368();
    sub_22BF0D574(v41, v42, v43);
    v44 = sub_22BE1B368();
    sub_22BF0CE34(v44, v45, v46);
LABEL_9:
    v47 = sub_22BE1B368();
    sub_22BF0D530(v47, v48, v49);
    sub_22BF0D530(v2, v40, v3);
    goto LABEL_10;
  }

  v52[0] = v2;
  v52[1] = v57;
  v53 = v3;
  sub_22BE25228();
  sub_22BF0D574(v15, v16, v17);
  sub_22BE290CC();
  sub_22BF0CE18(v18, v19, v20);
  sub_22BF0D574(v8, v7, v6);
  v21 = static Lexer.Token.== infix(_:_:)(&v54, v52);
  v22 = v21;
  v30 = sub_22BE201D0(v21, v23, v24, v25, v26, v27, v28, v29, v7, v51, v52[0]);
  sub_22BF0CE34(v30, v31, v32);
  sub_22BF0CE34(v54, v55, v56);
  v33 = sub_22BE1B368();
  sub_22BF0D530(v33, v34, v35);
  if (v22)
  {
LABEL_5:
    sub_22BF0D33C(&v54);
    return sub_22BF0D530(v54, v55, v56);
  }

LABEL_10:
  sub_22BF10374();
  sub_22BE3C818();
  swift_allocError();
  return sub_22BE258F4(v50, 1);
}

void sub_22BF0F7DC(unsigned __int8 a1@<W0>, unint64_t *a2@<X8>)
{
  sub_22BF0D3C4();
  sub_22BF0E384(&v38);
  if (!v3)
  {
    v34 = a1;
    v33 = a2;
    sub_22BF0D3C4();
    v6 = v38;
    while (1)
    {
      v7 = *(v2 + 48);
      v8 = *(v2 + 56);
      v9 = *(v2 + 64);
      v10 = v7;
      v11 = v8;
      v12 = v9;
      if (v9 == 255)
      {
        Lexer.next()(&v36);
        v11 = *(&v36 + 1);
        v10 = v36;
        v12 = v37;
        sub_22BF0D530(*(v2 + 48), *(v2 + 56), *(v2 + 64));
        *(v2 + 48) = v10;
        *(v2 + 56) = v11;
        *(v2 + 64) = v12;
        if (v12 == 255)
        {
          goto LABEL_47;
        }

        sub_22BF0CE18(v10, v11, v12);
      }

      if (v12 != 6 || (v10 - 2) > 0x1F)
      {
        break;
      }

      switch(v10)
      {
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 33:
          if (v34 >= 5u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 9:
        case 11:
          if (v34 < 6u)
          {
            goto LABEL_20;
          }

          goto LABEL_45;
        case 13:
        case 16:
          if (v34 >= 7u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 15:
          if (v34 >= 9u)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 18:
        case 31:
          if (v34 >= 4u)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 19:
          if (v34 >= 0xBu)
          {
            goto LABEL_48;
          }

LABEL_31:
          v19 = *(v2 + 64);
          if (v19 == 255)
          {
            sub_22BF0D574(v7, v8, v9);
            Lexer.next()(&v36);
            v20 = *(&v36 + 1);
            v21 = v36;
            LOBYTE(v19) = v37;
          }

          else
          {
            v20 = *(v2 + 56);
            *&v36 = *(v2 + 48);
            v21 = v36;
            *(&v36 + 1) = v20;
            sub_22BF0D574(v7, v8, v9);
            sub_22BF0D574(v21, v20, v19);
            sub_22BF0D530(v21, v20, v19);
            *(v2 + 48) = 0;
            *(v2 + 56) = 0;
            *(v2 + 64) = -1;
          }

          sub_22BF0D530(v21, v20, v19);
          if (v6 >> 60)
          {
            v38 = v6;
            sub_22BF10374();
            swift_allocError();
            *v32 = 7;
            swift_willThrow();
            sub_22BEA7680(v6);
            sub_22BE63574(v38);
            sub_22BE63574(v6);
            return;
          }

          v23 = *(v6 + 16);
          v22 = *(v6 + 24);
          sub_22BEA7680(v6);

          v25 = sub_22BF0EB98(v24);
          sub_22BE63574(v6);
          v26 = swift_allocObject();
          *(v26 + 16) = v23;
          *(v26 + 24) = v22;
          *(v26 + 32) = 0;
          *(v26 + 40) = 0;
          *(v26 + 48) = 0;
          *(v26 + 56) = v25;
          sub_22BE63574(v6);
          v6 = v26 | 0x7000000000000000;
          continue;
        case 20:
        case 21:
        case 22:
        case 24:
        case 26:
        case 27:
        case 28:
        case 32:
          goto LABEL_44;
        case 23:
        case 25:
          if (v34 >= 0xAu)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        case 29:
          if (v34 >= 3u)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        case 30:
          if (v34 >= 2u)
          {
LABEL_48:
            sub_22BF0D574(v7, v8, v9);
LABEL_47:
            *v33 = v6;
            return;
          }

LABEL_22:
          v35 = v6;
          sub_22BF0D574(v7, v8, v9);
          sub_22BEA7680(v6);
          sub_22BF0E918(&v35, &v36);
          sub_22BE63574(v6);
          sub_22BE63574(v6);
LABEL_23:
          v6 = v36;
          break;
        default:
          if (!v34)
          {
LABEL_20:
            if ((v10 - 3) <= 0x1E)
            {
              switch(v10)
              {
                case 10:
                case 12:
                case 14:
                case 17:
                case 18:
                case 20:
                case 21:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 31:
                case 32:
                  break;
                case 19:
                  goto LABEL_31;
                case 23:
                  v13 = *(v2 + 64);
                  if (v13 == 255)
                  {
                    sub_22BF0D574(v7, v8, v9);
                    Lexer.next()(&v36);
                    v14 = *(&v36 + 1);
                    v15 = v36;
                    LOBYTE(v13) = v37;
                  }

                  else
                  {
                    v14 = *(v2 + 56);
                    *&v36 = *(v2 + 48);
                    v15 = v36;
                    *(&v36 + 1) = v14;
                    sub_22BF0D574(v7, v8, v9);
                    sub_22BF0D574(v15, v14, v13);
                    sub_22BF0D530(v15, v14, v13);
                    *(v2 + 48) = 0;
                    *(v2 + 56) = 0;
                    *(v2 + 64) = -1;
                  }

                  sub_22BF0D530(v15, v14, v13);
                  sub_22BEA7680(v6);
                  sub_22BF0DED8(0);
                  v27 = v36;
                  v36 = xmmword_22C28B590;
                  v37 = 6;
                  sub_22BF0F5D8(&v36);
                  sub_22BE63574(v6);
                  v28 = swift_allocObject();
                  *(v28 + 16) = v6;
                  *(v28 + 24) = v27;
                  v6 = v28 | 0x6000000000000000;
                  continue;
                case 25:
                  v16 = *(v2 + 64);
                  if (v16 == 255)
                  {
                    sub_22BF0D574(v7, v8, v9);
                    Lexer.next()(&v36);
                    v17 = *(&v36 + 1);
                    v18 = v36;
                    LOBYTE(v16) = v37;
                  }

                  else
                  {
                    v17 = *(v2 + 56);
                    *&v36 = *(v2 + 48);
                    v18 = v36;
                    *(&v36 + 1) = v17;
                    sub_22BF0D574(v7, v8, v9);
                    sub_22BF0D574(v18, v17, v16);
                    sub_22BF0D530(v18, v17, v16);
                    *(v2 + 48) = 0;
                    *(v2 + 56) = 0;
                    *(v2 + 64) = -1;
                  }

                  sub_22BF0D530(v18, v17, v16);
                  v35 = v6;
                  sub_22BEA7680(v6);
                  sub_22BF0E69C(&v36, &v35);
                  sub_22BE63574(v6);
                  sub_22BE63574(v6);
                  goto LABEL_23;
                default:
                  goto LABEL_22;
              }
            }
          }

LABEL_45:
          sub_22BF0D574(v7, v8, v9);
          v29 = v10;
          v30 = v11;
          v31 = 6;
          goto LABEL_46;
      }
    }

LABEL_44:
    sub_22BF0D574(v7, v8, v9);
    v29 = v10;
    v30 = v11;
    v31 = v12;
LABEL_46:
    sub_22BF0CE34(v29, v30, v31);
    goto LABEL_47;
  }
}

uint64_t sub_22BF0FDA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v94 = *a1;
  v4 = *(a1 + 16);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v100 = (v1 + 48);
  v7 = *(v1 + 64);
  LOBYTE(v8) = *(v1 + 64);
  v9 = v6;
  v10 = v5;
  v92 = v3;
  v93 = v4;
  if (v7 == 255)
  {
    Lexer.next()(&v97);
    v10 = v97;
    v9 = v98;
    v8 = v99;
    v11 = sub_22BE3E574();
    sub_22BF0D530(v11, v12, v13);
    *(v1 + 48) = v10;
    *(v1 + 56) = v9;
    *(v1 + 64) = v8;
    v14 = sub_22BE189A4();
    sub_22BF0D574(v14, v15, v16);
    if (v8 == 255)
    {
      sub_22BF0D574(v5, v6, 0xFFu);
      if (v93 == 255)
      {
        sub_22BF0CE18(v94, v3, 0xFFu);
        sub_22BF0D530(v10, v9, 0xFFu);
        goto LABEL_6;
      }

      v18 = v94;
      v42 = sub_22BE194C4();
      sub_22BF0CE18(v42, v43, v44);
      goto LABEL_10;
    }

    v4 = v93;
  }

  v97 = v10;
  v98 = v9;
  v99 = v8;
  if (v4 == 255)
  {
    sub_22BE25228();
    sub_22BF0D574(v31, v32, v33);
    v18 = v94;
    v34 = sub_22BE194C4();
    sub_22BF0CE18(v34, v35, 0xFFu);
    v36 = sub_22BE189A4();
    sub_22BF0D574(v36, v37, v38);
    v39 = sub_22BE189A4();
    sub_22BF0CE34(v39, v40, v41);
LABEL_10:
    v45 = sub_22BE189A4();
    sub_22BF0D530(v45, v46, v47);
    v48 = sub_22BE194C4();
    v30 = sub_22BF0D530(v48, v49, v93);
    goto LABEL_11;
  }

  *&v95 = v94;
  *(&v95 + 1) = v3;
  v96 = v4;
  v17 = v5;
  v18 = v94;
  v19 = v6;
  v20 = v4;
  sub_22BF0D574(v17, v19, v7);
  v21 = sub_22BE194C4();
  sub_22BF0CE18(v21, v22, v20);
  v23 = sub_22BE189A4();
  sub_22BF0D574(v23, v24, v25);
  v26 = static Lexer.Token.== infix(_:_:)(&v97, &v95);
  sub_22BF0CE34(v95, *(&v95 + 1), v96);
  sub_22BF0CE34(v97, v98, v99);
  v27 = sub_22BE189A4();
  v30 = sub_22BF0D530(v27, v28, v29);
  if (v26)
  {
LABEL_6:
    sub_22BF0D33C(&v97);
    sub_22BF0D530(v97, v98, v99);
    return MEMORY[0x277D84F90];
  }

LABEL_11:
  sub_22BE3C37C(&v97, v30);
  if (!v2)
  {
    v50 = v97;
    sub_22BEA7680(v97);
    sub_22BE66AE8(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v51;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_22BF10630(v52);
      v18 = v90;
    }

    *(v18 + 16) = v53 + 1;
    v91 = v50;
    *(v18 + 8 * v53 + 32) = v50;
    while (1)
    {
      v54 = *(v1 + 48);
      v55 = *(v1 + 56);
      v56 = *(v1 + 64);
      LOBYTE(v57) = *(v1 + 64);
      v58 = v55;
      v59 = v54;
      if (v56 == 255)
      {
        Lexer.next()(&v97);
        v59 = v97;
        v58 = v98;
        v57 = v99;
        v60 = sub_22BE3E574();
        sub_22BF0D530(v60, v61, v62);
        *(v1 + 48) = v59;
        *(v1 + 56) = v58;
        *(v1 + 64) = v57;
        v63 = sub_22BE18D3C();
        sub_22BF0D574(v63, v64, v65);
        if (v57 == 255)
        {
          break;
        }
      }

      v97 = v59;
      v98 = v58;
      v99 = v57;
      v95 = xmmword_22C28B570;
      v96 = 6;
      sub_22BF0D574(v54, v55, v56);
      v66 = sub_22BE18D3C();
      sub_22BF0D574(v66, v67, v68);
      v69 = static Lexer.Token.== infix(_:_:)(&v97, &v95);
      sub_22BF0CE34(v95, *(&v95 + 1), v96);
      sub_22BF0CE34(v97, v98, v99);
      v70 = sub_22BE18D3C();
      sub_22BF0D530(v70, v71, v72);
      if ((v69 & 1) == 0)
      {
        goto LABEL_26;
      }

      v73 = *(v1 + 64);
      if (v73 == 255)
      {
        Lexer.next()(&v97);
        LOBYTE(v73) = v99;
      }

      else
      {
        v74 = *(v1 + 56);
        v97 = *(v1 + 48);
        v98 = v74;
        v99 = v73;
        v75 = sub_22BE1AB1C();
        sub_22BF0CE18(v75, v76, v73);
        v77 = sub_22BE1AB1C();
        sub_22BF0D530(v77, v78, v73);
        v79 = v100;
        *v100 = 0;
        v79[1] = 0;
        *(v1 + 64) = -1;
      }

      v80 = sub_22BE1AB1C();
      v82 = sub_22BF0D530(v80, v81, v73);
      sub_22BE3C37C(&v97, v82);
      v83 = v97;
      v85 = *(v18 + 16);
      v84 = *(v18 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_22BF10630(v84);
        v18 = v86;
      }

      *(v18 + 16) = v85 + 1;
      *(v18 + 8 * v85 + 32) = v83;
    }

    sub_22BF0D574(v54, v55, 0xFFu);
    v87 = sub_22BE191C0();
    sub_22BF0D530(v87, v88, 0xFFu);
    sub_22BF0D530(26, 0, 6u);
LABEL_26:
    sub_22BF0D3C4();
    v97 = v94;
    v98 = v92;
    v99 = v93;
    sub_22BF0F5D8(&v97);
    sub_22BE63574(v91);
  }

  return v18;
}

uint64_t sub_22BF1023C(uint64_t a1)
{
  v2 = sub_22BF105D8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BF10278(uint64_t a1)
{
  v2 = sub_22BF105D8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BF102B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BF102D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_22BF10310(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22BF10374()
{
  result = qword_27D90B118;
  if (!qword_27D90B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B118);
  }

  return result;
}

unint64_t sub_22BF103C8()
{
  result = qword_27D90B120;
  if (!qword_27D90B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Parser.ParseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Parser.ParseError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF10584()
{
  result = qword_27D90B128;
  if (!qword_27D90B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B128);
  }

  return result;
}

unint64_t sub_22BF105D8()
{
  result = qword_27D90B130;
  if (!qword_27D90B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B130);
  }

  return result;
}

void sub_22BF10630(unint64_t a1@<X8>)
{

  sub_22BE66AE8(a1 > 1, v1, 1, v2);
}

uint64_t sub_22BF10654()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return sub_22BF0D530(v2, v3, v4);
}

uint64_t sub_22BF1066C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_22BE5CE4C(&qword_27D90B150, &qword_22C28BB50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - v12;
  v14 = sub_22BE5CE4C(&qword_27D90B110, &qword_22C28B538);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  if (qword_27D906368 != -1)
  {
    swift_once();
  }

  v19 = sub_22BE5CE4C(&qword_27D90B100, &qword_22C28B530);
  sub_22BE199F4(v19, qword_27D90B138);
  sub_22BF051B4();
  if (sub_22BE1AEA8(v13, 1, v14) == 1)
  {
    v14 = 0x544C5541464544;
    sub_22BF10AC8(v13);
    v20 = a1 == 0x544C5541464544 && a2 == 0xE700000000000000;
    if (v20 || (sub_22C274014() & 1) != 0)
    {
      sub_22C26E684();
      sub_22BE17C40(v9);
      v21 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
      sub_22BE18D4C(v21);
      *a3 = a1;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
    }

    else
    {
      v36 = String.toCamelCase.getter(a1, a2);
      v38 = v37;
      sub_22C26E684();
      sub_22BE17C40(v9);
      v39 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
      sub_22BE18D4C(v39);
      *a3 = v36;
      a3[1] = v38;
      a3[2] = 0;
      a3[3] = 0;
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    swift_getKeyPath();
    sub_22C2702E4();

    v22 = MEMORY[0x2318AB7C0](v40, v41, v42, v43);
    v24 = v23;

    v25 = String.toCamelCase.getter(v22, v24);
    v27 = v26;

    swift_getKeyPath();
    sub_22C2702E4();

    v28 = MEMORY[0x2318AB7C0](v40, v41, v42, v43);
    v30 = v29;

    v31 = String.toCamelCase.getter(v28, v30);
    v33 = v32;

    (*(v15 + 8))(v18, v14);
    sub_22C26E684();
    sub_22BE17C40(v9);
    v34 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
    sub_22BE18D4C(v34);
    *a3 = v25;
    a3[1] = v27;
    a3[2] = v31;
    a3[3] = v33;
  }

  return sub_22BF10B30(v9, v14);
}

uint64_t sub_22BF10A38()
{
  v0 = sub_22BE5CE4C(&qword_27D90B100, &qword_22C28B530);
  sub_22BE952A4(v0, qword_27D90B138);
  sub_22BE199F4(v0, qword_27D90B138);
  sub_22BE5CE4C(&qword_27D90B158, &qword_22C28BB98);
  return sub_22C2702C4();
}

uint64_t sub_22BF10AC8(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B150, &qword_22C28BB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF10B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ParticipantID.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22BF10BF8@<X0>(Swift::String *a1@<X0>, IntelligenceFlowPlannerSupport::ParticipantID *a2@<X8>)
{
  v4 = ParticipantID.init(stringLiteral:)(*a1);
  result = v4.name._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_22BF10C28()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C1205B0();
}

unint64_t sub_22BF10DD0()
{
  result = qword_28107C8C0;
  if (!qword_28107C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8C0);
  }

  return result;
}

unint64_t sub_22BF10E28()
{
  result = qword_27D90B160;
  if (!qword_27D90B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B160);
  }

  return result;
}

unint64_t sub_22BF10E8C()
{
  result = qword_27D90B168;
  if (!qword_27D90B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B168);
  }

  return result;
}

unint64_t sub_22BF10EFC()
{
  result = qword_27D90B170;
  if (!qword_27D90B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B170);
  }

  return result;
}

__n128 Session.SessionIdentityToken.untrustedAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Session.SessionIdentityToken.init(untrustedAuditToken:identityToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t static SessionInjectionContext<>.inherited.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28107B210 != -1)
  {
    swift_once();
  }

  sub_22C2742D4();
  if (*&__src[24] == 1)
  {
    __dst[0] = 0;
    LOBYTE(__dst[1]) = 1;
    memset(&__dst[2], 0, 72);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  sub_22BF13370(&__dst[6], __src);
  result = sub_22BE341BC(__dst);
  v6[0] = *__src;
  v6[1] = *&__src[16];
  v7 = *&__src[32];
  v3 = *&__src[24];
  if (*&__src[24])
  {
    v4 = swift_allocObject();
    result = sub_22BE49224(v6, v4 + 16);
    v3 = &protocol witness table for AnySessionInjectionContext;
    v5 = &type metadata for AnySessionInjectionContext;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v5;
  a1[4] = v3;
  return result;
}

uint64_t static SessionInjection.request<A, B>(id:instanceId:_:_:injectionContext:with:isolatedTo:expecting:)()
{
  sub_22BE183FC();
  *(v0 + 240) = v31;
  *(v0 + 208) = v29;
  *(v0 + 224) = v30;
  *(v0 + 192) = v27;
  *(v0 + 200) = v28;
  *(v0 + 176) = v25;
  *(v0 + 184) = v26;
  *(v0 + 160) = v23;
  *(v0 + 168) = v24;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v9 = sub_22C2720A4();
  *(v0 + 248) = v9;
  v10 = *(v9 - 8);
  sub_22BE189B4();
  *(v0 + 256) = v11;
  v13 = *(v12 + 64);
  *(v0 + 264) = sub_22BE25184();
  v14 = sub_22C273844();
  *(v0 + 272) = v14;
  v15 = *(v14 - 8);
  sub_22BE189B4();
  *(v0 + 280) = v16;
  v18 = *(v17 + 64);
  *(v0 + 288) = sub_22BE25184();
  if (v25)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v0 + 296) = v20;
  *(v0 + 304) = v19;

  return MEMORY[0x2822009F8](sub_22BF11260, v20, v19);
}

uint64_t sub_22BF11260()
{
  sub_22BF13370(*(v0 + 160), v0 + 56);
  if (*(v0 + 80))
  {
    sub_22BE49224((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(sub_22BE1B378((v0 + 16)) + 8);
    sub_22BE189B4();
    v22 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_22BF11440;
    v8 = *(v0 + 288);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    v31 = *(v0 + 232);
    v32 = *(v0 + 240);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v25 = *(v0 + 168);
    v26 = *(v0 + 192);
    v24 = *(v0 + 176);

    __asm { BRAA            X8, X16 }
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 96);
  sub_22BF133E0(v0 + 56);
  sub_22BE19DC4(v17, 1, 1, v16);
  v18 = *(v0 + 288);
  v19 = *(v0 + 264);

  sub_22BE17A94();

  return v20();
}

uint64_t sub_22BF11440()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *(v0 + 312);
  v3 = *v1;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE1BA20();
  v6 = *(v5 + 304);
  v7 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_22BF1154C, v7, v6);
}

uint64_t sub_22BF1154C()
{
  v23 = v0;
  if (sub_22BE1AEA8(v0[36], 1, v0[25]) == 1)
  {
    v1 = v0[33];
    v2 = v0[18];
    v3 = v0[14];
    sub_22C271B64();

    v4 = sub_22C272084();
    v5 = sub_22C273794();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[31];
    if (v6)
    {
      v19 = v0[18];
      v20 = v0[19];
      v10 = v0[17];
      v12 = v0[13];
      v11 = v0[14];
      v13 = swift_slowAlloc();
      v21 = v7;
      v22 = swift_slowAlloc();
      v14 = v22;
      *v13 = 136315650;
      *(v13 + 4) = sub_22BE61C88(v12, v11, &v22);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_22BE61C88(v10, v19, &v22);
      *(v13 + 22) = 2048;
      *(v13 + 24) = v20;
      _os_log_impl(&dword_22BE15000, v4, v5, "Injection value was not provided for InjectionPoint %s @ %s:%ld", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318AD180](v14, -1, -1);
      MEMORY[0x2318AD180](v13, -1, -1);

      (*(v8 + 8))(v21, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }
  }

  (*(v0[35] + 32))(v0[12], v0[36], v0[34]);
  sub_22BE26B64(v0 + 2);
  v15 = v0[36];
  v16 = v0[33];

  sub_22BE17A94();

  return v17();
}

uint64_t static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE183F0();
  *(v13 + 200) = a13;
  *(v13 + 184) = a12;
  *(v13 + 168) = a10;
  *(v13 + 176) = a11;
  *(v13 + 152) = v14;
  *(v13 + 160) = a9;
  *(v13 + 136) = v15;
  *(v13 + 144) = v16;
  *(v13 + 120) = v17;
  *(v13 + 128) = v18;
  *(v13 + 104) = v19;
  *(v13 + 112) = v20;
  *(v13 + 96) = v21;
  if (a10)
  {
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  *(v13 + 208) = v23;
  *(v13 + 216) = v22;
  return sub_22BE236E0(sub_22BF11814, v23, v22);
}

uint64_t sub_22BF11814()
{
  sub_22BE183FC();
  sub_22BF13370(*(v0 + 152), v0 + 56);
  if (*(v0 + 80))
  {
    sub_22BE49224((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(sub_22BE1B378((v0 + 16)) + 16);
    sub_22BE189B4();
    v24 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_22BF119A0;
    v8 = *(v0 + 168);
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v20 = *(v0 + 160);
    v21 = *(v0 + 184);
    v19 = *(v0 + 176);
    sub_22BF1389C(*(v0 + 96));

    __asm { BRAA            X8, X16 }
  }

  sub_22BF133E0(v0 + 56);
  sub_22BE17A94();

  return v16();
}

uint64_t sub_22BF119A0()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *(v0 + 224);
  v3 = *v1;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE1BA20();
  v6 = *(v5 + 216);
  v7 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22BF11AAC, v7, v6);
}

uint64_t sub_22BF11AAC()
{
  sub_22BE183F0();
  sub_22BE26B64((v0 + 16));
  sub_22BE17A94();

  return v1();
}

uint64_t _s30IntelligenceFlowPlannerSupport16SessionInjectionO7perform2id10instanceId__16injectionContext4with10isolatedTo_xSS_SSSgSSSiAA0efL0_pSgq_ScA_pSgYixq_q0_YKXEtYaq0_YKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[16] = a19;
  v23[17] = a23;
  v23[14] = a17;
  v23[15] = a18;
  v23[12] = a14;
  v23[13] = a15;
  v23[10] = a12;
  v23[11] = a13;
  v23[8] = a10;
  v23[9] = a11;
  v23[6] = a5;
  v23[7] = a9;
  v23[4] = a3;
  v23[5] = a4;
  v23[2] = a1;
  v23[3] = a2;
  v24 = *(a17 - 8);
  v23[18] = v24;
  v25 = *(v24 + 64);
  v23[19] = sub_22BE25184();
  sub_22BE17C68();
  v23[20] = v26;
  v28 = *(v27 + 64);
  v23[21] = sub_22BE25184();
  v29 = sub_22C273844();
  v23[22] = v29;
  v30 = *(v29 - 8);
  sub_22BE189B4();
  v23[23] = v31;
  v33 = *(v32 + 64);
  v23[24] = sub_22BE25184();
  v34 = swift_task_alloc();
  v23[25] = v34;
  *v34 = v23;
  v34[1] = sub_22BF11D3C;
  return sub_22BE269A8();
}

uint64_t sub_22BF11D3C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v2 = v1;
  sub_22BE18800();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *(v4 + 72);
  v7 = *v0;
  sub_22BE18C2C();
  *v8 = v7;

  if (v6)
  {
    v9 = v2[9];
    v10 = v2[10];
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  v2[26] = v12;
  v2[27] = v11;

  return MEMORY[0x2822009F8](sub_22BF11E64, v12, v11);
}

uint64_t sub_22BF11E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE2035C();
  v14 = v13[24];
  v15 = v13[13];
  if (sub_22BE1AEA8(v14, 1, v15) == 1)
  {
    v16 = v13[21];
    v17 = v13[19];
    v19 = v13[11];
    v18 = v13[12];
    v20 = v13[8];
    (*(v13[23] + 8))(v14, v13[22]);
    v19(v20, v17);
    v25 = swift_task_alloc();
    v13[28] = v25;
    *v25 = v13;
    v25[1] = sub_22BF1205C;
    v26 = v13[21];
    v28 = v13[15];
    v27 = v13[16];
    v29 = v13[13];
    v31 = v13[9];
    v30 = v13[10];
    v32 = v13[6];
    v33 = v13[7];
    v34 = v13[4];
    v35 = v13[5];
    v36 = sub_22BE1A638(v13[3]);

    return static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(v36, v37, v38, v39, v40, v41, 120, v42, a9, a10, a11, a12, a13);
  }

  else
  {
    v21 = v13[21];
    v22 = v13[19];
    (*(v13[20] + 32))(v13[2], v14, v15);

    sub_22BE17A94();

    return v23();
  }
}

uint64_t sub_22BF1205C()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *(v0 + 224);
  v3 = *v1;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE1BA20();
  v6 = *(v5 + 216);
  v7 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22BF12168, v7, v6);
}

uint64_t sub_22BF12168()
{
  sub_22BE183FC();
  v1 = v0[24];
  v2 = v0[19];
  (*(v0[20] + 32))(v0[2], v0[21], v0[13]);

  sub_22BE17A94();

  return v3();
}

uint64_t _s30IntelligenceFlowPlannerSupport16SessionInjectionO7perform2id10instanceId__16injectionContext4with10isolatedTo_xSS_SSSgSSSiAA0efL0_pSgq_nScA_pSgYixq_nYuYaq0_YKYTXEtYaq0_YKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[17] = a19;
  v23[18] = a23;
  v23[15] = a17;
  v23[16] = a18;
  v23[13] = a15;
  v23[14] = a16;
  v23[11] = a13;
  v23[12] = a14;
  v23[9] = a11;
  v23[10] = a12;
  v23[7] = a9;
  v23[8] = a10;
  v23[5] = a4;
  v23[6] = a5;
  v23[3] = a2;
  v23[4] = a3;
  v23[2] = a1;
  v24 = *(a17 - 8);
  v23[19] = v24;
  v25 = *(v24 + 64);
  v23[20] = sub_22BE25184();
  sub_22BE17C68();
  v23[21] = v26;
  v28 = *(v27 + 64);
  v23[22] = sub_22BE25184();
  sub_22BE17C68();
  v23[23] = v29;
  v31 = *(v30 + 64);
  v23[24] = sub_22BE25184();
  v32 = sub_22C273844();
  v23[25] = v32;
  v33 = *(v32 - 8);
  sub_22BE189B4();
  v23[26] = v34;
  v36 = *(v35 + 64);
  v23[27] = sub_22BE25184();
  v37 = swift_task_alloc();
  v23[28] = v37;
  *v37 = v23;
  v37[1] = sub_22BF1246C;
  return sub_22BE269A8();
}

uint64_t sub_22BF1246C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v2 = v1;
  sub_22BE18800();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *(v4 + 72);
  v7 = *v0;
  sub_22BE18C2C();
  *v8 = v7;

  if (v6)
  {
    v9 = v2[9];
    v10 = v2[10];
    swift_getObjectType();
    sub_22C2735D4();
    sub_22BE38314();
  }

  else
  {
    sub_22BE1A240();
  }

  v2[29] = v12;
  v2[30] = v11;

  return MEMORY[0x2822009F8](sub_22BF12594, v12, v11);
}

void sub_22BF12594()
{
  sub_22BE2035C();
  v1 = v0[27];
  v2 = v0[13];
  if (sub_22BE1AEA8(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[8];
    (*(v0[26] + 8))(v1, v0[25]);
    (*(v4 + 16))(v3, v7, v5);
    v23 = v6 + *v6;
    v8 = v6[1];
    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_22BF12794;
    v10 = v0[24];
    v11 = v0[22];
    v12 = v0[20];
    v13 = v0[12];
    sub_22BE1C2F8();

    __asm { BRAA            X3, X16 }
  }

  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[22];
  v19 = v0[20];
  v20 = v0[2];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v17 + 32))(v20, v1, v2);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BF12794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  sub_22BE183F0();
  sub_22BE190F0();
  v16 = v15;
  sub_22BE18800();
  *v17 = v16;
  v19 = *(v18 + 248);
  v20 = *v14;
  sub_22BE18C2C();
  *v21 = v20;

  if (v13)
  {
    v22 = v16[29];
    v23 = v16[30];

    return MEMORY[0x2822009F8](sub_22BF12AE4, v22, v23);
  }

  else
  {
    v24 = swift_task_alloc();
    v16[32] = v24;
    *v24 = v20;
    v24[1] = sub_22BF1290C;
    v25 = v16[24];
    v27 = v16[16];
    v26 = v16[17];
    v28 = v16[13];
    v30 = v16[9];
    v29 = v16[10];
    v31 = v16[6];
    v32 = v16[7];
    v33 = v16[4];
    v34 = v16[5];
    v35 = sub_22BE1A638(v16[3]);

    return static SessionInjection.capture<A>(id:instanceId:_:_:injectionContext:value:isolatedTo:)(v35, v36, v37, v38, v39, v40, 158, v41, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_22BF1290C()
{
  sub_22BE183F0();
  sub_22BE23CA8();
  v2 = *(v0 + 256);
  v3 = *v1;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE1BA20();
  v6 = *(v5 + 240);
  v7 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_22BF12A18, v7, v6);
}

void sub_22BF12A18()
{
  sub_22BE2035C();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[13];
  v7 = v0[2];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v2 + 32))(v7, v1, v6);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

void sub_22BF12AE4()
{
  sub_22BE2035C();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  (*(v0[21] + 8))(v0[8], v0[14]);
  (*(v5 + 32))(v6, v4, v7);

  sub_22BE17A94();
  sub_22BE1C2F8();

  __asm { BRAA            X1, X16 }
}

uint64_t AnySessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)()
{
  sub_22BE183FC();
  *(v1 + 152) = v21;
  *(v1 + 160) = v0;
  *(v1 + 144) = v20;
  *(v1 + 112) = v18;
  *(v1 + 128) = v19;
  *(v1 + 96) = v17;
  *(v1 + 80) = v15;
  *(v1 + 88) = v16;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  if (v15)
  {
    swift_getObjectType();
    v10 = sub_22C2735D4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  return MEMORY[0x2822009F8](sub_22BF12C7C, v10, v12);
}

void sub_22BF12C7C()
{
  v1 = *(v0 + 160);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(sub_22BE1B378(v1) + 8);
  sub_22BE189B4();
  v17 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_22BF12DBC;
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  v21 = *(v0 + 112);
  v22 = *(v0 + 128);
  v19 = *(v0 + 80);
  v20 = *(v0 + 96);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BF12DBC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *(v1 + 168);
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE17A94();

  return v5();
}

uint64_t AnySessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  sub_22BE183FC();
  *(v13 + 112) = a12;
  *(v13 + 120) = v12;
  *(v13 + 104) = a11;
  *(v13 + 88) = a10;
  *(v13 + 72) = v14;
  *(v13 + 80) = a9;
  *(v13 + 56) = v15;
  *(v13 + 64) = v16;
  *(v13 + 40) = v17;
  *(v13 + 48) = v18;
  *(v13 + 24) = v19;
  *(v13 + 32) = v20;
  *(v13 + 16) = v21;
  if (v14)
  {
    swift_getObjectType();
    v22 = sub_22C2735D4();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  return sub_22BE236E0(sub_22BF12F4C, v22, v24);
}

void sub_22BF12F4C()
{
  sub_22BE183FC();
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(sub_22BE1B378(v1) + 16);
  sub_22BE189B4();
  v21 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_22BF13078;
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + 24);
  v20 = *(v0 + 112);
  v18 = *(v0 + 80);
  v19 = *(v0 + 96);
  sub_22BF1389C(*(v0 + 16));

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BF13078()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE17A94();

  return v5();
}

uint64_t sub_22BF13158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return AnySessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)();
}

uint64_t sub_22BF13270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_task_alloc();
  *(v11 + 16) = v16;
  *v16 = v11;
  v16[1] = sub_22BE40D78;

  return AnySessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(a1, a2, a3, a4, a5, a6, a7, a8, v23, __PAIR128__(a9, v24), a10, a11);
}

uint64_t sub_22BF13370(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B178, &qword_22C28BE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF133E0(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B178, &qword_22C28BE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SessionInjection(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of SessionInjectionContext.request<A, B>(id:instanceId:file:line:isolatedTo:with:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a20 + 8);
  sub_22BE189B4();
  v27 = (v22 + *v22);
  v24 = *(v23 + 4);
  v25 = swift_task_alloc();
  *(v20 + 16) = v25;
  *v25 = v20;
  v25[1] = sub_22BE40CC8;

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t dispatch thunk of SessionInjectionContext.capture<A>(id:instanceId:file:line:isolatedTo:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *(a15 + 16);
  sub_22BE189B4();
  v24 = (v19 + *v19);
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  *(v15 + 16) = v22;
  *v22 = v15;
  v22[1] = sub_22BE40D78;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_22BF13804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22BF13844(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22BF1389C@<X0>(uint64_t a1@<X8>)
{
  result = a1;
  v3 = *(v1 + 72);
  return result;
}

void *static SpanDynamicContext.current.getter@<X0>(void *a1@<X8>)
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0();
  }

  result = sub_22C2742D4();
  if (__src[3] != 1)
  {
    return memcpy(a1, __src, 0x58uLL);
  }

  *a1 = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  a1[10] = 0;
  *(a1 + 8) = 1;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

uint64_t sub_22BF13940()
{
  v0 = sub_22BE5CE4C(&qword_27D90B180, &qword_22C28BFB8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22C2742C4();
  qword_28107B200 = result;
  return result;
}

uint64_t static SpanDynamicContext.$taskLocalCurrent.getter()
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0();
  }
}

uint64_t static SpanDynamicContext.taskLocalCurrent.getter()
{
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0();
  }

  return sub_22C2742D4();
}

__n128 SpanDynamicContext.init(spanId:participantId:aliasParticipantId:injectionContext:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  *(a8 + 80) = *(a7 + 32);
  return result;
}

uint64_t SpanDynamicContext.spanId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SpanDynamicContext.participantId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SpanDynamicContext.aliasParticipantId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SpanID.init(_:)(uint64_t result, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v4)
        {
          if (v4 != 1)
          {
            sub_22BE38320();
            while (1)
            {
              sub_22BE18550();
              if (!v9 && v8)
              {
                break;
              }

              sub_22BE1BA2C();
              if (!v9)
              {
                break;
              }

              sub_22BE230F8();
              if (v8)
              {
                break;
              }

              sub_22BE230DC();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v2 = 0;
          while (1)
          {
            sub_22BE18550();
            if (!v9 && v8)
            {
              break;
            }

            sub_22BE1BA2C();
            if (!v9)
            {
              break;
            }

            sub_22BE230F8();
            if (v8)
            {
              break;
            }

            sub_22BE230DC();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          sub_22BE38320();
          while (1)
          {
            sub_22BE18550();
            if (!v9 && v8)
            {
              break;
            }

            sub_22BE1BA2C();
            if (!v9)
            {
              break;
            }

            v8 = 10 * v2 >= v12;
            v2 = 10 * v2 - v12;
            if (!v8)
            {
              break;
            }

            sub_22BE230DC();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22C273B44();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v2 = 0;
            if (result)
            {
              while (1)
              {
                sub_22BE18550();
                if (!v9 && v8)
                {
                  goto LABEL_71;
                }

                sub_22BE1BA2C();
                if (!v9)
                {
                  goto LABEL_71;
                }

                sub_22BE230F8();
                if (v8)
                {
                  goto LABEL_71;
                }

                sub_22BE230DC();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v2 = 0;
          if (result)
          {
            while (1)
            {
              v13 = *result - 48;
              if (v13 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v2, 0xAuLL))
              {
                goto LABEL_71;
              }

              v8 = __CFADD__(10 * v2, v13);
              v2 = 10 * v2 + v13;
              if (v8)
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_71:
        v2 = 0;
        v11 = 1;
        goto LABEL_72;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v2 = 0;
          if (result)
          {
            while (1)
            {
              sub_22BE18550();
              if (!v9 && v8)
              {
                goto LABEL_71;
              }

              sub_22BE1BA2C();
              if (!v9)
              {
                goto LABEL_71;
              }

              v8 = 10 * v2 >= v10;
              v2 = 10 * v2 - v10;
              if (!v8)
              {
                goto LABEL_71;
              }

              sub_22BE230DC();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_61:
          v11 = 0;
LABEL_72:
          v14 = v11;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v2 = sub_22BF14880(result, a2, 10);
  v14 = v15;
LABEL_73:

  if (v14)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t SpanID.init<A>(tracingInteger:for:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = sub_22C272DC4();
  v8 = sub_22BE179D8(v43);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v15 = v14 - v13;
  v42 = sub_22C272E04();
  v16 = sub_22BE179D8(v42);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v23 = v22 - v21;
  v24 = *(a4 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v29 = v28 - v27;
  (*(v24 + 16))(v28 - v27, a1, a4);
  sub_22C272DF4();
  v46 = v23;
  sub_22BF14098(v29, sub_22BF14E08, v45, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v30);
  v31 = sub_22BE297F8(a2, a3);
  v33 = v32;
  sub_22BE19208();
  sub_22BF153E0(v34, v35, v23, v36, v37, MEMORY[0x277CC5540]);
  sub_22BE29DD4(v31, v33);
  sub_22C272DE4();
  sub_22BE1A65C();
  sub_22C272DB4();
  v38 = *(v24 + 8);
  v38(a1, a4);
  (*(v10 + 8))(v15, v43);
  v38(v29, a4);
  (*(v18 + 8))(v23, v42);
  v39 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t sub_22BF14098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_22BF1418C(uint64_t a1)
{
  v2 = sub_22C272E14();
  v7 = v2;
  v8 = sub_22BF157B0(&qword_28106DEC0, MEMORY[0x277CC5578]);
  v3 = sub_22BE62524(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_22BE1BD3C(v6, v7);
  sub_22BE18574();
  sub_22C26DD64();
  sub_22BE26B64(v6);
  (*(v4 + 8))(a1, v2);
  return sub_22BE18040();
}

void *sub_22BF142B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22BF14338@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SpanID.init(_:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unsigned __int8 *sub_22BF14368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_22C2732D4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C1927D8();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22C273B44();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_22BE3AFD4();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_22BE3E580();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_22BE3AFD4();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_22BE3E580();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_22BE18D84();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_22BE3E580();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_22BE18D84();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_22BE3E580();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_22BE18D84();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_22BE3E580();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22BF14880(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_22C2732D4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C1927D8();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22C273B44();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void *sub_22BF14E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22BF154E4(sub_22BF15908, v5, a1, a2);
}

uint64_t sub_22BF14E88(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BE29DD4(v6, v5);
      *v4 = xmmword_22C28BFC0;
      sub_22BE29DD4(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_22C26DCF4() && __OFSUB__(v6, sub_22C26DD14()))
      {
        goto LABEL_24;
      }

      v13 = sub_22C26DD24();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22C26DCD4();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_22BF15548(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BE29DD4(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_22C28BFC0;
      sub_22BE29DD4(0, 0xC000000000000000);
      sub_22C26DF84();
      v6 = v20;
      v9 = sub_22BF15548(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_22BE29DD4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_22BF1524C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22C26DF74();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318A6690]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318A66B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_22BF152C8()
{
  result = qword_28106F240;
  if (!qword_28106F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F240);
  }

  return result;
}

unint64_t sub_22BF15320()
{
  result = qword_27D90B188;
  if (!qword_27D90B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B188);
  }

  return result;
}

void sub_22BF153E0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v15;
      goto LABEL_9;
    case 2uLL:
      v12 = *(a1 + 24);
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v14 = v12;
LABEL_9:
      sub_22BF156D0(a1, v14, v13, a3, a4, a5, a6);
      if (v6)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v11 = 0;
      goto LABEL_5;
    default:
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22BF155FC(a1, v11, a3, a4, a5, a6);
      if (v6)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_22BF1549C(uint64_t result)
{
  if (result)
  {
    result = sub_22C273AB4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BF154E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22BF15548(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22C26DCF4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22C26DD14();
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

  v12 = sub_22C26DD04();
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

uint64_t sub_22BF155FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *MEMORY[0x277D85DE8];
  a4(0);
  sub_22BF157B0(a5, a6);
  result = sub_22C272D84();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22BF156D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_22C26DCF4();
  if (!result || (result = sub_22C26DD14(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C26DD04();
      a5(0);
      sub_22BF157B0(a6, a7);
      return sub_22C272D84();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF157B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF157F8(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B198, &unk_22C28C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22BF15860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_22BF14E34(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_22BF158B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BE29DD4(a1, a2);
  }

  return a1;
}

uint64_t sub_22BF158C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_22BF1549C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t Timepoint.date.setter()
{
  sub_22BE17BC4();
  v2 = sub_22C26E164();
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Timepoint.suspendingClockInstantNs.setter()
{
  sub_22BE17BC4();
  result = type metadata accessor for Timepoint();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*Timepoint.suspendingClockInstantNs.modify())(void)
{
  sub_22BE17BC4();
  v0 = *(type metadata accessor for Timepoint() + 20);
  return nullsub_1;
}

uint64_t Timepoint.continuousClockInstantNs.setter()
{
  sub_22BE17BC4();
  result = type metadata accessor for Timepoint();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Timepoint.continuousClockInstantNs.modify())(void)
{
  sub_22BE17BC4();
  v0 = *(type metadata accessor for Timepoint() + 24);
  return nullsub_1;
}

uint64_t Timepoint.bootSessionUUID.setter()
{
  sub_22BE17BC4();
  v2 = *(type metadata accessor for Timepoint() + 28);
  v3 = sub_22C26E1D4();
  sub_22BE18000(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Timepoint.bootSessionUUID.modify())(void)
{
  sub_22BE17BC4();
  v0 = *(type metadata accessor for Timepoint() + 28);
  return nullsub_1;
}

uint64_t Timepoint.init(date:suspendingClockInstantNs:continuousClockInstantNs:bootSessionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C26E164();
  sub_22BE18000(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for Timepoint();
  *(a5 + v12[5]) = a2;
  *(a5 + v12[6]) = a3;
  v13 = v12[7];
  v14 = sub_22C26E1D4();
  sub_22BE18000(v14);
  v16 = *(v15 + 32);

  return v16(a5 + v13, a4);
}

uint64_t Timepoint.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22C26E134();
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    swift_once();
  }

  v4 = sub_22C26E1D4();
  v5 = sub_22BE199F4(v4, qword_28108A1E0);
  v6 = type metadata accessor for Timepoint();
  result = (*(*(v4 - 8) + 16))(a1 + v6[7], v5, v4);
  *(a1 + v6[5]) = v2;
  *(a1 + v6[6]) = v3;
  return result;
}

uint64_t sub_22BF15CF4()
{
  v0 = sub_22C26E1D4();
  sub_22BE952A4(v0, qword_28108A1E0);
  v1 = sub_22BE199F4(v0, qword_28108A1E0);
  return sub_22BF15D40(v1);
}

uint64_t sub_22BF15D40@<X0>(uint64_t a1@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = sub_22C273534();
  *(v6 + 16) = 37;
  *(v6 + 48) = 0u;
  *(v6 + 61) = 0;
  *(v6 + 32) = 0u;
  v16[0] = 37;
  if (sysctlbyname("kern.bootsessionuuid", (v6 + 32), v16, 0, 0))
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = sub_22BE957C8(v6);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v9 = sub_22BF15F7C(v8);
  v11 = v10;
  sub_22C26E174();
  v12 = sub_22C26E1D4();
  if (sub_22BE1AEA8(v5, 1, v12) == 1)
  {
    sub_22BF16980(v5);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_22C273AA4();
    MEMORY[0x2318AB8D0](0xD000000000000036, 0x800000022C2D3BB0);
    MEMORY[0x2318AB8D0](v9, v11);
    MEMORY[0x2318AB8D0](39, 0xE100000000000000);
    result = sub_22C273C94();
    __break(1u);
  }

  else
  {

    (*(*(v12 - 8) + 32))(a1, v5, v12);

    v14 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_22BF15F7C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_22C273124();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Timepoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22C26E114() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Timepoint();
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];

  return sub_22C26E1B4();
}

uint64_t sub_22BF1608C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3B10 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000022C2D3B30 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BF161FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF1608C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF16224(uint64_t a1)
{
  v2 = sub_22BE33758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF16260(uint64_t a1)
{
  v2 = sub_22BE33758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Timepoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = sub_22C26E1D4();
  v3 = sub_22BE179D8(v50);
  v48 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C26E164();
  v11 = sub_22BE179D8(v10);
  v51 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v54 = v16 - v15;
  v17 = sub_22BE5CE4C(&qword_27D90B1A8, &qword_22C28C178);
  v18 = sub_22BE179D8(v17);
  v52 = v19;
  v53 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v47 - v22;
  v24 = type metadata accessor for Timepoint();
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v30 = v29 - v28;
  v31 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE33758();
  v55 = v23;
  v32 = v56;
  sub_22C274214();
  if (v32)
  {
    return sub_22BE26B64(a1);
  }

  v56 = v9;
  v33 = v51;
  v60 = 0;
  sub_22BE1BEF0();
  sub_22BE337AC(v34, v35);
  sub_22C273EB4();
  v36 = *(v33 + 32);
  v37 = v30;
  v36(v30, v54, v10);
  v59 = 1;
  *(v30 + v24[5]) = sub_22C273EC4();
  v58 = 2;
  v38 = a1;
  *(v37 + v24[6]) = sub_22C273EC4();
  v57 = 3;
  sub_22BE189C0();
  sub_22BE337AC(v39, v40);
  v54 = v37;
  v41 = v56;
  v42 = v50;
  sub_22C273EB4();
  v43 = sub_22BE1858C();
  v44(v43);
  v45 = v54;
  (*(v48 + 32))(v54 + v24[7], v41, v42);
  sub_22BF166D0(v45, v49);
  sub_22BE26B64(v38);
  return sub_22BF16734(v45);
}

uint64_t sub_22BF166D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timepoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF16734(uint64_t a1)
{
  v2 = type metadata accessor for Timepoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF167D4()
{
  result = sub_22C26E164();
  if (v1 <= 0x3F)
  {
    result = sub_22C26E1D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BF1687C()
{
  result = qword_27D90B1B8;
  if (!qword_27D90B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B1B8);
  }

  return result;
}

unint64_t sub_22BF168D4()
{
  result = qword_28106E040;
  if (!qword_28106E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E040);
  }

  return result;
}

unint64_t sub_22BF1692C()
{
  result = qword_28106E048;
  if (!qword_28106E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E048);
  }

  return result;
}

uint64_t sub_22BF16980(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF169E8()
{
  v0 = sub_22C271C14();
  sub_22BE952A4(v0, qword_28108A218);
  sub_22BE199F4(v0, qword_28108A218);
  return sub_22C271C04();
}

uint64_t SharedAssistantSchemaProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedAssistantSchemaProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BF16CCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BF16D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22BE3B674(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_22C26E684();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = sub_22BE2500C();
    v14 = v10;
  }

  else
  {
    sub_22C26E684();
    sub_22BE1A140();
  }

  return sub_22BE19DC4(v11, v12, v13, v14);
}

double sub_22BF16DE8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_22BE6068C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_22BE635C4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22BF16E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_22BE3B674(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return sub_22BE19454();
}

uint64_t sub_22BF16ECC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BE60930();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_22BF16F48@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v7 = a3(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(a1 + 56);
    v11 = a2(0);
    (*(*(v11 - 8) + 16))(a4, v10 + *(*(v11 - 8) + 72) * v9, v11);
    v12 = sub_22BE2500C();
    v15 = v11;
  }

  else
  {
    a2(0);
    sub_22BE1A140();
  }

  return sub_22BE19DC4(v12, v13, v14, v15);
}

void sub_22BF17014()
{
  sub_22BE19460();
  v0 = sub_22C2720A4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22C271B14();
  v9 = sub_22C272084();
  v10 = sub_22C273794();
  if (os_log_type_enabled(v9, v10))
  {
    sub_22BE1A260();
    v11 = swift_slowAlloc();
    sub_22BE2386C();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = sub_22C2742E4();
    v15 = sub_22BE61C88(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22BE15000, v9, v10, "Model Caching - %s does not exist, creating new model holder", v11, 0xCu);
    sub_22BE26B64(v12);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v3 + 8))(v8, v0);
  sub_22BE1AABC();
}

void sub_22BF17188()
{
  sub_22BE19460();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C271FF4();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE25A90();
  v15 = sub_22C272024();
  v16 = sub_22BE179D8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  if (sub_22BE63620(v4))
  {
    v44 = v5;
    sub_22C270B34();
    sub_22C270B34();
    sub_22C272014();
    sub_22C271FC4();
    v43 = *(v18 + 8);
    v43(v23, v15);
    v27 = sub_22C272014();
    v28 = sub_22C2737F4();
    if (sub_22C273824())
    {
      v29 = swift_slowAlloc();
      v42 = v2;
      v30 = v29;
      *v29 = 0;
      v31 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v27, v28, v31, "ModelCache.ModelLoad", "", v30, 2u);
      v2 = v42;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v8 + 16))(v13, v1, v44);
    v32 = sub_22C272064();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_22C272054();
    v36 = *(v8 + 8);
    v37 = sub_22BE354DC();
    v38(v37);
    v43(v26, v15);
    v39 = *(v2 + 16);
    os_unfair_lock_lock((v39 + 24));
    v40 = *(v39 + 16);
    *(v39 + 16) = v35;

    os_unfair_lock_unlock((v39 + 24));
  }

  sub_22BE1AABC();
}

void sub_22BF1744C()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22C2720A4();
  v4 = sub_22BE179D8(v3);
  v64 = v5;
  v65 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v63 = v9 - v8;
  sub_22BE183BC();
  v10 = sub_22C272034();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v18 = v17 - v16;
  v19 = sub_22C271FF4();
  v20 = sub_22BE179D8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v23 = sub_22C272024();
  v24 = sub_22BE179D8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v27 = sub_22BE63620(v2);
  if (v27)
  {
    v28 = v27;
    v29 = *(v0 + 16);
    os_unfair_lock_lock((v29 + 24));
    v30 = *(v29 + 16);
    *(v29 + 16) = 0;
    v31 = (v29 + 24);
    v32 = v30;
    os_unfair_lock_unlock(v31);
    if (v32)
    {
      sub_22C270B34();
      v33 = sub_22C272014();
      sub_22C272044();
      v62 = sub_22C2737E4();
      if (sub_22C273824())
      {

        sub_22C272074();

        if ((*(v13 + 88))(v18, v10) == *MEMORY[0x277D85B00])
        {
          v34 = 0;
          v35 = 0;
          v61 = "[Error] Interval already ended";
        }

        else
        {
          (*(v13 + 8))(v18, v10);
          v61 = "ModelName=%{public, signpost.telemetry:string1,public}s enableTelemetry=YES";
          v35 = 2;
          v34 = 1;
        }

        v40 = v63;
        sub_22BE1A260();
        v41 = swift_slowAlloc();
        sub_22BE2386C();
        v42 = swift_slowAlloc();
        v66 = v42;
        *v41 = v35;
        *(v41 + 1) = v34;
        *(v41 + 2) = 2082;
        v43 = sub_22BE373B8();
        v44(v43);
        v45 = sub_22C273AD4();
        v47 = sub_22BE61C88(v45, v46, &v66);

        *(v41 + 4) = v47;
        v48 = sub_22C271FD4();
        _os_signpost_emit_with_name_impl(&dword_22BE15000, v33, v62, v48, "ModelCache.ModelLoad", v61, v41, 0xCu);
        sub_22BE26B64(v42);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();

        v49 = sub_22BE201DC();
        v50(v49);
        v51 = sub_22BE290D8();
        v52(v51);
      }

      else
      {

        v36 = sub_22BE201DC();
        v37(v36);
        v38 = sub_22BE290D8();
        v39(v38);
        v40 = v63;
      }

      sub_22C271B14();
      v53 = sub_22C272084();
      v54 = sub_22C273794();
      if (os_log_type_enabled(v53, v54))
      {
        sub_22BE1A260();
        v55 = swift_slowAlloc();
        sub_22BE2386C();
        v56 = swift_slowAlloc();
        v66 = v56;
        *v55 = 136315138;
        v57 = sub_22BE373B8();
        v58(v57);
        v59 = sub_22C273AD4();
        sub_22BE61C88(v59, v60, &v66);
        sub_22BE22C70();

        *(v55 + 4) = v28;
        _os_log_impl(&dword_22BE15000, v53, v54, "Caching - signpost for %s", v55, 0xCu);
        sub_22BE26B64(v56);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {
      }

      (*(v64 + 8))(v40, v65);
    }
  }

  sub_22BE1AABC();
}

uint64_t _s30IntelligenceFlowPlannerSupport26SentencePieceCachableModelCfD_0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BF17A44()
{
  v0 = type metadata accessor for ModelCache(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BF17AE0();
  qword_28107D1D0 = result;
  return result;
}

uint64_t static ModelCache.shared.getter()
{
  if (qword_28107D1C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BF17AE0()
{
  type metadata accessor for ModelCache.ModelCacheCallbacks();
  v1 = swift_allocObject();
  sub_22BE5CE4C(&qword_27D90B268, &unk_22C28C720);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  sub_22BF1C2E4(qword_28107D278, v3, type metadata accessor for ModelCache.ModelCacheCallbacks);
  sub_22C271BF4();
  return v0;
}

void ModelCache.getModel<A>(modelType:prewarm:keepAlive:)()
{
  sub_22BE19130();
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22BE179D8(AssociatedTypeWitness);
  v18 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C271BD4();
  if (v0)
  {
    v12 = *(v18 + 32);
    v13 = sub_22BE354DC();
    v12(v13);
    sub_22BE1AB1C();
    swift_getAssociatedConformanceWitness();
    sub_22BE1AB74();
    if (sub_22C273FF4())
    {
      v14 = *(v18 + 8);
      v15 = sub_22BE1AB74();
      v16(v15);
    }

    else
    {
      swift_allocError();
      (v12)(v17, v10, AssociatedTypeWitness);
    }
  }

  sub_22BE18478();
}

void ModelCache.sustainModelLifetime(using:for:)()
{
  ModelCache.getModel<A>(modelType:prewarm:keepAlive:)();
  if (!v0)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t ModelCache.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport10ModelCache_instance;
  v2 = sub_22C271C14();
  sub_22BE18524(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t ModelCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport10ModelCache_instance;
  v2 = sub_22C271C14();
  sub_22BE18524(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t SentencePieceCachableModel.__allocating_init(parameters:)()
{
  v0 = swift_allocObject();
  SentencePieceCachableModel.init(parameters:)();
  return v0;
}

void SentencePieceCachableModel.init(parameters:)()
{
  sub_22BE19130();
  v1 = v0;
  v3 = v2;
  v28 = *v0;
  v4 = sub_22C2720A4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  type metadata accessor for ToolEmbeddingsDatabase(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_22BF1C058(0x6D5F656365697073, 0xEB0000000070616DLL, 0x6C65646F6DLL, 0xE500000000000000, v14);
  v16 = v15;

  if (v16 && (sub_22BE45D84(0, &qword_28106DB08, 0x277D4D3A0), (v17 = sub_22BF181E4()) != 0))
  {
    v18 = v17;
    sub_22BE5CE4C(&qword_27D90B1F8, &unk_22C28C450);
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    *(v19 + 16) = v18;
    v20 = sub_22C271B74();
    sub_22BE18524(v20);
    (*(v21 + 8))(v3);
    v1[2] = v19;
  }

  else
  {
    sub_22C271B14();
    v22 = sub_22C272084();
    v23 = sub_22C2737A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22BE15000, v22, v23, "Sentence piece model missing. Embedding failed.", v24, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v7 + 8))(v12, v4);
    sub_22BF1C114();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    v26 = sub_22C271B74();
    sub_22BE18524(v26);
    (*(v27 + 8))(v3);
    swift_deallocPartialClassInstance();
  }

  sub_22BE18478();
}

id sub_22BF181E4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22C272FF4();

  v2 = [v0 initWithModelPath_];

  return v2;
}

Swift::Void __swiftcall SentencePieceCachableModel.prewarm()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_22C272FF4();

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SentencePieceCachableModel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_22BF18330(uint64_t a1, void *a2)
{
  result = SentencePieceCachableModel.__allocating_init(parameters:)();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_22BF18388()
{
  v0 = sub_22C26DEA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26DF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271A84();
  v11[0] = 0xD00000000000001ALL;
  v11[1] = 0x800000022C28C600;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_22BE699D0();
  sub_22C26DF54();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_22BF18558()
{
  sub_22BE19460();
  v0 = sub_22C26DEA4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C26DF64();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v17 = v16 - v15;
  sub_22BF18388();
  (*(v3 + 104))(v8, *MEMORY[0x277CC91D8], v0);
  sub_22BE699D0();
  sub_22C26DF54();
  v18 = *(v3 + 8);
  v19 = sub_22BE1AB74();
  v20(v19);
  (*(v12 + 8))(v17, v9);
  sub_22BE1AABC();
}

void sub_22BF186E4()
{
  sub_22BE19130();
  v124 = v3;
  v125 = v2;
  v126 = v4;
  v127 = v5;
  v132 = v6;
  v136 = *MEMORY[0x277D85DE8];
  v7 = sub_22C2720A4();
  v8 = sub_22BE179D8(v7);
  v128 = v9;
  v129 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  sub_22BE25A90();
  v16 = sub_22C26DF64();
  v17 = sub_22BE179D8(v16);
  v130 = v18;
  v131 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  v23 = (v21 - v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v114 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v114 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v114 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v114 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v114 - v37;
  sub_22BF190CC();
  if (v0)
  {
    goto LABEL_13;
  }

  v120 = v33;
  v121 = v30;
  v118 = v27;
  v119 = v1;
  v123 = v14;
  v117 = v23;
  v122 = 0;
  sub_22C26DED4();
  sub_22BF18388();
  sub_22BE336E8();
  sub_22C26DEF4();

  v39 = v131;
  v40 = v130 + 8;
  v41 = *(v130 + 8);
  (v41)(v36, v131);
  v42 = [objc_opt_self() defaultManager];
  sub_22BF18388();
  sub_22C26DEE4();
  v43 = sub_22BE194EC();
  (v41)(v43, v39);
  v134[0] = 0;
  v44 = [v42 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v134];

  if (!v44)
  {
    v62 = v134[0];
    sub_22BE22C70();
    sub_22C26DE84();

    swift_willThrow();
    (v41)(v38, v39);
    goto LABEL_13;
  }

  v115 = v41;
  v116 = v40;
  v45 = v134[0];
  v46 = sub_22C26DEE4();
  v47 = sub_22C26DEE4();
  v134[0] = 0;
  v48 = [v42 copyItemAtURL:v46 toURL:v47 error:v134];

  v49 = v42;
  if (!v48)
  {
    v63 = v134[0];
    sub_22BE22C70();
    sub_22C26DE84();

LABEL_10:
    swift_willThrow();

    v64 = v38;
    v65 = v131;
LABEL_12:
    (v115)(v64, v65);
    goto LABEL_13;
  }

  v114 = v38;
  v50 = v134[0];
  sub_22C26DF24();
  sub_22C272FF4();
  sub_22BE22C70();

  v133 = 0;
  v51 = [v42 attributesOfItemAtPath:v46 error:&v133];

  v52 = v133;
  v53 = v131;
  if (!v51)
  {
    v66 = v133;
    sub_22BE194EC();
    sub_22C26DE84();

    swift_willThrow();
    v64 = v114;
    v65 = v53;
    goto LABEL_12;
  }

  type metadata accessor for FileAttributeKey(0);
  v54 = sub_22BF1C2E4(&qword_28106DB38, 255, type metadata accessor for FileAttributeKey);
  v55 = MEMORY[0x277D84F70];
  v56 = v54;
  v57 = sub_22C272E54();
  v58 = v52;

  v59 = *MEMORY[0x277CCA1C0];
  sub_22BE2684C();
  sub_22BF16DE8(v60, v61);

  if (v135)
  {
    if (sub_22BE18258())
    {
      v132 = v133;
      goto LABEL_16;
    }
  }

  else
  {
    sub_22BE233E8(v134, &qword_27D90B260, &qword_22C28C718);
  }

  v132 = 0;
LABEL_16:
  v38 = v114;
  sub_22C26DF24();
  sub_22C272FF4();
  sub_22BE22C70();

  v133 = 0;
  v68 = [v42 attributesOfItemAtPath:v57 error:&v133];

  v69 = v133;
  if (!v68)
  {
    v89 = v133;
    sub_22BE194EC();
    sub_22C26DE84();

    goto LABEL_10;
  }

  v70 = sub_22C272E54();
  v71 = v69;

  sub_22BE2684C();
  sub_22BF16DE8(v72, v73);

  if (!v135)
  {
    sub_22BE233E8(v134, &qword_27D90B260, &qword_22C28C718);
    sub_22BE2547C();
LABEL_24:
    if (!v132)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  sub_22BE18258();
  sub_22BE2547C();
  if (!v74)
  {
    goto LABEL_24;
  }

  if (v132 == v133)
  {
LABEL_20:
    sub_22C271AD4();
    (*(v59 + 16))(v55, v70, v56);
    v75 = sub_22C272084();
    v76 = sub_22C2737C4();
    if (os_log_type_enabled(v75, v76))
    {
      sub_22BE1A260();
      v77 = swift_slowAlloc();
      sub_22BE2386C();
      v78 = swift_slowAlloc();
      v134[0] = v78;
      *v77 = 136315138;
      sub_22BE17C78();
      sub_22BF1C2E4(v79, 255, v80);
      v81 = sub_22C273FD4();
      sub_22BE38348();
      v83 = *(v82 - 256);
      v83();
      v84 = sub_22BE336E8();
      sub_22BE61C88(v84, v85, v86);
      sub_22BE289CC();
      v70 = v114;

      *(v77 + 4) = v81;
      v56 = v131;
      _os_log_impl(&dword_22BE15000, v75, v76, "Tool Retrieval: Saving precompiled model at %s", v77, 0xCu);
      sub_22BE26B64(v78);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      sub_22BE3D14C();
      v88 = v123;
    }

    else
    {

      v109 = v55;
      v83 = v115;
      (v115)(v109, v56);
      sub_22BE3D14C();
      v88 = v69;
    }

    v87(v88, v129);
    v110 = v118;
    sub_22BE1BA50();
    sub_22BF18558();
    v111 = v122;
    sub_22C26E044();
    if (v111)
    {

      v112 = v110;
    }

    else
    {
      (v83)(v110, v56);
      sub_22BE19F14();
      v113 = v117;
      sub_22BF18558();
      sub_22C26E044();

      v112 = v113;
    }

    (v83)(v112, v56);
    (v83)(v70, v56);
    goto LABEL_13;
  }

LABEL_25:
  v90 = v119;
  sub_22C271AD4();
  v91 = *(v59 + 16);
  v92 = sub_22BE1AB1C();
  v93(v92);
  v94 = sub_22C272084();
  v95 = sub_22C2737A4();
  if (os_log_type_enabled(v94, v95))
  {
    sub_22BE1A260();
    v96 = swift_slowAlloc();
    sub_22BE2386C();
    v97 = swift_slowAlloc();
    v134[0] = v97;
    *v96 = 136315138;
    sub_22BE17C78();
    sub_22BF1C2E4(v98, 255, v99);
    v100 = v38;
    sub_22C273FD4();
    sub_22BE3D43C();
    sub_22BE38348();
    v102 = *(v101 - 256);
    v102();
    v103 = sub_22BE336E8();
    sub_22BE61C88(v103, v104, v105);
    sub_22BE289CC();
    v70 = v114;

    *(v96 + 4) = v100;
    _os_log_impl(&dword_22BE15000, v94, v95, "Error while copying the compiled model to %s", v96, 0xCu);
    sub_22BE26B64(v97);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    sub_22BE3D14C();
    v107 = v119;
  }

  else
  {

    sub_22BE38348();
    v102 = *(v108 - 256);
    v102();
    sub_22BE3D14C();
    v107 = v90;
  }

  v106(v107, v129);
  sub_22BF190CC();
  (v102)(v70, v131);

LABEL_13:
  v67 = *MEMORY[0x277D85DE8];
  sub_22BE18478();
}

void sub_22BF190CC()
{
  sub_22BE19130();
  v39[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22C2720A4();
  v1 = sub_22BE179D8(v0);
  v37 = v2;
  v38 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26DF64();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = [objc_opt_self() defaultManager];
  sub_22BF18388();
  sub_22C26DF14();
  v18 = *(v11 + 8);
  v18(v16, v8);
  sub_22BE19454();
  v19 = sub_22C272FF4();

  v20 = [v17 fileExistsAtPath_];

  if (v20)
  {
    v36 = v17;
    sub_22C271AD4();
    v21 = sub_22C272084();
    v22 = sub_22C2737C4();
    if (os_log_type_enabled(v21, v22))
    {
      sub_22BE1A260();
      v34 = swift_slowAlloc();
      sub_22BE2386C();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      sub_22BF18388();
      sub_22BE17C78();
      sub_22BF1C2E4(v23, 255, v24);
      v25 = sub_22C273FD4();
      v18(v16, v8);
      v26 = sub_22BE336E8();
      sub_22BE61C88(v26, v27, v28);
      sub_22BE289CC();

      *(v34 + 4) = v25;
      _os_log_impl(&dword_22BE15000, v21, v22, "Tool Retrieval: Deleting precompiled model at %s", v34, 0xCu);
      sub_22BE26B64(v35);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v37 + 8))(v7, v38);
    sub_22BF18388();
    v29 = sub_22C26DEE4();
    v18(v16, v8);
    v39[0] = 0;
    v17 = v36;
    v30 = [v36 removeItemAtURL:v29 error:v39];

    if (v30)
    {
      v31 = v39[0];
    }

    else
    {
      v32 = v39[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  sub_22BE18478();
}

void sub_22BF19450()
{
  sub_22BE19130();
  v109 = v2;
  v110 = v0;
  v111[3] = *MEMORY[0x277D85DE8];
  v3 = sub_22C2720A4();
  v4 = sub_22BE179D8(v3);
  v107 = v5;
  v108 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  v103 = v8 - v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  v106 = &v95 - v11;
  sub_22BE183BC();
  v12 = sub_22C26DEA4();
  v13 = sub_22BE179D8(v12);
  v101 = v14;
  v102 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v100 = v18 - v17;
  sub_22BE183BC();
  v19 = sub_22C26DF64();
  v20 = sub_22BE179D8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  v105 = v25 - v26;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v27);
  sub_22BE25A90();
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  sub_22BE1BA50();
  sub_22BF18558();
  v30 = sub_22C26DF14();
  v104 = v22;
  v33 = *(v22 + 8);
  v31 = v22 + 8;
  v32 = v33;
  v33(v1, v19);
  sub_22C272FF4();
  sub_22BE194EC();

  v34 = [v29 fileExistsAtPath_];

  if (!v34)
  {
    sub_22BE1A140();
    v56 = v19;
LABEL_22:
    sub_22BE19DC4(v53, v54, v55, v56);
    goto LABEL_23;
  }

  v35 = [v28 defaultManager];
  sub_22BF18388();
  sub_22C26DF14();
  v32(v1, v19);
  v36 = sub_22C272FF4();

  v111[0] = 0;
  v37 = [v35 contentsOfDirectoryAtPath:v36 error:v111];

  v38 = v111[0];
  if (!v37)
  {
    v75 = v111[0];
    sub_22C26DE84();

    swift_willThrow();
    goto LABEL_23;
  }

  v96 = v32;
  v97 = v31;
  v99 = v19;
  v39 = sub_22C273494();
  v40 = v38;

  v41 = 0;
  v42 = *(v39 + 16);
  v43 = v39 + 40;
  v44 = MEMORY[0x277D84F90];
  v98 = v39 + 40;
LABEL_4:
  v45 = (v43 + 16 * v41);
  while (v42 != v41)
  {
    if (v41 >= *(v39 + 16))
    {
      __break(1u);
    }

    v46 = *(v45 - 1);
    v47 = *v45;

    if (sub_22C273274())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111[0] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v44[2];
        sub_22BE70138();
        v44 = v111[0];
      }

      v50 = v44[2];
      v51 = v50 + 1;
      if (v50 >= v44[3] >> 1)
      {
        v95 = v50 + 1;
        sub_22BE70138();
        v51 = v95;
        v44 = v111[0];
      }

      ++v41;
      v44[2] = v51;
      v52 = &v44[2 * v50];
      v52[4] = v46;
      v52[5] = v47;
      v43 = v98;
      goto LABEL_4;
    }

    v45 += 2;
    ++v41;
  }

  if (v44[2] != 1)
  {

    v76 = v103;
    sub_22C271AD4();
    v77 = sub_22C272084();
    v78 = sub_22C2737C4();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v99;
    if (v79)
    {
      sub_22BE1A260();
      v81 = swift_slowAlloc();
      sub_22BE2386C();
      v82 = swift_slowAlloc();
      v111[0] = v82;
      *v81 = 136315138;
      sub_22BF18388();
      sub_22BE17C78();
      sub_22BF1C2E4(v83, 255, v84);
      v85 = sub_22C273FD4();
      v87 = v86;
      v88 = sub_22BE1AB74();
      v96(v88);
      v89 = sub_22BE61C88(v85, v87, v111);

      *(v81 + 4) = v89;
      _os_log_impl(&dword_22BE15000, v77, v78, "No compiled model found in %s", v81, 0xCu);
      sub_22BE26B64(v82);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v107 + 8))(v76, v108);
    sub_22BE1A140();
    v56 = v80;
    goto LABEL_22;
  }

  v57 = v44[4];
  v58 = v44[5];

  v59 = v105;
  sub_22BF18388();
  v111[0] = v57;
  v111[1] = v58;
  v61 = v100;
  v60 = v101;
  v62 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x277CC91D8], v102);
  sub_22BE699D0();
  sub_22C26DF34();
  (*(v60 + 8))(v61, v62);

  v63 = v106;
  sub_22C271AD4();
  v64 = sub_22C272084();
  v65 = sub_22C2737C4();
  if (os_log_type_enabled(v64, v65))
  {
    sub_22BE1A260();
    v66 = swift_slowAlloc();
    sub_22BE2386C();
    v67 = swift_slowAlloc();
    v111[0] = v67;
    *v66 = 136315138;
    swift_beginAccess();
    sub_22BE17C78();
    sub_22BF1C2E4(v68, 255, v69);
    v70 = v99;
    v71 = sub_22C273FD4();
    v73 = sub_22BE61C88(v71, v72, v111);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_22BE15000, v64, v65, "Tool Retrieval: Using the precompiled model at %s", v66, 0xCu);
    sub_22BE26B64(v67);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v107 + 8))(v63, v108);
    v74 = v109;
  }

  else
  {

    (*(v107 + 8))(v63, v108);
    v74 = v109;
    v70 = v99;
  }

  v91 = v104;
  swift_beginAccess();
  (*(v91 + 16))(v74, v59, v70);
  v92 = sub_22BE2500C();
  sub_22BE19DC4(v92, v93, v94, v70);
  (v96)(v59, v70);
LABEL_23:
  v90 = *MEMORY[0x277D85DE8];
  sub_22BE18478();
}

void SbertCachableModel.init(parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v358 = v21;
  v356 = v24;
  v360[1] = *MEMORY[0x277D85DE8];
  v25 = *v20;
  v357 = v20;
  v354 = v25;
  v26 = sub_22C2720A4();
  v27 = sub_22BE179D8(v26);
  v343 = v28;
  v344 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v342 = v32 - v31;
  sub_22BE183BC();
  v335 = sub_22C273064();
  v33 = sub_22BE179D8(v335);
  v336 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE179EC();
  v334 = v38 - v37;
  sub_22BE183BC();
  v340 = sub_22C26DEA4();
  v39 = sub_22BE179D8(v340);
  v339 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v338 = v44 - v43;
  v45 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  sub_22BE183AC();
  v353 = (v47 - v48);
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  v347 = v332 - v51;
  sub_22BE183BC();
  v352 = sub_22C26DF64();
  v52 = sub_22BE179D8(v352);
  v348 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE183AC();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19490();
  v341 = v58;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  v345 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v62);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v63);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v65);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v66);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v67);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  v346 = v332 - v69;
  sub_22BE183BC();
  v70 = sub_22C26E514();
  v71 = sub_22BE179D8(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE179EC();
  v78 = v77 - v76;
  v351 = sub_22C26EA04();
  v79 = sub_22BE179D8(v351);
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE179EC();
  v86 = v85 - v84;
  v87 = sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v90 = v332 - v89;
  v91 = sub_22C270264();
  v92 = sub_22BE179D8(v91);
  v349 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE179EC();
  v350 = v97 - v96;
  v355 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v355 setComputeUnits_];
  type metadata accessor for QueryableToolbox();
  v98 = static QueryableToolbox.getLanguageCode()();
  if (!v99)
  {
    goto LABEL_7;
  }

  v100 = v98;
  v101 = v99;
  sub_22C26E9F4();
  (*(v73 + 104))(v78, *MEMORY[0x277D1C220], v70);
  v332[1] = v100;
  sub_22C26E9E4();
  (*(v73 + 8))(v78, v70);
  (*(v81 + 8))(v86, v351);
  if (sub_22BE1AEA8(v90, 1, v91) != 1)
  {
    v351 = v101;
    v105 = v349;
    (*(v349 + 32))(v350, v90, v91);
    v106 = v347;
    sub_22C270244();
    v107 = v352;
    if (sub_22BE1AEA8(v106, 1, v352) == 1)
    {
      v108 = *(v105 + 8);
      v109 = sub_22BE336E8();
      v110(v109);

      v102 = &qword_27D908088;
      v103 = &qword_22C278EC0;
      v104 = v106;
      goto LABEL_6;
    }

    v332[0] = v91;
    v359 = 0xD000000000000037;
    v360[0] = 0x800000022C2D3CE0;
    v134 = v339;
    v135 = v338;
    v136 = v340;
    v339[13](v338, *MEMORY[0x277CC91D8], v340);
    sub_22BE699D0();
    v137 = v337;
    sub_22C26DF54();
    (*(v134 + 8))(v135, v136);
    v138 = v348;
    v140 = (v348 + 8);
    v139 = *(v348 + 8);
    v139(v106, v107);
    v142 = *(v138 + 32);
    v141 = v138 + 32;
    v143 = v107;
    v144 = v346;
    v340 = v142;
    v142(v346, v137, v143);
    v347 = objc_opt_self();
    v145 = [v347 defaultManager];
    sub_22C26DF14();
    v146 = sub_22C272FF4();

    v147 = [v145 fileExistsAtPath_];

    if ((v147 & 1) == 0)
    {

      v139(v144, v143);
      v158 = sub_22BE1A68C();
      v159(v158);
      goto LABEL_7;
    }

    v353 = v139;
    v148 = sub_22C270254();
    v345 = v140;
    if (v148)
    {
      v149 = sub_22BE1BA50();
      sub_22BF16E4C(v149, 0xE700000000000000, v148);
      v151 = v150;

      sub_22BE36748();
      if (v151)
      {
        sub_22BE236D4(&a11);
        sub_22C273054();
        v152 = sub_22C273034();
        v154 = v153;
        v148 = v152;

        v155 = *(v144 + 1);
        v156 = sub_22BE336E8();
        v157(v156);
      }

      else
      {
        v148 = 0;
        v154 = 0xF000000000000000;
      }
    }

    else
    {
      v154 = 0xF000000000000000;
      sub_22BE36748();
    }

    sub_22C273054();
    v344 = sub_22C273034();
    v173 = v172;

    v174 = *(v144 + 1);
    v115 = v144 + 8;
    v175 = sub_22BE336E8();
    v341 = v176;
    (v176)(v175);
    v351 = v173;
    v342 = v154 >> 60;
    v343 = v173 >> 60;
    if (v154 >> 60 == 15)
    {
      v336 = v115;
      sub_22BF1C7C0();
      v177 = v346;
LABEL_27:
      v178 = objc_opt_self();
      v179 = sub_22C26DEE4();
      v359 = 0;
      v180 = [v178 compileModelAtURL:v179 error:&v359];

      v181 = v359;
      if (!v180)
      {
        v212 = v359;
        sub_22C26DE84();

        swift_willThrow();
        sub_22BF158B4(v344, v351);
        v213 = sub_22BE23108();
        sub_22BF158B4(v213, v214);

        v215 = sub_22C271B74();
        sub_22BE18524(v215);
        (*(v216 + 8))(v356);
        v353(v177, v352);
        v126 = sub_22BE1A68C();
LABEL_13:
        v125(v126);
        goto LABEL_39;
      }

      v339 = v148;
      v182 = v333;
      sub_22C26DF04();
      v183 = v181;
      v184 = v182;

      v185 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse;
      v186 = v352;
      (*(v141 + 16))(v115 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse, v182, v352);
      v187 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
      sub_22BE19DC4(v115 + v185, 0, 1, v187);
      goto LABEL_29;
    }

    v200 = sub_22BE23108();
    sub_22BE29D7C(v200, v201);
    sub_22BE1B754(&a9);
    v202 = v358;
    sub_22BF19450();
    v358 = v202;
    v177 = v346;
    v203 = v353;
    if (v202)
    {
      sub_22BF158B4(v344, v351);
      v204 = sub_22BE23108();
      sub_22BF158B4(v204, v205);
      v206 = sub_22BE23108();
      sub_22BF158B4(v206, v207);

      v208 = sub_22C271B74();
      sub_22BE18524(v208);
      (*(v209 + 8))(v356);
      v203(v177, v352);
LABEL_33:
      v210 = sub_22BE1A68C();
      v211(v210);
      v115 = v357;
      goto LABEL_39;
    }

    v217 = v352;
    if (sub_22BE1AEA8(v139, 1, v352) == 1)
    {
      v336 = v115;
      v218 = sub_22BE23108();
      sub_22BF158B4(v218, v219);
      sub_22BE233E8(v139, &qword_27D908088, &qword_22C278EC0);
      sub_22BF1C7C0();
      goto LABEL_27;
    }

    v250 = sub_22BE196E0();
    v340(v250, v139, v217);
    v339 = v148;
    v251 = sub_22BE23108();
    sub_22BE29D7C(v251, v252);
    v253 = [v347 defaultManager];
    sub_22BE236D4(&a13);
    sub_22BF18558();
    v254 = sub_22C26DF14();
    v353(v148, v217);
    sub_22C272FF4();
    sub_22BE194EC();

    v255 = [v253 fileExistsAtPath_];

    if (!v255)
    {
      v336 = v115;
      v141 = v348;
      sub_22BE33A0C();
LABEL_53:
      v271 = sub_22BE23108();
      sub_22BF158B4(v271, v272);
      v273 = sub_22BE23108();
      sub_22BF158B4(v273, v274);
      v275 = sub_22BE336E8();
      sub_22BF158B4(v275, v276);
      v115 = v357;
LABEL_54:
      v277 = sub_22BE196E0();
      v353(v277, v352);
LABEL_55:
      v177 = v346;
      goto LABEL_27;
    }

    sub_22BE236D4(&v358);
    sub_22BF18558();
    v256 = v358;
    sub_22C26DFA4();
    v358 = v256;
    if (v256)
    {
      sub_22BE25668();
      sub_22BE29DD4(0x6E6F6973726576, v154);

      v257 = sub_22C271B74();
      sub_22BE18524(v257);
      (*(v258 + 8))(v356);
      v259 = v352;
      v260 = v353;
      v353(v148, v352);
      v261 = sub_22BE196E0();
      v260(v261, v259);
      v260(v346, v259);
      goto LABEL_33;
    }

    v278 = sub_22BE3D43C();
    v353(v278, v352);
    v148 = v339;
    v336 = v115;
    if (v253 >> 60 == 15)
    {
      v141 = v348;
      goto LABEL_53;
    }

    v279 = sub_22BE23108();
    sub_22BF1C1E4(v279, v280);
    v281 = sub_22BE336E8();
    sub_22BF1C1E4(v281, v282);
    v283 = sub_22BE23108();
    v284 = MEMORY[0x2318A6720](v283);
    v285 = sub_22BE336E8();
    sub_22BF158B4(v285, v286);
    v287 = sub_22BE336E8();
    sub_22BF158B4(v287, v288);
    v289 = sub_22BE23108();
    sub_22BF158B4(v289, v290);
    v291 = sub_22BE23108();
    sub_22BF158B4(v291, v292);
    if ((v284 & 1) == 0)
    {
      v304 = sub_22BE23108();
      sub_22BF158B4(v304, v305);
      sub_22BF1C7C0();
      goto LABEL_54;
    }

    v293 = [v347 defaultManager];
    sub_22BE236D4(&a13);
    sub_22BF18558();
    sub_22C26DF14();
    v294 = sub_22BE3D43C();
    v353(v294, v352);
    sub_22BE336E8();
    sub_22C272FF4();
    sub_22BE289CC();

    v295 = [v293 fileExistsAtPath_];

    if (v295)
    {
      sub_22BE19F14();
      sub_22BE1B754(&v357);
      sub_22BF18558();
      v296 = v358;
      v297 = sub_22C26DFA4();
      v358 = v296;
      if (v296)
      {
        sub_22BE25668();

        v299 = sub_22C271B74();
        sub_22BE18524(v299);
        (*(v300 + 8))(v356);
        v302 = v352;
        v301 = v353;
        v353(v295, v352);
        v303 = sub_22BE196E0();
        v301(v303, v302);
        v301(v346, v302);
        goto LABEL_33;
      }

      v309 = v297;
      v306 = v298;
      v353(v295, v352);
      if (v343 > 0xE)
      {
LABEL_66:
        v115 = v344;
        sub_22BF1C1E4(v344, v351);
        sub_22BE33A0C();
        v310 = sub_22BE23108();
        sub_22BF158B4(v310, v311);
        if (v306 >> 60 == 15)
        {
          v312 = sub_22BE2684C();
          sub_22BF158B4(v312, v313);
LABEL_68:
          v184 = v333;
          v186 = v352;
          v340(v333, v332[4], v352);
          sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
          v115 = v357;
          sub_22BE1A140();
          sub_22BE19DC4(v314, v315, v316, v317);
          v141 = v348;
LABEL_29:
          sub_22BE45D84(0, &qword_28106DAF8, 0x277CBFF20);
          v188 = *(v141 + 16);
          v189 = v332[6];
          v190 = sub_22BE1AB1C();
          v191(v190);
          v192 = v355;
          v193 = v358;
          v194 = sub_22BF1B700(v189, v192);
          if (v193)
          {
            sub_22BF158B4(v344, v351);
            sub_22BF158B4(v339, v154);

            v195 = sub_22C271B74();
            sub_22BE18524(v195);
            (*(v196 + 8))(v356);
            v197 = v353;
            v353(v184, v186);
            v197(v346, v186);
            v198 = sub_22BE1A68C();
            v199(v198);
            sub_22BF1C168(v115 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse);
            goto LABEL_39;
          }

          v233 = v194;
          sub_22BE5CE4C(&qword_27D90B208, &qword_22C28C468);
          v234 = swift_allocObject();
          *(v234 + 24) = 0;
          *(v234 + 16) = v233;
          v115[2] = v234;
          v235 = v342 >= 0xF && v343 >= 0xF;
          v236 = v339;
          if (v235)
          {
            sub_22BE236D4(&a11);
            sub_22C273054();
            v262 = sub_22C273034();
            v264 = v263;

            v265 = sub_22C271B74();
            sub_22BE18524(v265);
            (*(v266 + 8))(v356);
            v341(v189, v335);
            v267 = sub_22BE35824();
            (v192)(v267);
            (v192)(v346, v186);
            v268 = sub_22BE1A68C();
            v269(v268);
            v115[3] = v262;
            v115[4] = v264;
            v270 = (v115 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
            *v270 = v262;
            v270[1] = v264;
            sub_22BF1C1E4(v262, v264);
          }

          else
          {

            v237 = sub_22C271B74();
            sub_22BE18524(v237);
            (*(v238 + 8))(v356);
            v239 = sub_22BE35824();
            (v192)(v239);
            (v192)(v346, v186);
            v240 = sub_22BE1A68C();
            v241(v240);
            v115[3] = v236;
            v115[4] = v154;
            v242 = (v115 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
            v243 = v351;
            *v242 = v344;
            v242[1] = v243;
          }

          goto LABEL_40;
        }

        goto LABEL_69;
      }

      if (v306 >> 60 != 15)
      {
        v323 = v344;
        v324 = v351;
        sub_22BF1C1E4(v344, v351);
        sub_22BF1C1E4(v309, v306);
        v325 = MEMORY[0x2318A6720](v323, v324, v309, v306);
        v326 = sub_22BE19454();
        sub_22BF158B4(v326, v327);
        v328 = sub_22BE19454();
        sub_22BF158B4(v328, v329);
        sub_22BE33A0C();
        v330 = sub_22BE23108();
        sub_22BF158B4(v330, v331);
        sub_22BF158B4(v323, v324);
        if (v325)
        {
          goto LABEL_68;
        }

LABEL_70:
        v322 = sub_22BE196E0();
        v353(v322, v352);
        sub_22BF1C7C0();
        goto LABEL_55;
      }
    }

    else
    {
      v306 = 0xF000000000000000;
      if (v343 > 0xE)
      {
        goto LABEL_66;
      }
    }

    v115 = v344;
    sub_22BF1C1E4(v344, v351);
    sub_22BE33A0C();
    v307 = sub_22BE23108();
    sub_22BF158B4(v307, v308);
LABEL_69:
    v318 = sub_22BE2684C();
    sub_22BF158B4(v318, v319);
    v320 = sub_22BE19454();
    sub_22BF158B4(v320, v321);
    goto LABEL_70;
  }

  v102 = &qword_27D90B200;
  v103 = &qword_22C28C460;
  v104 = v90;
LABEL_6:
  sub_22BE233E8(v104, v102, v103);
LABEL_7:
  v111 = v353;
  v112 = v358;
  sub_22BF19450();
  if (v112)
  {
    v113 = sub_22C271B74();
    sub_22BE18524(v113);
    (*(v114 + 8))(v356);

    v115 = v357;
LABEL_39:
    v228 = *(*v115 + 48);
    v229 = *(*v115 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_40;
  }

  v116 = v352;
  v117 = sub_22BE1AEA8(v111, 1, v352);
  v115 = v357;
  if (v117 == 1)
  {
    sub_22BE233E8(v111, &qword_27D908088, &qword_22C278EC0);
    v118 = v342;
    sub_22C271AD4();
    v119 = sub_22C272084();
    v120 = sub_22C2737C4();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_22BE15000, v119, v120, "Tool Retrieval Model not found in OTA asset and no saved model available", v121, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v343 + 8))(v118, v344);
    sub_22BF1C114();
    swift_allocError();
    *v122 = 2;
    swift_willThrow();

    v123 = sub_22C271B74();
    sub_22BE18524(v123);
    v125 = *(v124 + 8);
    v126 = v356;
    goto LABEL_13;
  }

  v127 = v348;
  v128 = *(v348 + 32);
  v129 = v345;
  v130 = sub_22BE1AB74();
  v131(v130);
  sub_22BE45D84(0, &qword_28106DAF8, 0x277CBFF20);
  v132 = v341;
  (*(v127 + 16))(v341, v129, v116);
  v133 = v355;
  v160 = sub_22BF1B700(v132, v133);
  sub_22BE5CE4C(&qword_27D90B208, &qword_22C28C468);
  v161 = swift_allocObject();
  *(v161 + 24) = 0;
  *(v161 + 16) = v160;
  v115[2] = v161;
  sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  sub_22BE1A140();
  sub_22BE19DC4(v162, v163, v164, v165);
  v355 = objc_opt_self();
  v166 = [v355 defaultManager];
  sub_22BF18558();
  sub_22C26DF14();
  v167 = *(v127 + 8);
  v168 = sub_22BE354DC();
  v358 = v169;
  v169(v168);
  v170 = sub_22C272FF4();

  v171 = [v166 fileExistsAtPath_];

  if (v171)
  {
    sub_22BE1B754(&v361);
    sub_22BF18558();
    v220 = sub_22C26DFA4();
    v222 = v221;
    v358(0x6E6F6973726576, v352);
  }

  else
  {
    v220 = 0;
    v222 = 0xF000000000000000;
  }

  v115[3] = v220;
  v115[4] = v222;
  v223 = [v355 defaultManager];
  sub_22BE236D4(&a13);
  sub_22BF18558();
  sub_22C26DF14();
  v224 = v222;
  v225 = v358;
  v358(v224, v352);
  v226 = sub_22C272FF4();

  v227 = [v223 fileExistsAtPath_];

  if (v227)
  {
    sub_22BE19F14();
    sub_22BE1B754(v360);
    sub_22BF18558();
    v244 = sub_22C26DFA4();
    v246 = v245;

    v247 = sub_22C271B74();
    sub_22BE18524(v247);
    (*(v248 + 8))(v356);
    v225(v223, v352);
  }

  else
  {

    v231 = sub_22C271B74();
    sub_22BE18524(v231);
    (*(v232 + 8))(v356);
    v244 = 0;
    v246 = 0xF000000000000000;
  }

  v225(v345, v352);
  v249 = (v115 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
  *v249 = v244;
  v249[1] = v246;
LABEL_40:
  v230 = *MEMORY[0x277D85DE8];
  sub_22BE18478();
}