uint64_t sub_1CF676BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v44 = a3;
  v45 = a4;
  v48 = a1;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 96);
  v49 = *(*a2 + 88);
  v6 = v49;
  v50 = v7;
  v51 = v8;
  v52 = v9;
  v40 = type metadata accessor for PersistenceTrigger();
  v10 = sub_1CF9E75D8();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v49 = v7;
  v50 = v6;
  v51 = v9;
  v52 = v8;
  v14 = type metadata accessor for PersistenceTrigger();
  v15 = sub_1CF9E75D8();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  result = sub_1CF057B00(v48);
  if (!v20)
  {
    v38 = v9;
    v39 = v8;
    v53 = v48;
    if (v48 < 0)
    {
      v27 = v48 & 0x7FFFFFFFFFFFFFFFLL;
      v49 = v6;
      v50 = v7;
      v51 = v39;
      v52 = v38;
      type metadata accessor for JobRegistry();
      v28 = v13;
      (*(*(v40 - 8) + 56))(v13, 1, 1);
      v29 = qword_1EDEA72F0;
      swift_retain_n();
      v30 = v27;
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = qword_1EDEBB8C0;
      v32 = (*(*a2 + 176))();
      v33 = v47;
      sub_1CF66DE54(v30, v28, v31, v32, v44, v45, v46);
      if (v33)
      {

        (*(v41 + 8))(v28, v42);
      }

      v47 = 0;
      LODWORD(v46) = v36;
      v44 = v34;
      v45 = v35;
      (*(v41 + 8))(v28, v42);
    }

    else
    {
      v49 = v7;
      v50 = v6;
      v51 = v38;
      v52 = v39;
      type metadata accessor for JobRegistry();
      (*(*(v14 - 8) + 56))(v18, 1, 1, v14);
      v21 = qword_1EDEA72F0;

      if (v21 != -1)
      {
        swift_once();
      }

      v23 = v47;
      sub_1CF66DE54(v22, v18, qword_1EDEBB8C0, a2, v44, v45, v46);
      if (v23)
      {
        (*(v43 + 8))(v18, v15);
      }

      v47 = 0;
      LODWORD(v46) = v26;
      v44 = v24;
      v45 = v25;
      (*(v43 + 8))(v18, v15);
    }

    v49 = v7;
    v50 = v6;
    v51 = v38;
    v52 = v39;
    type metadata accessor for FSOrFPJob();
    sub_1CF058C24(v44, v45, v46);
  }

  return result;
}

uint64_t sub_1CF6770AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, v1, 0);
  v2 = v42;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1CF9E77C8();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v35 = v3 + 72;
  v36 = v1;
  v38 = v3 + 64;
  v39 = v3;
  v37 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_31;
    }

    v40 = v8;
    v41 = v2;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 16 * v7);
    v16 = *v15;
    v17 = v15[1];
    swift_bridgeObjectRetain_n();
    sub_1CEFE42D4(v16, v17);
    sub_1CEFE42D4(v16, v17);

    sub_1CEFE4714(v16, v17);
    v18 = sub_1CF9E6888();
    v19 = [v18 fp_obfuscatedExtendedAttributeName];

    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    result = MEMORY[0x1D3868CC0](31546, 0xE200000000000000);
    v23 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v23 == 2 && __OFSUB__(*(v16 + 24), *(v16 + 16)))
      {
        goto LABEL_36;
      }
    }

    else if (v23 && __OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_35;
    }

    v24 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v24);

    MEMORY[0x1D3868CC0](125, 0xE100000000000000);

    result = sub_1CEFE4714(v16, v17);
    v2 = v41;
    v26 = *(v41 + 16);
    v25 = *(v41 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1CEFE95CC((v25 > 1), v26 + 1, 1);
      v2 = v41;
    }

    *(v2 + 16) = v26 + 1;
    v27 = v2 + 16 * v26;
    *(v27 + 32) = v20;
    *(v27 + 40) = v22;
    v3 = v39;
    v10 = 1 << *(v39 + 32);
    if (v7 >= v10)
    {
      goto LABEL_32;
    }

    v4 = v38;
    v28 = *(v38 + 8 * v11);
    if ((v28 & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    v9 = v37;
    if (v37 != *(v39 + 36))
    {
      goto LABEL_34;
    }

    v29 = v28 & (-2 << (v7 & 0x3F));
    if (v29)
    {
      v10 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v11 << 6;
      v31 = v11 + 1;
      v32 = (v35 + 8 * v11);
      while (v31 < (v10 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1CF0663D8(v7, v37, 0);
          v10 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1CF0663D8(v7, v37, 0);
    }

LABEL_4:
    v8 = v40 + 1;
    v7 = v10;
    if (v40 + 1 == v36)
    {
      return v2;
    }
  }

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
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

BOOL sub_1CF677434(char *a1)
{
  v3 = sub_1CF9E7FC8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *v1;
  if (qword_1CFA0FB98[v17] != qword_1CFA0FB98[*a1])
  {
    return 0;
  }

  v30 = v14;
  v18 = type metadata accessor for ItemMetadata();
  v19 = *(v18 + 112);
  v20 = v1[v19];
  if (v20 != a1[v19])
  {
    return 0;
  }

  if (v17 == 1)
  {
    LOBYTE(v20) = 1;
  }

  if ((v20 & 1) == 0 && *&v1[*(v18 + 104)] != *&a1[*(v18 + 104)])
  {
    return 0;
  }

  v22 = v18;
  if ((fpfs_supports_parent_mtime_iopolicy() & 1) == 0 && v17 == 1)
  {
    return 1;
  }

  v29 = *(v22 + 32);
  v28 = *MEMORY[0x1E69E7020];
  v27 = v4[13];
  v27(v7);
  sub_1CF515680(v7);
  v23 = v4[1];
  v23(v7, v3);
  (v27)(v7, v28, v3);
  sub_1CF515680(v7);
  v23(v7, v3);
  v24 = sub_1CF9E5CD8();
  v25 = *(v9 + 8);
  v26 = v30;
  v25(v12, v30);
  v25(v16, v26);
  return v24 == 0;
}

uint64_t sub_1CF677700(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    do
    {
      v7 = v3 & -v3;
      if (v7 < 0x20000)
      {
        if (v7 <= 255)
        {
          if (v7 > 15)
          {
            if (v7 > 63)
            {
              if (v7 != 64)
              {
                if (v7 != 128)
                {
                  goto LABEL_100;
                }

                result = type metadata accessor for ItemMetadata();
                v23 = *(result + 128);
                goto LABEL_97;
              }

              v9 = *(type metadata accessor for ItemMetadata() + 124);
              goto LABEL_66;
            }

            if (v7 == 16)
            {
              result = type metadata accessor for ItemMetadata();
              *(v2 + *(result + 104)) = *(a2 + *(result + 104));
              *(v2 + *(result + 108)) = *(a2 + *(result + 108));
              *(v2 + *(result + 80)) = *(a2 + *(result + 80));
              *(v2 + *(result + 112)) = *(a2 + *(result + 112));
              v10 = *(result + 84);
              v11 = *(a2 + v10);
              goto LABEL_85;
            }

            if (v7 != 32)
            {
              goto LABEL_100;
            }

            v29 = type metadata accessor for ItemMetadata();
            result = sub_1CF67B700(a2 + *(v29 + 120), v2 + *(v29 + 120));
          }

          else
          {
            if (v7 > 3)
            {
              if (v7 == 4)
              {
                v17 = *(v2 + 10);
                if ((v17 & 0x38) != 0)
                {
                  v18 = 504;
                }

                else
                {
                  v18 = 448;
                }

                if ((v17 & 7) != 0)
                {
                  v19 = v18 | 7;
                }

                else
                {
                  v19 = v18;
                }

                *(v2 + 10) = v19 & *(a2 + 10);
                goto LABEL_5;
              }

              if (v7 != 8)
              {
                goto LABEL_100;
              }

              result = type metadata accessor for ItemMetadata();
              *(v2 + *(result + 104)) = *(a2 + *(result + 104));
              *(v2 + *(result + 108)) = *(a2 + *(result + 108));
              goto LABEL_94;
            }

            if (v7 == 1)
            {
              v8 = *(type metadata accessor for ItemMetadata() + 56);
LABEL_74:
              v25 = *(a2 + v8);
              v24 = *(a2 + v8 + 8);
              v26 = (v2 + v8);
              v27 = *(v2 + v8 + 8);

              *v26 = v25;
              v26[1] = v24;
              goto LABEL_5;
            }

            if (v7 != 2)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          if (v7 > 4095)
          {
            if (v7 < 0x4000)
            {
              if (v7 == 4096)
              {
                result = type metadata accessor for ItemMetadata();
                v5 = *(result + 40);
              }

              else
              {
                if (v7 != 0x2000)
                {
                  goto LABEL_100;
                }

                result = type metadata accessor for ItemMetadata();
                v5 = *(result + 52);
              }
            }

            else
            {
              switch(v7)
              {
                case 0x4000:
                  v22 = *(a2 + 8);
                  *(v2 + 4) = *(a2 + 4);
                  *(v2 + 8) = v22;
                  goto LABEL_5;
                case 0x8000:
                  result = type metadata accessor for ItemMetadata();
                  v5 = *(result + 144);
                  break;
                case 0x10000:
                  result = type metadata accessor for ItemMetadata();
                  v10 = *(result + 84);
                  if (*(a2 + *(result + 48)) == 1)
                  {
                    v11 = 5;
LABEL_85:
                    *(v2 + v10) = v11;
                    v5 = *(result + 92);
                  }

                  else
                  {
                    *(v2 + v10) = *(a2 + v10);
                    *(v2 + *(result + 76)) = *(a2 + *(result + 76));
                    v5 = *(result + 92);
                  }

                  break;
                default:
                  goto LABEL_100;
              }
            }

            goto LABEL_4;
          }

          if (v7 <= 1023)
          {
            if (v7 == 256)
            {
              v9 = *(type metadata accessor for ItemMetadata() + 132);
LABEL_66:
              v20 = *(a2 + v9);
              v21 = *(v2 + v9);

              *(v2 + v9) = v20;
              goto LABEL_5;
            }

            if (v7 != 512)
            {
              goto LABEL_100;
            }

            result = type metadata accessor for ItemMetadata();
            v5 = *(result + 36);
            goto LABEL_4;
          }

          if (v7 == 1024)
          {
            v16 = *(type metadata accessor for ItemMetadata() + 28);
          }

          else
          {
            if (v7 != 2048)
            {
              goto LABEL_100;
            }

            v16 = *(type metadata accessor for ItemMetadata() + 32);
          }

          v28 = sub_1CF9E5CF8();
          result = (*(*(v28 - 8) + 24))(v2 + v16, a2 + v16, v28);
        }
      }

      else if (v7 > 0x1FFFFFFFFFFFLL)
      {
        if (v7 > 0x3FFFFFFFFFFFFLL)
        {
          if (v7 <= 0x1FFFFFFFFFFFFFLL)
          {
            if (v7 == 0x4000000000000)
            {
              goto LABEL_5;
            }

            if (v7 != 0x10000000000000)
            {
              goto LABEL_100;
            }

            result = type metadata accessor for ItemMetadata();
            v5 = *(result + 72);
          }

          else
          {
            switch(v7)
            {
              case 0x20000000000000:
                result = type metadata accessor for ItemMetadata();
                v5 = *(result + 96);
                break;
              case 0x40000000000000:
                result = type metadata accessor for ItemMetadata();
                v5 = *(result + 100);
                break;
              case 0x100000000000000:
                result = type metadata accessor for ItemMetadata();
                v5 = *(result + 88);
                break;
              default:
                goto LABEL_100;
            }
          }

          goto LABEL_4;
        }

        if (v7 <= 0x7FFFFFFFFFFFLL)
        {
          if (v7 != 0x200000000000)
          {
            if (v7 != 0x400000000000)
            {
              goto LABEL_100;
            }

            result = type metadata accessor for ItemMetadata();
            v23 = *(result + 140);
LABEL_97:
            v30 = *(a2 + v23);
            v31 = *(a2 + v23 + 8);
            v32 = v2 + v23;
            *v32 = v30;
            *(v32 + 8) = v31;
            goto LABEL_5;
          }

          result = type metadata accessor for ItemMetadata();
LABEL_94:
          v5 = *(result + 112);
LABEL_4:
          *(v2 + v5) = *(a2 + v5);
          goto LABEL_5;
        }

        if (v7 != 0x800000000000)
        {
          if (v7 != 0x1000000000000)
          {
            goto LABEL_100;
          }

          v8 = *(type metadata accessor for ItemMetadata() + 152);
          goto LABEL_74;
        }

        result = type metadata accessor for ItemMetadata();
        v12 = *(result + 148);
        v13 = *(a2 + v12);
        v14 = *(a2 + v12 + 4);
        v15 = v2 + v12;
        *v15 = v13;
        *(v15 + 4) = v14;
      }

      else if (v7 <= 0x7FFFFFF)
      {
        if (v7 <= 0xFFFFFF)
        {
          if (v7 == 0x20000)
          {
            result = type metadata accessor for ItemMetadata();
            v5 = *(result + 44);
          }

          else
          {
            if (v7 != 0x800000)
            {
              goto LABEL_100;
            }

            result = type metadata accessor for ItemMetadata();
            v5 = *(result + 64);
          }

          goto LABEL_4;
        }

        if (v7 != 0x1000000 && v7 != 0x4000000)
        {
LABEL_100:
          result = sub_1CF9E7B68();
          __break(1u);
          return result;
        }
      }

      else
      {
        if (v7 > 0x1FFFFFFFFFFLL)
        {
          if (v7 == 0x20000000000 || v7 == 0x80000000000)
          {
            goto LABEL_5;
          }

          if (v7 != 0x100000000000)
          {
            goto LABEL_100;
          }

          result = type metadata accessor for ItemMetadata();
          v5 = *(result + 60);
          goto LABEL_4;
        }

        if (v7 != 0x8000000)
        {
          if (v7 != 0x10000000000)
          {
            goto LABEL_100;
          }

          *v2 = *a2;
        }
      }

LABEL_5:
      v6 = v3 == v7;
      v3 ^= v7;
    }

    while (!v6);
  }

  return result;
}

BOOL sub_1CF677CD0()
{
  v1 = type metadata accessor for ItemMetadata();
  if (*(v0 + *(v1 + 84)))
  {
    v2 = *(v0 + *(v1 + 84)) == 5;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void *sub_1CF677D00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = __ROR8__(*result, 32);
  *(a2 + 8) = 0;
  return result;
}

void sub_1CF677E50()
{
  sub_1CF24F8BC(319, &qword_1EDEAED00);
  if (v0 <= 0x3F)
  {
    sub_1CF9E5CF8();
    if (v1 <= 0x3F)
    {
      sub_1CF24F8BC(319, &qword_1EDEAEE08);
      if (v2 <= 0x3F)
      {
        sub_1CF24F8BC(319, &unk_1EDEAED90);
        if (v3 <= 0x3F)
        {
          sub_1CF24F8BC(319, qword_1EDEAEEE8);
          if (v4 <= 0x3F)
          {
            sub_1CF678178(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
            if (v5 <= 0x3F)
            {
              sub_1CF24F8BC(319, &qword_1EDEAEED8);
              if (v6 <= 0x3F)
              {
                sub_1CF24F8BC(319, &qword_1EDEAECF8);
                if (v7 <= 0x3F)
                {
                  sub_1CF678114();
                  if (v8 <= 0x3F)
                  {
                    sub_1CF24F8BC(319, &qword_1EDEAFE08);
                    if (v9 <= 0x3F)
                    {
                      sub_1CF678178(319, &unk_1EDEAED28, type metadata accessor for NSFileProviderTypeAndCreator);
                      if (v10 <= 0x3F)
                      {
                        sub_1CF24F8BC(319, &qword_1EDEAEDB8);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1CF678114()
{
  if (!qword_1EDEAEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAEDC0);
    }
  }
}

void sub_1CF678178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF6781CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v99 = a3;
  v97 = sub_1CF9E7FC8();
  v92 = *(v97 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v87 - v13;
  if (*(a2 + 8))
  {
    v14 = 0;
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = (*a2 >> 10) & 1;
    v14 = (*a2 >> 11) & 1;
  }

  v16 = qword_1CFA0FB98[*v4] != qword_1CFA0FB98[*a1];
  v17 = type metadata accessor for ItemMetadata();
  v18 = v17;
  if ((v4[v17[9]] ^ a1[v17[9]]))
  {
    v19 = ((v16 & 1) << 40) | 0x200;
  }

  else
  {
    v19 = v16 << 40;
  }

  v20 = v17[21];
  v21 = v4[v20];
  v22 = a1[v20];
  if (v21)
  {
    if (!v22 || ((v4[v17[12]] ^ a1[v17[12]]) & 1) != 0 || v21 != v22)
    {
LABEL_17:
      v19 |= 0x10000uLL;
    }
  }

  else if (v22)
  {
    if (a1[v17[12]] != 1 || v22 != 0)
    {
      goto LABEL_17;
    }
  }

  if (((*(a1 + 5) ^ *(v4 + 5)) & 0x1C0) != 0)
  {
    v19 |= 4uLL;
  }

  if ((v4[v17[10]] ^ a1[v17[10]]))
  {
    v19 |= 0x1000uLL;
  }

  if ((v4[v17[13]] ^ a1[v17[13]]))
  {
    v24 = v19 | 0x2000;
  }

  else
  {
    v24 = v19;
  }

  if ((v15 & 1) == 0)
  {
    v90 = v17[7];
    v89 = *MEMORY[0x1E69E7020];
    v91 = v14;
    v25 = v92;
    v88 = *(v92 + 104);
    v26 = v94;
    v27 = v97;
    v88(v94);
    sub_1CF515680(v26);
    v98 = v24;
    v28 = *(v25 + 8);
    v28(v26, v27);
    (v88)(v26, v89, v27);
    v14 = v93;
    sub_1CF515680(v26);
    v28(v26, v27);
    v29 = v96;
    v30 = v100;
    v31 = sub_1CF9E5CD8();
    v32 = *(v95 + 8);
    v33 = v14;
    LOBYTE(v14) = v91;
    v32(v33, v29);
    v32(v30, v29);
    v24 = v98;
    if (v31)
    {
      v24 = v98 | 0x400;
    }
  }

  if ((v14 & 1) == 0)
  {
    v98 = v24;
    if (fpfs_supports_parent_mtime_iopolicy())
    {
      goto LABEL_30;
    }

    if (*v4 == 1)
    {
      v24 = v98;
      goto LABEL_37;
    }

    if (v4[v18[28]] != 1)
    {
LABEL_30:
      v91 = v18[8];
      v34 = *MEMORY[0x1E69E7020];
      v35 = v92;
      v90 = *(v92 + 104);
      v36 = v94;
      v37 = v97;
      v90(v94, v34, v97);
      sub_1CF515680(v36);
      v38 = *(v35 + 8);
      v38(v36, v37);
      v90(v36, v34, v37);
      v39 = v93;
      sub_1CF515680(v36);
      v38(v36, v37);
      v40 = v100;
      v41 = sub_1CF9E5CD8();
      v42 = v96;
      v43 = *(v95 + 8);
      v43(v39, v96);
      v43(v40, v42);
      v24 = v98;
      if (v41)
      {
        v24 = v98 | 0x800;
      }
    }

    else
    {
      v24 = v98;
    }
  }

  if (*v4 != 1 && v4[v18[28]] != 1)
  {
    goto LABEL_44;
  }

LABEL_37:
  v44 = a1[8];
  if (v4[8])
  {
    if (a1[8])
    {
      goto LABEL_44;
    }

LABEL_43:
    v24 |= 0x4000uLL;
    goto LABEL_44;
  }

  if (*(v4 + 1) != *(a1 + 1))
  {
    v44 = 1;
  }

  if (v44)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (sub_1CF51586C(&a1[v18[30]]))
  {
    v45 = v24;
  }

  else
  {
    v45 = v24 | 0x20;
  }

  v46 = v18[31];
  v47 = *&a1[v46];
  if (!*&v4[v46])
  {
    if (!v47)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!v47 || (v48 = *&a1[v46], , v49 = , v50 = sub_1CF6BEA9C(v49, v47), , , (v50 & 1) == 0))
  {
LABEL_52:
    v45 |= 0x40uLL;
  }

LABEL_53:
  v51 = v18[32];
  v52 = &v4[v51];
  v53 = v4[v51 + 8];
  v54 = &a1[v51];
  v55 = a1[v51 + 8];
  if (v53)
  {
    if (v55)
    {
      goto LABEL_60;
    }

LABEL_59:
    v45 |= 0x80uLL;
    goto LABEL_60;
  }

  if (*v52 != *v54)
  {
    v55 = 1;
  }

  if (v55)
  {
    goto LABEL_59;
  }

LABEL_60:
  if ((v4[v18[11]] ^ a1[v18[11]]))
  {
    v56 = v45 | 0x20000;
  }

  else
  {
    v56 = v45;
  }

  if ((v4[v18[20]] ^ a1[v18[20]]))
  {
    v56 |= 0x10uLL;
  }

  if ((v4[v18[28]] ^ a1[v18[28]]))
  {
    v56 |= 0x200000000000uLL;
  }

  if ((v4[v18[15]] ^ a1[v18[15]]))
  {
    v56 |= 0x100000000000uLL;
  }

  if ((v4[v18[16]] ^ a1[v18[16]]))
  {
    v57 = v56 | 0x800000;
  }

  else
  {
    v57 = v56;
  }

  v58 = v18[33];
  v103 = *&v4[v58];
  if (v103)
  {

    sub_1CF1CE544(0xD000000000000015, 0x80000001CFA2DDF0, &v102);
    sub_1CEFE48D8(v102, *(&v102 + 1));
    v58 = v18[33];
  }

  v101 = *&a1[v58];
  if (v101)
  {

    sub_1CF1CE544(0xD000000000000015, 0x80000001CFA2DDF0, &v102);
    sub_1CEFE48D8(v102, *(&v102 + 1));
  }

  if (v103)
  {
    v59 = v103;
    v60 = v101;
    if (v101)
    {
LABEL_78:

      v61 = v60;
      goto LABEL_81;
    }
  }

  else
  {
    v59 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
    v60 = v101;
    if (v101)
    {
      goto LABEL_78;
    }
  }

  v61 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
LABEL_81:

  v62 = sub_1CF363560(v59, v61);

  if (v62)
  {
    v63 = v57;
  }

  else
  {
    v63 = v57 | 0x100;
  }

  v64 = v18[35];
  v65 = &v4[v64];
  v66 = v4[v64 + 8];
  v67 = &a1[v64];
  v68 = a1[v64 + 8];
  if (v66)
  {
    if (v68)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (*v65 != *v67)
  {
    v68 = 1;
  }

  if (v68)
  {
LABEL_90:
    v63 |= 0x400000000000uLL;
  }

LABEL_91:
  v69 = v18[37];
  v70 = &v4[v69];
  if ((v4[v69 + 4] & 1) == 0)
  {
    v71 = &a1[v69];
    if ((v71[4] & 1) == 0 && *v70 != *v71)
    {
      v63 |= 0x800000000000uLL;
    }
  }

  v72 = v18[38];
  v73 = &v4[v72];
  v74 = *&v4[v72 + 8];
  v75 = &a1[v72];
  v76 = *(v75 + 1);
  if (!v74)
  {
    if (!v76)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_1CF9E8048() & 1) == 0)
  {
LABEL_102:
    v63 |= 0x1000000000000uLL;
  }

LABEL_103:
  v77 = v63 | 0x10000000000000;
  v78 = v18[24];
  v79 = v4[v78];
  v80 = a1[v78];
  if (((v4[v18[18]] ^ a1[v18[18]]) & 1) == 0)
  {
    v77 = v63;
  }

  if ((v79 ^ v80))
  {
    v77 |= 0x20000000000000uLL;
  }

  if ((v4[v18[25]] ^ a1[v18[25]]))
  {
    v81 = v77 | 0x40000000000000;
  }

  else
  {
    v81 = v77;
  }

  v82 = v18[22];
  v83 = v4[v82];
  v84 = a1[v82];

  v86 = v81 | 0x100000000000000;
  if (v83 == v84)
  {
    v86 = v81;
  }

  *v99 = v86;
  return result;
}

unint64_t sub_1CF678A54(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x657449646C696863;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
    case 34:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x64656B636F4C7369;
      break;
    case 6:
      result = 0x6E65646469487369;
      break;
    case 7:
      result = 0x64656E6E69507369;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6F52636E79537369;
      break;
    case 12:
      result = 0x65726F6E67497369;
      break;
    case 13:
      result = 0x6F6E67496E497369;
      break;
    case 14:
      result = 0x6863617465447369;
      break;
    case 15:
      result = 0x53747365736F6C63;
      break;
    case 16:
      result = 0x656C617461447369;
      break;
    case 17:
    case 18:
      result = 0x6E6F697463697665;
      break;
    case 19:
      result = 0x636E656469736572;
      break;
    case 20:
      result = 0x6150636E79537369;
      break;
    case 21:
      result = 0xD000000000000022;
      break;
    case 22:
      result = 1702521203;
      break;
    case 23:
      result = 0x6C61636973796870;
      break;
    case 24:
      result = 0x67616B6361507369;
      break;
    case 25:
      result = 0x6C646E7542736168;
      break;
    case 26:
      result = 0x646573557473616CLL;
      break;
    case 27:
      result = 1936154996;
      break;
    case 28:
      result = 0x657469726F766166;
      break;
    case 29:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x69746E6172617571;
      break;
    case 31:
      result = 0x65707954736FLL;
      break;
    case 32:
      result = 0x7272757365527369;
      break;
    case 33:
      result = 0x6E756F436B6E696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF678E60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2130, &qword_1CFA0FA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF67A624();
  sub_1CF9E82A8();
  LOBYTE(v51) = *v3;
  v53 = 0;
  sub_1CF50D138();
  sub_1CF9E7F08();
  if (!v2)
  {
    v11 = *(v3 + 4);
    v12 = *(v3 + 8);
    LOBYTE(v51) = 1;
    v53 = v12;
    sub_1CF9E7E98();
    v14 = *(v3 + 10);
    LOBYTE(v51) = 2;
    sub_1CF9E7F48();
    v15 = type metadata accessor for ItemMetadata();
    v16 = v15[7];
    LOBYTE(v51) = 3;
    sub_1CF9E5CF8();
    sub_1CF67B770(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
    sub_1CF9E7F08();
    v17 = v15[8];
    LOBYTE(v51) = 4;
    sub_1CF9E7F08();
    v18 = *(v3 + v15[9]);
    LOBYTE(v51) = 5;
    sub_1CF9E7EC8();
    v19 = *(v3 + v15[10]);
    LOBYTE(v51) = 6;
    sub_1CF9E7EC8();
    v20 = *(v3 + v15[11]);
    LOBYTE(v51) = 7;
    sub_1CF9E7EC8();
    v21 = *(v3 + v15[12]);
    LOBYTE(v51) = 8;
    sub_1CF9E7EC8();
    v22 = *(v3 + v15[13]);
    LOBYTE(v51) = 9;
    sub_1CF9E7EC8();
    v23 = (v3 + v15[14]);
    v24 = v23[1];
    v51 = *v23;
    v52 = v24;
    v53 = 10;
    sub_1CF1E60E8();

    sub_1CF9E7E68();

    v25 = *(v3 + v15[15]);
    LOBYTE(v51) = 11;
    sub_1CF9E7EC8();
    v26 = *(v3 + v15[16]);
    LOBYTE(v51) = 12;
    sub_1CF9E7EC8();
    v27 = *(v3 + v15[17]);
    LOBYTE(v51) = 13;
    sub_1CF9E7E48();
    v28 = *(v3 + v15[18]);
    LOBYTE(v51) = 14;
    sub_1CF9E7EC8();
    v29 = *(v3 + v15[19]);
    LOBYTE(v51) = 15;
    sub_1CF9E7F68();
    v30 = *(v3 + v15[20]);
    LOBYTE(v51) = 16;
    sub_1CF9E7EC8();
    LOBYTE(v51) = *(v3 + v15[21]);
    v53 = 17;
    sub_1CF67B604();
    sub_1CF9E7F08();
    LOBYTE(v51) = *(v3 + v15[22]);
    v53 = 18;
    sub_1CF67B658();
    sub_1CF9E7F08();
    LOBYTE(v51) = *(v3 + v15[23]);
    v53 = 19;
    sub_1CF67B6AC();
    sub_1CF9E7E68();
    v31 = *(v3 + v15[24]);
    LOBYTE(v51) = 20;
    sub_1CF9E7EC8();
    v32 = *(v3 + v15[25]);
    LOBYTE(v51) = 21;
    sub_1CF9E7EC8();
    v33 = *(v3 + v15[26]);
    LOBYTE(v51) = 22;
    sub_1CF9E7F28();
    v34 = *(v3 + v15[27]);
    LOBYTE(v51) = 23;
    sub_1CF9E7F28();
    v35 = *(v3 + v15[28]);
    LOBYTE(v51) = 24;
    sub_1CF9E7EC8();
    v36 = *(v3 + v15[29]);
    LOBYTE(v51) = 25;
    sub_1CF9E7EC8();
    v37 = v15[30];
    LOBYTE(v51) = 26;
    sub_1CF9E7E68();
    v51 = *(v3 + v15[31]);
    v53 = 27;
    sub_1CF1E0CB8();
    sub_1CF9E7E68();
    v38 = (v3 + v15[32]);
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v51) = 28;
    sub_1CF9E7EA8();
    v51 = *(v3 + v15[33]);
    v53 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    sub_1CF1E0EC0(&qword_1EDEA3840, sub_1CF190A74);
    sub_1CF9E7E68();
    v41 = (v3 + v15[34]);
    v42 = v41[1];
    v51 = *v41;
    v52 = v42;
    v53 = 30;
    sub_1CEFF05F4(v51, v42);
    sub_1CF190A74();
    sub_1CF9E7E68();
    sub_1CEFE48D8(v51, v52);
    v43 = v3 + v15[35];
    v44 = *v43;
    LOBYTE(v43) = *(v43 + 8);
    v51 = v44;
    LOBYTE(v52) = v43;
    v53 = 31;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    sub_1CF67B770(&qword_1EC4C2150, type metadata accessor for NSFileProviderTypeAndCreator);
    sub_1CF9E7E68();
    v45 = *(v3 + v15[36]);
    LOBYTE(v51) = 32;
    sub_1CF9E7EC8();
    v46 = (v3 + v15[37]);
    v47 = *v46;
    LOBYTE(v46) = *(v46 + 4);
    LOBYTE(v51) = 33;
    v53 = v46;
    sub_1CF9E7E98();
    v48 = (v3 + v15[38]);
    v49 = *v48;
    v50 = v48[1];
    LOBYTE(v51) = 34;
    sub_1CF9E7E38();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF679778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = v61 - v5;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2100, &qword_1CFA0FA68);
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v61 - v15;
  v17 = type metadata accessor for ItemMetadata();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &v21[v22[14]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v76 = v23;
  v24 = v22[23];
  v21[v24] = 6;
  v25 = v7;
  v26 = *(v7 + 56);
  v73 = v22[30];
  v26(&v21[v73], 1, 1, v6, v19);
  v27 = *(v17 + 136);
  v77 = v21;
  v74 = &v21[v27];
  v75 = a1;
  *v74 = xmmword_1CF9F4E20;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF67A624();
  v71 = v16;
  v29 = v72;
  sub_1CF9E8298();
  if (v29)
  {
    v32 = v77;
    __swift_destroy_boxed_opaque_existential_1(v75);
    v33 = *(v76 + 1);

    sub_1CEFCCC44(&v32[v73], &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    return sub_1CEFE48D8(*v74, *(v74 + 1));
  }

  else
  {
    v30 = v12;
    v31 = v68;
    v63 = v24;
    v64 = v25;
    v65 = v17;
    v72 = v6;
    v80 = 0;
    sub_1CF50D0E4();
    sub_1CF9E7D88();
    v34 = v77;
    *v77 = v78;
    LOBYTE(v78) = 1;
    v35 = sub_1CF9E7D28();
    *(v34 + 1) = v35;
    v34[8] = BYTE4(v35) & 1;
    LOBYTE(v78) = 2;
    *(v34 + 5) = sub_1CF9E7DC8();
    LOBYTE(v78) = 3;
    v36 = sub_1CF67B770(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    v37 = v72;
    sub_1CF9E7D88();
    v38 = &v34[v65[7]];
    v62 = *(v64 + 32);
    v62(v38, v30, v37);
    LOBYTE(v78) = 4;
    v39 = v31;
    sub_1CF9E7D88();
    v61[1] = v36;
    v40 = v65;
    v62(&v34[v65[8]], v39, v37);
    LOBYTE(v78) = 5;
    v68 = 0;
    v34[v40[9]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 6;
    v34[v40[10]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 7;
    v34[v40[11]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 8;
    v77[v40[12]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 9;
    v77[v65[13]] = sub_1CF9E7D58() & 1;
    v80 = 10;
    sub_1CF1E613C();
    sub_1CF9E7CF8();
    v41 = v78;
    v42 = v79;
    v43 = v76;
    v44 = *(v76 + 1);

    *v43 = v41;
    *(v43 + 1) = v42;
    LOBYTE(v78) = 11;
    v77[v65[15]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 12;
    v77[v65[16]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 13;
    v77[v65[17]] = sub_1CF9E7CC8();
    LOBYTE(v78) = 14;
    v77[v65[18]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 15;
    *&v77[v65[19]] = sub_1CF9E7DE8();
    LOBYTE(v78) = 16;
    v77[v65[20]] = sub_1CF9E7D58() & 1;
    v80 = 17;
    sub_1CF67A678();
    sub_1CF9E7D88();
    v77[v65[21]] = v78;
    v80 = 18;
    sub_1CF67A6CC();
    sub_1CF9E7D88();
    v77[v65[22]] = v78;
    v80 = 19;
    sub_1CF67A720();
    sub_1CF9E7CF8();
    v77[v63] = v78;
    LOBYTE(v78) = 20;
    v77[v65[24]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 21;
    v77[v65[25]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 22;
    *&v77[v65[26]] = sub_1CF9E7DA8();
    LOBYTE(v78) = 23;
    *&v77[v65[27]] = sub_1CF9E7DA8();
    LOBYTE(v78) = 24;
    v77[v65[28]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 25;
    v77[v65[29]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 26;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v66, &v77[v73]);
    v80 = 27;
    sub_1CF1E0BB0();
    sub_1CF9E7CF8();
    *&v77[v65[31]] = v78;
    LOBYTE(v78) = 28;
    v45 = sub_1CF9E7D38();
    v46 = &v77[v65[32]];
    *v46 = v45;
    v46[8] = v47 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v80 = 29;
    sub_1CF1E0EC0(&qword_1EDEAB688, sub_1CF190888);
    sub_1CF9E7CF8();
    *&v77[v65[33]] = v78;
    v80 = 30;
    sub_1CF190888();
    sub_1CF9E7CF8();
    v48 = v78;
    v49 = v79;
    v50 = v74;
    sub_1CEFE48D8(*v74, *(v74 + 1));
    *v50 = v48;
    *(v50 + 1) = v49;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    v80 = 31;
    sub_1CF67B770(&qword_1EC4C2128, type metadata accessor for NSFileProviderTypeAndCreator);
    sub_1CF9E7CF8();
    v51 = &v77[v65[35]];
    v52 = v79;
    *v51 = v78;
    v51[8] = v52;
    LOBYTE(v78) = 32;
    v77[v65[36]] = sub_1CF9E7D58() & 1;
    LOBYTE(v78) = 33;
    v53 = sub_1CF9E7D28();
    v54 = &v77[v65[37]];
    *v54 = v53;
    v54[4] = BYTE4(v53) & 1;
    LOBYTE(v78) = 34;
    v55 = sub_1CF9E7CB8();
    v57 = v56;
    v58 = v77;
    v59 = &v77[v65[38]];
    (*(v69 + 8))(v71, v70);
    *v59 = v55;
    v59[1] = v57;
    sub_1CEFF4408(v58, v67);
    __swift_destroy_boxed_opaque_existential_1(v75);
    return sub_1CF06DA00(v58);
  }
}

uint64_t sub_1CF67A540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF67BA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF67A574(uint64_t a1)
{
  v2 = sub_1CF67A624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF67A5B0(uint64_t a1)
{
  v2 = sub_1CF67A624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF67A624()
{
  result = qword_1EC4C2108;
  if (!qword_1EC4C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2108);
  }

  return result;
}

unint64_t sub_1CF67A678()
{
  result = qword_1EC4C2110;
  if (!qword_1EC4C2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2110);
  }

  return result;
}

unint64_t sub_1CF67A6CC()
{
  result = qword_1EC4C2118;
  if (!qword_1EC4C2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2118);
  }

  return result;
}

unint64_t sub_1CF67A720()
{
  result = qword_1EC4C2120;
  if (!qword_1EC4C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2120);
  }

  return result;
}

uint64_t sub_1CF67A774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF67A7E4(char *a1, char *a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v92 - v16;
  if (qword_1CFA0FB98[*a1] != qword_1CFA0FB98[*a2])
  {
    return 0;
  }

  v18 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (*(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v19 = v15;
  v20 = type metadata accessor for ItemMetadata();
  v21 = v20[7];
  if ((sub_1CF9E5CA8() & 1) == 0)
  {
    return 0;
  }

  v22 = v20[8];
  if ((sub_1CF9E5CA8() & 1) == 0 || a1[v20[9]] != a2[v20[9]] || a1[v20[10]] != a2[v20[10]] || a1[v20[11]] != a2[v20[11]] || a1[v20[12]] != a2[v20[12]] || a1[v20[13]] != a2[v20[13]])
  {
    return 0;
  }

  v24 = v20[14];
  v25 = &a1[v24];
  v26 = *&a1[v24 + 8];
  v27 = &a2[v24];
  v28 = v27[1];
  v97 = v26;
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25;
    v95 = *v27;
    v96 = v29;

    v30 = sub_1CEFE7394(v96, v97);
    v94 = v28;
    if (v31)
    {
      if (v30 == 12565487 && v31 == 0xA300000000000000)
      {

LABEL_27:
        v32 = v97;
        v33 = sub_1CF9E69E8();
        v34 = sub_1CF025150(v33, v96, v32);
        v96 = MEMORY[0x1D3868C10](v34);
        v93 = v35;
        v28 = v94;

        goto LABEL_29;
      }

      LODWORD(v93) = sub_1CF9E8048();
      v28 = v94;

      if (v93)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v36 = sub_1CEFE7394(v95, v28);
    if (v37)
    {
      if (v36 == 12565487 && v37 == 0xA300000000000000)
      {

LABEL_34:
        v38 = sub_1CF9E69E8();
        v39 = sub_1CF025150(v38, v95, v28);
        v92 = v40;
        v41 = MEMORY[0x1D3868C10](v39);
        v95 = v42;

        v43 = v95;
LABEL_36:
        v95 = v43;
        if (v96 == v41 && v93 == v43)
        {
        }

        else
        {
          LODWORD(v96) = sub_1CF9E8048();

          if ((v96 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_40;
      }

      LODWORD(v92) = sub_1CF9E8048();
      v28 = v94;

      if (v92)
      {
        goto LABEL_34;
      }
    }

    v43 = v28;
    v41 = v95;
    goto LABEL_36;
  }

  if (v28)
  {
    return 0;
  }

LABEL_40:
  if (a1[v20[15]] != a2[v20[15]] || a1[v20[16]] != a2[v20[16]])
  {
    return 0;
  }

  v44 = v20[17];
  v45 = a1[v44];
  v46 = a2[v44];
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }

LABEL_47:
    if (a1[v20[18]] != a2[v20[18]] || *&a1[v20[19]] != *&a2[v20[19]] || a1[v20[20]] != a2[v20[20]] || a1[v20[21]] != a2[v20[21]] || a1[v20[22]] != a2[v20[22]])
    {
      return 0;
    }

    v47 = v20[23];
    v48 = a1[v47];
    v49 = a2[v47];
    if (v48 == 6)
    {
      if (v49 != 6)
      {
        return 0;
      }
    }

    else if (v48 != v49)
    {
      return 0;
    }

    if (a1[v20[24]] != a2[v20[24]] || a1[v20[25]] != a2[v20[25]] || *&a1[v20[26]] != *&a2[v20[26]] || *&a1[v20[27]] != *&a2[v20[27]] || a1[v20[28]] != a2[v20[28]] || a1[v20[29]] != a2[v20[29]])
    {
      return 0;
    }

    v50 = v20[30];
    v51 = *(v19 + 48);
    sub_1CEFCCBDC(&a1[v50], v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v97 = v51;
    sub_1CEFCCBDC(&a2[v50], &v17[v51], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v52 = *(v5 + 48);
    if (v52(v17, 1, v4) == 1)
    {
      if (v52(&v17[v97], 1, v4) == 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        goto LABEL_69;
      }
    }

    else
    {
      sub_1CEFCCBDC(v17, v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if (v52(&v17[v97], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v17[v97], v4);
        sub_1CF67B770(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
        v53 = sub_1CF9E6868();
        v54 = *(v5 + 8);
        v54(v8, v4);
        v54(v12, v4);
        sub_1CEFCCC44(v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((v53 & 1) == 0)
        {
          return 0;
        }

LABEL_69:
        v55 = v20[31];
        v56 = *&a1[v55];
        v57 = *&a2[v55];
        if (v56)
        {
          if (!v57)
          {
            return 0;
          }

          v58 = *&a2[v55];

          v59 = sub_1CF6BEA9C(v56, v57);

          if ((v59 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v57)
        {
          return 0;
        }

        v60 = v20[32];
        v61 = &a1[v60];
        v62 = a1[v60 + 8];
        v63 = &a2[v60];
        v64 = a2[v60 + 8];
        if (v62)
        {
          if (!v64)
          {
            return 0;
          }
        }

        else
        {
          if (*v61 != *v63)
          {
            LOBYTE(v64) = 1;
          }

          if (v64)
          {
            return 0;
          }
        }

        v65 = v20[33];
        v66 = *&a1[v65];
        v67 = *&a2[v65];
        if (v66)
        {
          if (!v67)
          {
            return 0;
          }

          v68 = *&a2[v65];

          v69 = sub_1CF363560(v66, v67);

          if (!v69)
          {
            return 0;
          }
        }

        else if (v67)
        {
          return 0;
        }

        v70 = v20[34];
        v72 = *&a1[v70];
        v71 = *&a1[v70 + 8];
        v73 = &a2[v70];
        v75 = *v73;
        v74 = v73[1];
        if (v71 >> 60 == 15)
        {
          if (v74 >> 60 == 15)
          {
            sub_1CEFF05F4(v72, v71);
            sub_1CEFF05F4(v75, v74);
            sub_1CEFE48D8(v72, v71);
LABEL_91:
            v77 = v20[35];
            v78 = &a1[v77];
            v79 = a1[v77 + 8];
            v80 = &a2[v77];
            v81 = a2[v77 + 8];
            if (v79)
            {
              if (!v81)
              {
                return 0;
              }
            }

            else
            {
              if (*v78 != *v80)
              {
                LOBYTE(v81) = 1;
              }

              if (v81)
              {
                return 0;
              }
            }

            if (a1[v20[36]] == a2[v20[36]])
            {
              v82 = v20[37];
              v83 = &a1[v82];
              v84 = a1[v82 + 4];
              v85 = &a2[v82];
              v86 = a2[v82 + 4];
              if (v84)
              {
                if (!v86)
                {
                  return 0;
                }
              }

              else
              {
                if (*v83 != *v85)
                {
                  LOBYTE(v86) = 1;
                }

                if (v86)
                {
                  return 0;
                }
              }

              v87 = v20[38];
              v88 = &a1[v87];
              v89 = *&a1[v87 + 8];
              v90 = &a2[v87];
              v91 = *(v90 + 1);
              if (v89)
              {
                return v91 && (*v88 == *v90 && v89 == v91 || (sub_1CF9E8048() & 1) != 0);
              }

              if (!v91)
              {
                return 1;
              }
            }

            return 0;
          }
        }

        else if (v74 >> 60 != 15)
        {
          sub_1CEFF05F4(v72, v71);
          sub_1CEFF05F4(v75, v74);
          v76 = sub_1CF328660(v72, v71, v75, v74);
          sub_1CEFE48D8(v75, v74);
          sub_1CEFE48D8(v72, v71);
          if ((v76 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_91;
        }

        sub_1CEFF05F4(v72, v71);
        sub_1CEFF05F4(v75, v74);
        sub_1CEFE48D8(v72, v71);
        sub_1CEFE48D8(v75, v74);
        return 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1CEFCCC44(v17, &qword_1EC4C4CE0, &qword_1CFA0FA70);
    return 0;
  }

  result = 0;
  if (v46 != 2 && ((v46 ^ v45) & 1) == 0)
  {
    goto LABEL_47;
  }

  return result;
}

unint64_t sub_1CF67B204(unint64_t result)
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

uint64_t sub_1CF67B224(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF67B2DC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1CF9E5AD8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1CF9E5498();
  if (v3)
  {
    result = sub_1CF9E54C8();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1CF9E54B8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1CF67B224(v3, v7);

  return v8;
}

uint64_t sub_1CF67B3C0(unsigned int a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6938();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1CF9E5A98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = bswap32(a1);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969010], v4);
  sub_1CF9E5A88();
  v9 = sub_1CF9E54F8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_1CF9E5478();
  v13 = sub_1CF9E54E8();
  *v14 |= 0x8000000000000000;
  v13(v22, 0);
  v15 = sub_1CF67B2DC(v12, 4);
  v17 = v16;

  (*(v5 + 8))(v8, v4);
  sub_1CF9E6908();
  v18 = sub_1CF9E68D8();
  sub_1CEFE4714(v15, v17);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

unint64_t sub_1CF67B604()
{
  result = qword_1EC4C2138;
  if (!qword_1EC4C2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2138);
  }

  return result;
}

unint64_t sub_1CF67B658()
{
  result = qword_1EC4C2140;
  if (!qword_1EC4C2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2140);
  }

  return result;
}

unint64_t sub_1CF67B6AC()
{
  result = qword_1EC4C2148;
  if (!qword_1EC4C2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2148);
  }

  return result;
}

uint64_t sub_1CF67B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF67B770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ItemMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF67B90C()
{
  result = qword_1EC4C2160;
  if (!qword_1EC4C2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2160);
  }

  return result;
}

unint64_t sub_1CF67B964()
{
  result = qword_1EC4C2168;
  if (!qword_1EC4C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2168);
  }

  return result;
}

unint64_t sub_1CF67B9BC()
{
  result = qword_1EC4C2170;
  if (!qword_1EC4C2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2170);
  }

  return result;
}

uint64_t sub_1CF67BA10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657449646C696863 && a2 == 0xEE00746E756F436DLL || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA56230 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA3C820 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA56250 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA56270 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA56290 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F52636E79537369 && a2 == 0xEA0000000000746FLL || (sub_1CF9E8048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65726F6E67497369 && a2 == 0xEC000000746F6F52 || (sub_1CF9E8048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F6E67496E497369 && a2 == 0xEE00746F6F526572 || (sub_1CF9E8048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6863617465447369 && a2 == 0xEE00746F6F526465 || (sub_1CF9E8048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x53747365736F6C63 && a2 == 0xEF746F6F52636E79 || (sub_1CF9E8048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C617461447369 && a2 == 0xEA00000000007373 || (sub_1CF9E8048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E6F697463697665 && a2 == 0xEF79636E65677255 || (sub_1CF9E8048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E6F697463697665 && a2 == 0xEE006E6F73616552 || (sub_1CF9E8048() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x636E656469736572 && a2 == 0xEF6E6F7361655279 || (sub_1CF9E8048() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6150636E79537369 && a2 == 0xEC00000064657375 || (sub_1CF9E8048() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001CFA562B0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xEC000000657A6953 || (sub_1CF9E8048() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x67616B6361507369 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6C646E7542736168 && a2 == 0xEC00000074694265 || (sub_1CF9E8048() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_1CF9E8048() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xEC0000006B6E6152 || (sub_1CF9E8048() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFA507D0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x69746E6172617571 && a2 == 0xEE00626F6C42656ELL || (sub_1CF9E8048() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x65707954736FLL && a2 == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x7272757365527369 && a2 == 0xED00006465746365 || (sub_1CF9E8048() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6E756F436B6E696CLL && a2 == 0xE900000000000074 || (sub_1CF9E8048() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA562E0 == a2)
  {

    return 34;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 34;
    }

    else
    {
      return 35;
    }
  }
}

unint64_t sub_1CF67C580()
{
  result = qword_1EC4C2178;
  if (!qword_1EC4C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2178);
  }

  return result;
}

unint64_t sub_1CF67C5D8()
{
  result = qword_1EC4C2180;
  if (!qword_1EC4C2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2180);
  }

  return result;
}

unint64_t sub_1CF67C630()
{
  result = qword_1EC4C2188;
  if (!qword_1EC4C2188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2190, &qword_1CFA0FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2188);
  }

  return result;
}

unint64_t sub_1CF67C698()
{
  result = qword_1EC4C2198;
  if (!qword_1EC4C2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2198);
  }

  return result;
}

unint64_t sub_1CF67C6F0()
{
  result = qword_1EC4C21A0;
  if (!qword_1EC4C21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21A0);
  }

  return result;
}

unint64_t sub_1CF67C744(uint64_t a1)
{
  *(a1 + 8) = sub_1CF67C774();
  result = sub_1CF67C7C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF67C774()
{
  result = qword_1EC4C21A8;
  if (!qword_1EC4C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21A8);
  }

  return result;
}

unint64_t sub_1CF67C7C8()
{
  result = qword_1EC4C21B0;
  if (!qword_1EC4C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21B0);
  }

  return result;
}

uint64_t sub_1CF67C81C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for SnapshotItem();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1CF67C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_1CF67C9B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1CF67C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FileItemVersion();
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t sub_1CF67CAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[13];
  v5 = v3[11];
  v37 = v3[12];
  v38 = v4;
  v6 = v3[13];
  v39 = v3[14];
  v7 = v3[9];
  v9 = v3[7];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v10 = v3[9];
  v11 = v3[11];
  v35 = v3[10];
  v12 = v35;
  v36 = v11;
  v13 = v3[5];
  v15 = v3[3];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v16 = v3[5];
  v17 = v3[7];
  v31 = v3[6];
  v18 = v31;
  v32 = v17;
  v19 = v3[1];
  v26[0] = *v3;
  v26[1] = v19;
  v20 = v3[3];
  v22 = *v3;
  v21 = v3[1];
  v27 = v3[2];
  v23 = v27;
  v28 = v20;
  *(a2 + 192) = v37;
  *(a2 + 208) = v6;
  *(a2 + 224) = v3[14];
  *(a2 + 128) = v8;
  *(a2 + 144) = v10;
  *(a2 + 160) = v12;
  *(a2 + 176) = v5;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = v18;
  *(a2 + 112) = v9;
  *a2 = v22;
  *(a2 + 16) = v21;
  v40 = *(v3 + 30);
  *(a2 + 240) = *(v3 + 30);
  *(a2 + 32) = v23;
  *(a2 + 48) = v15;
  return sub_1CF67CE84(v26, v25);
}

uint64_t sub_1CF67CBC0(uint64_t a1)
{
  v2 = v1 + *(a1 + 68);
  v3 = *v2;
  sub_1CF658C88(*v2, *(v2 + 8));
  return v3;
}

void sub_1CF67CBFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemVersion();
    if (v4 <= 0x3F)
    {
      type metadata accessor for ItemMetadata();
      if (v5 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEAEEE0);
        if (v6 <= 0x3F)
        {
          sub_1CF24F8BC(319, &qword_1EDEAC210);
          if (v7 <= 0x3F)
          {
            sub_1CF24F8BC(319, &qword_1EDEAC218);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CF67CDF4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1CF67CE10(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1CF67CE2C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1CF67CE48(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF67CE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BECF0, &unk_1CF9FEEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FileProviderDaemon::ResidencyReason_optional __swiftcall ResidencyReason.init(onDiskValue:)(FileProviderDaemon::ResidencyReason_optional onDiskValue)
{
  if (onDiskValue.value <= FileProviderDaemon_ResidencyReason_unknownDefault)
  {
    v2 = 0x5040302010006uLL >> (8 * onDiskValue.value);
  }

  else
  {
    v2 = 6;
  }

  *v1 = v2;
  return onDiskValue;
}

unint64_t ResidencyReason.description.getter()
{
  v1 = *v0;
  v2 = 0x73746E65636572;
  v3 = 0x4C64657461657263;
  if (v1 != 4)
  {
    v3 = 0x7571655272657375;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1CF67D0BC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF67D134()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  return sub_1CF9E8228();
}

unint64_t sub_1CF67D194()
{
  result = qword_1EC4C21C0;
  if (!qword_1EC4C21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21C0);
  }

  return result;
}

unint64_t sub_1CF67D1E8()
{
  v1 = *v0;
  v2 = 0x73746E65636572;
  v3 = 0x4C64657461657263;
  if (v1 != 4)
  {
    v3 = 0x7571655272657375;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_1CF67D370()
{
  result = qword_1EC4C21C8;
  if (!qword_1EC4C21C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C21D0, &qword_1CFA10050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21C8);
  }

  return result;
}

unint64_t sub_1CF67D404()
{
  result = qword_1EC4C21D8[0];
  if (!qword_1EC4C21D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4C21D8);
  }

  return result;
}

uint64_t sub_1CF67D510@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF67D63C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v6 = *(v3 + 104);
  v7 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_1CF67D8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v6 = *(v3 + 104);
  v7 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ThrottlingKey();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_1CF67DA84()
{
  sub_1CF04ADA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF67DAB8(uint64_t a1)
{
  v1 = *(a1 + 560);
  v2 = *(a1 + 544);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = sub_1CF052464(a1, a2, a3, a4);
  v13 = *(v5 + 560);
  v14 = *(v5 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_1CF67DC24()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(v0 + v1, AssociatedTypeWitness);
}

uint64_t sub_1CF67DCD4()
{
  sub_1CF059B48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF67DD2C()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v1, 162);
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 4;
  sub_1CF03D7A8(v2, v3, v1);
  return v0;
}

Swift::Bool __swiftcall NSFileProviderContentPolicy.policyRequiersEvictabilityReevaluation(isDir:)(Swift::Bool isDir)
{
  v2 = 1;
  if (v1 > 999)
  {
    if ((v1 - 1000) < 2)
    {
      return isDir;
    }

    if (v1 != 1002)
    {
      return v1 == 1003 && isDir;
    }

    return v2;
  }

  if (v1 == 3)
  {
    return v2;
  }

  v2 = isDir;
  if (v1 == 500)
  {
    return v2;
  }

  if (v1 == 501)
  {
    return (fpfs_supports_indexAllRemoteItems() ^ 1) & 1;
  }

  return v1 == 1003 && isDir;
}

Swift::Bool __swiftcall NSFileProviderContentPolicy.policyIsMustDownloadOne(isDir:speculativeFulfilled:)(Swift::Bool isDir, Swift::Bool speculativeFulfilled)
{
  v3 = 1;
  if (v2 > 999)
  {
    if ((v2 - 1000) < 2)
    {
      return isDir;
    }

    if (v2 != 1002)
    {
      return v2 == 1003 && isDir;
    }

    return v3;
  }

  if (v2 == 3)
  {
    return v3;
  }

  v3 = isDir;
  if (v2 == 500)
  {
    return v3;
  }

  if (v2 != 501)
  {
    return v2 == 1003 && isDir;
  }

  v6 = fpfs_supports_indexAllRemoteItems();
  v7 = !speculativeFulfilled && !isDir;
  if (v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1CF67DF08(unsigned __int8 a1, uint64_t a2)
{
  if (a2 != 3 && a2 != 1002 && a2 != 500 || (a1 | 2) == 3)
  {
    return a2;
  }

  if (qword_1EDEAB628 != -1)
  {
    v5 = a1;
    v4 = a2;
    swift_once();
    a1 = v5;
    a2 = v4;
  }

  v3 = 1;
  if (a1 != 2)
  {
    v3 = 2;
  }

  if ((dword_1EDEBBA40 - 1) <= 1)
  {
    return v3;
  }

  return a2;
}

uint64_t sub_1CF67DFC4(unsigned __int8 a1)
{
  v1 = a1;
  if (qword_1EDEAB628 != -1)
  {
    swift_once();
  }

  v2 = 1;
  if ((v1 - 1) >= 3)
  {
    v2 = 2;
  }

  v3 = 1;
  if ((v1 & 0xFE) != 2)
  {
    v3 = 2;
  }

  if (dword_1EDEBBA40 == 3 || dword_1EDEBBA40 == 9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if ((dword_1EDEBBA40 - 1) >= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF67E058(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  if (a1 != 500)
  {
    if (a1 != 501)
    {
      return a1;
    }

    return a2;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 1002;
    }

    if (a2 == 502)
    {
      return 1003;
    }
  }

  else
  {
    if (a2 == 1)
    {
      return 1000;
    }

    if (a2 == 2)
    {
      return 1001;
    }
  }

  if (a2 == 1003)
  {
    return 1003;
  }

  else
  {
    return 500;
  }
}

uint64_t sub_1CF67E0DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v9 = type metadata accessor for ItemState();
  v10 = (a5 + *(v9 + 36));
  *v10 = v7;
  v10[1] = v8;
  v11 = a5 + *(v9 + 40);

  return sub_1CEFE4874(a3, v11);
}

uint64_t sub_1CF67E18C(uint64_t a1)
{
  v2 = v1;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](3829820, 0xE300000000000000);
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v6 = (v1 + *(a1 + 36));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_1CF9E6888();
  v10 = [v9 fp_obfuscatedFilename];

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
  v14 = v2 + *(a1 + 40);
  v15 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF67E2C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a2 + 8);
  v9 = *(a3 + 40);
  v10 = v4 + v9;
  v11 = a1 + v9;
  v63 = *a2;
  v64 = v8;
  sub_1CF6781CC((a1 + v9), &v63, &v65);
  v12 = *(*(*(a3 + 24) + 40) + 8);
  v13 = *(a3 + 16);
  if ((sub_1CF9E6868() & 1) == 0)
  {
    v65 |= 2uLL;
  }

  v14 = *(a3 + 36);
  v15 = (v5 + v14);
  v17 = *(v5 + v14);
  v16 = v15[1];
  v18 = (a1 + v14);
  v20 = *(a1 + v14);
  v19 = *(a1 + v14 + 8);
  v21 = sub_1CEFE7394(v17, v16);
  if (!v22)
  {
    goto LABEL_9;
  }

  if (v21 == 12565487 && v22 == 0xA300000000000000)
  {
  }

  else
  {
    v24 = sub_1CF9E8048();

    if ((v24 & 1) == 0)
    {
LABEL_9:

      goto LABEL_12;
    }
  }

  v25 = sub_1CF9E69E8();
  v26 = sub_1CF025150(v25, v17, v16);
  v17 = MEMORY[0x1D3868C10](v26);
  v16 = v27;

LABEL_12:
  v28 = sub_1CEFE7394(v20, v19);
  if (!v29)
  {
LABEL_18:

    goto LABEL_21;
  }

  if (v28 == 12565487 && v29 == 0xA300000000000000)
  {
  }

  else
  {
    v31 = sub_1CF9E8048();

    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v32 = sub_1CF9E69E8();
  v33 = sub_1CF025150(v32, v20, v19);
  v20 = MEMORY[0x1D3868C10](v33);
  v19 = v34;

LABEL_21:
  if (v17 == v20 && v16 == v19)
  {
  }

  else
  {
    v36 = sub_1CF9E8048();

    if ((v36 & 1) == 0)
    {
      v65 |= 1uLL;
    }
  }

  v37 = *(type metadata accessor for ItemMetadata() + 56);
  v38 = *(v10 + v37 + 8);
  if (v38)
  {
    v39 = *(v10 + v37);
    v40 = v38;
  }

  else
  {
    v39 = *v15;
    v40 = v15[1];
  }

  v41 = *(v11 + v37 + 8);
  if (v41)
  {
    v42 = *(v11 + v37);
    v43 = v41;
  }

  else
  {
    v42 = *v18;
    v43 = v18[1];
  }

  v44 = sub_1CEFE7394(v39, v40);
  if (v45)
  {
    if (v44 == 12565487 && v45 == 0xA300000000000000)
    {

LABEL_39:
      v47 = sub_1CF9E69E8();
      v48 = sub_1CF025150(v47, v39, v40);
      v39 = MEMORY[0x1D3868C10](v48);
      v50 = v49;

      goto LABEL_41;
    }

    v46 = sub_1CF9E8048();

    if (v46)
    {
      goto LABEL_39;
    }
  }

  v50 = v40;
LABEL_41:
  v51 = sub_1CEFE7394(v42, v43);
  if (v52)
  {
    if (v51 == 12565487 && v52 == 0xA300000000000000)
    {

      goto LABEL_46;
    }

    v53 = sub_1CF9E8048();

    if (v53)
    {
LABEL_46:
      v54 = sub_1CF9E69E8();
      v55 = sub_1CF025150(v54, v42, v43);
      v56 = MEMORY[0x1D3868C10](v55);
      v58 = v57;

      if (v39 != v56)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  v58 = v43;
  if (v39 != v42)
  {
LABEL_51:
    v61 = sub_1CF9E8048();

    v60 = v65 | ((v61 & 1) == 0);
    goto LABEL_52;
  }

LABEL_49:
  if (v50 != v58)
  {
    goto LABEL_51;
  }

  v60 = v65;
LABEL_52:
  *a4 = v60;
  return result;
}

uint64_t sub_1CF67E758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  (*(*(a3 - 8) + 16))(a4, v5);
  if ((v9 & 2) != 0)
  {
    (*(*(*(a3 + 16) - 8) + 24))(a4, a2);
  }

  if (v9)
  {
    v10 = *(a3 + 36);
    v12 = *(a2 + v10);
    v11 = *(a2 + v10 + 8);
    v13 = (a4 + v10);
    v14 = *(a4 + v10 + 8);

    *v13 = v12;
    v13[1] = v11;
  }

  v16 = v9;
  return sub_1CF677700(&v16, a2 + *(a3 + 40));
}

uint64_t static ItemStateVersion.zero(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 48))(v11, v10, v7);
  v17[4] = 0;
  v17[5] = 0xE000000000000000;
  v17[2] = 58;
  v17[3] = 0xE100000000000000;
  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  sub_1CEFE4E68();
  v12 = sub_1CF9E7668();
  v14 = v13;
  (*(v5 + 32))(a3, v9, a2);
  result = type metadata accessor for ItemStateVersion();
  v16 = (a3 + *(result + 36));
  *v16 = v12;
  v16[1] = v14;
  return result;
}

BOOL ItemStateVersion.isZero.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  (*(v11 + 48))(v4, v11, v7);
  v12 = *(*(v11 + 40) + 8);
  LOBYTE(v11) = sub_1CF9E6868();
  (*(v5 + 8))(v9, v4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v13 = (v2 + *(a1 + 36));
  v15 = *v13;
  v14 = v13[1];
  v16 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = v16;
  }

  return v17 == 0;
}

uint64_t ItemStateVersion.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v5 = (v1 + *(a1 + 36));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_1CF9E6888();
  v9 = [v8 fp_obfuscatedFilename];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  return 0;
}

uint64_t static ItemStateVersion.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 40) + 8);
  if ((sub_1CF9E6868() & 1) == 0)
  {
    v17 = 0;
    return v17 & 1;
  }

  v7 = *(type metadata accessor for ItemStateVersion() + 36);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  v13 = sub_1CEFE7394(v9, v8);
  if (!v14)
  {
    goto LABEL_8;
  }

  if (v13 == 12565487 && v14 == 0xA300000000000000)
  {
  }

  else
  {
    v16 = sub_1CF9E8048();

    if ((v16 & 1) == 0)
    {
LABEL_8:

      goto LABEL_12;
    }
  }

  v18 = sub_1CF9E69E8();
  v19 = sub_1CF025150(v18, v9, v8);
  v9 = MEMORY[0x1D3868C10](v19);
  v8 = v20;

LABEL_12:
  v21 = sub_1CEFE7394(v12, v11);
  if (v22)
  {
    if (v21 == 12565487 && v22 == 0xA300000000000000)
    {
    }

    else
    {
      v24 = sub_1CF9E8048();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v25 = sub_1CF9E69E8();
    v26 = sub_1CF025150(v25, v12, v11);
    v12 = MEMORY[0x1D3868C10](v26);
    v11 = v27;

    goto LABEL_21;
  }

LABEL_18:

LABEL_21:
  if (v9 == v12 && v8 == v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1CF9E8048();
  }

  return v17 & 1;
}

uint64_t sub_1CF67EF18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E65726170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF67EFE4(char a1)
{
  if (a1)
  {
    return 0x656D616E656C6966;
  }

  else
  {
    return 0x4449746E65726170;
  }
}

uint64_t sub_1CF67F014(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF1FEF68(*v1);
}

uint64_t sub_1CF67F024(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1CF0BA674(v7, *v2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF67F06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF67EFE4(*v1);
}

uint64_t sub_1CF67F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF67EF18(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF67F0AC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF1B93DC();
  *a2 = result;
  return result;
}

uint64_t sub_1CF67F0D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF67F12C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ItemStateVersion.encode(to:)(void *a1, uint64_t a2)
{
  v16[0] = a2;
  v3 = *(a2 + 24);
  v16[2] = *(a2 + 16);
  type metadata accessor for ItemStateVersion.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1CF9E7F78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v16[1];
  sub_1CF9E82A8();
  LOBYTE(v17) = 0;
  v11 = *(v3 + 32);
  v12 = v16[3];
  sub_1CF9E7F08();
  if (!v12)
  {
    v13 = (v10 + *(v16[0] + 36));
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 1;
    sub_1CF1E60E8();

    sub_1CF9E7F08();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ItemStateVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v31 = *(a2 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemStateVersion.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_1CF9E7E08();
  v30 = *(v34 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v28 - v10;
  v32 = a2;
  v12 = type metadata accessor for ItemStateVersion();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v35;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v35 = v12;
  v19 = v30;
  v20 = v31;
  LOBYTE(v36) = 0;
  v21 = *(a3 + 24);
  v22 = v32;
  sub_1CF9E7D88();
  (*(v20 + 32))(v18, v33, v22);
  v38 = 1;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  (*(v19 + 8))(v11, v34);
  v23 = v37;
  v24 = v35;
  v25 = &v18[*(v35 + 36)];
  *v25 = v36;
  *(v25 + 1) = v23;
  v26 = v28;
  (*(v28 + 16))(v29, v18, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v18, v24);
}

uint64_t sub_1CF67F71C(void *a1)
{
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1CF67F870(uint64_t a1)
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

uint64_t sub_1CF67F8E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ItemMetadata();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67F978(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 | 7;
  v18 = v12 + 12;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v13 = *(*(v8 - 8) + 64);
  v19 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + ((((((((((v16 + v13 + ((v12 + ((((((((v13 + ((v13 + v12 + (v18 & ~v12)) & ~v12) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v15 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v15 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v28 = *(v6 + 48);

    return v28(a1, v7, v5);
  }

  else
  {
    v29 = (a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v31 = *(v9 + 48);

      return v31((v18 + ((v29 + v17 + 16) & ~v17)) & ~v12);
    }

    else
    {
      v30 = *(v29 + 8);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }
}

void sub_1CF67FC64(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1CF9E5CF8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 | 7;
  v19 = (v13 + ((((((((v14 + ((v14 + v13 + ((v13 + 12) & ~v13)) & ~v13) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v13;
  if (!v11)
  {
    ++v14;
  }

  v20 = v14 + v19;
  v21 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v24 = 0;
    v25 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) == -16)
    {
      v22 = a3 - v17 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_25:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 == v17)
        {
          v28 = *(v34 + 56);

          v28(a1, a2, v9, v7);
        }

        else
        {
          v29 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v16 & 0x80000000) != 0)
          {
            v30 = ((v29 + v18 + 16) & ~v18);
            if (v15 >= a2)
            {
              v33 = *(v10 + 56);

              v33((v30 + v13 + 12) & ~v13, a2);
            }

            else
            {
              v31 = (((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
              if (v31 != -16)
              {
                v32 = ~v15 + a2;
                bzero(((v29 + v18 + 16) & ~v18), (v31 + 16));
                *v30 = v32;
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v29 = a2 & 0x7FFFFFFF;
            v29[1] = 0;
          }

          else
          {
            v29[1] = (a2 - 1);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) == -16)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) != -16)
  {
    v27 = ~v17 + a2;
    bzero(a1, ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t sub_1CF680064()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2 && *(v2 + 16))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
    v4 = MEMORY[0x1D3868FE0](v2, v3);
    MEMORY[0x1D3868CC0](v4);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v5 = 0xE400000000000000;
    v6 = 980510012;
    v7 = *(v1 + 32);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
    v7 = *(v1 + 32);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (*(v7 + 16))
  {
    v8 = MEMORY[0x1D3868FE0]();
    MEMORY[0x1D3868CC0](v8);

    v9 = 0xE400000000000000;
    v10 = 980510012;
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
  v9 = 0xE000000000000000;
LABEL_9:
  if (*(v1 + 88))
  {
    v11 = *(v1 + 80);
    v12 = sub_1CF9E6888();
    v13 = [v12 fp_obfuscatedFilename];

    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;

    MEMORY[0x1D3868CC0](v14, v16);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v17 = 0xE800000000000000;
    v18 = 0x3A65636976656420;
  }

  else
  {
    v18 = 0;
    v17 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  v20 = *(v1 + 40);
  *&v21[16] = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v6, v5);

  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  *v21 = *v1;
  *&v21[9] = *(v1 + 9);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](v18, v17);

  return 0;
}

uint64_t sub_1CF680318()
{
  v1 = v0;
  v2 = *(v0 + 5);
  if (v2 && *(v2 + 16))
  {
    v3 = MEMORY[0x1D3868FE0]();
    MEMORY[0x1D3868CC0](v3);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v4 = 0xE400000000000000;
    v18 = 980510012;
    v5 = *(v0 + 2);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    v4 = 0xE000000000000000;
    v5 = *(v0 + 2);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (*(v5 + 16))
  {
    v6 = MEMORY[0x1D3868FE0]();
    MEMORY[0x1D3868CC0](v6);

    v8 = 980510012;
    v7 = 0xE400000000000000;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
  v7 = 0xE000000000000000;
LABEL_9:
  if (*(v0 + 7))
  {
    v9 = *(v0 + 6);
    v10 = sub_1CF9E6888();
    v11 = [v10 fp_obfuscatedFilename];

    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v16 = 0x3A65636976656420;
    v15 = 0xE800000000000000;
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  v19 = *(v1 + 24);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v18, v4);

  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  v20 = *v1;
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v8, v7);

  MEMORY[0x1D3868CC0](v16, v15);

  return 0;
}

uint64_t sub_1CF6805A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

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

uint64_t sub_1CF680678(uint64_t a1)
{
  v2 = sub_1CEFE7B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6806B4(uint64_t a1)
{
  v2 = sub_1CEFE7B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF6806F0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1CF6BEA0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1CF6BEA0C(v2, v3);
}

double sub_1CF6807F0()
{
  *&xmmword_1EC4EBD90 = 1;
  WORD4(xmmword_1EC4EBD90) = 0;
  qword_1EC4EBDA0 = 0;
  unk_1EC4EBDA8 = 0;
  unk_1EC4EBDAF = 0;
  result = 0.0;
  *(&xmmword_1EC4EBDB0 + 8) = 0u;
  unk_1EC4EBDC8 = 0u;
  BYTE8(xmmword_1EC4EBDD0) = 0;
  qword_1EC4EBDE8 = 0;
  *&xmmword_1EC4EBDF0 = 0;
  qword_1EC4EBDE0 = 0;
  WORD4(xmmword_1EC4EBDF0) = 0;
  xmmword_1EC4EBE00 = 0u;
  xmmword_1EC4EBE10 = 0u;
  xmmword_1EC4EBE20 = 0u;
  xmmword_1EC4EBE30 = 0u;
  byte_1EC4EBE40 = 0;
  *(&xmmword_1EC4EBE70 + 8) = 0u;
  unk_1EC4EBE68 = 0u;
  *(&xmmword_1EC4EBE50 + 8) = 0u;
  *&algn_1EC4EBE41[7] = 0u;
  return result;
}

char *sub_1CF680848()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1CF0710C0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1CF680894(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1CF0710C0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1CF6808D8(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F70, &unk_1CFA0E4F0);
  *v3 = result;
  return result;
}

char *sub_1CF680908(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F80, &qword_1CFA0E500);
  *v3 = result;
  return result;
}

char *sub_1CF680938(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F68, &unk_1CFA107A0);
  *v3 = result;
  return result;
}

char *sub_1CF680968(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F60, &unk_1CFA0E4E0);
  *v3 = result;
  return result;
}

char *sub_1CF680998(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F78, &unk_1CFA10790);
  *v3 = result;
  return result;
}

uint64_t sub_1CF6809C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF680A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

char *sub_1CF680B0C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680B2C(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF680B4C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE6F0, &qword_1CF9FE588);
  *v3 = result;
  return result;
}

char *sub_1CF680B7C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE878, &unk_1CF9FE808);
  *v3 = result;
  return result;
}

char *sub_1CF680BAC(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C2260, &unk_1CFA10770);
  *v3 = result;
  return result;
}

char *sub_1CF680BDC(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE780, &qword_1CF9FE640);
  *v3 = result;
  return result;
}

char *sub_1CF680C0C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE6F8, &qword_1CF9FE590);
  *v3 = result;
  return result;
}

char *sub_1CF680C3C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE660, &qword_1CFA107E0);
  *v3 = result;
  return result;
}

char *sub_1CF680C6C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE668, &qword_1CF9FE4B0);
  *v3 = result;
  return result;
}

char *sub_1CF680C9C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681718(a1, a2, a3, *v3, &qword_1EC4BE810, &qword_1CF9FE6D8);
  *v3 = result;
  return result;
}

size_t sub_1CF680CCC(size_t a1, int64_t a2, char a3)
{
  result = sub_1CF681FA0(a1, a2, a3, *v3, &unk_1EC4C4F70, &unk_1CF9FE710, &unk_1EC4BED40, &unk_1CFA00720);
  *v3 = result;
  return result;
}

void *sub_1CF680D0C(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680D2C(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681BE8(a1, a2, a3, *v3, &qword_1EC4C1770, &qword_1CFA05A80, type metadata accessor for NSFileProviderItemIdentifier);
  *v3 = result;
  return result;
}

char *sub_1CF680D70(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C0488, &qword_1CFA10830);
  *v3 = result;
  return result;
}

char *sub_1CF680DA0(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C2268, &unk_1CFA10780);
  *v3 = result;
  return result;
}

size_t sub_1CF680DD0(size_t a1, int64_t a2, char a3)
{
  result = sub_1CF000D30(a1, a2, a3, *v3, &qword_1EC4BE640, &qword_1CF9FE478, type metadata accessor for LocalContainer);
  *v3 = result;
  return result;
}

char *sub_1CF680E14(char *a1, int64_t a2, char a3)
{
  result = sub_1CF681718(a1, a2, a3, *v3, &qword_1EC4BE798, &qword_1CF9FE660);
  *v3 = result;
  return result;
}

void *sub_1CF680E44(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680E64(void *a1, int64_t a2, char a3)
{
  result = sub_1CF68195C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680E84(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681AA0(a1, a2, a3, *v3, &qword_1EC4C2290, &qword_1CFA107E8, &qword_1EC4C2298, &qword_1CFA107F0);
  *v3 = result;
  return result;
}

void *sub_1CF680EC4(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681AA0(a1, a2, a3, *v3, &qword_1EC4BE6A8, &qword_1CF9FE518, &qword_1EC4BE6B0, &unk_1CF9FE520);
  *v3 = result;
  return result;
}

void *sub_1CF680F04(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681BE8(a1, a2, a3, *v3, &qword_1EC4C2288, &unk_1CFA107D0, type metadata accessor for NSFileProviderItemDecorationIdentifier);
  *v3 = result;
  return result;
}

void *sub_1CF680F48(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CF680F68(size_t a1, int64_t a2, char a3)
{
  result = sub_1CF681FA0(a1, a2, a3, *v3, &qword_1EC4BE790, &qword_1CF9FE658, &unk_1EC4BE360, &qword_1CF9FE650);
  *v3 = result;
  return result;
}

void *sub_1CF680FA8(void *a1, int64_t a2, char a3)
{
  result = sub_1CEFFA068(a1, a2, a3, *v3, &qword_1EC4C22A8, &qword_1CFA10808, &qword_1EC4C22B0, &qword_1CFA10810);
  *v3 = result;
  return result;
}

void *sub_1CF680FE8(void *a1, int64_t a2, char a3)
{
  result = sub_1CF681E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF681008(char *a1, int64_t a2, char a3)
{
  result = sub_1CF682188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF681028(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_1CF681124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE638, &qword_1CF9FE470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681240(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE820, &unk_1CF9FE6F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF681374(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1CF681460(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22D8, &qword_1CFA10850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22E0, &qword_1CFA10858);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF6815D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7D8, &qword_1CF9FE6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C0, &unk_1CFA10820);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF681718(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1CF681814(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F20, &unk_1CFA18130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF68195C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22A0, &qword_1CFA107F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4D10, &qword_1CFA10800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681AA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 96);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[12 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 96 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1CF681BE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1CF681D18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE840, &qword_1CF9FE728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681E48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C8, &qword_1CFA10838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22D0, &unk_1CFA10840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CF681FA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1CF682188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22B8, &qword_1CFA10818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1CF6822A0()
{
  result = qword_1EC4C22E8;
  if (!qword_1EC4C22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22E8);
  }

  return result;
}

unint64_t sub_1CF6822F8()
{
  result = qword_1EDEAB9B0;
  if (!qword_1EDEAB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9B0);
  }

  return result;
}

unint64_t sub_1CF682350()
{
  result = qword_1EDEAB9B8;
  if (!qword_1EDEAB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9B8);
  }

  return result;
}

uint64_t FileItemKind.contentType.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_1CF9E5F18();
    }

    else
    {
      return sub_1CF9E5FC8();
    }
  }

  else if (*v0)
  {
    return sub_1CF9E5F98();
  }

  else
  {
    return sub_1CF9E5F78();
  }
}

uint64_t sub_1CF6823E4(_BYTE *a1)
{
  if (qword_1CFA10B18[*v1] == qword_1CFA10B18[*a1])
  {
    return 1;
  }

  if (*v1 == 3)
  {
    if (!*a1)
    {
      return 1;
    }
  }

  else
  {
    if (*v1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *a1 == 3;
    }

    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CF682438(char a1)
{
  v2 = *v1;
  if (v2 == 1)
  {
    v3 = a1 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

FileProviderDaemon::FileItemKind_optional __swiftcall FileItemKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x304020100uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FileItemKind.description.getter()
{
  v1 = 6516580;
  v2 = 0x6B6E696C6D7973;
  if (*v0 != 2)
  {
    v2 = 0x7361696C61;
  }

  if (*v0)
  {
    v1 = 7498084;
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

uint64_t FileItemKind.typeIdentifier.getter()
{
  v1 = sub_1CF9E5FF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      sub_1CF9E5F18();
    }

    else
    {
      sub_1CF9E5FC8();
    }
  }

  else if (*v0)
  {
    sub_1CF9E5F98();
  }

  else
  {
    sub_1CF9E5F78();
  }

  v6 = sub_1CF9E5EF8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1CF68263C()
{
  result = qword_1EC4C22F0;
  if (!qword_1EC4C22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22F0);
  }

  return result;
}

uint64_t sub_1CF682690()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA10B18[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF682718()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA10B18[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF682784()
{
  v1 = 6516580;
  v2 = 0x6B6E696C6D7973;
  if (*v0 != 2)
  {
    v2 = 0x7361696C61;
  }

  if (*v0)
  {
    v1 = 7498084;
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

unint64_t sub_1CF6828C4()
{
  result = qword_1EC4C22F8;
  if (!qword_1EC4C22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2300, &qword_1CFA10A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22F8);
  }

  return result;
}

uint64_t sub_1CF682948()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1CF680DA0(0, 1, 1);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CF680DA0((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1CF680DA0((v1 > 1), v2 + 2, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  if (v3 < (v2 + 3))
  {
    sub_1CF680DA0((v1 > 1), v2 + 3, 1);
  }

  result = v7;
  *(v7 + 16) = v2 + 3;
  *(v7 + v5 + 32) = 3;
  return result;
}

uint64_t sub_1CF682A60()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1CF680DA0(0, 1, 1);
  result = v6;
  v2 = *(v6 + 16);
  v1 = *(v6 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CF680DA0((v1 > 1), v2 + 1, 1);
    result = v6;
    v1 = *(v6 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  *(result + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1CF680DA0((v1 > 1), v5, 1);
    result = v6;
  }

  *(result + 16) = v5;
  *(result + v4 + 32) = 3;
  return result;
}

unint64_t sub_1CF682B34()
{
  result = qword_1EC4C2308;
  if (!qword_1EC4C2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2308);
  }

  return result;
}

void sub_1CF682B88(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for FSOrFPJob();
  if (v5 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ReconciliationID();
      if (v7 <= 0x3F)
      {
        swift_getTupleTypeMetadata2();
        if (v8 <= 0x3F)
        {
          swift_getTupleTypeMetadata2();
          if (v9 <= 0x3F)
          {
            type metadata accessor for SnapshotItem();
            v11 = v10;
            sub_1CF9E75D8();
            swift_getTupleTypeMetadata3();
            if (v12 <= 0x3F)
            {
              type metadata accessor for SnapshotItem();
              v14 = v13;
              sub_1CF9E75D8();
              swift_getTupleTypeMetadata3();
              if (v15 <= 0x3F && v11 <= 0x3F && v14 <= 0x3F)
              {
                sub_1CF9E75D8();
                TupleTypeMetadata = swift_getTupleTypeMetadata();
                if (v17 <= 0x3F)
                {
                  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
                  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
                  swift_getTupleTypeMetadata();
                  if (v18 <= 0x3F)
                  {
                    type metadata accessor for ThrottlingKey();
                    v20 = v19;
                    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                    swift_getTupleTypeMetadata2();
                    if (v21 <= 0x3F && v20 <= 0x3F)
                    {
                      swift_getTupleTypeMetadata2();
                      if (v22 <= 0x3F)
                      {
                        swift_getTupleTypeMetadata3();
                        if (v23 <= 0x3F)
                        {
                          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                          swift_getTupleTypeMetadata3();
                          if (v24 <= 0x3F)
                          {
                            type metadata accessor for TestingOperation();
                            if (v25 <= 0x3F)
                            {
                              swift_getTupleTypeMetadata2();
                              if (v26 <= 0x3F)
                              {
                                swift_getTupleTypeMetadata2();
                                if (v27 <= 0x3F)
                                {
                                  type metadata accessor for ItemReconciliation();
                                  if (v28 <= 0x3F)
                                  {
                                    swift_getTupleTypeMetadata2();
                                    if (v29 <= 0x3F)
                                    {
                                      sub_1CF6845E4();
                                      if (v30 <= 0x3F)
                                      {
                                        swift_getTupleTypeMetadata2();
                                        if (v31 <= 0x3F)
                                        {
                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
    }
  }
}

uint64_t sub_1CF683184(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[4];
  v5 = a3[2];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v78 = a3[5];
  v79 = a3[3];
  v76 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v76 + 80);
  v82 = (v7 + v8) & ~v8;
  v9 = *(v76 + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v76 + 64);
  }

  v11 = v7;
  v89 = v10;
  v86 = v10 + 1;
  v88 = v10 + 2;
  v12 = *(v6 + 80);
  v87 = (((v12 | v8) + v10 + 1) & ~(v12 | v8)) + v10 + 1;
  v85 = *(v6 + 84);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(sub_1CF9E5CF8() - 8);
  v16 = *(v14 + 80);
  v80 = *(v13 + 80) & 0xF8 | v16 | 7;
  v83 = ((((*(v14 + 64) + ((v16 + ((*(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = *(v15 + 80);
  v75 = (v17 | 7) + 16;
  v18 = *(v15 + 64);
  v19 = 7;
  if (!*(v15 + 84))
  {
    v19 = 8;
  }

  v73 = ((((((((((v19 + v18 + ((v17 + ((((((((v18 + ((v18 + v17 + ((v17 + 12) & ~v17)) & ~v17) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335;
  v20 = (((v73 + ((v75 + ((((v11 + v12) & ~v12) + v11 + v80) & ~v80) + v83) & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = v20 + 16;
  v21 = *(v13 + 80) & 0xF8 | v16 | 7 | v12 | v17;
  v84 = ((v20 + ((v20 + 16 + v21) & ~v21) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v77 = *(v76 + 84);
  v22 = *(swift_getAssociatedTypeWitness() - 8);
  v23 = *(swift_getAssociatedTypeWitness() - 8);
  v24 = *(v23 + 80);
  v25 = *(v22 + 80) & 0xF8 | v24 | 7;
  v26 = ((((*(v23 + 64) + ((v24 + ((*(v22 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = (((v73 + ((v75 + ((((v9 + v8) & ~v8) + v9 + v25) & ~v25) + v26) & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + 16;
  v29 = v25 | v8 | v17;
  v30 = v27 + ((v27 + 16 + v29) & ~v29);
  v31 = v74 + ((v21 + v11) & ~v21);
  if (v77)
  {
    v32 = v9;
  }

  else
  {
    v32 = v9 + 1;
  }

  v33 = v32 + v25 + v82;
  v34 = *(v5 - 8);
  v35 = (v11 + *(v34 + 80)) & ~*(v34 + 80);
  v36 = *(v34 + 84);
  v37 = *(v34 + 64);
  v38 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v36)
  {
    ++v37;
  }

  v39 = v37 + v35;
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = ((((((v32 + v25 + ((v31 + v8) & ~v8)) & ~v25) + v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v42 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 > v41)
  {
    v41 = v11;
  }

  if (v40 <= v26 + (v33 & ~v25) + 16)
  {
    v40 = v26 + (v33 & ~v25) + 16;
  }

  if (v42 > v39)
  {
    v39 = v42;
  }

  if (v41 <= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = v41;
  }

  if (v43 <= v39)
  {
    v44 = v39;
  }

  else
  {
    v44 = v43;
  }

  v45 = v28 + ((v29 + v9) & ~v29);
  if (v85)
  {
    v46 = v11;
  }

  else
  {
    v46 = v11 + 1;
  }

  v47 = v46 + v80 + ((v9 + v12) & ~v12);
  v48 = *(v79 - 8);
  v49 = (v9 + *(v48 + 80)) & ~*(v48 + 80);
  v50 = *(v48 + 64);
  if (!*(v48 + 84))
  {
    ++v50;
  }

  v51 = v50 + v49;
  v52 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = ((((((v46 + v80 + ((v45 + v12) & ~v12)) & ~v80) + v83 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 > v53)
  {
    v53 = v9;
  }

  v54 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v54 <= v83 + (v47 & ~v80) + 16)
  {
    v54 = v83 + (v47 & ~v80) + 16;
  }

  v55 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v55 > v51)
  {
    v51 = v55;
  }

  if (v53 <= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v53;
  }

  if (v56 > v51)
  {
    v51 = v56;
  }

  v57 = v51 + 1;
  if (v57 <= v44 + 1)
  {
    v57 = v44 + 1;
  }

  v58 = ((((((((((((((v46 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v80 + 9) & ~v80) + v83 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v25 | v8) + 8) & ~(v25 | v8)) + ((((((((((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v25 + 9) & ~v25) + v26 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v59 = v88;
  if (v86 > v88)
  {
    v59 = v89 + 1;
  }

  if (v59 <= v82 + v9)
  {
    v59 = v82 + v9;
  }

  if (v59 <= v87)
  {
    v59 = v87;
  }

  if (v59 <= v84)
  {
    v59 = v84;
  }

  v60 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v59 > v60)
  {
    v60 = v59;
  }

  if (v60 <= v74)
  {
    v60 = v74;
  }

  if (v60 > v28)
  {
    v28 = v60;
  }

  if (v28 <= v87 + 2)
  {
    v28 = v87 + 2;
  }

  v61 = v89 & 0xFFFFFFFFFFFFFFF8;
  if (v28 <= ((v89 + 9) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v28 = ((v89 + 9) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v28 <= v61 + 16)
  {
    v28 = v61 + 16;
  }

  if (v28 <= v61 + 17)
  {
    v28 = v61 + 17;
  }

  v81 = v12 | v8;
  if (v28 <= ((v89 + ((v81 + 1) & ~v81) + 8) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v28 = ((v89 + ((v81 + 1) & ~v81) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v28 <= v57 + 1)
  {
    v62 = v57 + 1;
  }

  else
  {
    v62 = v28;
  }

  if (v62 <= ((((((((v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v62 = ((((((((v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v62 <= v61 + 72)
  {
    v62 = v61 + 72;
  }

  v63 = 64;
  if (v62 > 0x40)
  {
    v63 = v62;
  }

  v64 = 211 - (4u >> (8 * v63));
  if (v63 > 3)
  {
    v64 = 211;
  }

  if (!a2)
  {
    return 0;
  }

  if (v64 >= a2)
  {
    goto LABEL_98;
  }

  v65 = v63 + 1;
  v66 = 8 * (v63 + 1);
  if ((v63 + 1) <= 3)
  {
    v69 = ((~(-1 << v66) + a2 - v64) >> v66) + 1;
    if (HIWORD(v69))
    {
      v67 = *(a1 + v65);
      if (!v67)
      {
        goto LABEL_98;
      }

      goto LABEL_87;
    }

    if (v69 > 0xFF)
    {
      v67 = *(a1 + v65);
      if (!*(a1 + v65))
      {
        goto LABEL_98;
      }

      goto LABEL_87;
    }

    if (v69 < 2)
    {
LABEL_98:
      v71 = *(a1 + v63);
      if (v64 <= (v71 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v71);
      }
    }
  }

  v67 = *(a1 + v65);
  if (!*(a1 + v65))
  {
    goto LABEL_98;
  }

LABEL_87:
  v70 = (v67 - 1) << v66;
  if (v65 > 3)
  {
    v70 = 0;
  }

  if (v65)
  {
    if (v65 > 3)
    {
      LODWORD(v65) = 4;
    }

    if (v65 > 2)
    {
      if (v65 == 3)
      {
        LODWORD(v65) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v65) = *a1;
      }
    }

    else if (v65 == 1)
    {
      LODWORD(v65) = *a1;
    }

    else
    {
      LODWORD(v65) = *a1;
    }
  }

  return v64 + (v65 | v70) + 1;
}

void sub_1CF683B74(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[4];
  v6 = a4[2];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v80 = a4[5];
  v81 = a4[3];
  v78 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v78 + 80);
  v84 = (v8 + v9) & ~v9;
  v10 = *(v78 + 64);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v78 + 64);
  }

  v12 = v8;
  v91 = v11;
  v88 = v11 + 1;
  v90 = v11 + 2;
  v13 = *(v7 + 80);
  v89 = (((v13 | v9) + v11 + 1) & ~(v13 | v9)) + v11 + 1;
  v87 = *(v7 + 84);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(sub_1CF9E5CF8() - 8);
  v17 = *(v15 + 80);
  v18 = *(v14 + 80) & 0xF8 | v17 | 7;
  v82 = v18;
  v85 = ((((*(v15 + 64) + ((v17 + ((*(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = *(v16 + 80);
  v77 = (v19 | 7) + 16;
  v20 = *(v16 + 64);
  v21 = 7;
  if (!*(v16 + 84))
  {
    v21 = 8;
  }

  v75 = ((((((((((v21 + v20 + ((v19 + ((((((((v20 + ((v20 + v19 + ((v19 + 12) & ~v19)) & ~v19) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335;
  v22 = (((v75 + ((v77 + ((((v12 + v13) & ~v13) + v12 + v18) & ~v18) + v85) & ~(v19 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = v22 + 16;
  v23 = v18 | v13 | v19;
  v86 = ((v22 + ((v22 + 16 + v23) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v79 = *(v78 + 84);
  v24 = *(swift_getAssociatedTypeWitness() - 8);
  v25 = *(swift_getAssociatedTypeWitness() - 8);
  v26 = *(v25 + 80);
  v27 = *(v24 + 80) & 0xF8 | v26 | 7;
  v28 = ((((*(v25 + 64) + ((v26 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v29 = (((v75 + ((v77 + ((((v10 + v9) & ~v9) + v10 + v27) & ~v27) + v28) & ~(v19 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = v29 + 16;
  v31 = v27 | v9 | v19;
  v32 = v29 + ((v29 + 16 + v31) & ~v31);
  v33 = v76 + ((v23 + v12) & ~v23);
  if (v79)
  {
    v34 = v10;
  }

  else
  {
    v34 = v10 + 1;
  }

  v35 = v34 + v27 + v84;
  v36 = *(v6 - 8);
  v37 = (v12 + *(v36 + 80)) & ~*(v36 + 80);
  v38 = *(v36 + 84);
  v39 = *(v36 + 64);
  v40 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v38)
  {
    ++v39;
  }

  v41 = v39 + v37;
  v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = ((((((v34 + v27 + ((v33 + v9) & ~v9)) & ~v27) + v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v44 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 > v43)
  {
    v43 = v12;
  }

  if (v42 <= v28 + (v35 & ~v27) + 16)
  {
    v42 = v28 + (v35 & ~v27) + 16;
  }

  if (v44 > v41)
  {
    v41 = v44;
  }

  if (v43 <= v42)
  {
    v45 = v42;
  }

  else
  {
    v45 = v43;
  }

  if (v45 <= v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = v45;
  }

  v47 = v30 + ((v31 + v10) & ~v31);
  if (v87)
  {
    v48 = v12;
  }

  else
  {
    v48 = v12 + 1;
  }

  v49 = v48 + v82 + ((v10 + v13) & ~v13);
  v50 = *(v81 - 8);
  v51 = (v10 + *(v50 + 80)) & ~*(v50 + 80);
  v52 = *(v50 + 64);
  if (!*(v50 + 84))
  {
    ++v52;
  }

  v53 = v52 + v51;
  v54 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = ((((((v48 + v82 + ((v47 + v13) & ~v13)) & ~v82) + v85 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 > v55)
  {
    v55 = v10;
  }

  v56 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 <= v85 + (v49 & ~v82) + 16)
  {
    v56 = v85 + (v49 & ~v82) + 16;
  }

  v57 = ((v54 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v57 > v53)
  {
    v53 = v57;
  }

  if (v55 <= v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = v55;
  }

  if (v58 > v53)
  {
    v53 = v58;
  }

  v59 = v53 + 1;
  if (v59 <= v46 + 1)
  {
    v59 = v46 + 1;
  }

  v60 = ((((((((((((((v48 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v82 + 9) & ~v82) + v85 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v27 | v9) + 8) & ~(v27 | v9)) + ((((((((((((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v27 + 9) & ~v27) + v28 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v61 = v90;
  if (v88 > v90)
  {
    v61 = v91 + 1;
  }

  if (v61 <= v84 + v10)
  {
    v61 = v84 + v10;
  }

  if (v61 <= v89)
  {
    v61 = v89;
  }

  if (v61 <= v86)
  {
    v61 = v86;
  }

  v62 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v61 > v62)
  {
    v62 = v61;
  }

  if (v62 <= v76)
  {
    v62 = v76;
  }

  if (v62 > v30)
  {
    v30 = v62;
  }

  if (v30 <= v89 + 2)
  {
    v30 = v89 + 2;
  }

  v63 = v91 & 0xFFFFFFFFFFFFFFF8;
  if (v30 <= ((v91 + 9) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v30 = ((v91 + 9) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v30 <= v63 + 16)
  {
    v30 = v63 + 16;
  }

  if (v30 <= v63 + 17)
  {
    v30 = v63 + 17;
  }

  v83 = v13 | v9;
  if (v30 <= ((v91 + ((v83 + 1) & ~v83) + 8) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v30 = ((v91 + ((v83 + 1) & ~v83) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v30 <= v59 + 1)
  {
    v64 = v59 + 1;
  }

  else
  {
    v64 = v30;
  }

  if (v64 <= ((((((((v60 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v64 = ((((((((v60 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v64 <= v63 + 72)
  {
    v64 = v63 + 72;
  }

  if (v64 <= 0x40)
  {
    v64 = 64;
  }

  v65 = 211 - (4u >> (8 * v64));
  if (v64 > 3)
  {
    v65 = 211;
  }

  v66 = v64 + 1;
  if (v65 >= a3)
  {
    v69 = 0;
    v67 = a1;
    v68 = a2;
  }

  else
  {
    v67 = a1;
    v68 = a2;
    if (v66 <= 3)
    {
      v72 = ((~(-1 << (8 * v66)) + a3 - v65) >> (8 * v66)) + 1;
      if (HIWORD(v72))
      {
        v69 = 4;
      }

      else
      {
        if (v72 < 0x100)
        {
          v73 = 1;
        }

        else
        {
          v73 = 2;
        }

        if (v72 >= 2)
        {
          v69 = v73;
        }

        else
        {
          v69 = 0;
        }
      }
    }

    else
    {
      v69 = 1;
    }
  }

  if (v65 >= v68)
  {
    if (v69 > 1)
    {
      if (v69 != 2)
      {
        *&v67[v66] = 0;
        if (!v68)
        {
          return;
        }

LABEL_103:
        v67[v64] = -v68;
        return;
      }

      *&v67[v66] = 0;
    }

    else if (v69)
    {
      v67[v66] = 0;
      if (!v68)
      {
        return;
      }

      goto LABEL_103;
    }

    if (!v68)
    {
      return;
    }

    goto LABEL_103;
  }

  v70 = ~v65 + v68;
  if (v66 >= 4)
  {
    bzero(v67, v66);
    *v67 = v70;
    v71 = 1;
    if (v69 > 1)
    {
      goto LABEL_112;
    }

    goto LABEL_109;
  }

  v71 = (v70 >> (8 * v66)) + 1;
  if (v64 == -1)
  {
LABEL_108:
    if (v69 > 1)
    {
      goto LABEL_112;
    }

    goto LABEL_109;
  }

  v74 = v70 & ~(-1 << (8 * v66));
  bzero(v67, v66);
  if (v66 == 3)
  {
    *v67 = v74;
    v67[2] = BYTE2(v74);
    goto LABEL_108;
  }

  if (v66 == 2)
  {
    *v67 = v74;
    if (v69 > 1)
    {
LABEL_112:
      if (v69 == 2)
      {
        *&v67[v66] = v71;
      }

      else
      {
        *&v67[v66] = v71;
      }

      return;
    }
  }

  else
  {
    *v67 = v70;
    if (v69 > 1)
    {
      goto LABEL_112;
    }
  }

LABEL_109:
  if (v69)
  {
    v67[v66] = v71;
  }
}

void sub_1CF6845E4()
{
  if (!qword_1EDEA3788)
  {
    v0 = sub_1CF9E6E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3788);
    }
  }
}

uint64_t sub_1CF684634@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = a1[4];
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a1[5];
  v7 = a1[3];
  v8 = swift_getAssociatedTypeWitness();
  v32 = v4;
  v33 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v7;
  v31 = v6;
  v10 = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v36 = v8;
  v37 = AssociatedConformanceWitness;
  v38 = v10;
  v11 = type metadata accessor for ReconciliationID();
  v12 = v11[-1].i64[1];
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = *(*(a1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v29, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload >= 8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_9:
      (*(v12 + 32))(v16, v19, v11);
      sub_1CF050768(v11, v34);
      (*(v12 + 8))(v16, v11);
      goto LABEL_10;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
  v22 = &v19[*(swift_getTupleTypeMetadata2() + 48)];
  v23 = *v22;
  v28 = *(v22 + 1);
  v29 = v23;
  (*(v12 + 32))(v16, v19, v11);
  v35 = v8;
  v36 = AssociatedTypeWitness;
  v37 = v10;
  v38 = AssociatedConformanceWitness;
  type metadata accessor for ReconciliationID();
  v24 = (v34 + *(swift_getTupleTypeMetadata2() + 48));
  sub_1CF050768(v11, v34);
  (*(v12 + 8))(v16, v11);
  v25 = v28;
  *v24 = v29;
  v24[1] = v25;
LABEL_10:
  v35 = v30;
  v36 = v32;
  v37 = v31;
  v38 = v33;
  type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF6849F4(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    v7 = a1[3];
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF684AD8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 1) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = a3[5];
  v11 = a3[3];
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = ((*(v12 + 80) + 1) & ~*(v12 + 80)) + *(v12 + 64);
  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v15 = v14 + 1;
  v16 = 8 * (v14 + 1);
  if ((v14 + 1) <= 3)
  {
    v19 = ((a2 + ~(-1 << v16) - 253) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v19 < 2)
    {
LABEL_26:
      v21 = *(a1 + v14);
      if (v21 >= 3)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_26;
  }

LABEL_15:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return (v15 | v20) + 254;
}

void sub_1CF684CE8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((*(v10 + 80) + 1) & ~*(v10 + 80)) + *(v10 + 64);
  v12 = a4[5];
  v13 = a4[3];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = ((*(v14 + 80) + 1) & ~*(v14 + 80)) + *(v14 + 64);
  if (v15 <= v11)
  {
    v15 = v11;
  }

  v16 = v15 + 1;
  if (a3 < 0xFE)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 253) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFD)
  {
    v18 = a2 - 254;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_39:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v15] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_24;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1CF684F78(uint64_t a1)
{
  sub_1CF6845E4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF685030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v14 = v13 + ((v12 + 16) & ~v12);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_31:
      v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v22 = (*(v8 + 48))((v20 + v12 + 8) & ~v12);
        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *v20;
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_20:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1CF685218(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  v13 = *(v10 + 80);
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v12;
  }

  if (v11)
  {
    v15 = *(v10 + 64);
  }

  else
  {
    v15 = *(v10 + 64) + 1;
  }

  v16 = ((v13 + 16) & ~v13) + v15;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v9 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v16] = 0;
    }

    else if (v9)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {
        v24 = ((v22 + v13 + 8) & ~v13);
        if (v12 >= a2)
        {
          v28 = *(v10 + 56);

          v28((v22 + v13 + 8) & ~v13, a2 + 1);
        }

        else
        {
          if (v15 <= 3)
          {
            v25 = ~(-1 << (8 * v15));
          }

          else
          {
            v25 = -1;
          }

          if (v15)
          {
            v26 = v25 & (~v12 + a2);
            if (v15 <= 3)
            {
              v27 = v15;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v15);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = a2 - 1;
        }

        *v22 = v23;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v19 = ~v14 + a2;
  if (v16 >= 4)
  {
    bzero(a1, ((v13 + 16) & ~v13) + v15);
    *a1 = v19;
    v20 = 1;
    if (v9 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_59:
    if (v9 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_59;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v9 > 1)
    {
LABEL_63:
      if (v9 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v9 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v9)
  {
    a1[v16] = v20;
  }
}

uint64_t sub_1CF685534(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[5];
  v5 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ReconciliationID();
  if (v7 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
    result = swift_getTupleTypeMetadata2();
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF6856A8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = a3[5];
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v8)
  {
    v11 = v8;
  }

  if ((v11 & 0xFFFFFFFFFFFFFFF8) + 24 <= v11 + 1)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_28;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 247) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      v19 = *(a1 + v12);
      if (v19 >= 9)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 248;
}

void sub_1CF685854(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = a4[5];
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFF8) + 24 <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v15 = v14 + 1;
  if (a3 < 0xF8)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 247) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xF7)
  {
    v17 = a2 - 248;
    if (v15 >= 4)
    {
      bzero(a1, v14 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v14 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_42:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v14] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_27;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_1CF685A80()
{
  result = type metadata accessor for SnapshotCounters();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF685B78()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();
  sub_1CF689368(v0 + qword_1EDEBBA48);
  return v0;
}

uint64_t sub_1CF685BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v92 = a1;
  v93 = a2;
  v4 = *v3;
  v5 = *v3;
  v6 = sub_1CF9E5CF8();
  v86 = *(v6 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 96);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v89 = type metadata accessor for SnapshotItem();
  v20 = sub_1CF9E75D8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v68 - v26;
  if (*(v3 + 32) == 1)
  {
    v28 = *(v5 + 88);
    v29 = *(v5 + 104);
    v97 = v10;
    v98 = v28;
    v99 = v9;
    v100 = v29;
    type metadata accessor for Job();
    return sub_1CF9E6DA8();
  }

  v80 = v25;
  v84 = v24;
  v82 = v23;
  v79 = v6;
  v90 = AssociatedTypeWitness;
  v91 = v12;
  v31 = *(v5 + 88);
  v32 = *(v5 + 104);
  v97 = v10;
  v98 = v31;
  v77 = v31;
  v99 = v9;
  v100 = v32;
  v78 = v32;
  v76 = type metadata accessor for Job();
  v83 = sub_1CF9E65E8();
  v96 = v83;
  v33 = v3[2];
  v34 = (*v33 + 96);
  v75 = *v34;
  v81 = v34;
  v75();
  v35 = *(*v3 + 240);
  v36 = *v3 + 240;
  v37 = v95;
  v35(v19, 1, v92, v93, v94);
  v95 = v37;
  if (v37)
  {
    (*(v91 + 8))(v19, v90);
  }

  v73 = v36;
  v74 = v35;
  v83 = v33;
  v72 = v10;
  v71 = v9;
  v38 = *(v91 + 8);
  v91 += 8;
  v38(v19, v90);
  v39 = *(*(v89 - 8) + 48);
  v40 = v39(v27, 1);
  v41 = *(v84 + 8);
  v84 += 8;
  v42 = v41(v27, v82);
  v43 = v88;
  if (v40 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    swift_allocObject();
    v70 = sub_1CF9E6D68();
    v69 = v44;
    v97 = v72;
    v98 = v77;
    v99 = v71;
    v100 = v78;
    type metadata accessor for Ingestion.FetchItemMetadata();
    v75();
    v45 = v85;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v47 = v46;
    result = (*(v86 + 8))(v45, v79);
    v48 = v47 * 1000000000.0;
    if (COERCE__INT64(fabs(v47 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -9.22337204e18)
    {
      if (v48 < 9.22337204e18)
      {
        v49 = sub_1CF656F5C(v43, 0x2000000000000000, v48, 0x10000);
        v38(v43, v90);
        *v69 = v49;
        sub_1CF045898(v70);
        sub_1CF9E6DD8();

        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_10:
  v81 = v41;
  v50 = v39;
  v51 = v38;
  v52 = *(*v83 + 104);
  v53 = v87;
  (v52)(v42);
  v54 = v80;
  v55 = v95;
  v74(v53, 1, v92, v93, v94);
  v95 = v55;
  v56 = v53;
  if (v55)
  {
    v51(v53, v90);
  }

  v57 = v51;
  v51(v56, v90);
  v58 = v50(v54, 1, v89);
  (v81)(v54, v82);
  if (v58 != 1)
  {
    return v96;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  swift_allocObject();
  v59 = sub_1CF9E6D68();
  v61 = v60;
  v97 = v72;
  v98 = v77;
  v99 = v71;
  v100 = v78;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v62 = v88;
  v52();
  v63 = v85;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v65 = v64;
  result = (*(v86 + 8))(v63, v79);
  v66 = v65 * 1000000000.0;
  if (COERCE__INT64(fabs(v65 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v66 < 9.22337204e18)
  {
    v67 = sub_1CF656F5C(v62, 0x2000000000000000, v66, 0x10000);
    v57(v62, v90);
    *v61 = v67;
    sub_1CF045898(v59);
    sub_1CF9E6DD8();

    return v96;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF686424()
{
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x3A76656E20, 0xE500000000000000);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  sub_1CF9E7948();

  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x3A6377736C6420, 0xE700000000000000);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](980837664, 0xE400000000000000);

  return 0x3A736C643CLL;
}

uint64_t sub_1CF6865D8()
{
  sub_1CF9E7948();

  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x3A6C6378652120, 0xE700000000000000);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A6C6564213CLL;
}

uint64_t sub_1CF6866D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1CF686424();
}

uint64_t sub_1CF6866E0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1CF6865D8();
}

uint64_t sub_1CF6866E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6F43657461657263, 0xEC0000003D746E75);
  v7 = *v0;
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x4365746164707520, 0xED00003D746E756FLL);
  v8 = v0[1];
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x436574656C656420, 0xED00003D746E756FLL);
  v9 = v0[2];
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  v4 = v0 + *(type metadata accessor for SnapshotCounters() + 28);
  v5 = sub_1CF9E5C08();
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF68688C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC330;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0x6F43657461657263;
  *(v2 + 40) = 0xEB00000000746E75;
  v4 = *v0;
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 32) = 0x6F43657461647075;
  *(v7 + 40) = 0xEB00000000746E75;
  v8 = *(v0 + 1);
  *(v7 + 88) = v5;
  *(v7 + 56) = v3;
  *(v7 + 64) = v8;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  *(v9 + 32) = 0x6F436574656C6564;
  *(v9 + 40) = 0xEB00000000746E75;
  v10 = *(v0 + 2);
  *(v9 + 88) = v5;
  *(v9 + 56) = v3;
  *(v9 + 64) = v10;
  *(v1 + 120) = v6;
  *(v1 + 96) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA440;
  *(v11 + 56) = v3;
  *(v11 + 32) = 0x7461447465736572;
  *(v11 + 40) = 0xE900000000000065;
  v12 = *(type metadata accessor for SnapshotCounters() + 28);
  v13 = sub_1CF9E5CF8();
  *(v11 + 88) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 64));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, &v0[v12], v13);
  *(v1 + 152) = v6;
  *(v1 + 128) = v11;
  return v1;
}

uint64_t sub_1CF686A98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2328, &qword_1CFA10E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF689314();
  sub_1CF9E82A8();
  v11 = *v3;
  v16[15] = 0;
  sub_1CF9E7F68();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    sub_1CF9E7F68();
    v13 = v3[2];
    v16[13] = 2;
    sub_1CF9E7F68();
    v14 = *(type metadata accessor for SnapshotCounters() + 28);
    v16[12] = 3;
    sub_1CF9E5CF8();
    sub_1CF1D6D6C(&qword_1EDEAB3D0);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF686CC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1CF9E5CF8();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2318, &qword_1CFA10E28);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SnapshotCounters();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v15 = *(v14 + 36);
  sub_1CF9E5CC8();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF689314();
  v17 = v27;
  sub_1CF9E8298();
  if (!v17)
  {
    v27 = v15;
    v18 = v24;
    v19 = v25;
    v31 = 0;
    *v13 = sub_1CF9E7DE8();
    v30 = 1;
    v13[1] = sub_1CF9E7DE8();
    v29 = 2;
    v13[2] = sub_1CF9E7DE8();
    v28 = 3;
    sub_1CF1D6D6C(&unk_1EDEAB3A0);
    v22 = v6;
    v21 = v26;
    sub_1CF9E7D88();
    (*(v18 + 8))(v9, v21);
    (*(v19 + 40))(v13 + v27, v22, v3);
    sub_1CF6893C4(v13, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF689368(v13);
}

uint64_t sub_1CF686FE8()
{
  v1 = 0x6F43657461657263;
  v2 = 0x6F436574656C6564;
  if (*v0 != 2)
  {
    v2 = 0x7461447465736572;
  }

  if (*v0)
  {
    v1 = 0x6F43657461647075;
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

uint64_t sub_1CF687068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF68ABAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF687090(uint64_t a1)
{
  v2 = sub_1CF689314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6870CC(uint64_t a1)
{
  v2 = sub_1CF689314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF687394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a5;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 96);
  v27 = type metadata accessor for SnapshotItem();
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  v17 = v30;
  result = (*(v8 + 240))(a1, 1, a2, v28, v29, v14);
  if (!v17)
  {
    v19 = v26;
    v20 = *(v27 - 8);
    if ((*(v20 + 48))(v16, 1) == 1)
    {
      (*(v12 + 8))(v16, v11);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      return (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v22 = v27;
      v23 = *(v27 + 36);
      v24 = swift_getAssociatedTypeWitness();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v19, &v16[v23], v24);
      (*(v20 + 8))(v16, v22);
      return (*(v25 + 56))(v19, 0, 1, v24);
    }
  }

  return result;
}

uint64_t sub_1CF687688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 96);
  v11 = type metadata accessor for SnapshotItem();
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v20 - v16;
  v18 = v22;
  (*(v8 + 240))(a1, 1, a2, a3, v21, v15);
  if (!v18)
  {
    LOBYTE(v4) = (*(*(v11 - 8) + 48))(v17, 1, v11) != 1;
    (*(v13 + 8))(v17, v12);
  }

  return v4 & 1;
}

uint64_t sub_1CF6888B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v35 = a5;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 96);
  v36 = type metadata accessor for SnapshotItem();
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  v17 = v43;
  result = (*(v8 + 240))(a1, 1, a2, v37, v38, v14);
  if (!v17)
  {
    v19 = v12;
    v20 = v11;
    v43 = 0;
    v21 = *(v36 - 8);
    if ((*(v21 + 48))(v16, 1) == 1)
    {
      (*(v19 + 8))(v16, v20);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = swift_getAssociatedConformanceWitness();
      v39 = AssociatedTypeWitness;
      v40 = v23;
      v41 = AssociatedConformanceWitness;
      v42 = v25;
      v26 = type metadata accessor for FileItemVersion();
      return (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
    }

    else
    {
      v27 = v36;
      v38 = *(v36 + 40);
      v28 = swift_getAssociatedTypeWitness();
      v29 = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v31 = swift_getAssociatedConformanceWitness();
      v39 = v28;
      v40 = v29;
      v41 = v30;
      v42 = v31;
      v32 = type metadata accessor for FileItemVersion();
      v33 = *(v32 - 8);
      v34 = v35;
      (*(v33 + 16))(v35, &v16[v38], v32);
      (*(v21 + 8))(v16, v27);
      return (*(v33 + 56))(v34, 0, 1, v32);
    }
  }

  return result;
}

uint64_t sub_1CF688CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v32 = a5;
  v33 = a3;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 96);
  v11 = type metadata accessor for SnapshotItem();
  v12 = sub_1CF9E75D8();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v11 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = v35;
  result = (*(v8 + 240))(a1, 1, a2, v33, v34, v19);
  if (!v22)
  {
    v24 = v31;
    v25 = v32;
    if ((*(v16 + 48))(v15, 1, v11) == 1)
    {
      result = (*(v24 + 8))(v15, v12);
      v26 = 0;
      v27 = 4;
    }

    else
    {
      (*(v16 + 32))(v21, v15, v11);
      v28 = &v21[*(v11 + 48)];
      v26 = *&v28[*(type metadata accessor for ItemMetadata() + 104)];
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v11, WitnessTable, &v36);
      result = (*(v16 + 8))(v21, v11);
      v27 = v36;
    }

    *v25 = v26;
    *(v25 + 8) = v27;
  }

  return result;
}

uint64_t sub_1CF689210()
{
  sub_1CF685B78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotCounters()
{
  result = qword_1EDEAD8F0;
  if (!qword_1EDEAD8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CF689314()
{
  result = qword_1EC4C2320;
  if (!qword_1EC4C2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2320);
  }

  return result;
}

uint64_t sub_1CF689368(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotCounters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF6893C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotCounters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF689428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a3;
  v40 = a6;
  v10 = *(*v6 + 96);
  v39[0] = *(*v6 + 80);
  v39[1] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v39 - v13;
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v45 = v42;
  v46 = a5;
  v47 = v21;
  v48 = v20;
  v22 = a2;
  v49 = a2;
  v50 = v6;
  v51 = v43;
  sub_1CF9E5CE8();
  v23 = v58;
  v24 = sub_1CF51B6BC(v19, sub_1CF68AA5C, v44);
  if (v23)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v27 = v25;
  v42 = v22;
  v43 = v14;
  v58 = 0;
  v28 = AssociatedTypeWitness;
  v29 = v24;
  (*(v16 + 8))(v19, v15);
  if (v27)
  {
    v56 = v29;
    v57 = v27;
    v54 = 58;
    v55 = 0xE100000000000000;
    v52 = 47;
    v53 = 0xE100000000000000;
    sub_1CEFE4E68();
    v30 = sub_1CF9E7668();
    v32 = v31;

    v33 = v40;
    *v40 = v30;
    v33[1] = v32;
  }

  else
  {
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    swift_allocError();
    v35 = v34;
    *v34 = v21;
    *(v34 + 1) = v20;
    v56 = v42;
    sub_1CF9E6E58();

    swift_getWitnessTable();
    v36 = v43;
    sub_1CF9E7118();
    v37 = *(v28 - 8);
    result = (*(v37 + 48))(v36, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v37 + 32))(&v35[*(TupleTypeMetadata2 + 48)], v36, v28);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CF6897FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  v51 = a8;
  v14 = *(*a6 + 96);
  v15 = *a6;
  v49 = a6;
  v16 = *(v15 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = sub_1CF9E75D8();
  v18 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v20 = &v39 - v19;
  v52 = *(AssociatedTypeWitness - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  v59 = a1;
  if (a1 == v26 && a2 == a4)
  {
    return 0;
  }

  v27 = v23;
  if (sub_1CF9E8048())
  {
    return 0;
  }

  else
  {
    v40 = v21;
    v30 = 0;
    v44 = a9;
    v45 = a2;
    v46 = (v52 + 16);
    v47 = v20;
    v41 = (v52 + 56);
    v42 = (v52 + 8);
    v43 = (v27 + 8);
    do
    {
      v31 = sub_1CF9E6DF8();
      v28 = v30 == v31;
      if (v30 == v31)
      {
        break;
      }

      v32 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v32)
      {
        (*(v52 + 16))(v25, a5 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v30, AssociatedTypeWitness);
        v33 = v47;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        v33 = v47;
        if (v40 != 8)
        {
          __break(1u);
          return result;
        }

        v57 = result;
        (*v46)(v25, &v57, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        if (__OFADD__(v30, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          (*v42)(v25, AssociatedTypeWitness);
          (*v43)(v33, v48);

          return v28;
        }
      }

      v34 = a5;
      v57 = v59;
      v58 = v45;
      v55 = 58;
      v56 = 0xE100000000000000;
      v53 = 47;
      v54 = 0xE100000000000000;
      sub_1CEFE4E68();
      v57 = sub_1CF9E7668();
      v58 = v35;
      (*v41)(v33, 1, 1, AssociatedTypeWitness);
      v36 = (*(*v49 + 256))(v25, &v57, v33, v50, v51, v44);
      if (v9)
      {
        goto LABEL_17;
      }

      v37 = v36;
      (*v42)(v25, AssociatedTypeWitness);
      (*v43)(v33, v48);

      v57 = v37;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v38 = sub_1CF9E7128();

      ++v30;
      a5 = v34;
    }

    while ((v38 & 1) != 0);
  }

  return v28;
}