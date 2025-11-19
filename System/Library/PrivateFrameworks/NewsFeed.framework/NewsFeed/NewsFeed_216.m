id sub_1D6EBAE3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = 0;
  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_1D6EBAEE0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_dynamicCastObjCProtocolConditional();
  v3 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D6EBAFBC@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v3 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a1 = v3;
  return result;
}

uint64_t Sequence<>.feedItemScoreProfiles.getter()
{
  [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  sub_1D5B5A498(0, &unk_1EDF046A0);
  sub_1D726248C();
  return v1;
}

void sub_1D6EBB0CC(void **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    swift_unknownObjectRetain();
  }

  [v3 setObject:v2 forKey:v4];
}

uint64_t Sequence<>.feedContextByFeedID.getter()
{
  sub_1D6EBB6C0();
  sub_1D726248C();
  return v1;
}

void sub_1D6EBB1CC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *a2;
    v5 = v2;
    v6 = [v4 sourceFeedID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D726207C();
      v10 = v9;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *a1;
      sub_1D6D7B708(v5, v8, v10, isUniquelyReferenced_nonNull_native);

      *a1 = v12;
    }

    else
    {
    }
  }
}

char *Sequence<>.filteredFeedItemScoreProfiles(filteredFeedItems:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_12:
    sub_1D5B86020(v7);

    v22 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
    MEMORY[0x1EEE9AC00](v22, v19);
    sub_1D5B5A498(0, &unk_1EDF046A0);
    sub_1D726248C();

    return v23;
  }

  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v21 = a3;
    v9 = 0;
    v7 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      v13 = sub_1D726207C();
      v15 = v14;

      v23 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D6EBB4B8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = [*a2 itemID];
  v7 = sub_1D726207C();
  v9 = v8;

  LOBYTE(a3) = sub_1D5BE240C(v7, v9, a3);

  if (a3)
  {
    v10 = *a1;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      swift_unknownObjectRetain();
    }

    [v10 setObject:v5 forKey:v11];
  }
}

uint64_t _s8NewsFeed0B10ScoredItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = [*a1 itemID];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [v3 itemID];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5B5A498(0, &qword_1EDF1A650);
  v16 = v2;
  v17 = v4;
  v18 = sub_1D726370C();

  return v18 & 1;
}

void sub_1D6EBB6C0()
{
  if (!qword_1EDF05668)
  {
    sub_1D5B5A498(255, &qword_1EDF045C0);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05668);
    }
  }
}

unint64_t sub_1D6EBB754(uint64_t a1)
{
  result = sub_1D6155D74();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatPrintNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPrintNodeValue.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736E6F6974706FLL;
  v3 = 0x73676E69646E6962;
  if (v1 != 6)
  {
    v3 = 7105633;
  }

  v4 = 0x6574616C706D6574;
  if (v1 != 4)
  {
    v4 = 0x747865746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x40736E6F6974706FLL;
  if (v1 != 2)
  {
    v5 = 0x726F73727563;
  }

  if (*v0)
  {
    v2 = 0x40736E6F6974706FLL;
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

uint64_t FormatPrintNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatPrintNode.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatPrintNode.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *FormatPrintNode.__allocating_init(identifier:message:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_beginAccess();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  swift_beginAccess();
  v10[6] = a5;
  return v10;
}

void *FormatPrintNode.init(identifier:message:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  swift_beginAccess();
  v5[6] = a5;
  return v5;
}

uint64_t FormatPrintNode.deinit()
{

  return v0;
}

uint64_t FormatPrintNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6EBBC2C@<X0>(void *a1@<X8>)
{
  result = _s8NewsFeed15FormatPrintNodeC7defaultACXDvgZ_0();
  *a1 = result;
  return result;
}

void *sub_1D6EBBC54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66AB108(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6EBBCB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a2 + 40);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = a3[8];
    v8 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v7);
    sub_1D7263D4C();

    *&v36 = 0x4C5B20746E697250;
    *(&v36 + 1) = 0xEF205D74756F7961;
    MEMORY[0x1DA6F9910](v6, v5);
    (*(v8 + 8))(0x4C5B20746E697250, 0xEF205D74756F7961, v7, v8);
  }

  if (sub_1D6EBC3D0(&unk_1F5119A98))
  {
    v9 = a3[8];
    v10 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v9);
    sub_1D7263D4C();

    *&v36 = 0xD000000000000017;
    *(&v36 + 1) = 0x80000001D73F5930;
    sub_1D725A7EC();

    v11 = sub_1D6F6103C();

    *&v28 = v11;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1D6EBD758();
    sub_1D726491C();

    MEMORY[0x1DA6F9910](0, 0xE000000000000000);

    (*(v10 + 8))(0xD000000000000017, 0x80000001D73F5930, v9, v10);
  }

  if (sub_1D6EBC3D0(&unk_1F5119AC0))
  {
    v12 = a3[8];
    v13 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v12);
    sub_1D7263D4C();

    *&v36 = 0xD000000000000016;
    *(&v36 + 1) = 0x80000001D73F5910;
    sub_1D6EBD6F4(0, &qword_1EC897AC0, MEMORY[0x1E69D74C8]);
    *&v28 = sub_1D725A58C();
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1D6EBD6F4(0, &qword_1EC88D750, MEMORY[0x1E69D73A8]);
    sub_1D726491C();

    MEMORY[0x1DA6F9910](0, 0xE000000000000000);

    (*(v13 + 8))(0xD000000000000016, 0x80000001D73F5910, v12, v13);
  }

  if (sub_1D6EBC3D0(&unk_1F5119AE8))
  {
    v14 = a3[8];
    v15 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v14);
    sub_1D7263D4C();

    sub_1D6EBD6F4(0, &qword_1EC897AC0, MEMORY[0x1E69D74C8]);
    sub_1D725A5AC();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1D726491C();
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    sub_1D6EBD6A0(&v36);
    sub_1D6EBD6A0(&v32);
    MEMORY[0x1DA6F9910](0, 0xE000000000000000);

    (*(v15 + 8))(0xD000000000000018, 0x80000001D73F58F0, v14, v15);
  }

  if (sub_1D6EBC3D0(&unk_1F5119B10))
  {
    v16 = a3[8];
    v17 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v16);
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v36 = 0xD000000000000017;
    *(&v36 + 1) = 0x80000001D73F58D0;
    sub_1D6EBD6F4(0, &qword_1EC897AC0, MEMORY[0x1E69D74C8]);
    *&v28 = sub_1D725A59C();
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1D7259E3C();
    sub_1D726491C();

    MEMORY[0x1DA6F9910](v32, *(&v32 + 1));

    (*(v17 + 8))(v36, *(&v36 + 1), v16, v17);
  }

  result = sub_1D6EBC3D0(&unk_1F5119B38);
  if (result)
  {
    v19 = a3[8];
    v20 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v19);
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    v21 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v32 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v33 = v21;
    v22 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v34 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v35 = v22;
    sub_1D726491C();
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    sub_1D6EBD64C(&v36);
    MEMORY[0x1DA6F9910](0, 0xE000000000000000);

    (*(v20 + 8))(0xD000000000000018, 0x80000001D73F58B0, v19, v20);
  }

  return result;
}

uint64_t sub_1D6EBC3D0(uint64_t a1)
{
  swift_beginAccess();
  v34 = v1;
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v4 = sub_1D7264A5C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v9 = *(a1 + 16);
    if (!v9)
    {
      return 0;
    }

    v10 = 0;
    v33 = *(a1 + 16);
    while (1)
    {
      v11 = *(v34 + 48);
      if (*(v11 + 16))
      {
        v12 = *(a1 + 32 + v10);
        sub_1D7264A0C();

        sub_1D72621EC();

        v13 = sub_1D7264A5C();
        v14 = -1 << *(v11 + 32);
        v15 = v13 & ~v14;
        if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          do
          {
            v17 = *(*(v11 + 48) + v15);
            if (v17 > 3)
            {
              if (*(*(v11 + 48) + v15) > 5u)
              {
                if (v17 == 6)
                {
                  v23 = 0xE800000000000000;
                  v22 = 0x73676E69646E6962;
                  if (v12 > 3)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  v23 = 0xE300000000000000;
                  v22 = 7105633;
                  if (v12 > 3)
                  {
                    goto LABEL_43;
                  }
                }
              }

              else
              {
                if (v17 == 4)
                {
                  v22 = 0x6574616C706D6574;
                }

                else
                {
                  v22 = 0x747865746E6F63;
                }

                if (v17 == 4)
                {
                  v23 = 0xE800000000000000;
                }

                else
                {
                  v23 = 0xE700000000000000;
                }

                if (v12 > 3)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              v18 = 0x726F73727563;
              if (v17 == 2)
              {
                v18 = 0x40736E6F6974706FLL;
              }

              v19 = 0xEE0074756F79616CLL;
              if (v17 != 2)
              {
                v19 = 0xE600000000000000;
              }

              v20 = 0x736E6F6974706FLL;
              if (*(*(v11 + 48) + v15))
              {
                v20 = 0x40736E6F6974706FLL;
              }

              v21 = 0xEC000000646E6962;
              if (!*(*(v11 + 48) + v15))
              {
                v21 = 0xE700000000000000;
              }

              if (*(*(v11 + 48) + v15) <= 1u)
              {
                v22 = v20;
              }

              else
              {
                v22 = v18;
              }

              if (*(*(v11 + 48) + v15) <= 1u)
              {
                v23 = v21;
              }

              else
              {
                v23 = v19;
              }

              if (v12 > 3)
              {
LABEL_43:
                v25 = 7105633;
                if (v12 == 6)
                {
                  v25 = 0x73676E69646E6962;
                }

                v26 = 0xE300000000000000;
                if (v12 == 6)
                {
                  v26 = 0xE800000000000000;
                }

                v27 = 0x6574616C706D6574;
                if (v12 != 4)
                {
                  v27 = 0x747865746E6F63;
                }

                v28 = 0xE700000000000000;
                if (v12 == 4)
                {
                  v28 = 0xE800000000000000;
                }

                if (v12 <= 5)
                {
                  v29 = v27;
                }

                else
                {
                  v29 = v25;
                }

                if (v12 <= 5)
                {
                  v24 = v28;
                }

                else
                {
                  v24 = v26;
                }

                if (v22 != v29)
                {
                  goto LABEL_72;
                }

                goto LABEL_71;
              }
            }

            if (v12 > 1)
            {
              if (v12 == 2)
              {
                v30 = 0x40736E6F6974706FLL;
              }

              else
              {
                v30 = 0x726F73727563;
              }

              if (v12 == 2)
              {
                v24 = 0xEE0074756F79616CLL;
              }

              else
              {
                v24 = 0xE600000000000000;
              }

              if (v22 != v30)
              {
                goto LABEL_72;
              }
            }

            else if (v12)
            {
              v24 = 0xEC000000646E6962;
              if (v22 != 0x40736E6F6974706FLL)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v24 = 0xE700000000000000;
              if (v22 != 0x736E6F6974706FLL)
              {
                goto LABEL_72;
              }
            }

LABEL_71:
            if (v23 == v24)
            {

              goto LABEL_79;
            }

LABEL_72:
            v31 = sub_1D72646CC();

            if (v31)
            {
              goto LABEL_80;
            }

            v15 = (v15 + 1) & v16;
          }

          while (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
        }

        v9 = v33;
      }

      if (++v10 == v9)
      {
        return 0;
      }
    }
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) <= 6u)
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      goto LABEL_80;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_79:

LABEL_80:

  return 1;
}

NewsFeed::FormatPrintNodeValue_optional __swiftcall FormatPrintNodeValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1D6EBCAB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F6974706FLL;
  v5 = 0xE800000000000000;
  v6 = 0x73676E69646E6962;
  if (v2 != 6)
  {
    v6 = 7105633;
    v5 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574616C706D6574;
  if (v2 != 4)
  {
    v8 = 0x747865746E6F63;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0074756F79616CLL;
  v10 = 0x40736E6F6974706FLL;
  if (v2 != 2)
  {
    v10 = 0x726F73727563;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x40736E6F6974706FLL;
    v3 = 0xEC000000646E6962;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

BOOL sub_1D6EBCC40(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed20FormatPrintNodeValueO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_1D6EBCC80(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed20FormatPrintNodeValueO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D6EBCCC0(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed20FormatPrintNodeValueO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t _s8NewsFeed20FormatPrintNodeValueO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x736E6F6974706FLL;
  v3 = *a1;
  v4 = *a2;
  if (v3 > 3)
  {
    if (*a1 > 5u)
    {
      if (v3 == 6)
      {
        v6 = 0xE800000000000000;
        v5 = 0x73676E69646E6962;
      }

      else
      {
        v6 = 0xE300000000000000;
        v5 = 7105633;
      }
    }

    else if (v3 == 4)
    {
      v6 = 0xE800000000000000;
      v5 = 0x6574616C706D6574;
    }

    else
    {
      v6 = 0xE700000000000000;
      v5 = 0x747865746E6F63;
    }
  }

  else if (*a1 > 1u)
  {
    if (v3 == 2)
    {
      v5 = 0x40736E6F6974706FLL;
      v6 = 0xEE0074756F79616CLL;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x726F73727563;
    }
  }

  else
  {
    if (*a1)
    {
      v5 = 0x40736E6F6974706FLL;
    }

    else
    {
      v5 = 0x736E6F6974706FLL;
    }

    if (v3)
    {
      v6 = 0xEC000000646E6962;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0xE800000000000000;
  v9 = 0x73676E69646E6962;
  if (v4 != 6)
  {
    v9 = 7105633;
    v8 = 0xE300000000000000;
  }

  v10 = 0xE800000000000000;
  v11 = 0x6574616C706D6574;
  if (v4 != 4)
  {
    v11 = 0x747865746E6F63;
    v10 = 0xE700000000000000;
  }

  if (*a2 <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x40736E6F6974706FLL;
  v13 = 0xEE0074756F79616CLL;
  if (v4 != 2)
  {
    v12 = 0x726F73727563;
    v13 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x40736E6F6974706FLL;
    v7 = 0xEC000000646E6962;
  }

  if (*a2 > 1u)
  {
    v2 = v12;
    v7 = v13;
  }

  if (*a2 <= 3u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v9;
  }

  if (*a2 <= 3u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  if (v5 == v14 && v6 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1D72646CC();
  }

  return v16 & 1;
}

uint64_t sub_1D6EBCF50(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = (a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    strcpy(v12, "Print [Bind] ");
    HIWORD(v12[1]) = -4864;
    MEMORY[0x1DA6F9910](v4, v3);
    (*(v7 + 8))(v12[0], v12[1], v6, v7);
  }

  result = sub_1D6EBC3D0(&unk_1F50F6E70);
  if (result)
  {
    v9 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger + 24);
    v10 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger), v9);
    sub_1D7263D4C();

    sub_1D725A7EC();

    v11 = sub_1D6F6103C();

    v12[3] = v11;
    sub_1D6EBD758();
    sub_1D726491C();

    MEMORY[0x1DA6F9910](0, 0xE000000000000000);

    (*(v10 + 8))(0xD000000000000015, 0x80000001D73F5950, v9, v10);
  }

  return result;
}

void *_s8NewsFeed15FormatPrintNodeC7defaultACXDvgZ_0()
{
  v0 = sub_1D725895C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D725894C();
  v5 = sub_1D725893C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = sub_1D5E28984(&unk_1F5116200);
  type metadata accessor for FormatPrintNode();
  v9 = swift_allocObject();
  swift_beginAccess();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = 0;
  v9[5] = 0;
  swift_beginAccess();
  v9[6] = v8;
  return v9;
}

uint64_t sub_1D6EBD2B8(uint64_t a1)
{
  result = sub_1D6EBD3F0(&qword_1EC897A88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EBD320(void *a1)
{
  a1[1] = sub_1D6EBD3F0(&qword_1EC886FB0);
  a1[2] = sub_1D6EBD3F0(&qword_1EC889CD8);
  result = sub_1D6EBD3F0(&qword_1EC897A90);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6EBD3AC(uint64_t a1)
{
  result = sub_1D6EBD3F0(&qword_1EC897A98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EBD3F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPrintNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6EBD430()
{
  result = qword_1EC897AA0;
  if (!qword_1EC897AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AA0);
  }

  return result;
}

unint64_t sub_1D6EBD484(uint64_t a1)
{
  *(a1 + 8) = sub_1D6EBD4B4();
  result = sub_1D6EBD508();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6EBD4B4()
{
  result = qword_1EC897AA8;
  if (!qword_1EC897AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AA8);
  }

  return result;
}

unint64_t sub_1D6EBD508()
{
  result = qword_1EC897AB0;
  if (!qword_1EC897AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AB0);
  }

  return result;
}

unint64_t sub_1D6EBD55C(uint64_t a1)
{
  result = sub_1D6EBD584();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EBD584()
{
  result = qword_1EC897AB8;
  if (!qword_1EC897AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AB8);
  }

  return result;
}

unint64_t sub_1D6EBD5D8(void *a1)
{
  a1[1] = sub_1D66FA7E0();
  a1[2] = sub_1D5E1ADD8();
  result = sub_1D6EBD430();
  a1[3] = result;
  return result;
}

void sub_1D6EBD6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EB5218();
    v7 = a3(a1, &type metadata for FormatLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6EBD758()
{
  if (!qword_1EC897AC8)
  {
    type metadata accessor for FormatScopedOption();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897AC8);
    }
  }
}

unint64_t sub_1D6EBD7C8()
{
  result = qword_1EC897AD0;
  if (!qword_1EC897AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AD0);
  }

  return result;
}

uint64_t static FormatCodingEqualOperatorStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1 > 2u || *a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1D6EBD9B8(uint64_t a1)
{
  result = sub_1D6EBD9E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EBD9E0()
{
  result = qword_1EC897AD8;
  if (!qword_1EC897AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AD8);
  }

  return result;
}

uint64_t sub_1D6EBDA34()
{
  if (FormatOperator.rawValue.getter() == 0x6C61757165 && v0 == 0xE500000000000000)
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v3 = v2 ^ 1;
  }

  return v3 & 1;
}

uint64_t static FormatDerivedDataOptionStatement.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633D588(v2, v3);
}

uint64_t sub_1D6EBDB48()
{
  if (*v0)
  {
    return 0x7265696669646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6EBDB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6EBDC78(uint64_t a1)
{
  v2 = sub_1D6EBDEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EBDCB4(uint64_t a1)
{
  v2 = sub_1D6EBDEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDerivedDataOptionStatement.encode(to:)(void *a1)
{
  sub_1D6EBE330(0, &qword_1EC897AE0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EBDEAC();
  sub_1D7264B5C();
  v16 = 0;
  v9 = v13;
  sub_1D72643FC();
  if (!v9 && *(v12 + 16))
  {
    v15 = 1;
    v14 = v12;
    sub_1D6EBDF00();
    sub_1D6EBDF74();
    sub_1D66A7B28();
    sub_1D72647EC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6EBDEAC()
{
  result = qword_1EC897AE8;
  if (!qword_1EC897AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AE8);
  }

  return result;
}

unint64_t sub_1D6EBDF00()
{
  result = qword_1EC897AF0;
  if (!qword_1EC897AF0)
  {
    sub_1D6EBE330(255, &qword_1EC897AE0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897AF0);
  }

  return result;
}

void sub_1D6EBDF74()
{
  if (!qword_1EDF04AE8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04AE8);
    }
  }
}

uint64_t FormatDerivedDataOptionStatement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1D6EBE2C8();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EBE330(0, &qword_1EC897AF8, MEMORY[0x1E69E6F48]);
  v25 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EBDEAC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v10;
  v28 = 0;
  v15 = sub_1D72642BC();
  v18 = v17;
  v22 = v15;
  v27 = 1;
  v19 = sub_1D726434C();
  if (v19)
  {
    v26 = 1;
    sub_1D66A78A0();
    sub_1D726431C();
    v20 = sub_1D725A74C();
    (*(v23 + 8))(v8, v5);
    (*(v14 + 8))(v13, v25);
  }

  else
  {
    (*(v14 + 8))(v13, v25);
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = v24;
  *v24 = v22;
  v21[1] = v18;
  v21[2] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6EBE2C8()
{
  if (!qword_1EDF3BB98)
  {
    sub_1D5C59290();
    sub_1D5C592E4();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB98);
    }
  }
}

void sub_1D6EBE330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6EBDEAC();
    v7 = a3(a1, &type metadata for FormatDerivedDataOptionStatement.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6EBE3C4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633D588(v2, v3);
}

unint64_t sub_1D6EBE45C()
{
  result = qword_1EC897B00;
  if (!qword_1EC897B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B00);
  }

  return result;
}

unint64_t sub_1D6EBE4B4()
{
  result = qword_1EC897B08;
  if (!qword_1EC897B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B08);
  }

  return result;
}

unint64_t sub_1D6EBE50C()
{
  result = qword_1EC897B10;
  if (!qword_1EC897B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B10);
  }

  return result;
}

uint64_t sub_1D6EBE570@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  sub_1D6EBF460();
  v78 = v3;
  v74 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D683D3D4();
  v8 = v7;
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EBF5C8(0, &qword_1EDF03840, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v62 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EBF52C();
  v17 = v93;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v11;
  v20 = v77;
  v73 = v6;
  v21 = v78;
  v22 = v76;
  LOBYTE(v83) = 0;
  v23 = v16;
  v24 = sub_1D72642BC();
  v93 = v25;
  v70 = v24;
  LOBYTE(v83) = 1;
  v26 = sub_1D726422C();
  v71 = v27;
  v28 = a1;
  v29 = 0;
  v69 = v28;
  v67 = v26;
  LOBYTE(v83) = 2;
  v30 = sub_1D726422C();
  v72 = 0;
  v63 = v30;
  v68 = v31;
  LOBYTE(v83) = 3;
  v32 = sub_1D726434C();
  v66 = v23;
  if ((v32 & 1) == 0)
  {
    v64 = 0;
    v36 = v13;
    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  LOBYTE(v79) = 3;
  sub_1D6EBF580(&qword_1EDF3BB88, sub_1D683D3D4);
  v33 = v8;
  v34 = v72;
  sub_1D726431C();
  v72 = v34;
  if (!v34)
  {
    v64 = 0;
    v36 = v13;
    v65 = sub_1D725A74C();
    (*(v20 + 8))(v19, v33);
LABEL_13:
    LOBYTE(v83) = 5;
    v37 = v66;
    v38 = sub_1D726434C();
    v39 = v75;
    if (v38)
    {
      LOBYTE(v79) = 5;
      sub_1D6EBF580(&qword_1EDF17E80, sub_1D6EBF460);
      v40 = v73;
      v41 = v72;
      sub_1D726431C();
      v72 = v41;
      if (v41)
      {
        (*(v22 + 8))(v37, v36);
        v35 = 1;
        v29 = v64;
        goto LABEL_4;
      }

      v42 = sub_1D725A74C();
      (*(v74 + 8))(v40, v21);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    sub_1D683D540(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    LOBYTE(v79) = 4;
    sub_1D683D5F8(&qword_1EDF04A98, sub_1D5F0E5E8);
    v43 = v66;
    v44 = v72;
    sub_1D726431C();
    v72 = v44;
    if (v44)
    {
      LOBYTE(v79) = 6;
      sub_1D683D488();
      sub_1D726431C();
      v78 = v42;
      v48 = v83;
      v47 = v84;
      v49 = v85;
      v50 = v86;
      sub_1D683D540(0, &qword_1EDF01E40, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      v45 = v51;
      *(v51 + 16) = xmmword_1D7273AE0;
      *(v51 + 32) = 0x617453746E657665;
      *(v51 + 40) = 0xEF61746144636974;
      *(v51 + 48) = 0x7461446465626D65;
      *(v51 + 56) = 0xE900000000000061;
      *(v51 + 64) = v48;
      *(v51 + 72) = v47;
      if (v50)
      {
        v45 = sub_1D6994480(1, 2, 1, v51);

        (*(v22 + 8))(v66, v36);
        *(v45 + 2) = 2;
        strcpy(v45 + 80, "eventLiveData");
        *(v45 + 47) = -4864;
        strcpy(v45 + 96, "liveEmbedData");
        *(v45 + 55) = -4864;
        v72 = 0;
        *(v45 + 14) = v49;
        *(v45 + 15) = v50;
      }

      else
      {

        (*(v22 + 8))(v66, v36);
        v72 = 0;
      }

      v46 = v75;
    }

    else
    {
      v78 = v42;
      (*(v22 + 8))(v43, v36);
      v45 = v83;
      v46 = v39;
    }

    v52 = v70;
    v53 = v93;
    *&v79 = v70;
    *(&v79 + 1) = v93;
    v54 = v67;
    v55 = v71;
    *&v80 = v67;
    *(&v80 + 1) = v71;
    v56 = v63;
    v57 = v68;
    *&v81 = v63;
    *(&v81 + 1) = v68;
    v58 = v65;
    *v82 = v65;
    *&v82[8] = v45;
    v59 = v78;
    *&v82[16] = v78;
    v82[24] = 3;
    v60 = *v82;
    v46[2] = v81;
    v46[3] = v60;
    *(v46 + 57) = *&v82[9];
    v61 = v80;
    *v46 = v79;
    v46[1] = v61;
    sub_1D5FC4D88(&v79, &v83);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v83 = v52;
    v84 = v53;
    v85 = v54;
    v86 = v55;
    v87 = v56;
    v88 = v57;
    v89 = v58;
    v90 = v45;
    v91 = v59;
    v92 = 3;
    return sub_1D5FC4DE4(&v83);
  }

  (*(v22 + 8))(v23, v13);
  v35 = 0;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v69);

  if (!v29)
  {
  }

  if (v35)
  {
  }

  return result;
}

uint64_t sub_1D6EBEECC(void *a1)
{
  sub_1D6EBF5C8(0, &qword_1EC897B18, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v18 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EBF52C();
  sub_1D7264B5C();
  LOBYTE(v26) = 0;
  v12 = v25;
  sub_1D72643FC();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v26 = v24;
    v27 = v23;
    v28 = 1;
    v15 = MEMORY[0x1E69E6720];
    sub_1D683D540(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D683D590(&qword_1EDF054F0, &qword_1EDF43BE0, v15);
    sub_1D726443C();
    v26 = v13;
    v27 = v14;
    v28 = 2;
    sub_1D726443C();
    v26 = v20;
    v28 = 3;
    v16 = MEMORY[0x1E69E62F8];
    sub_1D683D540(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D683D590(&qword_1EDF04A90, &qword_1EDF43BA0, v16);
    sub_1D726443C();
    v26 = v19;
    v28 = 4;
    sub_1D683D540(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D683D5F8(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
    v26 = v18;
    v28 = 5;
    sub_1D6EBF62C();
    sub_1D6EBF684();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6EBF294()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x73746E657665;
  if (v1 != 5)
  {
    v3 = 0x72756F5361746164;
  }

  v4 = 0x736449676174;
  if (v1 != 3)
  {
    v4 = 0x53617461446C7275;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x615465756761656CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1D6EBF390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EBF844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EBF3B8(uint64_t a1)
{
  v2 = sub_1D6EBF52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EBF3F4(uint64_t a1)
{
  v2 = sub_1D6EBF52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6EBF460()
{
  if (!qword_1EDF17E78)
  {
    type metadata accessor for SportsDataVisualizationResponseScoreItem();
    sub_1D6EBF580(&qword_1EDF06360, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    sub_1D6EBF580(&qword_1EDF06368, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17E78);
    }
  }
}

unint64_t sub_1D6EBF52C()
{
  result = qword_1EDF06270;
  if (!qword_1EDF06270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06270);
  }

  return result;
}

uint64_t sub_1D6EBF580(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6EBF5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6EBF52C();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseBracketItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6EBF62C()
{
  if (!qword_1EC897B20)
  {
    type metadata accessor for SportsDataVisualizationResponseScoreItem();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897B20);
    }
  }
}

unint64_t sub_1D6EBF684()
{
  result = qword_1EC897B28;
  if (!qword_1EC897B28)
  {
    sub_1D6EBF62C();
    sub_1D6EBF580(&qword_1EDF06368, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B28);
  }

  return result;
}

unint64_t sub_1D6EBF740()
{
  result = qword_1EC897B30;
  if (!qword_1EC897B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B30);
  }

  return result;
}

unint64_t sub_1D6EBF798()
{
  result = qword_1EDF06260;
  if (!qword_1EDF06260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06260);
  }

  return result;
}

unint64_t sub_1D6EBF7F0()
{
  result = qword_1EDF06268;
  if (!qword_1EDF06268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06268);
  }

  return result;
}

uint64_t sub_1D6EBF844(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F5970 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736449676174 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *FeedLayoutCache.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D5BC10E0();
  swift_allocObject();
  v0[2] = sub_1D725B83C();
  sub_1D5BBDF2C();
  swift_allocObject();
  v0[3] = sub_1D725B83C();
  sub_1D5BBCD24();
  swift_allocObject();
  v0[4] = sub_1D725B83C();
  return v0;
}

void *FeedLayoutCache.init()()
{
  sub_1D5BC10E0();
  swift_allocObject();
  v0[2] = sub_1D725B83C();
  sub_1D5BBDF2C();
  swift_allocObject();
  v0[3] = sub_1D725B83C();
  sub_1D5BBCD24();
  swift_allocObject();
  v0[4] = sub_1D725B83C();
  return v0;
}

uint64_t sub_1D6EBFBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLayoutCacheKey();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D725E29C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 44)))
  {
    return 0;
  }

  v13 = sub_1D725EBFC();
  (*(v9 + 104))(v12, *MEMORY[0x1E69D7DD8], v8);
  v14 = sub_1D5BD36C8(v12, v13);

  (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {

    return 0;
  }

  sub_1D5BE8E40(a1, v7, type metadata accessor for FeedLayoutCacheKey);
  v16 = v7[2];
  v15 = v7[3];
  v17 = v7[10];
  v18 = v7 + *(v4 + 24);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);

  sub_1D5BEA830(v7, type metadata accessor for FeedLayoutCacheKey);
  v22[1] = v16;
  v22[2] = v15;
  v22[3] = v17;
  v22[4] = v20;
  v22[5] = v19;
  sub_1D725B86C();

  if (v22[7])
  {
    return v22[6];
  }

  else
  {
    return 0;
  }
}

uint64_t FeedLayoutCache.deinit()
{

  return v0;
}

uint64_t FeedLayoutCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6EBFEA4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  MEMORY[0x1DA6FC0B0](*v0);
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  sub_1D5BE7138(v3, v4);
  sub_1D5BE7138(v5, v6);
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  return MEMORY[0x1DA6FC0E0](*&v14);
}

uint64_t sub_1D6EBFF80()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  v10 = v0[10];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v1);
  MEMORY[0x1DA6FC0B0](v2);
  MEMORY[0x1DA6FC0B0](v3);
  sub_1D5BE7138(v4, v5);
  sub_1D5BE7138(v6, v7);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v11 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v10 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  return sub_1D7264A5C();
}

uint64_t sub_1D6EC0090(void *a1)
{
  sub_1D6EC143C(0, &qword_1EDF02880, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EC1380();
  sub_1D7264B5C();
  v10[15] = 0;
  type metadata accessor for FeedLayoutCacheKey();
  sub_1D5BBC604(&qword_1EDF14A48, type metadata accessor for FeedLayoutCacheKey);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FeedLayoutCacheFastPathResult();
    v10[14] = 1;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6EC025C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for FeedLayoutCacheKey();
  MEMORY[0x1EEE9AC00](v4, v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EC143C(0, &qword_1EDF03B78, MEMORY[0x1E69E6F48]);
  v30 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FeedLayoutCacheFastPathResult();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EC1380();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v11;
  v15 = v14;
  v16 = v28;
  v32 = 0;
  sub_1D5BBC604(&qword_1EDF14A40, type metadata accessor for FeedLayoutCacheKey);
  v18 = v29;
  v17 = v30;
  sub_1D726431C();
  sub_1D6EC13D4(v18, v15, type metadata accessor for FeedLayoutCacheKey);
  v31 = 1;
  v19 = sub_1D72642BC();
  v21 = v20;
  (*(v16 + 8))(v10, v17);
  v22 = v27;
  v23 = (v15 + *(v26 + 20));
  *v23 = v19;
  v23[1] = v21;
  sub_1D5BE8E40(v15, v22, type metadata accessor for FeedLayoutCacheFastPathResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5BEA830(v15, type metadata accessor for FeedLayoutCacheFastPathResult);
}

uint64_t sub_1D6EC05A4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  v10 = v0[10];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v1);
  MEMORY[0x1DA6FC0B0](v2);
  MEMORY[0x1DA6FC0B0](v3);
  sub_1D5BE7138(v4, v5);
  sub_1D5BE7138(v6, v7);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v11 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v10 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  return sub_1D7264A5C();
}

uint64_t sub_1D6EC06B4()
{
  if (*v0)
  {
    return 0x75736552646E6962;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_1D6EC06F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75736552646E6962 && a2 == 0xEA0000000000746CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6EC07D8(uint64_t a1)
{
  v2 = sub_1D6EC1380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EC0814(uint64_t a1)
{
  v2 = sub_1D6EC1380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6EC0880()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6EC0900()
{
  v1 = *(v0 + 16);
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](v1);

  return sub_1D72621EC();
}

void *sub_1D6EC0968(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D70E27B0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D6EC09F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D5B87494(0, &qword_1EDF1A590);
  result = sub_1D7263CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D7264A0C();

    sub_1D72621EC();
    result = sub_1D7264A5C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D6EC0C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D5B87494(0, &qword_1EDF042D0);
  result = sub_1D7263CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x1DA6FC080](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D6EC0E24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D6EC151C();
  result = sub_1D7263CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D72636FC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D6EC100C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D5B87494(0, &qword_1EDF1A588);
  result = sub_1D7263CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D72649FC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1D6EC1204(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 128);
  v10[2] = *(a1 + 112);
  v10[3] = v3;
  v11 = *(a1 + 144);
  v4 = *(a1 + 96);
  v10[0] = *(a1 + 80);
  v10[1] = v4;
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  return _s8NewsFeed0B19LayoutCacheFixedKeyV2eeoiySbAC_ACtFZ_0(v10, v8);
}

uint64_t sub_1D6EC1310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EC1330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 88) = v3;
  return result;
}

unint64_t sub_1D6EC1380()
{
  result = qword_1EDF13460[0];
  if (!qword_1EDF13460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF13460);
  }

  return result;
}

uint64_t sub_1D6EC13D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6EC143C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6EC1380();
    v7 = a3(a1, &type metadata for FeedLayoutCacheFastPathResult.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_1D6EC14A0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v6 = *(a1 + 64);
  v12[2] = *(a1 + 48);
  v12[3] = v6;
  v13 = *(a1 + 80);
  v7 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v7;
  v8 = *(a2 + 64);
  v10[2] = *(a2 + 48);
  v10[3] = v8;
  v11 = *(a2 + 80);
  v9 = *(a2 + 32);
  v10[0] = *(a2 + 16);
  v10[1] = v9;
  return _s8NewsFeed0B19LayoutCacheFixedKeyV2eeoiySbAC_ACtFZ_0(v12, v10);
}

void sub_1D6EC151C()
{
  if (!qword_1EDF042D8)
  {
    sub_1D6AE56F0();
    sub_1D5BBC604(&qword_1EDF1AAE0, sub_1D6AE56F0);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF042D8);
    }
  }
}

unint64_t sub_1D6EC15C4()
{
  result = qword_1EC897B38;
  if (!qword_1EC897B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B38);
  }

  return result;
}

unint64_t sub_1D6EC161C()
{
  result = qword_1EDF13450;
  if (!qword_1EDF13450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13450);
  }

  return result;
}

unint64_t sub_1D6EC1674()
{
  result = qword_1EDF13458;
  if (!qword_1EDF13458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13458);
  }

  return result;
}

NewsFeed::FormatResizeAutoMask_optional __swiftcall FormatResizeAutoMask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FormatResizeAutoMask.rawValue.getter()
{
  v1 = 0x656C626978656C66;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 == 4)
  {
    v3 = 0x656C626978656C66;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = v3;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

void sub_1D6EC17F4(unint64_t *a1@<X8>)
{
  v2 = 0x656C626978656C66;
  v3 = *v1;
  v4 = 0xED00006874646957;
  v5 = 0x80000001D73BAB30;
  v6 = 0xEE00746867696548;
  v7 = 0xD000000000000014;
  if (v3 == 4)
  {
    v7 = 0x656C626978656C66;
  }

  else
  {
    v6 = 0x80000001D73BAB60;
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  if (v3 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x80000001D73BAB10;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x80000001D73BAAE0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v8;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9;
}

uint64_t sub_1D6EC18D0()
{
  sub_1D72621EC();
}

BOOL sub_1D6EC1A88(unsigned __int8 *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed20FormatResizeAutoMaskO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_1D6EC1AC8(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s8NewsFeed20FormatResizeAutoMaskO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D6EC1B08(unsigned __int8 *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed20FormatResizeAutoMaskO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t _s8NewsFeed20FormatResizeAutoMaskO1loiySbAC_ACtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = 0xED00006874646957;
  v3 = 0x656C626978656C66;
  v4 = *a1;
  v5 = *a2;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = 0x80000001D73BAB30;
      v8 = 0xD000000000000011;
    }

    else if (v4 == 4)
    {
      v9 = 0xEE00746867696548;
      v8 = 0x656C626978656C66;
    }

    else
    {
      v9 = 0x80000001D73BAB60;
      v8 = 0xD000000000000014;
    }
  }

  else
  {
    v6 = 0xD000000000000013;
    if (v4 == 1)
    {
      v6 = 0x656C626978656C66;
      v7 = 0xED00006874646957;
    }

    else
    {
      v7 = 0x80000001D73BAB10;
    }

    if (*a1)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (v4)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x80000001D73BAAE0;
    }
  }

  v10 = 0x80000001D73BAB60;
  v11 = 0xD000000000000014;
  if (v5 == 4)
  {
    v11 = 0x656C626978656C66;
    v10 = 0xEE00746867696548;
  }

  if (v5 == 3)
  {
    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = v11;
  }

  if (v5 == 3)
  {
    v10 = 0x80000001D73BAB30;
  }

  if (v5 != 1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001D73BAB10;
  }

  if (v5)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0xD000000000000012;
  }

  if (!v5)
  {
    v2 = 0x80000001D73BAAE0;
  }

  if (v5 <= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v5 <= 2)
  {
    v15 = v2;
  }

  else
  {
    v15 = v10;
  }

  if (v8 == v14 && v9 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1D72646CC();
  }

  return v16 & 1;
}

unint64_t sub_1D6EC1CEC(void *a1)
{
  a1[1] = sub_1D66F94CC();
  a1[2] = sub_1D5E1A434();
  result = sub_1D6EC1D24();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EC1D24()
{
  result = qword_1EDF2ACD8;
  if (!qword_1EDF2ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ACD8);
  }

  return result;
}

unint64_t sub_1D6EC1D88()
{
  result = qword_1EDF2ACD0;
  if (!qword_1EDF2ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ACD0);
  }

  return result;
}

uint64_t sub_1D6EC1DE0()
{
  v1 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer_];

  v2 = &v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 8];
  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 16];
  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 24];
  v7 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 32];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  sub_1D6EC2B88(v3, v4, v5, v6, v7);
  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
  result = swift_beginAccess();
  v10 = *(v8 + 16);
  *(v8 + 16) = 0;
  if (v10)
  {
    *(v8 + 56) = 2;
  }

  return result;
}

void sub_1D6EC1EB4(void *a1, uint64_t a2)
{
  v4 = *a2;
  v24 = *(a2 + 8);
  v23 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 25);
  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  [a1 setActionAtItemEnd_];
  [a1 setPreventsDisplaySleepDuringVideoPlayback_];
  [a1 setMuted_];
  v9 = [v2 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer_];

  v10 = [v2 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity_];

  v11 = 256;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = &v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties];
  v13 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties];
  v14 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 8];
  v15 = v11 | v5;
  v16 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 16];
  v17 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 24];
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties + 32];
  *v12 = v4;
  *(v12 + 1) = v24;
  *(v12 + 2) = v23;
  *(v12 + 3) = v15;
  *(v12 + 4) = v8;
  *(v12 + 5) = v7;
  v19 = v4;
  v20 = v8;
  sub_1D6EC2B88(v13, v14, v16, v17, v18);
  v21 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
  swift_beginAccess();
  v22 = *(v21 + 16);
  *(v21 + 16) = 1;
  if (v22 != 1)
  {
    LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  }
}

char *sub_1D6EC20B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_identifier];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtC8NewsFeed15FormatVideoView_assets;
  v13 = type metadata accessor for FormatVideoData.Assets(0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *&v5[v14] = LayeredMediaViewDisplayStateCoordinator.init()();
  v15 = &v5[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
  swift_beginAccess();
  v18 = *(v17 + 16);
  *(v17 + 16) = 0;
  if (v18)
  {
    *(v17 + 56) = 2;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v20 = *(v17 + 24);
  *(v17 + 24) = sub_1D6EC2A70;
  *(v17 + 32) = v19;
  v21 = v16;

  sub_1D5B74328(v20);

  sub_1D6EC2478();

  return v21;
}

void sub_1D6EC2294(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties);
    if (!v6)
    {
LABEL_6:

      return;
    }

    v7 = v5[2];
    v16 = v5[1];
    v9 = v5[3];
    v8 = v5[4];
    v10 = v6;
    v11 = v8;
    v12 = [v4 layer];
    objc_opt_self();
    v13 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v13)
    {

      v14 = [v4 layer];
      objc_opt_self();
      v15 = swift_dynamicCastObjCClassUnconditional();
      if (v2 & 1 | ((v1 & 1) == 0))
      {
        [v15 pause];
        sub_1D6EC2B88(v6, v16, v7, v9, v8);

        goto LABEL_6;
      }

      [v15 playWithPlaybackKind:v7 looping:v16 & 1];

      sub_1D6EC2B88(v6, v16, v7, v9, v8);
    }

    else
    {

      sub_1D6EC2B88(v6, v16, v7, v9, v8);
    }
  }
}

uint64_t sub_1D6EC2478()
{
  swift_getObjectType();
  sub_1D6EC2A78(0, &qword_1EDF02350, sub_1D6EC2ADC, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  v1 = sub_1D725FDEC();
  v2 = MEMORY[0x1E69DC0D0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_1D72634DC();
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FormatVideoView()
{
  result = qword_1EDF30F98;
  if (!qword_1EDF30F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6EC27A4()
{
  sub_1D6EC2A78(319, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6EC2888()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_identifier);

  return v1;
}

void sub_1D6EC28F8(void *a1, id a2)
{
  v3 = [a2 _headroomUsage];
  v6 = [a1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = MEMORY[0x1E6979298];
  if (v3 == 1)
  {
    v5 = MEMORY[0x1E69792A0];
  }

  [v4 setPreferredDynamicRange_];
}

void sub_1D6EC29B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator);
  swift_beginAccess();
  v2 = *(v1 + 17);
  *(v1 + 17) = 1;
  if (v2 > 0x3F || (v2 & 1) == 0)
  {
    LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  }
}

void sub_1D6EC2A14()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator);
  swift_beginAccess();
  v2 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (v2 > 0x3F || (v2 & 1) != 0)
  {
    LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  }
}

void sub_1D6EC2A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6EC2ADC()
{
  result = qword_1EDF168D8;
  if (!qword_1EDF168D8)
  {
    sub_1D6EC2B24();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EDF168D8);
  }

  return result;
}

unint64_t sub_1D6EC2B24()
{
  result = qword_1EDF168E0;
  if (!qword_1EDF168E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF168E0);
  }

  return result;
}

void sub_1D6EC2B88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

unint64_t sub_1D6EC2BC8()
{
  result = qword_1EDF045A8;
  if (!qword_1EDF045A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF045A8);
  }

  return result;
}

uint64_t sub_1D6EC2C14(uint64_t a1)
{
  sub_1D6EC2A78(0, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static Random.issue(with:isCurrent:publicationDate:)(void *a1, void *a2, int a3, uint64_t a4)
{
  LODWORD(v104) = a3;
  v106 = a1;
  v107 = a2;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D725895C();
  v8 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109, v9);
  v108 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v88 - v13;
  v15 = sub_1D7258C2C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D725891C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v88 - v27;
  v93 = sub_1D725B9AC();
  v95 = v29;
  v113 = v21;
  v114 = v20;
  v30 = *(v21 + 16);
  v111 = v28;
  v92 = (v21 + 16);
  v91 = v30;
  v30(v28, a4, v20);
  v94 = sub_1D725B9AC();
  v96 = v31;
  sub_1D7258BCC();
  v112 = v24;
  v100 = a4;
  sub_1D725872C();
  (*(v16 + 8))(v19, v15);
  v103 = [objc_allocWithZone(MEMORY[0x1E69B51B8]) init];
  v102 = [objc_allocWithZone(type metadata accessor for StubAssetHandle()) init];
  sub_1D725B9BC();
  v32 = sub_1D726203C();

  v33 = objc_opt_self();
  v101 = [v33 colorWithHexString_];

  sub_1D725B9BC();
  v34 = sub_1D726203C();

  v99 = [v33 colorWithHexString_];

  sub_1D725B9BC();
  v35 = sub_1D726203C();

  v98 = [v33 colorWithHexString_];

  sub_1D725B9BC();
  v36 = sub_1D726203C();

  v97 = [v33 colorWithHexString_];

  sub_1D725B9BC();
  v37 = sub_1D726203C();

  v110 = [v33 colorWithHexString_];

  sub_1D5C3C480();
  v38 = swift_allocObject();
  v115 = xmmword_1D7273AE0;
  *(v38 + 16) = xmmword_1D7273AE0;
  sub_1D725894C();
  v39 = sub_1D725893C();
  v41 = v40;
  v42 = *(v8 + 8);
  v43 = v109;
  v42(v14, v109);
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v44 = v108;
  sub_1D725894C();
  v89 = sub_1D725893C();
  v90 = v45;
  v46 = v44;
  v47 = v43;
  v42(v46, v43);
  v48 = swift_allocObject();
  *(v48 + 16) = v115;
  *(v48 + 32) = sub_1D726207C();
  *(v48 + 40) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v115;
  sub_1D725894C();
  v51 = sub_1D725893C();
  v53 = v52;
  v42(v14, v47);
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  sub_1D725894C();
  sub_1D725893C();
  v42(v14, v47);
  sub_1D725B9AC();
  v54 = objc_allocWithZone(_s9RandomTagCMa_0());
  v55 = sub_1D726203C();
  v56 = sub_1D726203C();

  v57 = [v54 initForTestingWithTagType:2 identifier:v55 name:v56];

  *&v115 = v57;
  if (v57)
  {

    v88[0] = sub_1D725B9CC();
    v88[1] = sub_1D725B9CC();
    v58 = v105;
    v59 = v114;
    v91(v105, v100, v114);
    v60 = v113;
    (*(v113 + 56))(v58, 0, 1, v59);
    v100 = sub_1D726203C();
    v93 = sub_1D726203C();

    v95 = sub_1D725881C();
    v94 = sub_1D726203C();

    v109 = sub_1D725881C();
    v108 = sub_1D726203C();
    v107 = sub_1D726265C();

    v61 = sub_1D726203C();

    v106 = sub_1D726265C();

    v62 = sub_1D726265C();
    v63 = sub_1D726265C();

    v64 = sub_1D726203C();

    v65 = sub_1D726203C();

    v66 = 0;
    if ((*(v60 + 48))(v58, 1, v59) != 1)
    {
      v67 = v105;
      v66 = sub_1D725881C();
      (*(v60 + 8))(v67, v59);
    }

    v92 = v66;
    v68 = objc_allocWithZone(MEMORY[0x1E69B5348]);
    v86 = v65;
    v87 = v66;
    v85 = v64;
    v84 = v63;
    v83 = v62;
    v82 = v61;
    BYTE2(v81) = 0;
    LOWORD(v81) = v104 & 1;
    v104 = v65;
    v69 = v97;
    v96 = v64;
    v70 = v98;
    v91 = v63;
    v71 = v99;
    v90 = v62;
    v72 = v101;
    v89 = v61;
    v73 = v102;
    v74 = v103;
    v75 = v100;
    v76 = v93;
    v77 = v95;
    v78 = v94;
    v105 = [v68 initWithIdentifier:v100 type:0 title:v93 publicationDate:v95 coverDate:v94 lastModifiedDate:v109 metadataJSONAssetHandle:0.75 coverImageAssetHandle:0.75 coverImageAspectRatio:v103 coverImagePrimaryColor:v102 coverImageBackgroundColor:v101 coverImageTextColor:v99 coverImageAccentColor:v98 layeredCoverJSON:v97 layeredCoverAspectRatio:v108 layeredCoverPrimaryColor:v110 isCurrent:v81 isDraft:0 isPaid:v107 minimumNewsVersion:v82 allArticleIDs:v106 coverArticleID:v83 allowedStorefrontIDs:v84 blockedStorefrontIDs:v115 topicTagIDs:v85 sourceChannel:v86 notificationDescription:v87 issueDescription:? sortDate:?];

    v79 = *(v113 + 8);
    v80 = v114;
    v79(v112, v114);
    v79(v111, v80);
  }

  else
  {
    __break(1u);
  }
}

id static Random.headline(modifier:)(void (*a1)(id *), uint64_t a2)
{
  v27[1] = a2;
  v28 = a1;
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725895C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_allocWithZone(MEMORY[0x1E69B5310]) init];
  v12 = v29;
  sub_1D725894C();
  sub_1D725893C();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v14 = sub_1D726203C();

  [v12 setArticleID_];

  sub_1D725B9CC();
  v15 = sub_1D726203C();

  [v12 setTitle_];

  sub_1D725B9CC();
  v16 = sub_1D726203C();

  [v12 setShortExcerpt_];

  sub_1D725B9CC();
  v17 = sub_1D726203C();

  [v12 setSourceName_];

  sub_1D725B99C();
  v18 = sub_1D725881C();
  (*(v3 + 8))(v6, v2);
  [v12 setPublishDate_];

  sub_1D725894C();
  sub_1D725893C();
  v13(v11, v7);
  sub_1D725B9CC();
  v19 = objc_allocWithZone(MEMORY[0x1E69B5628]);
  v20 = sub_1D726203C();

  v21 = sub_1D726203C();

  v22 = [v19 initForTestingWithTagType:2 identifier:v20 name:v21];

  [v12 setSourceChannel_];
  [v12 setHasThumbnail_];
  v23 = [objc_allocWithZone(type metadata accessor for StubAssetHandle()) init];
  v24 = [objc_opt_self() headlineThumbnailWithAssetHandle:v23 thumbnailSize:{1000.0, 1000.0}];

  [v12 setThumbnail_];
  sub_1D725B9CC();
  v25 = sub_1D726203C();

  [v12 setAccessoryText_];

  v28(&v29);
  return v29;
}

id static Random.headline(identifier:)(uint64_t a1, uint64_t a2)
{

  v4 = sub_1D6EC4EA8(a1, a2);

  return v4;
}

id static Random.scoredHeadline(scoreProfile:modifier:)@<X0>(void *a1@<X0>, void (*a2)(id *)@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  *a4 = static Random.headline(modifier:)(a2, a3);
  a4[1] = a1;

  return a1;
}

void static Random.channel(with:)()
{
  sub_1D725B9AC();
  v0 = objc_allocWithZone(_s9RandomTagCMa_0());
  v1 = sub_1D726203C();
  v2 = sub_1D726203C();

  v3 = [v0 initForTestingWithTagType:2 identifier:v1 name:v2];

  if (!v3)
  {
    __break(1u);
  }
}

unint64_t static Random.tagType()()
{
  result = sub_1D6EC4E1C(5uLL);
  if (result <= 4)
  {
    return qword_1F5119B60[result + 4];
  }

  __break(1u);
  return result;
}

void static Random.tag(with:tagType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B9AC();
  v4 = objc_allocWithZone(_s9RandomTagCMa());
  v5 = sub_1D726203C();
  v6 = sub_1D726203C();

  v7 = [v4 initForTestingWithTagType:a3 identifier:v5 name:v6];

  if (!v7)
  {
    __break(1u);
  }
}

id sub_1D6EC3D6C(Class *a1)
{
  v2 = vcvtd_n_f64_u64(sub_1D6EC4E1C(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = vcvtd_n_f64_u64(sub_1D6EC4E1C(0x20000000000001uLL), 0x35uLL) + 0.0;
  v4 = vcvtd_n_f64_u64(sub_1D6EC4E1C(0x20000000000001uLL), 0x35uLL) + 0.0;
  v5 = vcvtd_n_f64_u64(sub_1D6EC4E1C(0x20000000000001uLL), 0x35uLL) + 0.0;
  v6 = objc_allocWithZone(*a1);

  return [v6 initWithRed:v2 green:v3 blue:v4 alpha:v5];
}

id sub_1D6EC3EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), SEL *a7)
{
  if (!a4)
  {
    v11 = 0;
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1D6EC4AAC(a3, v11, v13, v14, v16, a6, a7);
  }

  v11 = sub_1D726207C();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1D726207C();
  v16 = v15;
  return sub_1D6EC4AAC(a3, v11, v13, v14, v16, a6, a7);
}

id sub_1D6EC3FD8()
{
  v0 = sub_1D725895C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C3C480();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  sub_1D725894C();
  v6 = sub_1D725893C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = sub_1D726265C();

  return v9;
}

id sub_1D6EC411C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v16.receiver = a1;
  v16.super_class = a7(0);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTagRecord_assetManager_interestToken_specialTagFeedType_, v11, v12, v13, a6);

  if (v14)
  {
  }

  return v14;
}

id sub_1D6EC41F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  if (a3)
  {
    v13 = sub_1D726203C();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1D726203C();

  if (a7)
  {
LABEL_4:
    v15 = sub_1D726203C();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v18.receiver = v8;
  v18.super_class = a8(0);
  v16 = objc_msgSendSuper2(&v18, sel_initForTestingWithTagType_identifier_name_umcCanonicalID_, a1, v13, v14, v15);

  if (v16)
  {
  }

  return v16;
}

id sub_1D6EC432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = a5;
  if (a4)
  {
    v11 = sub_1D726207C();
    v13 = v12;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    return sub_1D6EC41F4(a3, v11, v13, v9, v15, v16, v18, a7);
  }

  v11 = 0;
  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1D726207C();
  v15 = v14;
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_1D726207C();
  v18 = v17;
  return sub_1D6EC41F4(a3, v11, v13, v9, v15, v16, v18, a7);
}

id sub_1D6EC43EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void))
{
  if (a2)
  {
    v15 = sub_1D726203C();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
LABEL_3:
      v16 = sub_1D726203C();

      if (a6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  if (a6)
  {
LABEL_4:
    v17 = sub_1D726203C();

    v18 = a10;
    v19 = a11;
    if (a8)
    {
      goto LABEL_5;
    }

LABEL_10:
    v20 = 0;
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  v18 = a10;
  v19 = a11;
  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = sub_1D726203C();

  if (v18)
  {
LABEL_6:
    v21 = sub_1D726203C();

    goto LABEL_12;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  v24.receiver = v11;
  v24.super_class = v19(0);
  v22 = objc_msgSendSuper2(&v24, sel_initChannelForTestingWithIdentifier_name_defaultSection_publisherAuthorizationURL_publisherVerificationURL_, v15, v16, v17, v20, v21);

  if (v22)
  {
  }

  return v22;
}

id sub_1D6EC4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t (*a8)(void))
{
  if (a3)
  {
    v30 = sub_1D726207C();
    v13 = v12;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v30 = 0;
  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1D726207C();
  v16 = v15;
  if (a5)
  {
LABEL_4:
    v17 = sub_1D726207C();
    v19 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
  v19 = 0;
LABEL_8:
  v20 = a6;
  v21 = a7;
  v22 = v21;
  if (!v20)
  {
    v23 = 0;
    v25 = 0;
    if (v21)
    {
      goto LABEL_10;
    }

LABEL_12:
    v26 = 0;
    v28 = 0;
    return sub_1D6EC43EC(v30, v13, v14, v16, v17, v19, v23, v25, v26, v28, a8);
  }

  v23 = sub_1D726207C();
  v25 = v24;

  if (!v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26 = sub_1D726207C();
  v28 = v27;

  return sub_1D6EC43EC(v30, v13, v14, v16, v17, v19, v23, v25, v26, v28, a8);
}

id sub_1D6EC46B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v10 = sub_1D726203C();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_1D726203C();

  if (a5)
  {
LABEL_4:
    v12 = sub_1D726265C();

    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  v15.receiver = v6;
  v15.super_class = a6(0);
  v13 = objc_msgSendSuper2(&v15, sel_initChannelForTestingWithIdentifier_name_publisherPaidBundlePurchaseIDs_, v10, v11, v12);

  if (v13)
  {
  }

  return v13;
}

id sub_1D6EC47DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = a4;
  if (a3)
  {
    v9 = sub_1D726207C();
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    return sub_1D6EC46B8(v9, v11, v8, v13, v14, a6);
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_1D726207C();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_1D726267C();
  return sub_1D6EC46B8(v9, v11, v8, v13, v14, a6);
}

id sub_1D6EC4898(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1D725865C();
  }

  v12.receiver = v4;
  v12.super_class = a4(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithData_context_, v9, a3);
  swift_unknownObjectRelease();
  sub_1D5B952E4(a1, a2);

  if (v10)
  {
  }

  return v10;
}

id sub_1D6EC4970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a3;
  if (a3)
  {
    swift_unknownObjectRetain();
    v8 = v7;
    v7 = sub_1D725867C();
    v10 = v9;
  }

  else
  {
    swift_unknownObjectRetain();
    v10 = 0xF000000000000000;
  }

  return sub_1D6EC4898(v7, v10, a4, a5);
}

id sub_1D6EC4A10(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v13.receiver = a1;
  v13.super_class = a6(0);
  v9 = a3;
  v10 = a4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithTagMetadata_assetManager_isSports_, v9, v10, a5);

  if (v11)
  {
  }

  return v11;
}

id sub_1D6EC4AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), SEL *a7)
{
  if (a3)
  {
    v12 = sub_1D726203C();

    if (a5)
    {
LABEL_3:
      v13 = sub_1D726203C();

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v16.receiver = v7;
  v16.super_class = a6(0);
  v14 = objc_msgSendSuper2(&v16, *a7, a1, v12, v13);

  if (v14)
  {
  }

  return v14;
}

id sub_1D6EC4BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  if (a2)
  {
    v12 = sub_1D726203C();

    if (a4)
    {
LABEL_3:
      v13 = sub_1D726203C();

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v16.receiver = v7;
  v16.super_class = a7(0);
  v14 = objc_msgSendSuper2(&v16, sel_initChannelFromNotificationWithIdentifier_name_nameImageAssetHandle_nameImageMaskAssetHandle_, v12, v13, a5, a6);

  if (v14)
  {
  }

  return v14;
}

id sub_1D6EC4CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  v10 = a4;
  if (!a3)
  {
    v11 = 0;
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v11 = sub_1D726207C();
  v13 = v12;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1D726207C();
  v15 = v14;
LABEL_6:
  v16 = a5;
  v17 = a6;
  return sub_1D6EC4BB0(v11, v13, v10, v15, a5, a6, a7);
}

id sub_1D6EC4D7C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1D6EC4DDC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D6EC4E1C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1DA6FD520](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1DA6FD520](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D6EC4EA8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725895C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x1E69B5310]);
  v13 = [v12 init];
  sub_1D725894C();
  sub_1D725893C();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = sub_1D726203C();

  [v13 setArticleID_];

  sub_1D725B9CC();
  v16 = sub_1D726203C();

  [v13 setTitle_];

  sub_1D725B9CC();
  v17 = sub_1D726203C();

  [v13 setShortExcerpt_];

  sub_1D725B9CC();
  v18 = sub_1D726203C();

  [v13 setSourceName_];

  sub_1D725B99C();
  v19 = sub_1D725881C();
  (*(v3 + 8))(v6, v2);
  [v13 setPublishDate_];

  sub_1D725894C();
  sub_1D725893C();
  v14(v11, v7);
  sub_1D725B9CC();
  v20 = objc_allocWithZone(MEMORY[0x1E69B5628]);
  v21 = sub_1D726203C();

  v22 = sub_1D726203C();

  v23 = [v20 initForTestingWithTagType:2 identifier:v21 name:v22];

  [v13 setSourceChannel_];
  [v13 setHasThumbnail_];
  v24 = [objc_allocWithZone(type metadata accessor for StubAssetHandle()) init];
  v25 = [objc_opt_self() headlineThumbnailWithAssetHandle:v24 thumbnailSize:{1000.0, 1000.0}];

  [v13 setThumbnail_];
  sub_1D725B9CC();
  v26 = sub_1D726203C();

  [v13 setAccessoryText_];

  v27 = sub_1D726203C();
  [v13 setArticleID_];

  return v13;
}

uint64_t sub_1D6EC5328(uint64_t a1, _BYTE *a2)
{
  if (a2[8])
  {
    if (a2[24])
    {
      goto LABEL_3;
    }

LABEL_7:
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1D725FCDC();
    if (a2[40])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D725FD0C();
  if ((a2[24] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2[40] & 1) == 0)
  {
LABEL_4:
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1D725FCEC();
  }

LABEL_5:
  v4 = sub_1D5EDF474(a2[41]);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v5 = v4;
  sub_1D725FD2C();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D725FCFC();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D725FCBC();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D725FD1C();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1D725FCCC();
}

uint64_t sub_1D6EC5684()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D726207C();
  }

  sub_1D5B5F6D0();
  result = sub_1D726390C();
  qword_1EDFFC588 = result;
  return result;
}

uint64_t sub_1D6EC577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1D726207C();
  }

  sub_1D5B5F6D0();
  result = sub_1D726390C();
  *a4 = result;
  return result;
}

uint64_t static Logger.sports.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17598);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D6EC5950()
{
  v0 = sub_1D725C42C();
  __swift_allocate_value_buffer(v0, qword_1EC9BAD60);
  __swift_project_value_buffer(v0, qword_1EC9BAD60);
  if (qword_1EC87DC10 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC9BAD20;
  return sub_1D725C43C();
}

uint64_t sub_1D6EC5A74()
{
  v0 = sub_1D725C42C();
  __swift_allocate_value_buffer(v0, qword_1EC9BADC0);
  __swift_project_value_buffer(v0, qword_1EC9BADC0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D726207C();
  }

  return sub_1D725C40C();
}

uint64_t sub_1D6EC5B7C(void *a1)
{
  v3 = v1;
  sub_1D6EC62D0(0, &qword_1EC897B70, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EC61D8();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v15 = 1;
    sub_1D72643FC();
    v14 = 2;
    sub_1D726442C();
    v13 = *(v3 + 40);
    v12[15] = 3;
    sub_1D6EC622C();
    sub_1D6EC6334(&qword_1EC897B78, sub_1D6EC63A0);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6EC5D84()
{
  v1 = 0x614E656369766564;
  v2 = 0x736E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 0x73746C75736572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1D6EC5E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EC650C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EC5E30(uint64_t a1)
{
  v2 = sub_1D6EC61D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EC5E6C(uint64_t a1)
{
  v2 = sub_1D6EC61D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6EC5EA8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6EC5F04(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D6EC5F04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6EC62D0(0, &qword_1EC897B48, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EC61D8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v22 = v11;
  v26 = 1;
  v14 = sub_1D72642BC();
  v16 = v15;
  v21 = v14;
  v25 = 2;
  v20 = sub_1D72642FC();
  sub_1D6EC622C();
  v24 = 3;
  sub_1D6EC6334(&qword_1EC897B60, sub_1D6EC627C);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v20;
  a2[5] = v17;
  return result;
}

unint64_t sub_1D6EC61D8()
{
  result = qword_1EC897B50;
  if (!qword_1EC897B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B50);
  }

  return result;
}

void sub_1D6EC622C()
{
  if (!qword_1EC897B58)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897B58);
    }
  }
}

unint64_t sub_1D6EC627C()
{
  result = qword_1EC897B68;
  if (!qword_1EC897B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B68);
  }

  return result;
}

void sub_1D6EC62D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6EC61D8();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifestDevice.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6EC6334(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6EC622C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6EC63A0()
{
  result = qword_1EC897B80;
  if (!qword_1EC897B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B80);
  }

  return result;
}

unint64_t sub_1D6EC6408()
{
  result = qword_1EC897B88;
  if (!qword_1EC897B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B88);
  }

  return result;
}

unint64_t sub_1D6EC6460()
{
  result = qword_1EC897B90;
  if (!qword_1EC897B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B90);
  }

  return result;
}

unint64_t sub_1D6EC64B8()
{
  result = qword_1EC897B98;
  if (!qword_1EC897B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897B98);
  }

  return result;
}

uint64_t sub_1D6EC650C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F5C90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6EC6680(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_1D7257DEC();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v33) = *a2;
  if (qword_1EDF059F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D7258C2C();
  __swift_project_value_buffer(v7, qword_1EDF059F8);
  sub_1D5C38238(0, &qword_1EDF19B90, MEMORY[0x1E6969AD0]);
  v8 = sub_1D7258C0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A58], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A88], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A98], v8);
  sub_1D5BFA8DC(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D7258B3C();

  v15 = sub_1D7257DBC();
  if (v16 & 1) != 0 || (v17 = v15, v18 = sub_1D7257DAC(), (v19) || (v20 = v18, v21 = sub_1D7257D5C(), (v22))
  {
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C38238(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    sub_1D6EC6AD8();
    v24 = v36;
    v25 = sub_1D72644BC();
    v27 = v26;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D5B7E2C0();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_1D725C30C();

    v28 = 0;
  }

  else
  {
    v30 = v21;
    if (SHIDWORD(v33) > 1)
    {
      v24 = v36;
      if (HIDWORD(v33) == 2)
      {
        v31 = [v34 eveningTimeOfDayConfiguration];
      }

      else
      {
        v31 = [v34 nightTimeOfDayConfiguration];
      }
    }

    else
    {
      v24 = v36;
      if (HIDWORD(v33))
      {
        v31 = [v34 afternoonTimeOfDayConfiguration];
      }

      else
      {
        v31 = [v34 morningTimeOfDayConfiguration];
      }
    }

    v32 = v31;
    v28 = sub_1D5C382F0(v30, v20, v17);
  }

  (*(v35 + 8))(v6, v24);
  return v28 & 1;
}

unint64_t sub_1D6EC6AD8()
{
  result = qword_1EC897BA0;
  if (!qword_1EC897BA0)
  {
    sub_1D7257DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BA0);
  }

  return result;
}

uint64_t FormatShineOptions.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 FormatShineOptions.motion.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t _s8NewsFeed18FormatShineOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v25 = *(a1 + 56);
  v26 = *(a1 + 40);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v23 = *(a2 + 56);
  v24 = *(a2 + 40);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  *&v30[0] = v2;
  *&v27[0] = v9;

  v16 = static FormatColor.== infix(_:_:)(v30, v27);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    v17 = 0x7473756A64616E75;
  }

  else
  {
    v17 = 1702521203;
  }

  if (v3)
  {
    v18 = 0xEA00000000006465;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  if (v10)
  {
    v19 = 0x7473756A64616E75;
  }

  else
  {
    v19 = 1702521203;
  }

  if (v10)
  {
    v20 = 0xEA00000000006465;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  if (v17 == v19 && v18 == v20)
  {

    if (v4 != v11)
    {
      return 0;
    }

LABEL_23:
    v30[0] = v26;
    v30[1] = v25;
    v31 = v5;
    v32 = v6;
    v27[0] = v24;
    v27[1] = v23;
    v28 = v12;
    v29 = v13;
    if (_s8NewsFeed12FormatMotionO2eeoiySbAC_ACtFZ_0(v30, v27))
    {
      return sub_1D634D024(v7, v14) & (v8 == v15);
    }

    return 0;
  }

  v21 = sub_1D72646CC();

  result = 0;
  if ((v21 & 1) != 0 && v4 == v11)
  {
    goto LABEL_23;
  }

  return result;
}

unint64_t sub_1D6EC6DEC(uint64_t a1)
{
  result = sub_1D6EC6E14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EC6E14()
{
  result = qword_1EC897BA8;
  if (!qword_1EC897BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BA8);
  }

  return result;
}

unint64_t sub_1D6EC6E68(void *a1)
{
  a1[1] = sub_1D6EC6EA0();
  a1[2] = sub_1D6EC6EF4();
  result = sub_1D6EC6F48();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EC6EA0()
{
  result = qword_1EC897BB0;
  if (!qword_1EC897BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BB0);
  }

  return result;
}

unint64_t sub_1D6EC6EF4()
{
  result = qword_1EC897BB8;
  if (!qword_1EC897BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BB8);
  }

  return result;
}

unint64_t sub_1D6EC6F48()
{
  result = qword_1EC897BC0;
  if (!qword_1EC897BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BC0);
  }

  return result;
}

uint64_t sub_1D6EC6FAC(uint64_t result, uint64_t a2)
{
  v2 = result + *(*result + 112);
  v3 = a2 + *(*a2 + 112);
  if (*v2 != *v3)
  {
    return 0;
  }

  v4 = *(v2 + 8);
  v5 = *(v3 + 8);
  v6 = *(v4 + 16);
  if (v6 != *(v5 + 16))
  {
    return 0;
  }

  v8 = result;
  if (v6)
  {
    v9 = v4 == v5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_11:
    v12 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (MEMORY[0x1DA6F0A40](v2 + *(v12 + 24), v3 + *(v12 + 24)) & 1) != 0 && (sub_1D635E718(*(v2 + *(v12 + 28)), *(v3 + *(v12 + 28))))
    {
      v13 = *(v8 + *(*v8 + 120));
      v14 = *(a2 + *(*a2 + 120));

      return sub_1D635E254(v13, v14);
    }

    return 0;
  }

  v10 = (v4 + 32);
  v11 = (v5 + 32);
  while (v6)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6EC7100(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 24);
  v4 = *(a2 + 48);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v5 = *(a2 + 40);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;

    v8 = sub_1D5BFC390(v2, v4);

    a1 = v6;
    a2 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);

  return sub_1D635EC3C(v9, v10);
}

uint64_t FeedGroupLocalClusteringKnobs.init(allowSports:allowedSportsPublishers:bundleArticleQuotas:enabled:forbiddenChannels:maxAge:minArticleBodyTextLength:positionFromEnd:prioritizePromotedHeadlines:tagTimeouts:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v34 = a8;
  v35 = a7;
  v33 = a5;
  v36 = a4;
  v17 = type metadata accessor for FeedGroupBundleArticleQuotas();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = sub_1D605DA8C(MEMORY[0x1E69E7CC0]);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  a2 = sub_1D605DAC0(MEMORY[0x1E69E7CC0]);
LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v22 = a3;
  }

  else
  {
    if (qword_1EDF13578 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_1EDF13580);
    sub_1D5E3A67C(v23, v20);
    sub_1D5E3A6E0();
    v22 = swift_allocObject();
    sub_1D6EC87DC(v20, v22 + *(*v22 + 112));
    *(v22 + *(*v22 + 120)) = v21;
  }

  v24 = a10;
  if (a6)
  {

    v25 = a11;
    if (a10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  a6 = sub_1D605DAF4(MEMORY[0x1E69E7CC0]);
  v25 = a11;
  if (!a10)
  {
LABEL_12:
    sub_1D5E3A600();
    v24 = swift_allocObject();
    *(v24 + 16) = 1;
    *(v24 + 24) = v21;
  }

LABEL_13:
  v26 = v21;
  v27 = a12;
  if (v25)
  {
    if (a12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D6060284();
    v25 = swift_allocObject();
    *(v25 + 16) = 1;
    *(v25 + 24) = v26;
    if (a12)
    {
      goto LABEL_15;
    }
  }

  v27 = sub_1D5C41CF0(MEMORY[0x1E69E7CC0]);
LABEL_15:

  v29 = v35;
  if (v34)
  {
    v29 = 0;
  }

  v30 = v33;
  if (!v33)
  {
    v30 = v26;
  }

  v31 = v36;
  v32 = v36;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v22;
  *(a9 + 24) = (v32 == 2) | v31 & 1;
  *(a9 + 32) = v30;
  *(a9 + 40) = a6;
  *(a9 + 48) = v29;
  *(a9 + 56) = v24;
  *(a9 + 64) = v25;
  *(a9 + 72) = v27;
  return result;
}

uint64_t FeedGroupLocalClusteringKnobs.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v65 = a2;
  v4 = type metadata accessor for FeedGroupBundleArticleQuotas();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EC8B5C(0, &qword_1EDF03B80, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v50 - v12;
  v14 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D6EC8840();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v63 = v4;
  v64 = v7;
  v15 = v10;
  sub_1D6EC8960(0, &qword_1EDF057D0, sub_1D6060284);
  LOBYTE(v74) = 0;
  sub_1D6EC8894();
  sub_1D726427C();
  v16 = v9;
  v17 = v75;
  sub_1D6EC8960(0, &unk_1EDF057E8, sub_1D606016C);
  LOBYTE(v73) = 1;
  sub_1D6EC89C4();
  sub_1D726427C();
  v18 = v74;
  sub_1D5E3A6E0();
  v20 = v19;
  LOBYTE(v72) = 2;
  sub_1D6EC8794(&qword_1EDF13EB8, sub_1D5E3A6E0);
  sub_1D726427C();
  v62 = v18;
  v21 = v73;
  LOBYTE(v72) = 3;
  v22 = sub_1D726423C();
  v61 = v20;
  LODWORD(v20) = v22;
  sub_1D5BBE0A8();
  LOBYTE(v71) = 4;
  sub_1D5B99688(&qword_1EDF3C830);
  sub_1D726427C();
  v60 = v20;
  v24 = v72;
  sub_1D6EC8960(0, &qword_1EDF057B8, sub_1D5E3A600);
  LOBYTE(v70) = 5;
  sub_1D6EC8A90();
  sub_1D726427C();
  v59 = v24;
  v25 = v71;
  LOBYTE(v70) = 6;
  v26 = sub_1D726425C();
  v56 = v27;
  v57 = v26;
  v58 = v25;
  sub_1D5E3A600();
  v29 = v28;
  LOBYTE(v69) = 7;
  sub_1D6EC8794(&qword_1EDF36700, sub_1D5E3A600);
  sub_1D726427C();
  v55 = v29;
  v30 = v70;
  sub_1D6060284();
  v32 = v31;
  LOBYTE(v68) = 8;
  sub_1D6EC8794(&qword_1EDF36720, sub_1D6060284);
  v54 = v32;
  sub_1D726427C();
  v52 = v30;
  v53 = v17;
  v51 = v69;
  sub_1D5F9C7A8();
  v67 = 9;
  sub_1D6EC8E24(&qword_1EDF056B0);
  v33 = v16;
  v34 = v13;
  sub_1D726427C();
  v35 = v68;
  if (v53)
  {
    if (v62)
    {
      goto LABEL_6;
    }

LABEL_9:
    v62 = sub_1D605DAC0(MEMORY[0x1E69E7CC0]);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_10:
    if (qword_1EDF13578 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v63, qword_1EDF13580);
    v38 = v64;
    sub_1D5E3A67C(v37, v64);
    v36 = swift_allocObject();
    sub_1D6EC87DC(v38, v36 + *(*v36 + 112));
    *(v36 + *(*v36 + 120)) = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v53 = sub_1D605DA8C(MEMORY[0x1E69E7CC0]);
  if (!v62)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_7:
  v36 = v21;
LABEL_13:
  v39 = v60 == 2;
  v40 = v59;
  if (!v59)
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v41 = v57;
  if (v56)
  {
    v41 = 0;
  }

  v64 = v41;
  if (v58)
  {
  }

  else
  {

    v58 = sub_1D605DAF4(MEMORY[0x1E69E7CC0]);
  }

  v42 = v39 | v60;
  if (!v52)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    v52 = v43;
    *(v43 + 24) = MEMORY[0x1E69E7CC0];
  }

  v44 = v42 & 1;
  if (!v51)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = 1;
    v51 = v45;
    *(v45 + 24) = MEMORY[0x1E69E7CC0];
  }

  if (!v35)
  {
    v35 = sub_1D5C41CF0(MEMORY[0x1E69E7CC0]);
  }

  (*(v15 + 8))(v34, v33);
  v46 = v65;
  v47 = v62;
  *v65 = v53;
  v46[1] = v47;
  v46[2] = v36;
  *(v46 + 24) = v44;
  v48 = v58;
  v46[4] = v40;
  v46[5] = v48;
  v49 = v52;
  v46[6] = v64;
  v46[7] = v49;
  v46[8] = v51;
  v46[9] = v35;
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1D6EC7E94(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F697469736F70;
    v6 = 0xD00000000000001BLL;
    if (a1 != 8)
    {
      v6 = 0x6F656D6954676174;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65674178616DLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F7053776F6C6C61;
    v2 = 0xD000000000000013;
    v3 = 0x64656C62616E65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6EC8000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EC8FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EC8028(uint64_t a1)
{
  v2 = sub_1D6EC8840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EC8064(uint64_t a1)
{
  v2 = sub_1D6EC8840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupLocalClusteringKnobs.encode(to:)(void *a1)
{
  sub_1D6EC8B5C(0, &qword_1EDF02888, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - v7;
  v10 = *v1;
  v9 = v1[1];
  v27 = v1[2];
  v28 = v9;
  v26 = *(v1 + 24);
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v12 = v1[6];
  v22 = v1[7];
  v23 = v12;
  v13 = v1[9];
  v21 = v1[8];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1D6EC8840();

  sub_1D7264B5C();
  v30 = v10;
  v29 = 0;
  sub_1D6EC8960(0, &qword_1EDF057D0, sub_1D6060284);
  sub_1D6EC8BC0();
  sub_1D726443C();
  if (v2)
  {
  }

  else
  {
    v18 = v27;

    v30 = v28;
    v29 = 1;
    sub_1D6EC8960(0, &unk_1EDF057E8, sub_1D606016C);
    sub_1D6EC8C8C();
    sub_1D726443C();
    v30 = v18;
    v29 = 2;
    sub_1D5E3A6E0();
    sub_1D6EC8794(&unk_1EDF13EC0, sub_1D5E3A6E0);
    sub_1D726443C();
    LOBYTE(v30) = 3;
    sub_1D726440C();
    v30 = v25;
    v29 = 4;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    sub_1D726443C();
    v30 = v24;
    v29 = 5;
    sub_1D6EC8960(0, &qword_1EDF057B8, sub_1D5E3A600);
    sub_1D6EC8D58();
    sub_1D726443C();
    LOBYTE(v30) = 6;
    sub_1D726442C();
    v30 = v22;
    v29 = 7;
    sub_1D5E3A600();
    sub_1D6EC8794(&qword_1EDF13E08, sub_1D5E3A600);
    sub_1D726443C();
    v30 = v21;
    v29 = 8;
    sub_1D6060284();
    sub_1D6EC8794(&qword_1EDF13E18, sub_1D6060284);
    sub_1D726443C();
    v30 = v13;
    v29 = 9;
    sub_1D5F9C7A8();
    sub_1D6EC8E24(&qword_1EDF056B8);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t _s8NewsFeed0B25GroupLocalClusteringKnobsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v19 = *(a1 + 56);
  v20 = *(a1 + 40);
  v16 = *(a1 + 64);
  v17 = *(a1 + 48);
  v14 = *(a1 + 72);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v18 = *(a2 + 56);
  v15 = *(a2 + 64);
  v13 = *(a2 + 72);
  if ((sub_1D5E2CA40(*a1, *a2) & 1) == 0 || (sub_1D5E2CBC4(v2, v6) & 1) == 0 || (sub_1D6EC6FAC(v3, v7) & 1) == 0 || ((v4 ^ v8) & 1) != 0 || (sub_1D5BF1C0C(v5, v10) & 1) == 0 || (sub_1D5E2CDB4(v20, v9) & 1) == 0 || v17 != v11 || *(v19 + 16) != *(v18 + 16) || (sub_1D635E760(*(v19 + 24), *(v18 + 24)) & 1) == 0 || *(v16 + 16) != *(v15 + 16) || (sub_1D6709344(*(v16 + 24), *(v15 + 24)) & 1) == 0)
  {
    return 0;
  }

  return sub_1D5E2CF38(v14, v13);
}

uint64_t sub_1D6EC8794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6EC87DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupBundleArticleQuotas();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6EC8840()
{
  result = qword_1EDF13548;
  if (!qword_1EDF13548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13548);
  }

  return result;
}

unint64_t sub_1D6EC8894()
{
  result = qword_1EDF057C0;
  if (!qword_1EDF057C0)
  {
    sub_1D6EC8960(255, &qword_1EDF057D0, sub_1D6060284);
    sub_1D6EC8794(&qword_1EDF36720, sub_1D6060284);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057C0);
  }

  return result;
}

void sub_1D6EC8960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1D6EC89C4()
{
  result = qword_1EDF057D8;
  if (!qword_1EDF057D8)
  {
    sub_1D6EC8960(255, &unk_1EDF057E8, sub_1D606016C);
    sub_1D6EC8794(&qword_1EDF13E28, sub_1D606016C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057D8);
  }

  return result;
}

unint64_t sub_1D6EC8A90()
{
  result = qword_1EDF057A8;
  if (!qword_1EDF057A8)
  {
    sub_1D6EC8960(255, &qword_1EDF057B8, sub_1D5E3A600);
    sub_1D6EC8794(&qword_1EDF36700, sub_1D5E3A600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057A8);
  }

  return result;
}

void sub_1D6EC8B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6EC8840();
    v7 = a3(a1, &type metadata for FeedGroupLocalClusteringKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6EC8BC0()
{
  result = qword_1EDF057C8;
  if (!qword_1EDF057C8)
  {
    sub_1D6EC8960(255, &qword_1EDF057D0, sub_1D6060284);
    sub_1D6EC8794(&qword_1EDF13E18, sub_1D6060284);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057C8);
  }

  return result;
}

unint64_t sub_1D6EC8C8C()
{
  result = qword_1EDF057E0;
  if (!qword_1EDF057E0)
  {
    sub_1D6EC8960(255, &unk_1EDF057E8, sub_1D606016C);
    sub_1D6EC8794(&qword_1EDF13E30, sub_1D606016C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057E0);
  }

  return result;
}

unint64_t sub_1D6EC8D58()
{
  result = qword_1EDF057B0;
  if (!qword_1EDF057B0)
  {
    sub_1D6EC8960(255, &qword_1EDF057B8, sub_1D5E3A600);
    sub_1D6EC8794(&qword_1EDF13E08, sub_1D5E3A600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF057B0);
  }

  return result;
}

uint64_t sub_1D6EC8E24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F9C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6EC8EAC()
{
  result = qword_1EC897BC8;
  if (!qword_1EC897BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BC8);
  }

  return result;
}

unint64_t sub_1D6EC8F04()
{
  result = qword_1EDF13538;
  if (!qword_1EDF13538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13538);
  }

  return result;
}

unint64_t sub_1D6EC8F5C()
{
  result = qword_1EDF13540;
  if (!qword_1EDF13540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13540);
  }

  return result;
}

uint64_t sub_1D6EC8FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7053776F6C6C61 && a2 == 0xEB00000000737472;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73F5D80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73B7150 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F5DA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73F5DC0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEF646E456D6F7246 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73F5DE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F656D6954676174 && a2 == 0xEB00000000737475)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

NewsFeed::FormatLocalizationCollection __swiftcall FormatLocalizationCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C86700(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.stringsByIdentifier._rawValue = v4;
  result.localizations._rawValue = v3;
  return result;
}

uint64_t FormatLocalizationCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5CAF910();
  sub_1D5CAF9E8(&qword_1EDF05120, &qword_1EDF12450);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1D6EC9440@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C86700(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6EC9484(uint64_t a1)
{
  v1 = a1;
  v31 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v33 = v2;
  v34 = result;
  v32 = v6;
  while (v5)
  {
    v10 = v8;
LABEL_10:
    v35 = v10;
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v1 + 48) + v11);
    v13 = *(*(v1 + 56) + v11);
    v36 = v9;
    if (v13 >> 62)
    {
      v14 = sub_1D7263BFC();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v15 = 0;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](v15, v13);
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          result = sub_1D7263EAC();
        }

        else
        {
        }

        ++v15;
      }

      while (v16 != v14);
      v18 = v36;
      v2 = v33;
      v1 = v34;
      v6 = v32;
      v9 = MEMORY[0x1E69E7CC0];
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_45:
      v19 = sub_1D7263BFC();
      goto LABEL_29;
    }

    v18 = v9;
    if (v9 < 0)
    {
      goto LABEL_45;
    }

LABEL_27:
    if ((v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v19 = *(v18 + 16);
LABEL_29:
    v5 &= v5 - 1;

    if (v19)
    {
      v20 = v31;
      v21 = *(v31 + 16);
      if (*(v31 + 24) <= v21)
      {
        sub_1D6D6ECE4(v21 + 1, 1);
        v20 = v37;
      }

      v31 = v20;
      result = sub_1D72649FC();
      v22 = v31 + 64;
      v23 = -1 << *(v31 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v31 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_43;
          }
        }

        goto LABEL_50;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v31 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_43:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v31 + 48) + 8 * v26) = v12;
      *(*(v31 + 56) + 8 * v26) = v18;
      ++*(v31 + 16);
      v8 = v35;
    }

    else
    {

      v8 = v35;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v31;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_1D6EC97F4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_10:
    v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    if ([v8 isValid])
    {
      [v8 invalidate];
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      swift_beginAccess();

      v10 = sub_1D6EC9484(v9);

      *(v0 + 24) = v10;

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D6EC9950()
{
  v1 = v0;
  swift_beginAccess();

  v3 = sub_1D6EC9484(v2);

  *(v0 + 24) = v3;

  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v39 = *MEMORY[0x1E695DA28];

  v10 = 0;
  v11 = &selRef_superfeedConfigResourceID;
  v40 = v4;
  while (v8)
  {
LABEL_12:
    v16 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + v16);
    if (([v18 v11[184]] & 1) == 0)
    {
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v17;
      aBlock[4] = sub_1D6ECA60C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D5C38428;
      aBlock[3] = &block_descriptor_106;
      v21 = _Block_copy(aBlock);
      v22 = objc_opt_self();

      v23 = [v22 timerWithTimeInterval:1 repeats:v21 block:v17];
      _Block_release(v21);

      swift_beginAccess();
      v24 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v1 + 16);
      *(v1 + 16) = 0x8000000000000000;
      v27 = sub_1D6D631FC(v17);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_25;
      }

      v33 = v28;
      if (v26[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v37 = v27;
        sub_1D6D82B8C();
        v27 = v37;
        if (v33)
        {
          goto LABEL_4;
        }

LABEL_19:
        v26[(v27 >> 6) + 8] |= 1 << v27;
        *(v26[6] + 8 * v27) = v17;
        *(v26[7] + 8 * v27) = v24;
        v35 = v26[2];
        v31 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v31)
        {
          goto LABEL_26;
        }

        v26[2] = v36;
      }

      else
      {
        sub_1D6D6EA78(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_1D6D631FC(v17);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_27;
        }

LABEL_18:
        if ((v33 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_4:
        v12 = v26[7];
        v13 = *(v12 + 8 * v27);
        *(v12 + 8 * v27) = v24;
      }

      *(v1 + 16) = v26;
      swift_endAccess();
      v14 = [objc_opt_self() currentRunLoop];
      [v14 addTimer:v24 forMode:v39];

      v4 = v40;
      v11 = &selRef_superfeedConfigResourceID;
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6EC9D40(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FormatTimerObserver();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  swift_beginAccess();
  v10 = *(v5 + 24);
  if (*(v10 + 16) && (v11 = sub_1D6D631FC(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5E42B34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D72816C0;
  *(inited + 32) = v9;

  sub_1D69879D8(inited);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
LABEL_20:
    v15 = sub_1D7263BFC();
    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_7:
      v16 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v16, v13);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v19 = aBlock[0];
            goto LABEL_22;
          }
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_17;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
        }

        else
        {
        }

        ++v16;
        if (v17 == v15)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_22:

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_1D6D7A4D4(v19, isUniquelyReferenced_nonNull_native, a1);
  *(v5 + 24) = v32;
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v5 + 16) + 16) && (sub_1D6D631FC(a1), (v21 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;
    aBlock[4] = sub_1D6ECA634;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5C38428;
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);
    v25 = objc_opt_self();

    v26 = [v25 timerWithTimeInterval:1 repeats:v24 block:a1];
    _Block_release(v24);

    swift_beginAccess();
    v27 = v26;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_1D6D7A384(v27, v28, a1);
    *(v5 + 16) = v32;
    swift_endAccess();
    v29 = [objc_opt_self() currentRunLoop];
    [v29 addTimer:v27 forMode:*MEMORY[0x1E695DA28]];
  }
}

void FormatTimer.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_10:
    v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    if ([v8 isValid])
    {
      [v8 invalidate];
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      *(v0 + 16) = sub_1D605E720(MEMORY[0x1E69E7CC0]);

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t FormatTimer.__deallocating_deinit()
{
  FormatTimer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6ECA330(double a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16))
  {
    v5 = sub_1D6D631FC(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      swift_endAccess();
      v17 = MEMORY[0x1E69E7CC0];
      if (v7 >> 62)
      {
        goto LABEL_22;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      if (v8)
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1DA6FB460](v9, v7);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              v13 = v17;
              goto LABEL_19;
            }
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_22:
              v8 = sub_1D7263BFC();
              goto LABEL_5;
            }

            v10 = *(v7 + 8 * v9 + 32);

            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_16;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            (*(v10 + 24))();
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
          }

          else
          {
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_17;
          }
        }
      }

      v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      sub_1D6D7A4D4(v13, isUniquelyReferenced_nonNull_native, a1);
      *(v2 + 24) = v16;
    }
  }

  return swift_endAccess();
}

uint64_t sub_1D6ECA528(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D6ECA330(a1);
  }

  return result;
}

uint64_t sub_1D6ECA590()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FormatBindingShareAttributionExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6ECA6C8()
{
  result = qword_1EC897BD0;
  if (!qword_1EC897BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897BD0);
  }

  return result;
}

unint64_t sub_1D6ECA71C(uint64_t a1)
{
  result = sub_1D6ECA744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ECA744()
{
  result = qword_1EC897BD8[0];
  if (!qword_1EC897BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC897BD8);
  }

  return result;
}

unint64_t sub_1D6ECA798(void *a1)
{
  a1[1] = sub_1D5F2E5EC();
  a1[2] = sub_1D5F2E640();
  result = sub_1D6ECA6C8();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6ECA83C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6ECA890@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FormatSlotItemCountLimit.identifier.getter()
{
  v1 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6ECC0A0(v0, v4, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6ECBE6C(v4, type metadata accessor for FormatSlotItemCountLimit);
      return 1953459315;
    }

    else
    {
      return 0x73626F6E6BLL;
    }
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    v13 = 0x2D746E756F63;
    v14 = 0xE600000000000000;
    v12 = v7;
    v9 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v9);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v12 = v8;
    v10 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v10);

    return v13;
  }
}

uint64_t sub_1D6ECAA1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatSlotDefinitionItemSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDE38(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ECC0A0(v2, v20, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5CEEC58(a1, v16);
    v32 = type metadata accessor for FormatTransformKnobs();
    if ((*(*(v32 - 8) + 48))(v16, 1, v32) != 1)
    {
      v33 = &v16[*(v32 + 20)];
      v34 = *(v33 + 3);
      v35 = *(v33 + 4);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v35 + 16))(v34, v35);
      v31 = sub_1D5E35358(v16);

      v36 = type metadata accessor for FormatTransformKnobs;
      v37 = v16;
LABEL_19:
      sub_1D6ECBE6C(v37, v36);
      return v31;
    }

    sub_1D6ECC108(v16, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
    return 0;
  }

  sub_1D6ECC164(v20, v12, type metadata accessor for FormatSlotDefinition);
  v22 = *(v12 + 6);
  v23 = *(v22 + 16);
  if (!v23)
  {
    v31 = 0;
LABEL_18:
    v36 = type metadata accessor for FormatSlotDefinition;
    v37 = v12;
    goto LABEL_19;
  }

  v24 = 0;
  LODWORD(v20) = 0;
  v25 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v26 = *(v5 + 72);
  v27 = v23 - 1;
  while (1)
  {
    sub_1D6ECC0A0(v25, v8, type metadata accessor for FormatSlotDefinitionItemSet);
    v28 = *v8;
    result = sub_1D6ECBE6C(v8, type metadata accessor for FormatSlotDefinitionItemSet);
    if (v20 == 0x7FFFFFFF || v28 == 0x7FFFFFFF)
    {
      v20 = 0x7FFFFFFFLL;
      goto LABEL_9;
    }

    v30 = __OFADD__(v20, v28);
    v20 = (v20 + v28);
    if (v30)
    {
      break;
    }

LABEL_9:
    if (v27 == v24)
    {
      v31 = v20;
      goto LABEL_18;
    }

    ++v24;
    v25 += v26;
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      return *v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6ECADE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatSlotDefinitionItemSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDE38(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ECC0A0(v2, v20, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *(v20 + 8);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5CEEC58(a1, v16);
    v32 = type metadata accessor for FormatTransformKnobs();
    if ((*(*(v32 - 8) + 48))(v16, 1, v32) != 1)
    {
      v33 = &v16[*(v32 + 20)];
      v34 = *(v33 + 3);
      v35 = *(v33 + 4);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v35 + 8))(v34, v35);
      v31 = sub_1D5E35358(v16);

      v36 = type metadata accessor for FormatTransformKnobs;
      v37 = v16;
LABEL_19:
      sub_1D6ECBE6C(v37, v36);
      return v31;
    }

    sub_1D6ECC108(v16, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1D6ECC164(v20, v12, type metadata accessor for FormatSlotDefinition);
  v22 = *(v12 + 6);
  v23 = *(v22 + 16);
  if (!v23)
  {
    v31 = 0;
LABEL_18:
    v36 = type metadata accessor for FormatSlotDefinition;
    v37 = v12;
    goto LABEL_19;
  }

  v24 = 0;
  LODWORD(v20) = 0;
  v25 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v26 = *(v5 + 72);
  v27 = v23 - 1;
  while (1)
  {
    sub_1D6ECC0A0(v25, v8, type metadata accessor for FormatSlotDefinitionItemSet);
    v28 = *(v8 + 1);
    result = sub_1D6ECBE6C(v8, type metadata accessor for FormatSlotDefinitionItemSet);
    if (v20 == 0x7FFFFFFF || v28 == 0x7FFFFFFF)
    {
      v20 = 0x7FFFFFFFLL;
      goto LABEL_9;
    }

    v30 = __OFADD__(v20, v28);
    v20 = (v20 + v28);
    if (v30)
    {
      break;
    }

LABEL_9:
    if (v27 == v24)
    {
      v31 = v20;
      goto LABEL_18;
    }

    ++v24;
    v25 += v26;
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      return *(v20 + 8);
    }
  }

  __break(1u);
  return result;
}

uint64_t FormatSlotItemCountLimit.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6ECC0A0(v1, v9, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6ECC164(v9, v5, type metadata accessor for FormatSlotDefinition);
      *&v13 = 0x20746F6C73;
      *(&v13 + 1) = 0xE500000000000000;
      MEMORY[0x1DA6F9910](*v5, v5[1]);
      v11 = v13;
      sub_1D6ECBE6C(v5, type metadata accessor for FormatSlotDefinition);
      return v11;
    }

    else
    {
      return 0x73626F6E6BLL;
    }
  }

  else
  {
    v13 = *v9;
    return FormatCountLimit.description.getter();
  }
}

uint64_t sub_1D6ECB378(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDE38(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v71 = &v60 - v11;
  v66 = type metadata accessor for FormatSlotDefinitionItemSet();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v13);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D6ECAA1C(a2);
  v24 = *(a1 + 16);
  if (v24 < v23)
  {
    v25 = v23;
    type metadata accessor for FormatServiceError();
    sub_1D6ECC1CC(&qword_1EDF102B8, type metadata accessor for FormatServiceError);
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v64 = *(a1 + 16);
  sub_1D6ECC0A0(v2, v22, type metadata accessor for FormatSlotItemCountLimit);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_1D6ECC164(v22, v18, type metadata accessor for FormatSlotDefinition);
    v28 = *(v18 + 6);
    v29 = v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v30 = (2 * *(v28 + 16)) | 1;
    v67 = v28;
    v68 = v29;
    v69 = 0;
    v70 = v30;

    v31 = v71;
    sub_1D60F6C48(v71);
    v61 = *(v12 + 48);
    v62 = v12 + 48;
    if (v61(v31, 1, v66) == 1)
    {
LABEL_5:

      swift_unknownObjectRelease();
      sub_1D6ECBE6C(v18, type metadata accessor for FormatSlotDefinition);
      return sub_1D6ECC108(v31, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    }

    v32 = v64;
    v33 = v65;
    v60 = v18;
    while (1)
    {
      sub_1D6ECC164(v31, v33, type metadata accessor for FormatSlotDefinitionItemSet);
      v34 = *v33;
      if (*(a1 + 16) < v34)
      {
        v58 = *v33;

        type metadata accessor for FormatServiceError();
        sub_1D6ECC1CC(&qword_1EDF102B8, type metadata accessor for FormatServiceError);
        swift_allocError();
        *v59 = v58;
        v59[1] = v32;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6ECBE6C(v33, type metadata accessor for FormatSlotDefinitionItemSet);
        swift_unknownObjectRelease();
        v57 = v18;
        return sub_1D6ECBE6C(v57, type metadata accessor for FormatSlotDefinition);
      }

      v35 = sub_1D6914308(v34, a1);
      v37 = v36;
      v39 = v38;
      v41 = v40 >> 1;

      v63 = v35;
      result = swift_unknownObjectRetain();
      if (v39 != v41)
      {
        if (v39 <= v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v39;
        }

        v43 = v39;
        while (v42 != v43)
        {
          v44 = type metadata accessor for FormatContentSlotItemResolution();
          sub_1D6ECC0A0(v37 + *(*(v44 - 8) + 72) * v43, v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
          v45 = FormatContentSlotItemObject.Resolved.kinds.getter();
          sub_1D6ECBE6C(v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (!*(v45 + 16) || (sub_1D670EFA0(v45, *(v33 + 1)) & 1) != 0)
          {

            swift_unknownObjectRelease();
            type metadata accessor for FormatServiceError();
            sub_1D6ECC1CC(&qword_1EDF102B8, type metadata accessor for FormatServiceError);
            swift_allocError();
            *v56 = *(v33 + 1);
            v56[1] = v45;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            swift_unknownObjectRelease();
            sub_1D6ECBE6C(v33, type metadata accessor for FormatSlotDefinitionItemSet);
            swift_unknownObjectRelease();
            v57 = v60;
            return sub_1D6ECBE6C(v57, type metadata accessor for FormatSlotDefinition);
          }

          ++v43;

          if (v41 == v43)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

LABEL_18:
      swift_unknownObjectRelease();
      result = v41 - v39;
      if (__OFSUB__(v41, v39))
      {
        goto LABEL_35;
      }

      v49 = sub_1D5FCF888(result, a1);
      if ((v48 & 1) == 0)
      {
        goto LABEL_20;
      }

      v51 = v48;
      v52 = v47;
      v53 = v46;
      sub_1D72647AC();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = MEMORY[0x1E69E7CC0];
      }

      v55 = *(v54 + 16);

      if (__OFSUB__(v51 >> 1, v52))
      {
        goto LABEL_36;
      }

      if (v55 != (v51 >> 1) - v52)
      {
        break;
      }

      a1 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v18 = v60;
      v31 = v71;
      v32 = v64;
      if (!a1)
      {
        a1 = MEMORY[0x1E69E7CC0];
        goto LABEL_27;
      }

LABEL_28:
      sub_1D6ECBE6C(v33, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D60F6C48(v31);
      if (v61(v31, 1, v66) == 1)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    v48 = v51;
    v47 = v52;
    v46 = v53;
LABEL_20:
    sub_1D5EC2C88(v49, v46, v47, v48);
    a1 = v50;
    swift_unknownObjectRelease();
    v18 = v60;
    v31 = v71;
    v32 = v64;
LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  return result;
}

BOOL _s8NewsFeed24FormatSlotItemCountLimitO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v28 - v14);
  sub_1D6ECC03C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v19[*(v20 + 56)];
  sub_1D6ECC0A0(a1, v19, type metadata accessor for FormatSlotItemCountLimit);
  sub_1D6ECC0A0(a2, v21, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6ECC0A0(v19, v11, type metadata accessor for FormatSlotItemCountLimit);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6ECC164(v21, v7, type metadata accessor for FormatSlotDefinition);
        v23 = _s8NewsFeed20FormatSlotDefinitionV2eeoiySbAC_ACtFZ_0(v11, v7);
        sub_1D6ECBE6C(v7, type metadata accessor for FormatSlotDefinition);
        sub_1D6ECBE6C(v11, type metadata accessor for FormatSlotDefinition);
        v24 = type metadata accessor for FormatSlotItemCountLimit;
        goto LABEL_17;
      }

      sub_1D6ECBE6C(v11, type metadata accessor for FormatSlotDefinition);
    }

    else
    {
      v26 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for FormatSlotItemCountLimit;
      if (v26 == 2)
      {
        v23 = 1;
        goto LABEL_17;
      }
    }

LABEL_16:
    v23 = 0;
    v24 = sub_1D6ECC03C;
    goto LABEL_17;
  }

  sub_1D6ECC0A0(v19, v15, type metadata accessor for FormatSlotItemCountLimit);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_16;
  }

  v23 = *v15 == *v21 && v15[1] == *(v21 + 1);
  v24 = type metadata accessor for FormatSlotItemCountLimit;
LABEL_17:
  sub_1D6ECBE6C(v19, v24);
  return v23;
}

uint64_t type metadata accessor for FormatSlotItemCountLimit()
{
  result = qword_1EDF3F1E8;
  if (!qword_1EDF3F1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6ECBE6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6ECBECC(uint64_t a1)
{
  result = sub_1D6ECC1CC(&qword_1EC897C60, type metadata accessor for FormatSlotItemCountLimit);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6ECBF24(void *a1)
{
  a1[1] = sub_1D6ECC1CC(&qword_1EDF3F1F8, type metadata accessor for FormatSlotItemCountLimit);
  a1[2] = sub_1D6ECC1CC(&qword_1EDF0CEC0, type metadata accessor for FormatSlotItemCountLimit);
  result = sub_1D6ECC1CC(&qword_1EC897C68, type metadata accessor for FormatSlotItemCountLimit);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6ECBFD0()
{
  result = type metadata accessor for FormatSlotDefinition();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6ECC03C()
{
  if (!qword_1EC897C70)
  {
    type metadata accessor for FormatSlotItemCountLimit();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897C70);
    }
  }
}

uint64_t sub_1D6ECC0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6ECC108(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5CEDE38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6ECC164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6ECC1CC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 FeedJournalGroup.init(result:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

uint64_t LayeredMediaLayerProcessorRequest.__allocating_init(assetHandle:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_1D6ECC6B0(v11, v4, v9, v10, a2, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t LayeredMediaLayerProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LayeredMediaLayerProcessorRequest.init(assetHandle:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D6ECC4D8(a2, a3, a4, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t LayeredMediaLayerProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t LayeredMediaLayerProcessorRequest.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6ECC4D8(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = a6;
  v17[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a6 - 8) + 32))();
  sub_1D5B68374(v17, a5 + 64);
  sub_1D6C23D98();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x616D497265766F63;
  *(inited + 40) = 0xEF726579614C6567;
  sub_1D5B68374(v17, inited + 48);
  v13 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(a5 + 56) = v13;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  v14 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v15 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v15);

  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a5;
}

uint64_t sub_1D6ECC6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a3);
  return sub_1D6ECC4D8(a5, a6, a7, v15, v16, a3, a4);
}

NewsFeed::ShareAttributionViewAlignment_optional __swiftcall ShareAttributionViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ShareAttributionViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

Swift::Void __swiftcall SLAttributionView.update(_:)(NewsFeed::ShareAttributionViewStyle a1)
{
  v2 = *a1;
  if (v2 >= 2)
  {
    [v1 updateBackgroundStyle_];
    if (v2 == 2)
    {
      [v1 updateInterfaceStyle_];
    }

    else
    {
      [v1 updateInterfaceStyle_];
    }

    v3 = [objc_opt_self() blackColor];
    v4 = [v3 colorWithAlphaComponent_];
  }

  else
  {
    [v1 updateBackgroundStyle_];
    [v1 updateInterfaceStyle_];
    v4 = 0;
  }

  [v1 updateBackgroundColor_];
}

void *sub_1D6ECCA74(void *a1)
{
  v3 = [v1 contextMenuItems];
  if (v3)
  {
    v4 = v3;
    sub_1D6A413F4();
    v5 = sub_1D726267C();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v7 = 0;
      a1 = *a1;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA6FB460](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 identifier];
        v12 = sub_1D726207C();
        v14 = v13;

        if (v12 == sub_1D726207C() && v14 == v15)
        {

          return v9;
        }

        v17 = sub_1D72646CC();

        if (v17)
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

unint64_t sub_1D6ECCC40()
{
  result = qword_1EC897C78;
  if (!qword_1EC897C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C78);
  }

  return result;
}

unint64_t sub_1D6ECCC98()
{
  result = qword_1EC897C80;
  if (!qword_1EC897C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897C80);
  }

  return result;
}

uint64_t dispatch thunk of ShareAttributionView.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t sub_1D6ECCDA0(uint64_t a1, char *a2, uint64_t a3)
{
  v134 = a2;
  v135 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5C1F7FC(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v131 = &v126 - v7;
  v8 = sub_1D725891C();
  v132 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D72585BC();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v12);
  v129 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F7FC(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], v4);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  *&v130 = &v126 - v16;
  v133 = type metadata accessor for FeedHeadline(0);
  *(&v130 + 1) = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v17);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F7FC(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v126 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v126 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v126 - v38;
  *&v42 = MEMORY[0x1EEE9AC00](v40, v41).n128_u64[0];
  v44 = &v126 - v43;
  v46 = *a3;
  v45 = *(a3 + 8);
  v47 = *(a3 + 16);
  v48 = *(a3 + 24);
  v50 = *(a3 + 32);
  v49 = *(a3 + 40);
  v51 = *(a3 + 48);
  if (v51 <= 1)
  {
    v128 = *(a3 + 8);
    v129 = v47;
    *&v130 = v50;
    *(&v130 + 1) = v49;
    v131 = v48;
    v134 = v11;
    v67 = v132;
    v133 = v46;
    if (!v51)
    {
      v68 = [*(v135 + 40) publishDate];
      v69 = v67;
      if (v68)
      {
        v70 = v68;
        sub_1D72588BC();

        (*(v67 + 56))(v35, 0, 1, v8);
      }

      else
      {
        (*(v67 + 56))(v35, 1, 1, v8);
      }

      sub_1D5B75878(v35, v23, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if ((*(v67 + 48))(v23, 1, v8) != 1)
      {
        v90 = *(v67 + 32);
        v91 = v134;
        v90(v134, v23, v8);
        *&v142 = v133;
        *(&v142 + 1) = v128;
        *&v143 = v129;
        *(&v143 + 1) = v131;
        v144 = v130;
        v66 = FormatDateFormat.format(_:)(v91);
        (*(v69 + 8))(v91, v8);
        sub_1D6ED1D24(v35, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        return v66;
      }

      sub_1D6ED1D24(v35, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      return 0;
    }

    v82 = *(v135 + 40);
    v83 = [v82 displayDate];
    if (v83)
    {
      v84 = v134;
      v85 = v83;
      sub_1D72588BC();

      v86 = *(v67 + 32);
      v86(v39, v84, v8);
      v87 = *(v67 + 56);
      v87(v39, 0, 1, v8);
      v86(v44, v39, v8);
      v87(v44, 0, 1, v8);
      v88 = v67;
    }

    else
    {
      v92 = *(v67 + 56);
      v93 = 1;
      v92(v39, 1, 1, v8);
      v94 = [v82 publishDate];
      if (v94)
      {
        v95 = v94;
        sub_1D72588BC();

        v93 = 0;
      }

      v92(v31, v93, 1, v8);
      sub_1D5DF42F8(v31, v44);
      v88 = v67;
      v96 = (*(v67 + 48))(v39, 1, v8);
      v84 = v134;
      if (v96 != 1)
      {
        sub_1D6ED1D24(v39, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      }
    }

    sub_1D5B75878(v44, v27, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if ((*(v88 + 48))(v27, 1, v8) == 1)
    {
      v66 = 0;
    }

    else
    {
      (*(v88 + 32))(v84, v27, v8);
      *&v142 = v133;
      *(&v142 + 1) = v128;
      *&v143 = v129;
      *(&v143 + 1) = v131;
      v144 = v130;
      v66 = FormatDateFormat.format(_:)(v84);
      (*(v88 + 8))(v84, v8);
    }

    sub_1D6ED1D24(v44, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return v66;
  }

  if (v51 == 2)
  {
    v71 = v135;
    v72 = *(v135 + *(v133 + 56));
    v73 = v134;
    if (!v72)
    {
      return 0;
    }

    v74 = v46;
    [v72 duration];
    v76 = v75;
    v77 = 0.0;
    if (v73)
    {
      swift_getObjectType();
      v78 = qword_1EDF3B088;

      if (v78 != -1)
      {
        swift_once();
      }

      v79 = v131;
      sub_1D5C0C74C(v71, v131);
      (*(*(&v130 + 1) + 56))(v79, 0, 1, v133);
      sub_1D5B80300();
      sub_1D725D96C();
      sub_1D6ED1D24(v79, qword_1EDF42030, type metadata accessor for FeedHeadline);

      if ((BYTE9(v142) & 1) == 0)
      {
        if (BYTE8(v142))
        {
          v77 = 0.0;
        }

        else
        {
          v77 = *&v142;
        }
      }
    }

    *&v142 = sub_1D70DDB44((v74 & 1) != 0, v77, v76);
    *(&v142 + 1) = v97;
    *&v136 = 44;
    *(&v136 + 1) = 0xE100000000000000;
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1D5BF4D9C();
    v66 = sub_1D7263A6C();

    return v66;
  }

  v52 = v134;
  if (v51 == 3)
  {
    v53 = v135;
    v54 = *(v135 + *(v133 + 56));
    if (!v54)
    {
      return 0;
    }

    [v54 duration];
    v56 = v55;
    if (v52)
    {
      swift_getObjectType();
      v57 = qword_1EDF3B088;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = v131;
      sub_1D5C0C74C(v53, v131);
      (*(*(&v130 + 1) + 56))(v58, 0, 1, v133);
      sub_1D5B80300();
      sub_1D725D96C();
      sub_1D6ED1D24(v58, qword_1EDF42030, type metadata accessor for FeedHeadline);

      if ((BYTE9(v142) & 1) == 0 && (BYTE8(v142) & 1) == 0)
      {
        v56 = v56 - *&v142;
      }
    }

    v59 = 0.0;
    if (v56 >= 0.0)
    {
      if (v56 >= 3600.0)
      {
        if (qword_1EDF0D718 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_57;
      }

      v59 = v56;
    }

    v56 = v59;
    if (qword_1EDF0D718 == -1)
    {
      goto LABEL_15;
    }

LABEL_57:
    swift_once();
LABEL_15:
    v60 = qword_1EDF0D720;
    [qword_1EDF0D720 setAllowedUnits_];
    if (qword_1EDF0D718 != -1)
    {
      swift_once();
    }

    v61 = [v60 stringFromTimeInterval_];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1D726207C();
      v65 = v64;

      *&v142 = 45;
      *(&v142 + 1) = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v63, v65);

      return v142;
    }

    return 0;
  }

  if (!(v47 | v45 | v46 | v48 | v50 | v49))
  {
    v89 = [*(v135 + 40) identifier];
    goto LABEL_62;
  }

  v80 = v47 | v45 | v48 | v50 | v49;
  if (v46 == 1 && !v80)
  {
    v81 = [*(v135 + 40) title];
    goto LABEL_61;
  }

  if (v46 == 2 && !v80)
  {
    v81 = [*(v135 + 40) titleCompact];
    goto LABEL_61;
  }

  if (v46 == 3 && !v80)
  {
    v81 = [*(v135 + 40) excerpt];
    goto LABEL_61;
  }

  if (v46 == 4 && !v80)
  {
    v81 = [*(v135 + 40) shortExcerpt];
    goto LABEL_61;
  }

  if (v46 == 5 && !v80)
  {
    v99 = [*(v135 + 40) authors];
    if (v99)
    {
      v100 = v99;
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (v46 != 6 || v80)
  {
    if (v46 == 7 && !v80)
    {
      v81 = [*(v135 + 40) accessoryText];
      goto LABEL_61;
    }

    if (v46 == 8 && !v80)
    {
      v113 = [*(v135 + 40) sourceChannel];
      if (!v113)
      {
        return 0;
      }

      v98 = [v113 name];
      swift_unknownObjectRelease();
LABEL_63:
      v66 = sub_1D726207C();

      return v66;
    }

    if (v46 == 9 && !v80)
    {
      v81 = [*(v135 + 40) sponsoredBy];
LABEL_61:
      v89 = v81;
      if (!v89)
      {
        return 0;
      }

      goto LABEL_62;
    }

    if (v46 == 10 && !v80)
    {
      v114 = *(v135 + 40);
      if ([v114 storyType] - 1 >= 4)
      {
        return 0;
      }

      v115 = [v114 storyStyle];
      v66 = v115;
      if (!v115)
      {
        return v66;
      }

      v98 = [v115 label];

      if (!v98)
      {
        return 0;
      }

      goto LABEL_63;
    }

    if (v46 != 11 || v80)
    {
      if (v46 == 12 && !v80)
      {
        sub_1D5C0C74C(v135, v19);
        v116 = v130;
        sub_1D5B75878(&v19[*(v133 + 44)], v130, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        v117 = swift_unknownObjectRetain();
        sub_1D7155764(v117, v116, &v136);
        sub_1D6ED1C68(v19, type metadata accessor for FeedHeadline);
        *&v142 = 0x656C6369747261;
        *(&v142 + 1) = 0xE700000000000000;
        v118 = v136;
        v143 = v136;
        v145 = v138;
        v146 = v139;
        v144 = v137;
        *&v147 = v140;
        *(&v147 + 1) = MEMORY[0x1E69E7CD0];
        v138 = v137;
        v139 = v145;
        v140 = v146;
        v141 = v147;
        v136 = v142;
        v137 = v118;
        sub_1D72578EC();
        swift_allocObject();
        sub_1D72578DC();
        sub_1D6ED1CC8();
        sub_1D6ED21D0(qword_1EDF2B4B0, sub_1D6ED1CC8);
        v122 = sub_1D725D06C();

        sub_1D6ED1C68(&v142, sub_1D6ED1CC8);
        return v122;
      }

      if (v46 == 13 && !v80)
      {
        v119 = [*(v135 + 40) narrators];
        if (v119)
        {
          v100 = v119;
LABEL_68:
          v101 = sub_1D726267C();

          v66 = Array<A>.localizedOxfordCommaSeparatedList.getter(v101);
          v103 = v102;

          if (v103)
          {
            return v66;
          }
        }

LABEL_69:

        return 0;
      }

      if (v46 == 14 && !v80)
      {
        v66 = [*(v135 + 40) routeURL];
        if (v66)
        {
          sub_1D72584EC();

          v120 = sub_1D725844C();
          v121 = [v120 nss_isNewsURL];

          if (v121)
          {
            (*(v127 + 8))(v129, v128);
            return 1937204590;
          }

          else
          {
            v123 = v129;
            v124 = sub_1D725844C();
            v125 = [v124 nss_isStocksURL];

            (*(v127 + 8))(v123, v128);
            if (v125)
            {
              return 0x736B636F7473;
            }

            else
            {
              return 0x6E776F6E6B6E75;
            }
          }
        }

        return v66;
      }

      v89 = [*(v135 + 40) videoType];
      if (!v89)
      {
        return 0;
      }
    }

    else
    {
      v89 = [*(v135 + 40) language];
      if (!v89)
      {
        return 0;
      }
    }

LABEL_62:
    v98 = v89;
    goto LABEL_63;
  }

  v105 = *(v135 + 40);
  v106 = [v105 authors];
  if (!v106 || (v107 = v106, v108 = sub_1D726267C(), v107, v66 = Array<A>.localizedOxfordCommaSeparatedList.getter(v108), v110 = v109, , !v110))
  {
    v111 = [v105 accessoryText];
    if (v111)
    {
      v112 = v111;
      v66 = sub_1D726207C();

      return v66;
    }

    goto LABEL_69;
  }

  return v66;
}

uint64_t FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v134 = a4;
  v135 = a3;
  v139 = a2;
  v140 = a1;
  *&v136 = sub_1D72585BC();
  v130 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v5);
  v131 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5C1F7FC(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v137 = &v129 - v10;
  sub_1D5C1F7FC(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v133 = &v129 - v13;
  v138 = type metadata accessor for FeedHeadline(0);
  *(&v136 + 1) = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v14);
  v132 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725891C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F7FC(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v129 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v129 - v39;
  *&v43 = MEMORY[0x1EEE9AC00](v41, v42).n128_u64[0];
  v45 = &v129 - v44;
  v47 = *v4;
  v46 = *(v4 + 8);
  v48 = *(v4 + 16);
  v49 = *(v4 + 24);
  v51 = *(v4 + 32);
  v50 = *(v4 + 40);
  v52 = *(v4 + 48);
  if (v52 <= 1)
  {
    v134 = *(v4 + 8);
    v135 = v48;
    *&v136 = v51;
    *(&v136 + 1) = v50;
    v137 = v49;
    v139 = v20;
    v68 = v17;
    v138 = v47;
    if (!v52)
    {
      v69 = [*(v140 + 40) publishDate];
      if (v69)
      {
        v70 = v69;
        sub_1D72588BC();

        (*(v17 + 56))(v28, 0, 1, v16);
      }

      else
      {
        (*(v17 + 56))(v28, 1, 1, v16);
      }

      sub_1D5B75878(v28, v24, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if ((*(v17 + 48))(v24, 1, v16) != 1)
      {
        v89 = v139;
        (*(v17 + 32))(v139, v24, v16);
        *&v147 = v138;
        *(&v147 + 1) = v134;
        *&v148 = v135;
        *(&v148 + 1) = v137;
        v149 = v136;
        v67 = FormatDateFormat.format(_:)(v89);
        (*(v17 + 8))(v89, v16);
        sub_1D6ED1D24(v28, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        return v67;
      }

      sub_1D6ED1D24(v28, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      return 0;
    }

    v82 = *(v140 + 40);
    v83 = [v82 displayDate];
    if (v83)
    {
      v84 = v139;
      v85 = v83;
      sub_1D72588BC();

      v86 = *(v17 + 32);
      v86(v40, v84, v16);
      v87 = *(v17 + 56);
      v87(v40, 0, 1, v16);
      v86(v45, v40, v16);
      v87(v45, 0, 1, v16);
    }

    else
    {
      v90 = *(v17 + 56);
      v91 = 1;
      v90(v40, 1, 1, v16);
      v92 = [v82 publishDate];
      if (v92)
      {
        v93 = v92;
        sub_1D72588BC();

        v91 = 0;
      }

      v90(v36, v91, 1, v16);
      sub_1D5DF42F8(v36, v45);
      v17 = v68;
      v94 = (*(v68 + 48))(v40, 1, v16);
      v84 = v139;
      if (v94 != 1)
      {
        sub_1D6ED1D24(v40, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      }
    }

    sub_1D5B75878(v45, v32, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if ((*(v17 + 48))(v32, 1, v16) == 1)
    {
      v67 = 0;
    }

    else
    {
      (*(v17 + 32))(v84, v32, v16);
      *&v147 = v138;
      *(&v147 + 1) = v134;
      *&v148 = v135;
      *(&v148 + 1) = v137;
      v149 = v136;
      v67 = FormatDateFormat.format(_:)(v84);
      (*(v17 + 8))(v84, v16);
    }

    sub_1D6ED1D24(v45, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return v67;
  }

  if (v52 == 2)
  {
    v71 = v140;
    v72 = *(v140 + *(v138 + 56));
    v73 = v139;
    if (!v72)
    {
      return 0;
    }

    v74 = *v4;
    [v72 duration];
    v76 = v75;
    v77 = 0.0;
    if (v73)
    {
      swift_getObjectType();
      v78 = qword_1EDF3B088;

      if (v78 != -1)
      {
        swift_once();
      }

      v79 = v137;
      sub_1D5C0C74C(v71, v137);
      (*(*(&v136 + 1) + 56))(v79, 0, 1, v138);
      sub_1D5B80300();
      sub_1D725D96C();
      sub_1D6ED1D24(v79, qword_1EDF42030, type metadata accessor for FeedHeadline);

      if ((BYTE9(v147) & 1) == 0)
      {
        if (BYTE8(v147))
        {
          v77 = 0.0;
        }

        else
        {
          v77 = *&v147;
        }
      }
    }

    *&v147 = sub_1D70DDB44((v74 & 1) != 0, v77, v76);
    *(&v147 + 1) = v95;
    *&v141 = 44;
    *(&v141 + 1) = 0xE100000000000000;
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D5BF4D9C();
    v67 = sub_1D7263A6C();

    return v67;
  }

  v53 = v140;
  v54 = v139;
  if (v52 == 3)
  {
    v55 = *(v140 + *(v138 + 56));
    if (!v55)
    {
      return 0;
    }

    [v55 duration];
    v57 = v56;
    if (v54)
    {
      swift_getObjectType();
      v58 = qword_1EDF3B088;

      if (v58 != -1)
      {
        swift_once();
      }

      v59 = v137;
      sub_1D5C0C74C(v53, v137);
      (*(*(&v136 + 1) + 56))(v59, 0, 1, v138);
      sub_1D5B80300();
      sub_1D725D96C();
      sub_1D6ED1D24(v59, qword_1EDF42030, type metadata accessor for FeedHeadline);

      if ((BYTE9(v147) & 1) == 0 && (BYTE8(v147) & 1) == 0)
      {
        v57 = v57 - *&v147;
      }
    }

    v60 = 0.0;
    if (v57 >= 0.0)
    {
      if (v57 >= 3600.0)
      {
        if (qword_1EDF0D718 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_57;
      }

      v60 = v57;
    }

    v57 = v60;
    if (qword_1EDF0D718 == -1)
    {
      goto LABEL_15;
    }

LABEL_57:
    swift_once();
LABEL_15:
    v61 = qword_1EDF0D720;
    [qword_1EDF0D720 setAllowedUnits_];
    if (qword_1EDF0D718 != -1)
    {
      swift_once();
    }

    v62 = [v61 stringFromTimeInterval_];
    if (v62)
    {
      v63 = v62;
      v64 = sub_1D726207C();
      v66 = v65;

      *&v147 = 45;
      *(&v147 + 1) = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v64, v66);

      return v147;
    }

    return 0;
  }

  if (!(v48 | v46 | v47 | v49 | v51 | v50))
  {
    v88 = [*(v140 + 40) identifier];
LABEL_62:
    v96 = v88;
    goto LABEL_63;
  }

  v80 = v48 | v46 | v49 | v51 | v50;
  if (v47 == 1 && !v80)
  {
    v81 = [*(v140 + 40) title];
    goto LABEL_61;
  }

  if (v47 == 2 && !v80)
  {
    v81 = [*(v140 + 40) titleCompact];
    goto LABEL_61;
  }

  if (v47 == 3 && !v80)
  {
    v81 = [*(v140 + 40) excerpt];
    goto LABEL_61;
  }

  if (v47 == 4 && !v80)
  {
    v81 = [*(v140 + 40) shortExcerpt];
    goto LABEL_61;
  }

  if (v47 == 5 && !v80)
  {
    v97 = [*(v140 + 40) authors];
    if (v97)
    {
      v98 = v97;
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (v47 != 6 || v80)
  {
    if (v47 == 7 && !v80)
    {
      v81 = [*(v140 + 40) accessoryText];
      goto LABEL_61;
    }

    if (v47 != 8 || v80)
    {
      if (v47 == 9 && !v80)
      {
        v81 = [*(v140 + 40) sponsoredBy];
LABEL_61:
        v88 = v81;
        if (!v88)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v47 != 10 || v80)
      {
        if (v47 != 11 || v80)
        {
          v115 = v136;
          if (v47 == 12 && !v80)
          {
            v116 = v132;
            sub_1D5C0C74C(v140, v132);
            v117 = v133;
            sub_1D5B75878(v116 + *(v138 + 44), v133, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
            v118 = swift_unknownObjectRetain();
            sub_1D7155764(v118, v117, &v141);
            v119 = sub_1D6ED1C68(v116, type metadata accessor for FeedHeadline);
            v120 = v135(v119);
            *&v147 = 0x656C6369747261;
            *(&v147 + 1) = 0xE700000000000000;
            v121 = v141;
            v148 = v141;
            v150 = v143;
            v151 = v144;
            v149 = v142;
            *&v152 = v145;
            *(&v152 + 1) = v120;
            v143 = v142;
            v144 = v150;
            v145 = v151;
            v146 = v152;
            v141 = v147;
            v142 = v121;
            sub_1D72578EC();
            swift_allocObject();
            sub_1D72578DC();
            sub_1D6ED1CC8();
            sub_1D6ED21D0(qword_1EDF2B4B0, sub_1D6ED1CC8);
            v125 = sub_1D725D06C();

            sub_1D6ED1C68(&v147, sub_1D6ED1CC8);
            return v125;
          }

          if (v47 == 13 && !v80)
          {
            v122 = [*(v140 + 40) narrators];
            if (v122)
            {
              v98 = v122;
LABEL_68:
              v99 = sub_1D726267C();

              v67 = Array<A>.localizedOxfordCommaSeparatedList.getter(v99);
              v101 = v100;

              if (v101)
              {
                return v67;
              }
            }

LABEL_69:

            return 0;
          }

          if (v47 == 14 && !v80)
          {
            v67 = [*(v140 + 40) routeURL];
            if (v67)
            {
              sub_1D72584EC();

              v123 = sub_1D725844C();
              v124 = [v123 nss_isNewsURL];

              if (v124)
              {
                (*(v130 + 8))(v131, v115);
                return 1937204590;
              }

              else
              {
                v126 = v131;
                v127 = sub_1D725844C();
                v128 = [v127 nss_isStocksURL];

                (*(v130 + 8))(v126, v115);
                if (v128)
                {
                  return 0x736B636F7473;
                }

                else
                {
                  return 0x6E776F6E6B6E75;
                }
              }
            }

            return v67;
          }

          v114 = [*(v140 + 40) videoType];
          if (!v114)
          {
            return 0;
          }
        }

        else
        {
          v114 = [*(v140 + 40) language];
          if (!v114)
          {
            return 0;
          }
        }

        v96 = v114;
        goto LABEL_63;
      }

      v112 = *(v140 + 40);
      if ([v112 storyType] - 1 > 3)
      {
        return 0;
      }

      v113 = [v112 storyStyle];
      v67 = v113;
      if (!v113)
      {
        return v67;
      }

      v96 = [v113 label];

      if (!v96)
      {
        return 0;
      }
    }

    else
    {
      v111 = [*(v140 + 40) sourceChannel];
      if (!v111)
      {
        return 0;
      }

      v96 = [v111 name];
      swift_unknownObjectRelease();
    }

LABEL_63:
    v67 = sub_1D726207C();

    return v67;
  }

  v103 = *(v140 + 40);
  v104 = [v103 authors];
  if (!v104 || (v105 = v104, v106 = sub_1D726267C(), v105, v67 = Array<A>.localizedOxfordCommaSeparatedList.getter(v106), v108 = v107, , !v108))
  {
    v109 = [v103 accessoryText];
    if (v109)
    {
      v110 = v109;
      v67 = sub_1D726207C();

      return v67;
    }

    goto LABEL_69;
  }

  return v67;
}

uint64_t sub_1D6ECF550(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6D6F43656C746974;
      break;
    case 3:
      result = 0x446873696C627570;
      break;
    case 4:
      result = 0x4479616C70736964;
      break;
    case 5:
      result = 0x74707265637865;
      break;
    case 6:
      result = 0x63784574726F6873;
      break;
    case 7:
      result = 0x614E726F68747561;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x656873696C627570;
      break;
    case 10:
      result = 0x65726F736E6F7073;
      break;
    case 11:
      v3 = 0x5479726F7473;
      goto LABEL_22;
    case 12:
      result = 0x65676175676E616CLL;
      break;
    case 13:
      result = 0x6974616D6F747561;
      break;
    case 14:
      result = 0x726F737365636361;
      break;
    case 15:
      result = 0x726F74617272616ELL;
      break;
    case 16:
      result = 0x7275446B63617274;
      break;
    case 17:
      result = 0x6F72506B63617274;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      v3 = 0x546F65646976;
LABEL_22:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6ECF7B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6ECF550(*a1);
  v5 = v4;
  if (v3 == sub_1D6ECF550(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6ECF83C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6ECF550(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ECF8A0()
{
  sub_1D6ECF550(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6ECF8F4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6ECF550(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6ECF954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6ECF550(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6ECFA04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v313 = a3;
  v312 = a2;
  v311 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v311, v4);
  v307 = &v295 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v304 = (&v295 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v308 = &v295 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v309 = &v295 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v310 = &v295 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v306 = &v295 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v302 = &v295 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v298 = (&v295 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v300 = &v295 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v305 = &v295 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v297 = &v295 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v299 = &v295 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v303 = (&v295 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v295 = &v295 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = (&v295 - v47);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = (&v295 - v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  v301 = (&v295 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v295 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v296 = (&v295 - v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v295 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = (&v295 - v69);
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = (&v295 - v73);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = (&v295 - v77);
  v79 = *a1;
  sub_1D5C1F7FC(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v80 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v81 = *(v80 + 72);
  v82 = *(v80 + 80);
  switch(v79)
  {
    case 1:
      v169 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      sub_1D5C0C74C(v312, v74);
      v170 = [v74[5] title];
      if (v170)
      {
        v171 = v170;
        v172 = sub_1D726207C();
        v174 = v173;
      }

      else
      {
        v172 = 0;
        v174 = 0xE000000000000000;
      }

      v112 = v313;
      v274 = HIBYTE(v174) & 0xF;
      if ((v174 & 0x2000000000000000) == 0)
      {
        v274 = v172 & 0xFFFFFFFFFFFFLL;
      }

      if (v274)
      {
        v275 = MEMORY[0x1E69E6158];
      }

      else
      {

        v172 = 0;
        v174 = 0;
        v275 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v172;
      *&v319 = v174;
      *&v320 = v275;
      v276 = 0x656C746954;
      v277 = (v84 + v169);
      v278 = 0xE500000000000000;
      goto LABEL_155;
    case 2:
      v138 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      sub_1D5C0C74C(v312, v70);
      v139 = [v70[5] titleCompact];
      if (v139)
      {
        v140 = v139;
        v141 = sub_1D726207C();
        v143 = v142;
      }

      else
      {
        v141 = 0;
        v143 = 0xE000000000000000;
      }

      v112 = v313;
      v261 = HIBYTE(v143) & 0xF;
      if ((v143 & 0x2000000000000000) == 0)
      {
        v261 = v141 & 0xFFFFFFFFFFFFLL;
      }

      if (v261)
      {
        v262 = MEMORY[0x1E69E6158];
      }

      else
      {

        v141 = 0;
        v143 = 0;
        v262 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v141;
      *&v319 = v143;
      *&v320 = v262;
      v263 = 0x6F4320656C746954;
      v264 = 0xED0000746361706DLL;
      v265 = (v84 + v138);
      goto LABEL_208;
    case 3:
      v153 = v81;
      v154 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7270C10;
      v155 = (v84 + v154);
      v156 = v312;
      sub_1D5C0C74C(v312, v59);
      v318 = 0;
      *&v319 = 0;
      *(&v319 + 1) = 1;
      v320 = 0uLL;
      v321 = 0;
      v322 = 0;
      v157 = sub_1D6ECCDA0(v59, 0, &v318);
      v159 = HIBYTE(v158) & 0xF;
      if ((v158 & 0x2000000000000000) == 0)
      {
        v159 = v157 & 0xFFFFFFFFFFFFLL;
      }

      if (v159)
      {
        v160 = MEMORY[0x1E69E6158];
      }

      else
      {

        v157 = 0;
        v158 = 0;
        v160 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v157;
      *&v319 = v158;
      *&v320 = v160;
      sub_1D711B30C(0xD000000000000014, 0x80000001D73DBDB0, &v318, v155);
      sub_1D6ED1C68(v59, type metadata accessor for FeedHeadline);
      v266 = v156;
      v78 = v301;
      sub_1D5C0C74C(v266, v301);
      v318 = 0;
      *&v319 = 0;
      *(&v319 + 1) = 2;
      v320 = 0uLL;
      v321 = 0;
      v322 = 0;
      v267 = sub_1D6ECCDA0(v78, 0, &v318);
      v269 = HIBYTE(v268) & 0xF;
      if ((v268 & 0x2000000000000000) == 0)
      {
        v269 = v267 & 0xFFFFFFFFFFFFLL;
      }

      if (v269)
      {
        v270 = MEMORY[0x1E69E6158];
      }

      else
      {

        v267 = 0;
        v268 = 0;
        v270 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v267;
      *&v319 = v268;
      *&v320 = v270;
      v271 = &v155[v153];
      v272 = 0x80000001D73DBDD0;
      v273 = 0xD000000000000012;
      goto LABEL_166;
    case 4:
      v118 = v81;
      v119 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7270C10;
      v120 = (v84 + v119);
      v121 = v312;
      sub_1D5C0C74C(v312, v66);
      v318 = 0;
      *&v319 = 0;
      *(&v319 + 1) = 1;
      v320 = 0uLL;
      v321 = 0;
      v322 = 1;
      v122 = sub_1D6ECCDA0(v66, 0, &v318);
      v124 = HIBYTE(v123) & 0xF;
      if ((v123 & 0x2000000000000000) == 0)
      {
        v124 = v122 & 0xFFFFFFFFFFFFLL;
      }

      if (v124)
      {
        v125 = MEMORY[0x1E69E6158];
      }

      else
      {

        v122 = 0;
        v123 = 0;
        v125 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v122;
      *&v319 = v123;
      *&v320 = v125;
      sub_1D711B30C(0xD000000000000014, 0x80000001D73F5F50, &v318, v120);
      sub_1D6ED1C68(v66, type metadata accessor for FeedHeadline);
      v248 = v121;
      v48 = v296;
      sub_1D5C0C74C(v248, v296);
      v318 = 0;
      *&v319 = 0;
      *(&v319 + 1) = 2;
      v320 = 0uLL;
      v321 = 0;
      v322 = 1;
      v249 = sub_1D6ECCDA0(v48, 0, &v318);
      v251 = HIBYTE(v250) & 0xF;
      if ((v250 & 0x2000000000000000) == 0)
      {
        v251 = v249 & 0xFFFFFFFFFFFFLL;
      }

      if (v251)
      {
        v252 = MEMORY[0x1E69E6158];
      }

      else
      {

        v249 = 0;
        v250 = 0;
        v252 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v249;
      *&v319 = v250;
      *&v320 = v252;
      v253 = &v120[v118];
      v254 = 0x80000001D73F5F70;
      v255 = 0xD000000000000012;
      goto LABEL_163;
    case 5:
      v186 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      sub_1D5C0C74C(v312, v52);
      v187 = [v52[5] excerpt];
      if (v187)
      {
        v188 = v187;
        v189 = sub_1D726207C();
        v191 = v190;
      }

      else
      {
        v189 = 0;
        v191 = 0xE000000000000000;
      }

      v279 = HIBYTE(v191) & 0xF;
      if ((v191 & 0x2000000000000000) == 0)
      {
        v279 = v189 & 0xFFFFFFFFFFFFLL;
      }

      if (v279)
      {
        v280 = MEMORY[0x1E69E6158];
      }

      else
      {

        v189 = 0;
        v191 = 0;
        v280 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v189;
      *&v319 = v191;
      *&v320 = v280;
      sub_1D711B30C(0x74707265637845, 0xE700000000000000, &v318, (v84 + v186));
      result = sub_1D6ED1C68(v52, type metadata accessor for FeedHeadline);
      v112 = v313;
      goto LABEL_200;
    case 6:
      v197 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      sub_1D5C0C74C(v312, v48);
      v198 = [v48[5] shortExcerpt];
      if (v198)
      {
        v199 = v198;
        v200 = sub_1D726207C();
        v202 = v201;
      }

      else
      {
        v200 = 0;
        v202 = 0xE000000000000000;
      }

      v112 = v313;
      v282 = HIBYTE(v202) & 0xF;
      if ((v202 & 0x2000000000000000) == 0)
      {
        v282 = v200 & 0xFFFFFFFFFFFFLL;
      }

      if (v282)
      {
        v283 = MEMORY[0x1E69E6158];
      }

      else
      {

        v200 = 0;
        v202 = 0;
        v283 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v200;
      *&v319 = v202;
      *&v320 = v283;
      v255 = 0x78452074726F6853;
      v254 = 0xED00007470726563;
      v253 = (v84 + v197);
LABEL_163:
      sub_1D711B30C(v255, v254, &v318, v253);
      v281 = v48;
      break;
    case 7:
      v132 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v295;
      sub_1D5C0C74C(v312, v295);
      v161 = [*(v103 + 40) authors];
      if (!v161 || (v162 = v161, v163 = sub_1D726267C(), v162, v164 = Array<A>.localizedOxfordCommaSeparatedList.getter(v163), v166 = v165, , !v166))
      {

        v164 = 0;
        v166 = 0xE000000000000000;
      }

      v112 = v313;
      v167 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v167 = v164 & 0xFFFFFFFFFFFFLL;
      }

      if (v167)
      {
        v168 = MEMORY[0x1E69E6158];
      }

      else
      {

        v164 = 0;
        v166 = 0;
        v168 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v164;
      *&v319 = v166;
      *&v320 = v168;
      v245 = 0x4E20726F68747541;
      v247 = 0xEB00000000656D61;
      goto LABEL_197;
    case 8:
      v213 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v70 = v303;
      sub_1D5C0C74C(v312, v303);
      v214 = v70[5];
      v215 = [v214 authors];
      if (!v215 || (v216 = v215, v217 = sub_1D726267C(), v216, v218 = Array<A>.localizedOxfordCommaSeparatedList.getter(v217), v220 = v219, , !v220))
      {
        v221 = [v214 accessoryText];
        if (v221)
        {
          v222 = v221;
          v218 = sub_1D726207C();
          v220 = v223;
        }

        else
        {

          v218 = 0;
          v220 = 0xE000000000000000;
        }
      }

      v112 = v313;
      v293 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v293 = v218 & 0xFFFFFFFFFFFFLL;
      }

      if (v293)
      {
        v294 = MEMORY[0x1E69E6158];
      }

      else
      {

        v218 = 0;
        v220 = 0;
        v294 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v218;
      *&v319 = v220;
      *&v320 = v294;
      v265 = (v84 + v213);
      v263 = 0xD000000000000018;
      v264 = 0x80000001D73F5F30;
LABEL_208:
      sub_1D711B30C(v263, v264, &v318, v265);
      v281 = v70;
      break;
    case 9:
      v132 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v299;
      sub_1D5C0C74C(v312, v299);
      v133 = [*(v103 + 40) sourceChannel];
      if (v133)
      {
        v134 = [v133 name];
        swift_unknownObjectRelease();
        v135 = sub_1D726207C();
        v137 = v136;
      }

      else
      {
        v135 = 0;
        v137 = 0xE000000000000000;
      }

      v112 = v313;
      v258 = HIBYTE(v137) & 0xF;
      if ((v137 & 0x2000000000000000) == 0)
      {
        v258 = v135 & 0xFFFFFFFFFFFFLL;
      }

      if (v258)
      {
        v259 = MEMORY[0x1E69E6158];
      }

      else
      {

        v135 = 0;
        v137 = 0;
        v259 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v135;
      *&v319 = v137;
      *&v320 = v259;
      v245 = 0x656873696C627550;
      v260 = 0x656D614E2072;
      goto LABEL_196;
    case 10:
      v132 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v297;
      sub_1D5C0C74C(v312, v297);
      v208 = [*(v103 + 40) sponsoredBy];
      if (v208)
      {
        v209 = v208;
        v210 = sub_1D726207C();
        v212 = v211;
      }

      else
      {
        v210 = 0;
        v212 = 0xE000000000000000;
      }

      v112 = v313;
      v284 = HIBYTE(v212) & 0xF;
      if ((v212 & 0x2000000000000000) == 0)
      {
        v284 = v210 & 0xFFFFFFFFFFFFLL;
      }

      if (v284)
      {
        v285 = MEMORY[0x1E69E6158];
      }

      else
      {

        v210 = 0;
        v212 = 0;
        v285 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v210;
      *&v319 = v212;
      *&v320 = v285;
      v245 = 0x65726F736E6F7053;
      v247 = 0xEC00000079422064;
      goto LABEL_197;
    case 11:
      v109 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v305;
      sub_1D5C0C74C(v312, v305);
      v110 = *(v103 + 40);
      if ([v110 storyType] - 1 >= 4)
      {
        v115 = 0;
        v117 = 0xE000000000000000;
        v112 = v313;
      }

      else
      {
        v111 = [v110 storyStyle];
        v112 = v313;
        if (v111 && (v113 = v111, v114 = [v111 label], v113, v114))
        {
          v115 = sub_1D726207C();
          v117 = v116;
        }

        else
        {
          v115 = 0;
          v117 = 0xE000000000000000;
        }
      }

      v289 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v289 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v289)
      {
        v290 = MEMORY[0x1E69E6158];
      }

      else
      {

        v115 = 0;
        v117 = 0;
        v290 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v115;
      *&v319 = v117;
      *&v320 = v290;
      v288 = 0x2079726F7453;
      goto LABEL_188;
    case 12:
      v126 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v300;
      sub_1D5C0C74C(v312, v300);
      v127 = [*(v103 + 40) language];
      if (v127)
      {
        v128 = v127;
        v129 = sub_1D726207C();
        v131 = v130;
      }

      else
      {
        v129 = 0;
        v131 = 0xE000000000000000;
      }

      v112 = v313;
      v256 = HIBYTE(v131) & 0xF;
      if ((v131 & 0x2000000000000000) == 0)
      {
        v256 = v129 & 0xFFFFFFFFFFFFLL;
      }

      if (v256)
      {
        v257 = MEMORY[0x1E69E6158];
      }

      else
      {

        v129 = 0;
        v131 = 0;
        v257 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v129;
      *&v319 = v131;
      *&v320 = v257;
      v245 = 0x65676175676E614CLL;
      v246 = (v84 + v126);
      v247 = 0xE800000000000000;
      goto LABEL_198;
    case 13:
      v192 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v74 = v298;
      sub_1D5C0C74C(v312, v298);
      v318 = 12;
      v319 = 0u;
      v320 = 0u;
      v321 = 0;
      v322 = 4;
      v193 = sub_1D6ECCDA0(v74, 0, &v318);
      v195 = HIBYTE(v194) & 0xF;
      if ((v194 & 0x2000000000000000) == 0)
      {
        v195 = v193 & 0xFFFFFFFFFFFFLL;
      }

      if (v195)
      {
        v196 = MEMORY[0x1E69E6158];
      }

      else
      {

        v193 = 0;
        v194 = 0;
        v196 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v193;
      *&v319 = v194;
      *&v320 = v196;
      v276 = 0x6974616D6F747541;
      v277 = (v84 + v192);
      v278 = 0xEA00000000006E6FLL;
LABEL_155:
      sub_1D711B30C(v276, v278, &v318, v277);
      v281 = v74;
      break;
    case 14:
      v102 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v302;
      sub_1D5C0C74C(v312, v302);
      v104 = [*(v103 + 40) accessoryText];
      if (v104)
      {
        v105 = v104;
        v106 = sub_1D726207C();
        v108 = v107;
      }

      else
      {
        v106 = 0;
        v108 = 0xE000000000000000;
      }

      v112 = v313;
      v243 = HIBYTE(v108) & 0xF;
      if ((v108 & 0x2000000000000000) == 0)
      {
        v243 = v106 & 0xFFFFFFFFFFFFLL;
      }

      if (v243)
      {
        v244 = MEMORY[0x1E69E6158];
      }

      else
      {

        v106 = 0;
        v108 = 0;
        v244 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v106;
      *&v319 = v108;
      *&v320 = v244;
      v245 = 0x726F737365636341;
      v246 = (v84 + v102);
      v247 = 0xE900000000000079;
      goto LABEL_198;
    case 15:
      v144 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v306;
      sub_1D5C0C74C(v312, v306);
      v145 = [*(v103 + 40) narrators];
      if (!v145 || (v146 = v145, v147 = sub_1D726267C(), v146, v148 = Array<A>.localizedOxfordCommaSeparatedList.getter(v147), v150 = v149, , !v150))
      {

        v148 = 0;
        v150 = 0xE000000000000000;
      }

      v112 = v313;
      v151 = HIBYTE(v150) & 0xF;
      if ((v150 & 0x2000000000000000) == 0)
      {
        v151 = v148 & 0xFFFFFFFFFFFFLL;
      }

      if (v151)
      {
        v152 = MEMORY[0x1E69E6158];
      }

      else
      {

        v148 = 0;
        v150 = 0;
        v152 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v148;
      *&v319 = v150;
      *&v320 = v152;
      v245 = 0x726F74617272614ELL;
      v246 = (v84 + v144);
      v247 = 0xE900000000000073;
      goto LABEL_198;
    case 16:
      v91 = v81;
      v92 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7270C10;
      v93 = (v84 + v92);
      v94 = v312;
      v95 = v310;
      sub_1D5C0C74C(v312, v310);
      v96 = *(v95 + *(v311 + 56));
      v97 = 0xE000000000000000;
      if (v96)
      {
        [v96 duration];
        v318 = sub_1D70DDB44(0, 0.0, v98);
        *&v319 = v99;
        v316 = 44;
        v317 = 0xE100000000000000;
        v314 = 0;
        v315 = 0xE000000000000000;
        sub_1D5BF4D9C();
        v100 = sub_1D7263A6C();
        v97 = v101;
      }

      else
      {
        v100 = 0;
      }

      v229 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v229 = v100 & 0xFFFFFFFFFFFFLL;
      }

      if (v229)
      {
        v230 = MEMORY[0x1E69E6158];
      }

      else
      {

        v100 = 0;
        v97 = 0;
        v230 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v100;
      *&v319 = v97;
      *&v320 = v230;
      sub_1D711B30C(0xD000000000000017, 0x80000001D73F5EF0, &v318, v93);
      sub_1D6ED1C68(v310, type metadata accessor for FeedHeadline);
      v231 = v94;
      v232 = v309;
      sub_1D5C0C74C(v231, v309);
      v233 = *(v232 + *(v311 + 56));
      v234 = 0xE000000000000000;
      if (v233)
      {
        [v233 duration];
        v318 = sub_1D70DDB44(1, 0.0, v235);
        *&v319 = v236;
        v316 = 44;
        v317 = 0xE100000000000000;
        v314 = 0;
        v315 = 0xE000000000000000;
        sub_1D5BF4D9C();
        v237 = sub_1D7263A6C();
        v234 = v238;
      }

      else
      {
        v237 = 0;
      }

      v239 = v91;
      v240 = HIBYTE(v234) & 0xF;
      if ((v234 & 0x2000000000000000) == 0)
      {
        v240 = v237 & 0xFFFFFFFFFFFFLL;
      }

      if (v240)
      {
        v241 = MEMORY[0x1E69E6158];
      }

      else
      {

        v239 = v91;
        v237 = 0;
        v234 = 0;
        v241 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v237;
      *&v319 = v234;
      *&v320 = v241;
      sub_1D711B30C(0xD00000000000001DLL, 0x80000001D73F5F10, &v318, &v93[v239]);
      result = sub_1D6ED1C68(v232, type metadata accessor for FeedHeadline);
      goto LABEL_200;
    case 17:
      v132 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v308;
      sub_1D5C0C74C(v312, v308);
      v175 = *(v103 + *(v311 + 56));
      if (v175)
      {
        [v175 duration];
        if (v176 < 0.0)
        {
          v177 = 0.0;
        }

        else
        {
          v177 = v176;
        }

        if (qword_1EDF0D718 != -1)
        {
          swift_once();
        }

        v178 = qword_1EDF0D720;
        [qword_1EDF0D720 setAllowedUnits_];
        v112 = v313;
        if (qword_1EDF0D718 != -1)
        {
          swift_once();
        }

        v179 = [v178 stringFromTimeInterval_];
        if (v179)
        {
          v180 = v179;
          v181 = sub_1D726207C();
          v183 = v182;

          v318 = 45;
          *&v319 = 0xE100000000000000;
          MEMORY[0x1DA6F9910](v181, v183);

          v185 = v318;
          v184 = v319;
        }

        else
        {
          v185 = 0;
          v184 = 0xE000000000000000;
        }
      }

      else
      {
        v185 = 0;
        v184 = 0xE000000000000000;
        v112 = v313;
      }

      v291 = HIBYTE(v184) & 0xF;
      if ((v184 & 0x2000000000000000) == 0)
      {
        v291 = v185 & 0xFFFFFFFFFFFFLL;
      }

      if (v291)
      {
        v292 = MEMORY[0x1E69E6158];
      }

      else
      {

        v185 = 0;
        v184 = 0;
        v292 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v185;
      *&v319 = v184;
      *&v320 = v292;
      v245 = 0x7250206B63617254;
      v260 = 0x73736572676FLL;
LABEL_196:
      v247 = v260 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_197:
      v246 = (v84 + v132);
      goto LABEL_198;
    case 18:
      v203 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v78 = v304;
      sub_1D5C0C74C(v312, v304);
      v318 = 14;
      v319 = 0u;
      v320 = 0u;
      v321 = 0;
      v322 = 4;
      v204 = sub_1D6ECCDA0(v78, 0, &v318);
      v206 = HIBYTE(v205) & 0xF;
      if ((v205 & 0x2000000000000000) == 0)
      {
        v206 = v204 & 0xFFFFFFFFFFFFLL;
      }

      if (v206)
      {
        v207 = MEMORY[0x1E69E6158];
      }

      else
      {

        v204 = 0;
        v205 = 0;
        v207 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v204;
      *&v319 = v205;
      *&v320 = v207;
      v271 = (v84 + v203);
      v273 = 0xD000000000000018;
      v272 = 0x80000001D73F5ED0;
      goto LABEL_166;
    case 19:
      v109 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v103 = v307;
      sub_1D5C0C74C(v312, v307);
      v224 = [*(v103 + 40) videoType];
      if (v224)
      {
        v225 = v224;
        v226 = sub_1D726207C();
        v228 = v227;
      }

      else
      {
        v226 = 0;
        v228 = 0xE000000000000000;
      }

      v112 = v313;
      v286 = HIBYTE(v228) & 0xF;
      if ((v228 & 0x2000000000000000) == 0)
      {
        v286 = v226 & 0xFFFFFFFFFFFFLL;
      }

      if (v286)
      {
        v287 = MEMORY[0x1E69E6158];
      }

      else
      {

        v226 = 0;
        v228 = 0;
        v287 = 0;
        *(&v319 + 1) = 0;
      }

      v318 = v226;
      *&v319 = v228;
      *&v320 = v287;
      v288 = 0x206F65646956;
LABEL_188:
      v245 = v288 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      v246 = (v84 + v109);
      v247 = 0xEA00000000006570;
LABEL_198:
      sub_1D711B30C(v245, v247, &v318, v246);
      v281 = v103;
      break;
    default:
      v83 = (v82 + 32) & ~v82;
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      sub_1D5C0C74C(v312, v78);
      v85 = [v78[5] identifier];
      v86 = sub_1D726207C();
      v88 = v87;

      v89 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v89 = v86 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {
        v90 = MEMORY[0x1E69E6158];
      }

      else
      {

        v86 = 0;
        v88 = 0;
        v90 = 0;
        *(&v319 + 1) = 0;
      }

      v112 = v313;
      v318 = v86;
      *&v319 = v88;
      *&v320 = v90;
      v273 = 0x696669746E656449;
      v271 = (v84 + v83);
      v272 = 0xEA00000000007265;
LABEL_166:
      sub_1D711B30C(v273, v272, &v318, v271);
      v281 = v78;
      break;
  }

  result = sub_1D6ED1C68(v281, type metadata accessor for FeedHeadline);
LABEL_200:
  *v112 = v84;
  return result;
}