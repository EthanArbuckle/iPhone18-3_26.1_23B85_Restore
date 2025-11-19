uint64_t FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter()
{
  v1 = *v0;
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v2 = qword_1B015A108[v1];
  return sub_1B014CF8C();
}

uint64_t sub_1B013CBA4@<X0>(uint64_t *a1@<X8>)
{
  result = FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
  *a1 = result;
  return result;
}

NSNumber __swiftcall FBKSInteraction.FeatureDomain.caEnumValue()()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  sub_1B0100B40(v4[0], v1);
  sub_1B013C244(v4, &v3);
  return FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
}

unsigned __int8 *sub_1B013CC10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!v3 || !*(v3 + 16))
  {
    goto LABEL_30;
  }

  v4 = sub_1B013E148(0, 3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (!v6[2])
  {
    goto LABEL_29;
  }

  v8 = v6[4];
  v7 = v6[5];

  if (qword_1EDAE6AC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B014CB5C();
  __swift_project_value_buffer(v9, qword_1EDAE6AC8);

  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B00E6C2C(v8, v7, v50);
    _os_log_impl(&dword_1B00C4000, v10, v11, "Extracting CA value from given answer [%s]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B271F750](v13, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }

  if ((sub_1B014CD7C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v14 = sub_1B014CCBC();
  v15 = sub_1B013F8BC(v14, v8, v7);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x1B271E780](v15, v17, v19, v21);
  v24 = v23;

  v26 = HIBYTE(v24) & 0xF;
  v27 = v22 & 0xFFFFFFFFFFFFLL;
  if (!((v24 & 0x2000000000000000) != 0 ? HIBYTE(v24) & 0xF : v22 & 0xFFFFFFFFFFFFLL))
  {
LABEL_29:

    goto LABEL_30;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v51 = 0;
    v30 = sub_1B012E4EC(v22, v24, 10);
    v48 = v49;
    goto LABEL_75;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v22 & 0x1000000000000000) != 0)
    {
      result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B014D06C();
    }

    v29 = *result;
    if (v29 == 43)
    {
      if (v27 >= 1)
      {
        v26 = v27 - 1;
        if (v27 != 1)
        {
          v30 = 0;
          if (result)
          {
            v37 = result + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                goto LABEL_73;
              }

              v39 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                goto LABEL_73;
              }

              v30 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_73;
              }

              ++v37;
              if (!--v26)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_73;
      }

      goto LABEL_82;
    }

    if (v29 != 45)
    {
      if (v27)
      {
        v30 = 0;
        if (result)
        {
          while (1)
          {
            v43 = *result - 48;
            if (v43 > 9)
            {
              goto LABEL_73;
            }

            v44 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_73;
            }

            v30 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v27)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_73:
      v30 = 0;
      LOBYTE(v26) = 1;
      goto LABEL_74;
    }

    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v30 = 0;
        if (result)
        {
          v31 = result + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_73;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_73;
            }

            v30 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              goto LABEL_73;
            }

            ++v31;
            if (!--v26)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_65:
        LOBYTE(v26) = 0;
LABEL_74:
        v51 = v26;
        v48 = v26;
LABEL_75:

        if ((v48 & 1) == 0 && v30 >= 40)
        {
          return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        }

LABEL_30:
        sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
        return sub_1B014CF8C();
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v50[0] = v22;
  v50[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v22 != 43)
  {
    if (v22 != 45)
    {
      if (v26)
      {
        v30 = 0;
        v45 = v50;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          v45 = (v45 + 1);
          if (!--v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v26)
    {
      if (--v26)
      {
        v30 = 0;
        v34 = v50 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_81;
  }

  if (v26)
  {
    if (--v26)
    {
      v30 = 0;
      v40 = v50 + 1;
      while (1)
      {
        v41 = *v40 - 48;
        if (v41 > 9)
        {
          break;
        }

        v42 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          break;
        }

        ++v40;
        if (!--v26)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1B013D160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B013FE38(a1, v7, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      if (qword_1EDAE6AC0 != -1)
      {
        swift_once();
      }

      v11 = sub_1B014CB5C();
      __swift_project_value_buffer(v11, qword_1EDAE6AC8);
      v12 = sub_1B014CB3C();
      v13 = sub_1B014CF4C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_1B00E6C2C(0x293A5F2874696E69, 0xE800000000000000, &v17);
        _os_log_impl(&dword_1B00C4000, v12, v13, "_file(name:data:) should not be sent to %{public}s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x1B271F750](v15, -1, -1);
        MEMORY[0x1B271F750](v14, -1, -1);
      }

      result = sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      v10 = 17;
      break;
    case 2u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 0;
      break;
    case 3u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 1;
      break;
    case 4u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 2;
      break;
    case 5u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 3;
      break;
    case 6u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 4;
      break;
    case 7u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 5;
      break;
    case 8u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 6;
      break;
    case 9u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 7;
      break;
    case 0xAu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 8;
      break;
    case 0xBu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 9;
      break;
    case 0xCu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 10;
      break;
    case 0xDu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 11;
      break;
    case 0xEu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 12;
      break;
    case 0xFu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 13;
      break;
    case 0x10u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 14;
      break;
    case 0x11u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v7, type metadata accessor for FBKSInteraction.Content);
      v10 = 16;
      break;
    default:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      v8 = sub_1B014CA4C();
      result = (*(*(v8 - 8) + 8))(v7, v8);
      v10 = 15;
      break;
  }

  *a2 = v10;
  return result;
}

void FBKSInteraction.Content.CAEnum.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v4 = a1;
  v5 = sub_1B014CF8C();
  v6 = sub_1B014CF9C();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = sub_1B014CF8C();
    v10 = sub_1B014CF9C();

    if (v10)
    {

      v7 = 1;
    }

    else
    {
      v11 = v8;
      v12 = sub_1B014CF8C();
      v13 = sub_1B014CF9C();

      if (v13)
      {

        v7 = 2;
      }

      else
      {
        v14 = v11;
        v15 = sub_1B014CF8C();
        v16 = sub_1B014CF9C();

        if (v16)
        {

          v7 = 3;
        }

        else
        {
          v17 = v14;
          v18 = sub_1B014CF8C();
          v19 = sub_1B014CF9C();

          if (v19)
          {

            v7 = 4;
          }

          else
          {
            v20 = v17;
            v21 = sub_1B014CF8C();
            v22 = sub_1B014CF9C();

            if (v22)
            {

              v7 = 5;
            }

            else
            {
              v23 = v20;
              v24 = sub_1B014CF8C();
              v25 = sub_1B014CF9C();

              if (v25)
              {

                v7 = 6;
              }

              else
              {
                v26 = v23;
                v27 = sub_1B014CF8C();
                v28 = sub_1B014CF9C();

                if (v28)
                {

                  v7 = 7;
                }

                else
                {
                  v29 = v26;
                  v30 = sub_1B014CF8C();
                  v31 = sub_1B014CF9C();

                  if (v31)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v32 = v29;
                    v33 = sub_1B014CF8C();
                    v34 = sub_1B014CF9C();

                    if (v34)
                    {

                      v7 = 9;
                    }

                    else
                    {
                      v35 = v32;
                      v36 = sub_1B014CF8C();
                      v37 = sub_1B014CF9C();

                      if (v37)
                      {

                        v7 = 10;
                      }

                      else
                      {
                        v38 = v35;
                        v39 = sub_1B014CF8C();
                        v40 = sub_1B014CF9C();

                        if (v40)
                        {

                          v7 = 11;
                        }

                        else
                        {
                          v41 = v38;
                          v42 = sub_1B014CF8C();
                          v43 = sub_1B014CF9C();

                          if (v43)
                          {

                            v7 = 12;
                          }

                          else
                          {
                            v44 = v41;
                            v45 = sub_1B014CF8C();
                            v46 = sub_1B014CF9C();

                            if (v46)
                            {

                              v7 = 13;
                            }

                            else
                            {
                              v47 = v44;
                              v48 = sub_1B014CF8C();
                              v49 = sub_1B014CF9C();

                              if (v49)
                              {

                                v7 = 14;
                              }

                              else
                              {
                                v50 = v47;
                                v51 = sub_1B014CF8C();
                                v52 = sub_1B014CF9C();

                                if (v52)
                                {

                                  v7 = 15;
                                }

                                else
                                {
                                  v53 = v50;
                                  v54 = sub_1B014CF8C();
                                  v55 = sub_1B014CF9C();

                                  if (v55)
                                  {

                                    v7 = 16;
                                  }

                                  else
                                  {
                                    v56 = sub_1B014CF8C();
                                    v57 = sub_1B014CF9C();

                                    if (v57)
                                    {
                                      v7 = 17;
                                    }

                                    else
                                    {
                                      v7 = 18;
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
            }
          }
        }
      }
    }
  }

  *a2 = v7;
}

uint64_t FBKSInteraction.Content.CAEnum.rawValue.getter()
{
  v1 = *v0;
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v2 = qword_1B015A230[v1];
  return sub_1B014CF8C();
}

uint64_t sub_1B013DBB8(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *a1;
  v10 = *a2;
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v6 = a5();
  v7 = a5();
  v8 = sub_1B014CF9C();

  return v8 & 1;
}

uint64_t sub_1B013DCA4@<X0>(uint64_t *a1@<X8>)
{
  result = FBKSInteraction.Content.CAEnum.rawValue.getter();
  *a1 = result;
  return result;
}

void FBKSEvaluation.Action.CAEnum.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v4 = a1;
  v5 = sub_1B014CF8C();
  v6 = sub_1B014CF9C();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = sub_1B014CF8C();
    v10 = sub_1B014CF9C();

    if (v10)
    {

      v7 = 1;
    }

    else
    {
      v11 = v8;
      v12 = sub_1B014CF8C();
      v13 = sub_1B014CF9C();

      if (v13)
      {

        v7 = 2;
      }

      else
      {
        v14 = v11;
        v15 = sub_1B014CF8C();
        v16 = sub_1B014CF9C();

        if (v16)
        {

          v7 = 3;
        }

        else
        {
          v17 = v14;
          v18 = sub_1B014CF8C();
          v19 = sub_1B014CF9C();

          if (v19)
          {

            v7 = 4;
          }

          else
          {
            v20 = v17;
            v21 = sub_1B014CF8C();
            v22 = sub_1B014CF9C();

            if (v22)
            {

              v7 = 5;
            }

            else
            {
              v23 = v20;
              v24 = sub_1B014CF8C();
              v25 = sub_1B014CF9C();

              if (v25)
              {

                v7 = 6;
              }

              else
              {
                v26 = sub_1B014CF8C();
                v27 = sub_1B014CF9C();

                if (v27)
                {
                  v7 = 7;
                }

                else
                {
                  v7 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a2 = v7;
}

uint64_t FBKSEvaluation.Action.CAEnum.rawValue.getter()
{
  v1 = *v0;
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v2 = qword_1B015A2C0[v1];
  return sub_1B014CF8C();
}

uint64_t sub_1B013DF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1B014D2FC();
  v7 = a3(v6);
  sub_1B014CFAC();

  return sub_1B014D33C();
}

void sub_1B013DFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v5 = a4();
  sub_1B014CFAC();
}

uint64_t sub_1B013E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_1B014D2FC();
  v8 = a4(v7);
  sub_1B014CFAC();

  return sub_1B014D33C();
}

uint64_t sub_1B013E0A8@<X0>(uint64_t *a1@<X8>)
{
  result = FBKSEvaluation.Action.CAEnum.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B013E0D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B014D2FC();
  sub_1B014CCAC();
  v6 = sub_1B014D33C();

  return sub_1B013E24C(a1, a2, v6);
}

unint64_t sub_1B013E148(uint64_t a1, int64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B014D2FC();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v6 = 3;
        goto LABEL_15;
      case 4:
        v6 = 4;
        goto LABEL_15;
      case 5:
        v6 = 5;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x1B271EE00](6);
    sub_1B014CCAC();
    goto LABEL_16;
  }

  if (!a2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  MEMORY[0x1B271EE00](v6);
LABEL_16:
  v7 = sub_1B014D33C();

  return sub_1B013E304(a1, a2, v7);
}

unint64_t sub_1B013E24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B014D25C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B013E304(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (a2 == 3)
          {
            v17 = *v9;
            v18 = 3;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 3;
          goto LABEL_24;
        case 4:
          if (a2 == 4)
          {
            v17 = *v9;
            v18 = 4;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 4;
          goto LABEL_24;
        case 5:
          if (a2 == 5)
          {
            v17 = *v9;
            v18 = 5;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          if (!a2)
          {
            v17 = *v9;
            v18 = 0;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 0;
          goto LABEL_24;
        case 1:
          if (a2 == 1)
          {
            v17 = *v9;
            v18 = 1;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 1;
          goto LABEL_24;
        case 2:
          if (a2 == 2)
          {
            v17 = *v9;
            v18 = 2;
            goto LABEL_41;
          }

          sub_1B00D1FFC(a1, a2);
          v12 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      sub_1B00D1FFC(a1, a2);
      sub_1B00D1FFC(v10, v11);
      v12 = v11;
LABEL_24:
      sub_1B00D2010(v10, v12);
      sub_1B00D2010(a1, a2);
      goto LABEL_25;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = sub_1B014D25C();
    sub_1B00D1FFC(a1, a2);
    sub_1B00D1FFC(v10, v11);
    sub_1B00D2010(v10, v11);
    sub_1B00D2010(a1, a2);
    if (v16)
    {
      return v5;
    }

LABEL_25:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_1B00D1FFC(a1, a2);
  sub_1B00D1FFC(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_41:
  sub_1B00D2010(v17, v18);
  sub_1B00D2010(a1, a2);
  return v5;
}

uint64_t sub_1B013E598(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4FE8, &qword_1B015A0D8);
  v38 = a2;
  result = sub_1B014D0BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B014D2FC();
      sub_1B014CCAC();
      result = sub_1B014D33C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B013E840(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E0, &qword_1B0156518);
  v39 = a2;
  result = sub_1B014D0BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B014D2FC();
      sub_1B014CCAC();
      result = sub_1B014D33C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B013EAE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49D8, &qword_1B0156510);
  v34 = a2;
  result = sub_1B014D0BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v18 = v9;
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v9 >= v14)
          {
            break;
          }

          v19 = v10[v9];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v13 = (v19 - 1) & v19;
            goto LABEL_17;
          }
        }

        if ((v34 & 1) == 0)
        {

          v3 = v33;
          goto LABEL_50;
        }

        v32 = 1 << *(v5 + 32);
        v3 = v33;
        if (v32 >= 64)
        {
          bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v32;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v35 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v34 & 1) == 0)
      {
        sub_1B00D1FFC(v35, v22);
      }

      v23 = *(v8 + 40);
      sub_1B014D2FC();
      if (v22 > 2)
      {
        switch(v22)
        {
          case 3:
            v24 = 3;
            break;
          case 4:
            v24 = 4;
            break;
          case 5:
            v24 = 5;
            break;
          default:
LABEL_30:
            MEMORY[0x1B271EE00](6);
            sub_1B014CCAC();
            goto LABEL_34;
        }
      }

      else if (v22)
      {
        if (v22 == 1)
        {
          v24 = 1;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_30;
          }

          v24 = 2;
        }
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x1B271EE00](v24);
LABEL_34:
      result = sub_1B014D33C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_52:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v35;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }
  }

LABEL_50:
  *v3 = v8;
  return result;
}

uint64_t sub_1B013EE24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
  v36 = a2;
  result = sub_1B014D0BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B00D20C0(v25, v37);
      }

      else
      {
        sub_1B00D20D0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B014D2FC();
      sub_1B014CCAC();
      result = sub_1B014D33C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B00D20C0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1B013F0DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1B013F124(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B00D20C0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1B013F190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4FE8, &qword_1B015A0D8);
  v2 = *v0;
  v3 = sub_1B014D0AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B013F300()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E0, &qword_1B0156518);
  v2 = *v0;
  v3 = sub_1B014D0AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B013F46C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49D8, &qword_1B0156510);
  v2 = *v0;
  v3 = sub_1B014D0AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1B00D1FFC(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B013F5DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
  v2 = *v0;
  v3 = sub_1B014D0AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B00D20D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B00D20C0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B013F780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B013F7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B013F858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B013F8BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B014CCDC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B014CDAC();
}

uint64_t sub_1B013F96C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  sub_1B01403DC();
  for (i = (v6 + 40); ; i += 2)
  {
    v37 = v4;
    v34 = *(i - 1);
    v33 = *i;

    sub_1B014CEFC();
    sub_1B0140430();
    sub_1B00D1FA8();
    v10 = sub_1B014CFDC();
    v12 = v11;

    *&v35 = 1599164753;
    *(&v35 + 1) = 0xE400000000000000;
    MEMORY[0x1B271E7F0](a2, a3);
    MEMORY[0x1B271E7F0](0x5F4141415FLL, 0xE500000000000000);
    MEMORY[0x1B271E7F0](v10, v12);

    v13 = v35;
    sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
    v14 = sub_1B014CF8C();
    v15 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a4;
    v36 = *a4;
    v18 = a4;
    *a4 = 0x8000000000000000;
    v20 = sub_1B013E0D0(v13, *(&v13 + 1));
    v21 = v17[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v36;
        if (v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B013F300();
        v27 = v36;
        if (v24)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1B013E840(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_1B013E0D0(v13, *(&v13 + 1));
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
      v27 = v36;
      if (v24)
      {
LABEL_3:
        v8 = v27[7];
        v9 = *(v8 + 8 * v20);
        *(v8 + 8 * v20) = v14;

        goto LABEL_4;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    *(v27[6] + 16 * v20) = v13;
    *(v27[7] + 8 * v20) = v14;
    v28 = v27[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_18;
    }

    v27[2] = v30;
LABEL_4:
    a4 = v18;
    *v18 = v27;

    v4 = v37 - 1;
    if (v37 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B014D28C();
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v3 = v2[1];
  v19 = *v2;
  v20 = v3;
  v21 = xmmword_1B01511A0;
  sub_1B0100B40(v19, v3);
  v4 = _s15FeedbackService15FBKSInteractionC13FeatureDomainO2eeoiySbAE_AEtFZ_0(&v19, &v21);
  sub_1B0100A3C(v19, v20);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = sub_1B013E148(0, 3);
  if ((v8 & 1) == 0 || (v9 = *(*(v6 + 56) + 8 * v7), , , !v9[2]))
  {

LABEL_8:
    v21 = *v2;
    FBKSInteraction.FeatureDomain.description.getter();
    v15 = sub_1B013AE0C();
    v17 = v16;

    *&v21 = 0xD00000000000002ALL;
    *(&v21 + 1) = 0x80000001B015DD00;
    MEMORY[0x1B271E7F0](v15, v17);
    goto LABEL_9;
  }

  v10 = v9[4];
  v11 = v9[5];

  v12 = sub_1B013AE0C();
  v14 = v13;

  *&v21 = 0xD00000000000002ALL;
  *(&v21 + 1) = 0x80000001B015DD00;
  MEMORY[0x1B271E7F0](v12, v14);
LABEL_9:

  return v21;
}

uint64_t sub_1B013FE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B013FEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s15FeedbackService12RACAnalyticsV24sendInteractionPresented16analyticsPayload22featureDomainEventNameySDySSSo8NSObjectCG_SStFZ_0(uint64_t a1)
{
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);

  v2 = sub_1B014CF8C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a1;
  sub_1B0118364(v2, 0x6E456E6F69746361, 0xEA00000000006D75, isUniquelyReferenced_nonNull_native);
  v4 = sub_1B014CC0C();
  sub_1B00D0014(0, &qword_1EDAE6F50, 0x1E69E58C0);

  v5 = sub_1B014CB9C();

  AnalyticsSendEvent();

  v6 = sub_1B014CC0C();

  v7 = sub_1B014CB9C();

  AnalyticsSendEvent();

  v8 = sub_1B014CC0C();

  v9 = sub_1B014CB9C();

  AnalyticsSendEvent();

  if (qword_1EDAE6AC0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B014CB5C();
  __swift_project_value_buffer(v10, qword_1EDAE6AC8);
  oslog = sub_1B014CB3C();
  v11 = sub_1B014CF3C();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;

    v14 = sub_1B014CBBC();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B00C4000, oslog, v11, "Sent Interaction Presented event with payload: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B271F750](v13, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }
}

unint64_t sub_1B014022C()
{
  result = qword_1EB6C4FD0;
  if (!qword_1EB6C4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4FD0);
  }

  return result;
}

unint64_t sub_1B0140284()
{
  result = qword_1EB6C4FD8;
  if (!qword_1EB6C4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4FD8);
  }

  return result;
}

unint64_t sub_1B01402DC()
{
  result = qword_1EB6C4FE0;
  if (!qword_1EB6C4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4FE0);
  }

  return result;
}

unint64_t sub_1B0140378()
{
  result = qword_1EDAE6ED8;
  if (!qword_1EDAE6ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3B80, qword_1B0151250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6ED8);
  }

  return result;
}

unint64_t sub_1B01403DC()
{
  result = qword_1EDAE6EF8;
  if (!qword_1EDAE6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6EF8);
  }

  return result;
}

unint64_t sub_1B0140430()
{
  result = qword_1EDAE6EE8;
  if (!qword_1EDAE6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6EE8);
  }

  return result;
}

void sub_1B0140484()
{
  sub_1B014CC1C();
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B014CC0C();

  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EB6C5260 = v2;
  }

  else
  {
    __break(1u);
  }
}

void static FBKSSharedPersistence.removeAllInboxTats()()
{
  if (qword_1EB6C3A98 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C5260;
  v1 = sub_1B014CC0C();
  [v0 removeObjectForKey_];
}

uint64_t static FBKSSharedPersistence.saveSurveyTatInFBAInbox(formIdentifier:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B014CADC();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6C3A60 != -1)
  {
LABEL_33:
    swift_once();
  }

  v8 = sub_1B014CB5C();
  v9 = __swift_project_value_buffer(v8, qword_1EB6C5248);

  v48 = v9;
  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF6C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1B00E6C2C(0xD000000000000028, 0x80000001B015DD30, &v50);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1B00E6C2C(a1, a2, &v50);
    _os_log_impl(&dword_1B00C4000, v10, v11, "%{public}s [%{public}s]", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v13, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }

  v14 = _s15FeedbackService21FBKSSharedPersistenceC16fbaInboxFormTatsSayAA13FBKSSInboxTatCGvgZ_0();
  v15 = v14;
  v50 = v14;
  if (v14 >> 62)
  {
    v16 = sub_1B014D09C();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B271EB20](v17, v15);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v18 = *(v15 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_20;
        }
      }

      v20 = *(v18 + 16) == a1 && *(v18 + 24) == a2;
      if (v20 || (sub_1B014D25C() & 1) != 0)
      {
        break;
      }

      ++v17;
      if (v19 == v16)
      {
        goto LABEL_21;
      }
    }

    v21 = sub_1B014CB3C();
    v22 = sub_1B014CF6C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v23 = 136446722;
      *(v23 + 4) = sub_1B00E6C2C(0xD000000000000028, 0x80000001B015DD30, v49);
      HIDWORD(v44) = v22;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1B00E6C2C(a1, a2, v49);
      *(v23 + 22) = 2082;
      v24 = v46;
      v25 = v47;
      (*(v46 + 16))(v7, v18 + OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded, v47);
      sub_1B01430FC(&qword_1EB6C4FF0, MEMORY[0x1E6969530]);
      v26 = sub_1B014D22C();
      v28 = v27;
      (*(v24 + 8))(v7, v25);
      v29 = sub_1B00E6C2C(v26, v28, v49);

      *(v23 + 24) = v29;
      _os_log_impl(&dword_1B00C4000, v21, BYTE4(v44), "%{public}s found existing: %{public}s added at [%{public}s]", v23, 0x20u);
      v30 = v45;
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v30, -1, -1);
      MEMORY[0x1B271F750](v23, -1, -1);
    }

    v31 = sub_1B0142BE4(&v50, a1, a2);

    if (v50 >> 62)
    {
      result = sub_1B014D09C();
      v33 = result;
      if (result >= v31)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v33 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33 >= v31)
      {
LABEL_26:
        sub_1B01424C0(v31, v33);

        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

LABEL_27:
    sub_1B014CACC();
    v34 = type metadata accessor for FBKSSInboxTat();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = a2;
    (*(v46 + 32))(v37 + OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded, v7, v47);

    v38 = sub_1B014CB3C();
    v39 = sub_1B014CF3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_1B00E6C2C(0xD000000000000028, 0x80000001B015DD30, v49);
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_1B00E6C2C(a1, a2, v49);
      _os_log_impl(&dword_1B00C4000, v38, v39, "%{public}s appending: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v41, -1, -1);
      MEMORY[0x1B271F750](v40, -1, -1);
    }

    MEMORY[0x1B271E8F0](v42);
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B014CE3C();
    }

    sub_1B014CE4C();
    sub_1B01425E4(v50);
  }

  return result;
}

uint64_t static FBKSSharedPersistence.removeInboxTat(_:)(uint64_t a1, unint64_t a2)
{
  if (qword_1EB6C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C5248);

  v5 = sub_1B014CB3C();
  v6 = sub_1B014CF6C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B00E6C2C(0xD000000000000012, 0x80000001B015DD60, &v12);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1B00E6C2C(a1, a2, &v12);
    _os_log_impl(&dword_1B00C4000, v5, v6, "%{public}s [%{public}s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v8, -1, -1);
    MEMORY[0x1B271F750](v7, -1, -1);
  }

  v12 = _s15FeedbackService21FBKSSharedPersistenceC16fbaInboxFormTatsSayAA13FBKSSInboxTatCGvgZ_0();

  v9 = sub_1B0142BE4(&v12, a1, a2);

  if (v12 >> 62)
  {
    result = sub_1B014D09C();
    v11 = result;
    if (result >= v9)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 < v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1B01424C0(v9, v11);
  sub_1B01425E4(v12);
}

uint64_t static FBKSSharedPersistence.fbaInboxFormTat(formIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = _s15FeedbackService21FBKSSharedPersistenceC16fbaInboxFormTatsSayAA13FBKSSInboxTatCGvgZ_0();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_19:
    v6 = sub_1B014D09C();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1B271EB20](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        v10 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
        if (v10 || (sub_1B014D25C() & 1) != 0)
        {
          goto LABEL_17;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

uint64_t sub_1B0140FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B00D16F8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B00D20D0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B00D16F8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t FBKSSInboxTat.asJSONString.getter()
{
  v1 = *v0;
  v2 = sub_1B014CC5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1B014C88C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B014C87C();
  v20 = v0;
  sub_1B01430FC(&qword_1EB6C4FF8, type metadata accessor for FBKSSInboxTat);
  v7 = sub_1B014C86C();
  v9 = v8;

  sub_1B014CC4C();
  v10 = sub_1B014CC3C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if (qword_1EB6C3A60 != -1)
    {
      swift_once();
    }

    v14 = sub_1B014CB5C();
    __swift_project_value_buffer(v14, qword_1EB6C5248);

    v15 = sub_1B014CB3C();
    v16 = sub_1B014CF3C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1B00E6C2C(v12, v13, &v20);
      _os_log_impl(&dword_1B00C4000, v15, v16, "Encoded Inbox Tat: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B271F750](v18, -1, -1);
      MEMORY[0x1B271F750](v17, -1, -1);
    }

    sub_1B00D2024(v7, v9);

    return v12;
  }

  else
  {
    result = sub_1B014D08C();
    __break(1u);
  }

  return result;
}

uint64_t FBKSSInboxTat.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FBKSSInboxTat.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded;
  v4 = sub_1B014CADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static FBKSSInboxTat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1B014D25C();
  }
}

uint64_t sub_1B0141568()
{
  if (*v0)
  {
    result = 0x6564644165746164;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1B01415AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

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

uint64_t sub_1B0141698(uint64_t a1)
{
  v2 = sub_1B0142E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01416D4(uint64_t a1)
{
  v2 = sub_1B0142E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSSInboxTat.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded;
  v3 = sub_1B014CADC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FBKSSInboxTat.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded;
  v3 = sub_1B014CADC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t FBKSSInboxTat.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5000, &qword_1B015A308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B0142E70();
  sub_1B014D35C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v14[15] = 0;
  sub_1B014D1DC();
  if (!v2)
  {
    v14[14] = 1;
    sub_1B014CADC();
    sub_1B01430FC(&qword_1EB6C5010, MEMORY[0x1E6969530]);
    sub_1B014D21C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FBKSSInboxTat.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FBKSSInboxTat.init(from:)(a1);
  return v5;
}

void *FBKSSInboxTat.init(from:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_1B014CADC();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5018, &qword_1B015A310);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B0142E70();
  v13 = v24;
  sub_1B014D34C();
  if (v13)
  {
    v18 = *(*v1 + 48);
    v19 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    v14 = v22;
    v1[2] = sub_1B014D13C();
    v1[3] = v15;
    v25 = 1;
    sub_1B01430FC(&qword_1EB6C5020, MEMORY[0x1E6969530]);
    v24 = v7;
    v16 = v4;
    v17 = v23;
    sub_1B014D17C();
    (*(v14 + 8))(v11, v17);
    (*(v21 + 32))(v1 + OBJC_IVAR____TtC15FeedbackService13FBKSSInboxTat_dateAdded, v24, v16);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

void *sub_1B0141D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = FBKSSInboxTat.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1B0141DA0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B014D09C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B014D03C();
  *v1 = result;
  return result;
}

uint64_t sub_1B0141E40(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B014D09C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B014D03C();
}

uint64_t _s15FeedbackService13FBKSSInboxTatC8fromJSON6stringACSgSS_tFZ_0()
{
  v0 = sub_1B014CC5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014CC4C();
  v5 = sub_1B014CC2C();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1B014C82C();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1B014C81C();
    type metadata accessor for FBKSSInboxTat();
    sub_1B01430FC(&qword_1EB6C5050, type metadata accessor for FBKSSInboxTat);
    sub_1B014C80C();
    sub_1B00DE9AC(v5, v7);

    return v12[3];
  }

  return result;
}

uint64_t _s15FeedbackService21FBKSSharedPersistenceC16fbaInboxFormTatsSayAA13FBKSSInboxTatCGvgZ_0()
{
  if (qword_1EB6C3A98 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v0 = qword_1EB6C5260;
    v1 = sub_1B014CC0C();
    v2 = [v0 arrayForKey_];

    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1B014CE1C();

    v4 = sub_1B0140FF0(v3);

    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      return v5;
    }

    v6 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v7 = *(v4 + 16);
LABEL_5:
    v8 = (v4 + 40 + 16 * v6);
    while (1)
    {
      if (v7 == v6)
      {

        return v5;
      }

      if (v6 >= *(v4 + 16))
      {
        break;
      }

      ++v6;
      v9 = v8 + 2;
      v10 = *(v8 - 1);
      v11 = *v8;

      v12 = _s15FeedbackService13FBKSSInboxTatC8fromJSON6stringACSgSS_tFZ_0();

      v8 = v9;
      if (v12)
      {
        MEMORY[0x1B271E8F0](v13);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B014CE3C();
        }

        sub_1B014CE4C();
        v5 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }
}

uint64_t sub_1B01423C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for FBKSSInboxTat();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B014D09C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B014D09C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B01424C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B014D09C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B014D09C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B0141DA0(result);

  return sub_1B01423C0(v4, v2, 0);
}

uint64_t type metadata accessor for FBKSSInboxTat()
{
  result = qword_1EB6C5028;
  if (!qword_1EB6C5028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B01425E4(unint64_t a1)
{
  if (qword_1EB6C3A60 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = sub_1B014CB5C();
    __swift_project_value_buffer(v2, qword_1EB6C5248);

    v3 = sub_1B014CB3C();
    v4 = sub_1B014CF3C();

    v5 = a1 >> 62;
    v45 = a1;
    if (os_log_type_enabled(v3, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v48 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1B00E6C2C(0x7461742865766173, 0xEB00000000293A73, &v48);
      *(v6 + 12) = 2082;
      if (v5)
      {
        v8 = sub_1B014D09C();
      }

      else
      {
        v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        v47 = MEMORY[0x1E69E7CC0];
        sub_1B00D16F8(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          return;
        }

        v42 = v7;
        v43 = v4;
        v44 = a1 >> 62;
        v9 = v47;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = 0;
          do
          {
            v11 = MEMORY[0x1B271EB20](v10, a1);
            v12 = *(v11 + 16);
            v13 = *(v11 + 24);

            swift_unknownObjectRelease();
            v15 = *(v47 + 16);
            v14 = *(v47 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_1B00D16F8((v14 > 1), v15 + 1, 1);
            }

            ++v10;
            *(v47 + 16) = v15 + 1;
            v16 = v47 + 16 * v15;
            *(v16 + 32) = v12;
            *(v16 + 40) = v13;
          }

          while (v8 != v10);
        }

        else
        {
          v17 = (a1 + 32);
          do
          {
            v18 = *(*v17 + 16);
            v19 = *(*v17 + 24);
            v21 = *(v47 + 16);
            v20 = *(v47 + 24);

            if (v21 >= v20 >> 1)
            {
              sub_1B00D16F8((v20 > 1), v21 + 1, 1);
            }

            *(v47 + 16) = v21 + 1;
            v22 = v47 + 16 * v21;
            *(v22 + 32) = v18;
            *(v22 + 40) = v19;
            v17 += 8;
            --v8;
            a1 = v45;
          }

          while (v8);
        }

        v5 = v44;
        v4 = v43;
        v7 = v42;
      }

      v23 = MEMORY[0x1B271E920](v9, MEMORY[0x1E69E6158]);
      v25 = v24;

      v26 = sub_1B00E6C2C(v23, v25, &v48);

      *(v6 + 14) = v26;
      _os_log_impl(&dword_1B00C4000, v3, v4, "%{public}s %{public}s]", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v7, -1, -1);
      MEMORY[0x1B271F750](v6, -1, -1);
    }

    if (!v5)
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        break;
      }

      goto LABEL_21;
    }

    v27 = sub_1B014D09C();
    if (!v27)
    {
      break;
    }

LABEL_21:
    v28 = 0;
    v29 = a1 & 0xC000000000000001;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = MEMORY[0x1E69E7CC0];
    while (v29)
    {
      MEMORY[0x1B271EB20](v28, a1);
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_33;
      }

LABEL_25:
      v34 = FBKSSInboxTat.asJSONString.getter();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B00D12DC(0, *(v31 + 2) + 1, 1, v31);
      }

      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        v31 = sub_1B00D12DC((v37 > 1), v38 + 1, 1, v31);
      }

      *(v31 + 2) = v38 + 1;
      v39 = &v31[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      ++v28;
      a1 = v45;
      if (v33 == v27)
      {
        goto LABEL_37;
      }
    }

    if (v28 >= *(v30 + 16))
    {
      goto LABEL_34;
    }

    v32 = *(a1 + 8 * v28 + 32);

    v33 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_37:
  if (qword_1EB6C3A98 != -1)
  {
    swift_once();
  }

  v40 = qword_1EB6C5260;
  v41 = sub_1B014CE0C();

  v46 = sub_1B014CC0C();
  [v40 setObject:v41 forKey:v46];
}

unint64_t sub_1B0142AC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_1B014D09C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B271EB20](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (*(v9 + 16) == a2 && *(v9 + 24) == a3)
    {
      break;
    }

    v11 = sub_1B014D25C();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t sub_1B0142BE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  v8 = sub_1B0142AC8(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1B014D09C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1B014D09C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B271EB20](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 16) == a2 && *(v13 + 24) == a3)
    {
LABEL_8:
    }

    else
    {
      v14 = sub_1B014D25C();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1B271EB20](v10, v7);
            v15 = MEMORY[0x1B271EB20](v11, v7);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v16)
            {
              goto LABEL_51;
            }

            if (v11 >= v16)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v11);
            v24 = *(v7 + 32 + 8 * v10);
          }

          v17 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = sub_1B0141E40(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = sub_1B0141E40(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          v6 = v17;
          v21 = v19 + 8 * v11;
          v22 = *(v21 + 32);
          *(v21 + 32) = v24;

          *v17 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

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
LABEL_52:
  __break(1u);
  return sub_1B014D09C();
}

unint64_t sub_1B0142E70()
{
  result = qword_1EB6C5008;
  if (!qword_1EB6C5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5008);
  }

  return result;
}

uint64_t sub_1B0142F08()
{
  result = sub_1B014CADC();
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

unint64_t sub_1B0142FF8()
{
  result = qword_1EB6C5038;
  if (!qword_1EB6C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5038);
  }

  return result;
}

unint64_t sub_1B0143050()
{
  result = qword_1EB6C5040;
  if (!qword_1EB6C5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5040);
  }

  return result;
}

unint64_t sub_1B01430A8()
{
  result = qword_1EB6C5048;
  if (!qword_1EB6C5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5048);
  }

  return result;
}

uint64_t sub_1B01430FC(unint64_t *a1, void (*a2)(uint64_t))
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

const char *FeedbackFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "BatchEvaluation";
  }

  else
  {
    return "CentralizedFeedback";
  }
}

const char *sub_1B014319C()
{
  if (*v0)
  {
    return "BatchEvaluation";
  }

  else
  {
    return "CentralizedFeedback";
  }
}

unint64_t FeedbackFeatureError.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

unint64_t sub_1B0143254()
{
  result = qword_1EB6C5058;
  if (!qword_1EB6C5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5058);
  }

  return result;
}

unint64_t sub_1B01432AC()
{
  result = qword_1EB6C5060;
  if (!qword_1EB6C5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5060);
  }

  return result;
}

unint64_t sub_1B0143300()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

Swift::String __swiftcall FBKSURLAnnotation.CodingKeys.withDomain(_:)(Swift::String a1)
{
  v2 = *v1;
  MEMORY[0x1B271E7F0](a1._countAndFlagsBits, a1._object);
  MEMORY[0x1B271E7F0](46, 0xE100000000000000);
  sub_1B014D07C();
  v3 = 0;
  v4 = 0xE000000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t FBKSURLAnnotation.CodingKeys.withDomain.getter()
{
  v1 = *v0;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015DFC0);
  sub_1B014D07C();
  return 0;
}

Swift::String __swiftcall FBKSURLAnnotation.CodingKeys.withDomainAndKey(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v4 = *v1;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015DFC0);
  sub_1B014D07C();
  MEMORY[0x1B271E7F0](countAndFlagsBits, object);

  MEMORY[0x1B271E7F0](46, 0xE100000000000000);

  v5 = 0;
  v6 = 0xE000000000000000;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

FeedbackService::FBKSURLAnnotation::CodingKeys_optional __swiftcall FBKSURLAnnotation.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B014D0DC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FBKSURLAnnotation.CodingKeys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x70756F7267;
  v4 = 0x6E6F697469646461;
  if (v1 != 3)
  {
    v4 = 0x657079546E6F6369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470697263736564;
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

uint64_t sub_1B01436A8()
{
  v1 = *v0;
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B01437A4()
{
  *v0;
  *v0;
  *v0;
  sub_1B014CCAC();
}

uint64_t sub_1B014388C()
{
  v1 = *v0;
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

void sub_1B0143990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736964;
  v5 = 0xE500000000000000;
  v6 = 0x70756F7267;
  v7 = 0xEE006F666E496C61;
  v8 = 0x6E6F697469646461;
  if (v2 != 3)
  {
    v8 = 0x657079546E6F6369;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7470697263736564;
    v3 = 0xEB000000006E6F69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B0143A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1B014C95C();
  v7 = result;
  if (result)
  {
    result = sub_1B014C98C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B014C97C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

void sub_1B0143AF0(int64_t a1, const char *a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t *a8, uint64_t a9)
{
  v124 = a7;
  v123 = a6;
  v127 = a5;
  v126 = a4;
  v130 = a3;
  v129 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v131 = sub_1B014CC5C();
  v132 = *(v131 - 8);
  v11 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B014CA4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a8[1];
  v121 = *a8;
  v122 = v18;
  if (qword_1EDAE7070 != -1)
  {
    goto LABEL_69;
  }

LABEL_2:
  v19 = sub_1B014CB5C();
  __swift_project_value_buffer(v19, qword_1EDAE7828);
  (*(v14 + 16))(v17, a1, v13);
  v20 = sub_1B014CB3C();
  v21 = sub_1B014CF3C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v125 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    *&value = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_1B00E6C2C(0xD000000000000049, 0x80000001B015DFE0, &value);
    *(v23 + 12) = 2080;
    v25 = sub_1B014CA1C();
    v27 = v26;
    (*(v14 + 8))(v17, v13);
    v28 = sub_1B00E6C2C(v25, v27, &value);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1B00C4000, v20, v21, "%{public}s URL: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v24, -1, -1);
    v29 = v23;
    a1 = v125;
    MEMORY[0x1B271F750](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  *&value = 0;
  *(&value + 1) = 0xE000000000000000;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015DFC0);
  v134 = 0;
  sub_1B014D07C();
  v30 = value;
  v31 = v133;
  sub_1B014CC4C();
  v32 = sub_1B014CC2C();
  v34 = v33;
  v35 = v132 + 8;
  v36 = v131;
  v130 = *(v132 + 8);
  v37 = v130(v31, v131);
  if (v34 >> 60 == 15)
  {
    goto LABEL_74;
  }

  MEMORY[0x1EEE9AC00](v37);
  *(&v119 - 6) = a1;
  *(&v119 - 5) = v30;
  *(&v119 - 3) = v32;
  *(&v119 - 2) = v34;
  v38 = v128;
  sub_1B00ED104(sub_1B0144BA8, (&v119 - 8), v32, v34);
  v39 = v38;
  if (v38)
  {

    sub_1B00DE9AC(v32, v34);
LABEL_10:
    v46 = *MEMORY[0x1E69E9840];
    return;
  }

  sub_1B00DE9AC(v32, v34);
  *&value = 0;
  *(&value + 1) = 0xE000000000000000;
  sub_1B014D01C();
  v129 = "v24@0:8@?<v@?>16";
  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015DFC0);
  v134 = 1;
  sub_1B014D07C();
  v40 = *(&value + 1);
  v14 = value;
  v41 = v133;
  sub_1B014CC4C();
  v42 = sub_1B014CC2C();
  v44 = v43;
  v45 = v130(v41, v36);
  if (v44 >> 60 == 15)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  MEMORY[0x1EEE9AC00](v45);
  *(&v119 - 6) = a1;
  *(&v119 - 5) = v14;
  *(&v119 - 4) = v40;
  *(&v119 - 3) = v42;
  *(&v119 - 2) = v44;
  sub_1B00ED104(sub_1B0144BC0, (&v119 - 8), v42, v44);

  sub_1B00DE9AC(v42, v44);
  if (v124)
  {
    *&value = 0;
    *(&value + 1) = 0xE000000000000000;
    sub_1B014D01C();
    MEMORY[0x1B271E7F0](0xD000000000000013, v129 | 0x8000000000000000);
    v134 = 2;
    sub_1B014D07C();
    v40 = *(&value + 1);
    v14 = value;
    v47 = v133;
    sub_1B014CC4C();
    v48 = sub_1B014CC2C();
    v50 = v49;
    v51 = v130(v47, v36);
    if (v50 >> 60 == 15)
    {
      goto LABEL_77;
    }

    MEMORY[0x1EEE9AC00](v51);
    *(&v119 - 6) = a1;
    *(&v119 - 5) = v14;
    *(&v119 - 4) = v40;
    *(&v119 - 3) = v48;
    *(&v119 - 2) = v50;
    sub_1B00ED104(sub_1B0144BC0, (&v119 - 8), v48, v50);

    sub_1B00DE9AC(v48, v50);
  }

  v52 = v129;
  v53 = v122;
  if (v122 != 38)
  {
    *&value = 0;
    *(&value + 1) = 0xE000000000000000;
    sub_1B014D01C();
    MEMORY[0x1B271E7F0](0xD000000000000013, v52 | 0x8000000000000000);
    v134 = 4;
    sub_1B014D07C();
    v40 = *(&value + 1);
    v128 = value;
    *&value = v121;
    *(&value + 1) = v53;
    FBKSInteraction.AnnotatedContent.IconType.stringValue.getter();
    v14 = v133;
    sub_1B014CC4C();
    v54 = sub_1B014CC2C();
    v56 = v55;
    v130(v14, v36);
    if (v56 >> 60 == 15)
    {
      goto LABEL_78;
    }

    MEMORY[0x1EEE9AC00](v57);
    v58 = v128;
    *(&v119 - 6) = a1;
    *(&v119 - 5) = v58;
    *(&v119 - 4) = v40;
    *(&v119 - 3) = v54;
    *(&v119 - 2) = v56;
    sub_1B00ED104(sub_1B0144BC0, (&v119 - 8), v54, v56);

    sub_1B00DE9AC(v54, v56);
  }

  if (!a9)
  {
    goto LABEL_10;
  }

  v125 = a1;
  v59 = a9 + 64;
  v60 = 1 << *(a9 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v17 = v61 & *(a9 + 64);
  v13 = (v60 + 63) >> 6;

  v63 = 0;
  v123 = a9 + 64;
  v122 = v13;
  v132 = v35;
  v124 = v62;
  while (1)
  {
    if (v17)
    {
      v126 = v39;
      a1 = v63;
      goto LABEL_37;
    }

    do
    {
      a1 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_69:
        swift_once();
        goto LABEL_2;
      }

      if (a1 >= v13)
      {

        goto LABEL_10;
      }

      v17 = *(v59 + 8 * a1);
      ++v63;
    }

    while (!v17);
    v126 = v39;
LABEL_37:
    v74 = (a1 << 10) | (16 * __clz(__rbit64(v17)));
    v75 = (*(v62 + 48) + v74);
    v76 = *v75;
    v77 = v75[1];
    v78 = (*(v62 + 56) + v74);
    v40 = v78[1];
    v127 = *v78;
    *&value = 0;
    *(&value + 1) = 0xE000000000000000;

    sub_1B014D01C();
    MEMORY[0x1B271E7F0](0xD000000000000013, v129 | 0x8000000000000000);
    v134 = 3;
    sub_1B014D07C();
    v79 = *(&value + 1);
    v80 = value;
    *&value = 46;
    *(&value + 1) = 0xE100000000000000;
    MEMORY[0x1B271E7F0](v76, v77);

    v81 = value;
    value = __PAIR128__(v79, v80);

    MEMORY[0x1B271E7F0](v81, *(&v81 + 1));

    v128 = *(&value + 1);
    v82 = value;
    v83 = v133;
    sub_1B014CC4C();
    v14 = sub_1B014CC2C();
    v65 = v84;
    v130(v83, v131);
    if (v65 >> 60 == 15)
    {
      goto LABEL_76;
    }

    v127 = v82;
    v17 &= v17 - 1;

    v85 = v65 >> 62;
    if ((v65 >> 62) <= 1)
    {
      break;
    }

    v39 = v126;
    if (v85 == 2)
    {
      v88 = *(v14 + 16);
      v121 = *(v14 + 24);
      v89 = sub_1B014C95C();
      if (v89)
      {
        v90 = sub_1B014C98C();
        if (__OFSUB__(v88, v90))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v89 += v88 - v90;
      }

      v91 = __OFSUB__(v121, v88);
      v92 = v121 - v88;
      if (!v91)
      {
        v93 = sub_1B014C97C();
        if (v93 >= v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = v93;
        }

        v95 = v94 + v89;
        if (v89)
        {
          v69 = v95;
        }

        else
        {
          v69 = 0;
        }

        v70 = v89;
        v71 = v125;
        v72 = v127;
        v73 = v128;
        goto LABEL_29;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    *(&value + 6) = 0;
    *&value = 0;
    sub_1B014CA2C();
    v102 = sub_1B014CC7C();

    v103 = sub_1B014CC7C();
    LODWORD(v127) = setxattr((v102 + 32), (v103 + 32), &value, 0, 0, 0);

    if (v127)
    {
      v105 = v14;
      v40 = *MEMORY[0x1E696A798];
      v106 = MEMORY[0x1B271E670]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B014F1E0;
      v108 = *MEMORY[0x1E696A578];
      *(inited + 32) = sub_1B014CC1C();
      v109 = inited + 32;
      *(inited + 40) = v110;
      v111 = MEMORY[0x1B271E670]();
      if (!strerror(v111))
      {

        __break(1u);
        goto LABEL_65;
      }

LABEL_66:
      v115 = sub_1B014CD0C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v115;
      *(inited + 56) = v116;
      sub_1B011BEB4(inited);
      swift_setDeallocating();
      sub_1B00EDC14(v109);
      v117 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v118 = sub_1B014CB9C();

      [v117 initWithDomain:v40 code:v106 userInfo:v118];

      swift_willThrow();

      v104 = v105;
      goto LABEL_67;
    }

LABEL_30:

    sub_1B00DE9AC(v14, v65);
    v63 = a1;
    v62 = v124;
    v59 = v123;
    v13 = v122;
  }

  v39 = v126;
  if (v85)
  {
    v96 = v14;
    v97 = v65;
    v98 = v96;
    v121 = v96;
    v96 >>= 32;
    v99 = v96 - v98;
    if (v96 >= v98)
    {
      v100 = sub_1B014C95C();
      if (!v100)
      {
        v64 = 0;
LABEL_22:
        v65 = v97;
        v66 = sub_1B014C97C();
        if (v66 >= v99)
        {
          v67 = v99;
        }

        else
        {
          v67 = v66;
        }

        v68 = v64 + v67;
        if (v64)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        v70 = v64;
        v71 = v125;
        v72 = v127;
        v73 = v128;
        v14 = v121;
LABEL_29:
        sub_1B00EC358(v70, v69, v71, v72, v73, v14, v65);
        if (!v39)
        {
          goto LABEL_30;
        }

        v104 = v14;
LABEL_67:
        sub_1B00DE9AC(v104, v65);
        goto LABEL_10;
      }

      v120 = v100;
      v101 = sub_1B014C98C();
      if (!__OFSUB__(v98, v101))
      {
        v64 = (v98 - v101 + v120);
        goto LABEL_22;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    __break(1u);
    goto LABEL_71;
  }

  *&value = v14;
  WORD4(value) = v65;
  BYTE10(value) = BYTE2(v65);
  BYTE11(value) = BYTE3(v65);
  BYTE12(value) = BYTE4(v65);
  BYTE13(value) = BYTE5(v65);
  sub_1B014CA2C();
  v121 = BYTE6(v65);
  v86 = sub_1B014CC7C();

  v87 = sub_1B014CC7C();
  LODWORD(v127) = setxattr((v86 + 32), (v87 + 32), &value, v121, 0, 0);

  if (!v127)
  {
    goto LABEL_30;
  }

LABEL_65:
  v105 = v14;
  v40 = *MEMORY[0x1E696A798];
  v106 = MEMORY[0x1B271E670]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B014F1E0;
  v112 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B014CC1C();
  v109 = inited + 32;
  *(inited + 40) = v113;
  v114 = MEMORY[0x1B271E670]();
  if (strerror(v114))
  {
    goto LABEL_66;
  }

LABEL_79:

  __break(1u);
}

unint64_t sub_1B0144B34()
{
  result = qword_1EB6C5068;
  if (!qword_1EB6C5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5068);
  }

  return result;
}

id sub_1B0144C24()
{
  v1 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B0144CD8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id FBKSDraftLauncher.__allocating_init(feedbackForm:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FBKSDraftLauncher.init(feedbackForm:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKSDraftLauncher();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1B0144E44(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B00E6C2C(0xD000000000000030, 0x80000001B015E030, aBlock);
    _os_log_impl(&dword_1B00C4000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B271F750](v12, -1, -1);
    MEMORY[0x1B271F750](v11, -1, -1);
  }

  if (a1)
  {
    v28 = a1;
  }

  else
  {
    v28 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  }

  v13 = qword_1EB6C3A78;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1B00EA8E8(a2);
  v16 = sub_1B00EE464(sub_1B014536C, v15);

  if (v16)
  {
    v17 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
    swift_beginAccess();
    v18 = [*(v4 + v17) asJSON];
    v19 = sub_1B014CA8C();
    v21 = v20;

    v22 = sub_1B014CA7C();
    sub_1B00D2024(v19, v21);
    v23 = [v28 asJSON];
    v24 = sub_1B014CA8C();
    v26 = v25;

    v27 = sub_1B014CA7C();
    sub_1B00D2024(v24, v26);
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DFB7C;
      aBlock[3] = &block_descriptor_8;
      a2 = _Block_copy(aBlock);
    }

    [v16 collectFeedbackWithFormData:v22 launchConfigurationData:v27 completion:{a2, v28}];

    swift_unknownObjectRelease();
    _Block_release(a2);
  }

  else
  {
  }
}

void sub_1B01451D4(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a2)
  {
    a2(a1);
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B014545C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B014547C, 0, 0);
}

uint64_t sub_1B014547C()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000025, 0x80000001B015E070, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[2];
  v6 = v0[3];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1B0145694;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000025, 0x80000001B015E070, sub_1B0145AB0, v8, v11);
}

uint64_t sub_1B0145694()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1B01457B0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B00E4B98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B01457B0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1B0145814(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_1B0144E44(a3, sub_1B0145CA0, v11);
}

uint64_t sub_1B0145964(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE7C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE8C();
  }
}

id FBKSDraftLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSDraftLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSDraftLauncher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00DCFAC;

  return v8(a1);
}

uint64_t sub_1B0145C7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B0145CA0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810) - 8) + 80);

  return sub_1B0145964(a1);
}

uint64_t sub_1B0145D1C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1B014CA8C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1B00DE9AC(v4, v9);
}

void *FBKSFeedbackCount.currentCampaign.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign);
  v2 = v1;
  return v1;
}

id sub_1B0145E58(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4(0);

  v5 = sub_1B014CE0C();

  return v5;
}

id FBKSFeedbackCount.__allocating_init(feedbackFiled:errors:currentCampaign:declineCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign] = a3;
  *&v9[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_feedbackFiled] = a1;
  *&v9[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_declineCount] = a4;
  *&v9[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id FBKSFeedbackCount.init(feedbackFiled:errors:currentCampaign:declineCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign] = a3;
  *&v4[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_feedbackFiled] = a1;
  *&v4[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_declineCount] = a4;
  *&v4[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors] = a2;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t static FBKSFeedbackCount.fetchCountsForForm(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  _s15FeedbackService17FBKSFeedbackCountC18fetchCountsForForm10identifier10completionySS_yACSg_So7NSErrorCSgtctFZ_0(a1, a2, sub_1B014614C, v8);
}

void sub_1B01460A4(void *a1, void *a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v8 = a2;
    v5 = a2;
LABEL_3:
    v6 = 1;
    goto LABEL_6;
  }

  if (!a1)
  {
    v5 = _s15FeedbackService9FBKSErrorV7nsError06stringE0So7NSErrorCSS_tFZ_0(0xD000000000000020, 0x80000001B015E540);
    v8 = v5;
    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  v6 = 0;
LABEL_6:
  a3(v5, v6);
}

uint64_t static FBKSFeedbackCount.fetchCountsForForm(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B014617C, 0, 0);
}

uint64_t sub_1B014617C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B0146280;
  v7 = v0[5];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x80000001B015E170, sub_1B014AC88, v4, v7);
}

uint64_t sub_1B0146280()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1B00F02A8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B014639C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B01463B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B014BD7C;
  *(v14 + 24) = v13;

  _s15FeedbackService17FBKSFeedbackCountC18fetchCountsForForm10identifier10completionySS_yACSg_So7NSErrorCSgtctFZ_0(a3, a4, sub_1B014BE30, v14);
}

uint64_t sub_1B0146548(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8);
    return sub_1B014CE8C();
  }
}

uint64_t sub_1B01465C8(void *a1, uint64_t (*a2)(void, void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  return a2(0, a1);
}

void sub_1B0146760(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void))
{
  if (a3)
  {
    v13 = a3;
    v6 = a3;
LABEL_5:
    (a4)(0, v6);

    return;
  }

  if (a2 >> 60 == 15)
  {
    v6 = _s15FeedbackService9FBKSErrorV7nsError06stringE0So7NSErrorCSS_tFZ_0(0xD000000000000020, 0x80000001B015E540);
    v13 = v6;
    goto LABEL_5;
  }

  sub_1B00DE8A4(a1, a2);
  v9 = a1;
  v10 = a2;
  v11 = _s15FeedbackService17FBKSFeedbackCountC8fromJSON4dataACSg10Foundation4DataV_tFZ_0();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = _s15FeedbackService9FBKSErrorV7nsError06stringE0So7NSErrorCSS_tFZ_0(0xD000000000000027, 0x80000001B015E570);
  }

  a4();

  sub_1B00DE9AC(v9, v10);
}

unint64_t FBKSFeedbackCount.debugDescription.getter()
{
  swift_getObjectType();
  v0 = sub_1B014CC5C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B014C84C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1B014C88C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B014C83C();
  sub_1B014C85C();
  sub_1B014AD2C(&qword_1EB6C3F30, v7, type metadata accessor for FBKSFeedbackCount);
  v8 = sub_1B014C86C();
  v10 = v9;
  sub_1B014CC4C();
  v11 = sub_1B014CC3C();
  if (!v12)
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v13 = sub_1B014CB5C();
    __swift_project_value_buffer(v13, qword_1EDAE7828);
    v14 = sub_1B014CB3C();
    v15 = sub_1B014CF4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B00C4000, v14, v15, "Failed to generate JSON string", v16, 2u);
      MEMORY[0x1B271F750](v16, -1, -1);
    }

    v11 = FBKSFeedbackCount.description.getter();
  }

  v17 = v11;
  sub_1B00D2024(v8, v10);

  return v17;
}

unint64_t FBKSFeedbackCount.description.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign);
  if (v1)
  {
    v2 = v1;
    v3 = FBKSCampaign.description.getter();
    MEMORY[0x1B271E7F0](v3);

    MEMORY[0x1B271E7F0](2604, 0xE200000000000000);

    MEMORY[0x1B271E7F0](9, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1B271E7F0](0xA656E6F4E09, 0xE600000000000000);
  }

  MEMORY[0x1B271E7F0](0xD000000000000011, 0x80000001B015E1B0);
  v4 = *(v0 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_feedbackFiled);
  v21 = v0;
  if (v4 >> 62)
  {
    if (sub_1B014D09C())
    {
      v10 = sub_1B014D09C();
      if (!v10)
      {
        goto LABEL_16;
      }

      v5 = v10;
      if (v10 >= 1)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

LABEL_15:
    MEMORY[0x1B271E7F0](0xA656E6F4E09, 0xE600000000000000);
    goto LABEL_16;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_6:
  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B271EB20](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    v9 = FBKSFeedback.description.getter();
    MEMORY[0x1B271E7F0](v9);

    MEMORY[0x1B271E7F0](2604, 0xE200000000000000);

    MEMORY[0x1B271E7F0](9, 0xE100000000000000);
  }

  while (v5 != v6);
LABEL_16:
  MEMORY[0x1B271E7F0](0x3A73726F7272450ALL, 0xE90000000000000ALL);
  v11 = *(v0 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_29:
    MEMORY[0x1B271E7F0](0xA656E6F4E09, 0xE600000000000000);
    goto LABEL_30;
  }

  if (v11 < 0)
  {
    v17 = *(v0 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors);
  }

  if (!sub_1B014D09C())
  {
    goto LABEL_29;
  }

  v18 = sub_1B014D09C();
  if (!v18)
  {
    goto LABEL_30;
  }

  v12 = v18;
  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_18:
  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B271EB20](v13, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = FBKSCampaignError.description.getter();
    MEMORY[0x1B271E7F0](v16);

    MEMORY[0x1B271E7F0](2604, 0xE200000000000000);

    MEMORY[0x1B271E7F0](9, 0xE100000000000000);
  }

  while (v12 != v13);
LABEL_30:
  sub_1B014D01C();

  v22 = *(v21 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_declineCount);
  v19 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v19);

  MEMORY[0x1B271E7F0](10, 0xE100000000000000);
  MEMORY[0x1B271E7F0](0xD00000000000001ALL, 0x80000001B015E1D0);

  return 0xD000000000000012;
}

uint64_t FBKSCampaign.description.getter()
{
  sub_1B014D01C();

  v1 = 0xE800000000000000;
  v2 = *(v0 + OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v1 = 0xE700000000000000;
      v3 = 0x676E69646E6550;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 0x6465696669746F4ELL;
      goto LABEL_12;
    }

LABEL_15:
    v11 = *(v0 + OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state);
    result = sub_1B014D27C();
    __break(1u);
    return result;
  }

  if (v2 == 2)
  {
    v1 = 0xE700000000000000;
    v3 = 0x64657A6F6F6E53;
    goto LABEL_12;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v1 = 0xE700000000000000;
      v3 = 0x64657472656C41;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v1 = 0xEE00707041206E49;
  v3 = 0x20656C6269736956;
LABEL_12:
  MEMORY[0x1B271E7F0](v3, v1);

  MEMORY[0x1B271E7F0](0xD000000000000011, 0x80000001B015E1F0);
  if (qword_1EB6C3AA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB6C5078;
  v5 = sub_1B014CAAC();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B014CC1C();
  v9 = v8;

  MEMORY[0x1B271E7F0](v7, v9);

  MEMORY[0x1B271E7F0](93, 0xE100000000000000);
  return 0x203A65746174735BLL;
}

uint64_t FBKSFeedback.description.getter()
{
  v1 = v0;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0x203A6D726F665BLL, 0xE700000000000000);
  MEMORY[0x1B271E7F0](*(v1 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier), *(v1 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier + 8));
  MEMORY[0x1B271E7F0](0x646C697562207C20, 0xEA0000000000203ALL);
  MEMORY[0x1B271E7F0](*(v1 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build), *(v1 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build + 8));
  MEMORY[0x1B271E7F0](0x203A6469207C20, 0xE700000000000000);
  v10 = *(v0 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_id);
  v2 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v2);

  MEMORY[0x1B271E7F0](0xD000000000000014, 0x80000001B015E210);
  if (qword_1EB6C3AA0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C5078;
  v4 = sub_1B014CAAC();
  v5 = [v3 stringFromDate_];

  v6 = sub_1B014CC1C();
  v8 = v7;

  MEMORY[0x1B271E7F0](v6, v8);

  MEMORY[0x1B271E7F0](93, 0xE100000000000000);
  return 0;
}

uint64_t FBKSCampaignError.description.getter()
{
  v1 = v0;
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](*(v1 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain), *(v1 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain + 8));
  MEMORY[0x1B271E7F0](0x3A65646F63207C20, 0xE900000000000020);
  v10 = *(v0 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_code);
  v2 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v2);

  MEMORY[0x1B271E7F0](0x9C80E2207C20, 0xA600000000000000);
  MEMORY[0x1B271E7F0](*(v1 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription), *(v1 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription + 8));
  MEMORY[0x1B271E7F0](0x6164207C209D80E2, 0xAC000000203A6574);
  if (qword_1EB6C3AA0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C5078;
  v4 = sub_1B014CAAC();
  v5 = [v3 stringFromDate_];

  v6 = sub_1B014CC1C();
  v8 = v7;

  MEMORY[0x1B271E7F0](v6, v8);

  MEMORY[0x1B271E7F0](93, 0xE100000000000000);
  return 0x3A6E69616D6F645BLL;
}

uint64_t sub_1B01477BC()
{
  v1 = 0x43746E6572727563;
  v2 = 0x73726F727265;
  if (*v0 != 2)
  {
    v2 = 0x43656E696C636564;
  }

  if (*v0)
  {
    v1 = 0x6B63616264656566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0147854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B014AEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B014787C(uint64_t a1)
{
  v2 = sub_1B014ACB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01478B8(uint64_t a1)
{
  v2 = sub_1B014ACB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSFeedbackCount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50B0, &qword_1B015A830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014ACB8();
  sub_1B014D35C();
  v14 = *(v3 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign);
  HIBYTE(v13) = 0;
  type metadata accessor for FBKSCampaign(0);
  sub_1B014AD2C(&qword_1EB6C50C0, 255, type metadata accessor for FBKSCampaign);
  sub_1B014D1CC();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_feedbackFiled);
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50C8, &qword_1B015A838);
    sub_1B014AE54(&qword_1EB6C50D0, &qword_1EB6C50D8);
    sub_1B014D21C();
    v14 = *(v3 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors);
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50E0, &qword_1B015A840);
    sub_1B014AD94(&qword_1EB6C50E8, &qword_1EB6C50F0);
    sub_1B014D21C();
    v11 = *(v3 + OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_declineCount);
    LOBYTE(v14) = 3;
    sub_1B014D20C();
  }

  return (*(v6 + 8))(v9, v5);
}

id FBKSFeedbackCount.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50F8, &qword_1B015A848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014ACB8();
  sub_1B014D34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for FBKSCampaign(0);
    v14 = 0;
    sub_1B014AD2C(&qword_1EB6C5100, 255, type metadata accessor for FBKSCampaign);
    sub_1B014D12C();
    *&v1[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_currentCampaign] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50C8, &qword_1B015A838);
    v14 = 1;
    sub_1B014AE54(&qword_1EB6C5108, &qword_1EB6C5110);
    sub_1B014D17C();
    *&v1[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_feedbackFiled] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C50E0, &qword_1B015A840);
    v14 = 2;
    sub_1B014AD94(&qword_1EB6C5118, &qword_1EB6C5120);
    sub_1B014D17C();
    *&v1[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_errors] = v15;
    LOBYTE(v15) = 3;
    *&v1[OBJC_IVAR___FBKSFeedbackCount_FrameworkPrivateName_declineCount] = sub_1B014D16C();
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t FBKSCampaignState.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x676E69646E6550;
    }

    if (a1 == 1)
    {
      return 0x6465696669746F4ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x64657A6F6F6E53;
      case 3:
        return 0x20656C6269736956;
      case 4:
        return 0x64657472656C41;
    }
  }

  result = sub_1B014D27C();
  __break(1u);
  return result;
}

unint64_t sub_1B01481F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B014B068(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B01482D8()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    switch(v1)
    {
      case 2:
        return 0x64657A6F6F6E53;
      case 3:
        return 0x20656C6269736956;
      case 4:
        return 0x64657472656C41;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    return 0x676E69646E6550;
  }

  if (v1 != 1)
  {
LABEL_13:
    v3 = *v0;
    result = sub_1B014D27C();
    __break(1u);
    return result;
  }

  return 0x6465696669746F4ELL;
}

id FBKSCampaign.__allocating_init(state:updatedAt:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state] = a1;
  v6 = OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_updatedAt;
  v7 = sub_1B014CADC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id FBKSCampaign.init(state:updatedAt:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state] = a1;
  v6 = OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_updatedAt;
  v7 = sub_1B014CADC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id FBKSCampaign.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B014866C()
{
  if (*v0)
  {
    result = 0x4164657461647075;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1B01486A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

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

uint64_t sub_1B0148788(uint64_t a1)
{
  v2 = sub_1B014B078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01487C4(uint64_t a1)
{
  v2 = sub_1B014B078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSCampaign.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5128, &qword_1B015A850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B078();
  sub_1B014D35C();
  v13 = *(v3 + OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state);
  v12[7] = 0;
  sub_1B014B0CC();
  sub_1B014D21C();
  if (!v2)
  {
    v12[6] = 1;
    sub_1B014CADC();
    sub_1B014AD2C(&qword_1EB6C5010, 255, MEMORY[0x1E6969530]);
    sub_1B014D21C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *FBKSCampaign.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B014CADC();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5140, &qword_1B015A858);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B078();
  v15 = v26;
  sub_1B014D34C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v5;
    v16 = v24;
    v28 = 0;
    sub_1B014B120();
    v17 = v25;
    sub_1B014D17C();
    *(v2 + OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_state) = v29;
    LOBYTE(v29) = 1;
    sub_1B014AD2C(&qword_1EB6C5020, 255, MEMORY[0x1E6969530]);
    v22 = v8;
    v18 = v26;
    sub_1B014D17C();
    (*(v23 + 32))(v2 + OBJC_IVAR___FBKSCampaign_FrameworkPrivateName_updatedAt, v22, v18);
    v27.receiver = v2;
    v27.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v27, sel_init);
    (*(v16 + 8))(v12, v17);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v14;
}

uint64_t FBKSFeedback.formIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier);
  v2 = *(v0 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier + 8);

  return v1;
}

uint64_t FBKSFeedback.build.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build);
  v2 = *(v0 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build + 8);

  return v1;
}

id FBKSFeedback.__allocating_init(formIdentifier:submissionDate:build:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_submissionDate;
  v16 = sub_1B014CADC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v13[v15], a3, v16);
  v18 = &v13[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build];
  *v18 = a4;
  *(v18 + 1) = a5;
  *&v13[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_id] = a6;
  v21.receiver = v13;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a3, v16);
  return v19;
}

id FBKSFeedback.init(formIdentifier:submissionDate:build:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_submissionDate;
  v16 = sub_1B014CADC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a3, v16);
  v18 = &v6[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build];
  *v18 = a4;
  *(v18 + 1) = a5;
  *&v6[OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_id] = a6;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a3, v16);
  return v19;
}

uint64_t sub_1B0149194()
{
  v1 = 0x6E6564496D726F66;
  v2 = 0x646C697562;
  if (*v0 != 2)
  {
    v2 = 25705;
  }

  if (*v0)
  {
    v1 = 0x697373696D627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0149218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B014BA40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0149240(uint64_t a1)
{
  v2 = sub_1B014B174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B014927C(uint64_t a1)
{
  v2 = sub_1B014B174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSFeedback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5150, &qword_1B015A860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B174();
  sub_1B014D35C();
  v11 = *(v3 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier);
  v12 = *(v3 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier + 8);
  v17[15] = 0;
  sub_1B014D1DC();
  if (!v2)
  {
    v17[14] = 1;
    sub_1B014CADC();
    sub_1B014AD2C(&qword_1EB6C5010, 255, MEMORY[0x1E6969530]);
    sub_1B014D21C();
    v13 = *(v3 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build);
    v14 = *(v3 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build + 8);
    v17[13] = 2;
    sub_1B014D1DC();
    v15 = *(v3 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_id);
    v17[12] = 3;
    sub_1B014D20C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *FBKSFeedback.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B014CADC();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5160, &qword_1B015A868);
  v7 = *(v28 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v28);
  v10 = v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B174();
  sub_1B014D34C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v16 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = a1;
    v13 = v7;
    v32 = 0;
    v14 = v28;
    v15 = sub_1B014D13C();
    v19 = (v30 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_formIdentifier);
    *v19 = v15;
    v19[1] = v20;
    v26[1] = v19;
    v32 = 1;
    sub_1B014AD2C(&qword_1EB6C5020, 255, MEMORY[0x1E6969530]);
    sub_1B014D17C();
    (*(v27 + 32))(v30 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_submissionDate, v6, v3);
    v32 = 2;
    v21 = sub_1B014D13C();
    v22 = (v30 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_build);
    *v22 = v21;
    v22[1] = v23;
    v32 = 3;
    v24 = sub_1B014D16C();
    v25 = v30;
    *(v30 + OBJC_IVAR___FBKSFeedback_FrameworkPrivateName_id) = v24;
    v31.receiver = v25;
    v31.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v31, sel_init);
    (v13[1])(v10, v14);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return v7;
}

id sub_1B0149A74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B014CADC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10 = sub_1B014CAAC();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_1B0149B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B014CADC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FBKSCampaignError.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain);
  v2 = *(v0 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain + 8);

  return v1;
}

id sub_1B0149C74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1B014CC0C();

  return v6;
}

uint64_t FBKSCampaignError.errorDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription);
  v2 = *(v0 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription + 8);

  return v1;
}

id FBKSCampaignError.__allocating_init(code:domain:errorDescription:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(v6);
  v13 = OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_date;
  v14 = sub_1B014CADC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a6, v14);
  *&v12[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_code] = a1;
  v16 = &v12[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v12[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription];
  *v17 = a4;
  *(v17 + 1) = a5;
  v21.receiver = v12;
  v21.super_class = v6;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v15 + 8))(a6, v14);
  return v18;
}

id FBKSCampaignError.init(code:domain:errorDescription:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_date;
  v14 = sub_1B014CADC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v6[v13], a6, v14);
  *&v6[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_code] = a1;
  v16 = &v6[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v6[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription];
  *v17 = a4;
  *(v17 + 1) = a5;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v15 + 8))(a6, v14);
  return v18;
}

id sub_1B0149F74(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B014CC0C();

  return v5;
}

unint64_t sub_1B014A044()
{
  v1 = 1702125924;
  v2 = 0x6E69616D6F64;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701080931;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B014A0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B014BBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B014A0D8(uint64_t a1)
{
  v2 = sub_1B014B1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B014A114(uint64_t a1)
{
  v2 = sub_1B014B1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id _s15FeedbackService12FBKSCampaignCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FBKSCampaignError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5168, &qword_1B015A870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B1C8();
  sub_1B014D35C();
  v17[15] = 0;
  sub_1B014CADC();
  sub_1B014AD2C(&qword_1EB6C5010, 255, MEMORY[0x1E6969530]);
  sub_1B014D21C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_code);
  v17[14] = 1;
  sub_1B014D20C();
  v12 = *(v3 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain);
  v13 = *(v3 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain + 8);
  v17[13] = 2;
  sub_1B014D1DC();
  v15 = *(v3 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription);
  v16 = *(v3 + OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription + 8);
  v17[12] = 3;
  sub_1B014D1DC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t *FBKSCampaignError.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B014CADC();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5178, &qword_1B015A878);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B014B1C8();
  sub_1B014D34C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v14 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    v13 = v27;
    v32 = 0;
    sub_1B014AD2C(&qword_1EB6C5020, 255, MEMORY[0x1E6969530]);
    sub_1B014D17C();
    v17 = *(v13 + 32);
    v18 = v29;
    v26[1] = OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_date;
    v17(&v29[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_date], v6, v3);
    v32 = 1;
    *&v18[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_code] = sub_1B014D16C();
    v32 = 2;
    v19 = sub_1B014D13C();
    v20 = a1;
    v21 = &v18[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_domain];
    *v21 = v19;
    v21[1] = v22;
    v32 = 3;
    v23 = sub_1B014D13C();
    v24 = &v18[OBJC_IVAR___FBKSCampaignError_FrameworkPrivateName_errorDescription];
    *v24 = v23;
    v24[1] = v25;
    v31.receiver = v18;
    v31.super_class = ObjectType;
    a1 = objc_msgSendSuper2(&v31, sel_init);
    (*(v12 + 8))(v10, v28);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return a1;
}

uint64_t sub_1B014A8F4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_1B014A978()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EB6C5078 = v0;
  return result;
}

void _s15FeedbackService17FBKSFeedbackCountC18fetchCountsForForm10identifier10completionySS_yACSg_So7NSErrorCSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0xD00000000000002ALL, 0x80000001B015E510, v16);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  if (qword_1EB6C3A78 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1B00EE464(sub_1B014BE08, v11);

  if (v12)
  {
    v13 = sub_1B014CC0C();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v16[4] = sub_1B014BE10;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1B0145D1C;
    v16[3] = &block_descriptor_9;
    v15 = _Block_copy(v16);

    [v12 fetchCountsForFormWithIdentifier:v13 completion:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
  }
}

unint64_t sub_1B014ACB8()
{
  result = qword_1EB6C50B8;
  if (!qword_1EB6C50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C50B8);
  }

  return result;
}

uint64_t sub_1B014AD2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B014AD94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C50E0, &qword_1B015A840);
    sub_1B014AD2C(a2, 255, type metadata accessor for FBKSCampaignError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B014AE54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C50C8, &qword_1B015A838);
    sub_1B014AD2C(a2, 255, type metadata accessor for FBKSFeedback);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B014AEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43746E6572727563 && a2 == 0xEF6E676961706D61;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xED000064656C6946 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43656E696C636564 && a2 == 0xEC000000746E756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

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

unint64_t sub_1B014B068(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B014B078()
{
  result = qword_1EB6C5130;
  if (!qword_1EB6C5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5130);
  }

  return result;
}

unint64_t sub_1B014B0CC()
{
  result = qword_1EB6C5138;
  if (!qword_1EB6C5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5138);
  }

  return result;
}

unint64_t sub_1B014B120()
{
  result = qword_1EB6C5148;
  if (!qword_1EB6C5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5148);
  }

  return result;
}

unint64_t sub_1B014B174()
{
  result = qword_1EB6C5158;
  if (!qword_1EB6C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5158);
  }

  return result;
}

unint64_t sub_1B014B1C8()
{
  result = qword_1EB6C5170;
  if (!qword_1EB6C5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5170);
  }

  return result;
}

unint64_t sub_1B014B220()
{
  result = qword_1EB6C5180;
  if (!qword_1EB6C5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5180);
  }

  return result;
}

uint64_t sub_1B014B2E0()
{
  result = sub_1B014CADC();
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

uint64_t sub_1B014B3DC()
{
  result = sub_1B014CADC();
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

uint64_t sub_1B014B4E4()
{
  result = sub_1B014CADC();
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

unint64_t sub_1B014B624()
{
  result = qword_1EB6C51B8;
  if (!qword_1EB6C51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51B8);
  }

  return result;
}

unint64_t sub_1B014B67C()
{
  result = qword_1EB6C51C0;
  if (!qword_1EB6C51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51C0);
  }

  return result;
}

unint64_t sub_1B014B6D4()
{
  result = qword_1EB6C51C8;
  if (!qword_1EB6C51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51C8);
  }

  return result;
}

unint64_t sub_1B014B72C()
{
  result = qword_1EB6C51D0;
  if (!qword_1EB6C51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51D0);
  }

  return result;
}

unint64_t sub_1B014B784()
{
  result = qword_1EB6C51D8;
  if (!qword_1EB6C51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51D8);
  }

  return result;
}

unint64_t sub_1B014B7DC()
{
  result = qword_1EB6C51E0;
  if (!qword_1EB6C51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51E0);
  }

  return result;
}

unint64_t sub_1B014B834()
{
  result = qword_1EB6C51E8;
  if (!qword_1EB6C51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51E8);
  }

  return result;
}

unint64_t sub_1B014B88C()
{
  result = qword_1EB6C51F0;
  if (!qword_1EB6C51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51F0);
  }

  return result;
}

unint64_t sub_1B014B8E4()
{
  result = qword_1EB6C51F8;
  if (!qword_1EB6C51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C51F8);
  }

  return result;
}

unint64_t sub_1B014B93C()
{
  result = qword_1EB6C5200;
  if (!qword_1EB6C5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5200);
  }

  return result;
}

unint64_t sub_1B014B994()
{
  result = qword_1EB6C5208;
  if (!qword_1EB6C5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5208);
  }

  return result;
}

unint64_t sub_1B014B9EC()
{
  result = qword_1EB6C5210;
  if (!qword_1EB6C5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5210);
  }

  return result;
}

uint64_t sub_1B014BA40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496D726F66 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697373696D627573 && a2 == 0xEE00657461446E6FLL || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

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

uint64_t sub_1B014BBA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015E4F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

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

unint64_t sub_1B014BD28()
{
  result = qword_1EB6C5218;
  if (!qword_1EB6C5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C5218);
  }

  return result;
}

uint64_t sub_1B014BD7C(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8) - 8) + 80);

  return sub_1B0146548(a1, a2 & 1);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}