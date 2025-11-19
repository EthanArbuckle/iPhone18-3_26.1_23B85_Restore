uint64_t sub_247CEB6C8(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_247C90CD8(a1, a2);
  }

  return a1;
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

uint64_t sub_247CEB728()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247CEB778(uint64_t a1)
{
  v2 = type metadata accessor for BAAHeadersProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CEB840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for Metadata(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for FileUploadToken(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v19[1] + *(v14 + 36), v9, &qword_27EE63290);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
    *(v13 + 6) = 0;
    *(v13 + 7) = 0xE000000000000000;
    sub_247D1F188();
    (*(v4 + 56))(&v13[*(v10 + 36)], 1, 1, v3);
    if (v15(v9, 1, v10) != 1)
    {
      sub_247C27100(v9, &qword_27EE63290);
    }
  }

  else
  {
    sub_247CEC780(v9, v13, type metadata accessor for FileUploadToken);
  }

  sub_247C2BD10(&v13[*(v10 + 36)], v2, &qword_27EE63288);
  v16 = *(v4 + 48);
  if (v16(v2, 1, v3) == 1)
  {
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    v6[2] = 0;
    v6[3] = 0xE000000000000000;
    v6[4] = 0;
    v6[5] = 0xE000000000000000;
    sub_247D1F188();
    sub_247CEC9BC(v13, type metadata accessor for FileUploadToken);
    if (v16(v2, 1, v3) != 1)
    {
      sub_247C27100(v2, &qword_27EE63288);
    }
  }

  else
  {
    sub_247CEC9BC(v13, type metadata accessor for FileUploadToken);
    sub_247CEC780(v2, v6, type metadata accessor for Metadata);
  }

  v17 = *v6;

  sub_247CEC9BC(v6, type metadata accessor for Metadata);
  return v17;
}

void *sub_247CEBC28@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_247CEBC48@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v27 = 0;
    v26 = 1;
LABEL_66:
    *a3 = v27;
    *(a3 + 8) = v26 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_247C80E9C(result, a2, 10);
    v26 = v28;
LABEL_63:

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_247D202F8();
      v5 = v29;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
LABEL_62:
        v31 = v5;
        v26 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v30[0] = result;
  v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_247CEBF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v5 || (sub_247D20538() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    v8 = 0;
  }

  else
  {
    v9 = sub_247D20538();

    v8 = 0;
    if ((v9 & 1) == 0)
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_247CEC028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247D1FD58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_247CEC078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_247CE2EA4(a1, a2);

  *a3 = 0;
  *(a3 + 4) = !v4;
  return result;
}

uint64_t sub_247CEC0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_247C58340(a1, a2);

  *a3 = 0;
  *(a3 + 8) = !v4;
  return result;
}

double sub_247CEC1A0@<D0>(uint64_t a1@<X8>)
{
  sub_247C81BB8(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_247CEC1F8(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_247D202F8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v26 = result;

  v7 = sub_247C80E9C(v26, a2, 10);
  v25 = v27;

LABEL_63:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_247CEC508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3];
  v5 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a1 + *(v9 + 40), v4, &qword_27EE62DE0);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    *v8 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v10(v4, 1, v5) != 1)
    {
      sub_247C27100(v4, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247CEC780(v4, v8, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v11 = *v8;
  if (*(*v8 + 16) && (v12 = sub_247CCFDA8(0xD000000000000012, 0x8000000247D324A0), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_247CEC1F8(v15, v16);
    v19 = v18;

    v20 = (v17 == 1) & ~v19;
  }

  else
  {
    v20 = 0;
  }

  sub_247CEC9BC(a1, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  sub_247CEC9BC(v8, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  return v20;
}

uint64_t sub_247CEC780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CEC7E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 16) && (v3 = sub_247CCFDA8(0xD000000000000011, 0x8000000247D324E0), (v4 & 1) != 0) && (v5 = (*(v2 + 56) + 16 * v3), v6 = *v5, v7 = v5[1], , v8 = sub_247CEC1F8(v6, v7), v10 = v9, , (v10 & 1) == 0))
  {
    sub_247CEC9BC(a1, type metadata accessor for FlowResponse);
    if (v8 >= 5)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    sub_247CEC9BC(a1, type metadata accessor for FlowResponse);
    return 1;
  }
}

unint64_t sub_247CEC8C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!*(v2 + 16) || (v3 = sub_247CCFDA8(0xD00000000000001FLL, 0x8000000247D324C0), (v4 & 1) == 0) || (v5 = (*(v2 + 56) + 16 * v3), v6 = *v5, v7 = v5[1], , v8 = sub_247CEC1F8(v6, v7), v10 = v9, , (v10 & 1) != 0))
  {
    sub_247CEC9BC(a1, type metadata accessor for FlowResponse);
    return 4;
  }

  sub_247CEC9BC(a1, type metadata accessor for FlowResponse);
  if ((v8 + 1) >= 7)
  {
    return 4;
  }

  return 0x5040302010006uLL >> (8 * (v8 + 1));
}

uint64_t sub_247CEC9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_247CECA30()
{
  result = qword_27EE64278;
  if (!qword_27EE64278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64278);
  }

  return result;
}

BOOL sub_247CECAB0(void *a1, uint64_t *a2, uint64_t a3)
{
  v138[1] = *MEMORY[0x277D85DE8];
  v7 = sub_247D1F0B8();
  v133 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v132 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C580D8(0xD000000000000014, 0x8000000247D32670);
  v136 = 0;
  v9 = [a1 polygonApproximationWithEpsilon:&v136 error:?];
  if (v9)
  {
    v134 = a1;
    v135 = v3;
    v131 = a3;
    v129 = v7;
    v10 = v136;
    v130 = 0xD000000000000012;
    sub_247C5804C(0xD000000000000012, 0x8000000247D32690);
    v12 = sub_247C3F2AC(v11);
    v13 = sub_247C3F708();
    sub_247C5804C(0xD00000000000001ALL, 0x8000000247D326B0);
    v15 = v14;
    sub_247C5804C(0xD00000000000001ALL, 0x8000000247D326D0);
    v17 = v16;
    sub_247C5804C(0xD000000000000018, 0x8000000247D326F0);
    v19 = v18;
    sub_247C5804C(0xD000000000000018, 0x8000000247D32710);
    v21 = sub_247C3F38C(v15, v17, v19, v20);
    sub_247C5804C(0xD00000000000001CLL, 0x8000000247D32730);
    v23 = v22;
    sub_247C5804C(0xD00000000000001CLL, 0x8000000247D32750);
    v25 = v24;
    sub_247C5804C(0xD00000000000001ALL, 0x8000000247D32770);
    v27 = v26;
    sub_247C5804C(0xD00000000000001ALL, 0x8000000247D32790);
    v29 = sub_247C3F38C(v23, v25, v27, v28);
    sub_247C5804C(0xD00000000000001BLL, 0x8000000247D327B0);
    v31 = v30;
    sub_247C5804C(0xD00000000000001BLL, 0x8000000247D327D0);
    v33 = v32;
    sub_247C5804C(0xD000000000000019, 0x8000000247D327F0);
    v35 = v34;
    sub_247C5804C(0xD000000000000019, 0x8000000247D32810);
    v37 = sub_247C3F38C(v31, v33, v35, v36);
    sub_247C5804C(0xD000000000000019, 0x8000000247D32830);
    if (v38 <= 0.0)
    {
      v40 = 0;
    }

    else
    {
      sub_247C5804C(0xD000000000000019, 0x8000000247D32830);
      v40 = sub_247C3F5FC(v39);
    }

    v50 = v12 | v21 | v29 | v37;
    if ((v50 | v13))
    {
      v124 = v50 & v12;
      v51 = 1;
    }

    else
    {
      v124 = 0;
      v51 = v40;
    }

    v125 = v40;
    v126 = v29;
    v127 = v21;
    LODWORD(v128) = v13;
    v52 = 0x746E6F7266;
    v53 = *a2;
    if (*(*a2 + 16))
    {
      v54 = sub_247CCFDA8(v130, 0x8000000247D324A0);
      v55 = v134;
      if (v56)
      {
        v57 = (*(v53 + 56) + 16 * v54);
        v59 = *v57;
        v58 = v57[1];

        v60 = v59;
        v61 = v135;
        v62 = sub_247CECA84(v60, v58);
        v64 = v63;
        v135 = v61;

        v65 = 0xE500000000000000;
        v66 = 0xE700000000000000;
        v67 = 0x746C7561666564;
        if (v62 == 1)
        {
          v67 = 1801675106;
          v66 = 0xE400000000000000;
        }

        if (v62)
        {
          v65 = v66;
        }

        else
        {
          v67 = 0x746E6F7266;
        }

        if (v64)
        {
          v68 = 0xE500000000000000;
        }

        else
        {
          v52 = v67;
          v68 = v65;
        }
      }

      else
      {
        v68 = 0xE500000000000000;
      }
    }

    else
    {
      v68 = 0xE500000000000000;
      v55 = v134;
    }

    v69 = v9;
    v70 = v55;
    v71 = v69;
    v72 = v70;

    v73 = sub_247D1F468();
    v74 = sub_247D20058();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      LODWORD(v131) = v74;
      v76 = v75;
      v134 = swift_slowAlloc();
      v138[0] = v134;
      *v76 = 136319490;
      v77 = sub_247CB03B4(v52, v68, v138);
      v130 = v73;
      v78 = v77;

      *(v76 + 4) = v78;
      *(v76 + 12) = 1024;
      v123 = v51;
      *(v76 + 14) = v51 & 1;
      *(v76 + 18) = 1024;
      *(v76 + 20) = v124 & 1;
      *(v76 + 24) = 1024;
      *(v76 + 26) = v128 & 1;
      *(v76 + 30) = 1024;
      *(v76 + 32) = v127 & 1;
      *(v76 + 36) = 1024;
      *(v76 + 38) = v126 & 1;
      *(v76 + 42) = 1024;
      *(v76 + 44) = v37 & 1;
      *(v76 + 48) = 1024;
      *(v76 + 50) = v125 & 1;
      *(v76 + 54) = 2080;
      v79 = [v71 indexPath];
      v80 = v132;
      sub_247D1F0A8();

      v128 = sub_247CF1728();
      v81 = v129;
      v82 = sub_247D204D8();
      v84 = v83;
      v133 = *(v133 + 8);
      (v133)(v80, v81);
      v85 = sub_247CB03B4(v82, v84, v138);

      *(v76 + 56) = v85;
      *(v76 + 64) = 2048;
      [v71 aspectRatio];
      *(v76 + 66) = v86;
      *(v76 + 74) = 2048;
      v87 = [v71 pointCount];

      *(v76 + 76) = v87;
      *(v76 + 84) = 2048;
      v88 = [v71 childContourCount];

      *(v76 + 86) = v88;
      *(v76 + 94) = 2080;
      v89 = [v71 normalizedPath];
      BoundingBox = CGPathGetBoundingBox(v89);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;

      v136 = sub_247D1FF98();
      v137 = v94;
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v95 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v95);

      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v140.origin.x = x;
      v140.origin.y = y;
      v140.size.width = width;
      v140.size.height = height;
      CGRectGetWidth(v140);
      v96 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v96);

      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v141.origin.x = x;
      v141.origin.y = y;
      v141.size.width = width;
      v141.size.height = height;
      CGRectGetHeight(v141);
      v97 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v97);

      v98 = sub_247CB03B4(v136, v137, v138);

      *(v76 + 96) = v98;
      *(v76 + 104) = 2080;
      v99 = [v72 indexPath];
      sub_247D1F0A8();

      v100 = sub_247D204D8();
      v102 = v101;

      (v133)(v80, v81);
      LOBYTE(v51) = v123;
      v103 = sub_247CB03B4(v100, v102, v138);

      *(v76 + 106) = v103;
      *(v76 + 114) = 2048;
      [v72 aspectRatio];
      *(v76 + 116) = v104;
      *(v76 + 124) = 2048;
      v105 = [v72 pointCount];

      *(v76 + 126) = v105;
      *(v76 + 134) = 2048;
      v106 = [v72 childContourCount];

      *(v76 + 136) = v106;
      *(v76 + 144) = 2080;
      v107 = [v72 normalizedPath];
      v142 = CGPathGetBoundingBox(v107);
      v108 = v142.origin.x;
      v109 = v142.origin.y;
      v110 = v142.size.width;
      v111 = v142.size.height;

      v136 = sub_247D1FF98();
      v137 = v112;
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v113 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v113);

      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v143.origin.x = v108;
      v143.origin.y = v109;
      v143.size.width = v110;
      v143.size.height = v111;
      CGRectGetWidth(v143);
      v114 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v114);

      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      v144.origin.x = v108;
      v144.origin.y = v109;
      v144.size.width = v110;
      v144.size.height = v111;
      CGRectGetHeight(v144);
      v115 = sub_247D1FF98();
      MEMORY[0x24C1B7B80](v115);

      v116 = sub_247CB03B4(v136, v137, v138);

      *(v76 + 146) = v116;
      v117 = v130;
      _os_log_impl(&dword_247C1F000, v130, v131, "%s;%{BOOL}d;%{BOOL}d;%{BOOL}d;%{BOOL}d;%{BOOL}d;%{BOOL}d;%{BOOL}d;%s;%f;%ld;%ld;%s;%s;%f;%ld;%ld;%s", v76, 0x9Au);
      v118 = v134;
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v118, -1, -1);
      MEMORY[0x24C1B9080](v76, -1, -1);
    }

    else
    {
    }

    v119 = (v51 & 1) == 0;
    v120 = v72;
  }

  else
  {
    v41 = v136;
    v42 = sub_247D1ECA8();

    swift_willThrow();
    v43 = v42;
    v44 = sub_247D1F468();
    v45 = sub_247D20038();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v42;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_247C1F000, v44, v45, "Failed to convert contour: %@", v46, 0xCu);
      sub_247C27100(v47, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v47, -1, -1);
      MEMORY[0x24C1B9080](v46, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v119;
}

char *sub_247CED6A0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_247D203B8())
  {
    v6 = 0;
    v19 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v18 = v4;
    while (1)
    {
      if (v20)
      {
        v9 = MEMORY[0x24C1B8190](v6, v4);
      }

      else
      {
        if (v6 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v24 = v9;
      a1(&v22, &v24);
      if (v3)
      {

        return v7;
      }

      v12 = v23;
      if (v23)
      {
        v13 = i;
        v14 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_247C803C8(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_247C803C8((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        v8 = &v7[16 * v16];
        v8[32] = v14 & 1;
        *(v8 + 5) = v12;
        v4 = v18;
        i = v13;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_247CED860(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *v5;
    a1(&v14, &v16);
    if (v3)
    {
      break;
    }

    v8 = v15;
    if (v15)
    {
      v9 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_247C80A50(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_247C80A50((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v7 = &v6[16 * v11];
      *(v7 + 4) = v9;
      *(v7 + 5) = v8;
    }

    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void sub_247CED990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247CF162C(a1, v11, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  if (sub_247CEC508(v11))
  {
    sub_247C2FFE0(a1 + *(v9 + 40), v4);
    v12 = *(v6 + 48);
    if (v12(v4, 1, v5) == 1)
    {
      *v8 = sub_247CD8184(MEMORY[0x277D84F90]);
      sub_247D1F188();
      if (v12(v4, 1, v5) != 1)
      {
        sub_247C27100(v4, &qword_27EE62DE0);
      }
    }

    else
    {
      sub_247C788CC(v4, v8);
    }

    v13 = sub_247C57F80(0xD00000000000001CLL, 0x8000000247D2E730, 0);
    sub_247CF1694(v8, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    if (v13)
    {
      sub_247C616AC();
    }
  }

  else
  {
    sub_247C621A0();
  }
}

id sub_247CEDC0C()
{
  v1 = sub_247D1EF48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1EF18();
  v5 = OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_lastDeviceSideAndMLRequestUpdateTimestamp;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
  v6 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_frameValidator);
  swift_beginAccess();
  *(v6 + 16) = MEMORY[0x277D84F90];

  return [*(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceAuthenticator) *(v0 + OBJC:sel_reset IVAR:? :? :? :? TtC18CosmeticAssessment22RealTimeImageProcessor:? deviceAuthenticator + 24)) + OBJC:? IVAR:? :? :? :? TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator:?reader)];
}

uint64_t sub_247CEDD64()
{
  v1 = 1701736302;
  *&v60[0] = 0;
  *(&v60[0] + 1) = 0xE000000000000000;
  sub_247D202C8();
  *&v60[0] = *(v0 + 8);
  v2 = sub_247D204D8();
  MEMORY[0x24C1B7B80](v2);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v3 = *(v0 + 69);
  if (v3 <= 0xEF && (v4 = sub_247C8F6F0(v3), v5))
  {
    v6 = v5;
  }

  else
  {

    v6 = 0xE400000000000000;
    v4 = 1701736302;
  }

  MEMORY[0x24C1B7B80](v4, v6);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  if (*(v0 + 9))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  v8 = 0xE400000000000000;
  if (*(v0 + 9))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C1B7B80](v7, v9);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  *&v60[0] = *(v0 + 16);
  v10 = sub_247D204D8();
  MEMORY[0x24C1B7B80](v10);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  *&v60[0] = *(v0 + 24);
  v11 = sub_247D204D8();
  MEMORY[0x24C1B7B80](v11);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v12 = 1701736302;
  if ((*(v0 + 68) & 1) == 0)
  {
    LODWORD(v60[0]) = *(v0 + 64);
    type metadata accessor for CGImagePropertyOrientation(0);
    v12 = sub_247D1FC68();
    v8 = v13;
  }

  MEMORY[0x24C1B7B80](v12, v8);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  if (*(v0 + 80))
  {
    v14 = 0xE400000000000000;
    v15 = 1701736302;
  }

  else
  {
    v15 = sub_247D1FF98();
    v14 = v16;
  }

  MEMORY[0x24C1B7B80](v15, v14);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);
  *&v60[0] = sub_247D1FF98();
  *(&v60[0] + 1) = v21;
  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v22 = sub_247D1FF98();
  MEMORY[0x24C1B7B80](v22);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v62.origin.x = v17;
  v62.origin.y = v18;
  v62.size.width = v19;
  v62.size.height = v20;
  CGRectGetWidth(v62);
  v23 = sub_247D1FF98();
  MEMORY[0x24C1B7B80](v23);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  CGRectGetHeight(v63);
  v24 = sub_247D1FF98();
  MEMORY[0x24C1B7B80](v24);

  MEMORY[0x24C1B7B80](*&v60[0], *(&v60[0] + 1));

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  if (*(v0 + 248))
  {
    v25 = 0xE400000000000000;
    v26 = 1701736302;
  }

  else
  {
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    *&v60[0] = sub_247D1FF98();
    *(&v60[0] + 1) = v31;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v32 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v32);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v64.origin.x = v30;
    v64.origin.y = v29;
    v64.size.width = v28;
    v64.size.height = v27;
    CGRectGetWidth(v64);
    v33 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v33);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v65.origin.x = v30;
    v65.origin.y = v29;
    v65.size.width = v28;
    v65.size.height = v27;
    CGRectGetHeight(v65);
    v34 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v34);

    v25 = *(&v60[0] + 1);
    v26 = *&v60[0];
  }

  MEMORY[0x24C1B7B80](v26, v25);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  if (*(v0 + 288))
  {
    v35 = 0xE400000000000000;
    v36 = 1701736302;
  }

  else
  {
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v40 = *(v0 + 256);
    v39 = *(v0 + 264);
    *&v60[0] = sub_247D1FF98();
    *(&v60[0] + 1) = v41;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v42 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v42);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v66.origin.x = v40;
    v66.origin.y = v39;
    v66.size.width = v38;
    v66.size.height = v37;
    CGRectGetWidth(v66);
    v43 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v43);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v67.origin.x = v40;
    v67.origin.y = v39;
    v67.size.width = v38;
    v67.size.height = v37;
    CGRectGetHeight(v67);
    v44 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v44);

    v35 = *(&v60[0] + 1);
    v36 = *&v60[0];
  }

  MEMORY[0x24C1B7B80](v36, v35);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  if (*(v0 + 328))
  {
    v45 = 0xE400000000000000;
    v46 = 1701736302;
  }

  else
  {
    v48 = *(v0 + 312);
    v47 = *(v0 + 320);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    *&v60[0] = sub_247D1FF98();
    *(&v60[0] + 1) = v51;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v52 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v52);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v68.origin.x = v50;
    v68.origin.y = v49;
    v68.size.width = v48;
    v68.size.height = v47;
    CGRectGetWidth(v68);
    v53 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v53);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v69.origin.x = v50;
    v69.origin.y = v49;
    v69.size.width = v48;
    v69.size.height = v47;
    CGRectGetHeight(v69);
    v54 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v54);

    v45 = *(&v60[0] + 1);
    v46 = *&v60[0];
  }

  MEMORY[0x24C1B7B80](v46, v45);

  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  v55 = *(v0 + 168);
  v60[4] = *(v0 + 152);
  v60[5] = v55;
  v61[0] = *(v0 + 184);
  *(v61 + 9) = *(v0 + 193);
  v56 = *(v0 + 104);
  v60[0] = *(v0 + 88);
  v60[1] = v56;
  v57 = *(v0 + 136);
  v60[2] = *(v0 + 120);
  v60[3] = v57;
  if (sub_247C3503C(v60) == 1)
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    sub_247D1FFA8();
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    sub_247D1FFA8();
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    sub_247D1FFA8();
    v1 = 0;
    v58 = 0xE000000000000000;
  }

  MEMORY[0x24C1B7B80](v1, v58);

  return 0;
}

void sub_247CEE4C0(char a1, double a2, double a3)
{
  [v3 boundingBox];
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v11 = sub_247C7FCC8(a1, v7, v8, fmin(v9, 1.0), fmin(v10, 1.0));
  if (a3 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 > a3)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 < 9.22337204e18)
  {
    v21 = VNImageRectForNormalizedRect(*&v11, v15, v16);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetHeight(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGRectGetWidth(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetHeight(v24);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_247CEE664()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceAuthenticator);

  v3 = OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_lastDeviceSideAndMLRequestUpdateTimestamp;
  v4 = sub_247D1EF48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_247C3F278(v0 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_delegate);
  sub_247CF1694(v0 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_flowState, _s5StateVMa);

  return v0;
}

uint64_t sub_247CEE790()
{
  sub_247CEE664();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RealTimeImageProcessor()
{
  result = qword_27EE642B0;
  if (!qword_27EE642B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CEE83C()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    result = sub_247D1EF48();
    if (v2 <= 0x3F)
    {
      result = _s5StateVMa();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_247CEE99C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 329))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_247CEE9F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t (*sub_247CEEA9C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1B8190](a2, a3);
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
    *v3 = v4;
    return sub_247CF1B4C;
  }

  __break(1u);
  return result;
}

void (*sub_247CEEB1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1B8190](a2, a3);
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
    *v3 = v4;
    return sub_247CEEB9C;
  }

  __break(1u);
  return result;
}

BOOL sub_247CEEBA4@<W0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BOOL8 *a4@<X8>)
{
  result = sub_247CECAB0(*a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_247CEEBD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = _s5StateVMa();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277CE2E10]) init];
  sub_247D1F478();
  sub_247D1EF18();
  *(v3 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = *(a1 + 48);
  if (*(v11 + 16) && (v12 = sub_247CCFDA8(0xD000000000000017, 0x8000000247D2EEF0), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_247CECA84(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = v17;
    }
  }

  else
  {
    v20 = 3;
  }

  sub_247C58164(0xD000000000000018, 0x8000000247D30B20);
  v22 = v21;
  _s14FrameValidatorCMa();
  v23 = swift_allocObject();
  v23[2] = MEMORY[0x277D84F90];
  sub_247D1F478();
  v23[3] = v20;
  v23[4] = v22;
  *(v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_frameValidator) = v23;
  sub_247CF162C(a1, v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_flowState, _s5StateVMa);
  *(v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceBackAuthenticator) = a2;
  *(v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_ciContext) = a3;
  type metadata accessor for RealWorldEnvironmentQualifier();
  swift_allocObject();
  v24 = a3;

  *(v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_realWorldEnvironmentQualifier) = sub_247C8FB68(v24);
  sub_247CF162C(a1, v10, _s5StateVMa);
  v25 = _s22WatermarkAuthenticatorCMa();
  swift_allocObject();
  v26 = sub_247C776E0(v10);
  v30 = v25;
  v31 = &off_2859D9BF8;
  *&v29 = v26;
  sub_247CF1694(a1, _s5StateVMa);
  sub_247C3D044(&v29, v4 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceAuthenticator);
  return v4;
}

__n128 sub_247CEEF00@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, __CVBuffer *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, CGFloat a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, double a18, uint64_t a19)
{
  v387 = a7;
  v418 = a6;
  v423 = a5;
  LODWORD(v406) = a3;
  v421 = a2;
  v410 = a17;
  v412 = a15;
  v413 = a16;
  v382 = a10;
  v398 = 0;
  v420 = a8;
  LODWORD(v419) = a8;
  v26 = a18;
  v27 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v27);
  v374 = &v367 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowResponse(0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v371 = &v367 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v377 = &v367 - v32;
  v386 = _s16RelativePositionVMa(0);
  MEMORY[0x28223BE20](v386);
  v376 = &v367 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = _s13RelativeAngleVMa(0);
  MEMORY[0x28223BE20](v375);
  v385 = &v367 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = _s15ObjectOcclusionVMa(0);
  MEMORY[0x28223BE20](v383);
  v384 = &v367 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = _s24ExcessiveGlareEvaluationVMa(0);
  MEMORY[0x28223BE20](v379);
  v380 = &v367 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = COERCE_DOUBLE(sub_247D1F488());
  y = *(v37 - 8);
  x = *&v37;
  MEMORY[0x28223BE20](v37);
  *&v402 = &v367 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = _s12AmbientLightVMa(0);
  MEMORY[0x28223BE20](v415);
  v40 = &v367 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v370 = &v367 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v372 = &v367 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v393 = &v367 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v388 = &v367 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v367 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v367 - v53;
  v55 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v369 = (&v367 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x28223BE20](v57);
  v373 = (&v367 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v390 = (&v367 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v405 = (&v367 - v64);
  MEMORY[0x28223BE20](v63);
  v417 = (&v367 - v65);
  v408 = sub_247D1EF48();
  v422 = *(v408 - 8);
  v66 = MEMORY[0x28223BE20](v408);
  v391 = &v367 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v407 = &v367 - v68;
  sub_247D1EF18();
  v400 = *&v416[OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_realWorldEnvironmentQualifier];
  v381 = a1;
  sub_247C58164(0x64646150706F7263uLL, 0xEB00000000676E69);
  v70 = v69;
  Width = CVPixelBufferGetWidth(a4);
  v399 = a4;
  Height = CVPixelBufferGetHeight(a4);
  v72 = (v56 + 48);
  v392 = v55;
  v409 = (v56 + 48);
  v394 = a11;
  v395 = a12;
  v389 = v27;
  if (v419)
  {
    sub_247C2FFE0(v423 + *(v27 + 44), v52);
    v73 = *v72;
    if (v73(v52, 1, v55) == 1)
    {
      v74 = sub_247CD8184(MEMORY[0x277D84F90]);
      v75 = v417;
      *v417 = v74;
      sub_247D1F188();
      if (v73(v52, 1, v55) != 1)
      {
        sub_247C27100(v52, &qword_27EE62DE0);
      }
    }

    else
    {
      v75 = v417;
      sub_247C788CC(v52, v417);
    }

    if (v420 == 3)
    {
      v78 = "com.apple.CosmeticAssessment";
      LODWORD(v414) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    sub_247C2FFE0(v423 + *(v27 + 40), v54);
    v76 = *v72;
    if (v76(v54, 1, v55) == 1)
    {
      v77 = sub_247CD8184(MEMORY[0x277D84F90]);
      v75 = v417;
      *v417 = v77;
      sub_247D1F188();
      if (v76(v54, 1, v55) != 1)
      {
        sub_247C27100(v54, &qword_27EE62DE0);
      }
    }

    else
    {
      v75 = v417;
      sub_247C788CC(v54, v417);
    }
  }

  v79 = v415;
  sub_247CF162C(v75, &v40[*(v415 + 20)], type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  sub_247D1F478();
  v80 = &v40[*(v79 + 24)];
  *v80 = v421;
  v80[8] = v406 & 1;
  v81 = v75;
  v82 = sub_247C32260();
  sub_247CF1694(v40, _s12AmbientLightVMa);
  if (v82 != 15)
  {
    sub_247CF1694(v81, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247C6166C(&v461);
    v419 = 0;
    v113 = 0;
    v387 = 0;
    v106 = 0.0;
    v83 = 0.0;
    v114 = 1;
    v84 = 0.0;
    Width = 0;
    v115 = 1;
    v116 = 1;
    y = 0.0;
    x = 0.0;
    v401 = 0.0;
    v402 = 0.0;
    v94 = &v454;
    goto LABEL_55;
  }

  v78 = "com.apple.CosmeticAssessment";
  LODWORD(v414) = 1;
  v75 = v81;
LABEL_14:
  v83 = Width;
  v84 = Height;
  v85 = OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_visionRequestHandler;
  if ((v418 & 0x100000000) != 0)
  {
    v86 = 1;
  }

  else
  {
    v86 = v418;
  }

  v87 = v399;
  v88 = v400;
  v89 = sub_247CB80C0(v75, v400 + OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_visionRequestHandler, v399, v86);
  v91 = v90;
  v92 = sub_247CB89FC(v89, v75, v88 + v85, v87, v86);
  v378 = v91;
  if (!v91)
  {
    sub_247C6166C(&v468);
    v94 = &v454;
    if (v89)
    {
      goto LABEL_19;
    }

LABEL_27:

    sub_247CF1694(v75, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v419 = 0;
    v113 = 0;
    v387 = 0;
    v465 = v472;
    v466 = *v473;
    v467[0] = *&v473[2];
    *(v467 + 9) = *(&v473[3] + 1);
    v115 = 1;
    v106 = 0.0;
    v82 = 129;
    v461 = v468;
    v462 = v469;
    v83 = 0.0;
    v84 = 0.0;
    Width = 0;
    v116 = 1;
    y = 0.0;
    x = 0.0;
    v463 = v470;
    v464 = v471;
    v401 = 0.0;
    v402 = 0.0;
    v117 = v391;
    v114 = v414;
    goto LABEL_56;
  }

  v93 = v91;
  sub_247C27590(v93, v448, a11, a12, a13, a14, v83, v84);

  v458 = v448[4];
  v94 = &v454;
  v459 = v448[5];
  v460[0] = v448[6];
  *&v460[1] = *&v448[7];
  v454 = v448[0];
  v455 = v448[1];
  v456 = v448[2];
  v457 = v448[3];
  sub_247C5FCAC(&v454);
  v472 = v458;
  *v473 = v459;
  *&v473[2] = v460[0];
  *(&v473[3] + 1) = *(v460 + 9);
  v468 = v454;
  v469 = v455;
  v470 = v456;
  v471 = v457;
  if (!v89)
  {
    goto LABEL_27;
  }

LABEL_19:
  v368 = v70;
  v95 = 0x634F7463656A624FLL;
  v96 = &off_278EDD000;
  [v89 boundingBox];
  v101 = a14;
  a14 = 0.0;
  if (v97 < 0.0)
  {
    v97 = 0.0;
  }

  if (v98 < 0.0)
  {
    v98 = 0.0;
  }

  v26 = 1.0;
  v102 = a12;
  a12 = a13;
  v103 = a13;
  v104 = v101;
  sub_247C7FE60(v387, v97, v98, fmin(v99, 1.0), fmin(v100, 1.0), a11, v102, v103, v101, v83, v84);
  v106 = v105;
  v396 = v108;
  v397 = v107;
  Width = v109;
  if (v92)
  {

    v110 = v402;
    v111 = sub_247D1F478();
    MEMORY[0x28223BE20](v111);
    v365 = v417;
    v366 = v110;
    v112 = v398;
    v415 = sub_247CED6A0(sub_247CF16F4, (&v367 - 4), v92);
    v398 = v112;
    v96 = &off_278EDD000;

    (*(*&y + 8))(COERCE_CGFLOAT(*&v110), COERCE_CGFLOAT(*&x));
  }

  else
  {
    v415 = 0;
  }

  [v89 v96[285]];
  if (v118 < 0.0)
  {
    v118 = 0.0;
  }

  if (v119 < 0.0)
  {
    v119 = 0.0;
  }

  v122 = 0xC3E0000000000001;
  if (v83 <= -9.22337204e18)
  {
    goto LABEL_156;
  }

  v122 = 0x43E0000000000000;
  if (v83 >= 9.22337204e18)
  {
    goto LABEL_157;
  }

  v122 = 0xC3E0000000000001;
  if (v84 <= -9.22337204e18)
  {
    goto LABEL_158;
  }

  v122 = 0x43E0000000000000;
  if (v84 >= 9.22337204e18)
  {
    goto LABEL_159;
  }

  v123 = fmin(v120, 1.0);
  v124 = fmin(v121, 1.0);
  v485 = VNImageRectForNormalizedRect(*&v118, v83, v84);
  y = v485.origin.y;
  x = v485.origin.x;
  v401 = v485.size.height;
  v402 = v485.size.width;
  v419 = v89;
  if ((v414 & 1) == 0)
  {

    v172 = sub_247D1F468();
    v173 = sub_247D20028();
    v174 = os_log_type_enabled(v172, v173);
    v26 = a18;
    a14 = v104;
    v175 = v417;
    if (v174)
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&dword_247C1F000, v172, v173, "[EM] - Skipping qualifier for photoCapture", v176, 2u);
      MEMORY[0x24C1B9080](v176, -1, -1);
    }

    sub_247CF1694(v175, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v114 = 0;
    v115 = 0;
    v465 = v472;
    v466 = *v473;
    v467[0] = *&v473[2];
    *(v467 + 9) = *(&v473[3] + 1);
    v461 = v468;
    v462 = v469;
    v82 = 240;
    v387 = v421;
    v116 = v406;
    v463 = v470;
    v464 = v471;
    a13 = a12;
    a11 = v394;
    a12 = v395;
    v113 = v415;
    v84 = v396;
    v83 = v397;
    goto LABEL_55;
  }

  v126 = v379;
  v125 = v380;
  sub_247CF162C(v417, v380 + *(v379 + 20), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v127 = *(v400 + OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_ciContext);
  v128 = v89;
  sub_247D1F478();
  v129 = v399;
  *(v125 + v126[6]) = v399;
  *(v125 + v126[7]) = v382;
  v130 = v126[8];
  v414 = v128;
  *(v125 + v130) = v128;
  *(v125 + v126[9]) = v368;
  *(v125 + v126[10]) = v127;
  v400 = v129;
  v95 = sub_247C80908(0, 1, 1, MEMORY[0x277D84F90]);
  v78 = *(v95 + 16);
  v122 = *(v95 + 24);
  v89 = v78 + 1;
  v26 = a18;
  a14 = v104;
  if (v78 >= v122 >> 1)
  {
    goto LABEL_160;
  }

  while (1)
  {
    a13 = a12;
    a11 = v394;
    v131 = v375;
    *(&v455 + 1) = v379;
    *&v456 = &off_2859D7C08;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v454);
    v133 = v380;
    sub_247CF162C(v380, boxed_opaque_existential_0, _s24ExcessiveGlareEvaluationVMa);
    *(v95 + 16) = v89;
    sub_247C3D044(&v454, v95 + 40 * v78 + 32);
    sub_247CF1694(v133, _s24ExcessiveGlareEvaluationVMa);
    v134 = v383;
    v135 = v384;
    sub_247CF162C(v417, v384 + *(v383 + 20), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247D1F478();
    v136 = (v135 + *(v134 + 24));
    *v136 = v83;
    v136[1] = v84;
    *(v135 + *(v134 + 28)) = v92;
    v138 = *(v95 + 16);
    v137 = *(v95 + 24);
    a12 = v395;
    if (v138 >= v137 >> 1)
    {
      v95 = sub_247C80908((v137 > 1), v138 + 1, 1, v95);
    }

    v84 = v396;
    v83 = v397;
    v78 = v376;
    *(&v455 + 1) = v383;
    *&v456 = &off_2859D7BF8;
    v139 = __swift_allocate_boxed_opaque_existential_0(&v454);
    v140 = v384;
    sub_247CF162C(v384, v139, _s15ObjectOcclusionVMa);
    *(v95 + 16) = v138 + 1;
    sub_247C3D044(&v454, v95 + 40 * v138 + 32);
    sub_247CF1694(v140, _s15ObjectOcclusionVMa);
    v141 = v385;
    sub_247CF162C(v417, v385 + *(v131 + 20), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247D1F478();
    v142 = (v141 + *(v131 + 24));
    v143 = v471;
    v142[2] = v470;
    v142[3] = v143;
    v144 = v469;
    *v142 = v468;
    v142[1] = v144;
    *(v142 + 105) = *(&v473[3] + 1);
    v145 = *&v473[2];
    v142[5] = *v473;
    v142[6] = v145;
    v142[4] = v472;
    v147 = *(v95 + 16);
    v146 = *(v95 + 24);
    if (v147 >= v146 >> 1)
    {
      v95 = sub_247C80908((v146 > 1), v147 + 1, 1, v95);
    }

    *(&v455 + 1) = v131;
    *&v456 = &off_2859D7BE8;
    v148 = __swift_allocate_boxed_opaque_existential_0(&v454);
    v149 = v385;
    sub_247CF162C(v385, v148, _s13RelativeAngleVMa);
    *(v95 + 16) = v147 + 1;
    sub_247C3D044(&v454, v95 + 40 * v147 + 32);
    sub_247CF1694(v149, _s13RelativeAngleVMa);
    sub_247CF162C(v417, v78, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v151 = v386;
    v150 = v387;
    v152 = v400;
    *(v78 + *(v386 + 20)) = v400;
    v153 = v414;
    *(v78 + v151[6]) = v414;
    v154 = (v78 + v151[7]);
    *v154 = a11;
    v154[1] = a12;
    v154[2] = a13;
    v154[3] = a14;
    *(v78 + v151[8]) = v150;
    v155 = (v78 + v151[9]);
    v156 = v413;
    *v155 = v412;
    v155[1] = v156;
    v157 = Width;
    v155[2] = v410;
    v155[3] = v26;
    v158 = v78 + v151[10];
    *v158 = v106;
    *(v158 + 8) = v83;
    *(v158 + 16) = v84;
    *(v158 + 24) = v157;
    v159 = v153;
    v160 = v152;
    sub_247D1F478();
    v162 = *(v95 + 16);
    v161 = *(v95 + 24);
    if (v162 >= v161 >> 1)
    {
      v95 = sub_247C80908((v161 > 1), v162 + 1, 1, v95);
    }

    *(&v455 + 1) = v386;
    *&v456 = &off_2859D7BD8;
    v163 = __swift_allocate_boxed_opaque_existential_0(&v454);
    sub_247CF162C(v78, v163, _s16RelativePositionVMa);
    *(v95 + 16) = v162 + 1;
    v92 = v95 + 32;
    sub_247C3D044(&v454, v95 + 32 + 40 * v162);
    sub_247CF1694(v78, _s16RelativePositionVMa);
    v164 = v95 + 32;
    v89 = -*(v95 + 16);
    v165 = -1;
    while (v89 + v165 != -1)
    {
      v122 = *(v95 + 16);
      if (++v165 >= v122)
      {
        __break(1u);
        goto LABEL_155;
      }

      v78 = v164 + 40;
      sub_247C5F368(v164, &v454);
      v166 = *(&v455 + 1);
      v167 = v456;
      __swift_project_boxed_opaque_existential_1(&v454, *(&v455 + 1));
      v82 = (*(v167 + 8))(v166, v167);
      v92 = v82;
      __swift_destroy_boxed_opaque_existential_1(&v454);
      v164 = v78;
      if (v82 != 15)
      {

        sub_247CF1694(v417, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
        v115 = 0;
        v387 = 0;
        v168 = *v473;
        v94[12] = v472;
        v94[13] = v168;
        v94[14] = *&v473[2];
        *(v94 + 233) = *(&v473[3] + 1);
        v169 = v469;
        v94[8] = v468;
        v94[9] = v169;
        v170 = v470;
        v171 = v471;
        v114 = 1;
        v116 = 1;
        goto LABEL_54;
      }
    }

    sub_247CF1694(v417, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v115 = 0;
    v177 = *v473;
    v94[12] = v472;
    v94[13] = v177;
    v94[14] = *&v473[2];
    *(v94 + 233) = *(&v473[3] + 1);
    v178 = v469;
    v94[8] = v468;
    v94[9] = v178;
    v170 = v470;
    v171 = v471;
    v82 = 240;
    v114 = 1;
    v387 = v421;
    v116 = v406;
LABEL_54:
    v94[10] = v170;
    v94[11] = v171;
    v113 = v415;
LABEL_55:
    v117 = v391;
LABEL_56:
    LODWORD(v414) = v114;
    v179 = v94[13];
    *(v94 + 71) = v94[12];
    *(v94 + 87) = v179;
    *(v94 + 103) = v94[14];
    v94[7] = *(v94 + 233);
    v180 = v94[9];
    *(v94 + 7) = v94[8];
    *(v94 + 23) = v180;
    v181 = v94[11];
    *(v94 + 39) = v94[10];
    *(v94 + 55) = v181;
    v453 = v115;
    v452 = v116 & 1;
    v451 = v115;
    sub_247D1EF18();
    sub_247D1EE88();
    v400 = v182;
    v183 = *(v422 + 8);
    v422 += 8;
    v391 = v183;
    (v183)(v117, v408);
    v415 = v113;
    v417 = v82;
    if (v113)
    {
      v184 = *(v113 + 16);

      v185 = 0;
      v186 = v113 + 32;
      v187 = MEMORY[0x277D84F90];
LABEL_58:
      v188 = (v186 + 16 * v185);
      while (1)
      {
        if (v184 == v185)
        {

          v113 = *(v187 + 16);

          v94 = &v454;
          goto LABEL_69;
        }

        if (v185 >= *(v113 + 16))
        {
          break;
        }

        v189 = (v188 + 16);
        v185 = (v185 + 1);
        v190 = *v188;
        v188 += 16;
        if (v190)
        {
          v191 = *(v189 - 1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v468 = v187;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_247CE2344(0, *(v187 + 16) + 1, 1);
            v187 = v468;
          }

          v82 = *(v187 + 16);
          v193 = *(v187 + 24);
          if (v82 >= v193 >> 1)
          {
            sub_247CE2344((v193 > 1), v82 + 1, 1);
            v187 = v468;
          }

          *(v187 + 16) = v82 + 1;
          v194 = v187 + 16 * v82;
          *(v194 + 32) = 1;
          *(v194 + 40) = v191;
          v113 = v415;
          LOBYTE(v82) = v417;
          goto LABEL_58;
        }
      }

      __break(1u);
      goto LABEL_153;
    }

    v184 = 0;
LABEL_69:
    v195 = v94[13];
    *(&v448[4] + 7) = v94[12];
    *(&v448[5] + 7) = v195;
    *(&v448[6] + 7) = v94[14];
    v448[7] = *(v94 + 233);
    v196 = v94[9];
    *(v448 + 7) = v94[8];
    *(&v448[1] + 7) = v196;
    v197 = v94[11];
    *(&v448[2] + 7) = v94[10];
    v198 = v419 != 0;
    v450 = BYTE4(v418) & 1;
    v449 = v406 & 1;
    *(&v448[3] + 7) = v197;
    v447 = v115;
    v446 = v115;
    v445 = 0;
    *&v468 = v400;
    BYTE8(v468) = v420;
    BYTE9(v468) = v419 != 0;
    *&v469 = v184;
    v406 = v113;
    *(&v469 + 1) = v113;
    *&v470 = a11;
    *(&v470 + 1) = a12;
    *&v471 = a13;
    *(&v471 + 1) = a14;
    LODWORD(v472) = v418;
    BYTE4(v472) = BYTE4(v418) & 1;
    BYTE5(v472) = v82;
    *(&v472 + 1) = v421;
    LOBYTE(v473[0]) = v449;
    *(&v473[6] + 1) = v448[3];
    *(&v473[4] + 1) = v448[2];
    *(&v473[2] + 1) = v448[1];
    *(v473 + 1) = v448[0];
    *(&v473[14] + 1) = v448[7];
    *(&v473[12] + 1) = v448[6];
    *(&v473[10] + 1) = v448[5];
    *(&v473[8] + 1) = v448[4];
    *&v473[17] = v106;
    *&v473[18] = v83;
    *&v473[19] = v84;
    v473[20] = Width;
    v474 = v115;
    v475 = x;
    v476 = y;
    v477 = v402;
    v478 = v401;
    v479 = v115;
    v480 = v412;
    v481 = v413;
    v482 = v410;
    v483 = v26;
    v484 = 0;
    v199 = sub_247D1F468();
    v200 = sub_247D20058();
    v201 = os_log_type_enabled(v199, v200);
    LODWORD(v386) = v198;
    v385 = v184;
    if (v201)
    {
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      *&v435 = v203;
      *v202 = 136446210;
      v204 = sub_247CEDD64();
      v206 = sub_247CB03B4(v204, v205, &v435);

      *(v202 + 4) = v206;
      _os_log_impl(&dword_247C1F000, v199, v200, "%{public}s", v202, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v203);
      MEMORY[0x24C1B9080](v203, -1, -1);
      MEMORY[0x24C1B9080](v202, -1, -1);
    }

    v207 = v423;
    v208 = v392;
    v209 = v389;
    v210 = v399;
    v384 = CVPixelBufferGetWidth(v399);
    v383 = CVPixelBufferGetHeight(v210);
    v78 = *(v209 + 44);
    v211 = v207 + v78;
    v212 = v388;
    sub_247C2FFE0(v211, v388);
    v213 = *v409;
    v214 = (*v409)(v212, 1, v208);
    v215 = v393;
    if (v214 == 1)
    {
      v216 = sub_247CD8184(MEMORY[0x277D84F90]);
      v217 = v405;
      *v405 = v216;
      sub_247D1F188();
      v218 = v213;
      v219 = v217;
      if ((v213)(v212, 1, v208) != 1)
      {
        sub_247C27100(v212, &qword_27EE62DE0);
      }
    }

    else
    {
      v218 = v213;
      v219 = v405;
      sub_247C788CC(v212, v405);
    }

    v89 = "cropRequestMaxAspectRatio";
    v220 = *v219;
    v221 = *(v220 + 16);
    v397 = v83;
    if (!v221)
    {
      LODWORD(v83) = 1055286886;
      v95 = v78;
LABEL_82:
      v94 = v218;
      goto LABEL_83;
    }

    v222 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2EE90);
    v95 = v78;
    if ((v223 & 1) == 0)
    {
      LODWORD(v83) = 1055286886;
      goto LABEL_82;
    }

    v224 = (*(v220 + 56) + 16 * v222);
    v226 = *v224;
    v225 = v224[1];
    LODWORD(v435) = 0;

    v227 = v226;
    v228 = v398;
    v229 = sub_247CE2EA4(v227, v225);
    v398 = v228;
    v94 = v218;
    if (v229)
    {
      LODWORD(v83) = v435;
    }

    else
    {

      LODWORD(v83) = 1055286886;
    }

    v215 = v393;
LABEL_83:
    v230 = v423;
    sub_247CF1694(v405, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    sub_247C2FFE0(v230 + v95, v215);
    if ((v94)(v215, 1, v208) == 1)
    {
      v231 = sub_247CD8184(MEMORY[0x277D84F90]);
      v232 = v390;
      *v390 = v231;
      sub_247D1F188();
      if ((v94)(v215, 1, v208) != 1)
      {
        sub_247C27100(v215, &qword_27EE62DE0);
      }
    }

    else
    {
      v232 = v390;
      sub_247C788CC(v215, v390);
    }

    v92 = *v232;
    v233 = *(*v232 + 16);
    v396 = v84;
    if (v233)
    {
      v234 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2EE70);
      if (v235)
      {
        v236 = (*(v92 + 56) + 16 * v234);
        v237 = *v236;
        v92 = v236[1];
        LODWORD(v435) = 0;

        v238 = v237;
        v239 = v398;
        v240 = sub_247CE2EA4(v238, v92);
        v398 = v239;
        if (v240)
        {
          LODWORD(v84) = v435;

          goto LABEL_94;
        }
      }
    }

    LODWORD(v84) = 1058810102;
LABEL_94:
    sub_247CF1694(v232, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    if (*&v83 <= *&v84)
    {
      break;
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    v95 = sub_247C80908((v122 > 1), v89, 1, v95);
  }

  v393 = *&v106;
  v405 = *&a13;
  v106 = a14;
  a11 = v26;
  a13 = v410;
  v185 = &v427;
  v241 = v384;
  v242 = v383;
  v115 = v419;
  v243 = v414;
  if (!v419)
  {
    v243 = 1;
  }

  if ((v243 & 1) == 0)
  {
    v251 = v382 == 0.0;
    v252 = v419;
    sub_247CEE4C0(v251, v241, v242);
    v254 = v253;
    v255 = v381;
    v256 = sub_247C581F0(0xD000000000000020, 0x8000000247D32600, 1);
    v184 = v385;
    if (v256 & 1) == 0 || (v254)
    {
      [v252 boundingBox];
      v269 = v268;
      v271 = v270;
      if (v266 < 0.0)
      {
        v272 = 0.0;
      }

      else
      {
        v272 = v266;
      }

      if (v267 < 0.0)
      {
        v261 = 0.0;
      }

      else
      {
        v261 = v267;
      }

      v273 = v377;
      sub_247CF162C(v255, v377, type metadata accessor for FlowResponse);
      v274 = *(v273 + 48);
      if (*(v274 + 16) && (v275 = sub_247CCFDA8(0x5465727574706163, 0xEB00000000657079), (v276 & 1) != 0))
      {
        v277 = (*(v274 + 56) + 16 * v275);
        v278 = *v277;
        v279 = v277[1];

        v280 = sub_247CECA84(v278, v279);
        v282 = v281;

        v115 = v419;

        v283 = v282 | (v280 == 1);
      }

      else
      {

        v283 = 1;
      }

      v289 = v391;
      v264 = fmin(v269, 1.0);
      v265 = fmin(v271, 1.0);
      sub_247CF1694(v273, type metadata accessor for FlowResponse);
      v289(v407, v408);
      v262 = *&v272;
      v257 = v450;
      v260 = v283 & 1;
      v258 = v449;
      v439 = v448[4];
      v440 = v448[5];
      v441 = v448[6];
      v442 = v448[7];
      v435 = v448[0];
      v436 = v448[1];
      v437 = v448[2];
      v438 = v448[3];
      v259 = v447;
      v263 = v446;
    }

    else
    {
      (v391)(v407, v408);

      v257 = v450;
      v258 = v449;
      v439 = v448[4];
      v440 = v448[5];
      v441 = v448[6];
      v442 = v448[7];
      v435 = v448[0];
      v436 = v448[1];
      v437 = v448[2];
      v438 = v448[3];
      v259 = v447;
      v260 = 64;
      v261 = 0.0;
      v262 = 132;
      v263 = v446;
      v264 = 0.0;
      v265 = 0.0;
    }

    v285 = v445;
    v286 = v395;
    goto LABEL_121;
  }

  v244 = v417;
  if (v417 <= 0xEFu)
  {
    v284 = *&v416[OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_frameValidator];
    (v391)(v407, v408);
    swift_beginAccess();
    *(v284 + 16) = MEMORY[0x277D84F90];

    v262 = v244;
    v257 = v450;
    v258 = v449;
    v439 = v448[4];
    v440 = v448[5];
    v441 = v448[6];
    v442 = v448[7];
    v435 = v448[0];
    v436 = v448[1];
    v437 = v448[2];
    v438 = v448[3];
    v259 = v447;
    v260 = 64;
    goto LABEL_116;
  }

  v245 = v420;
  v246 = v416;
  v247 = sub_247C6225C(a19);
  v248 = v247;
  if (v245)
  {
    v115 = v419;
    if (!v419)
    {
      (v391)(v407, v408);
      v257 = v450;
      v258 = v449;
      v439 = v448[4];
      v440 = v448[5];
      v441 = v448[6];
      v442 = v448[7];
      v435 = v448[0];
      v436 = v448[1];
      v437 = v448[2];
      v438 = v448[3];
      v259 = v447;
      v260 = 64;
      v261 = 0.0;
      v262 = 129;
      goto LABEL_117;
    }

    if (v247)
    {
      v249 = v419;
      v250 = v423;
      goto LABEL_130;
    }

    v250 = v423;
    v326 = v374;
    sub_247CF162C(v423, v374, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    v416 = v115;
    if (sub_247CEC508(v326))
    {
      (v391)(v407, v408);

      v262 = 0;
      v257 = v450;
      v258 = v449;
      v439 = v448[4];
      v440 = v448[5];
      v441 = v448[6];
      v442 = v448[7];
      v435 = v448[0];
      v436 = v448[1];
      v437 = v448[2];
      v438 = v448[3];
      v259 = v447;
      v260 = -64;
LABEL_116:
      v261 = 0.0;
LABEL_117:
      v263 = v446;
      v264 = 0.0;
      v265 = 0.0;
      v285 = v445;
      v286 = v395;
      v287 = v415;
      v288 = v387;
      v184 = v385;
      goto LABEL_123;
    }

LABEL_130:
    v327 = v250 + v95;
    v328 = v372;
    sub_247C2FFE0(v327, v372);
    v329 = v392;
    if ((v94)(v328, 1, v392) == 1)
    {
      v330 = sub_247CD8184(MEMORY[0x277D84F90]);
      v331 = v373;
      *v373 = v330;
      sub_247D1F188();
      v332 = (v94)(v328, 1, v329);
      v333 = v331;
      if (v332 != 1)
      {
        sub_247C27100(v328, &qword_27EE62DE0);
      }
    }

    else
    {
      v333 = v373;
      sub_247C788CC(v328, v373);
    }

    sub_247C580D8(0xD000000000000019, 0x8000000247D2EE90);
    v335 = v334;
    sub_247CF1694(v333, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v115 = v419;
    v184 = v385;
    if (v335 <= 0.0)
    {
      goto LABEL_141;
    }

    v416 = 0xD000000000000019;
    v336 = v370;
    sub_247C2FFE0(v423 + v95, v370);
    v337 = v392;
    if ((v94)(v336, 1, v392) == 1)
    {
      v338 = sub_247CD8184(MEMORY[0x277D84F90]);
      v339 = v369;
      *v369 = v338;
      sub_247D1F188();
      if ((v94)(v336, 1, v337) != 1)
      {
        sub_247C27100(v336, &qword_27EE62DE0);
      }
    }

    else
    {
      v339 = v369;
      sub_247C788CC(v336, v369);
    }

    sub_247C580D8(v416, 0x8000000247D2EE70);
    v341 = v340;
    sub_247CF1694(v339, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v115 = v419;
    if (v341 <= 0.0 || (sub_247CEE4C0(v382 == 0.0, v241, v242), (v342 & 1) != 0))
    {
LABEL_141:
      [v115 boundingBox];
      v346 = v345;
      v348 = v347;
      if (v343 < 0.0)
      {
        v349 = 0.0;
      }

      else
      {
        v349 = v343;
      }

      if (v344 < 0.0)
      {
        v261 = 0.0;
      }

      else
      {
        v261 = v344;
      }

      v350 = v371;
      sub_247CF162C(v381, v371, type metadata accessor for FlowResponse);
      v351 = *(v350 + 48);
      if (*(v351 + 16) && (v352 = sub_247CCFDA8(0x5465727574706163, 0xEB00000000657079), (v353 & 1) != 0))
      {
        v354 = (*(v351 + 56) + 16 * v352);
        v355 = *v354;
        v356 = v354[1];

        v357 = sub_247CECA84(v355, v356);
        v359 = v358;

        v360 = v359 | (v357 == 1);
      }

      else
      {

        v360 = 1;
      }

      v287 = v415;
      v264 = fmin(v346, 1.0);
      v265 = fmin(v348, 1.0);
      sub_247CF1694(v350, type metadata accessor for FlowResponse);
      (v391)(v407, v408);
      v262 = *&v349;
      v257 = v450;
      v260 = v360 & 1;
      v258 = v449;
      v439 = v448[4];
      v440 = v448[5];
      v441 = v448[6];
      v442 = v448[7];
      v435 = v448[0];
      v436 = v448[1];
      v437 = v448[2];
      v438 = v448[3];
      v259 = v447;
      v263 = v446;
      v285 = v445;
      v286 = v395;
      goto LABEL_122;
    }

LABEL_153:
    (v391)(v407, v408);

    v257 = v450;
    v258 = v449;
    v361 = v448[5];
    v185[14] = v448[4];
    v185[15] = v361;
    v362 = v448[7];
    v185[16] = v448[6];
    v185[17] = v362;
    v363 = v448[1];
    v185[10] = v448[0];
    v185[11] = v363;
    v364 = v448[3];
    v185[12] = v448[2];
    v185[13] = v364;
    v259 = v447;
    v260 = 64;
    v261 = 0.0;
    v262 = 130;
    v263 = v446;
    v264 = 0.0;
    v265 = 0.0;
    v285 = v445;
    v286 = v395;
LABEL_121:
    v287 = v415;
LABEL_122:
    v288 = v387;
    goto LABEL_123;
  }

  v322 = *&v246[OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_frameValidator];
  swift_beginAccess();
  *(v322 + 16) = MEMORY[0x277D84F90];

  v323 = v423;
  v324 = v374;
  sub_247CF162C(v423, v374, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v325 = sub_247CEC508(v324);
  v286 = v395;
  v287 = v415;
  v288 = v387;
  v184 = v385;
  if ((v325 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(&v246[OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceAuthenticator], *&v246[OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_deviceAuthenticator + 24]);
    v248 = sub_247C77A44(v399, 0, 1, v323);
  }

  (v391)(v407, v408);
  v262 = v248 & 1;
  v257 = v450;
  v258 = v449;
  v439 = v448[4];
  v440 = v448[5];
  v441 = v448[6];
  v442 = v448[7];
  v435 = v448[0];
  v436 = v448[1];
  v437 = v448[2];
  v438 = v448[3];
  v259 = v447;
  v260 = 0x80;
  v261 = 0.0;
  v263 = v446;
  v264 = 0.0;
  v265 = 0.0;
  v285 = v445;
  v115 = v419;
LABEL_123:
  v290 = v458;
  v291 = v460[0];
  v292 = v460[1];
  v185[5] = v459;
  v185[6] = v291;
  v185[7] = v292;
  v427 = v454;
  v428 = v455;
  v429 = v456;
  v430 = v457;
  v431 = v290;
  v293 = v451;
  v294 = v452;
  v295 = v453;
  *a9 = v262;
  *(a9 + 8) = v261;
  *(a9 + 16) = v264;
  *(a9 + 24) = v265;
  *(a9 + 32) = v260;
  *(a9 + 40) = v400;
  *(a9 + 48) = v420;
  *(a9 + 49) = v386;
  *(a9 + 50) = v443;
  *(a9 + 54) = v444;
  v296 = v406;
  *(a9 + 56) = v184;
  *(a9 + 64) = v296;
  *(a9 + 72) = v394;
  *(a9 + 80) = v286;
  *(a9 + 88) = v405;
  *(a9 + 96) = v106;
  v297 = v417;
  *(a9 + 104) = v418;
  *(a9 + 108) = v257;
  *(a9 + 109) = v297;
  *(a9 + 112) = v421;
  *(a9 + 120) = v258;
  v298 = v185[16];
  *(a9 + 233) = v185[17];
  *(a9 + 217) = v298;
  v299 = v185[14];
  *(a9 + 201) = v185[15];
  *(a9 + 185) = v299;
  v300 = v185[12];
  *(a9 + 169) = v185[13];
  *(a9 + 153) = v300;
  v301 = v185[10];
  *(a9 + 137) = v185[11];
  *(a9 + 121) = v301;
  v302 = v434;
  *(a9 + 252) = *(v185 + 155);
  *(a9 + 249) = v302;
  v303 = v393;
  v305 = v396;
  v304 = v397;
  *(a9 + 256) = v393;
  *(a9 + 264) = v304;
  v306 = Width;
  *(a9 + 272) = v305;
  *(a9 + 280) = v306;
  *(a9 + 288) = v259;
  v307 = v433;
  *(a9 + 292) = *(v185 + 147);
  *(a9 + 289) = v307;
  v309 = y;
  v308 = x;
  *(a9 + 296) = x;
  *(a9 + 304) = v309;
  v311 = v401;
  v310 = v402;
  *(a9 + 312) = v402;
  *(a9 + 320) = v311;
  *(a9 + 328) = v263;
  v312 = v432;
  *(a9 + 332) = *(v185 + 139);
  *(a9 + 329) = v312;
  *&v291 = v413;
  *(a9 + 336) = v412;
  *(a9 + 344) = v291;
  *(a9 + 352) = a13;
  *(a9 + 360) = a11;
  *(a9 + 368) = v285;
  *(a9 + 376) = v297;
  v313 = v427;
  v314 = v428;
  v315 = v430;
  *(a9 + 409) = v429;
  *(a9 + 425) = v315;
  *(a9 + 377) = v313;
  *(a9 + 393) = v314;
  result = v431;
  v317 = v185[5];
  v318 = v185[7];
  *(a9 + 473) = v185[6];
  *(a9 + 489) = v318;
  *(a9 + 441) = result;
  *(a9 + 457) = v317;
  v319 = v426[0];
  *(a9 + 508) = *(v426 + 3);
  *(a9 + 505) = v319;
  *(a9 + 512) = v115;
  *(a9 + 520) = v303;
  *(a9 + 528) = v304;
  *(a9 + 536) = v305;
  *(a9 + 544) = v306;
  *(a9 + 552) = v295;
  v320 = v425[0];
  *(a9 + 556) = *(v425 + 3);
  *(a9 + 553) = v320;
  *(a9 + 560) = v287;
  *(a9 + 568) = v288;
  *(a9 + 576) = v294;
  v321 = v424[0];
  *(a9 + 580) = *(v424 + 3);
  *(a9 + 577) = v321;
  *(a9 + 584) = v308;
  *(a9 + 592) = v309;
  *(a9 + 600) = v310;
  *(a9 + 608) = v311;
  *(a9 + 616) = v293;
  return result;
}

uint64_t sub_247CF162C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CF1694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_247CF16F4@<W0>(void **a1@<X0>, _BOOL8 *a2@<X8>)
{
  result = sub_247CECAB0(*a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

unint64_t sub_247CF1728()
{
  result = qword_27EE642C0;
  if (!qword_27EE642C0)
  {
    sub_247D1F0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE642C0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RealTimeImageProcessor.CropValidationResult.Kind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for RealTimeImageProcessor.CropValidationResult.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RealTimeImageProcessor.CropValidationResult.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_247CF1860(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_247CF188C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_247CF18CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_247CF191C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_247CF1988(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_247CF19E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 617))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 512);
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

uint64_t sub_247CF1A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 616) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 617) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 617) = 0;
    }

    if (a2)
    {
      *(result + 512) = a2;
    }
  }

  return result;
}

uint64_t sub_247CF1B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_247CF1C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CosmeticInstructionsLabelView()
{
  result = qword_27EE642D8;
  if (!qword_27EE642D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247CF1DE0()
{
  sub_247CF1EC4(319, &qword_27EE642E8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_247CF1EC4(319, &qword_27EE642F0, type metadata accessor for AperturedCameraSessionOverlayView.Configuration, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247CF1EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_247CF1F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_247D1F6C8();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_247D1FEA8();
  v15[0] = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_247D1F718();
  MEMORY[0x28223BE20](v12);
  v15[-2] = a2;
  v15[-1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64300);
  sub_247CF2E80(&qword_27EE64308, &qword_27EE64300, &unk_247D28A00, sub_247CF2D10);
  sub_247D1F4B8();
  sub_247D1F6B8();
  v13 = sub_247D1F718();
  sub_247D1F708();
  sub_247D1F708();
  if (sub_247D1F708() != v13)
  {
    sub_247D1F708();
  }

  sub_247C2A7FC(&qword_27EE64370, &qword_27EE642F8);
  sub_247D1F858();
  (*(v16 + 8))(v7, v17);
  (*(v9 + 8))(v11, v8);
}

void *sub_247CF2254@<X0>(void *a1@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247CF2418(__src);
  sub_247D1F518();
  sub_247D1F998();
  sub_247D1F508();
  sub_247D1F518();
  sub_247D1F998();
  sub_247D1F588();

  memcpy(__dst, __src, 0x110uLL);
  return memcpy(a1, __dst, 0x180uLL);
}

__n128 sub_247CF2418@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_247D1F558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247CF2FE8(v5);
  v6 = sub_247D1F548();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = sub_247D1F698();
  }

  else
  {
    v8 = sub_247D1F688();
  }

  v23 = v8;
  v26 = 1;
  sub_247CF2684(v24);
  *&v25[7] = v24[0];
  *&v25[23] = v24[1];
  *&v25[39] = v24[2];
  *&v25[55] = v24[3];
  HIDWORD(v22) = v26;
  sub_247CF2FE8(v5);
  v9 = sub_247D1F548();
  v7(v5, v2);
  v10 = (v9 & 1) == 0;
  KeyPath = swift_getKeyPath();
  sub_247D1F998();
  sub_247D1F588();
  *(&v27[3] + 7) = *(&v27[10] + 8);
  *(&v27[4] + 7) = *(&v27[11] + 8);
  *(&v27[5] + 7) = *(&v27[12] + 8);
  *(&v27[6] + 7) = *(&v27[13] + 8);
  *(v27 + 7) = *(&v27[7] + 8);
  *(&v27[1] + 7) = *(&v27[8] + 8);
  *(&v27[2] + 7) = *(&v27[9] + 8);
  v12 = sub_247D1F898();
  *a1 = v23;
  *(a1 + 8) = 0;
  *(a1 + 16) = BYTE4(v22);
  v13 = *v25;
  *(a1 + 33) = *&v25[16];
  v14 = *&v25[48];
  *(a1 + 49) = *&v25[32];
  *(a1 + 65) = v14;
  v15 = *&v25[63];
  *(a1 + 17) = v13;
  *(a1 + 80) = v15;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v10;
  v16 = v27[0];
  v17 = v27[1];
  v18 = v27[2];
  *(a1 + 145) = v27[3];
  *(a1 + 129) = v18;
  *(a1 + 113) = v17;
  *(a1 + 97) = v16;
  result = v27[4];
  v20 = v27[5];
  v21 = v27[6];
  *(a1 + 208) = *(&v27[6] + 15);
  *(a1 + 216) = v12;
  *(a1 + 193) = v21;
  *(a1 + 177) = v20;
  *(a1 + 161) = result;
  return result;
}

uint64_t sub_247CF2684@<X0>(uint64_t a1@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CosmeticInstructionsLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642D0);
  sub_247D1F968();
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  sub_247C81DDC();
  v2 = sub_247D1F808();
  v4 = v3;
  v6 = v5;
  sub_247D1F768();
  sub_247D1F758();

  v7 = sub_247D1F7F8();
  v24 = v8;
  v25 = v7;
  v23 = v9;
  v26 = v10;

  sub_247CF322C(v2, v4, v6 & 1);

  sub_247D1F968();
  swift_getKeyPath();
  sub_247D1F0E8();

  v11 = sub_247D1F808();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_247D1F748();
  v15 = sub_247D1F7F8();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_247CF322C(v11, v13, v4 & 1);

  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v21;
  sub_247CF3244(v25, v24, v23 & 1);

  sub_247CF3244(v15, v17, v19 & 1);

  sub_247CF322C(v15, v17, v19 & 1);

  sub_247CF322C(v25, v24, v23 & 1);
}

double sub_247CF29B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_247CCAB34(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_247CF2C24(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = sub_247D1F728();
  *a2 = sub_247CF2C88;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_247CF2AC8()
{
  v1 = type metadata accessor for CosmeticInstructionsLabelView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_247D1F558();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE642D0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_247CF2C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CosmeticInstructionsLabelView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CF2C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CosmeticInstructionsLabelView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_247CF1F44(a1, v6, a2);
}

unint64_t sub_247CF2D10()
{
  result = qword_27EE64310;
  if (!qword_27EE64310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE64318);
    sub_247CF2D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64310);
  }

  return result;
}

unint64_t sub_247CF2D9C()
{
  result = qword_27EE64320;
  if (!qword_27EE64320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE64328);
    sub_247CF2E80(&qword_27EE64330, &qword_27EE64338, &unk_247D28A18, sub_247CF2F04);
    sub_247C2A7FC(&qword_27EE62C80, &qword_27EE62C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64320);
  }

  return result;
}

uint64_t sub_247CF2E80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_247CF2F04()
{
  result = qword_27EE64340;
  if (!qword_27EE64340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE64348);
    sub_247C2A7FC(&qword_27EE64350, &qword_27EE64358);
    sub_247C2A7FC(&qword_27EE64360, &qword_27EE64368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64340);
  }

  return result;
}

uint64_t sub_247CF2FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_247D1F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CD8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_247CF3254(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_247D1F558();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_247D20048();
    v13 = sub_247D1F6F8();
    sub_247D1F458();

    sub_247D1F638();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_247CF31D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_247D1F5F8();
  *a1 = result;
  return result;
}

uint64_t sub_247CF322C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_247CF3244(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_247CF3254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_247CF32C8()
{
  result = qword_27EE64378;
  if (!qword_27EE64378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE64380);
    sub_247C2A7FC(&qword_27EE64388, &qword_27EE64390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64378);
  }

  return result;
}

unint64_t sub_247CF3394()
{
  result = qword_27EE64398;
  if (!qword_27EE64398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE643A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64398);
  }

  return result;
}

unint64_t sub_247CF340C()
{
  result = qword_27EE643A8;
  if (!qword_27EE643A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE643A8);
  }

  return result;
}

uint64_t sub_247CF3470(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF68B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_247CF34CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_247CF34FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_247CF351C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF6904();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void sub_247CF356C(uint64_t a1@<X8>)
{
  sub_247CF774C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_247CF35B0(uint64_t a1@<X8>)
{
  sub_247CF774C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_247CF35E8()
{
  sub_247D20618();
  sub_247D1FB58();
  return sub_247D20658();
}

uint64_t sub_247CF3654(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF6958();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CF36A0()
{
  sub_247D20618();
  sub_247D1FB58();
  return sub_247D20658();
}

uint64_t sub_247CF3708()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D20);
  __swift_project_value_buffer(v0, qword_27EE72D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "files";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "current_iteration";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF3924()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_247D1F298();
          break;
        case 2:
          type metadata accessor for FileStatusRequest.FileInfo(0);
          sub_247CF5ECC(&qword_27EE643F0, type metadata accessor for FileStatusRequest.FileInfo);
          sub_247D1F2D8();
          break;
        case 1:
          sub_247D1F2C8();
          break;
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CF3A40()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    if (*(*(v0 + 16) + 16))
    {
      type metadata accessor for FileStatusRequest.FileInfo(0);
      sub_247CF5ECC(&qword_27EE643F0, type metadata accessor for FileStatusRequest.FileInfo);
      result = sub_247D1F3D8();
      if (v1)
      {
        return result;
      }

      if (!*(v0 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (!*(v0 + 24))
    {
LABEL_11:
      type metadata accessor for FileStatusRequest(0);
      return sub_247D1F178();
    }

    result = sub_247D1F398();
    if (v1)
    {
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_247CF3B84@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  return sub_247D1F188();
}

uint64_t sub_247CF3BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_247CF3C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_247CF3D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF5ECC(&qword_27EE64420, type metadata accessor for FileStatusRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF3DB4(uint64_t a1)
{
  v2 = sub_247CF5ECC(&qword_27EE63678, type metadata accessor for FileStatusRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF3E20()
{
  sub_247CF5ECC(&qword_27EE63678, type metadata accessor for FileStatusRequest);

  return sub_247D1F338();
}

uint64_t sub_247CF3EA0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D38);
  __swift_project_value_buffer(v0, qword_27EE72D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_247D28BA0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "file_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "smudge_check";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "color";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "digest";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 6;
  *v14 = "required_validations";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247CF4138()
{
  while (1)
  {
    result = sub_247D1F238();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_247D1F278();
      }
    }

    else if (result == 3 || result == 4)
    {
LABEL_2:
      sub_247D1F2C8();
    }

    else if (result == 6)
    {
      sub_247D1F2B8();
    }
  }
}

uint64_t sub_247CF4210()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = sub_247D1F378(), !v1))
    {
      v5 = *(v0 + 32);
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = sub_247D1F3C8(), !v1))
      {
        v7 = *(v0 + 48);
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v8 || (result = sub_247D1F3C8(), !v1))
        {
          if (!*(*(v0 + 56) + 16) || (result = sub_247D1F3B8(), !v1))
          {
            type metadata accessor for FileStatusRequest.FileInfo(0);
            return sub_247D1F178();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247CF4350@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = MEMORY[0x277D84F90];
  return sub_247D1F188();
}

uint64_t sub_247CF43B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_247CF4424(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_247CF44F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF5ECC(&qword_27EE64438, type metadata accessor for FileStatusRequest.FileInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF4594(uint64_t a1)
{
  v2 = sub_247CF5ECC(&qword_27EE643F0, type metadata accessor for FileStatusRequest.FileInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF4604()
{
  sub_247CF5ECC(&qword_27EE643F0, type metadata accessor for FileStatusRequest.FileInfo);

  return sub_247D1F338();
}

uint64_t sub_247CF4688()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D50);
  __swift_project_value_buffer(v0, qword_27EE72D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assessmentResult";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "files";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "failed_validation_ids";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF48D8()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for FileStatusResponse.FileResult(0);
          sub_247CF5ECC(&qword_27EE643B8, type metadata accessor for FileStatusResponse.FileResult);
          sub_247D1F2D8();
        }

        else if (result == 4)
        {
          sub_247D1F2B8();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_247CF68B0();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v3 = v0;
          sub_247CF6904();
        }

        v0 = v3;
        sub_247D1F288();
      }

LABEL_5:
      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CF4A48()
{
  v2 = v1;
  if (*v0)
  {
    sub_247CF68B0();
    result = sub_247D1F388();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[2])
  {
    sub_247CF6904();
    result = sub_247D1F388();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[4] + 16))
  {
    type metadata accessor for FileStatusResponse.FileResult(0);
    sub_247CF5ECC(&qword_27EE643B8, type metadata accessor for FileStatusResponse.FileResult);
    v4 = v2;
    result = sub_247D1F3D8();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[5] + 16) || (result = sub_247D1F3B8(), !v4))
  {
    type metadata accessor for FileStatusResponse(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247CF4BF0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 32) = MEMORY[0x277D84F90];
  *(a1 + 40) = v1;
  return sub_247D1F188();
}

uint64_t sub_247CF4CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF5ECC(&qword_27EE64440, type metadata accessor for FileStatusResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF4D40(uint64_t a1)
{
  v2 = sub_247CF5ECC(&qword_27EE63680, type metadata accessor for FileStatusResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF4DAC()
{
  sub_247CF5ECC(&qword_27EE63680, type metadata accessor for FileStatusResponse);

  return sub_247D1F338();
}

uint64_t sub_247CF4E2C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D68);
  __swift_project_value_buffer(v0, qword_27EE72D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMPLETED";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOT_COMPLETED";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TIMEOUT";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF5060()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D80);
  __swift_project_value_buffer(v0, qword_27EE72D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COSMETIC_PASS";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "COSMETIC_FAIL";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF5290()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72D98);
  __swift_project_value_buffer(v0, qword_27EE72D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "file_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "color";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "smudge_check";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "result";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF54F0()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_247D1F278();
        }

        else if (result == 4)
        {
          sub_247CF6958();
          sub_247D1F288();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_247D1F2C8();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CF55E4()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    v5 = *(v0 + 24);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_247D1F3C8(), !v1))
    {
      if (*(v0 + 32) != 1 || (result = sub_247D1F378(), !v1))
      {
        if (!*(v0 + 40) || (sub_247CF6958(), result = sub_247D1F388(), !v1))
        {
          type metadata accessor for FileStatusResponse.FileResult(0);
          return sub_247D1F178();
        }
      }
    }
  }

  return result;
}

uint64_t sub_247CF5720@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return sub_247D1F188();
}

uint64_t sub_247CF577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_247CF57F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_247CF5898(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF5ECC(&qword_27EE64458, type metadata accessor for FileStatusResponse.FileResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF5938(uint64_t a1)
{
  v2 = sub_247CF5ECC(&qword_27EE643B8, type metadata accessor for FileStatusResponse.FileResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF59A4()
{
  sub_247D20618();
  sub_247D1FB58();
  return sub_247D20658();
}

uint64_t sub_247CF59FC()
{
  sub_247CF5ECC(&qword_27EE643B8, type metadata accessor for FileStatusResponse.FileResult);

  return sub_247D1F338();
}

uint64_t sub_247CF5A78()
{
  sub_247D20618();
  sub_247D1FB58();
  return sub_247D20658();
}

uint64_t sub_247CF5AD0()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72DB0);
  __swift_project_value_buffer(v0, qword_27EE72DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SMUDGE_PASS";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SMUDGE_DETECTED";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "COSMETIC_PASS";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "COSMETIC_FAIL";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF5D80@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_247D1F428();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_247CF5ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_247CF6400(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_247D13FF0(a1[4], a2[4]) & 1) != 0 && (sub_247D142F0(a1[5], a2[5]))
  {
    type metadata accessor for FileStatusResponse(0);
    sub_247D1F198();
    sub_247CF5ECC(&qword_27EE63C00, MEMORY[0x277D216C8]);
    return sub_247D1FB78() & 1;
  }

  return 0;
}

uint64_t sub_247CF654C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_247D20538() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (!v7)
      {
        goto LABEL_20;
      }
    }

    else if (v8 == 2)
    {
      if (v7 == 2)
      {
        goto LABEL_20;
      }
    }

    else if (v8 == 3)
    {
      if (v7 == 3)
      {
        goto LABEL_20;
      }
    }

    else if (v7 == 4)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v7 != v8)
  {
    return 0;
  }

LABEL_20:
  type metadata accessor for FileStatusResponse.FileResult(0);
  sub_247D1F198();
  sub_247CF5ECC(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247CF66AC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_247D20538() & 1) == 0 || (sub_247D14380(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for FileStatusRequest(0);
  sub_247D1F198();
  sub_247CF5ECC(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247CF678C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_247D20538() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  if ((sub_247D142F0(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FileStatusRequest.FileInfo(0);
  sub_247D1F198();
  sub_247CF5ECC(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

unint64_t sub_247CF68B0()
{
  result = qword_27EE64448;
  if (!qword_27EE64448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64448);
  }

  return result;
}

unint64_t sub_247CF6904()
{
  result = qword_27EE64450;
  if (!qword_27EE64450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64450);
  }

  return result;
}

unint64_t sub_247CF6958()
{
  result = qword_27EE64460;
  if (!qword_27EE64460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64460);
  }

  return result;
}

uint64_t sub_247CF69C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF6A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_247CF6B24()
{
  sub_247CF708C(319, &qword_27EE64478, type metadata accessor for FileStatusRequest.FileInfo);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_247CF6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF6CB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_247CF6D54()
{
  sub_247CF6DF4();
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247CF6DF4()
{
  if (!qword_27EE64490)
  {
    v0 = sub_247D1FE18();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE64490);
    }
  }
}

uint64_t sub_247CF6E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF6F18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_247CF6FBC()
{
  sub_247CF708C(319, &qword_27EE644A8, type metadata accessor for FileStatusResponse.FileResult);
  if (v0 <= 0x3F)
  {
    sub_247CF6DF4();
    if (v1 <= 0x3F)
    {
      sub_247D1F198();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_247CF708C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_247D1FE18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TestStatusResponse.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TestStatusResponse.Status(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_247CF7140(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247CF715C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_247CF71A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF7260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CF7304()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_247CF73A8()
{
  result = qword_27EE644C0;
  if (!qword_27EE644C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE644C0);
  }

  return result;
}

unint64_t sub_247CF7430()
{
  result = qword_27EE644D8;
  if (!qword_27EE644D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE644D8);
  }

  return result;
}

unint64_t sub_247CF74B8()
{
  result = qword_27EE644F0;
  if (!qword_27EE644F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE644F0);
  }

  return result;
}

unint64_t sub_247CF7540()
{
  result = qword_27EE64508;
  if (!qword_27EE64508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64508);
  }

  return result;
}

unint64_t sub_247CF7598()
{
  result = qword_27EE64510;
  if (!qword_27EE64510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64510);
  }

  return result;
}

unint64_t sub_247CF75F0()
{
  result = qword_27EE64518;
  if (!qword_27EE64518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64518);
  }

  return result;
}

unint64_t sub_247CF7648()
{
  result = qword_27EE64520;
  if (!qword_27EE64520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64520);
  }

  return result;
}

unint64_t sub_247CF76A0()
{
  result = qword_27EE64528;
  if (!qword_27EE64528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64528);
  }

  return result;
}

unint64_t sub_247CF76F8()
{
  result = qword_27EE64530;
  if (!qword_27EE64530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64530);
  }

  return result;
}

uint64_t sub_247CF77A8()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72DC8);
  __swift_project_value_buffer(v0, qword_27EE72DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D23870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "session_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF7974()
{
  while (1)
  {
    result = sub_247D1F238();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 4)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247CF79F4()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_247D1F3C8(), !v1))
    {
      type metadata accessor for HostInfo();
      return sub_247D1F178();
    }
  }

  return result;
}

uint64_t sub_247CF7AB8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return sub_247D1F188();
}

uint64_t sub_247CF7AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_247CF7B70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_247CF7C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF808C(&qword_27EE64558, type metadata accessor for HostInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF7CB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE625F8 != -1)
  {
    swift_once();
  }

  v2 = sub_247D1F428();
  v3 = __swift_project_value_buffer(v2, qword_27EE72DC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_247CF7D5C(uint64_t a1)
{
  v2 = sub_247CF808C(&qword_27EE64540, type metadata accessor for HostInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF7DC8()
{
  sub_247CF808C(&qword_27EE64540, type metadata accessor for HostInfo);

  return sub_247D1F338();
}

uint64_t sub_247CF7E44(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  sub_247D1F198();
  sub_247CF808C(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

uint64_t type metadata accessor for HostInfo()
{
  result = qword_27EE64560;
  if (!qword_27EE64560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CF808C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247CF80E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF81A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CF824C()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_247CF82C8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_247D29A98[a1];
  }

  if (a4)
  {
    a3 = qword_247D29A98[a3];
  }

  return a1 == a3;
}

uint64_t sub_247CF82F8(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_247D29A98[result];
  }

  return result;
}

uint64_t sub_247CF830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247CF9B2C(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_247CF835C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247CF9B2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_247CF8394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247CF82F8(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_247CF83C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF9614();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CF842C()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72DE0);
  __swift_project_value_buffer(v0, qword_27EE72DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_247D29790;
  v4 = v76 + v3;
  v5 = v76 + v3 + v1[14];
  *(v76 + v3) = 0;
  *v5 = "UNKNOWN_CODE";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v76 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNSUPPORTED";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v76 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CANCELED";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v76 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HAVING_TROUBLE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v76 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ZERO_TRADE_IN_VALUE";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v76 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TRADE_IN_DEVICE_CANCELED";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v76 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 401;
  *v19 = "UNAUTHORIZED";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v76 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 1001;
  *v21 = "TEST_SUITE_UNAVAILABLE";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v76 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 1002;
  *v22 = "CONNECTION_TIMED_OUT";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v76 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 1003;
  *v24 = "SESSION_ID_NULL_OR_EMPTY";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v76 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1004;
  *v26 = "DS_ID_NULL_OR_0";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v76 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 1005;
  *v28 = "LOCALE_NULL_OR_EMPTY";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v8();
  v29 = (v76 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 1006;
  *v30 = "SERIAL_NUMBER_NULL_OR_EMPTY";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v8();
  v31 = (v76 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 1007;
  *v32 = "REFERENCE_NUMBER_NULL_OR_0";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v8();
  v33 = (v76 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 1008;
  *v34 = "SUITE_RESULTS_KEY_NULL_OR_0";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v8();
  v35 = (v76 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 1009;
  *v36 = "UUT_COMMAND_NULL_OR_EMPTY";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v76 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 1010;
  *v37 = "SUITE_ID_NULL_OR_EMPTY";
  *(v37 + 8) = 22;
  *(v37 + 16) = 2;
  v8();
  v38 = (v76 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 1011;
  *v39 = "NUMBER_OF_TOKENS_NULL_OR_0";
  *(v39 + 1) = 26;
  v39[16] = 2;
  v8();
  v40 = (v76 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 1012;
  *v41 = "NUMBER_OF_TOKENS_NOT_IN_RANGE";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  v42 = (v76 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 1013;
  *v43 = "PLATFORM_RESPONSE_MISSING_PRODUCT_FIELD";
  *(v43 + 1) = 39;
  v43[16] = 2;
  v8();
  v44 = (v76 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 1014;
  *v45 = "MULTIPLE_PRODUCTS_PRESENT_IN_PLATFORM_RESPONSE";
  *(v45 + 1) = 46;
  v45[16] = 2;
  v8();
  v46 = (v76 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 1015;
  *v47 = "PLATFORM_RESPONSE_MISSING_SCRIPTS_FIELD";
  *(v47 + 1) = 39;
  v47[16] = 2;
  v8();
  v48 = (v76 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 1016;
  *v49 = "PLATFORM_RESPONSE_NULL_OR_EMPTY";
  *(v49 + 1) = 31;
  v49[16] = 2;
  v8();
  v50 = (v76 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 1017;
  *v51 = "PLATFORM_RESPONSE_MISSING_SESSIONID";
  *(v51 + 1) = 35;
  v51[16] = 2;
  v8();
  v52 = (v76 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 1018;
  *v53 = "PLATFORM_RESPONSE_FOR_SESSION_FIELD";
  *(v53 + 1) = 35;
  v53[16] = 2;
  v8();
  v54 = (v76 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 1019;
  *v55 = "PLATFORM_RESPONSE_MISSING_SESSION_DETAILS";
  *(v55 + 1) = 41;
  v55[16] = 2;
  v8();
  v56 = (v76 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 1020;
  *v57 = "PLATFORM_RESPONSE_MISSING_SUITE_RESULT_KEY";
  *(v57 + 1) = 42;
  v57[16] = 2;
  v8();
  v58 = (v76 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 1021;
  *v59 = "BTS_RESPONSE_NULL_OR_EMPTY";
  *(v59 + 1) = 26;
  v59[16] = 2;
  v8();
  v60 = (v76 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 1022;
  *v61 = "TRADE_LOCATION_NULL_OR_EMPTY";
  *(v61 + 1) = 28;
  v61[16] = 2;
  v8();
  v62 = (v76 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 1023;
  *v63 = "PLATFORM_RESPONSE_PROGRESS_PERCENTAGE_LIST_NULL";
  *(v63 + 1) = 47;
  v63[16] = 2;
  v8();
  v64 = (v76 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 1024;
  *v65 = "FRONT_MODEL_NULL";
  *(v65 + 1) = 16;
  v65[16] = 2;
  v8();
  v66 = (v76 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 1025;
  *v67 = "BACK_MODEL_NULL";
  *(v67 + 1) = 15;
  v67[16] = 2;
  v8();
  v68 = v76 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 1026;
  *v68 = "IMAGE_QUALITY_MODEL_NULL";
  *(v68 + 8) = 24;
  *(v68 + 16) = 2;
  v8();
  v69 = (v76 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 1027;
  *v70 = "TRADE_IN_TYPE_NULL";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v8();
  v71 = (v76 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 1028;
  *v72 = "SESSION_ID_IS_OF_WRONG_PATTERN";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v8();
  v73 = (v76 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 1029;
  *v74 = "MAXIMUM_RETRY_LIMIT_REACHED";
  *(v74 + 1) = 27;
  v74[16] = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247CF8E80()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72DF8);
  __swift_project_value_buffer(v0, qword_27EE72DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error_code";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error_message";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "transaction_id";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CF9094()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_247D1F2C8();
      }

      else if (result == 1)
      {
        sub_247CF9614();
        sub_247D1F288();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CF9160()
{
  if (sub_247CF82C8(*v0, *(v0 + 8), 0, 1) || (sub_247CF9614(), result = sub_247D1F388(), !v1))
  {
    v3 = *(v0 + 24);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_247D1F3C8(), !v1))
    {
      v5 = *(v0 + 40);
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = sub_247D1F3C8(), !v1))
      {
        type metadata accessor for TulaError();
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247CF9298@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  return sub_247D1F188();
}

uint64_t sub_247CF931C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CF9760(&qword_27EE64588, type metadata accessor for TulaError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CF93BC(uint64_t a1)
{
  v2 = sub_247CF9760(&qword_27EE63D58, type metadata accessor for TulaError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CF9428()
{
  sub_247CF9760(&qword_27EE63D58, type metadata accessor for TulaError);

  return sub_247D1F338();
}

uint64_t type metadata accessor for TulaError()
{
  result = qword_27EE64598;
  if (!qword_27EE64598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247CF9614()
{
  result = qword_27EE64590;
  if (!qword_27EE64590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64590);
  }

  return result;
}

uint64_t sub_247CF9668(uint64_t a1, uint64_t a2)
{
  if (!sub_247CF82C8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_247D20538() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TulaError();
  sub_247D1F198();
  sub_247CF9760(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247CF9760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247CF97CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CF988C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CF9930()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_247CF99C0()
{
  result = qword_27EE645A8;
  if (!qword_27EE645A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE645A8);
  }

  return result;
}

unint64_t sub_247CF9A18()
{
  result = qword_27EE645B0;
  if (!qword_27EE645B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE645B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE645B0);
  }

  return result;
}

unint64_t sub_247CF9A80()
{
  result = qword_27EE645C0;
  if (!qword_27EE645C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE645C0);
  }

  return result;
}

unint64_t sub_247CF9AD8()
{
  result = qword_27EE645C8;
  if (!qword_27EE645C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE645C8);
  }

  return result;
}

uint64_t sub_247CF9B2C(uint64_t result)
{
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result == 1)
      {
        return 2;
      }
    }

    else if (result == 2)
    {
      return 3;
    }

    else if (result == 3)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 1001:
        result = 7;
        break;
      case 1002:
        result = 8;
        break;
      case 1003:
        result = 9;
        break;
      case 1004:
        result = 10;
        break;
      case 1005:
        result = 11;
        break;
      case 1006:
        result = 12;
        break;
      case 1007:
        result = 13;
        break;
      case 1008:
        result = 14;
        break;
      case 1009:
        result = 15;
        break;
      case 1010:
        result = 16;
        break;
      case 1011:
        result = 17;
        break;
      case 1012:
        result = 18;
        break;
      case 1013:
        result = 24;
        break;
      case 1014:
        result = 25;
        break;
      case 1015:
        result = 26;
        break;
      case 1016:
        result = 27;
        break;
      case 1017:
        result = 28;
        break;
      case 1018:
        result = 29;
        break;
      case 1019:
        result = 30;
        break;
      case 1020:
        result = 31;
        break;
      case 1021:
        result = 32;
        break;
      case 1022:
        result = 19;
        break;
      case 1023:
        result = 33;
        break;
      case 1024:
        result = 20;
        break;
      case 1025:
        result = 21;
        break;
      case 1026:
        result = 22;
        break;
      case 1027:
        result = 23;
        break;
      case 1028:
        result = 34;
        break;
      case 1029:
        result = 35;
        break;
      default:
        if (result == 5)
        {
          result = 6;
        }

        else if (result == 401)
        {
          result = 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_247CF9E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_247CF9FA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247CFA0F8()
{
  sub_247D1F198();
  if (v0 <= 0x3F)
  {
    sub_247CFA1A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247CFA1A0()
{
  if (!qword_27EE645E0)
  {
    type metadata accessor for SessionMetadata(255);
    v0 = sub_247D20208();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE645E0);
    }
  }
}

uint64_t sub_247CFA23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CFA2FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CFA3A0()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247CFA42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CFC6D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_247CFA47C()
{
  result = qword_27EE645F8;
  if (!qword_27EE645F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE645F8);
  }

  return result;
}

unint64_t sub_247CFA4D4()
{
  result = qword_27EE64600;
  if (!qword_27EE64600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE64608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64600);
  }

  return result;
}

unint64_t sub_247CFA53C()
{
  result = qword_27EE64610;
  if (!qword_27EE64610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64610);
  }

  return result;
}

unint64_t sub_247CFA594()
{
  result = qword_27EE64618;
  if (!qword_27EE64618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64618);
  }

  return result;
}

uint64_t sub_247CFA5E8()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E10);
  __swift_project_value_buffer(v0, qword_27EE72E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serial_number";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "diagnostic_event_id";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CFA7FC()
{
  while (1)
  {
    result = sub_247D1F238();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 4 || result == 2 || result == 1)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247CFA88C()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_247D1F3C8(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_247D1F3C8(), !v1))
      {
        type metadata accessor for TestStatusRequest(0);
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247CFA980@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return sub_247D1F188();
}

uint64_t sub_247CFA9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CFBE94(&qword_27EE64670, type metadata accessor for TestStatusRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CFAA9C(uint64_t a1)
{
  v2 = sub_247CFBE94(&qword_27EE638A8, type metadata accessor for TestStatusRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CFAB08()
{
  sub_247CFBE94(&qword_27EE638A8, type metadata accessor for TestStatusRequest);

  return sub_247D1F338();
}

uint64_t sub_247CFAB88()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E28);
  __swift_project_value_buffer(v0, qword_27EE72E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D28BA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_connected";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "test_completed";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "session_metadata";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "diagnostic_event_id";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 7;
  *v15 = "status";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CFAE28()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1 || result == 3)
        {
          sub_247D1F278();
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_247CFAF40();
            break;
          case 7:
            sub_247CFC6D0();
            sub_247D1F288();
            break;
          case 8:
            sub_247D1F2C8();
            break;
        }
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CFAF40()
{
  type metadata accessor for TestStatusResponse(0);
  type metadata accessor for SessionMetadata(0);
  sub_247CFBE94(&qword_27EE64628, type metadata accessor for SessionMetadata);
  return sub_247D1F2E8();
}

uint64_t sub_247CFAFF4()
{
  if (*v0 != 1 || (result = sub_247D1F378(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = sub_247D1F378(), !v1))
    {
      result = sub_247CFB144(v0);
      if (!v1)
      {
        if (*(v0 + 24))
        {
          sub_247CFC6D0();
          sub_247D1F388();
        }

        v3 = *(v0 + 16);
        v4 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
        }

        if (v4)
        {
          sub_247D1F3C8();
        }

        type metadata accessor for TestStatusResponse(0);
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247CFB144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for SessionMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TestStatusResponse(0);
  sub_247CB7834(a1 + *(v9 + 36), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_247C27100(v4, &qword_27EE638A0);
  }

  sub_247CFC724(v4, v8);
  sub_247CFBE94(&qword_27EE64628, type metadata accessor for SessionMetadata);
  sub_247D1F3E8();
  return sub_247CFC788(v8);
}

uint64_t sub_247CFB324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  sub_247D1F188();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for SessionMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_247CFB408(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CFBE94(&qword_27EE64678, type metadata accessor for TestStatusResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CFB4A8(uint64_t a1)
{
  v2 = sub_247CFBE94(&qword_27EE638B0, type metadata accessor for TestStatusResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CFB514()
{
  sub_247CFBE94(&qword_27EE638B0, type metadata accessor for TestStatusResponse);

  return sub_247D1F338();
}

uint64_t sub_247CFB594()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E40);
  __swift_project_value_buffer(v0, qword_27EE72E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACTIVE";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXPIRED";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ARCHIVED";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CFB7C8()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E58);
  __swift_project_value_buffer(v0, qword_27EE72E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_247D23880;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "diag_event_end_result";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_247D1F3F8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_247D1F408();
}

uint64_t sub_247CFB934()
{
  while (1)
  {
    result = sub_247D1F238();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247CFB9A4()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    type metadata accessor for SessionMetadata(0);
    return sub_247D1F178();
  }

  return result;
}

uint64_t sub_247CFBA38@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return sub_247D1F188();
}

uint64_t sub_247CFBA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_247CFBAF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_247CFBBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247CFBE94(&qword_27EE64690, type metadata accessor for SessionMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CFBC60(uint64_t a1)
{
  v2 = sub_247CFBE94(&qword_27EE64628, type metadata accessor for SessionMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CFBCCC()
{
  sub_247CFBE94(&qword_27EE64628, type metadata accessor for SessionMetadata);

  return sub_247D1F338();
}

uint64_t sub_247CFBD48(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  sub_247D1F198();
  sub_247CFBE94(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

uint64_t sub_247CFBE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247CFC1CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for SessionMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64688);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_10;
  }

  v15 = v12;
  v16 = *(type metadata accessor for TestStatusResponse(0) + 36);
  v17 = *(v15 + 48);
  sub_247CB7834(&a1[v16], v14);
  sub_247CB7834(&a2[v16], &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_247CB7834(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_247CFC724(&v14[v17], v7);
      v22 = *v10 == *v7 && v10[1] == v7[1];
      if (v22 || (sub_247D20538() & 1) != 0)
      {
        sub_247D1F198();
        sub_247CFBE94(&qword_27EE63C00, MEMORY[0x277D216C8]);
        v23 = sub_247D1FB78();
        sub_247CFC788(v7);
        sub_247CFC788(v10);
        sub_247C27100(v14, &qword_27EE638A0);
        if ((v23 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

      sub_247CFC788(v7);
      sub_247CFC788(v10);
      v19 = &qword_27EE638A0;
LABEL_9:
      sub_247C27100(v14, v19);
      goto LABEL_10;
    }

    sub_247CFC788(v10);
LABEL_8:
    v19 = &qword_27EE64688;
    goto LABEL_9;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_247C27100(v14, &qword_27EE638A0);
LABEL_18:
  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (sub_247D20538() & 1) != 0)
  {
    v24 = *(a1 + 3);
    v25 = *(a2 + 3);
    if (a2[32] == 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          if (v24 == 1)
          {
            goto LABEL_32;
          }
        }

        else if (v24 == 2)
        {
LABEL_32:
          sub_247D1F198();
          sub_247CFBE94(&qword_27EE63C00, MEMORY[0x277D216C8]);
          v20 = sub_247D1FB78();
          return v20 & 1;
        }
      }

      else if (!v24)
      {
        goto LABEL_32;
      }
    }

    else if (v24 == v25)
    {
      goto LABEL_32;
    }
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_247CFC5CC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_247D20538() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_247D20538() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TestStatusRequest(0);
  sub_247D1F198();
  sub_247CFBE94(&qword_27EE63C00, MEMORY[0x277D216C8]);
  return sub_247D1FB78() & 1;
}

unint64_t sub_247CFC6D0()
{
  result = qword_27EE64680;
  if (!qword_27EE64680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64680);
  }

  return result;
}

uint64_t sub_247CFC724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CFC788(uint64_t a1)
{
  v2 = type metadata accessor for SessionMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CFC7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CFC8B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CFC95C()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247CFC9E4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v1 + *(v6 + 36), v5, &qword_27EE63290);
  v7 = type metadata accessor for FileUploadToken(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_247D19DF4(v5, a1, type metadata accessor for FileUploadToken);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  sub_247D1F188();
  v9 = *(v7 + 36);
  v10 = type metadata accessor for Metadata(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_247C27100(v5, &qword_27EE63290);
  }

  return result;
}

uint64_t sub_247CFCB94@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FlowResponse.Step.Information(0);
  sub_247C2BD10(v1 + *(v6 + 28), v5, &qword_27EE62F68);
  v7 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_247D19DF4(v5, a1, type metadata accessor for FlowResponse.Step.Masthead);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_247D1F188();
  v9 = *(v7 + 40);
  v10 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_247C27100(v5, &qword_27EE62F68);
  }

  return result;
}

uint64_t sub_247CFCD50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FlowResponse.Step.Loading(0);
  sub_247C2BD10(v1 + *(v6 + 24), v5, &qword_27EE62F68);
  v7 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_247D19DF4(v5, a1, type metadata accessor for FlowResponse.Step.Masthead);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_247D1F188();
  v9 = *(v7 + 40);
  v10 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_247C27100(v5, &qword_27EE62F68);
  }

  return result;
}

BOOL sub_247CFCF0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v0 + *(v4 + 36), v3, &qword_27EE63290);
  v5 = type metadata accessor for FileUploadToken(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_247C27100(v3, &qword_27EE63290);
  return v6;
}

uint64_t sub_247CFD000()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_247CFD074(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A774();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD100(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A720();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD180(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A7C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A81C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD268(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A870();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A8C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_247CFD314(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_247D2CB10[result];
  }

  return result;
}

uint64_t sub_247CFD340@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_247CFD3AC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_247CFD3E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247CFD314(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_247CFD418(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1A918();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_247CFD464(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = sub_247CFD314(*a1, *(a1 + 8));
  return v4 == sub_247CFD314(v2, v3);
}

uint64_t sub_247CFD4BC()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E70);
  __swift_project_value_buffer(v0, qword_27EE72E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "intent";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CFD6D8()
{
  while (1)
  {
    result = sub_247D1F238();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_247D1F2C8();
    }
  }

  return result;
}

uint64_t sub_247CFD768()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_247D1F3C8(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_247D1F3C8(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_247D1F3C8(), !v1))
      {
        type metadata accessor for FlowRequest(0);
        return sub_247D1F178();
      }
    }
  }

  return result;
}

uint64_t sub_247CFD8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64C40, type metadata accessor for FlowRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CFD954(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE634A8, type metadata accessor for FlowRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CFD9C0()
{
  sub_247D12004(&qword_27EE634A8, type metadata accessor for FlowRequest);

  return sub_247D1F338();
}

uint64_t sub_247CFDA40()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72E88);
  __swift_project_value_buffer(v0, qword_27EE72E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D246C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_247D1F3F8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "diagnostic_event_id";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "steps";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "content";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "configurations";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "product";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_247D1F408();
}

uint64_t sub_247CFDD18()
{
  result = sub_247D1F238();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          sub_247D1F168();
          sub_247D1F228();
        }

        else if (result == 6)
        {
          sub_247CFDEC8();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_247D1F2C8();
      }

      else if (result == 3)
      {
        type metadata accessor for FlowResponse.Step(0);
        sub_247D12004(&qword_27EE64BE8, type metadata accessor for FlowResponse.Step);
        sub_247D1F2D8();
      }

      result = sub_247D1F238();
    }
  }

  return result;
}

uint64_t sub_247CFDEC8()
{
  type metadata accessor for FlowResponse(0);
  type metadata accessor for FlowResponse.Product(0);
  sub_247D12004(&qword_27EE64A08, type metadata accessor for FlowResponse.Product);
  return sub_247D1F2E8();
}

uint64_t sub_247CFDF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_247D1F3C8(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_247D1F3C8(), !v4))
    {
      v13 = v4;
      if (*(v3[4] + 16))
      {
        type metadata accessor for FlowResponse.Step(0);
        sub_247D12004(&qword_27EE64BE8, type metadata accessor for FlowResponse.Step);
        result = sub_247D1F3D8();
        if (v4)
        {
          return result;
        }

        v13 = 0;
      }

      if (*(v3[5] + 16))
      {
        sub_247D1F168();
        v14 = v13;
        result = sub_247D1F358();
        if (v13)
        {
          return result;
        }
      }

      else
      {
        v14 = v13;
      }

      if (!*(v3[6] + 16) || (sub_247D1F168(), result = sub_247D1F358(), !v14))
      {
        result = sub_247CFE180(v3, a1, a2, a3);
        if (!v14)
        {
          type metadata accessor for FlowResponse(0);
          return sub_247D1F178();
        }
      }
    }
  }

  return result;
}

uint64_t sub_247CFE180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FlowResponse.Product(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse(0);
  sub_247C2BD10(a1 + *(v12 + 40), v7, &qword_27EE637C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_247C27100(v7, &qword_27EE637C0);
  }

  sub_247D19DF4(v7, v11, type metadata accessor for FlowResponse.Product);
  sub_247D12004(&qword_27EE64A08, type metadata accessor for FlowResponse.Product);
  sub_247D1F3E8();
  return sub_247D19D94(v11, type metadata accessor for FlowResponse.Product);
}

uint64_t sub_247CFE39C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = sub_247CD8184(v4);
  *(a2 + 6) = sub_247CD8184(v4);
  sub_247D1F188();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for FlowResponse.Product(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_247CFE4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D12004(&qword_27EE64C48, type metadata accessor for FlowResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_247CFE54C(uint64_t a1)
{
  v2 = sub_247D12004(&qword_27EE634B0, type metadata accessor for FlowResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_247CFE5B8()
{
  sub_247D12004(&qword_27EE634B0, type metadata accessor for FlowResponse);

  return sub_247D1F338();
}

uint64_t sub_247CFE638()
{
  v0 = sub_247D1F428();
  __swift_allocate_value_buffer(v0, qword_27EE72EA0);
  __swift_project_value_buffer(v0, qword_27EE72EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64428);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64430) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_247D2A1D0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_247D1F3F8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actions";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hidden_actions";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "peer_step";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "peer_command";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cancels_test_suite_polling";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "alert_on_exit";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "information";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "cosmetic_capture";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "loading";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "exit";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "url";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "progress";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  return sub_247D1F408();
}

uint64_t sub_247CFEAB8()
{
  type metadata accessor for FlowResponse.Step._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 73) = 0;
  v2 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  v3 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  result = (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  qword_27EE646A8 = v0;
  return result;
}

uint64_t sub_247CFEB68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - v4;
  *(v1 + 16) = 0;
  v5 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v5;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 73) = 0;
  v22 = (v1 + 73);
  v6 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  v23 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  v7 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v10 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v10;

  swift_beginAccess();
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v11;

  swift_beginAccess();
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v12;
  *(v1 + 56) = v13;
  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v14;
  *(v1 + 72) = v15;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 73);
  v16 = v22;
  swift_beginAccess();
  *v16 = v14;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v14;
  v17 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v24;
  sub_247C2BD10(v18, v24, &unk_27EE63230);

  v20 = v23;
  swift_beginAccess();
  sub_247C74F08(v19, v1 + v20);
  swift_endAccess();
  return v1;
}

uint64_t sub_247CFEEA0()
{

  sub_247C27100(v0 + OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents, &unk_27EE63230);

  return swift_deallocClassInstance();
}

void sub_247CFEF54()
{
  sub_247CFF558(319, &qword_27EE646C8, type metadata accessor for FlowResponse.Step.OneOf_Contents, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_247CFF088()
{
  result = type metadata accessor for FlowResponse.Step.Information(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FlowResponse.Step.CosmeticCapture(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FlowResponse.Step.Loading(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FlowResponse.Step.Exit(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FlowResponse.Step.URL(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FlowResponse.Step.Progress(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_247CFF220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_247D1F198();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_247CFF364(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_247D1F198();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247CFF494()
{
  sub_247CFF558(319, &qword_27EE646F0, type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247CFF558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_247CFF5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_52Tm_0);
}

uint64_t sub_247CFF654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowResponse.Step.Progress.ImageUpload(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_53Tm_0);
}

uint64_t sub_247CFF710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247CFF7D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247CFF894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_247D1F198();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247CFF920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247CFF9A8()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247CFFA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_247D1F198();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_247CFFBAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_247D1F198();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_247CFFD10()
{
  sub_247CFF558(319, &qword_27EE64748, type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      sub_247CFF558(319, &qword_27EE64750, type metadata accessor for FlowResponse.Step.Masthead, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_247CFFE9C()
{
  sub_247D1F198();
  if (v0 <= 0x3F)
  {
    sub_247CFF558(319, &qword_27EE64768, type metadata accessor for FlowResponse.SFSymbolConfiguration, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_247CFFFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_247D1F198();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_247D00104(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_247D1F198();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247D00234()
{
  sub_247CFF558(319, &qword_27EE64780, type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_247D00328()
{
  result = type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_247D00410()
{
  if (!qword_27EE647A8)
  {
    v0 = sub_247D1FE18();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE647A8);
    }
  }
}

uint64_t sub_247D00470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_52Tm);
}

uint64_t sub_247D004EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowResponse.Step.Loading.ImageUpload(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_53Tm);
}

uint64_t sub_247D00570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a4(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v7 = sub_247D1F198();
    v5 = v7;
    if (v8 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
      return 0;
    }
  }

  return v5;
}

uint64_t __swift_get_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1F198();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_53Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1F198();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_247D00734()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247D007B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_247D008F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247D00A28()
{
  sub_247CFF558(319, &qword_27EE647E0, type metadata accessor for FlowResponse.Step.Information.BulletedListItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      sub_247CFF558(319, &qword_27EE64750, type metadata accessor for FlowResponse.Step.Masthead, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_247D00B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_247D00CA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_247D00DD4()
{
  sub_247D1F198();
  if (v0 <= 0x3F)
  {
    sub_247CFF558(319, &qword_27EE64768, type metadata accessor for FlowResponse.SFSymbolConfiguration, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_247D00F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247D00FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247D010A8()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_103Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = sub_247D1F198();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 36);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 40);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_104Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = sub_247D1F198();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 36);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 40);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_247D01430()
{
  sub_247CFF558(319, &qword_27EE64828, type metadata accessor for FlowResponse.Step, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_247D01574();
    if (v1 <= 0x3F)
    {
      sub_247D1F198();
      if (v2 <= 0x3F)
      {
        sub_247CFF558(319, &qword_27EE64838, type metadata accessor for FlowResponse.Product, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_247D01574()
{
  if (!qword_27EE64830)
  {
    v0 = sub_247D1FB38();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE64830);
    }
  }
}

uint64_t sub_247D0162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F198();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_247D016FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_247D1F198();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_247D017E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_247D01884(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_247D1F198();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_247D01A1C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_247D1F198();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_247D01BA0()
{
  sub_247CFF558(319, &qword_27EE64870, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_247D1F198();
    if (v1 <= 0x3F)
    {
      sub_247CFF558(319, &qword_27EE64878, type metadata accessor for FileUploadToken, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_247CFF558(319, &qword_27EE64880, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_187Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_188Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_247D01EC0()
{
  result = sub_247D1F198();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_136Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_137Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_247D020E4()
{
  result = qword_27EE648A8;
  if (!qword_27EE648A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648A8);
  }

  return result;
}

unint64_t sub_247D0216C()
{
  result = qword_27EE648C0;
  if (!qword_27EE648C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648C0);
  }

  return result;
}

unint64_t sub_247D021C4()
{
  result = qword_27EE648C8;
  if (!qword_27EE648C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE648C8);
  }

  return result;
}