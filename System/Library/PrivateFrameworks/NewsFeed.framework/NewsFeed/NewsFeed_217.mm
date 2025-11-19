uint64_t FormatHeadlineTrackDurationFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FormatHeadlineTrackProgressFormat.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

BOOL _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v48[0] = *a1;
  v48[1] = v3;
  v48[2] = v5;
  v48[3] = v6;
  v48[4] = v7;
  v48[5] = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v52 = v13;
  v53 = v12;
  v54 = v15;
  v55 = v14;
  v56 = v16;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (v16 == 3)
        {
          goto LABEL_92;
        }

        goto LABEL_20;
      }

      if (!(v5 | v3 | v4 | v6 | v7 | v8))
      {
        if (v16 == 4 && !(v13 | v11 | v10 | v12 | v15 | v14))
        {
          goto LABEL_92;
        }

        goto LABEL_20;
      }

      v23 = v5 | v3 | v6 | v7 | v8;
      if (v4 != 1 || v23)
      {
        if (v4 != 2 || v23)
        {
          if (v4 != 3 || v23)
          {
            if (v4 != 4 || v23)
            {
              if (v4 != 5 || v23)
              {
                if (v4 != 6 || v23)
                {
                  if (v4 != 7 || v23)
                  {
                    if (v4 != 8 || v23)
                    {
                      if (v4 != 9 || v23)
                      {
                        if (v4 != 10 || v23)
                        {
                          if (v4 != 11 || v23)
                          {
                            if (v4 != 12 || v23)
                            {
                              if (v4 != 13 || v23)
                              {
                                if (v4 != 14 || v23)
                                {
                                  if (v16 != 4 || v10 != 15)
                                  {
                                    goto LABEL_20;
                                  }
                                }

                                else if (v16 != 4 || v10 != 14)
                                {
                                  goto LABEL_20;
                                }
                              }

                              else if (v16 != 4 || v10 != 13)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v16 != 4 || v10 != 12)
                            {
                              goto LABEL_20;
                            }
                          }

                          else if (v16 != 4 || v10 != 11)
                          {
                            goto LABEL_20;
                          }
                        }

                        else if (v16 != 4 || v10 != 10)
                        {
                          goto LABEL_20;
                        }
                      }

                      else if (v16 != 4 || v10 != 9)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v16 != 4 || v10 != 8)
                    {
                      goto LABEL_20;
                    }
                  }

                  else if (v16 != 4 || v10 != 7)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v16 != 4 || v10 != 6)
                {
                  goto LABEL_20;
                }
              }

              else if (v16 != 4 || v10 != 5)
              {
                goto LABEL_20;
              }
            }

            else if (v16 != 4 || v10 != 4)
            {
              goto LABEL_20;
            }
          }

          else if (v16 != 4 || v10 != 3)
          {
            goto LABEL_20;
          }
        }

        else if (v16 != 4 || v10 != 2)
        {
          goto LABEL_20;
        }
      }

      else if (v16 != 4 || v10 != 1)
      {
        goto LABEL_20;
      }

      if (!(v13 | v11 | v12 | v15 | v14))
      {
LABEL_92:
        sub_1D6ED1C68(v48, sub_1D6ED22C0);
        return 1;
      }

      goto LABEL_20;
    }

    if (v16 == 2)
    {
      sub_1D6ED1C68(v48, sub_1D6ED22C0);
      return ((v10 ^ v4) & 1) == 0;
    }

LABEL_20:
    sub_1D5E1DC48(v10, v11, v13, v12, v15, v14, v16);
    sub_1D6ED1C68(v48, sub_1D6ED22C0);
    return 0;
  }

  if (v9)
  {
    if (v16 == 1)
    {
      v42 = v4;
      v43 = v3;
      v44 = v5;
      v45 = v6;
      v46 = v7;
      v47 = v8;
      v36 = v10;
      v37 = v11;
      v38 = v13;
      v39 = v12;
      v40 = v15;
      v41 = v14;
      v24 = v15;
      v25 = v3;
      v26 = v5;
      v33 = v6;
      v35 = v8;
      v27 = v7;
      v29 = v7;
      sub_1D5E1DC48(v10, v11, v13, v12, v24, v14, 1u);
      sub_1D5E1DC48(v4, v25, v26, v33, v27, v35, 1u);
      sub_1D5E1DC48(v10, v11, v13, v12, v24, v14, 1u);
      sub_1D5E1DC48(v4, v25, v26, v33, v29, v35, 1u);
      v22 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v42, &v36);
      sub_1D6ED1C68(v48, sub_1D6ED22C0);
      sub_1D5E1E074(v10, v11, v13, v12, v24, v14, 1u);
      sub_1D5E1E074(v4, v25, v26, v33, v29, v35, 1u);
      return v22;
    }

    goto LABEL_19;
  }

  if (v16)
  {
LABEL_19:
    sub_1D5E1DC5C(v4, v3, v5);
    goto LABEL_20;
  }

  v42 = v4;
  v43 = v3;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v36 = v10;
  v37 = v11;
  v38 = v13;
  v39 = v12;
  v40 = v15;
  v41 = v14;
  v17 = v3;
  v30 = v3;
  v31 = v5;
  v18 = v5;
  v32 = v6;
  v34 = v8;
  v19 = v7;
  sub_1D5E1DC48(v10, v11, v13, v12, v15, v14, 0);
  v20 = v17;
  v21 = v19;
  sub_1D5E1DC48(v4, v20, v18, v32, v19, v34, 0);
  sub_1D5E1DC48(v10, v11, v13, v12, v15, v14, 0);
  sub_1D5E1DC48(v4, v30, v31, v32, v19, v34, 0);
  v22 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v42, &v36);
  sub_1D6ED1C68(v48, sub_1D6ED22C0);
  sub_1D5E1E074(v10, v11, v13, v12, v15, v14, 0);
  sub_1D5E1E074(v4, v30, v31, v32, v21, v34, 0);
  return v22;
}

uint64_t sub_1D6ED1C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6ED1CC8()
{
  if (!qword_1EDF2B4A8)
  {
    sub_1D5C0BF40();
    v0 = type metadata accessor for FormatCellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2B4A8);
    }
  }
}

uint64_t sub_1D6ED1D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C1F7FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6ED1D94(uint64_t a1)
{
  result = sub_1D6ED1DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED1DBC()
{
  result = qword_1EC897C88;
  if (!qword_1EC897C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C88);
  }

  return result;
}

unint64_t sub_1D6ED1E50()
{
  result = qword_1EC897C90;
  if (!qword_1EC897C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C90);
  }

  return result;
}

unint64_t sub_1D6ED1EA8()
{
  result = qword_1EC897C98;
  if (!qword_1EC897C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C98);
  }

  return result;
}

unint64_t sub_1D6ED1EFC(uint64_t a1)
{
  result = sub_1D6ED1F24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED1F24()
{
  result = qword_1EC897CA0;
  if (!qword_1EC897CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CA0);
  }

  return result;
}

unint64_t sub_1D6ED1FBC()
{
  result = qword_1EC897CA8;
  if (!qword_1EC897CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CA8);
  }

  return result;
}

unint64_t sub_1D6ED2010(uint64_t a1)
{
  result = sub_1D6ED2038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ED2038()
{
  result = qword_1EC897CB0;
  if (!qword_1EC897CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CB0);
  }

  return result;
}

uint64_t sub_1D6ED20CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6ED2120(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D6ED21D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6ED2218()
{
  if (!qword_1EC897CC0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897CC0);
    }
  }
}

unint64_t sub_1D6ED226C()
{
  result = qword_1EC897CC8;
  if (!qword_1EC897CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CC8);
  }

  return result;
}

void sub_1D6ED22C0()
{
  if (!qword_1EC897CD0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897CD0);
    }
  }
}

NewsFeed::WebArchiveRequest __swiftcall WebArchiveRequest.init(resourceID:params:)(Swift::String resourceID, Swift::String_optional params)
{
  v2->value = resourceID;
  v2[1] = params;
  result.params = params;
  result.resourceID = resourceID;
  return result;
}

uint64_t WebArchiveServiceType.resolve(webArchives:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = FCCurrentQoSOrUtilityIfMain();
  v7 = *(a3 + 16);

  return v7(a1, v6, a2, a3);
}

uint64_t WebArchiveServiceType.resolve(webArchive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v6 = FCCurrentQoSOrUtilityIfMain();
  return (*(a3 + 8))(v8, v6, a2, a3);
}

uint64_t WebArchiveService.__allocating_init(resourceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B63F14(a1, v2 + 16);
  return v2;
}

uint64_t WebArchiveRequest.resourceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebArchiveRequest.params.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebArchive.params.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebArchive.archiveBaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebArchive() + 24);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebArchive.archiveIndexFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebArchive() + 28);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebArchive.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebArchive.init(resourceID:params:archiveBaseURL:archiveIndexFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for WebArchive();
  v11 = *(v10 + 24);
  v12 = sub_1D72585BC();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a7[v11], a5, v12);
  v13 = &a7[*(v10 + 28)];

  return v15(v13, a6, v12);
}

uint64_t type metadata accessor for WebArchive()
{
  result = qword_1EDF343C0;
  if (!qword_1EDF343C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebArchiveService.resolve(webArchive:qualityOfService:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = sub_1D725B92C();
  type metadata accessor for WebArchive();
  v7 = sub_1D725BA8C();

  return v7;
}

uint64_t sub_1D6ED283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B49D08(0, &unk_1EDF020B8, &type metadata for WebArchiveRequest, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);

  sub_1D725BDCC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a6;

  v14 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v15 = sub_1D725BA8C();

  return v15;
}

uint64_t WebArchiveService.resolve(webArchives:qualityOfService:)(uint64_t a1, uint64_t a2)
{
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = a2;

  v6 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v7 = sub_1D725BA8C();

  return v7;
}

uint64_t sub_1D6ED2B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 16);

  if (v8 && (v9 = sub_1D5B69D90(a2, a3), (v10 & 1) != 0))
  {
    v11 = v9;

    v12 = *(v7 + 56);
    v13 = type metadata accessor for WebArchive();
    return sub_1D6ED4114(v12 + *(*(v13 - 8) + 72) * v11, a4);
  }

  else
  {
    sub_1D6ED40C0();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1D6ED2C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B68374(a1 + 16, v17);
  v6 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v7, 0);
    v8 = v20;
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  v15 = ResourceServiceType.fetchResources(identifiers:qualityOfService:)(v8, a3, v6, v5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

void sub_1D6ED2D7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6ED2DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v50 = a5;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - v14;
  sub_1D6ED3F7C(0, qword_1EDF34388, type metadata accessor for WebArchive, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v50 - v18;
  v67 = type metadata accessor for WebArchive();
  v20 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v21);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v71[0] = a2;
  sub_1D5B49D08(0, &qword_1EDF1B278, &type metadata for WebArchiveRequest, MEMORY[0x1E69E62F8]);
  sub_1D6ED3E10();
  result = sub_1D72623CC();
  v68 = v5;
  v72 = *(result + 16);
  if (v72)
  {
    v62 = v15;
    v63 = v8;
    v24 = v20;
    v25 = 0;
    v54 = (v9 + 8);
    v55 = (v9 + 32);
    v70 = (v24 + 56);
    v51 = v24;
    v53 = (v24 + 48);
    v26 = (result + 56);
    v66 = MEMORY[0x1E69E7CC0];
    v52 = xmmword_1D7273AE0;
    v27 = v67;
    v28 = v64;
    v29 = result;
    v56 = v19;
    v61 = result;
    while (1)
    {
      if (v25 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      if (!*(v28 + 16))
      {
        goto LABEL_5;
      }

      v30 = *(v26 - 3);
      v31 = *(v26 - 2);
      v32 = *v26;
      v69 = *(v26 - 1);

      swift_bridgeObjectRetain_n();
      v33 = sub_1D5B69D90(v30, v31);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = *(*(v28 + 56) + 8 * v33);
      v36 = [v35 fileURL];
      if (!v36)
      {

        v27 = v67;
        goto LABEL_4;
      }

      v65 = v35;
      v37 = v19;
      v38 = v58;
      v39 = v36;
      sub_1D72584EC();

      v40 = v62;
      v41 = v38;
      v42 = v63;
      (*v55)(v62, v41, v63);
      v71[0] = v30;
      v71[1] = v31;
      v43 = v68;
      v71[2] = v69;
      v71[3] = v32;
      sub_1D6ED351C(v71, v40, v37);
      v68 = v43;
      if (v43)
      {
        if (qword_1EDF1BB50 != -1)
        {
          swift_once();
        }

        sub_1D7262EBC();
        sub_1D6ED3F7C(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v44 = swift_allocObject();
        *(v44 + 16) = v52;
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = sub_1D5B7E2C0();
        *(v44 + 32) = v30;
        *(v44 + 40) = v31;
        sub_1D725C30C();

        (*v54)(v62, v63);
        v68 = 0;
        v45 = 1;
      }

      else
      {

        (*v54)(v40, v42);

        v45 = 0;
      }

      v19 = v56;
      v28 = v64;
      v29 = v61;
      v27 = v67;
      (*v70)(v56, v45, 1, v67);
      if ((*v53)(v19, 1, v27) != 1)
      {
        sub_1D6ED3F18(v19, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D6996614(0, v66[2] + 1, 1, v66);
        }

        v47 = v66[2];
        v46 = v66[3];
        if (v47 >= v46 >> 1)
        {
          v66 = sub_1D6996614(v46 > 1, v47 + 1, 1, v66);
        }

        v48 = v66;
        v66[2] = v47 + 1;
        result = sub_1D6ED3F18(v57, v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v47);
        v28 = v64;
        v29 = v61;
        goto LABEL_7;
      }

LABEL_6:
      result = sub_1D6ED3E8C(v19);
LABEL_7:
      ++v25;
      v26 += 4;
      if (v72 == v25)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    swift_bridgeObjectRelease_n();
LABEL_5:
    (*v70)(v19, 1, 1, v27);
    goto LABEL_6;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v71[0] = v66;
  sub_1D6ED3F7C(0, &qword_1EDF1B438, type metadata accessor for WebArchive, MEMORY[0x1E69E62F8]);
  sub_1D6ED3FE0();
  sub_1D6ED4068();
  v49 = sub_1D72623BC();

  *v50 = v49;
  return result;
}

uint64_t sub_1D6ED351C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = a3;
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[3];
  v58 = a1[2];
  v59 = v24;

  v57 = a2;
  sub_1D72584BC();
  v62 = v22;
  v63 = v23;
  sub_1D725849C();
  v60 = v6;
  v25 = *(v6 + 8);
  v25(v17, v5);
  sub_1D72584AC();
  sub_1D725849C();
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v64 = v9;
  sub_1D72583BC();
  v28 = sub_1D726203C();

  LODWORD(a1) = [v27 fileExistsAtPath_];

  if (a1)
  {
    v25(v13, v5);
    v29 = v64;
LABEL_3:
    v30 = type metadata accessor for WebArchive();
    v31 = v61;
    v32 = *(v60 + 32);
    v32(&v61[*(v30 + 24)], v21, v5);
    v32(&v31[*(v30 + 28)], v29, v5);
    v33 = v63;
    *v31 = v62;
    *(v31 + 1) = v33;
    v34 = v59;
    *(v31 + 2) = v58;
    *(v31 + 3) = v34;
  }

  v55 = v25;
  v36 = [v26 defaultManager];
  v37 = sub_1D725844C();
  v38 = sub_1D725844C();
  v65[0] = 0;
  v39 = [v36 copyItemAtURL:v37 toURL:v38 error:v65];

  v40 = v65[0];
  v56 = v13;
  if (v39)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
    v42 = v40;
    v43 = [v41 init];
    v44 = sub_1D725844C();
    v45 = sub_1D725844C();
    v46 = [v43 unarchive:v44 toLocation:v45];

    v47 = [v26 defaultManager];
    v29 = v64;
    sub_1D72583BC();
    v48 = sub_1D726203C();

    v49 = [v47 fileExistsAtPath_];

    if (v46 && v49)
    {
      v55(v56, v5);

      goto LABEL_3;
    }

    sub_1D6ED40C0();
    swift_allocError();
    v51 = v63;
    *v52 = v62;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v50 = v65[0];

    sub_1D725829C();

    swift_willThrow();
    v29 = v64;
  }

  v53 = v55;
  v55(v29, v5);
  v53(v56, v5);
  return (v53)(v21, v5);
}

uint64_t WebArchiveService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6ED3A4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = sub_1D725B92C();
  type metadata accessor for WebArchive();
  v7 = sub_1D725BA8C();

  return v7;
}

uint64_t sub_1D6ED3B64(uint64_t a1, uint64_t a2)
{
  v9 = *v2;
  sub_1D6ED2D7C(0, &qword_1EDF1B800, sub_1D5F7DC80);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v9;
  v5[4] = a2;

  v6 = sub_1D725B92C();
  sub_1D6ED2D7C(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  v7 = sub_1D725BA8C();

  return v7;
}

void sub_1D6ED3CF4()
{
  sub_1D5B49D08(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D72585BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D6ED3E10()
{
  result = qword_1EDF1B270;
  if (!qword_1EDF1B270)
  {
    sub_1D5B49D08(255, &qword_1EDF1B278, &type metadata for WebArchiveRequest, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B270);
  }

  return result;
}

uint64_t sub_1D6ED3E8C(uint64_t a1)
{
  sub_1D6ED3F7C(0, qword_1EDF34388, type metadata accessor for WebArchive, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6ED3F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebArchive();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6ED3F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6ED3FE0()
{
  result = qword_1EDF1B430;
  if (!qword_1EDF1B430)
  {
    sub_1D6ED3F7C(255, &qword_1EDF1B438, type metadata accessor for WebArchive, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B430);
  }

  return result;
}

unint64_t sub_1D6ED4068()
{
  result = qword_1EDF343D0;
  if (!qword_1EDF343D0)
  {
    type metadata accessor for WebArchive();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF343D0);
  }

  return result;
}

unint64_t sub_1D6ED40C0()
{
  result = qword_1EC897CD8;
  if (!qword_1EC897CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CD8);
  }

  return result;
}

uint64_t sub_1D6ED4114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebArchive();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6ED41DC()
{
  type metadata accessor for FeedGroupEmitTaskResult();
  if (v0 <= 0x3F)
  {
    sub_1D6ED4678();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D6ED4254(unsigned __int8 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 <= ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v4 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFF8) + 48 > v4)
  {
    v4 = (v4 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v5 = (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = 8;
  if (v5)
  {
    v6 = v5;
  }

  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v7 = -253;
  }

  else
  {
    v7 = -251;
  }

  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 253;
  }

  else
  {
    v8 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_39;
  }

  v9 = v6 | 1;
  v10 = (a2 + v7 + 255) >> 8;
  if ((v6 | 1) <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_35;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    v18 = a1[v6] ^ 0xFF;
    if (v8 > v18)
    {
      return v18 + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_39;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_39;
  }

LABEL_35:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v8 + (v17 | v16) + 1;
}

void sub_1D6ED4438(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 48 > v6)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v7 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!v7)
  {
    v7 = 8;
  }

  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v8 = 253;
  }

  else
  {
    v8 = 251;
  }

  v9 = v7 | 1;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v7 & 0xFFFFFFF8) != 0)
    {
      v10 = -253;
    }

    else
    {
      v10 = -251;
    }

    v11 = (a3 + v10 + 255) >> 8;
    if (v9 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_28:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_43;
        }

        *&a1[v9] = 0;
      }

      else if (v14)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        a1[v7] = -a2;
        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v9);
  if (v9 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_38:
      if (v14 == 2)
      {
        *&a1[v9] = v16;
      }

      else
      {
        *&a1[v9] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_38;
    }
  }

  if (v14)
  {
    a1[v9] = v16;
  }
}

void sub_1D6ED4678()
{
  if (!qword_1EDF194B0)
  {
    sub_1D5BA6EF4();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194B0);
    }
  }
}

uint64_t sub_1D6ED46E0(uint64_t a1)
{
  v2 = sub_1D6ED48C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED471C(uint64_t a1)
{
  v2 = sub_1D6ED48C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6ED4758(void *a1)
{
  sub_1D6ED4864();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED48C0();
  sub_1D7264B5C();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D6ED4864()
{
  if (!qword_1EC897CE0)
  {
    sub_1D6ED48C0();
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897CE0);
    }
  }
}

unint64_t sub_1D6ED48C0()
{
  result = qword_1EC897CE8;
  if (!qword_1EC897CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CE8);
  }

  return result;
}

unint64_t sub_1D6ED4928()
{
  result = qword_1EC897CF0;
  if (!qword_1EC897CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CF0);
  }

  return result;
}

unint64_t sub_1D6ED4980()
{
  result = qword_1EC897CF8;
  if (!qword_1EC897CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897CF8);
  }

  return result;
}

uint64_t sub_1D6ED49D4(void *a1, uint64_t a2)
{
  sub_1D6ED53EC(0, &qword_1EC897D18, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED52F4();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D6ED5348();
  sub_1D6ED5450(&qword_1EC897D28, sub_1D6ED5398);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6ED4B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696F706B61657262 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6ED4C10(uint64_t a1)
{
  v2 = sub_1D6ED52F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED4C4C(uint64_t a1)
{
  v2 = sub_1D6ED52F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6ED4C88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6ED4FB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6ED4CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(MEMORY[0x1E69E7CC0]);
  v16[0] = a1;
  sub_1D6ED4F64();
  v4 = sub_1D72578BC();
  v6 = v5;

  sub_1D5E3E824(v4, v6);
  v7 = sub_1D60DA9EC(v4, v6);
  if (v8)
  {
    goto LABEL_8;
  }

  v14 = v4;
  v15 = v6;
  sub_1D5E3E824(v4, v6);
  sub_1D6CA149C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D6CA1500(v12);
LABEL_7:
    v7 = sub_1D60DA7C8(v4, v6);
LABEL_8:
    v9 = v7;
    v10 = v8;
    sub_1D5B952F8(v4, v6);
    goto LABEL_9;
  }

  sub_1D5B7DDE8(v12, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if ((sub_1D726415C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    goto LABEL_7;
  }

  sub_1D5B952F8(v4, v6);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1D726414C();
  v10 = *(&v12[0] + 1);
  v9 = *&v12[0];
  __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_9:
  a2[3] = MEMORY[0x1E69E6158];
  result = sub_1D5B952F8(v4, v6);
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_1D6ED4ED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6ED5188(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D6ED4F10()
{
  result = qword_1EC897D00;
  if (!qword_1EC897D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D00);
  }

  return result;
}

unint64_t sub_1D6ED4F64()
{
  result = qword_1EC897D08;
  if (!qword_1EC897D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D08);
  }

  return result;
}

void *sub_1D6ED4FB8(void *a1)
{
  sub_1D6ED53EC(0, &qword_1EC897D38, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED52F4();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6ED5348();
    sub_1D6ED5450(&qword_1EC897D40, sub_1D6ED54BC);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D6ED5188(uint64_t a1)
{
  sub_1D5B76B10(a1, v8);
  if (swift_dynamicCast())
  {
    v1 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v1 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      v2 = sub_1D6011D6C(v6, v7);
      v4 = v3;
      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();
      sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
      sub_1D6ED5290();
      sub_1D725A69C();
      sub_1D5B952F8(v2, v4);

      return v8[0];
    }
  }

  return 0;
}

unint64_t sub_1D6ED5290()
{
  result = qword_1EC897D10;
  if (!qword_1EC897D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D10);
  }

  return result;
}

unint64_t sub_1D6ED52F4()
{
  result = qword_1EC897D20;
  if (!qword_1EC897D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D20);
  }

  return result;
}

void sub_1D6ED5348()
{
  if (!qword_1EC895400)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895400);
    }
  }
}

unint64_t sub_1D6ED5398()
{
  result = qword_1EC897D30;
  if (!qword_1EC897D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D30);
  }

  return result;
}

void sub_1D6ED53EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ED52F4();
    v7 = a3(a1, &type metadata for DebugFormatDebuggerBreakpoints.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6ED5450(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6ED5348();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6ED54BC()
{
  result = qword_1EC897D48;
  if (!qword_1EC897D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D48);
  }

  return result;
}

unint64_t sub_1D6ED5524()
{
  result = qword_1EC897D50;
  if (!qword_1EC897D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D50);
  }

  return result;
}

unint64_t sub_1D6ED557C()
{
  result = qword_1EC897D58;
  if (!qword_1EC897D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D58);
  }

  return result;
}

unint64_t sub_1D6ED55D4()
{
  result = qword_1EC897D60;
  if (!qword_1EC897D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D60);
  }

  return result;
}

uint64_t FormatAudioTrack.Resolved.identifier.getter()
{
  type metadata accessor for FormatAudioTrack.Resolved();
  sub_1D5B5D194();
  sub_1D725BF7C();
  v0 = [v3 identifier];
  swift_unknownObjectRelease();
  v1 = sub_1D726207C();

  return v1;
}

uint64_t FormatAudioTrack.Resolved.headline.getter()
{
  type metadata accessor for FormatAudioTrack.Resolved();
  sub_1D5B5D194();
  sub_1D725BF7C();
  return v1;
}

uint64_t type metadata accessor for FormatAudioTrack.Resolved()
{
  result = qword_1EDF309A0;
  if (!qword_1EDF309A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatAudioTrack.Resolved.title.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    type metadata accessor for FormatAudioTrack.Resolved();
    sub_1D5B5D194();
    sub_1D725BF7C();
    v2 = [v4 title];
    swift_unknownObjectRelease();
    if (v2)
    {
      v1 = sub_1D726207C();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id FormatAudioTrack.Resolved.featureName.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for FormatAudioTrack.Resolved();
    sub_1D5B5D194();
    sub_1D725BF7C();
    v1 = [v4 sourceChannel];
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v1 name];
      swift_unknownObjectRelease();
      v1 = sub_1D726207C();
    }
  }

  return v1;
}

int8x16_t FormatAudioTrack.Resolved.init(headline:overrides:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = sub_1D725ABEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2[1];
  v21 = *a2;
  v22 = v11;
  type metadata accessor for FormatAudioTrack.Resolved();
  v23 = a1;
  v12 = qword_1EDF17C98;
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EDF17CA0);
  v14 = (*(v7 + 16))(v10, v13, v6);
  MEMORY[0x1EEE9AC00](v14, v15);
  *(&v21 - 2) = sub_1D5B5D6A0();
  swift_getKeyPath();
  sub_1D725BF6C();
  swift_unknownObjectRelease();
  v16 = vdup_n_s32(v21.i64[1] == 1);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcgezq_s64(vshlq_n_s64(v17, 0x3FuLL));
  v19 = vandq_s8(v21, v18);
  result = vandq_s8(v22, v18);
  *a3 = v19;
  a3[1] = result;
  return result;
}

uint64_t sub_1D6ED5AAC()
{
  if (*v0)
  {
    return 0x6E696C646165685FLL;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_1D6ED5AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E696C646165685FLL && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D6ED5BD0(uint64_t a1)
{
  v2 = sub_1D6ED6264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED5C0C(uint64_t a1)
{
  v2 = sub_1D6ED6264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAudioTrack.Resolved.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6ED62B8(0, &unk_1EDF02790, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED6264();
  sub_1D7264B5C();
  v11 = v3[3];
  v14 = *v3;
  v15 = *(v3 + 1);
  v16 = v11;
  v13[15] = 0;
  sub_1D60A8A1C();

  sub_1D726443C();

  if (!v2)
  {
    type metadata accessor for FormatAudioTrack.Resolved();
    LOBYTE(v14) = 1;
    sub_1D5B5D194();
    sub_1D6ED631C(&unk_1EDF17720);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatAudioTrack.Resolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1D5B5D194();
  v26 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ED62B8(0, &qword_1EDF03A90, MEMORY[0x1E69E6F48]);
  v27 = v8;
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FormatAudioTrack.Resolved();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED6264();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v16 = v15;
  v18 = v25;
  v17 = v26;
  v30 = 0;
  sub_1D60A8B1C();
  v19 = v27;
  sub_1D726431C();
  v20 = v29;
  *v16 = v28;
  *(v16 + 1) = v20;
  LOBYTE(v28) = 1;
  sub_1D6ED631C(&qword_1EDF17710);
  sub_1D726431C();
  (*(v18 + 8))(v11, v19);
  (*(v23 + 32))(&v16[*(v22 + 20)], v7, v17);
  sub_1D6ED6360(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6ED63C4(v16);
}

uint64_t sub_1D6ED61DC()
{
  sub_1D5B5D194();
  sub_1D725BF7C();
  v0 = [v3 identifier];
  swift_unknownObjectRelease();
  v1 = sub_1D726207C();

  return v1;
}

unint64_t sub_1D6ED6264()
{
  result = qword_1EDF115D8;
  if (!qword_1EDF115D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115D8);
  }

  return result;
}

void sub_1D6ED62B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ED6264();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_2, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6ED631C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D194();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6ED6360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAudioTrack.Resolved();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6ED63C4(uint64_t a1)
{
  v2 = type metadata accessor for FormatAudioTrack.Resolved();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6ED6448()
{
  sub_1D5B5D194();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6ED64D8()
{
  result = qword_1EC897D68;
  if (!qword_1EC897D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D68);
  }

  return result;
}

unint64_t sub_1D6ED6530()
{
  result = qword_1EDF115C0;
  if (!qword_1EDF115C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115C0);
  }

  return result;
}

unint64_t sub_1D6ED6588()
{
  result = qword_1EDF115C8;
  if (!qword_1EDF115C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115C8);
  }

  return result;
}

uint64_t sub_1D6ED6614(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id static FeedScaling.scale(font:scaleValue:)(void *a1)
{
  sub_1D725A18C();
  v2 = v1;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  if (v10 == 1)
  {
    [a1 pointSize];
    v4 = v3;
    sub_1D7264C3C();
    v5 = round(v2 * (v4 * 4.0) * 0.25);
    if (!v9)
    {
      v5 = v4;
    }

    v6 = [a1 fontWithSize_];

    return v6;
  }

  else
  {

    return a1;
  }
}

uint64_t static FeedScaling.scale(value:scaleValue:)()
{
  sub_1D725A18C();
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

{
  sub_1D725A18C();
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  return sub_1D7264C3C();
}

id static FeedScaling.scale(font:scaleValue:)(void *a1, double a2)
{
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  if (v10 == 1)
  {
    [a1 pointSize];
    v4 = v3;
    sub_1D7264C3C();
    v5 = round(v4 * 4.0 * a2 * 0.25);
    if (!v9)
    {
      v5 = v4;
    }

    v6 = [a1 fontWithSize_];

    return v6;
  }

  else
  {

    return a1;
  }
}

uint64_t type metadata accessor for FormatMicaData()
{
  result = qword_1EDF32520;
  if (!qword_1EDF32520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ED6BF8()
{
  sub_1D5BBDC0C(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t FormatLayoutViewRouteOption.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6ED6CF4()
{
  result = qword_1EC897D70;
  if (!qword_1EC897D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D70);
  }

  return result;
}

uint64_t sub_1D6ED6D68()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED6E98()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED6FB8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED70DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED71C4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED72D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED73CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED74F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED75F0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED76FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7814()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7924()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7A28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7B50()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7C78()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7D8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7E98()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED7FB8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ED80BC(unsigned __int8 a1)
{
  v1 = 0x7374756F79616CLL;
  v2 = 0x73656D656874;
  v3 = 0x6C6C6177796170;
  if (a1 != 4)
  {
    v3 = 0x756F72676B636162;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x73726564616568;
  if (a1 != 1)
  {
    v4 = 0x737265746F6F66;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6ED817C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6ED8494();
  *a1 = result;
  return result;
}

void sub_1D6ED81AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7374756F79616CLL;
  v5 = 0xE600000000000000;
  v6 = 0x73656D656874;
  v7 = 0xE700000000000000;
  v8 = 0x6C6C6177796170;
  if (v2 != 4)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEB0000000073646ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x73726564616568;
  if (v2 != 1)
  {
    v9 = 0x737265746F6F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D6ED8288()
{
  sub_1D72621EC();
}

unint64_t sub_1D6ED8394()
{
  result = qword_1EC897D78;
  if (!qword_1EC897D78)
  {
    sub_1D6ED83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D78);
  }

  return result;
}

void sub_1D6ED83EC()
{
  if (!qword_1EC893B98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893B98);
    }
  }
}

unint64_t sub_1D6ED8440()
{
  result = qword_1EC897D80;
  if (!qword_1EC897D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D80);
  }

  return result;
}

uint64_t sub_1D6ED8494()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6ED84E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6ED87C8();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v14[0] = sub_1D725DDAC();
  v14[1] = v10;
  v11 = sub_1D7258AAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D5BF4D9C();
  v12 = sub_1D7263AAC();
  sub_1D6ED8820(v9);

  if ((v12 + 1) < 3)
  {
    return (3u >> ((v12 + 1) & 7)) & 1;
  }

  type metadata accessor for ComparisonResult(0);
  v15 = v12;
  result = sub_1D72648EC();
  __break(1u);
  return result;
}

uint64_t sub_1D6ED8654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6ED87C8();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v14[0] = sub_1D725DDAC();
  v14[1] = v10;
  v11 = sub_1D7258AAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D5BF4D9C();
  v12 = sub_1D7263AAC();
  sub_1D6ED8820(v9);

  if ((v12 + 1) < 3)
  {
    return (6u >> ((v12 + 1) & 7)) & 1;
  }

  type metadata accessor for ComparisonResult(0);
  v15 = v12;
  result = sub_1D72648EC();
  __break(1u);
  return result;
}

void sub_1D6ED87C8()
{
  if (!qword_1EDF18A48)
  {
    sub_1D7258AAC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18A48);
    }
  }
}

uint64_t sub_1D6ED8820(uint64_t a1)
{
  sub_1D6ED87C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InternalErrorViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  a1[1] = sub_1D725996C();
  swift_allocObject();
  a1[2] = sub_1D725996C();
  swift_allocObject();
  a1[3] = sub_1D725996C();
  swift_allocObject();
  a1[4] = sub_1D725996C();
  swift_allocObject();
  a1[5] = sub_1D725996C();
  swift_allocObject();
  a1[6] = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[7] = result;
  return result;
}

uint64_t sub_1D6ED8AB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x72466E6F74747562;
    if (v1 != 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D617266;
    v3 = 0x62614C726F727265;
    if (v1 != 2)
    {
      v3 = 0x62614C656C746974;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
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
}

uint64_t sub_1D6ED8BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EDCD18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6ED8C08(uint64_t a1)
{
  v2 = sub_1D6ED9038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ED8C44(uint64_t a1)
{
  v2 = sub_1D6ED9038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalErrorViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D6EDD140(0, &qword_1EC897D88, sub_1D6ED9038, &type metadata for InternalErrorViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = v1[2];
  v31 = v1[3];
  v32 = v10;
  v11 = v1[4];
  v29 = v1[5];
  v30 = v11;
  v12 = v1[6];
  v27 = v1[7];
  v28 = v12;
  v13 = v1[8];
  v25 = v1[9];
  v26 = v13;
  v14 = v1[10];
  v23 = v1[11];
  v24 = v14;
  v15 = v1[12];
  v21 = v1[13];
  v22 = v15;
  v16 = v1[14];
  v19 = v1[15];
  v20 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ED9038();
  sub_1D7264B5C();
  v17 = *v1;
  v34 = v1[1];
  v33 = v17;
  v35 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAB18(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    v34 = v31;
    v33 = v32;
    v35 = 1;
    sub_1D726443C();
    v34 = v29;
    v33 = v30;
    v35 = 2;
    sub_1D726443C();
    v34 = v27;
    v33 = v28;
    v35 = 3;
    sub_1D726443C();
    v34 = v25;
    v33 = v26;
    v35 = 4;
    sub_1D726443C();
    v34 = v23;
    v33 = v24;
    v35 = 5;
    sub_1D726443C();
    v34 = v21;
    v33 = v22;
    v35 = 6;
    sub_1D726443C();
    v34 = v19;
    v33 = v20;
    v35 = 7;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6ED9038()
{
  result = qword_1EDF26C90;
  if (!qword_1EDF26C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C90);
  }

  return result;
}

uint64_t InternalErrorViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6EDD140(0, &qword_1EDF19BF8, sub_1D6ED9038, &type metadata for InternalErrorViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6ED9038();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v38 = 0;
    sub_1D5BEAB18(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v33 = v37;
    v34 = v36;
    v38 = 1;
    sub_1D726431C();
    v31 = v37;
    v32 = v36;
    v38 = 2;
    sub_1D726431C();
    v29 = v37;
    v30 = v36;
    v38 = 3;
    sub_1D726431C();
    v27 = v37;
    v28 = v36;
    v38 = 4;
    sub_1D726431C();
    v25 = v37;
    v26 = v36;
    v38 = 5;
    sub_1D726431C();
    v23 = v37;
    v24 = v36;
    v38 = 6;
    sub_1D726431C();
    v21 = v37;
    v22 = v36;
    v38 = 7;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v13 = v33;
    *a2 = v34;
    a2[1] = v13;
    v14 = v31;
    a2[2] = v32;
    a2[3] = v14;
    v15 = v29;
    a2[4] = v30;
    a2[5] = v15;
    v16 = v27;
    a2[6] = v28;
    a2[7] = v16;
    v17 = v25;
    a2[8] = v26;
    a2[9] = v17;
    v18 = v23;
    a2[10] = v24;
    a2[11] = v18;
    v19 = v21;
    a2[12] = v22;
    a2[13] = v19;
    v20 = v37;
    a2[14] = v36;
    a2[15] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D6ED94C8(uint64_t a1)
{
  v2 = sub_1D6EDD3D0();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6ED9534()
{
  sub_1D6EDD0A8();

  return sub_1D725A24C();
}

uint64_t InternalErrorViewLayout.Context.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void *InternalErrorViewLayout.Context.errorMessage.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

unint64_t sub_1D6ED963C()
{
  result = qword_1EDF26C70;
  if (!qword_1EDF26C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C70);
  }

  return result;
}

unint64_t sub_1D6ED9694()
{
  result = qword_1EC897D90;
  if (!qword_1EC897D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D90);
  }

  return result;
}

unint64_t sub_1D6ED96EC()
{
  result = qword_1EDF26C58;
  if (!qword_1EDF26C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C58);
  }

  return result;
}

unint64_t sub_1D6ED9744()
{
  result = qword_1EDF26C60;
  if (!qword_1EDF26C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C60);
  }

  return result;
}

unint64_t sub_1D6ED979C()
{
  result = qword_1EDF26C78;
  if (!qword_1EDF26C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C78);
  }

  return result;
}

id sub_1D6ED97F0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.756862745 green:0.431372549 blue:1.0 alpha:1.0];
  qword_1EDFFCA68 = result;
  return result;
}

uint64_t sub_1D6ED9840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6720];
  sub_1D6EDD234(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v117 = &v117 - v13;
  v118 = type metadata accessor for InternalErrorViewModel();
  MEMORY[0x1EEE9AC00](v118, v14);
  v119 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_1D7259F5C();
  v16 = *(v130 - 1);
  MEMORY[0x1EEE9AC00](v130, v17);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v10);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = (&v117 - v26);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  v28 = *(type metadata accessor for InternalErrorViewLayout.Context() + 48);
  v128 = a5;
  v125 = a3;
  sub_1D6EDD308(a3, a5 + v28, type metadata accessor for InternalErrorViewModel);
  v29 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);

  v30 = [v29 init];
  [v30 setAlignment_];
  sub_1D6EDD234(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v133 = v31;
  inited = swift_initStackObject();
  v131 = xmmword_1D7279970;
  *(inited + 16) = xmmword_1D7279970;
  v33 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v124 = v33;
  v132 = a4;
  sub_1D6AEA8E8(v27);
  v34 = type metadata accessor for DebugGroupLayoutKey();
  if ((*(*(v34 - 8) + 48))(v27, 1, v34) == 1)
  {
    sub_1D6EDD298(v27, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
LABEL_4:
    v38 = sub_1D5B5A498(0, &qword_1EDF1A720);
    v39 = sub_1D726203C();
    v40 = sub_1D72633CC();

    goto LABEL_5;
  }

  sub_1D6EDD308(v27 + *(v34 + 28), v23, type metadata accessor for GroupLayoutContext);
  sub_1D6EDD370(v27, type metadata accessor for DebugGroupLayoutKey);
  v35 = v130;
  (*(v16 + 16))(v19, v23, v130);
  sub_1D6EDD370(v23, type metadata accessor for GroupLayoutContext);
  v36 = sub_1D7259EBC();
  (*(v16 + 8))(v19, v35);
  v37 = [v36 horizontalSizeClass];

  if (v37 < 2)
  {
    goto LABEL_4;
  }

  v38 = sub_1D5B5A498(0, &qword_1EDF1A720);
  if (v37 == 2)
  {
    v40 = sub_1D72633CC();
  }

  else
  {
    v116 = sub_1D726203C();
    v40 = sub_1D72633CC();
  }

LABEL_5:
  *(inited + 40) = v40;
  v41 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v38;
  *(inited + 72) = v41;
  v42 = objc_opt_self();
  v123 = v41;
  v130 = v42;
  v43 = [v42 whiteColor];
  v44 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v43;
  v45 = *MEMORY[0x1E69DB688];
  v127 = v44;
  *(inited + 104) = v44;
  *(inited + 112) = v45;
  v129 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 144) = v129;
  *(inited + 120) = v30;
  v46 = v45;
  v121 = v30;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  v48 = v47;
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v50 = sub_1D726203C();
  type metadata accessor for Key(0);
  v52 = v51;
  v53 = sub_1D5BEAB18(&qword_1EDF1A8E0, type metadata accessor for Key);
  v126 = v52;
  v122 = v53;
  v54 = sub_1D7261D2C();

  v55 = [v49 initWithString:v50 attributes:v54];

  v56 = v128;
  v128[3] = v55;
  v57 = v119;
  sub_1D6EDD308(v125, v119, type metadata accessor for InternalErrorViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v120 = v48;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6EDD370(v57, type metadata accessor for InternalErrorViewModel);
    v59 = 0;
    goto LABEL_16;
  }

  v134 = *v57;
  v60 = v134;
  v61 = v134;
  sub_1D5BA6EF4();
  v62 = type metadata accessor for FormatLayoutError();
  v63 = v117;
  if (swift_dynamicCast())
  {
    (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      v64 = *v63;
      v118 = *(v63 + 8);
      v119 = v64;

      v65 = swift_initStackObject();
      *(v65 + 16) = v131;
      v66 = v124;
      *(v65 + 32) = v124;
      v67 = v66;
      sub_1D6EDA7B0((v65 + 40));
      v68 = v123;
      *(v65 + 72) = v123;
      v69 = v68;
      *(v65 + 80) = [v130 whiteColor];
      *(v65 + 104) = v127;
      *(v65 + 112) = v46;
      *(v65 + 144) = v129;
      v70 = v121;
      *(v65 + 120) = v121;
      v71 = v46;
      v72 = v70;
      sub_1D5C09CEC(v65);
      swift_setDeallocating();
      swift_arrayDestroy();
      v73 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v74 = sub_1D726203C();

      v75 = sub_1D7261D2C();

      v59 = [v73 initWithString:v74 attributes:v75];

      goto LABEL_16;
    }

    sub_1D6EDD370(v63, type metadata accessor for FormatLayoutError);
  }

  else
  {

    (*(*(v62 - 8) + 56))(v63, 1, 1, v62);
    sub_1D6EDD298(v63, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  v59 = 0;
LABEL_16:
  v56[4] = v59;
  v76 = swift_initStackObject();
  *(v76 + 16) = v131;
  v77 = v124;
  *(v76 + 32) = v124;
  v119 = v77;
  sub_1D6EDAAB8((v76 + 40));
  v78 = v123;
  *(v76 + 72) = v123;
  v123 = v78;
  *(v76 + 80) = [v130 whiteColor];
  v79 = v127;
  *(v76 + 104) = v127;
  *(v76 + 112) = v46;
  *(v76 + 144) = v129;
  v80 = v121;
  *(v76 + 120) = v121;
  v124 = v46;
  v121 = v80;
  sub_1D5C09CEC(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  v81 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v82 = sub_1D726203C();
  v83 = sub_1D7261D2C();

  v84 = [v81 initWithString:v82 attributes:v83];

  v56[5] = v84;
  v85 = swift_initStackObject();
  *(v85 + 16) = v131;
  v86 = v119;
  *(v85 + 32) = v119;
  v87 = v86;
  sub_1D6EDADCC((v85 + 40));
  v88 = v123;
  *(v85 + 72) = v123;
  v123 = v88;
  *(v85 + 80) = [v130 whiteColor];
  v89 = v124;
  *(v85 + 104) = v79;
  *(v85 + 112) = v89;
  *(v85 + 144) = v129;
  v90 = v121;
  *(v85 + 120) = v121;
  v119 = v90;
  sub_1D5C09CEC(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  v91 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v92 = sub_1D726203C();
  v93 = sub_1D7261D2C();

  v94 = [v91 initWithString:v92 attributes:v93];

  v128[6] = v94;
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_1D7270C10;
  v121 = v87;
  *(v95 + 32) = v87;
  v96 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
  v97 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(v95 + 40) = v96;
  v98 = v123;
  *(v95 + 64) = v97;
  *(v95 + 72) = v98;
  if (qword_1EDF26C50 != -1)
  {
    swift_once();
  }

  v99 = qword_1EDFFCA68;
  v100 = v127;
  *(v95 + 104) = v127;
  *(v95 + 80) = v99;
  v101 = v99;
  sub_1D5C09CEC(v95);
  swift_setDeallocating();
  swift_arrayDestroy();
  v102 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v103 = sub_1D726203C();
  v104 = sub_1D7261D2C();

  v105 = [v102 initWithString:v103 attributes:v104];

  v106 = v128;
  v128[7] = v105;
  v107 = swift_initStackObject();
  *(v107 + 16) = v131;
  *(v107 + 32) = v121;
  sub_1D6EDB0E0((v107 + 40));

  *(v107 + 72) = v123;
  *(v107 + 80) = [v130 whiteColor];
  v108 = v124;
  *(v107 + 104) = v100;
  *(v107 + 112) = v108;
  *(v107 + 144) = v129;
  v109 = v119;
  *(v107 + 120) = v119;
  v110 = v109;
  sub_1D5C09CEC(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v111 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v112 = sub_1D726203C();
  v113 = sub_1D7261D2C();

  v114 = [v111 initWithString:v112 attributes:v113];

  result = sub_1D6EDD370(v125, type metadata accessor for InternalErrorViewModel);
  v106[8] = v114;
  return result;
}

uint64_t sub_1D6EDA7B0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() italicSystemFontOfSize_];
  result = sub_1D5B5A498(0, &qword_1EDF1A720);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDAAB8@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 15.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 15.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C678[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB970]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDADCC@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB970]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDB0E0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7259F5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EDD234(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_1D6AEA8E8((&v21 - v13));
  v15 = type metadata accessor for DebugGroupLayoutKey();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D6EDD298(v14, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    v16 = 13.0;
  }

  else
  {
    sub_1D6EDD308(&v14[*(v15 + 28)], v10, type metadata accessor for GroupLayoutContext);
    sub_1D6EDD370(v14, type metadata accessor for DebugGroupLayoutKey);
    (*(v3 + 16))(v6, v10, v2);
    sub_1D6EDD370(v10, type metadata accessor for GroupLayoutContext);
    v17 = sub_1D7259EBC();
    (*(v3 + 8))(v6, v2);
    v18 = [v17 horizontalSizeClass];

    v16 = 13.0;
    if (v18 <= 2)
    {
      v16 = dbl_1D736C690[v18];
    }
  }

  v19 = [objc_opt_self() systemFontOfSize:v16 weight:*MEMORY[0x1E69DB958]];
  result = sub_1D5B5A498(0, &qword_1EDF1A720);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1D6EDB408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EDB428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
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
    *result = (a2 - 1);
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

  *(result + 256) = v3;
  return result;
}

unint64_t sub_1D6EDB4E0()
{
  result = qword_1EC897D98;
  if (!qword_1EC897D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897D98);
  }

  return result;
}

unint64_t sub_1D6EDB538()
{
  result = qword_1EDF26C80;
  if (!qword_1EDF26C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C80);
  }

  return result;
}

unint64_t sub_1D6EDB590()
{
  result = qword_1EDF26C88;
  if (!qword_1EDF26C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C88);
  }

  return result;
}

uint64_t sub_1D6EDB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v30[-v11];
  v33 = a1;
  (*(v8 + 104))(&v30[-v11], *MEMORY[0x1E69D7460], v7, v10);
  sub_1D6EDD010();
  sub_1D6EDD140(0, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v18 = (v17 + v16);
  v19 = sub_1D7259E8C();
  MEMORY[0x1DA6FA480](v19, 0.0, v20, v21, v22, v23);
  sub_1D7262E1C();
  *v18 = v24;
  v18[1] = v25;
  v18[2] = v26;
  v18[3] = v27;
  (*(v15 + 104))(v18, *MEMORY[0x1E69D7048], v14);
  v31 = a2;
  v32 = a3;
  v28 = MEMORY[0x1E69D7150];
  sub_1D6EDD1B0(0, &qword_1EDF3C048, MEMORY[0x1E69D7150]);
  sub_1D6EDD0FC(&qword_1EDF3C050, &qword_1EDF3C048, v28);
  sub_1D7259A2C();

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1D6EDB900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v22 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v24 = a1;
  sub_1D6EDBC44((&v21 - v7));
  sub_1D6EDD010();
  sub_1D6EDD140(0, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  v15 = (v14 + v13);
  *v15 = 0x4071800000000000;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E69D70C0], v10);
  v17 = *MEMORY[0x1E69D7060];
  sub_1D6EDD140(0, &qword_1EDF3C0E0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v18 - 8) + 104))(&v15[v12], v17, v18);
  v16(&v15[v12], *MEMORY[0x1E69D7080], v10);
  v23 = v21;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D6EDD1B0(0, &qword_1EDF3C1A8, MEMORY[0x1E69D6F38]);
  sub_1D6EDD0FC(&qword_1EDF3C1B0, &qword_1EDF3C1A8, v19);
  sub_1D7259A2C();

  return (*(v5 + 8))(v8, v22);
}

uint64_t sub_1D6EDBC44@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7259EBC();
  v3 = [v2 horizontalSizeClass];

  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 != 1)
  {
    v6 = swift_allocObject();
    sub_1D7259E6C();
    *(v6 + 16) = v7 * 0.6;
    *a1 = v6;
    v5 = MEMORY[0x1E69D7480];
  }

  else
  {
    v5 = MEMORY[0x1E69D7460];
  }

  v8 = *v5;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t sub_1D6EDBD6C(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v116 = sub_1D6EDCFBC;
  sub_1D6EDD140(0, &qword_1EDF3BEF0, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v99 - v7);
  v125 = a1;
  v123 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0x4038000000000000;
  *v8 = v9;
  v122 = *MEMORY[0x1E69D7488];
  v10 = *(v5 + 104);
  v105 = v5 + 104;
  v121 = v10;
  v100 = v4;
  v10(v8);
  v11 = MEMORY[0x1E69D6F38];
  sub_1D6EDD1B0(0, &qword_1EDF3C1A8, MEMORY[0x1E69D6F38]);
  v124 = v12;
  v120 = sub_1D6EDD0FC(&qword_1EDF3C1B0, &qword_1EDF3C1A8, v11);
  sub_1D7259A9C();
  v13 = *(v5 + 8);
  v103 = v5 + 8;
  v119 = v13;
  v13(v8, v4);
  v125 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4040000000000000;
  *v18 = v20;
  v21 = *MEMORY[0x1E69D71F0];
  v22 = sub_1D725A09C();
  v23 = *(*(v22 - 8) + 104);
  v23(v18, v21, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4040000000000000;
  *(v18 + v19) = v24;
  v23((v18 + v19), v21, v22);
  *v8 = v16;
  v25 = v121;
  (v121)(v8, *MEMORY[0x1E69D7468], v100);
  sub_1D6EDD010();
  v118 = v26;
  v27 = v116;
  sub_1D6EDD140(0, &qword_1EDF3C0B8, v116, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
  v117 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v114 = *(v29 + 80);
  v115 = v30;
  v31 = v29;
  v106 = (v114 + 32) & ~v114;
  v32 = v106;
  v33 = swift_allocObject();
  v102 = xmmword_1D7273AE0;
  *(v33 + 16) = xmmword_1D7273AE0;
  v113 = *MEMORY[0x1E69D7060];
  v34 = v113;
  sub_1D6EDD140(0, &qword_1EDF3C0E0, v27, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D7078]);
  v112 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v110 = v36 + 104;
  v111 = v37;
  v37(v33 + v32, v34, v35);
  v108 = *MEMORY[0x1E69D7080];
  v38 = *(v31 + 104);
  v116 = (v31 + 104);
  v107 = v38;
  v38(v33 + v32);
  v109 = sub_1D5BEAB18(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  v39 = v100;
  v40 = v119;
  v119(v8, v100);
  v41 = v123;
  v125 = v123;
  v42 = swift_allocObject();
  *(v42 + 16) = 0x4020000000000000;
  *v8 = v42;
  (v25)(v8, v122, v39);
  sub_1D7259A9C();
  v40(v8, v39);
  v125 = v41;
  swift_getKeyPath();
  v43 = swift_allocObject();
  v44 = v104;
  v45 = *(v104 + 24);
  *(v43 + 16) = v45;
  *v8 = v43;
  LODWORD(KeyPath) = *MEMORY[0x1E69D73E8];
  v25(v8);
  v46 = v106;
  v47 = swift_allocObject();
  *(v47 + 16) = v102;
  v111(v47 + v46, v113, v112);
  v107(v47 + v46, v108, v117);
  v48 = v45;
  sub_1D7259A7C();

  v119(v8, v39);
  v49 = *(v44 + 32);
  if (v49)
  {
    v125 = v123;
    swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *v8 = v50;
    v51 = v121;
    (v121)(v8, KeyPath, v39);
    v52 = v106;
    v53 = swift_allocObject();
    *(v53 + 16) = v102;
    v111(v53 + v52, v113, v112);
    v107(v53 + v52, v108, v117);
    v54 = v49;
    sub_1D7259A7C();

    v55 = v119;
    v119(v8, v39);
    v125 = v123;
    v56 = swift_allocObject();
    *(v56 + 16) = 0x4020000000000000;
    *v8 = v56;
    v51(v8, v122, v39);
    sub_1D7259A9C();

    v55(v8, v39);
  }

  v57 = v123;
  v125 = v123;
  swift_getKeyPath();
  v58 = swift_allocObject();
  v59 = *(v104 + 40);
  *(v58 + 16) = v59;
  *v8 = v58;
  v60 = v121;
  (v121)(v8, KeyPath, v39);
  v61 = v106;
  v62 = swift_allocObject();
  *(v62 + 16) = v102;
  v111(v62 + v61, v113, v112);
  v107(v62 + v61, v108, v117);
  v63 = v59;
  sub_1D7259A7C();

  v64 = v119;
  v119(v8, v39);
  v125 = v57;
  v65 = swift_allocObject();
  *(v65 + 16) = 0x4030000000000000;
  *v8 = v65;
  v60(v8, v122, v39);
  sub_1D7259A9C();
  v64(v8, v39);
  v125 = v57;
  v99[1] = swift_getKeyPath();
  v66 = swift_allocObject();
  v99[0] = *(v104 + 56);
  *(v66 + 16) = v99[0];
  *v8 = v66;
  v60(v8, KeyPath, v39);
  v67 = v115;
  v68 = 2 * v115;
  v69 = v106;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1D7279970;
  *(v70 + v69) = 0x406B800000000000;
  v71 = v70 + v69;
  v72 = v117;
  v73 = v107;
  v107(v71, *MEMORY[0x1E69D70C0], v117);
  *(v71 + v67) = 0x4030000000000000;
  v74 = *MEMORY[0x1E69D7240];
  v75 = sub_1D725A13C();
  (*(*(v75 - 8) + 104))(v71 + v67, v74, v75);
  v76 = *MEMORY[0x1E69D72D8];
  v77 = sub_1D725A29C();
  (*(*(v77 - 8) + 104))(v71 + v67, v76, v77);
  v73(v71 + v67, *MEMORY[0x1E69D6FD0], v72);
  v111(v71 + v68, v113, v112);
  v73(v71 + v68, v108, v72);
  v78 = v99[0];
  sub_1D7259A7C();

  v79 = v119;
  v119(v8, v39);
  v80 = v123;
  v125 = v123;
  v81 = swift_allocObject();
  *(v81 + 16) = 0x4030000000000000;
  *v8 = v81;
  v82 = v121;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  v79(v8, v39);
  v125 = v80;
  swift_getKeyPath();
  v83 = swift_allocObject();
  v84 = *(v104 + 48);
  *(v83 + 16) = v84;
  *v8 = v83;
  v82(v8, KeyPath, v39);
  v85 = v106;
  v86 = swift_allocObject();
  *(v86 + 16) = v102;
  v111(v86 + v85, v113, v112);
  v107(v86 + v85, v108, v117);
  v87 = v84;
  sub_1D7259A7C();

  v88 = v119;
  v119(v8, v39);
  v89 = v123;
  v125 = v123;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x4030000000000000;
  *v8 = v90;
  v91 = v121;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  v88(v8, v39);
  v125 = v89;
  swift_getKeyPath();
  v92 = swift_allocObject();
  v93 = *(v104 + 64);
  *(v92 + 16) = v93;
  *v8 = v92;
  v91(v8, KeyPath, v39);
  v94 = v106;
  v95 = swift_allocObject();
  *(v95 + 16) = v102;
  v111(v95 + v94, v113, v112);
  v107(v95 + v94, v108, v117);
  v96 = v93;
  sub_1D7259A7C();

  v88(v8, v39);
  v125 = v123;
  v97 = swift_allocObject();
  *(v97 + 16) = 0x4030000000000000;
  *v8 = v97;
  (v121)(v8, v122, v39);
  sub_1D7259A9C();
  return (v88)(v8, v39);
}

uint64_t sub_1D6EDCD18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F60A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62614C726F727265 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F60C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F60E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72466E6F74747562 && a2 == 0xEB00000000656D61 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F6100 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D6EDCFBC()
{
  result = qword_1EDF26C40;
  if (!qword_1EDF26C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C40);
  }

  return result;
}

void sub_1D6EDD010()
{
  if (!qword_1EDF19B60)
  {
    sub_1D6EDD140(255, &qword_1EDF3C0B8, sub_1D6EDCFBC, &type metadata for InternalErrorViewLayout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B60);
    }
  }
}

unint64_t sub_1D6EDD0A8()
{
  result = qword_1EDF26C68;
  if (!qword_1EDF26C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26C68);
  }

  return result;
}

uint64_t sub_1D6EDD0FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6EDD1B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6EDD140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D6EDD1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for InternalErrorViewLayout;
    v8[1] = &type metadata for InternalErrorViewLayout.Attributes;
    v8[2] = sub_1D6EDCFBC();
    v8[3] = sub_1D6EDD0A8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6EDD234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6EDD298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6EDD234(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6EDD308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EDD370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6EDD3D0()
{
  result = qword_1EC897DA0;
  if (!qword_1EC897DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DA0);
  }

  return result;
}

uint64_t sub_1D6EDD434(void *a1)
{
  v3 = v1;
  sub_1D6EE13F4(0, &qword_1EC897E58, sub_1D6EE13A0, &type metadata for A12_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EE13A0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6EE145C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6EDD67C(uint64_t a1)
{
  v2 = sub_1D6EE13A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EDD6B8(uint64_t a1)
{
  v2 = sub_1D6EE13A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6EDD6F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6EE1100(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6EDD754()
{
  sub_1D6EE0DA0();

  return sub_1D725A24C();
}

uint64_t sub_1D6EDD7D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6EE13F4(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6EDD88C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v113 = a2;
  v117 = a1;
  v102 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v118 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v112 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v115 = &v101 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for GroupLayoutContext();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v23);
  v111 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v101 - v27;
  v107 = &v101 - v27;
  v116 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116, v30);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v106 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v117, v32, type metadata accessor for GroupLayoutBindingContext);
  v108 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v113, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v105 = sub_1D725893C();
  v104 = v35;
  (*(v19 + 8))(v22, v18);
  v128 = &type metadata for A12_V11;
  v36 = sub_1D5ECEB14();
  v129 = v36;
  LOBYTE(v126) = v33;
  *(&v126 + 1) = v34;
  v127 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v119[0] = sub_1D7264C5C();
  v119[1] = v39;
  v124 = 95;
  v125 = 0xE100000000000000;
  v122 = 45;
  v123 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v111;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v104;
  *v44 = v105;
  v44[1] = v45;
  sub_1D5B68374(&v126, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v116);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v107, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v109 + 56);
  v109 = v37;
  v48(v37 + v47, 0, 1, v110);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v128 = &type metadata for A12_V11;
  v129 = v36;
  LOBYTE(v126) = v106;
  v49 = v38;
  *(&v126 + 1) = v38;
  v127 = v5;
  sub_1D5BE3ED8(v113, v43, v108);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v51 = v50;
  inited = swift_initStackObject();
  v53 = MEMORY[0x1E69E7CC0];
  v113 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v54 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v55 = sub_1D5C0F8FC(0, 1, 1, v53);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = (v57 + 1);
  if (v57 >= v56 >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *(v55 + 16) = v58;
    v59 = v55 + 16 * v57;
    *(v59 + 32) = sub_1D63106DC;
    *(v59 + 40) = 0;
    *v54 = v55;
    swift_endAccess();
    v57 = v116[14];
    v60 = *&v117[v57];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v58 = sub_1D5C14D80(v63), , v58))
    {
      v108 = v57;
      v110 = v51;
      v51 = *(v58 + 2);
      if (v51)
      {
        v43 = 0;
        v57 = MEMORY[0x1E69E7CC0];
        v54 = v114;
        v55 = v115;
        while (1)
        {
          v56 = *(v58 + 2);
          if (v43 >= v56)
          {
            break;
          }

          v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v53 = *(v54 + 72);
          sub_1D5BE3ED8(&v58[v36 + v53 * v43], v55, type metadata accessor for FeedHeadline);
          if ((*(v55 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v55, v130, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v119[0] = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v57 + 16) + 1, 1);
              v54 = v114;
              v57 = v119[0];
            }

            v37 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v37 >= v65 >> 1)
            {
              sub_1D5C0F91C(v65 > 1, v37 + 1, 1);
              v54 = v114;
              v57 = v119[0];
            }

            *(v57 + 16) = v37 + 1;
            sub_1D5BDA904(v130, v57 + v36 + v37 * v53, type metadata accessor for FeedHeadline);
            v55 = v115;
          }

          else
          {
            sub_1D5BE780C(v55, type metadata accessor for FeedHeadline);
          }

          if (v51 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_22:
      if ((*v117 & 1) == 0)
      {

        v69 = sub_1D62F071C(v57);

        v57 = v69;
      }

      v43 = v111;
      v53 = MEMORY[0x1E69E7CC0];
      v51 = v110;
      v70 = *&v117[v116[18]];
      v71 = *&v117[v116[19]];
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_70;
      }

      v72 = sub_1D5C0FAD4(v57, v70 - v71);
      v36 = sub_1D5C11E10(&unk_1F5113BD0, v72, v58);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113BD0, v57, v58);

        if (!v36)
        {
          v119[0] = &unk_1F5113BD0;
          v4 = v103;
          sub_1D5E239F4(v119);
          if (v4)
          {
            goto LABEL_74;
          }

          if (!*(v119[0] + 2))
          {
            goto LABEL_72;
          }

          v97 = *(v119[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v98, "FeedHeadline");
          v98[13] = 0;
          *(v98 + 7) = -5120;
          *(v98 + 2) = 0;
          *(v98 + 3) = 0;
          *(v98 + 4) = 4;
          *(v98 + 5) = v97;
          *(v98 + 6) = 0;
          *(v98 + 7) = 0;
          v98[64] = 0;
          swift_willThrow();
          goto LABEL_63;
        }
      }

      strcpy(v119, "FeedHeadline");
      BYTE5(v119[1]) = 0;
      HIWORD(v119[1]) = -5120;
      v120 = 0;
      v121 = 0;

      v74 = sub_1D5C107C4(v73);

      sub_1D5BDACA8(v119, v74);
      swift_setDeallocating();

      v57 = v108;
    }

    else
    {
      if (qword_1F5113BF0)
      {
        v119[0] = &unk_1F5113BD0;
        v4 = v103;
        sub_1D5E239F4(v119);
        if (v4)
        {
          goto LABEL_74;
        }

        v66 = *(v119[0] + 2);
        if (v66)
        {
          v67 = *(v119[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v68, "FeedHeadline");
          v68[13] = 0;
          *(v68 + 7) = -5120;
          *(v68 + 2) = 0;
          *(v68 + 3) = 0;
          *(v68 + 4) = 4;
          *(v68 + 5) = v67;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0;
          v68[64] = 0;
          swift_willThrow();
LABEL_46:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v126);
        }

        __break(1u);
LABEL_68:
        v58 = sub_1D5C0F8FC((v66 > 1), v37, 1, v58);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v75 = swift_initStackObject();
    v130 = v75;
    *(v75 + 16) = v53;
    v60 = (v75 + 16);
    swift_beginAccess();
    v58 = sub_1D5C0F8FC(0, 1, 1, v53);
    v55 = *(v58 + 2);
    v66 = *(v58 + 3);
    v37 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      goto LABEL_68;
    }

LABEL_30:
    *(v58 + 2) = v37;
    v76 = &v58[16 * v55];
    *(v76 + 4) = sub_1D63106DC;
    *(v76 + 5) = 0;
    *v60 = v58;
    swift_endAccess();
    if (!*(*&v117[v57] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v77 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v78);

    if (!v37)
    {
      break;
    }

    v115 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v86 = v117;
      if ((*v117 & 1) == 0)
      {

        v87 = sub_1D62F071C(v58);

        v58 = v87;
      }

      v88 = *&v86[v116[18]];
      v89 = *&v86[v116[19]];
      if (__OFSUB__(v88, v89))
      {
        goto LABEL_71;
      }

      v90 = sub_1D5C0FAD4(v58, v88 - v89);
      v85 = sub_1D5C11E10(&unk_1F5113BF8, v90, v37);

      if (v85)
      {

LABEL_55:
        strcpy(v119, "FeedHeadline");
        BYTE5(v119[1]) = 0;
        HIWORD(v119[1]) = -5120;
        v120 = 0;
        v121 = 0;

        v92 = sub_1D5C107C4(v91);

        sub_1D5BDACA8(v119, v92);
        swift_setDeallocating();

        v43 = v111;
        v36 = v115;
        goto LABEL_56;
      }

      v85 = sub_1D5C11E10(&unk_1F5113BF8, v58, v37);

      if (v85)
      {
        goto LABEL_55;
      }

      v119[0] = &unk_1F5113BF8;
      v4 = v103;
      sub_1D5E239F4(v119);
      if (v4)
      {
        goto LABEL_74;
      }

      v43 = v111;
      if (!*(v119[0] + 2))
      {
        goto LABEL_73;
      }

      v99 = *(v119[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v100, "FeedHeadline");
      v100[13] = 0;
      *(v100 + 7) = -5120;
      *(v100 + 2) = 0;
      *(v100 + 3) = 0;
      *(v100 + 4) = 0;
      *(v100 + 5) = v99;
      *(v100 + 6) = 0;
      *(v100 + 7) = 0;
      v100[64] = 0;
      swift_willThrow();
LABEL_63:
      swift_setDeallocating();
      goto LABEL_46;
    }

    v36 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v54 = v114;
    while (1)
    {
      v56 = *(v37 + 16);
      if (v36 >= v56)
      {
        break;
      }

      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      v79 = v112;
      sub_1D5BE3ED8(v37 + v53 + v51 * v36, v112, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v79, v118, type metadata accessor for FeedHeadline);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v58;
      if ((v80 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v58 + 2) + 1, 1);
        v54 = v114;
        v58 = v119[0];
      }

      v55 = *(v58 + 2);
      v81 = *(v58 + 3);
      v57 = v55 + 1;
      if (v55 >= v81 >> 1)
      {
        sub_1D5C0F91C(v81 > 1, v55 + 1, 1);
        v54 = v114;
        v58 = v119[0];
      }

      ++v36;
      *(v58 + 2) = v57;
      sub_1D5BDA904(v118, &v58[v53 + v55 * v51], type metadata accessor for FeedHeadline);
      if (v43 == v36)
      {
        goto LABEL_49;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v55 = sub_1D5C0F8FC((v56 > 1), v58, 1, v55);
  }

  if (!qword_1F5113C18)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v119[0] = v36;
    sub_1D5C122E4(v85);
    v93 = v119[0];
    v94 = type metadata accessor for A12_V11.Bound();
    v95 = v102;
    v102[3] = v94;
    v95[4] = sub_1D6EE145C(&qword_1EC897DB8, type metadata accessor for A12_V11.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
    *boxed_opaque_existential_1 = v109;
    sub_1D5B63F14(&v126, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v94 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v94 + 28)) = v93;
    return result;
  }

  v119[0] = &unk_1F5113BF8;
  v4 = v103;
  sub_1D5E239F4(v119);
  if (!v4)
  {

    if (*(v119[0] + 2))
    {
      v82 = *(v119[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v83, "FeedHeadline");
      v83[13] = 0;
      *(v83 + 7) = -5120;
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      *(v83 + 4) = 0;
      *(v83 + 5) = v82;
      *(v83 + 6) = 0;
      *(v83 + 7) = 0;
      v83[64] = 0;
      swift_willThrow();
      goto LABEL_46;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_74:

  __break(1u);
  return result;
}

uint64_t sub_1D6EDEA38@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_1D725A36C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V11.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v44);
  sub_1D5B68374(v12 + 56, v43);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v44, v15 + 16);
  sub_1D5B63F14(v43, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v42[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v43);
  sub_1D5B68374(v16 + 56, v42);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v43, v18 + 16);
  sub_1D5B63F14(v42, v18 + 56);
  *(v18 + 96) = v17;
  v41[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v44, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v44[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v44[0];
  v40[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6EE0D3C, v40);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v36);
  v38 = v22;
  v39 = v2;
  sub_1D6EE0E48(0, &qword_1EC897DD8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v36 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v45;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v34 = v44[1];
  v35 = v44[0];
  *&v44[0] = v22;
  *&v43[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v37;
  *v37 = 0;
  v30 = v35;
  *(v29 + 24) = v34;
  *(v29 + 8) = v30;
  *&v44[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v33;
  return result;
}

uint64_t sub_1D6EDEF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6EDF054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6EE0E48(0, &qword_1EC897DF8, MEMORY[0x1E69D7150]);
  sub_1D6EE0E04(&qword_1EC897E00, &qword_1EC897DF8, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6EDF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v61 = sub_1D6EE0D4C;
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v46 - v8);
  v67 = a1;
  v10 = a1;
  v47 = a1;
  v11 = sub_1D725994C();
  v56 = v11;
  v12 = swift_allocBox();
  v59 = *MEMORY[0x1E69D6F50];
  v13 = *(v11 - 8);
  v58 = *(v13 + 104);
  v60 = v13 + 104;
  v58(v14);
  *v9 = v12;
  v57 = *MEMORY[0x1E69D73C0];
  v15 = *(v6 + 104);
  v15(v9);
  v46[1] = v6 + 104;
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  v18 = v17;
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v16);
  sub_1D7259A9C();
  v19 = *(v6 + 8);
  v63 = v6 + 8;
  v48 = v19;
  v19(v9, v5);
  v67 = v10;
  sub_1D60DF7C0();
  v21 = v20;
  v54 = v20;
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(v21 + 48);
  *v23 = 7;
  v52 = *MEMORY[0x1E69D7348];
  v26 = v52;
  v51 = sub_1D725A34C();
  v27 = *(v51 - 8);
  v50 = *(v27 + 104);
  v53 = v27 + 104;
  v50(&v24[v25], v26, v51);
  *v9 = v22;
  v49 = *MEMORY[0x1E69D73E0];
  v28 = v5;
  v15(v9);
  v66 = v64;
  v55 = v18;
  sub_1D72599EC();
  v29 = v48;
  v48(v9, v5);
  v30 = v47;
  v67 = v47;
  v31 = v56;
  v32 = swift_allocBox();
  (v58)(v33, v59, v31);
  *v9 = v32;
  (v15)(v9, v57, v5);
  sub_1D7259A9C();
  v29(v9, v5);
  v67 = v30;
  v34 = v54;
  v35 = swift_allocBox();
  v36 = *(v34 + 48);
  *v37 = 2;
  v50(&v37[v36], v52, v51);
  *v9 = v35;
  v38 = v28;
  (v15)(v9, v49, v28);
  sub_1D6EE0ED4();
  sub_1D6EE13F4(0, &qword_1EC897E20, v61, &type metadata for A12_V11.Layout, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = v62 + *(type metadata accessor for A12_V11.Bound() + 24);
  *(v43 + v42) = *(v44 + *(type metadata accessor for GroupLayoutContext() + 32)) * 135.0;
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D70D0], v40);
  v65 = v64;
  sub_1D72599EC();

  return (v29)(v9, v38);
}

uint64_t sub_1D6EDF834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
    sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v26);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6EDFC10(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6EDFEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v50 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v43 = KeyPath;
  v44 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = *MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 0;
  *&v14[v11[7]] = v31;
  v32 = *MEMORY[0x1E69DDCE0];
  v41 = *(MEMORY[0x1E69DDCE0] + 16);
  v42 = v32;
  v33 = qword_1EDF386E8;
  v34 = v31;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v41;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v37;
  *(&v41 - 4) = v10;
  *(&v41 - 3) = v19;
  v40 = v14;
  (*(v45 + 104))(v47, *MEMORY[0x1E69D7378], v46);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v48 + 8))(v10, v49);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v44);
}

uint64_t sub_1D6EE049C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EE13F4(0, &qword_1EC897DF0, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v50 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v43 = KeyPath;
  v44 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = *MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 0;
  *&v14[v11[7]] = v31;
  v32 = *MEMORY[0x1E69DDCE0];
  v41 = *(MEMORY[0x1E69DDCE0] + 16);
  v42 = v32;
  v33 = qword_1EDF386E8;
  v34 = v31;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v41;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v37;
  *(&v41 - 4) = v10;
  *(&v41 - 3) = v19;
  v40 = v14;
  (*(v45 + 104))(v47, *MEMORY[0x1E69D7378], v46);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v48 + 8))(v10, v49);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6EE0E48(0, &qword_1EC897E08, MEMORY[0x1E69D6F38]);
  sub_1D6EE0E04(&qword_1EC897E10, &qword_1EC897E08, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v44);
}

uint64_t sub_1D6EE0A84@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V11.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6EE0B98(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EE0BC8();
  result = sub_1D6EE0C1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EE0BC8()
{
  result = qword_1EC897DA8;
  if (!qword_1EC897DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DA8);
  }

  return result;
}

unint64_t sub_1D6EE0C1C()
{
  result = qword_1EC897DB0;
  if (!qword_1EC897DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DB0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V11.Bound()
{
  result = qword_1EC897DC0;
  if (!qword_1EC897DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6EE0CE4(uint64_t a1)
{
  result = sub_1D6EE145C(&qword_1EC897DD0, type metadata accessor for A12_V11.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE0D4C()
{
  result = qword_1EC897DE0;
  if (!qword_1EC897DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DE0);
  }

  return result;
}

unint64_t sub_1D6EE0DA0()
{
  result = qword_1EC897DE8;
  if (!qword_1EC897DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897DE8);
  }

  return result;
}

uint64_t sub_1D6EE0E04(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6EE0E48(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6EE0E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V11.Layout;
    v8[1] = &type metadata for A12_V11.Layout.Attributes;
    v8[2] = sub_1D6EE0D4C();
    v8[3] = sub_1D6EE0DA0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6EE0ED4()
{
  if (!qword_1EC897E18)
  {
    sub_1D6EE13F4(255, &qword_1EC897E20, sub_1D6EE0D4C, &type metadata for A12_V11.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897E18);
    }
  }
}

unint64_t sub_1D6EE0FA4()
{
  result = qword_1EC897E28;
  if (!qword_1EC897E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E28);
  }

  return result;
}

unint64_t sub_1D6EE0FFC()
{
  result = qword_1EC897E30;
  if (!qword_1EC897E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E30);
  }

  return result;
}

unint64_t sub_1D6EE1054()
{
  result = qword_1EC897E38;
  if (!qword_1EC897E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E38);
  }

  return result;
}

unint64_t sub_1D6EE10AC()
{
  result = qword_1EC897E40;
  if (!qword_1EC897E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E40);
  }

  return result;
}

uint64_t sub_1D6EE1100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6EE13F4(0, &qword_1EC897E48, sub_1D6EE13A0, &type metadata for A12_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EE13A0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6EE145C(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6EE13A0()
{
  result = qword_1EC897E50;
  if (!qword_1EC897E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E50);
  }

  return result;
}

void sub_1D6EE13F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6EE145C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6EE14B8()
{
  result = qword_1EC897E60;
  if (!qword_1EC897E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E60);
  }

  return result;
}

unint64_t sub_1D6EE1510()
{
  result = qword_1EC897E68;
  if (!qword_1EC897E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E68);
  }

  return result;
}

unint64_t sub_1D6EE1568()
{
  result = qword_1EC897E70;
  if (!qword_1EC897E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E70);
  }

  return result;
}

uint64_t sub_1D6EE15C0()
{

  return swift_deallocClassInstance();
}

uint64_t FormatGroupItemKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 6775156;
  v3 = 0x6465626D45626577;
  if (v1 != 5)
  {
    v3 = 1684366694;
  }

  v4 = 0x656E696C64616568;
  if (v1 != 3)
  {
    v4 = 0x6575737369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72656874616577;
  if (v1 != 1)
  {
    v5 = 0x6C6C6177796170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1D6EE16F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6775156;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  if (v2 != 5)
  {
    v6 = 1684366694;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696C64616568;
  if (v2 != 3)
  {
    v8 = 0x6575737369;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x72656874616577;
  if (v2 != 1)
  {
    v9 = 0x6C6C6177796170;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D6EE17C8()
{
  sub_1D72621EC();
}

BOOL sub_1D6EE18E4(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_1D6EE1924(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D6EE1964(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t _s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 6775156;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 2)
  {
    v7 = 0x72656874616577;
    if (v3 != 1)
    {
      v7 = 0x6C6C6177796170;
    }

    if (*a1)
    {
      v6 = v7;
    }

    else
    {
      v6 = 6775156;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v5 = 0xE800000000000000;
      v6 = 0x6465626D45626577;
    }

    else
    {
      v5 = 0xE400000000000000;
      v6 = 1684366694;
    }
  }

  else if (v3 == 3)
  {
    v5 = 0xE800000000000000;
    v6 = 0x656E696C64616568;
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6575737369;
  }

  v8 = 0xE300000000000000;
  v9 = 0xE800000000000000;
  v10 = 0x6465626D45626577;
  if (v4 != 5)
  {
    v10 = 1684366694;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE800000000000000;
  v12 = 0x656E696C64616568;
  if (v4 != 3)
  {
    v12 = 0x6575737369;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 4u)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0x72656874616577;
  if (v4 != 1)
  {
    v13 = 0x6C6C6177796170;
  }

  if (*a2)
  {
    v2 = v13;
    v8 = 0xE700000000000000;
  }

  if (*a2 <= 2u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v10;
  }

  if (*a2 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v9;
  }

  if (v6 == v14 && v5 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1D72646CC();
  }

  return v16 & 1;
}

unint64_t sub_1D6EE1B84(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EE1BB4();
  result = sub_1D5C9F354();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EE1BB4()
{
  result = qword_1EC897E78;
  if (!qword_1EC897E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E78);
  }

  return result;
}

unint64_t sub_1D6EE1C08(uint64_t a1)
{
  result = sub_1D6EE1C30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE1C30()
{
  result = qword_1EC897E80;
  if (!qword_1EC897E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897E80);
  }

  return result;
}

unint64_t sub_1D6EE1C84(void *a1)
{
  a1[1] = sub_1D5C9F19C();
  a1[2] = sub_1D5C9F1F0();
  result = sub_1D5C9F2A0();
  a1[3] = result;
  return result;
}

uint64_t SharingRecipeActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingRecipeActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatItemNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 64);

  return v1;
}

double FormatItemNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatItemNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 80);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.resizingIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.renderKeyIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.resizingGroupIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D6EE20C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t FormatItemNodeDataLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatItemNodeDataLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.deinit()
{

  sub_1D5BCAAAC(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
  sub_1D5EB15C4(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility));

  return v0;
}

uint64_t FormatItemNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatItemNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6EE22B8()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

uint64_t FormatItemNodeDataLayoutAttributes.auxiliaryFeedItems.getter()
{
  v1 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v123 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 96) + 16);
  v140 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 96);

  v139 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v138 = v140 + 32;
    v122 = xmmword_1D7273AE0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v140 + 16))
    {
      v9 = *(v138 + 8 * v6++);
      v10 = v7;
      if (((1 << ((v9 >> 59) & 0x1E | ((v9 & 4) != 0))) & 0x6FFEF) != 0)
      {
        goto LABEL_7;
      }

      if (((v9 >> 59) & 0x1E | (v9 >> 2) & 1) == 4)
      {
        v20 = (v9 & 0xFFFFFFFFFFFFFFBLL);
        v21 = v20[2];
        v22 = v20[4];
        v23 = v20[5];
        v24 = v20[6];
        v25 = *(*(v21 + 64) + 96);
        v26 = *(v25 + 16);
        v111 = v20[3];

        v116 = v20;

        v112 = v21;

        v115 = v22;
        v114 = v23;
        v113 = v24;
        sub_1D5EBC314(v22, v23);

        v137 = v26;
        if (v26)
        {
          v27 = 0;
          v135 = v25;
          v136 = v25 + 32;
          v10 = v7;
          while (1)
          {
            if (v27 >= *(v25 + 16))
            {
              goto LABEL_115;
            }

            v28 = *(v136 + 8 * v27++);
            v29 = v7;
            if (((1 << ((v28 >> 59) & 0x1E | ((v28 & 4) != 0))) & 0x6FFEF) == 0)
            {
              break;
            }

LABEL_27:
            v30 = v29[2];
            v31 = v10[2];
            v32 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_116;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v32 <= v10[3] >> 1)
            {
              if (!v29[2])
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v31 <= v32)
              {
                v34 = v31 + v30;
              }

              else
              {
                v34 = v31;
              }

              v10 = sub_1D6991604(isUniquelyReferenced_nonNull_native, v34, 1, v10);
              if (!v29[2])
              {
LABEL_23:

                if (v30)
                {
                  goto LABEL_117;
                }

                goto LABEL_24;
              }
            }

            v35 = (v10[3] >> 1) - v10[2];
            result = type metadata accessor for FeedItem(0);
            if (v35 < v30)
            {
              goto LABEL_128;
            }

            swift_arrayInitWithCopy();

            if (v30)
            {
              v36 = v10[2];
              v18 = __OFADD__(v36, v30);
              v37 = v36 + v30;
              if (v18)
              {
                goto LABEL_133;
              }

              v10[2] = v37;
            }

LABEL_24:
            v25 = v135;
            if (v27 == v137)
            {
              goto LABEL_109;
            }
          }

          if (((v28 >> 59) & 0x1E | (v28 >> 2) & 1) != 4)
          {
            sub_1D5EBC240();
            v100 = swift_projectBox();
            v101 = v123;
            sub_1D6EE20C0(v100, v123, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308();
            v102 = *(type metadata accessor for FeedItem(0) - 8);
            v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
            v29 = swift_allocObject();
            *(v29 + 1) = v122;
            sub_1D6EE20C0(v101, v29 + v103, type metadata accessor for FeedItem);
            result = sub_1D5BCAAAC(v101, type metadata accessor for FormatItemNodeData);
            goto LABEL_27;
          }

          v38 = (v28 & 0xFFFFFFFFFFFFFFBLL);
          v40 = v38[2];
          v39 = v38[3];
          v41 = v38[5];
          v121 = v38[4];
          v42 = v38[6];
          v43 = *(*(v40 + 64) + 96);
          v134 = *(v43 + 16);
          v108[8] = v39;

          v110 = v38;

          v108[9] = v40;
          v44 = v43;

          v109 = v41;
          v108[10] = v42;
          sub_1D5EBC314(v121, v41);

          if (!v134)
          {
            v29 = v7;
LABEL_106:

            sub_1D5EBC358(v121, v109);

            goto LABEL_27;
          }

          v45 = 0;
          v131 = v8;
          v132 = v43 + 32;
          v29 = v7;
          while (2)
          {
            if (v45 >= *(v44 + 16))
            {
              goto LABEL_118;
            }

            v46 = *(v132 + 8 * v45);
            v142 = v45 + 1;
            v47 = v7;
            if (((1 << ((v46 >> 59) & 0x1E | ((v46 & 4) != 0))) & 0x6FFEF) != 0)
            {
LABEL_47:
              v48 = v47[2];
              v49 = v29[2];
              v50 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_119;
              }

              v51 = swift_isUniquelyReferenced_nonNull_native();
              if ((v51 & 1) != 0 && v50 <= v29[3] >> 1)
              {
                if (!v47[2])
                {
LABEL_43:

                  v8 = v131;
                  v45 = v142;
                  if (v48)
                  {
                    goto LABEL_120;
                  }

LABEL_44:
                  if (v45 == v134)
                  {
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              else
              {
                if (v49 <= v50)
                {
                  v52 = v49 + v48;
                }

                else
                {
                  v52 = v49;
                }

                v29 = sub_1D6991604(v51, v52, 1, v29);
                if (!v47[2])
                {
                  goto LABEL_43;
                }
              }

              v53 = (v29[3] >> 1) - v29[2];
              result = type metadata accessor for FeedItem(0);
              if (v53 < v48)
              {
                goto LABEL_129;
              }

              swift_arrayInitWithCopy();

              v8 = v131;
              v45 = v142;
              if (v48)
              {
                v54 = v29[2];
                v18 = __OFADD__(v54, v48);
                v55 = v54 + v48;
                if (v18)
                {
                  goto LABEL_134;
                }

                v29[2] = v55;
              }

              goto LABEL_44;
            }

            break;
          }

          if (((v46 >> 59) & 0x1E | (v46 >> 2) & 1) != 4)
          {
            sub_1D5EBC240();
            v96 = swift_projectBox();
            v97 = v123;
            sub_1D6EE20C0(v96, v123, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308();
            v98 = *(type metadata accessor for FeedItem(0) - 8);
            v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
            v47 = swift_allocObject();
            *(v47 + 1) = v122;
            sub_1D6EE20C0(v97, v47 + v99, type metadata accessor for FeedItem);
            result = sub_1D5BCAAAC(v97, type metadata accessor for FormatItemNodeData);
            goto LABEL_47;
          }

          v56 = (v46 & 0xFFFFFFFFFFFFFFBLL);
          v58 = v56[2];
          v57 = v56[3];
          v59 = v56[5];
          v120 = v56[4];
          v119 = v59;
          v60 = v56[6];
          v61 = *(*(v58 + 64) + 96);
          v133 = *(v61 + 16);
          v108[4] = v57;

          v108[7] = v56;

          v108[5] = v58;

          v108[6] = v60;
          sub_1D5EBC314(v120, v119);

          if (!v133)
          {
            v47 = v7;
LABEL_103:

            sub_1D5EBC358(v120, v119);

            goto LABEL_47;
          }

          v62 = 0;
          v128 = v61;
          v129 = v61 + 32;
          v47 = v7;
          while (2)
          {
            if (v62 >= *(v61 + 16))
            {
              goto LABEL_121;
            }

            v63 = *(v129 + 8 * v62);
            v141 = v62 + 1;
            if (((1 << ((v63 >> 59) & 0x1E | ((v63 & 4) != 0))) & 0x6FFEF) != 0)
            {
LABEL_67:
              v64 = v7[2];
              v65 = v47[2];
              v66 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                goto LABEL_122;
              }

              v67 = swift_isUniquelyReferenced_nonNull_native();
              if (v67 && v66 <= v47[3] >> 1)
              {
                if (!v7[2])
                {
LABEL_63:

                  v7 = MEMORY[0x1E69E7CC0];
                  v62 = v141;
                  if (v64)
                  {
                    goto LABEL_123;
                  }

LABEL_64:
                  v61 = v128;
                  if (v62 == v133)
                  {
                    goto LABEL_103;
                  }

                  continue;
                }
              }

              else
              {
                if (v65 <= v66)
                {
                  v68 = v65 + v64;
                }

                else
                {
                  v68 = v65;
                }

                v47 = sub_1D6991604(v67, v68, 1, v47);
                if (!v7[2])
                {
                  goto LABEL_63;
                }
              }

              v69 = (v47[3] >> 1) - v47[2];
              result = type metadata accessor for FeedItem(0);
              if (v69 < v64)
              {
                goto LABEL_130;
              }

              swift_arrayInitWithCopy();

              v7 = MEMORY[0x1E69E7CC0];
              v62 = v141;
              if (v64)
              {
                v70 = v47[2];
                v18 = __OFADD__(v70, v64);
                v71 = v70 + v64;
                if (v18)
                {
                  goto LABEL_135;
                }

                v47[2] = v71;
              }

              goto LABEL_64;
            }

            break;
          }

          if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) != 4)
          {
            sub_1D5EBC240();
            v92 = swift_projectBox();
            v93 = v123;
            sub_1D6EE20C0(v92, v123, type metadata accessor for FormatItemNodeData);
            sub_1D6EE3308();
            v94 = *(type metadata accessor for FeedItem(0) - 8);
            v95 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            v7 = swift_allocObject();
            *(v7 + 1) = v122;
            sub_1D6EE20C0(v93, v7 + v95, type metadata accessor for FeedItem);
            result = sub_1D5BCAAAC(v93, type metadata accessor for FormatItemNodeData);
            goto LABEL_67;
          }

          v72 = (v63 & 0xFFFFFFFFFFFFFFBLL);
          v74 = v72[2];
          v73 = v72[3];
          v75 = v72[5];
          v118 = v72[4];
          v117 = v75;
          v76 = v72[6];
          v77 = *(*(v74 + 64) + 96);
          v130 = *(v77 + 16);
          v108[0] = v73;

          v108[3] = v72;

          v108[1] = v74;

          v108[2] = v76;
          sub_1D5EBC314(v118, v117);

          v7 = MEMORY[0x1E69E7CC0];
          if (!v130)
          {
LABEL_100:

            sub_1D5EBC358(v118, v117);

            goto LABEL_67;
          }

          v78 = 0;
          v126 = v44;
          v127 = v77 + 32;
          v124 = v77;
          v125 = v47;
          while (2)
          {
            if (v78 >= *(v77 + 16))
            {
              goto LABEL_124;
            }

            v79 = v29;
            v80 = v10;
            v81 = v27;
            v82 = v6;
            v143 = *(v127 + 8 * v78);
            result = sub_1D6EE718C();
            v83 = *(result + 16);
            v84 = v7[2];
            v85 = v84 + v83;
            if (__OFADD__(v84, v83))
            {
              goto LABEL_125;
            }

            v86 = result;
            v87 = swift_isUniquelyReferenced_nonNull_native();
            if (v87 && v85 <= v7[3] >> 1)
            {
              if (!*(v86 + 16))
              {
LABEL_83:

                v6 = v82;
                v27 = v81;
                v10 = v80;
                v29 = v79;
                v47 = v125;
                v44 = v126;
                if (v83)
                {
                  goto LABEL_126;
                }

LABEL_84:
                ++v78;
                v77 = v124;
                if (v130 == v78)
                {
                  goto LABEL_100;
                }

                continue;
              }
            }

            else
            {
              if (v84 <= v85)
              {
                v88 = v84 + v83;
              }

              else
              {
                v88 = v84;
              }

              v7 = sub_1D6991604(v87, v88, 1, v7);
              if (!*(v86 + 16))
              {
                goto LABEL_83;
              }
            }

            break;
          }

          v89 = (v7[3] >> 1) - v7[2];
          result = type metadata accessor for FeedItem(0);
          if (v89 < v83)
          {
            goto LABEL_131;
          }

          swift_arrayInitWithCopy();

          v6 = v82;
          v27 = v81;
          v10 = v80;
          v29 = v79;
          v47 = v125;
          v44 = v126;
          if (v83)
          {
            v90 = v7[2];
            v18 = __OFADD__(v90, v83);
            v91 = v90 + v83;
            if (v18)
            {
              goto LABEL_136;
            }

            v7[2] = v91;
          }

          goto LABEL_84;
        }

        v10 = v7;
LABEL_109:

        sub_1D5EBC358(v115, v114);
      }

      else
      {
        sub_1D5EBC240();
        v104 = swift_projectBox();
        v105 = v123;
        sub_1D6EE20C0(v104, v123, type metadata accessor for FormatItemNodeData);
        sub_1D6EE3308();
        v106 = *(type metadata accessor for FeedItem(0) - 8);
        v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v10 = swift_allocObject();
        *(v10 + 1) = v122;
        sub_1D6EE20C0(v105, v10 + v107, type metadata accessor for FeedItem);
        result = sub_1D5BCAAAC(v105, type metadata accessor for FormatItemNodeData);
      }

LABEL_7:
      v11 = v10[2];
      v12 = v8[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_113;
      }

      v14 = swift_isUniquelyReferenced_nonNull_native();
      if (v14 && v13 <= v8[3] >> 1)
      {
        if (!v10[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v8 = sub_1D6991604(v14, v15, 1, v8);
        if (!v10[2])
        {
LABEL_3:

          if (v11)
          {
            goto LABEL_114;
          }

          goto LABEL_4;
        }
      }

      v16 = (v8[3] >> 1) - v8[2];
      result = type metadata accessor for FeedItem(0);
      if (v16 < v11)
      {
        goto LABEL_127;
      }

      swift_arrayInitWithCopy();

      if (v11)
      {
        v17 = v8[2];
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_132;
        }

        v8[2] = v19;
      }

LABEL_4:
      if (v6 == v139)
      {
        goto LABEL_111;
      }
    }

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
LABEL_122:
    __break(1u);
LABEL_123:
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
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_111:

    return v8;
  }

  return result;
}

uint64_t type metadata accessor for FormatItemNodeDataLayoutAttributes()
{
  result = qword_1EDF1DE60;
  if (!qword_1EDF1DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6EE3308()
{
  if (!qword_1EDF02218)
  {
    type metadata accessor for FeedItem(255);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02218);
    }
  }
}

uint64_t sub_1D6EE3368()
{
  result = type metadata accessor for FeedItem(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1D6EE346C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_editor] = a1;
  v12 = type metadata accessor for DebugFormatNavigationController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 0;
  v22.receiver = v13;
  v22.super_class = v12;

  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] = objc_msgSendSuper2(&v22, sel_initWithRootViewController_, a2);
  v14 = objc_allocWithZone(v12);
  *&v14[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 0;
  v21.receiver = v14;
  v21.super_class = v12;
  *&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] = objc_msgSendSuper2(&v21, sel_initWithRootViewController_, a3);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  v16 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController;
  v17 = *&v15[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController];
  v18 = v15;
  [v17 setNavigationBarHidden:1 animated:0];
  [*&v15[v16] setToolbarHidden:0 animated:0];
  [*&v18[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] setToolbarHidden:0 animated:0];

  return v18;
}

id sub_1D6EE36F8()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  v16 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = result;
  result = [v16 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = result;
  [v17 addSubview_];

  [v16 didMoveToParentViewController_];
  result = [v16 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = result;
  [result bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  v29 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView];
  v30 = [objc_opt_self() separatorColor];
  [v29 setBackgroundColor_];

  result = [v1 view];
  if (result)
  {
    v31 = result;
    [result addSubview_];

    sub_1D725974C();

    sub_1D725975C();
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D6EE3A64(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_editor);
  type metadata accessor for DebugFormatConsoleAnimator();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 16) = v1;
  swift_unknownObjectWeakAssign();

  sub_1D5ED3714();
}

void sub_1D6EE3BF0()
{
  v1 = v0;
  *&v44[1] = v0;
  *&v44[9] = swift_getObjectType();
  objc_msgSendSuper2(&v44[1], sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;

  sub_1D725972C();

  v4 = sub_1D6EE3F48(v44[0], v0);
  v5 = [v0 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  [v3 setFrame_];

  v15 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView];

  sub_1D725972C();

  v16 = sub_1D6EE4214(v44[0], v1);
  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = [v1 view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v46.origin.x = v23;
  v46.origin.y = v25;
  v46.size.width = v27;
  v46.size.height = v29;
  [v15 setFrame_];
  v30 = [*&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] view];
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;

  sub_1D725972C();

  v32 = sub_1D6EE4214(v44[0], v1);
  v33 = sub_1D6EE40D0(v44[0], v1);
  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    [v34 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v47.origin.x = v37;
    v47.origin.y = v39;
    v47.size.width = v41;
    v47.size.height = v43;
    [v31 setFrame_];

    return;
  }

LABEL_11:
  __break(1u);
}

CGFloat sub_1D6EE3F48(unsigned __int8 a1, id a2)
{
  v3 = a1;
  v4 = [a2 view];
  v6 = v4;
  if (v3 <= 1)
  {
    if (v4)
    {
      [v4 safeAreaInsets];
      v8 = v7;

      v9 = [a2 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v37.origin.x = v12;
        v37.origin.y = v14;
        v37.size.width = v16;
        v37.size.height = v18;
        Width = CGRectGetWidth(v37);
        v20 = [a2 view];
        if (v20)
        {
          v21 = v20;
          [v20 safeAreaInsets];
          v23 = v22;

          return v8 + (Width - v23) * 0.5;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  [v4 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;

  return CGRectGetWidth(*&v32);
}

CGFloat sub_1D6EE40D0(unsigned __int8 a1, id a2)
{
  v3 = a1;
  v4 = [a2 view];
  v6 = v4;
  if (v3)
  {
    if (v4)
    {
      [v4 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v33.origin.x = v8;
      v33.origin.y = v10;
      v33.size.width = v12;
      v33.size.height = v14;
      Width = CGRectGetWidth(v33);
      v16 = [a2 view];
      if (v16)
      {
        v17 = v16;
        [v16 safeAreaInsets];
        v19 = v18;

        return (Width - v19) * 0.5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  [v4 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;

  return CGRectGetWidth(*&v28);
}

CGFloat sub_1D6EE4214(char a1, id a2)
{
  if (!a1)
  {
    return 0.0;
  }

  if (a1 == 1)
  {
    v3 = [a2 view];
    if (v3)
    {
      v5 = v3;
      [v3 safeAreaInsets];
      v7 = v6;

      v8 = [a2 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v38.origin.x = v11;
        v38.origin.y = v13;
        v38.size.width = v15;
        v38.size.height = v17;
        Width = CGRectGetWidth(v38);
        v19 = [a2 view];
        if (v19)
        {
          v20 = v19;
          [v19 safeAreaInsets];
          v22 = v21;

          return v7 + (Width - v22) * 0.5;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = [a2 view];
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;

  return CGRectGetWidth(*&v33);
}

uint64_t FormatSelector.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatSelector.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

BOOL FormatSelector.matches(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (qword_1EDF2AB18 != -1)
  {
LABEL_8:
    swift_once();
  }

  *&v16[0] = v3;
  *(&v16[0] + 1) = v4;
  v3 = sub_1D6844380(v16);
  v4 = -*(v3 + 16);
  v5 = -1;
  v6 = 32;
  do
  {
    v7 = v4 + v5;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = v6 + 56;
    v9 = v3 + v6;
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = *(v9 + 32);
    v17 = *(v9 + 48);
    v16[1] = v11;
    v16[2] = v12;
    v16[0] = v10;
    sub_1D5E3B610(v16, v15);
    v13 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v16);
    v6 = v8;
  }

  while ((v13 & 1) == 0);

  return v7 != -1;
}

uint64_t sub_1D6EE4610(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12[0] = v4;
    v12[1] = v5;
    v4 = sub_1D6844380(v12);
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = 0;
    v7 = 32;
    while (v6 < *(v4 + 16))
    {
      v8 = *(v4 + v7);
      v9 = *(v4 + v7 + 16);
      v10 = *(v4 + v7 + 32);
      v14 = *(v4 + v7 + 48);
      v13[1] = v9;
      v13[2] = v10;
      v13[0] = v8;
      sub_1D5E3B610(v13, v12);
      sub_1D6844F60(a1);
      if (v2)
      {

        return sub_1D5E3B66C(v13);
      }

      ++v6;
      sub_1D5E3B66C(v13);
      v7 += 56;
      if (v5 == v6)
      {
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

uint64_t FormatSelector.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1D72646FC();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelector.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6EE486C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  strcpy(v4, "not selector ");
  MEMORY[0x1DA6F9910](v1, v2);
  return v4[0];
}

unint64_t sub_1D6EE48C4(uint64_t a1)
{
  result = sub_1D666D9FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EE48EC(void *a1)
{
  a1[1] = sub_1D5C36978();
  a1[2] = sub_1D5D3E60C();
  result = sub_1D6EE4924();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EE4924()
{
  result = qword_1EDF32420;
  if (!qword_1EDF32420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32420);
  }

  return result;
}

unint64_t sub_1D6EE497C()
{
  result = qword_1EC897EB0;
  if (!qword_1EC897EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EB0);
  }

  return result;
}

unint64_t sub_1D6EE49E0()
{
  result = qword_1EC897EB8;
  if (!qword_1EC897EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897EB8);
  }

  return result;
}

uint64_t sub_1D6EE4A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D6999CBC(0, v1, 0);
  v2 = v25;
  v3 = a1 + 64;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 8 * v5);
    v12 = swift_allocObject();
    *(v12 + 16) = *(*(v11 + 32) + 96);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v14 >= v13 >> 1)
    {
      result = sub_1D6999CBC((v13 > 1), v14 + 1, 1);
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12 | 0xB000000000000000;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v10);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      v9 = v23;
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v5, v24, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v24, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *FormatDataLayoutValue.formatImageRequests(options:inventory:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v11 = *v2;
  v12 = (*v2 >> 59) & 0x1E | (*v2 >> 2) & 1;
  if (v12 <= 4)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v26 = swift_projectBox() + *(v25 + 48);
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
      }

      else
      {
        v27 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v28 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      }

      sub_1D5EBC314(v27, v28);

      v29 = sub_1D5EBC6B4(a1, a2);

      sub_1D5EBC358(v27, v28);
      return v29;
    }

    else if ((v12 - 1) >= 2)
    {
      v21 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v21 >> 61 == 5)
      {
        v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
        v24 = *(v23 + 24);
        v33 = *(v23 + 16);
      }

      else
      {
        v33 = *(v11 + 16);
        v24 = *(v22 + 96);
      }

      sub_1D7147F08(a1, a2, &v33, v24, &v34);
      if (v35)
      {
        sub_1D5B63F14(&v34, v36);
        sub_1D6EE9640(0, &qword_1EDF19AD0, sub_1D61BA350, MEMORY[0x1E69E6F90]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D7273AE0;
        sub_1D5B63F14(v36, v31 + 32);
        return v31;
      }

      else
      {
        sub_1D5C1661C(&v34);
        return 0;
      }
    }
  }

  else
  {
    if (v12 > 0x12)
    {
      goto LABEL_16;
    }

    if (((1 << v12) & 0x6BF80) != 0)
    {
      return result;
    }

    if (v12 == 14)
    {
      v13 = v7;
      sub_1D6EE70EC(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v15 = v14;
      v16 = swift_projectBox();
      v17 = v16 + *(v15 + 48);
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      sub_1D6EE96A4(v16, v9, type metadata accessor for FormatVideoPlayerData);
      *&v36[0] = *&v9[*(v13 + 40)];

      sub_1D5EBC314(v18, v19);

      v20 = sub_1D6F05BC0(a1, a2, v36);

      sub_1D5EBC358(v18, v19);

      sub_1D6EE970C(v9, type metadata accessor for FormatVideoPlayerData);
      return v20;
    }

    if (v12 == 16)
    {
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      swift_projectBox();

      v30 = sub_1D5EBC6B4(a1, a2);

      return v30;
    }

    else
    {
LABEL_16:
      if (v12 != 5)
      {
        return FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(a1, a2);
      }
    }
  }

  return result;
}

void *FormatDataLayoutValue.issueCoverImageRequests(options:inventory:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *v2;
  v5 = (*v2 >> 59) & 0x1E | (*v2 >> 2) & 1;
  if (v5 <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v17 = swift_projectBox() + *(v16 + 48);
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
      }

      else
      {
        v18 = v4 & 0xFFFFFFFFFFFFFFBLL;
        v19 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v20 = *(v18 + 40);
      }

      sub_1D5EBC314(v19, v20);

      v3 = sub_1D5EBC6B8(a1, a2);

      sub_1D5EBC358(v19, v20);
    }

    return v3;
  }

  if (v5 > 0x12)
  {
LABEL_15:
    if (v5 != 5)
    {
      return FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
    }

    return v3;
  }

  if (((1 << v5) & 0x6EF80) != 0)
  {
    return v3;
  }

  if (v5 != 12)
  {
    if (v5 == 16)
    {
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      swift_projectBox();

      v3 = sub_1D5EBC6B8(a1, a2);

      return v3;
    }

    goto LABEL_15;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
  v8 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  *(v36 + 9) = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
  v34 = v8;
  v35 = v7;
  v36[0] = v6;
  v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
  v10 = v8;
  if (!BYTE8(v36[1]))
  {
    v11 = a1;
    v12 = v35;
    sub_1D5EBC4A0(&v34, v33);
    goto LABEL_18;
  }

  if (BYTE8(v36[1]) == 1)
  {
    v11 = a1;
    v12 = *&v36[1];
    v13 = *&v36[0];
    sub_1D5EBC4A0(&v34, v33);

    v10 = v13;
LABEL_18:
    sub_1D6EE9640(0, &qword_1EDF19AD0, sub_1D61BA350, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D7273AE0;
    v24 = *(v9 + 192);
    v25 = *(v9 + 200);
    v26 = *v11;
    v27 = v12;
    sub_1D726327C();
    if (v24 > 0.0)
    {
      v30 = *&v24;
    }

    else
    {
      v30 = 0;
    }

    if (v24 > 0.0)
    {
      v31 = v25;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_1D5EBBF10(v27, v30, v31, v24 <= 0.0, v28, v29, v26);

    *(v3 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
    *(v3 + 64) = sub_1D6EE95F8(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
    *(v3 + 32) = v32;
    return v3;
  }

  return 0;
}

BOOL FormatDataLayoutValue.isResizing.getter()
{
  result = 0;
  v2 = *v0;
  v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  if (v3 <= 15)
  {
    if ((v3 - 6) >= 0xA && v3 >= 5)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v4 + 161))
      {
LABEL_5:
        swift_beginAccess();
        return CGRectGetHeight(*(v4 + 64)) <= 1.0;
      }

      return 0;
    }
  }

  else
  {
    if (v3 != 16)
    {
      if (v3 != 17)
      {
        return result;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v4 + 209))
      {
        goto LABEL_5;
      }

      return 0;
    }

    sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    swift_projectBox();

    sub_1D5EBBBE0();
    v7 = v6;

    return v7 & 1;
  }

  return result;
}

uint64_t FormatDataLayoutValue.identifier.getter()
{
  v0 = sub_1D6EE8B60();

  return v0;
}

unint64_t sub_1D6EE5698@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 120);
      break;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v4 = (*(swift_projectBox() + *(v11 + 48)) + 48);
      break;
    case 4uLL:
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 120);
      break;
    case 6uLL:
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 48);
      break;
    case 7uLL:
      v12 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v4 = (*(swift_projectBox() + *(v13 + 48)) + 120);
      break;
    case 0xAuLL:
      v12 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_23;
    case 0xBuLL:
      v6 = &unk_1EC884E78;
      v7 = &unk_1EC884E80;
      v8 = type metadata accessor for FormatVideoData;
      v9 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v12 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v4 = (*(swift_projectBox() + *(v14 + 48)) + 128);
      break;
    case 0xEuLL:
      v6 = &qword_1EC880340;
      v7 = &qword_1EC880348;
      v8 = type metadata accessor for FormatVideoPlayerData;
      v9 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v6, v8, v7, v9);
      goto LABEL_22;
    case 0xFuLL:
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 168);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v4 = (*(swift_projectBox() + *(v5 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility);
      break;
    case 0x11uLL:
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 176);
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v12 = *(swift_projectBox() + *(v10 + 48));
LABEL_23:
      v4 = (v12 + 112);
      break;
    default:
      v4 = (*(v3 + 24) + 120);
      break;
  }

  v15 = *v4;
  *a1 = *v4;

  return sub_1D5EB1500(v15);
}

uint64_t sub_1D6EE5A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v3 = (a1 + 32);
    v4 = v15;
    v5 = 0x6567616D69;
    do
    {
      v6 = *v3++;
      v7 = 0xE400000000000000;
      v8 = 1954047348;
      switch((v6 >> 59) & 0x1E | (v6 >> 2) & 1)
      {
        case 1uLL:
          break;
        case 2uLL:
          v8 = 2003134838;
          break;
        case 3uLL:
          v7 = 0xE600000000000000;
          v8 = 0x6E6F74747562;
          break;
        case 4uLL:
          v7 = 0xE500000000000000;
          v8 = 0x70756F7267;
          break;
        case 5uLL:
          v7 = 0xE800000000000000;
          v8 = 0x6465626D45626577;
          break;
        case 6uLL:
          v7 = 0xE900000000000077;
          v8 = 0x6569566574617473;
          break;
        case 7uLL:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
          break;
        case 8uLL:
          v8 = 0x63697274654D6461;
          v7 = 0xE900000000000073;
          break;
        case 9uLL:
          v8 = 1633905005;
          break;
        case 0xAuLL:
          v8 = 0x4D6465726579616CLL;
          v7 = 0xEC00000061696465;
          break;
        case 0xBuLL:
          v7 = 0xE500000000000000;
          v8 = 0x6F65646976;
          break;
        case 0xCuLL:
          v7 = 0xEA00000000007265;
          v8 = 0x766F436575737369;
          break;
        case 0xDuLL:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D73B9E90;
          break;
        case 0xEuLL:
          v8 = 0x616C506F65646976;
          v7 = 0xEB00000000726579;
          break;
        case 0xFuLL:
          v8 = 0x73736572676F7270;
          v7 = 0xEC00000077656956;
          break;
        case 0x10uLL:
          v8 = 1835365481;
          break;
        case 0x11uLL:
          v8 = 0x6D45656C7A7A7570;
          v7 = 0xEB00000000646562;
          break;
        case 0x12uLL:
          v8 = 0x65726F736E6F7073;
          v7 = 0xEF72656E6E614264;
          break;
        default:
          v7 = 0xE500000000000000;
          v8 = v5;
          break;
      }

      v16 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v5;
        sub_1D5BFC364((v9 > 1), v10 + 1, 1);
        v5 = v12;
        v4 = v16;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  sub_1D5B58150(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v13 = sub_1D7261F3C();

  return v13;
}

double sub_1D6EE5E70()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      break;
    case 2uLL:
      v5 = qword_1EDF31DD0;
      v6 = &qword_1EDF1C800;
      v7 = type metadata accessor for FormatViewData;
      v8 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v13 = *(swift_projectBox() + *(v12 + 48));
      goto LABEL_23;
    case 4uLL:
      v4 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 72;
      return *v4;
    case 6uLL:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v11 = *(v13 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_19;
    case 9uLL:
      v14 = &qword_1EC884E90;
      v15 = type metadata accessor for FormatMicaData;
      v16 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      break;
    case 0xBuLL:
      v5 = &qword_1EC884E78;
      v6 = &qword_1EC884E80;
      v7 = type metadata accessor for FormatVideoData;
      v8 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      break;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v4 = *(swift_projectBox() + *(v3 + 48)) + 80;
      swift_beginAccess();
      return *v4;
    case 0xEuLL:
      v5 = &qword_1EC880340;
      v6 = &qword_1EC880348;
      v7 = type metadata accessor for FormatVideoPlayerData;
      v8 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v5, v7, v6, v8);
      goto LABEL_19;
    case 0xFuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v11 = *(*(swift_projectBox() + *(v10 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v4 = v11 + 16;
      swift_beginAccess();
      return *v4;
    case 0x12uLL:
      v14 = qword_1EDF24398;
      v15 = type metadata accessor for FormatSponsoredBannerData;
      v16 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v14, v15, v16);
LABEL_19:
      v2 = *(swift_projectBox() + *(v9 + 48));
      break;
    default:
      v2 = *(v1 + 24);
      break;
  }

  v4 = v2 + 64;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_1D6EE6210@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v5 = 104;
      break;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v4 = (swift_projectBox() + *(v12 + 48));
      v5 = 32;
      break;
    case 4uLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 16);
      v5 = 104;
      break;
    case 6uLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v5 = 32;
      break;
    case 7uLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 24);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v4 = (swift_projectBox() + *(v13 + 48));
      v5 = 104;
      break;
    case 0xAuLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 56);
      goto LABEL_23;
    case 0xBuLL:
      v7 = &qword_1EC884E78;
      v8 = &qword_1EC884E80;
      v9 = type metadata accessor for FormatVideoData;
      v10 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 80);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v4 = (swift_projectBox() + *(v14 + 48));
      v5 = 112;
      break;
    case 0xEuLL:
      v7 = &qword_1EC880340;
      v8 = &qword_1EC880348;
      v9 = type metadata accessor for FormatVideoPlayerData;
      v10 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v7, v9, v8, v10);
      goto LABEL_22;
    case 0xFuLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 32);
      v5 = 104;
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v4 = (swift_projectBox() + *(v6 + 48));
      v5 = 40;
      break;
    case 0x11uLL:
      v4 = ((v3 & 0xFFFFFFFFFFFFFFBLL) + 24);
      v5 = 160;
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v4 = (swift_projectBox() + *(v11 + 48));
LABEL_23:
      v5 = 96;
      break;
    default:
      v4 = (v3 + 24);
      v5 = 104;
      break;
  }

  *a1 = *(*v4 + v5);
}

uint64_t sub_1D6EE65AC()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 112;
      return *v2;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v2 = *(swift_projectBox() + *(v9 + 48)) + 40;
      return *v2;
    case 4uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 112;
      return *v2;
    case 6uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 40;
      return *v2;
    case 7uLL:
      v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_23;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_22;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_13:
      v2 = *(swift_projectBox() + *(v11 + 48)) + 112;
      return *v2;
    case 0xAuLL:
      v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_23;
    case 0xBuLL:
      v4 = &qword_1EC884E78;
      v5 = &qword_1EC884E80;
      v6 = type metadata accessor for FormatVideoData;
      v7 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_6;
    case 0xCuLL:
      v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_23;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v2 = *(swift_projectBox() + *(v12 + 48)) + 120;
      return *v2;
    case 0xEuLL:
      v4 = &qword_1EC880340;
      v5 = &qword_1EC880348;
      v6 = type metadata accessor for FormatVideoPlayerData;
      v7 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_6:
      sub_1D6EE70EC(0, v4, v6, v5, v7);
      goto LABEL_22;
    case 0xFuLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 160;
      return *v2;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v2 = *(swift_projectBox() + *(v3 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex;
      return *v2;
    case 0x11uLL:
      v2 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 168;
      return *v2;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_22:
      v10 = *(swift_projectBox() + *(v8 + 48));
LABEL_23:
      v2 = v10 + 104;
      break;
    default:
      v2 = *(v1 + 24) + 112;
      break;
  }

  return *v2;
}

BOOL sub_1D6EE6930()
{
  v1 = *v0;
  v2 = (v1 >> 59) & 0x1E | (v1 >> 2) & 1;
  switch(v2)
  {
    case 6:
      v28 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;
      v30 = swift_allocObject();
      v31 = *(v28 + 16);
      swift_beginAccess();
      v32 = *(v31 + 32);
      *(v30 + 16) = *(v31 + 16);
      *(v30 + 32) = v32;
      *(inited + 32) = v30 | 0x3000000000000000;

      v34 = sub_1D6EE4A6C(v33);

      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(inited + 40) = v35 | 0x8000000000000000;
      v36 = sub_1D6DFBE58(inited);
      swift_setDeallocating();
LABEL_14:
      swift_arrayDestroy();
      return v36;
    case 4:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1D7270C10;
      v15 = swift_allocObject();
      v16 = *(v13 + 88);
      *(v15 + 16) = *(v13 + 72);
      *(v15 + 32) = v16;
      *(v14 + 32) = v15 | 0x3000000000000000;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D7279970;
      v18 = swift_allocObject();
      v19 = *(v13 + 160);
      v20 = *(v13 + 168);
      v21 = *(v13 + 176);
      v22 = *(v13 + 184);
      v45 = *(v13 + 152);
      *(v18 + 16) = v45;
      *(v18 + 24) = v19;
      *(v18 + 32) = v20;
      *(v18 + 40) = v21;
      *(v18 + 48) = v22;
      *(v17 + 32) = v18 | 0x9000000000000000;
      v23 = swift_allocObject();
      *(v23 + 16) = *(*(v13 + 64) + 96);
      *(v17 + 40) = v23 | 0xB000000000000000;
      v24 = swift_allocObject();
      v25 = *(v13 + 192);
      if (v25)
      {
        v26 = type metadata accessor for FormatGroupNodeStyle();
        v27 = sub_1D6EE95F8(&qword_1EDF0F100, type metadata accessor for FormatGroupNodeStyle);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 0;
      }

      *(v24 + 16) = v25;
      *(v24 + 40) = v26;
      *(v24 + 48) = v27;
      *(v17 + 48) = v24 | 0xA000000000000000;
      v42 = swift_allocObject();
      *(v42 + 16) = v17;
      *(v14 + 40) = v42 | 0x8000000000000000;
      sub_1D61CC60C(v45, v19, v20, v21);

      v36 = sub_1D6DFBE58(v14);
      swift_setDeallocating();
      goto LABEL_14;
    case 2:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v4 = *(swift_projectBox() + *(v3 + 48));
      sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
      v5 = swift_initStackObject();
      *(v5 + 16) = xmmword_1D7270C10;
      v6 = swift_allocObject();
      swift_beginAccess();
      v7 = *(v4 + 80);
      *(v6 + 16) = *(v4 + 64);
      *(v6 + 32) = v7;
      *(v5 + 32) = v6 | 0x3000000000000000;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D7273AE0;
      v9 = swift_allocObject();
      v10 = *(v4 + 96);
      if (v10)
      {
        v11 = type metadata accessor for FormatViewNodeStyle();
        v12 = sub_1D6EE95F8(&qword_1EDF2BA88, type metadata accessor for FormatViewNodeStyle);
      }

      else
      {
        v11 = 0;
        v12 = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
      }

      *(v9 + 16) = v10;
      *(v9 + 40) = v11;
      *(v9 + 48) = v12;
      *(v8 + 32) = v9 | 0xA000000000000000;
      v43 = swift_allocObject();
      *(v43 + 16) = v8;
      *(v5 + 40) = v43 | 0x8000000000000000;

      v36 = sub_1D6DFBE58(v5);
      swift_setDeallocating();
      goto LABEL_14;
  }

  sub_1D5B58150(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D6EE5E70();
  *(v38 + 24) = v39;
  *(v38 + 32) = v40;
  *(v38 + 40) = v41;
  *(v37 + 32) = v38 | 0x3000000000000000;
  v36 = sub_1D6DFBE58(v37);
  swift_setDeallocating();
  sub_1D6EE95A4(v37 + 32);
  return v36;
}

uint64_t FormatDataLayoutValue.nodeIdentifier.getter()
{
  v0 = sub_1D6EE9168();

  return v0;
}

uint64_t sub_1D6EE6F40@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  v4 = 0uLL;
  v5 = 1;
  v6 = 0;
  if (v3 <= 5)
  {
    if (v3 < 4)
    {
      v8 = 0;
      goto LABEL_17;
    }

    if (v3 == 4)
    {
      v13 = *(*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152);
      if (v13)
      {
        v5 = 0;
        v14 = *(v13 + 16);
        v6 = *(v14 + 48);
        v8 = *(v14 + 56);
        v4 = *(v14 + 64);
      }

      else
      {
        v5 = 1;
        v8 = 0;
      }

      goto LABEL_17;
    }

    v9 = a1;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x40))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v7 = (v3 - 6) >= 0xB && v3 == 17;
  v8 = 0;
  if (v7)
  {
    v9 = a1;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
    {
LABEL_8:
      swift_beginAccess();
      swift_beginAccess();
      CGRectGetMinX(*(v10 + 64));
      sub_1D726328C();
      CGRectGetMinY(*(v10 + 64));
      result = sub_1D726329C();
      *(&v4 + 1) = v12;
LABEL_16:
      v5 = 0;
      a1 = v9;
      goto LABEL_17;
    }

LABEL_15:
    result = swift_beginAccess();
    v4 = *(v10 + 80);
    v6 = 0;
    v8 = 0;
    goto LABEL_16;
  }

LABEL_17:
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_1D6EE70EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6EE9640(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6EE718C()
{
  v1 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = MEMORY[0x1E69E7CC0];
  if (((1 << ((v5 >> 59) & 0x1E | ((v5 & 4) != 0))) & 0x6FFEF) != 0)
  {
    return v6;
  }

  if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 4)
  {
    sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v27 = swift_projectBox();
    sub_1D6EE96A4(v27, v4, type metadata accessor for FormatItemNodeData);
    sub_1D6EE9640(0, &qword_1EDF02218, type metadata accessor for FeedItem, MEMORY[0x1E69E6F90]);
    v28 = *(type metadata accessor for FeedItem(0) - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7273AE0;
    sub_1D6EE96A4(v4, v6 + v29, type metadata accessor for FeedItem);
    sub_1D6EE970C(v4, type metadata accessor for FormatItemNodeData);
    return v6;
  }

  v8 = v5 & 0xFFFFFFFFFFFFFFBLL;
  v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v11 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  v12 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  v13 = *(v8 + 48);
  v14 = *(*(v10 + 64) + 96);
  v15 = *(v14 + 16);
  v30[1] = v9;

  v31 = v12;
  v32 = v11;
  v30[2] = v13;
  sub_1D5EBC314(v11, v12);

  if (!v15)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_24:

    sub_1D5EBC358(v32, v31);
    return v6;
  }

  v16 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v16 < *(v14 + 16))
  {
    v33 = *(v14 + 32 + 8 * v16);
    result = sub_1D6EE718C(result);
    v17 = *(result + 16);
    v18 = *(v6 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_26;
    }

    v20 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v6 + 24) >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v6 = sub_1D6991604(isUniquelyReferenced_nonNull_native, v22, 1, v6);
      if (*(v20 + 16))
      {
LABEL_18:
        v23 = (*(v6 + 24) >> 1) - *(v6 + 16);
        result = type metadata accessor for FeedItem(0);
        if (v23 < v17)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v24 = *(v6 + 16);
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_29;
          }

          *(v6 + 16) = v26;
        }

        goto LABEL_7;
      }
    }

    if (v17)
    {
      goto LABEL_27;
    }

LABEL_7:
    if (v15 == ++v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1D6EE7560(uint64_t a1@<X8>)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v15 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      goto LABEL_21;
    case 2uLL:
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      goto LABEL_16;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v19 = *(swift_projectBox() + *(v18 + 48));
      v17 = *(v19 + 64);
      v4 = *(v19 + 72);
      break;
    case 4uLL:
      v15 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_21;
    case 5uLL:
      v23 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v17 = *(v23 + 152);
      v4 = *(v23 + 160);
      break;
    case 6uLL:
    case 7uLL:
    case 8uLL:
      *a1 = 0;
      goto LABEL_3;
    case 9uLL:
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
LABEL_16:
      v15 = *(swift_projectBox() + *(v14 + 48));
      goto LABEL_21;
    case 0xAuLL:
      v13 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      goto LABEL_26;
    case 0xBuLL:
      v8 = &qword_1EC884E78;
      v9 = &qword_1EC884E80;
      v10 = type metadata accessor for FormatVideoData;
      v11 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_10;
    case 0xCuLL:
      v13 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      goto LABEL_26;
    case 0xDuLL:
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v22 = *(swift_projectBox() + *(v21 + 48));
      v17 = *(v22 + 144);
      v4 = *(v22 + 152);
      break;
    case 0xEuLL:
      v8 = &qword_1EC880340;
      v9 = &qword_1EC880348;
      v10 = type metadata accessor for FormatVideoPlayerData;
      v11 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_10:
      sub_1D6EE70EC(0, v8, v10, v9, v11);
      goto LABEL_24;
    case 0xFuLL:
      v16 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v17 = *(v16 + 176);
      v4 = *(v16 + 184);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v6 = *(*(swift_projectBox() + *(v5 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
      v7 = *(v6 + *(*v6 + 144));
      *a1 = 0;
      switch(v7)
      {
        case 5:
          v4 = 1;
          break;
        case 6:
          v4 = 65;
          break;
        case 7:
LABEL_3:
          v4 = -2;
          break;
        default:
          v4 = 0x80;
          break;
      }

      goto LABEL_28;
    case 0x11uLL:
      v20 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v17 = *(v20 + 200);
      v4 = *(v20 + 208);
      break;
    case 0x12uLL:
      sub_1D6EE9528(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
LABEL_24:
      v13 = *(swift_projectBox() + *(v12 + 48));
LABEL_26:
      v17 = *(v13 + 128);
      v4 = *(v13 + 136);
      break;
    default:
      v15 = *(v3 + 24);
LABEL_21:
      v17 = *(v15 + 136);
      v4 = *(v15 + 144);
      break;
  }

  *a1 = v17;
LABEL_28:
  *(a1 + 8) = v4;
}

uint64_t sub_1D6EE793C()
{
  v0 = sub_1D6EE8B60();

  return v0;
}

void sub_1D6EE7974(uint64_t a1@<X8>)
{
  v2 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v47 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v70 = v47;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v4 = 0xC000000000000008;
      goto LABEL_18;
    case 2uLL:
      v39 = a1;
      sub_1D6EE70EC(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v41 = swift_projectBox() + *(v40 + 48);
      v69 = *v41;
      v70 = *(v41 + 16);
      *&v71 = *(v41 + 32);
      a1 = v39;
      v18 = 0xC000000000000000;
      goto LABEL_29;
    case 3uLL:
      v81 = *v1;
      v5 = a1;
      v43 = sub_1D6EE8E64();
      v45 = v44;
      v80 = v2;
      sub_1D6EE7560(&v69);
      v9 = v69;
      v10 = BYTE8(v69);
      *v5 = v43;
      *(v5 + 8) = v45;
      v11 = 0xC000000000000018;
      goto LABEL_32;
    case 4uLL:
      v19 = a1;
      v20 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v81 = *v1;
      v21 = sub_1D6EE8E64();
      v23 = v22;
      v24 = swift_allocObject();
      v25 = *(v20 + 192);
      if (v25)
      {
        v26 = *(v25 + 232);
        v27 = *(v25 + 248);
        v28 = *(v25 + 200);
        v69 = *(v25 + 184);
        v70 = v28;
        v71 = *(v25 + 216);
        v72 = v26;
        v29 = *(v25 + 296);
        v30 = *(v25 + 328);
        v77 = *(v25 + 312);
        v78 = v30;
        v31 = *(v25 + 264);
        v32 = *(v25 + 280);
        v73 = v27;
        v74 = v31;
        v79 = *(v25 + 344);
        v75 = v32;
        v76 = v29;
        LOBYTE(v25) = sub_1D60081E0(&v69) == 0;
      }

      *(v24 + 16) = v25;
      v80 = v2;
      sub_1D6EE7560(&v69);
      v33 = v69;
      v34 = BYTE8(v69);
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v24;
      *(v19 + 24) = v33;
      *(v19 + 32) = v34;

      return;
    case 5uLL:
      v50 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v70 = v50;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1D6EE81FC(0xC000000000000020, &v69, v2, a1);
      return;
    case 6uLL:
      v81 = *v1;
      v54 = a1;
      v55 = sub_1D6EE8E64();
      v57 = v56;
      v58 = swift_allocObject();

      *(v58 + 16) = sub_1D5C44E90(v59);
      v80 = v2;
      sub_1D6EE7560(&v69);
      v60 = v69;
      v61 = BYTE8(v69);
      *v54 = v55;
      *(v54 + 8) = v57;
      *(v54 + 16) = v58 | 0x8000000000000000;
      *(v54 + 24) = v60;
      *(v54 + 32) = v61;
      return;
    case 7uLL:
      v46 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v70 = v46;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1D6EE8308(0xC000000000000028, &v69, v2, a1);
      return;
    case 8uLL:
      v81 = *v1;
      v5 = a1;
      v66 = sub_1D6EE8E64();
      v68 = v67;
      v80 = v2;
      sub_1D6EE7560(&v69);
      v9 = v69;
      v10 = BYTE8(v69);
      *v5 = v66;
      *(v5 + 8) = v68;
      v11 = 0xC000000000000030;
      goto LABEL_32;
    case 9uLL:
      v36 = a1;
      sub_1D6EE9528(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
      v38 = *(swift_projectBox() + *(v37 + 48));

      sub_1D6EE8414(0xC000000000000038, v38, v2, v36);
      return;
    case 0xAuLL:
      v65 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v70 = v65;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
      v18 = 0xC000000000000040;
      goto LABEL_29;
    case 0xBuLL:
      v15 = a1;
      sub_1D6EE70EC(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
      v17 = swift_projectBox() + *(v16 + 48);
      v69 = *v17;
      v70 = *(v17 + 16);
      *&v71 = *(v17 + 32);
      v18 = 0xC000000000000048;
      a1 = v15;
LABEL_29:
      sub_1D6EE851C(v18, &v69, v2, a1);
      return;
    case 0xCuLL:
      v35 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v70 = v35;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      sub_1D6EE8628(0xC000000000000050, &v69, v2, a1);
      return;
    case 0xDuLL:
      v51 = a1;
      sub_1D6EE9528(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      v53 = *(swift_projectBox() + *(v52 + 48));

      sub_1D6EE8734(0xC000000000000058, v53, v2, v51);
      return;
    case 0xEuLL:
      v12 = a1;
      sub_1D6EE70EC(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v14 = swift_projectBox() + *(v13 + 48);
      v69 = *v14;
      v70 = *(v14 + 16);
      *&v71 = *(v14 + 32);
      sub_1D6EE883C(0xC000000000000060, &v69, v2, v12);
      return;
    case 0xFuLL:
      v42 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v69 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = v42;
      *&v71 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      sub_1D6EE8948(0xC000000000000068, &v69, v2, a1);
      return;
    case 0x10uLL:
      v81 = *v1;
      v5 = a1;
      v6 = sub_1D6EE8E64();
      v8 = v7;
      v80 = v2;
      sub_1D6EE7560(&v69);
      v9 = v69;
      v10 = BYTE8(v69);
      *v5 = v6;
      *(v5 + 8) = v8;
      v11 = 0xC000000000000070;
      goto LABEL_32;
    case 0x11uLL:
      v48 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v49 = *v1;

      sub_1D6EE8A54(0xC000000000000078, v48, v49, a1);
      return;
    case 0x12uLL:
      v81 = *v1;
      v5 = a1;
      v62 = sub_1D6EE8E64();
      v64 = v63;
      v80 = v2;
      sub_1D6EE7560(&v69);
      v9 = v69;
      v10 = BYTE8(v69);
      *v5 = v62;
      *(v5 + 8) = v64;
      v11 = 0xC000000000000080;
LABEL_32:
      *(v5 + 16) = v11;
      *(v5 + 24) = v9;
      *(v5 + 32) = v10;

      break;
    default:
      v3 = *(v2 + 40);
      v69 = *(v2 + 24);
      v70 = v3;
      *&v71 = *(v2 + 56);
      v4 = 0xC000000000000010;
LABEL_18:
      sub_1D6EE80F0(v4, &v69, v2, a1);
      break;
  }
}

unint64_t sub_1D6EE80F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 168);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE81FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 208);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 136);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8414@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 152);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE851C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 152);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8628@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 216);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8734@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 160);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE883C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 176);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8948@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a2 + 192);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

unint64_t sub_1D6EE8A54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 248);
  if (*(v7 + 16))
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = v11 | 0x4000000000000000;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v20 = a3;
    v8 = sub_1D6EE8E64();
    v10 = v15;
    v19 = a3;
    sub_1D6EE7560(&v17);
    v13 = v17;
    v14 = v18;

    v12 = a1;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;

  return sub_1D5F33D5C(a1);
}

uint64_t sub_1D6EE8B60()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v6 = qword_1EDF31DD0;
      v7 = &qword_1EDF1C800;
      v8 = type metadata accessor for FormatViewData;
      v9 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v13 = *(swift_projectBox() + *(v12 + 48));
      goto LABEL_23;
    case 4uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v2 = (v13 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_19;
    case 9uLL:
      v3 = &qword_1EC884E90;
      v4 = type metadata accessor for FormatMicaData;
      v5 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v6 = &unk_1EC884E78;
      v7 = &unk_1EC884E80;
      v8 = type metadata accessor for FormatVideoData;
      v9 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v3 = &qword_1EC899970;
      v4 = type metadata accessor for FormatShareAttributionData;
      v5 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v6 = &qword_1EC880340;
      v7 = &qword_1EC880348;
      v8 = type metadata accessor for FormatVideoPlayerData;
      v9 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v6, v8, v7, v9);
      goto LABEL_19;
    case 0xFuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v2 = (*(swift_projectBox() + *(v11 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v14 = 48;
      return *(*v2 + v14);
    case 0x12uLL:
      v3 = qword_1EDF24398;
      v4 = type metadata accessor for FormatSponsoredBannerData;
      v5 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v3, v4, v5);
LABEL_19:
      v2 = (swift_projectBox() + *(v10 + 48));
      break;
    default:
      v2 = (v1 + 24);
      break;
  }

  v14 = 16;
  return *(*v2 + v14);
}

uint64_t sub_1D6EE8E64()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v6 = qword_1EDF31DD0;
      v7 = &qword_1EDF1C800;
      v8 = type metadata accessor for FormatViewData;
      v9 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v13 = *(swift_projectBox() + *(v12 + 48));
      goto LABEL_23;
    case 4uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v2 = (v13 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_19;
    case 9uLL:
      v3 = &qword_1EC884E90;
      v4 = type metadata accessor for FormatMicaData;
      v5 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v6 = &qword_1EC884E78;
      v7 = &qword_1EC884E80;
      v8 = type metadata accessor for FormatVideoData;
      v9 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v3 = &qword_1EC899970;
      v4 = type metadata accessor for FormatShareAttributionData;
      v5 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v6 = &qword_1EC880340;
      v7 = &qword_1EC880348;
      v8 = type metadata accessor for FormatVideoPlayerData;
      v9 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v6, v8, v7, v9);
      goto LABEL_19;
    case 0xFuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v2 = (*(swift_projectBox() + *(v11 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v14 = 64;
      return *(*v2 + v14);
    case 0x12uLL:
      v3 = qword_1EDF24398;
      v4 = type metadata accessor for FormatSponsoredBannerData;
      v5 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v3, v4, v5);
LABEL_19:
      v2 = (swift_projectBox() + *(v10 + 48));
      break;
    default:
      v2 = (v1 + 24);
      break;
  }

  v14 = 32;
  return *(*v2 + v14);
}

uint64_t sub_1D6EE9168()
{
  v1 = *v0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 0x11uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 24);
      break;
    case 2uLL:
      v6 = qword_1EDF31DD0;
      v7 = &qword_1EDF1C800;
      v8 = type metadata accessor for FormatViewData;
      v9 = type metadata accessor for FormatViewNodeLayoutAttributes;
      goto LABEL_13;
    case 3uLL:
      sub_1D6EE70EC(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v13 = *(swift_projectBox() + *(v12 + 48));
      goto LABEL_23;
    case 4uLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 16);
      break;
    case 6uLL:
      v13 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_23:
      v2 = (v13 + 16);
      goto LABEL_24;
    case 8uLL:
      sub_1D61CAFE8();
      goto LABEL_19;
    case 9uLL:
      v3 = &qword_1EC884E90;
      v4 = type metadata accessor for FormatMicaData;
      v5 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      goto LABEL_18;
    case 0xAuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 56);
      break;
    case 0xBuLL:
      v6 = &qword_1EC884E78;
      v7 = &qword_1EC884E80;
      v8 = type metadata accessor for FormatVideoData;
      v9 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      goto LABEL_13;
    case 0xCuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 80);
      break;
    case 0xDuLL:
      v3 = &qword_1EC899970;
      v4 = type metadata accessor for FormatShareAttributionData;
      v5 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      goto LABEL_18;
    case 0xEuLL:
      v6 = &qword_1EC880340;
      v7 = &qword_1EC880348;
      v8 = type metadata accessor for FormatVideoPlayerData;
      v9 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
LABEL_13:
      sub_1D6EE70EC(0, v6, v8, v7, v9);
      goto LABEL_19;
    case 0xFuLL:
      v2 = ((v1 & 0xFFFFFFFFFFFFFFBLL) + 32);
      break;
    case 0x10uLL:
      sub_1D6EE9528(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
      v2 = (*(swift_projectBox() + *(v11 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
LABEL_24:
      v14 = 80;
      return *(*v2 + v14);
    case 0x12uLL:
      v3 = qword_1EDF24398;
      v4 = type metadata accessor for FormatSponsoredBannerData;
      v5 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
LABEL_18:
      sub_1D6EE9528(0, v3, v4, v5);
LABEL_19:
      v2 = (swift_projectBox() + *(v10 + 48));
      break;
    default:
      v2 = (v1 + 24);
      break;
  }

  v14 = 48;
  return *(*v2 + v14);
}