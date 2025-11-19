void sub_1CF399970(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA450;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 41) = 0;
  *(v5 + 48) = 3;
  *(v5 + 56) = 1;
  *(v5 + 147) = 11;
  sub_1CF48043C(__src);
  memcpy(v7, __src, sizeof(v7));
  sub_1CF3937A4(v5);
  swift_setDeallocating();
  v6 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D0, &qword_1CF9FE560);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v2)
  {
  }
}

uint64_t sub_1CF399AF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 40);
  v14[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA37420);
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA37440);
  v14[3] = v8;
  v14[0] = v3;
  sub_1CF480278(v2, v4, v5, v6, v7, sub_1CEFD0988);
  v10 = sub_1CEFF8EA0(v14);
  v12 = v11;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v12)
  {
    sub_1CF480358(v2, v4, v5, v6, v7, sub_1CEFD0994);
    MEMORY[0x1D3868CC0](v10, v12);

    return v15;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF399CD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = *(v1 + 10) | (*(v1 + 14) << 32);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v2 + 32);
  if (v10 > 3)
  {
    if (*(v2 + 32) <= 5u)
    {
      if (v10 == 4)
      {
        *a1 = v4;
        if (v6)
        {
          v15 = v5 | (v6 << 8) | (v7 << 16);
          *(a1 + 8) = v5;
          *(a1 + 9) = 0;
          sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
          result = sub_1CF480358(v4, v15, v9, v8, 4u, sub_1CF1E53F8);
        }

        else
        {
          *(a1 + 8) = 256;
          result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
        }

        v16 = 4;
      }

      else
      {
        *a1 = v4;
        if (v6)
        {
          v19 = v5 | (v6 << 8) | (v7 << 16);
          *(a1 + 8) = v5;
          *(a1 + 9) = 0;
          sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
          result = sub_1CF480358(v4, v19, v9, v8, 5u, sub_1CF1E53F8);
        }

        else
        {
          *(a1 + 8) = 256;
          result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
        }

        v16 = 5;
      }

      goto LABEL_41;
    }

    if (v10 == 6)
    {
      *a1 = v4;
      if (v6)
      {
        v17 = v5 | (v6 << 8) | (v7 << 16);
        *(a1 + 8) = v5;
        *(a1 + 9) = 0;
        sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
        result = sub_1CF480358(v4, v17, v9, v8, 6u, sub_1CF1E53F8);
      }

      else
      {
        *(a1 + 8) = 256;
        result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
      }

      v16 = 6;
      goto LABEL_41;
    }

    if (v10 == 7)
    {
      *a1 = v4;
      if (v6)
      {
        v11 = v5 | (v6 << 8) | (v7 << 16);
        *(a1 + 8) = v5;
        *(a1 + 9) = 0;
        sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
        result = sub_1CF480358(v4, v11, v9, v8, 7u, sub_1CF1E53F8);
      }

      else
      {
        *(a1 + 8) = 256;
        result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
      }

      v16 = 7;
LABEL_41:
      *(a1 + 32) = v16;
      return result;
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    v14 = 8;
LABEL_30:
    *(a1 + 32) = v14;
    return sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
  }

  if (*(v2 + 32) > 1u)
  {
    if (v10 != 2)
    {
      *a1 = v4;
      if (v6)
      {
        v18 = v5 | (v6 << 8) | (v7 << 16);
        *(a1 + 8) = v5;
        *(a1 + 9) = 0;
        sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
        result = sub_1CF480358(v4, v18, v9, v8, 3u, sub_1CF1E53F8);
      }

      else
      {
        *(a1 + 8) = 256;
        result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
      }

      v16 = 3;
      goto LABEL_41;
    }

    if ((v6 & 1) == 0)
    {
      LOBYTE(v5) = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 9) = (v6 & 1) == 0;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    v14 = 2;
    goto LABEL_30;
  }

  if (*(v2 + 32))
  {
    if ((v6 & 1) == 0)
    {
      LOBYTE(v5) = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v5;
    v14 = 1;
    *(a1 + 9) = (v6 & 1) == 0;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    goto LABEL_30;
  }

  *a1 = v4;
  if (v6)
  {
    v13 = v5 | (v6 << 8) | (v7 << 16);
    *(a1 + 8) = v5;
    *(a1 + 9) = 0;
    sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
    result = sub_1CF480358(v4, v13, v9, v8, 0, sub_1CF1E53F8);
  }

  else
  {
    *(a1 + 8) = 256;
    result = sub_1CEFCCBDC(v2, v20, &qword_1EC4BFF00, &qword_1CFA055D0);
  }

  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1CF39A140(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 40);
  v14[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA373D0);
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373F0);
  v14[3] = v8;
  v14[0] = v3;
  sub_1CF480278(v2, v4, v5, v6, v7, sub_1CF48034C);
  v10 = sub_1CEFF8EA0(v14);
  v12 = v11;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v12)
  {
    sub_1CF480358(v2, v4, v5, v6, v7, sub_1CF1E53F8);
    MEMORY[0x1D3868CC0](v10, v12);

    return v15;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF39A328(void *a1, unint64_t a2, char a3)
{
  v3 = a2;
  strcpy(v9, "    fs_id = ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    v3 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v3 = -a2;
  }

LABEL_7:
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  return v9[0];
}

uint64_t sub_1CF39A3EC(void *a1, uint64_t a2)
{
  v9[2] = 1129530692;
  v9[3] = 0xE400000000000000;
  v4 = sub_1CF7D55FC(sub_1CF485B68, v9, a1, a2);
  if (!v3)
  {
    v6 = v4;
    if ([v4 next])
    {
      sub_1CF25069C(v6, v10);
      if (v12)
      {
        if (v11 == *(v2 + 16) && v12 == *(v2 + 24))
        {
          sub_1CF250D40(v10);
LABEL_12:
          v5 = 1;
          return v5 & 1;
        }

        v8 = sub_1CF9E8048();
        sub_1CF250D40(v10);
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1CF250D40(v10);
      }
    }

    else
    {
    }

    v5 = 0;
  }

  return v5 & 1;
}

void *sub_1CF39A4F4(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  v42 = sub_1CF9E6118();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v42);
  v52 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a4;
  v51 = a5;
  if (((*(*a3 + 152))(v13) & 0x4000) == 0)
  {
LABEL_6:
    v16 = 0;
    return (v16 & 1);
  }

  v15 = *(a3 + 16);
  sub_1CF7EB934(a1, a2, a4, a5, v49);
  if (!v5)
  {
    memcpy(v48, v49, sizeof(v48));
    if (sub_1CF08B99C(v48) != 1)
    {
      memcpy(v47, v49, sizeof(v47));
      v37 = v47[60];
      v45 = a1;
      v46 = a2;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD978, &qword_1CF9FACB0);
      v40 = (**(a3 + 24) + 312);
      v41 = v18;
      v39 = *v40;
      v36 = (v11 + 8);
      v19 = -1;
      v20 = 1;
      *&v21 = 134217984;
      v35 = v21;
      v38 = xmmword_1CF9FA450;
      while (1)
      {
        if (!(v19 + 1000 * (v20 / 0x3E8)))
        {
          v23 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v24 = sub_1CF9E6108();
          v25 = sub_1CF9E72A8();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = v35;
            *(v26 + 4) = v20;
            _os_log_impl(&dword_1CEFC7000, v24, v25, "wasDeletionAcked: too many iterations %ld, is there a cycle in the tree?", v26, 0xCu);
            MEMORY[0x1D386CDC0](v26, -1, -1);
          }

          (*v36)(v52, v42);
        }

        v27 = sub_1CF8DCAA0();
        v28 = *(v27 + 52);
        v29 = (*(v27 + 48) + 7) & 0x1FFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = v38;
        *(v30 + 32) = v41;
        v31 = v39(&v45, v30, &v50, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        v32 = v31 >> 62;
        if (v31 >> 62)
        {
          if (sub_1CF9E7818())
          {
LABEL_33:
            v33 = 0;
            if (v32)
            {
              goto LABEL_35;
            }

LABEL_34:
            for (result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_1CF9E7818())
            {
              if (v33 == result)
              {

                goto LABEL_5;
              }

              if ((v31 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x1D3869C30](v33, v31);
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_45;
                }
              }

              else
              {
                if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_49;
                }

                v34 = *(v31 + 8 * v33 + 32);

                if (__OFADD__(v33, 1))
                {
LABEL_45:
                  __break(1u);
                  sub_1CEFCCC44(v47, &unk_1EC4BFC20, &unk_1CFA0A290);
                  return (v16 & 1);
                }
              }

              if (*(v34 + 128) >= v37)
              {
                break;
              }

              ++v33;
              if (!v32)
              {
                goto LABEL_34;
              }

LABEL_35:
              ;
            }

            sub_1CEFCCC44(v47, &unk_1EC4BFC20, &unk_1CFA0A290);
            v16 = 1;
            return (v16 & 1);
          }
        }

        else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        result = (*(**(a3 + 32) + 288))(&v43, &v45, &v50, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v44 == 255)
        {
          goto LABEL_5;
        }

        if (v44)
        {
          if (v44 == 1)
          {
            if (v46 == 1 && v43 == v45)
            {
              goto LABEL_5;
            }
          }

          else if (v43)
          {
            if (v46 == 2 && v45 == 1)
            {
              goto LABEL_5;
            }
          }

          else if (v46 == 2 && !v45)
          {
            goto LABEL_5;
          }
        }

        else if (!v46 && v43 == v45)
        {
          goto LABEL_5;
        }

        v45 = v43;
        v46 = v44;
        --v19;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }
      }
    }

    memcpy(v47, v49, sizeof(v47));
LABEL_5:
    sub_1CEFCCC44(v47, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_6;
  }

  return (v16 & 1);
}

uint64_t sub_1CF39AA68(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v57 = a4;
  if (((*(*a2 + 152))(v12) & 0x4000) == 0)
  {
LABEL_6:
    v15 = 0;
    return v15 & 1;
  }

  v14 = *(a2 + 16);
  sub_1CF7EBA74(a1, a3, a4, v55);
  if (!v4)
  {
    memcpy(v54, v55, sizeof(v54));
    if (sub_1CF08B99C(v54) != 1)
    {
      v43 = v9;
      memcpy(v53, v55, sizeof(v53));
      v44 = v53[60];
      v58 = a1;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
      v48 = *(a2 + 24);
      v49 = v17;
      v18 = *v48;
      v46 = *(*v48 + 312);
      v47 = v18 + 312;
      v42 = (v10 + 8);
      v51 = a1;
      v19 = -1;
      v20 = 1;
      *&v21 = 134217984;
      v41 = v21;
      v45 = xmmword_1CF9FA450;
      while (1)
      {
        if (!(v19 + 1000 * (v20 / 0x3E8)))
        {
          v22 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v23 = sub_1CF9E6108();
          v24 = sub_1CF9E72A8();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = v41;
            *(v25 + 4) = v20;
            _os_log_impl(&dword_1CEFC7000, v23, v24, "wasDeletionAcked: too many iterations %ld, is there a cycle in the tree?", v25, 0xCu);
            MEMORY[0x1D386CDC0](v25, -1, -1);
          }

          (*v42)(v50, v43);
        }

        v26 = sub_1CF8DCAC4();
        v27 = *(v26 + 52);
        v28 = (*(v26 + 48) + 7) & 0x1FFFFFFF8;
        v29 = swift_allocObject();
        *(v29 + 16) = v45;
        *(v29 + 32) = v49;
        v30 = v46(&v58, v29, &v56, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        v31 = v30 >> 62;
        if (v30 >> 62)
        {
          if (sub_1CF9E7818())
          {
LABEL_23:
            v39 = 0;
            if (v31)
            {
              goto LABEL_25;
            }

LABEL_24:
            for (result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_1CF9E7818())
            {
              if (v39 == result)
              {

                goto LABEL_5;
              }

              if ((v30 & 0xC000000000000001) != 0)
              {
                v40 = MEMORY[0x1D3869C30](v39, v30);
                if (__OFADD__(v39, 1))
                {
                  goto LABEL_35;
                }
              }

              else
              {
                if (v39 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_41;
                }

                v40 = *(v30 + 8 * v39 + 32);

                if (__OFADD__(v39, 1))
                {
LABEL_35:
                  __break(1u);

                  sub_1CEFCCC44(v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                  return v15 & 1;
                }
              }

              if (*(v40 + 128) >= v44)
              {
                break;
              }

              ++v39;
              if (!v31)
              {
                goto LABEL_24;
              }

LABEL_25:
              ;
            }

            sub_1CEFCCC44(v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v15 = 1;
            return v15 & 1;
          }
        }

        else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        (*(**(a2 + 32) + 288))(&v52, &v58, &v56, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v32 = v52;
        if (!v52)
        {

          goto LABEL_5;
        }

        v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v35 = v34;
        if (v33 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v35 == v36)
        {

          goto LABEL_5;
        }

        v37 = sub_1CF9E8048();

        if (v37)
        {

          goto LABEL_5;
        }

        v58 = v32;
        --v19;
        v51 = v32;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }
      }
    }

    memcpy(v53, v55, sizeof(v53));
LABEL_5:
    sub_1CEFCCC44(v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_6;
  }

  return v15 & 1;
}

BOOL sub_1CF39B038(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = (*(*v4 + 112))();
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v10 = sub_1CEFE7394(a1, a2);
    if (v11)
    {
      if (v10 == 12565487 && v11 == 0xA300000000000000)
      {

LABEL_10:
        v14 = sub_1CF9E69E8();
        v15 = sub_1CF025150(v14, a1, a2);
        a1 = MEMORY[0x1D3868C10](v15);
        a2 = v16;

        goto LABEL_12;
      }

      v13 = sub_1CF9E8048();

      if (v13)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v17 = sub_1CEFE7394(a3, a4);
    if (v18)
    {
      if (v17 == 12565487 && v18 == 0xA300000000000000)
      {

        goto LABEL_17;
      }

      v19 = sub_1CF9E8048();

      if (v19)
      {
LABEL_17:
        v20 = sub_1CF9E69E8();
        v21 = sub_1CF025150(v20, a3, a4);
        v22 = MEMORY[0x1D3868C10](v21);
        a4 = v23;

        if (a1 != v22)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    if (a1 != a3)
    {
LABEL_22:
      v24 = sub_1CF9E8048();

      return v24 & 1;
    }

LABEL_20:
    if (a2 == a4)
    {

      return 1;
    }

    goto LABEL_22;
  }

  sub_1CEFE4E68();
  return sub_1CF9E7678() == 0;
}

uint64_t sub_1CF39B288()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 9))
  {
    v3 = v1;
    sub_1CF9E7948();

    v11 = 980444732;
    v4 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v4);

    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v5 = sub_1CF19F0C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 42) << 16));
    MEMORY[0x1D3868CC0](v5);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    sub_1CEFD0994(v1, v2, 1);
  }

  else
  {
    sub_1CF9E7948();

    v11 = 980641340;
    v8 = VFSItemID.description.getter(v6, v7);
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v9 = sub_1CF19F0C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 42) << 16));
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  }

  return v11;
}

uint64_t sub_1CF39B434(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (!v3)
  {
    return sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA3DC40, v4, v5);
  }

  sub_1CF9E7948();

  *&v43[0] = 0xD000000000000017;
  *(&v43[0] + 1) = 0x80000001CFA3DC20;
  *&v41 = *(a2 + 16);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  sub_1CF4FB2BC(0xD000000000000017, 0x80000001CFA3DC20, v4, v5);

  v8 = 0;
  v35 = a2;
  v11 = *(a2 + 64);
  v10 = a2 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
LABEL_12:
    v20 = __clz(__rbit64(v14)) | (v8 << 6);
    v21 = *(v35 + 56);
    v22 = (*(v35 + 48) + 48 * v20);
    v23 = *(v22 + 27);
    v24 = v22[1];
    v41 = *v22;
    *v42 = v24;
    *&v42[11] = v23;
    v25 = (v21 + 24 * v20);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v36 = v41;
    v38 = *v42;
    v29 = v23 >> 40;
    v30 = HIBYTE(v23);
    v31 = (HIDWORD(v23) >> 8);
    sub_1CEFCCBDC(&v41, &v39, &qword_1EC4BE1A0, &unk_1CFA17130);

    if (!*(&v38 + 1))
    {
    }

    v43[0] = v36;
    v43[1] = v38;
    v44 = v29;
    v45 = v31;
    v46 = (v31 | (v30 << 16)) >> 16;
    v32 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    *&v41 = 538976288;
    *(&v41 + 1) = 0xE400000000000000;
    v33 = sub_1CF39B288();
    MEMORY[0x1D3868CC0](v33);

    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    if (v28)
    {
      v39 = 0x3A6E6961686320;
      v40 = 0xE700000000000000;
      MEMORY[0x1D3868CC0](v26, v28);
      v17 = v39;
      v16 = v40;
    }

    else
    {
      v17 = 0;
      v16 = 0xE000000000000000;
    }

    v14 &= v14 - 1;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();

    v39 = 0x657620746E65733CLL;
    v40 = 0xEF3A736E6F697372;
    v18 = MEMORY[0x1D3868FE0](v27, MEMORY[0x1E69E6158]);
    MEMORY[0x1D3868CC0](v18);

    MEMORY[0x1D3868CC0](v17, v16);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v39, v40);

    sub_1CF4FB2BC(v41, *(&v41 + 1), v32, v37);

    result = sub_1CEFCCC44(v43, &qword_1EC4BE1A0, &unk_1CFA17130);
  }

  while (1)
  {
    v19 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v10 + 8 * v19);
    ++v8;
    if (v14)
    {
      v8 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF39B7F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 160);
  v5 = *(v0 + 368);
  if (v1 == 255 && v5 == 0)
  {
    v5 = 0;
    if ((*(v0 + 352) & 2) != 0)
    {
      return 0;
    }
  }

  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (!v8 && ((v7 | v2) & 0x10) != 0)
  {
    return 0;
  }

  if (v5 != 3 && (v5 != 4 || *(v0 + 352) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 360)))
  {
    return 5;
  }

  if (*(v0 + 264))
  {
    return 6;
  }

  if (v7)
  {
    return 7;
  }

  if (v1 != 255 && v8 && (*(v0 + 192) & 0xF000000000000000) != 0xB000000000000000 && !*(v0 + 344))
  {
    return 8;
  }

  if (v4 != 3 && (v4 != 4 || *(v0 + 144) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 152)))
  {
    return 1;
  }

  if (*(v0 + 24))
  {
    return 2;
  }

  if (v2)
  {
    return 3;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return 4 * ((v3 & 0xFB) == 0);
}

uint64_t sub_1CF39B904()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 120);
  v4 = *(v0 + 368);
  if (!*v0 && !*(v0 + 368) && (*(v0 + 352) & 2) != 0)
  {
    return 0;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  if (v5 == 255 && ((v6 | v1) & 0x10) != 0)
  {
    return 0;
  }

  if (v4 != 3 && (v4 != 4 || *(v0 + 352) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 360)))
  {
    return 5;
  }

  if (*(v0 + 232))
  {
    return 6;
  }

  if (v6)
  {
    return 7;
  }

  if (*v0 && v5 != 255 && (*(v0 + 152) & 0xF000000000000000) != 0xB000000000000000 && !*(v0 + 344))
  {
    return 8;
  }

  if (v3 != 3 && (v3 != 4 || *(v0 + 104) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 112)))
  {
    return 1;
  }

  if (*(v0 + 16))
  {
    return 2;
  }

  if (v1)
  {
    return 3;
  }

  if (v2 == 5)
  {
    return 0;
  }

  return 4 * ((v2 & 0xFB) == 0);
}

void *sub_1CF39BA14()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v9 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1CF1F8AAC(*(v2 + 16), 0);
    v5 = sub_1CF1F97A8(&v10, (v4 + 4), v3, v2);

    sub_1CEFCB59C();
    if (v5 == v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v6 = objc_sync_exit(v0);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v4;
}

uint64_t sub_1CF39BB90(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v9 = a1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 24);
  swift_getObjectType();
  sub_1CF9E6F38();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CF484490;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CF4844AC;
    *(v6 + 24) = v5;

    v11[0] = v1;
    sub_1CF4844D4(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
  v10 = isEscapingClosureAtFileLocation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF39BD88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  swift_beginAccess();
  v5 = *(v4 + 80);

  sub_1CF39B434(a2, v5);

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA3DC00, v6, v7);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484500, a1, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

void *sub_1CF39BEC8(void *result, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      v4 = [result bindObjectParameter_];
      goto LABEL_9;
    }

    v3 = (a2 != 0) << 63;
LABEL_7:
    v4 = [result bindLongParameter_];
LABEL_9:
    v5 = v4;
    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v6;
  }

  if (!a3)
  {
    v3 = -a2;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF39BF70(uint64_t a1)
{
  if (a1 < 0)
  {
    (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 448))(&v8);
    v1 = v9 | (v10 << 16);
    if ((~v9 & 0xFF00) != 0)
    {
      if ((v9 & 0x100) != 0)
      {
        v2 = 0;
      }

      else
      {
        v2 = v9;
      }

      v11 = v8;
      LOBYTE(v12) = v2;
      HIBYTE(v12) = (v9 & 0x100) == 0;
      v13 = v10;
      v3 = v8;
      sub_1CF480E9C(v8, v9 | (v10 << 16));
      sub_1CF480E54(v3, v1);
    }

    else
    {
      sub_1CF480E54(v8, v9 | (v10 << 16));
      v11 = 0;
      v13 = 0;
      v12 = -256;
    }
  }

  else
  {
    (*(*a1 + 448))(&v11);
  }

  v4 = v12 | (v13 << 16);
  v5 = v11;
  if ((~v12 & 0xFF00) != 0)
  {
    if ((v12 & 0x100) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0248, &qword_1CFA05758);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1CF9FA450;
      *(v6 + 32) = v5;
      *(v6 + 40) = v4;
      *(v6 + 41) = 0;
      *(v6 + 42) = BYTE2(v4);
      sub_1CF48034C(v5, v4, 0);
      sub_1CF1E53F8(v5, v4, 0);
      return v6;
    }

    sub_1CF48034C(v11, v12 | (v13 << 16), 1);
    sub_1CF1E53F8(v5, v4, 1);
  }

  sub_1CF480E3C(v5, v4);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CF39C138(uint64_t a1)
{
  if (a1 < 0)
  {
    (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 448))(&v7);
    v1 = v8 | (v9 << 16);
    if ((~v8 & 0xFF00) != 0)
    {
      v10 = v7;
      LOBYTE(v11) = v8 & ((v1 << 23) >> 31);
      HIBYTE(v11) = (v8 & 0x100) == 0;
      v12 = v9;
      v2 = v7;
      sub_1CF480E6C(v7, v8 | (v9 << 16));
      sub_1CF480E3C(v2, v1);
    }

    else
    {
      sub_1CF480E3C(v7, v8 | (v9 << 16));
      v10 = 0;
      v12 = 0;
      v11 = -256;
    }
  }

  else
  {
    (*(*a1 + 448))(&v10);
  }

  v3 = v11 | (v12 << 16);
  v4 = v10;
  if ((~v11 & 0xFF00) != 0)
  {
    if ((v11 & 0x100) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01F8, &qword_1CFA05708);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1CF9FA450;
      *(v5 + 32) = v4;
      *(v5 + 40) = v3;
      *(v5 + 41) = 0;
      *(v5 + 42) = BYTE2(v3);
      sub_1CEFD0988(v4, v3, 0);
      sub_1CEFD0994(v4, v3, 0);
      return v5;
    }

    sub_1CEFD0988(v10, v11 | (v12 << 16), 1);
    sub_1CEFD0994(v4, v3, 1);
  }

  sub_1CF480E54(v4, v3);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CF39C304(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t *))
{
  v6 = v4;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  if (*(v6 + 112))
  {
    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v15);
    sub_1CF4FB2BC(0xD000000000000025, 0x80000001CFA40040, v15, v16);
LABEL_12:
    v29 = a3[3];
    v30 = a3[4];
    v31 = __swift_project_boxed_opaque_existential_1(a3, v29);
    MEMORY[0x1EEE9AC00](v31);
    *(&v32 - 2) = v6;
    *(&v32 - 1) = &v37;
    return sub_1CF4FB38C(8224, 0xE200000000000000, a4, (&v32 - 4), v29, MEMORY[0x1E69E7CA8] + 8, v30);
  }

  v17 = *(v6 + 104);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  result = (*(v11 + 8))(v14, v10);
  v21 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = a3[3];
  v24 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v23);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1CF9E7948();

  v35 = 0xD000000000000021;
  v36 = 0x80000001CFA40070;
  result = v17 - v22;
  if (__OFSUB__(v17, v22))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
LABEL_11:
    v28 = sub_1CF04F854(result);
    v33 = v25;
    v34 = v26;
    MEMORY[0x1D3868CC0](v28);

    MEMORY[0x1D3868CC0](v33, v34);

    sub_1CF4FB2BC(v35, v36, v23, v24);

    goto LABEL_12;
  }

  v27 = __OFSUB__(0, result);
  result = v22 - v17;
  if (!v27)
  {
    v26 = 0xE100000000000000;
    v25 = 45;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CF39C5F4(void *a1, uint64_t a2, void *a3)
{
  v5 = a2;
  v39 = a1;
  if (*(a2 + 162) != 1)
  {
    goto LABEL_4;
  }

  v4 = a2;
  v30 = a3;
  v6 = v3;
  v7 = v39[3];
  v8 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v7);
  if (qword_1EDEACB30 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = [qword_1EDEBBB20 description];
    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;

    sub_1CF4FB2BC(v10, v12, v7, v8);

    v3 = v6;
    v5 = v4;
LABEL_4:
    MEMORY[0x1EEE9AC00](a1);
    v27[4] = 0;
    v27[5] = 0;
    v27[2] = v5;
    v27[3] = sub_1CF337170;
    v28 = 1;
    v15 = sub_1CF7D5474(sub_1CF485AB8, v27, v13, v14);
    if (v3)
    {
      v29 = v5;
      v16 = v39[3];
      v17 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v16);
      *&v31[0] = 0;
      *(&v31[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA400A0);
      MEMORY[0x1D3868CC0](*(v29 + 32), *(v29 + 40));
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v33 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      sub_1CF4FB2BC(*&v31[0], *(&v31[0] + 1), v16, v17);

      return;
    }

    v18 = v15;
    if (![v15 next])
    {
      break;
    }

    v29 = v5;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = sub_1CF1CBF6C();
      sub_1CF24642C(v18, v7, 0, &v33);

      v8 = *(sub_1CF1CBF6C() + 2);

      if (v8 >> 31)
      {
        break;
      }

      v19 = sub_1CF1CB920();
      sub_1CF24041C(v18, v19, v8, v31);

      v37[3] = v31[3];
      v20 = v33;
      v38 = v32;
      v37[1] = v31[1];
      v37[2] = v31[2];
      v37[0] = v31[0];
      v30 = v6;
      v21 = v34;
      v4 = v35;
      v22 = v36;
      v23 = v39[3];
      v24 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v23);
      sub_1CF8DC15C(v20, v21 | (v22 << 16) | (v4 << 8));
      *&v31[0] = v20;
      *(&v31[0] + 1) = v25;
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v26 = sub_1CF94B3EC();
      MEMORY[0x1D3868CC0](v26);

      sub_1CF4FB2BC(*&v31[0], *(&v31[0] + 1), v23, v24);

      sub_1CF2CA1E8(v37);
      sub_1CF1E53F8(v33, v34, v35);
      objc_autoreleasePoolPop(v30);
      if (([v18 next] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
}

void sub_1CF39CA40(void *a1, uint64_t a2, void *a3)
{
  v5 = a2;
  v39 = a1;
  if (*(a2 + 162) != 1)
  {
    goto LABEL_4;
  }

  v4 = a2;
  v30 = a3;
  v6 = v3;
  v7 = v39[3];
  v8 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v7);
  if (qword_1EDEACB30 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = [qword_1EDEBBB20 description];
    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;

    sub_1CF4FB2BC(v10, v12, v7, v8);

    v3 = v6;
    v5 = v4;
LABEL_4:
    MEMORY[0x1EEE9AC00](a1);
    v27[4] = 0;
    v27[5] = 0;
    v27[2] = v5;
    v27[3] = sub_1CF337170;
    v28 = 1;
    v15 = sub_1CF7D5474(sub_1CF484144, v27, v13, v14);
    if (v3)
    {
      v29 = v5;
      v16 = v39[3];
      v17 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v16);
      *&v31[0] = 0;
      *(&v31[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA400A0);
      MEMORY[0x1D3868CC0](*(v29 + 32), *(v29 + 40));
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v33 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      sub_1CF4FB2BC(*&v31[0], *(&v31[0] + 1), v16, v17);

      return;
    }

    v18 = v15;
    if (![v15 next])
    {
      break;
    }

    v29 = v5;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = sub_1CF1CC164();
      sub_1CF24680C(v7, v18, 0, &v33);

      v8 = *(sub_1CF1CC164() + 2);

      if (v8 >> 31)
      {
        break;
      }

      v19 = sub_1CF1CB920();
      sub_1CF24041C(v18, v19, v8, v31);

      v37[3] = v31[3];
      v20 = v33;
      v38 = v32;
      v37[1] = v31[1];
      v37[2] = v31[2];
      v37[0] = v31[0];
      v30 = v6;
      v21 = v34;
      v4 = v35;
      v22 = v36;
      v23 = v39[3];
      v24 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v23);
      sub_1CF8DC2D4(v20, v21 | (v22 << 16) | (v4 << 8));
      *&v31[0] = v20;
      *(&v31[0] + 1) = v25;
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v26 = sub_1CF94B3EC();
      MEMORY[0x1D3868CC0](v26);

      sub_1CF4FB2BC(*&v31[0], *(&v31[0] + 1), v23, v24);

      sub_1CF2CA1E8(v37);
      sub_1CEFD0994(v33, v34, v35);
      objc_autoreleasePoolPop(v30);
      if (([v18 next] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
}

uint64_t sub_1CF39CE8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FA450;
  *(v1 + 56) = type metadata accessor for SQLHistoryTable();
  *(v1 + 64) = &off_1F4BF45E8;
  *(v1 + 32) = v0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return v1;
  }

  v4 = v2 + 32;

  while (1)
  {
    sub_1CF1A91AC(v4, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v8 = sub_1CF339634(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v9 = *(v8 + 16);
    v10 = *(v1 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    if (v11 > *(v1 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v16 = v10 + v9;
      }

      else
      {
        v16 = *(v1 + 16);
      }

      result = sub_1CF1F7048(1, v16, 1, v1);
      v1 = result;
      v10 = *(result + 16);
      if (*(v8 + 16))
      {
LABEL_8:
        if (((*(v1 + 24) >> 1) - v10) < v9)
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE770, &qword_1CFA059A0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v1 + 16);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_22;
          }

          *(v1 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v12 = *(v8 + 16);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1CF39D060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FA450;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  *(v1 + 64) = &off_1F4C025C0;
  *(v1 + 32) = v0;
  v2 = sub_1CF3F06B4();
  v3 = *(v2 + 16);
  if (!v3)
  {

LABEL_18:

    return v1;
  }

  v4 = v2 + 32;

  while (1)
  {
    sub_1CF1A91AC(v4, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v8 = sub_1CF339634(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v9 = *(v8 + 16);
    v10 = *(v1 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    if (v11 > *(v1 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v16 = v10 + v9;
      }

      else
      {
        v16 = *(v1 + 16);
      }

      result = sub_1CF1F7048(1, v16, 1, v1);
      v1 = result;
      v10 = *(result + 16);
      if (*(v8 + 16))
      {
LABEL_8:
        if (((*(v1 + 24) >> 1) - v10) < v9)
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE770, &qword_1CFA059A0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v1 + 16);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_22;
          }

          *(v1 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v12 = *(v8 + 16);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1CF39D24C(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v71 - v9;
  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v71 - v17;
  v79 = sub_1CF7D5474(sub_1CF342774, 0, a1, a2);
  if ([v79 next])
  {
    v19 = [a1 userVersion];
    v20 = [v19 unsignedIntValue];

    v21 = [v79 unsignedLongAtIndex_];
    if ([v79 isNullAtIndex_])
    {
      goto LABEL_27;
    }

    v75 = v20;
    v76 = v21;
    v77 = v12;
    v78 = a3;
    v74 = v3;
    if (!swift_dynamicCastMetatype())
    {
      v22 = sub_1CF9E5688();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v25 = [v79 dataAtIndex_];
      v26 = sub_1CF9E5B88();
      v28 = v27;

      sub_1CF042F54(&qword_1EDEAECB8, MEMORY[0x1E69695A8]);
      sub_1CF9E5668();
      sub_1CEFE4714(v26, v28);

      v30 = v78[4];
      v72 = v78[3];
      v73 = v30;
      v71[1] = __swift_project_boxed_opaque_existential_1(v78, v72);
      v83[0] = 0;
      v83[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA40BB0);
      v31 = sub_1CF3B0B48();
      MEMORY[0x1D3868CC0](v31);

      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      v81 = 114;
      v82 = 0xE100000000000000;
      v80 = v76;
      v32 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v32);

      MEMORY[0x1D3868CC0](v81, v82);

      MEMORY[0x1D3868CC0](0x3D4449555520, 0xE600000000000000);
      v33 = sub_1CF042F54(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
      v34 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v34);

      sub_1CF4FB2BC(v83[0], v83[1], v72, v73);

      if ([v79 isNullAtIndex_])
      {
        (*(v77 + 56))(v10, 1, 1, v11);
        sub_1CEFCCC44(v10, &unk_1EC4BEDE0, qword_1CF9FA390);
LABEL_13:
        if (([v79 isNullAtIndex_] & 1) == 0)
        {
          v46 = sub_1CF1E05D8(4);
          v48 = v47;
          v49 = v78[3];
          v50 = v78[4];
          __swift_project_boxed_opaque_existential_1(v78, v49);
          strcpy(v83, "+ FP anchor: ");
          HIWORD(v83[1]) = -4864;
          v51 = sub_1CF04D35C(v46, v48);
          MEMORY[0x1D3868CC0](v51);

          sub_1CF4FB2BC(v83[0], v83[1], v49, v50);
        }

        v52 = v78;
        v53 = v78[3];
        v54 = v78[4];
        __swift_project_boxed_opaque_existential_1(v78, v53);
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v83[0] = 0xD000000000000012;
        v83[1] = 0x80000001CFA40C10;
        v81 = [v79 unsignedLongAtIndex_];
        v55 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v55);

        sub_1CF4FB2BC(v83[0], v83[1], v53, v54);

        v56 = v52[3];
        v57 = v52[4];
        __swift_project_boxed_opaque_existential_1(v52, v56);
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v83[0] = 0xD000000000000011;
        v83[1] = 0x80000001CFA40C30;
        v58 = sub_1CF7F48D8([v79 integerAtIndex_]);
        MEMORY[0x1D3868CC0](v58);

        sub_1CF4FB2BC(v83[0], v83[1], v56, v57);

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v60 = *(Strong + 88);

          v61 = v52[3];
          v62 = v52[4];
          __swift_project_boxed_opaque_existential_1(v52, v61);
          if (v60 == 1)
          {
            v83[0] = 0;
            v83[1] = 0xE000000000000000;
            sub_1CF9E7948();

            v83[0] = 0xD000000000000014;
            v83[1] = 0x80000001CFA40C90;
            v63 = [v79 integerAtIndex_];
            v64 = v63 == 1;
            if (v63 == 1)
            {
              v65 = 0xD000000000000019;
            }

            else
            {
              v65 = 0x676E696E6E7572;
            }

            if (v64)
            {
              v66 = 0x80000001CFA40CB0;
            }

            else
            {
              v66 = 0xE700000000000000;
            }

            MEMORY[0x1D3868CC0](v65, v66);

            sub_1CF4FB2BC(v83[0], v83[1], v61, v62);
          }

          else
          {
            sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA40C50, v61, v62);
          }

          v67 = v77;
          v68 = v52[3];
          v69 = v52[4];
          __swift_project_boxed_opaque_existential_1(v52, v68);
          v83[0] = 0;
          v83[1] = 0xE000000000000000;
          sub_1CF9E7948();

          v83[0] = 0xD000000000000014;
          v83[1] = 0x80000001CFA40C70;
          v81 = [v79 unsignedLongAtIndex_];
          v70 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v70);

          sub_1CF4FB2BC(v83[0], v83[1], v68, v69);

          (*(v67 + 8))(v18, v11);
          return;
        }

        __break(1u);
LABEL_27:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if ([v79 isNullAtIndex_])
      {
        goto LABEL_27;
      }

      v76 = v33;
      if (!swift_dynamicCastMetatype())
      {
        v35 = *(v22 + 48);
        v36 = *(v22 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v37 = [v79 dataAtIndex_];
        v38 = sub_1CF9E5B88();
        v40 = v39;

        sub_1CF9E5668();
        sub_1CEFE4714(v38, v40);

        v41 = v77;
        (*(v77 + 56))(v10, 0, 1, v11);
        (*(v41 + 32))(v15, v10, v11);
        v42 = v78[3];
        v43 = v78[4];
        __swift_project_boxed_opaque_existential_1(v78, v42);
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v83[0] = 0xD000000000000010;
        v83[1] = 0x80000001CFA40BD0;
        v44 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v44);

        MEMORY[0x1D3868CC0](0x496D616572745320, 0xEA00000000003D44);
        v81 = [v79 unsignedLongAtIndex_];
        v45 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v45);

        sub_1CF4FB2BC(v83[0], v83[1], v42, v43);

        (*(v41 + 8))(v15, v11);
        goto LABEL_13;
      }
    }

    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v29 = v79;
}

char *sub_1CF39DEA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - v11;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *&v4[qword_1EDEBBAC8] = 0;
  v13 = qword_1EDEAC7F8;
  *&v39[0] = 0;
  sub_1CF9E6268();
  (*(v9 + 32))(&v4[v13], v12, v8);
  *&v4[qword_1EDEAC7F0] = 0;
  *&v4[qword_1EDEBBAC0] = MEMORY[0x1E69E7CC0];
  v4[qword_1EDEBBAE8] = 0;
  *&v4[qword_1EDEBBAD0] = 0;
  *&v4[qword_1EDEBBB18] = 0;
  v14 = qword_1EDEBBAD8;
  if (qword_1EDEACD18 != -1)
  {
    swift_once();
  }

  v39[6] = xmmword_1EDEBBB90;
  v39[7] = xmmword_1EDEBBBA0;
  v39[8] = xmmword_1EDEBBBB0;
  v39[2] = xmmword_1EDEBBB50;
  v39[3] = xmmword_1EDEBBB60;
  v39[4] = xmmword_1EDEBBB70;
  v39[5] = xmmword_1EDEBBB80;
  v39[0] = xmmword_1EDEBBB30;
  v39[1] = xmmword_1EDEBBB40;
  memmove(&v4[v14], &xmmword_1EDEBBB30, 0x90uLL);
  *&v4[qword_1EDEBBB10 + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = qword_1EDEBBB00;
  v16 = sub_1CF9E5CF8();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = qword_1EDEBBAE0;
  sub_1CF3386F8(v39, &v35);
  *&v4[v18] = 0;
  *&v4[qword_1EDEAC808] = 0;
  *&v4[qword_1EDEAC820] = 0;
  swift_beginAccess();
  *&v34[0] = 0;
  sub_1CF9E6268();
  swift_endAccess();
  if (a3)
  {
    *&v4[qword_1EDEBBAF8] = 0;
  }

  else
  {
    v19 = [objc_opt_self() sharedInstance];
    *&v4[qword_1EDEBBAF8] = v19;
    if (v19)
    {
      v20 = [v19 isCacheDeleteCacheable];
      goto LABEL_8;
    }
  }

  v20 = 1;
LABEL_8:
  v4[qword_1EDEBBAF0] = v20;
  v35 = a1;
  v36 = a2;
  MEMORY[0x1D3868CC0](0x616F6C6E776F6423, 0xEB00000000726564);
  v21 = v36;
  *(v4 + 4) = v35;
  *(v4 + 5) = v21;
  v4[qword_1EDEBBB08] = 0;
  if (fpfs_supports_bgst_improvements())
  {
    v22 = type metadata accessor for GlobalResourceStore();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_1CF51BB3C();
    v37 = v22;
    v38 = &off_1F4C04308;
    v35 = v25;
    sub_1CF1A91AC(&v35, v34);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0640, &qword_1CFA05A50);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    *(v29 + 72) = 0;
    sub_1CF054EA0(v34, v29 + 16);
    v30 = v29 + *(*v29 + 136);
    v17(v30, 1, 1, v16);
    v31 = v30 + *(type metadata accessor for FPDownloadSchedulerFastPassState() + 20);
    *v31 = 0;
    *(v31 + 8) = 1;
    *(v29 + 56) = 0xD000000000000024;
    *(v29 + 64) = 0x80000001CFA463E0;
    sub_1CF1A7030();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v32 = *&v4[qword_1EDEAC820];
    *&v4[qword_1EDEAC820] = v29;
  }

  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBC10 ping];
  return v4;
}

uint64_t sub_1CF39E3AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-v3];
  result = fpfs_supports_bgst_improvements();
  if (result)
  {
    v6 = *(v0 + qword_1EDEAC820);
    if (v6)
    {

      sub_1CF7F3BA8();
      v7 = &v6[*(*v6 + 136)];
      swift_beginAccess();
      v8 = v7 + *(type metadata accessor for FPDownloadSchedulerFastPassState() + 20);
      if (*(v8 + 8))
      {
        v9 = 0;
      }

      else
      {
        v9 = *v8;
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        *v8 = v9 + 1;
        *(v8 + 8) = 0;
        v6[72] = 1;
        sub_1CF9E5CE8();
        v10 = sub_1CF9E5CF8();
        (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
        swift_beginAccess();
        sub_1CEFDA9E0(v4, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        swift_endAccess();
        v6[72] = 1;
        sub_1CF7F241C();
        if (qword_1EDEAD4D8 == -1)
        {
LABEL_8:
          [qword_1EDEBBC10 enableFastPassRunWithSemanticVersion_];
        }
      }

      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF39E590(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v20 = a2;
  v7 = *(v6 + 16);
  if (v7)
  {
    v11 = *(v6 + 24);

    v13 = v7(v12);
    result = sub_1CEFF7124(v7);
    if (v13)
    {
      v14 = *(v13 + 120);
      v15 = *(v14 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        *(v14 + 16) = v17;
        MEMORY[0x1EEE9AC00](result);
        v18[2] = &v19;
        v18[3] = a5;
        v18[4] = a6;

        sub_1CF7D5920(sub_1CF480FC4, v18, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1CF39E6B8(void *a1, unint64_t a2, char a3, uint64_t (*a4)(void *))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v13 = a4(a1);
  MEMORY[0x1D3868CC0](v13);

  return 0;
}

uint64_t sub_1CF39E858(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = qword_1EDEBBB18;
  v13 = *(a1 + qword_1EDEBBB18);
  if (v13)
  {
    v14 = v13 + *(*v13 + 136);
    swift_beginAccess();
    v15 = *(v14 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52));
    if (v15)
    {

      v16 = v15;
      sub_1CF7BEE14(1uLL);
    }
  }

  if (fpfs_supports_bgst_improvements() && *(a1 + qword_1EDEBBAE0) != 2)
  {
    return 0;
  }

  v83 = v9;
  v84 = v8;
  v17 = a1[2];
  v89 = v4;
  if (!v17)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    goto LABEL_43;
  }

  v18 = a1[3];

  v20 = v17(v19);
  sub_1CEFF7124(v17);
  if (!v20)
  {
LABEL_21:
    v33 = a1[2];
    v87 = 0;
    v88 = 0xE000000000000000;
    if (v33)
    {
      v34 = a1[3];

      v36 = v33(v35);
      sub_1CEFF7124(v33);
      if (v36)
      {
        v85 = 0;
        v86 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA426B0);

        v38 = objc_sync_enter(v37);
        if (!v38)
        {
          v39 = qword_1EDEADAA8;
          v40 = v36[qword_1EDEADAA8];
          v41 = objc_sync_exit(v36);
          if (v41)
          {
LABEL_78:
            MEMORY[0x1EEE9AC00](v41);
            v81 = &v82 - 4;
            *(&v82 - 2) = v36;
LABEL_79:
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v81, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          if (v40)
          {
            v42 = 1702195828;
          }

          else
          {
            v42 = 0x65736C6166;
          }

          if (v40)
          {
            v43 = 0xE400000000000000;
          }

          else
          {
            v43 = 0xE500000000000000;
          }

          MEMORY[0x1D3868CC0](v42, v43);

          MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA426D0);
          if (v36[90])
          {
            v44 = 0xD000000000000019;
          }

          else
          {
            v44 = 0x676E696E6E7572;
          }

          if (v36[90])
          {
            v45 = 0x80000001CFA40CB0;
          }

          else
          {
            v45 = 0xE700000000000000;
          }

          MEMORY[0x1D3868CC0](v44, v45);

          MEMORY[0x1D3868CC0](32, 0xE100000000000000);
          MEMORY[0x1D3868CC0](v85, v86);

          v38 = objc_sync_enter(v36);
          if (!v38)
          {
            v46 = v36[v39];
            v41 = objc_sync_exit(v36);
            if (!v41)
            {

              if ((v46 & 1) != 0 && (v47 = *(a1 + v82)) != 0 && (v48 = v47 + *(*v47 + 136), swift_beginAccess(), (v49 = *(v48 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52))) != 0))
              {

                v50 = v49;
                sub_1CF7BEE14(2uLL);
              }

              else
              {
              }

              goto LABEL_44;
            }

            goto LABEL_78;
          }
        }

        MEMORY[0x1EEE9AC00](v38);
        v80 = &v82 - 4;
        *(&v82 - 2) = v36;
LABEL_77:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v80, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

LABEL_43:
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA42670);
LABEL_44:
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1CF9E7948();

    v51 = qword_1EDEBBAF0;
    v52 = *(a1 + qword_1EDEBBAF0);
    v85 = 0xD000000000000018;
    v86 = 0x80000001CFA42690;
    if (v52)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (v52)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v53, v54);

    MEMORY[0x1D3868CC0](v85, v86);

    v55 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v57 = v87;
    v56 = v88;

    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E7288();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v85 = v61;
      *v60 = 136446210;
      v62 = sub_1CEFD0DF0(v57, v56, &v85);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_1CEFC7000, v58, v59, "🔮 Background downloader not running: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v12, v84);
    if ((*(a1 + v51) & 1) == 0)
    {
      v63 = *(a1 + v82);
      if (v63)
      {
        v64 = v63 + *(*v63 + 136);
        swift_beginAccess();
        v65 = *(v64 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52));
        if (v65)
        {

          v66 = v65;
          sub_1CF7BEE14(4uLL);
        }
      }
    }

    return 0;
  }

  v22 = objc_sync_enter(v21);
  if (v22)
  {
LABEL_72:
    MEMORY[0x1EEE9AC00](v22);
    v80 = &v82 - 4;
    *(&v82 - 2) = v20;
    goto LABEL_77;
  }

  v23 = *(v20 + qword_1EDEADAA8);
  v24 = objc_sync_exit(v20);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v81 = &v82 - 4;
    *(&v82 - 2) = v20;
    goto LABEL_79;
  }

  if ((v23 & 1) != 0 || *(a1 + qword_1EDEBBAF0) != 1)
  {

    goto LABEL_20;
  }

  v25 = *(v20 + 90);

  if (v25)
  {
LABEL_20:

    goto LABEL_21;
  }

  v26 = *(v20 + 120);
  v28 = *(v26 + 16);
  v27 = *(v26 + 24);
  v29 = __OFSUB__(v27, v28);
  v30 = v27 - v28;
  if (v29)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v30 < 1)
  {

    return 0;
  }

  else
  {
    v31 = *(v20 + 120);

    v32 = sub_1CF7D55FC(sub_1CF34AC54, 0, a2, a3);
    if (v4)
    {
    }

    v67 = v32;
    v85 = 0;
    v22 = [v32 next];
    if (v22)
    {
      while (1)
      {
        v69 = *(v26 + 16);
        v68 = *(v26 + 24);
        v29 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v29)
        {
          break;
        }

        if (v70 >= 1)
        {
          v71 = objc_autoreleasePoolPush();
          sub_1CF39F2D8(v67, v20, a2, a3, a1, &v85);
          objc_autoreleasePoolPop(v71);
          v22 = [v67 next];
          if (v22)
          {
            continue;
          }
        }

        v72 = v85;
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_71;
    }

    v72 = 0;
LABEL_66:
    v89 = v72;
    v73 = swift_allocObject();
    v73[2] = 0xD000000000000022;
    v73[3] = 0x80000001CFA42420;
    v84 = 0x80000001CFA42420;
    v73[4] = 0;
    v73[5] = 0xE000000000000000;
    sub_1CF3A1FD4(v89, a2, a3, sub_1CF356004, v73);
    v75 = v74;

    v76 = swift_allocObject();
    v76[2] = 0xD000000000000022;
    v76[3] = v84;
    v76[4] = 0;
    v76[5] = 0xE000000000000000;
    sub_1CF3A1FD4(v75, a2, a3, sub_1CF355FF8, v76);
    v79 = v78;

    if (fpfs_supports_bgst_improvements())
    {
      if (v79)
      {
        *(a1 + qword_1EDEBBAE0) = 3;
      }
    }

    return v79;
  }
}

void sub_1CF39F2D8(unint64_t a1, uint64_t (*a2)(), void *a3, uint64_t a4, void *a5, void *a6)
{
  v158 = a6;
  v164 = a5;
  v165 = a2;
  v166 = a1;
  v161 = sub_1CF9E6118();
  v160 = *(v161 - 8);
  v8 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v156 = &v144 - v12;
  v153 = sub_1CF9E63D8();
  v152 = *(v153 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CF9E6448();
  v157 = *(v151 - 8);
  v15 = *(v157 + 64);
  v16 = MEMORY[0x1EEE9AC00](v151);
  v155 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v159 = &v144 - v18;
  v19 = sub_1CF9E5CF8();
  v163 = *(v19 - 8);
  v20 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v144 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v28 = *(v27 - 1);
  v29 = v28[8];
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v144 - v30;
  v32 = a3;
  v174 = a3;
  v33 = a4;
  v175 = a4;
  v34 = v166;
  v35 = [v34 longAtIndex_];
  v36 = v167;
  sub_1CEFE9AC4(v35, &v170);
  if (v36)
  {

    return;
  }

  v166 = v28;
  v149 = v27;
  v147 = v22;
  v146 = v19;
  v167 = 0;
  v148 = v31;
  v150 = v32;
  v37 = v33;

  v172 = v170;
  v173 = v171;
  v38 = [v34 intAtIndex_];
  if ([v34 isNullAtIndex_])
  {
    v39 = -1;
    v40 = v26;
    v41 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  }

  else
  {
    v41 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    v39 = [v34 longAtIndex_];
    v40 = v26;
  }

  v42 = [v34 isNullAtIndex_];
  v43 = v166;
  if (v42)
  {
    v44 = -1;
  }

  else
  {
    v44 = [v34 v41[478]];
  }

  v45 = v165;
  v46 = v167;
  (*(**(v165 + 4) + 240))(&v172, 1, &v174, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v46)
  {
    v47 = v149;
    if ((*(v43 + 48))(v40, 1, v149) == 1)
    {
      v48 = &qword_1EC4C1B40;
      v49 = &unk_1CF9FCB70;
LABEL_15:
      v53 = sub_1CEFCCC44(v40, v48, v49);
      MEMORY[0x1EEE9AC00](v53);
      v55 = sub_1CF7D5920(sub_1CF480F9C, &v140, v54);
      MEMORY[0x1EEE9AC00](v55);
      v56 = type metadata accessor for VFSItem(0);
      v57 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
      v58 = sub_1CF042F54(qword_1EDEABC30, type metadata accessor for VFSItem);
      v59 = sub_1CF4804D8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v140 = v56;
      v141 = v57;
      v142 = v58;
      v143 = v59;
      swift_getKeyPath();
      v61 = sub_1CF9E6288();
      if (!__OFADD__(*v62, 1))
      {
        ++*v62;
        v61(&v170, 0);

        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v50 = v40;
    v40 = v148;
    sub_1CEFE55D0(v50, v148, &unk_1EC4BE360, &qword_1CF9FE650);
    v51 = v40 + v47[12];
    v52 = type metadata accessor for ItemMetadata();
    if ((*(v51 + *(v52 + 80)) & 1) == 0)
    {
      v48 = &unk_1EC4BE360;
      v49 = &qword_1CF9FE650;
      goto LABEL_15;
    }

    MEMORY[0x1EEE9AC00](v52);
    v140 = v39;
    v141 = v44;
    v142 = v164;
    sub_1CF39E590(v172, v173, v150, v37, sub_1CF480FAC, (&v144 - 6));
    v166 = v38;
    if (v39 < 0)
    {
      v74 = v37;
      goto LABEL_25;
    }

    v63 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    v64 = [objc_opt_self() requestForSelf];
    [v64 setRequestedExtent_];
    (*(**(v45 + 2) + 160))(&v170, &v172, &v174, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v167 = 0;
    v84 = v170;
    if (!v170)
    {
      type metadata accessor for NSFileProviderError(0);
      v168 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v94 = v170;
      swift_willThrow();

      v65 = v162;
LABEL_20:
      v66 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v67 = v94;
      v68 = sub_1CF9E6108();
      v69 = sub_1CF9E72A8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        swift_getErrorValue();
        v72 = Error.prettyDescription.getter(v169);
        *(v70 + 4) = v72;
        *v71 = v72;
        _os_log_impl(&dword_1CEFC7000, v68, v69, "⏰ BRM Materialization failed with %@, falling back to full materialization", v70, 0xCu);
        sub_1CEFCCC44(v71, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v73 = v71;
        v45 = v165;
        MEMORY[0x1D386CDC0](v73, -1, -1);
        MEMORY[0x1D386CDC0](v70, -1, -1);
      }

      else
      {
      }

      (*(v160 + 8))(v65, v161);
      v74 = v37;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
      inited = swift_initStackObject();
      v76 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      *(inited + 24) = v76;
      *(inited + 32) = v76;
      *(inited + 40) = v76;
      *(inited + 48) = 0;
      v77 = v147;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v79 = v78;
      v80 = *(v163 + 8);
      v81 = v146;
      v80(v77, v146);
      v82 = v79 * 1000000000.0;
      if (COERCE__INT64(fabs(v79 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v82 <= -9.22337204e18)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (v82 >= 9.22337204e18)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if ((v166 & 0x2C) != 0)
      {
        v83 = 0x1000000;
LABEL_46:
        v95 = v150;
        sub_1CF3A0978(v172, v173, 0, v82, v83, v45, 0, inited, v150, v74);
        v96 = v147;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v98 = v97;
        v80(v96, v81);
        v99 = v98 * 1000000000.0;
        if (COERCE__INT64(fabs(v98 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        if (v99 <= -9.22337204e18)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v99 >= 9.22337204e18)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        sub_1CF7F6588(inited, v99, v95, v74);
        sub_1CEFCCC44(v148, &unk_1EC4BE360, &qword_1CF9FE650);
        swift_setDeallocating();
        v100 = *(inited + 16);

        v101 = *(inited + 24);

        v102 = *(inited + 32);

        v103 = *(inited + 40);

        v104 = v158;
LABEL_59:
        if (!__OFADD__(*v104, 1))
        {
          ++*v104;
          return;
        }

        goto LABEL_96;
      }

      if ((v166 & 0x10) != 0)
      {
        if ((v166 & 0x80) != 0)
        {
          v83 = 0x200401000000;
        }

        else
        {
          if ((v166 & 0x140) == 0)
          {
            v83 = 0x401000000;
            if ((v166 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

          v83 = 0x4401000000;
        }
      }

      else if ((v166 & 0x80) != 0)
      {
        v83 = 0x200001000000;
      }

      else
      {
        if ((v166 & 0x140) == 0)
        {
          v83 = 0x1000000;
          if ((v166 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v83 = 0x4001000000;
      }

      if ((v166 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      v83 |= 0x10000000000uLL;
      goto LABEL_46;
    }

    v164 = v63;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v64;
    v145 = v84;
    v144 = v64;
    sub_1CF9E63E8();
    v149 = v172;
    v86 = v173;
    qos_class_self();
    v87 = v156;
    sub_1CF9E63B8();
    v88 = v152;
    v89 = *(v152 + 48);
    v90 = v153;
    if (v89(v87, 1, v153) == 1)
    {
      (*(v88 + 104))(v154, *MEMORY[0x1E69E7FA0], v90);
      v91 = v89(v87, 1, v90) == 1;
      v92 = v87;
      v93 = v147;
      if (!v91)
      {
        sub_1CEFCCC44(v92, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v88 + 32))(v154, v87, v90);
      v93 = v147;
    }

    v105 = v155;
    sub_1CF9E6428();
    v106 = v86;
    v107 = v164;
    v108 = v85;
    v109 = sub_1CF5D1668(0, v149, v106, v85 | 0x2000000000000004, 0, v164, v105, 0, v150, v37, v165);
    v110 = *(v157 + 8);
    v111 = v105;
    v112 = v151;
    v110(v111, v151);
    v110(v159, v112);
    if ((v109 - 1) >= 2u)
    {

      goto LABEL_58;
    }

    v159 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
    v113 = swift_allocObject();
    v114 = MEMORY[0x1E69E7CC0];
    v113[2] = MEMORY[0x1E69E7CC0];
    v113[3] = v114;
    v113[4] = v114;
    v113[5] = v114;
    v113[6] = 0;
    v115 = swift_initStackObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v114;
    *(v115 + 32) = v114;
    *(v115 + 40) = v114;
    *(v115 + 48) = 0;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v117 = v116;
    v157 = *(v163 + 8);
    (v157)(v93, v146);
    v118 = v117 * 1000000000.0;
    if (COERCE__INT64(fabs(v117 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v65 = v162;
    if (v118 <= -9.22337204e18)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v118 >= 9.22337204e18)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v119 = v118;
    if ((v166 & 0x2C) != 0)
    {
      v120 = 0x1000000;
LABEL_76:
      v121 = v172;
      v122 = v173;

      v123 = v119;
      v124 = v167;
      sub_1CF3A0978(v121, v122, 0, v123, v120, v165, v113, v115, v150, v37);
      v94 = v124;
      if (v124)
      {

        swift_setDeallocating();
        v125 = *(v115 + 16);

        v126 = *(v115 + 24);

        v127 = *(v115 + 32);

        v128 = *(v115 + 40);

        v45 = v165;
        goto LABEL_20;
      }

      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v130 = v129;
      (v157)(v93, v146);
      v131 = v130 * 1000000000.0;
      if (COERCE__INT64(fabs(v130 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v131 <= -9.22337204e18)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v131 >= 9.22337204e18)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      sub_1CF7F6588(v113, v131, v150, v37);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v133 = v132;
      (v157)(v93, v146);
      v134 = v133 * 1000000000.0;
      if (COERCE__INT64(fabs(v133 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (v134 <= -9.22337204e18)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v135 = v164;
      if (v134 >= 9.22337204e18)
      {
LABEL_105:
        __break(1u);
        return;
      }

      sub_1CF7F6588(v115, v134, v150, v37);
      v167 = 0;

      swift_setDeallocating();
      v136 = *(v115 + 16);

      v137 = *(v115 + 24);

      v138 = *(v115 + 32);

      v139 = *(v115 + 40);

LABEL_58:
      sub_1CEFCCC44(v148, &unk_1EC4BE360, &qword_1CF9FE650);
      v104 = v158;
      goto LABEL_59;
    }

    if ((v166 & 0x10) != 0)
    {
      if ((v166 & 0x80) != 0)
      {
        v120 = 0x200401000000;
      }

      else
      {
        if ((v166 & 0x140) == 0)
        {
          v120 = 0x401000000;
          if ((v166 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v120 = 0x4401000000;
      }
    }

    else if ((v166 & 0x80) != 0)
    {
      v120 = 0x200001000000;
    }

    else
    {
      if ((v166 & 0x140) == 0)
      {
        v120 = 0x1000000;
        if ((v166 & 1) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      v120 = 0x4001000000;
    }

    if ((v166 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_75:
    v120 |= 0x10000000000uLL;
    goto LABEL_76;
  }
}

uint64_t sub_1CF3A0888(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  return v11;
}

void sub_1CF3A0978(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v76 = a9;
  v77 = a10;
  v19 = *(a6 + 16);
  sub_1CF7EB934(a1, a2, a9, a10, __src);
  if (!v10)
  {
    v78 = 0;
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v73, __src, sizeof(v73));
LABEL_31:
      sub_1CEFCCC44(v73, &unk_1EC4BFC20, &unk_1CFA0A290);
      return;
    }

    v49 = a5;
    memcpy(v73, __src, sizeof(v73));
    v47 = LOBYTE(v73[4]);
    v20 = BYTE1(v73[17]);
    v21 = v73[24];
    v45 = v73[31];
    v44 = LOBYTE(v73[46]);
    v42 = LOBYTE(v73[57]);
    v40 = v73[60];
    v41 = v73[59];
    v43 = v73[64];
    if (a7)
    {
      v48 = a7;
    }

    else
    {

      v48 = a8;
    }

    v46 = v49 | 1;
    if (v20 == 2)
    {
      LOBYTE(v52[0]) = 0;
      *&v56 = a1;
      WORD4(v56) = a2;
      WORD5(v56) = 3;
      BYTE3(v63) = 15;
      v23 = *(*a8 + 136);

      v22 = v23(&v56);
    }

    else
    {
    }

    v39 = *(*a6 + 152);
    if (((v39)(v22) & 0x20000) == 0 || (v21 & 0xF000000000000000) == 0xB000000000000000 || (v49 & 0x400001000000) != 0)
    {
      if (v47 != 4)
      {
        LOBYTE(v52[0]) = 0;
        *&v56 = a1;
        WORD4(v56) = a2;
        LOWORD(v57) = 5;
        *(&v57 + 1) = a3;
        *&v58 = a4;
        WORD1(v63) = 2572;
        (*(*v48 + 136))(&v56);
      }
    }

    else
    {
      LOBYTE(v52[0]) = 0;
      *&v56 = a1;
      WORD4(v56) = a2;
      LOWORD(v57) = 1029;
      *(&v57 + 1) = a3;
      *&v58 = a4;
      WORD1(v63) = 2572;
      (*(*v48 + 136))(&v56);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
    v24 = swift_allocObject();
    *(v24 + 152) = a2;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 1;
    *(v24 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 120) = a3;
    *(v24 + 128) = a4;
    *(v24 + 136) = v46;
    *(v24 + 144) = a1;
    v25 = 2359584;
    v26 = v49;
    if ((v49 & 0x8000) == 0)
    {
      v25 = 262432;
    }

    *(v24 + 88) = 0;
    *(v24 + 96) = v25;
    *(v24 + 104) = 0;
    *(v24 + 112) = 0;
    v27 = *(*a8 + 144);
    v27();

    v28 = v45;
    if (v45)
    {
      v38 = v27;
      v72 = v45;
      v29 = *(**(a6 + 40) + 264);
      v30 = v45;
      v31 = v78;
      v29(&v56, &v72, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v78 = v31;
      if (v31)
      {

        goto LABEL_31;
      }

      v50[12] = v68;
      v50[13] = v69;
      v50[14] = v70;
      v50[8] = v64;
      v50[9] = v65;
      v50[10] = v66;
      v50[11] = v67;
      v50[4] = v60;
      v50[5] = v61;
      v50[6] = v62;
      v50[7] = v63;
      v50[0] = v56;
      v50[1] = v57;
      v50[2] = v58;
      v50[3] = v59;
      v52[12] = v68;
      v53 = v69;
      v54 = v70;
      v52[8] = v64;
      v52[9] = v65;
      v52[10] = v66;
      v52[11] = v67;
      v52[4] = v60;
      v52[5] = v61;
      v52[6] = v62;
      v52[7] = v63;
      v52[0] = v56;
      v52[1] = v57;
      v51 = v71;
      v55 = v71;
      v52[2] = v58;
      v52[3] = v59;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v52) == 1)
      {

        v28 = 0;
        v27 = v38;
        goto LABEL_27;
      }

      v32 = (*(*a6 + 600))();
      v33 = sub_1CEFF8538(v53, *(&v53 + 1), 0, v32, v42 == 1, v43 & 1);
      if (v33 == 3 || v33 == 500)
      {
        sub_1CEFCCC44(v50, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        v27 = v38;
LABEL_26:
        v28 = 1;
        goto LABEL_27;
      }

      v35 = v33;
      v36 = v39();
      sub_1CEFCCC44(v50, &qword_1EC4BECF0, &unk_1CF9FEEB0);

      if ((v36 & 0x40000) != 0)
      {
        v28 = 0;
        v26 = v49;
        v27 = v38;
      }

      else
      {
        v37 = v35 == 501;
        v26 = v49;
        v27 = v38;
        if (v37)
        {
          goto LABEL_26;
        }

        v28 = 0;
      }
    }

LABEL_27:
    if (v47 && v44 == 2 && (v28 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFE0, &unk_1CF9FADE0);
      v34 = swift_allocObject();
      *(v34 + 152) = a2;
      *(v34 + 16) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 1;
      *(v34 + 56) = 0u;
      *(v34 + 72) = 0u;
      *(v34 + 88) = 0;
      *(v34 + 96) = xmmword_1CF9FEC30;
      *(v34 + 112) = 0;
      *(v34 + 120) = v41;
      *(v34 + 128) = v40;
      *(v34 + 136) = v46;
      *(v34 + 144) = a1;
      if (v26 < 0)
      {
        *(v34 + 96) = 2359552;
        *(v34 + 112) = 0;
      }

      (v27)(v34);
    }

    goto LABEL_31;
  }
}

uint64_t sub_1CF3A0FDC(uint64_t result, char a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = *(v3 + 16);
  if (v5)
  {
    v8 = result;
    v9 = *(v3 + 24);

    v11 = v5(v10);
    result = sub_1CEFF7124(v5);
    if (v11)
    {
      a3(v19, v11);
      if (v4)
      {
      }

      memcpy(v18, v19, sizeof(v18));
      if (sub_1CF08B99C(v18) == 1)
      {

        memcpy(v17, v19, sizeof(v17));
        v12 = &unk_1EC4BFC20;
        v13 = &unk_1CFA0A290;
        return sub_1CEFCCC44(v17, v12, v13);
      }

      memcpy(v20, v19, sizeof(v20));
      memcpy(v21, v19, 0x208uLL);
      v14 = sub_1CF47F8E0(v21, v11, v8, a2);
      if (v14)
      {

        memcpy(v17, v20, sizeof(v17));
        v12 = &qword_1EC4BFBC0;
        v13 = &unk_1CF9FCAC0;
        return sub_1CEFCCC44(v17, v12, v13);
      }

      MEMORY[0x1EEE9AC00](v14);
      v16[2] = v20;
      sub_1CF7D5920(sub_1CF480F20, v16, v8);
      if ([v8 changes])
      {
        v15 = v22;
        if (*(v22 + qword_1EDEBBAE8) == 1)
        {
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          sub_1CF06779C(sub_1CF480F64, v15);
        }

        else
        {
          *(v22 + qword_1EDEBBAE8) = 1;
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          [qword_1EDEBBC10 addWatcher_];
        }
      }

      memcpy(v17, v20, sizeof(v17));
      return sub_1CEFCCC44(v17, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }
  }

  return result;
}

uint64_t sub_1CF3A1308(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = sub_1CF39BEC8(a1, *a2, *(a2 + 8));
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  return 0;
}

void sub_1CF3A1454(void *a1, uint64_t *a2, unsigned int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v32 = a1;
  v33 = a2;
  v38 = a2;
  v16 = a3;
  v39 = a3;
  sub_1CEFCCBDC(a1, &v32 - v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 22)
  {
    sub_1CEFCCBDC(v15, v10, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v10 & 0x8000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
      v30 = swift_dynamicCastClass();
      v22 = a3;
      v18 = v33;
      if (v30)
      {
        v36 = v33;
        v37 = v16;
        v31 = v34;
        if (qword_1EDEAD4D8 != -1)
        {
          v30 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v30);
        *(&v32 - 2) = v35;
        *(&v32 - 1) = &v36;
        sub_1CF0674E8(sub_1CF480EC0, (&v32 - 4));

        if (v31)
        {
          sub_1CEFCCC44(v15, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }
      }

      else
      {
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 14)
  {
LABEL_11:
    v22 = a3;
    v18 = v33;
    goto LABEL_14;
  }

  sub_1CEFCCBDC(v15, v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v18 = v33;
  if (v13[9])
  {
    v19 = v13[10];
    v20 = *v13;
    if (v19 == 1 || v19 == 6 || v19 == 23)
    {
      v40 = *v13;
      v21 = sub_1CEFCCC44(v15, &qword_1EC4BE710, &qword_1CF9FE5A8);
      MEMORY[0x1EEE9AC00](v21);
      *(&v32 - 2) = &v40;
      *(&v32 - 1) = &v38;
      v22 = v16;
      v23 = v34;
      sub_1CF3A0FDC(v18, v16, sub_1CF480EF8);

      if (v23)
      {
        return;
      }

      goto LABEL_15;
    }

    v25 = v13[8];
    v24 = *v13;
    v26 = 1;
  }

  else
  {
    v24 = *v13;
    v25 = v13[8];
    v26 = 0;
  }

  sub_1CEFD0994(v24, v25, v26);
  v22 = v16;
LABEL_14:
  sub_1CEFCCC44(v15, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_15:
  v27 = *(v35 + qword_1EDEBBB18);
  if (v27)
  {
    v28 = *(*(v27 + qword_1EDEBB780) + 80);
    v29 = *(v35 + qword_1EDEBBB18);

    if ((v28 & 0x40000) != 0)
    {
      sub_1CF3A6000(v32, v18, v22);
    }

    else
    {
      sub_1CF3A6A70(v32, v18, v22);
    }
  }
}

void sub_1CF3A1840(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t (*)(), _BYTE *, __n128))
{
  v9 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a3;
  v20 = v4;
  a4(sub_1CF4840CC, v18, v11);
  v14 = *(v4 + qword_1EDEAC820);
  if (v14)
  {
    v15 = *(*v14 + 136);
    swift_beginAccess();
    sub_1CEFDA214(v14 + v15, v13, type metadata accessor for FPDownloadSchedulerFastPassState);
    sub_1CF342D64(a3);
    sub_1CEFD5278(v13, type metadata accessor for FPDownloadSchedulerFastPassState);
  }

  v16 = sub_1CF7D5474(sub_1CF34F8C4, 0, a1, a2);
  if ([v16 next])
  {
    do
    {
      v17 = objc_autoreleasePoolPush();
      sub_1CF3A1DFC(v16, a3);
      objc_autoreleasePoolPop(v17);
    }

    while (([v16 next] & 1) != 0);
  }
}

uint64_t sub_1CF3A1AA8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF9E7948();

  if (*(a2 + qword_1EDEBBAF0))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(a2 + qword_1EDEBBAF0))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v6, v7);

  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA42550, v4, v5);

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1CF9E7948();

  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EDEBBC10 description];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  sub_1CF4FB2BC(v21, v22, v8, v9);

  if (*(a2 + qword_1EDEBBB18))
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);

    sub_1CF9E7948();

    v17 = sub_1CF3A8440();
    MEMORY[0x1D3868CC0](v17);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA425B0, v15, v16);
  }

  if (*(a2 + qword_1EDEBBAD0))
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);

    sub_1CF9E7948();

    v20 = sub_1CF3878F8();
    MEMORY[0x1D3868CC0](v20);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA42590, v18, v19);
  }

  return result;
}

uint64_t sub_1CF3A1DFC(void *a1, void *a2)
{
  result = sub_1CEFE9AC4([a1 longAtIndex_], &v18);
  if (!v2)
  {
    v6 = [a1 longAtIndex_];
    if (v6 >= 3)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v13 = 0;
      return swift_willThrow();
    }

    else
    {
      v7 = v6;
      v8 = [a1 longAtIndex_];
      v9 = a2[3];
      v10 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v9);
      v18 = 0;
      v19 = 0xE000000000000000;
      if (v7)
      {
        if (v7 == 1)
        {
          v11 = 0x208FB8EFB696E2;
        }

        else
        {
          v11 = 0x20919B9FF0;
        }

        if (v7 == 1)
        {
          v12 = 0xA700000000000000;
        }

        else
        {
          v12 = 0xA500000000000000;
        }
      }

      else
      {
        v12 = 0xA400000000000000;
        v11 = 548638690;
      }

      MEMORY[0x1D3868CC0](v11, v12);

      v14 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v16 = VFSItemID.description.getter(v14, v15);
      MEMORY[0x1D3868CC0](v16);

      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v17 = sub_1CF7F5068(v8);
      MEMORY[0x1D3868CC0](v17);

      sub_1CF4FB2BC(v18, v19, v9, v10);
    }
  }

  return result;
}

void sub_1CF3A1FD4(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  LODWORD(v195) = a3;
  v194 = a2;
  v199 = a1;
  v177 = sub_1CF9E63D8();
  v176 = *(v177 - 8);
  v11 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v191 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v161 - v17;
  v19 = sub_1CF9E6068();
  v188 = *(v19 - 8);
  v189 = v19;
  v20 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v183 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v193 = (&v161 - v26);
  v184 = type metadata accessor for Signpost(0);
  v185 = *(v184 - 8);
  v27 = *(v185 + 64);
  v28 = MEMORY[0x1EEE9AC00](v184);
  v190 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v187 = &v161 - v31;
  v186 = v32;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v161 - v33;
  v182 = sub_1CF9E63A8();
  v181 = *(v182 - 8);
  v35 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CF9E6448();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v179 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1CF9E5248();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v178 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5268();
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v8 + 16);
  if (!v50)
  {
    return;
  }

  v170 = v49;
  v171 = v47;
  v172 = v46;
  v173 = v18;
  v51 = *(v8 + 24);

  v53 = v50(v52);
  v54 = v50;
  v55 = v53;
  sub_1CEFF7124(v54);
  if (!v55)
  {
    return;
  }

  v169 = v34;
  v56 = *(v8 + qword_1EDEBBAD0);
  if (!v56)
  {
    goto LABEL_8;
  }

  v57 = v55[15];
  v59 = *(v57 + 16);
  v58 = *(v57 + 24);
  v60 = __OFSUB__(v58, v59);
  v61 = v58 - v59;
  if (v60)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v61 <= 0)
  {
LABEL_8:

    return;
  }

  v62 = *(v8 + qword_1EDEBBAD0);

  v63 = sub_1CF7D55FC(a4, a5, v194, v195);
  if (v6)
  {

    return;
  }

  v64 = v63;
  if (![v63 next])
  {
LABEL_34:

    return;
  }

  v162 = v38;
  v163 = v37;
  v167 = v56;
  v166 = v57;
  v168 = v55;
  v165 = v8;
  v164 = 0;
  v65 = 0;
  v7 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  v174 = v64;
  do
  {
    v68 = objc_autoreleasePoolPush();
    v69 = v64;
    v70 = [v69 v67[478]];
    v196 = v68;
    if (v70 == 0x8000000000000000)
    {
      v72 = 2;
      v71 = 1;
    }

    else
    {
      v71 = v70;
      if (v70)
      {
        if (v70 < 0)
        {
          v71 = -v70;
          if (-v70 >> 32)
          {
            sub_1CF9E51B8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
            v124 = v170;
            v125 = v172;
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            (*(v171 + 8))(v124, v125);
            swift_willThrow();

            objc_autoreleasePoolPop(v68);

            return;
          }

          v72 = 0;
        }

        else
        {
          v72 = 1;
        }
      }

      else
      {
        v72 = 2;
      }
    }

    v73 = v67;
    v74 = [v69 v67[478]];
    v197 = v69;
    v75 = [v69 longLongAtIndex_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CF1F8318(0, *(v66 + 2) + 1, 1, v66);
    }

    v76 = v66;
    v77 = *(v66 + 2);
    v198 = v76;
    v78 = *(v76 + 3);
    if (v77 >= v78 >> 1)
    {
      v198 = sub_1CF1F8318((v78 > 1), v77 + 1, 1, v198);
    }

    v79 = v198;
    *(v198 + 2) = v77 + 1;
    v80 = &v79[24 * v77];
    *(v80 + 4) = v71;
    v80[40] = v72;
    *(v80 + 6) = v74;
    v60 = __OFADD__(v7, v75);
    v7 += v75;
    if (v60)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v81 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_60;
    }

    v66 = v79;
    objc_autoreleasePoolPop(v196);
    v82 = [v197 next];
    ++v65;
    v64 = v174;
    v67 = v73;
  }

  while ((v82 & 1) != 0);
  if (v81 <= 0)
  {
    goto LABEL_34;
  }

  v83 = v168;
  v84 = v168[10];

  v85 = v167;
  if ((v84 & 0x40000) == 0 || (v86 = [objc_opt_self() defaultStore], v87 = objc_msgSend(v86, sel_useCacheDeleteWhenReachingLowerBound), v86, v87))
  {
    swift_retain_n();
    if (sub_1CF38773C())
    {
    }

    else
    {
      v88 = *&v85[qword_1EDEA4968];
      v89 = swift_allocObject();
      v89[2] = v85;
      v89[3] = v7;
      v89[4] = sub_1CF481010;
      v89[5] = v83;
      v203 = sub_1CF48101C;
      v204 = v89;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v201 = sub_1CEFCA444;
      v202 = &block_descriptor_844;
      v90 = _Block_copy(&aBlock);

      v91 = v179;
      sub_1CF9E63F8();
      v206 = MEMORY[0x1E69E7CC0];
      sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v92 = v180;
      v93 = v182;
      v85 = v167;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v91, v92, v90);
      v94 = v90;
      v83 = v168;
      _Block_release(v94);
      (*(v181 + 8))(v92, v93);
      (*(v162 + 8))(v91, v163);
    }
  }

  v206 = v199;
  v205 = 0;
  v95 = *(v66 + 2);

  v96 = v166;
  if (!v95)
  {
    v7 = v164;
LABEL_45:

    if (v205 != 1)
    {

      v123 = v197;
      goto LABEL_58;
    }

    v110 = *(v83 + qword_1EDEBBC38);

    v199 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_47;
  }

  v97 = 0;
  v98 = (v66 + 48);
  v7 = v164;
  v99 = v165;
  while (v97 < v95)
  {
    v101 = *(v96 + 16);
    v100 = *(v96 + 24);
    v60 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v60)
    {
      goto LABEL_63;
    }

    if (v102 < 1)
    {
      goto LABEL_45;
    }

    v103 = *(v98 - 2);
    v104 = v83;
    v105 = *(v98 - 8);
    v106 = *v98;
    v107 = objc_autoreleasePoolPush();
    v108 = v99;
    v109 = v107;
    sub_1CF3A34EC(v104, v106, v108, v103, v105, v194, v195, &v205, v85, &v206);
    if (v7)
    {

      objc_autoreleasePoolPop(v109);

      return;
    }

    ++v97;
    objc_autoreleasePoolPop(v109);
    v95 = *(v198 + 2);
    v98 += 3;
    v99 = v165;
    v83 = v168;
    v96 = v166;
    v85 = v167;
    if (v97 == v95)
    {
      goto LABEL_45;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_47:
  v111 = qword_1EDEBBE40;
  v113 = v188;
  v112 = v189;
  v114 = v193;
  (*(v188 + 56))(v193, 1, 1, v189);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v115 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v115);

  v116 = *(&aBlock + 1);
  v196 = aBlock;
  v117 = v183;
  sub_1CEFCCBDC(v114, v183, &unk_1EC4BED20, &unk_1CFA00700);
  v118 = *(v113 + 48);
  v119 = v118(v117, 1, v112);
  v120 = v169;
  v164 = v7;
  if (v119 == 1)
  {
    v121 = v111;
    v122 = v192;
    sub_1CF9E6048();
    if (v118(v117, 1, v112) != 1)
    {
      sub_1CEFCCC44(v117, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v122 = v192;
    (*(v113 + 32))(v192, v117, v112);
  }

  (*(v113 + 16))(v120, v122, v112);
  v126 = v184;
  *(v120 + *(v184 + 20)) = v111;
  v127 = v120 + *(v126 + 24);
  *v127 = "DB queue wait";
  *(v127 + 8) = 13;
  *(v127 + 16) = 2;
  v128 = v111;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v129 = v112;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1CF9FA450;
  *(v130 + 56) = MEMORY[0x1E69E6158];
  *(v130 + 64) = sub_1CEFD51C4();
  *(v130 + 32) = v196;
  *(v130 + 40) = v116;
  sub_1CF9E6028();

  (*(v113 + 8))(v122, v129);
  sub_1CEFCCC44(v193, &unk_1EC4BED20, &unk_1CFA00700);
  v194 = v168[21];
  v196 = v168[8];
  (*(v162 + 56))(v173, 1, 1, v163);
  v131 = v187;
  sub_1CEFDA214(v120, v187, type metadata accessor for Signpost);
  v132 = (*(v185 + 80) + 16) & ~*(v185 + 80);
  v133 = v120;
  v134 = (v186 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v135 = swift_allocObject();
  v193 = type metadata accessor for Signpost;
  sub_1CEFD9F8C(v131, v135 + v132, type metadata accessor for Signpost);
  v136 = (v135 + v134);
  v195 = nullsub_1;
  *v136 = nullsub_1;
  v136[1] = 0;
  v137 = v190;
  sub_1CEFDA214(v133, v190, type metadata accessor for Signpost);
  v138 = (v134 + 23) & 0xFFFFFFFFFFFFFFF8;
  v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v139 + 25) & 0xFFFFFFFFFFFFFFF8;
  v141 = swift_allocObject();
  sub_1CEFD9F8C(v137, v141 + v132, v193);
  v142 = (v141 + v134);
  *v142 = sub_1CF045408;
  v142[1] = 0;
  *(v141 + v138) = v168;
  v143 = v163;
  v144 = v141 + v139;
  *v144 = "startSpeculativeBackgroundDownloads(currentDownloadsCount:with:matching:)";
  *(v144 + 8) = 73;
  *(v144 + 16) = 2;
  v145 = (v141 + v140);
  *v145 = v195;
  v145[1] = 0;
  v146 = (v141 + ((v140 + 23) & 0xFFFFFFFFFFFFFFF8));
  v147 = v165;
  *v146 = sub_1CF480FD8;
  v146[1] = v147;
  v148 = swift_allocObject();
  v148[2] = sub_1CF480FF4;
  v148[3] = v135;
  v149 = v194;
  v148[4] = v194;
  v150 = v162;

  v195 = v135;

  v151 = fpfs_current_log();
  v152 = v149[2];
  v153 = v191;
  sub_1CEFCCBDC(v173, v191, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v150 + 48))(v153, 1, v143) == 1)
  {
    sub_1CEFCCC44(v153, &unk_1EC4BE370, qword_1CFA01B30);
    v154 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v155 = v175;
    sub_1CF9E6438();
    (*(v150 + 8))(v153, v143);
    v154 = sub_1CF9E63C8();
    (*(v176 + 8))(v155, v177);
  }

  v156 = swift_allocObject();
  v156[2] = v151;
  v156[3] = sub_1CF48100C;
  v156[4] = v141;
  v203 = sub_1CEFCA438;
  v204 = v156;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v201 = sub_1CEFCA444;
  v202 = &block_descriptor_835;
  v157 = _Block_copy(&aBlock);
  v158 = v151;

  v203 = sub_1CF2AF9E8;
  v204 = v148;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v201 = sub_1CEFCA444;
  v202 = &block_descriptor_838_0;
  v159 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v152, v196, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v154, v157, v159);
  _Block_release(v159);
  _Block_release(v157);

  sub_1CEFCCC44(v173, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5278(v169, type metadata accessor for Signpost);
  v160 = v199;
  v123 = fpfs_adopt_log();

LABEL_58:
}

void sub_1CF3A34EC(uint64_t a1, uint64_t a2, char *a3, void *a4, char a5, void *a6, int a7, _BYTE *a8, char *a9, void *a10)
{
  v110 = a8;
  v117 = a3;
  v109 = sub_1CF9E5CF8();
  v107 = *(v109 - 8);
  v17 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6118();
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = *(v113 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v112 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v105 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v124 = a4;
  v125 = a5;
  v115 = a6;
  v122 = a6;
  LODWORD(v116) = a7;
  v123 = a7;
  v32 = a1;
  if ((*(a1 + 82) & 4) != 0 && a2 == 16)
  {
    sub_1CF7FEF8C(a4, a5, 16, v115, v116);
    return;
  }

  v33 = v31;
  v106 = &v105 - v30;
  (*(**(a1 + 16) + 160))(&v119, &v124, &v122, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v10)
  {
    v34 = v119;
    if (v119)
    {
      v121 = v119;
      (*(**(a1 + 40) + 240))(&v121, 1, &v122, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v105 = 0;
      if ((*(v33 + 48))(v27, 1, v28) == 1)
      {

        sub_1CEFCCC44(v27, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      sub_1CEFE55D0(v27, v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v35 = v117;
      if (a2 != 64 || (v36 = *&v117[qword_1EDEBBB18]) == 0)
      {
LABEL_14:
        v38 = a9;
        v39 = v106 + *(v28 + 48);
        v40 = *(v39 + *(type metadata accessor for ItemMetadata() + 104));
        v41 = objc_sync_enter(a9);
        if (v41)
        {
LABEL_75:
          MEMORY[0x1EEE9AC00](v41);
          v103 = &v105 - 4;
          v104 = v38;
          goto LABEL_77;
        }

        v42 = objc_sync_enter(a9);
        if (v42)
        {
          MEMORY[0x1EEE9AC00](v42);
          v103 = &v105 - 4;
          v104 = a9;
LABEL_77:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v103, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        v43 = sub_1CF385874();
        v44 = objc_sync_exit(a9);
        if (v44)
        {
          goto LABEL_78;
        }

        if ((v43 & 1) == 0)
        {
          v45 = 128;
          goto LABEL_34;
        }

        if (sub_1CF38773C())
        {
          v45 = 256;
          goto LABEL_34;
        }

        v46 = sub_1CF386068(1);
        if ((v47 & 1) == 0)
        {
          v48 = v46;
          v41 = sub_1CF3850A0();
          v49 = &v40[v41];
          if (__OFADD__(v41, v40))
          {
            __break(1u);
            goto LABEL_67;
          }

          if (v49 < v48)
          {
            v50 = __OFSUB__(v48, v49);
            v51 = v48 - v49;
            if (!v50)
            {
              if (*&a9[qword_1EDEBB6E8] < v51)
              {
                v44 = objc_sync_exit(a9);
                if (v44)
                {
                  goto LABEL_78;
                }

                v52 = v105;
                sub_1CF39E590(v124, v125, v115, v116, sub_1CF3560A8, v35);
                if (v52)
                {
LABEL_41:
                  sub_1CEFCCC44(v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

                  return;
                }

                v117 = a9;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
                inited = swift_initStackObject();
                v54 = MEMORY[0x1E69E7CC0];
                *(inited + 16) = MEMORY[0x1E69E7CC0];
                *(inited + 24) = v54;
                *(inited + 32) = v54;
                *(inited + 40) = v54;
                *(inited + 48) = 0;
                v55 = v108;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v57 = v56;
                v58 = *(v107 + 8);
                v38 = (v107 + 8);
                v41 = v58(v55, v109);
                v59 = v57 * 1000000000.0;
                if (COERCE__INT64(fabs(v57 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v59 > -9.22337204e18)
                  {
                    if (v59 < 9.22337204e18)
                    {
                      if ((a2 & 0x2C) != 0)
                      {
                        v60 = 0x1000000;
                      }

                      else
                      {
                        if ((a2 & 0x10) != 0)
                        {
                          if ((a2 & 0x80) != 0)
                          {
                            v60 = 0x200401000000;
                          }

                          else if ((a2 & 0x140) != 0)
                          {
                            v60 = 0x4401000000;
                          }

                          else
                          {
                            v60 = 0x401000000;
                          }
                        }

                        else if ((a2 & 0x80) != 0)
                        {
                          v60 = 0x200001000000;
                        }

                        else if ((a2 & 0x140) != 0)
                        {
                          v60 = 0x4001000000;
                        }

                        else
                        {
                          v60 = 0x1000000;
                        }

                        if (a2)
                        {
                          v60 |= 0x10000000000uLL;
                        }
                      }

                      sub_1CF3A0978(v124, v125, 0, v59, v60, v32, 0, inited, v115, v116);
                      v93 = v108;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v95 = v94;
                      v41 = v58(v93, v109);
                      v96 = v95 * 1000000000.0;
                      if (COERCE__INT64(fabs(v95 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v96 > -9.22337204e18)
                        {
                          if (v96 < 9.22337204e18)
                          {
                            v97 = sub_1CF7F6588(inited, v96, v115, v116);
                            v119 = v34;
                            MEMORY[0x1EEE9AC00](v97);
                            v98 = v117;
                            *(&v105 - 4) = v117;
                            *(&v105 - 3) = &v119;
                            v104 = v40;
                            sub_1CF052DA4(v98, sub_1CF481044);
                            swift_setDeallocating();
                            v99 = *(inited + 16);

                            v100 = *(inited + 24);

                            v101 = *(inited + 32);

                            v102 = *(inited + 40);

                            sub_1CEFCCC44(v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                            if (!__OFADD__(*a10, 1))
                            {
                              ++*a10;
                              return;
                            }

                            goto LABEL_74;
                          }

LABEL_73:
                          __break(1u);
LABEL_74:
                          __break(1u);
                          goto LABEL_75;
                        }

LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_33;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }
        }

LABEL_33:
        v45 = 0;
LABEL_34:
        v44 = objc_sync_exit(a9);
        v61 = v112;
        if (!v44)
        {
          v62 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v63 = v124;
          v64 = v125;
          v65 = sub_1CF9E6108();
          v66 = sub_1CF9E7298();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v116 = v45;
            v68 = v67;
            v69 = swift_slowAlloc();
            v118 = v69;
            v119 = v63;
            *v68 = 136315138;
            v120 = v64;
            v71 = VFSItemID.description.getter(v69, v70);
            v73 = sub_1CEFD0DF0(v71, v72, &v118);

            *(v68 + 4) = v73;
            _os_log_impl(&dword_1CEFC7000, v65, v66, "💾 download for file %s won't be scheduled due to disk management concerns", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v69);
            MEMORY[0x1D386CDC0](v69, -1, -1);
            v74 = v68;
            v45 = v116;
            MEMORY[0x1D386CDC0](v74, -1, -1);

            v35 = v117;
          }

          else
          {
          }

          (*(v113 + 8))(v61, v114);
          v75 = *(v35 + qword_1EDEBBB18);
          if (v75)
          {
            v76 = v75 + *(*v75 + 136);
            swift_beginAccess();
            v77 = *(v76 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52));
            if (v77)
            {

              v78 = v77;
              sub_1CF7BEE14(v45);
            }
          }

          goto LABEL_41;
        }

LABEL_78:
        MEMORY[0x1EEE9AC00](v44);
        v104 = a9;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v105 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v37 = *&v117[qword_1EDEBBB18];

      if (sub_1CF3A5BD8(v106))
      {

        goto LABEL_14;
      }

      v79 = fpfs_current_or_default_log();
      v80 = v111;
      sub_1CF9E6128();
      v81 = v124;
      v82 = v125;
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E7288();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v112 = v36;
        v86 = v85;
        v87 = swift_slowAlloc();
        v118 = v87;
        v119 = v81;
        *v86 = 136446210;
        v120 = v82;
        v89 = VFSItemID.description.getter(v87, v88);
        v91 = sub_1CEFD0DF0(v89, v90, &v118);

        *(v86 + 4) = v91;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "🔮  unscheduling download of item %{public}s not in the speculative set anymore", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x1D386CDC0](v87, -1, -1);
        MEMORY[0x1D386CDC0](v86, -1, -1);
      }

      (*(v113 + 8))(v80, v114);
      v92 = v105;
      sub_1CF7FEF8C(v124, v125, 64, v115, v116);

      sub_1CEFCCC44(v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      if (!v92)
      {
        *v110 = 1;
      }
    }
  }
}

void *sub_1CF3A4210(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  result = __swift_project_boxed_opaque_existential_1(a1, v3);
  if (*(a2 + qword_1EDEBBB18))
  {
    v6 = result;

    sub_1CF35DA34(v6, v3, v4);
  }

  return result;
}

id sub_1CF3A4290(unsigned __int8 a1, id a2)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      return sub_1CF086728(a1 & 0x3F, a2, *(v2 + 144), *(v2 + 152), *(v2 + 160));
    }

    v4 = *(v2 + 192);
    if (v4 >> 60 == 11)
    {
      v5 = [a2 bindObjectParameter_];
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v6;
    }

    else
    {
      v96 = *(v2 + 168);
      *&v97 = *(v2 + 184);
      *(&v97 + 1) = v4;
      v17 = *(v2 + 216);
      v98 = *(v2 + 200);
      v99 = v17;
      *v100 = v96;
      *&v100[16] = v97;
      *&v100[24] = v4;
      *&v100[32] = v98;
      *&v100[48] = v17;
      v19 = a2;
      sub_1CF1AE1DC(v100, v95);
      v20 = sub_1CF356DB8(a1, v19);
      v95[0] = v96;
      v95[1] = v97;
      v95[2] = v98;
      v95[3] = v99;
      if (v3)
      {
        return sub_1CF1AE25C(v95);
      }

      else
      {
        v38 = v20;
        sub_1CF1AE25C(v95);
        return v38;
      }
    }
  }

  v8 = v100;
  if (a1 >> 6 != 3)
  {
    if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        if (a1 == 134)
        {
          v37 = [a2 bindBooleanParameter_];
LABEL_64:
          v89 = v37;
LABEL_67:
          v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

          return v91;
        }

        v39 = a2;
        v72 = *(v2 + 40);
        v73 = *(v2 + 104);
        v74 = *(v2 + 88);
        v104[2] = *(v2 + 72);
        v104[3] = v74;
        v75 = *(v2 + 120);
        v105 = v73;
        v106 = v75;
        v76 = *(v2 + 56);
        v104[0] = v72;
        v104[1] = v76;
        v77 = v72;
        v78 = *(v2 + 64);
        *&v100[8] = *(v2 + 48);
        *&v100[24] = v78;
        *&v100[40] = *(v2 + 80);
        if (v105)
        {
          v79 = *(v2 + 96);
          *v100 = v72;
          *&v100[56] = v79;
          v101 = v105;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(v104, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
          *&v96 = v77;
          v48 = sub_1CF9E8028();
        }

        else
        {
          v90 = *(v2 + 96);
          *v100 = v72;
          *&v100[56] = v90;
          v101 = 0;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(v104, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v48 = 0;
        }

LABEL_66:
        v89 = [v39 bindObjectParameter_];
        swift_unknownObjectRelease();
        goto LABEL_67;
      }

      if (a1 == 132)
      {
        v16 = v3;
        v21 = *(v2 + 136);
LABEL_43:
        *&v100[24] = MEMORY[0x1E69E6530];
        *v100 = v21;
LABEL_49:
        v70 = sub_1CEFF8EA0(v100);
        v2 = v71;
        sub_1CEFCCC44(v100, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (!v2)
        {
          goto LABEL_68;
        }

        return v70;
      }

      v68 = *(v2 + 137);
      v16 = v3;
      if (v68 == 6)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (a1 <= 0x81u)
      {
        v16 = v3;
        if (a1 == 128)
        {
          return sub_1CF39BEC8(a2, *v2, *(v2 + 8));
        }

        v21 = *(v2 + 16);
        goto LABEL_43;
      }

      if (a1 == 130)
      {
        v16 = v3;
        v21 = *(v2 + 24);
        goto LABEL_43;
      }

      v68 = *(v2 + 32);
      v16 = v3;
      if (v68 == 5)
      {
LABEL_47:
        v68 = 0;
        v69 = 0;
        *&v100[8] = 0;
        *&v100[16] = 0;
        goto LABEL_48;
      }
    }

    v69 = MEMORY[0x1E69E6530];
LABEL_48:
    *v100 = v68;
    *&v100[24] = v69;
    goto LABEL_49;
  }

  if (a1 > 0xC2u)
  {
    if (a1 <= 0xC4u)
    {
      v9 = a2;
      if (a1 == 195)
      {
        v10 = *(v2 + 88);
        v119 = *(v2 + 72);
        v120 = v10;
        v11 = *(v2 + 120);
        v121 = *(v2 + 104);
        v122 = v11;
        v12 = *(v2 + 56);
        v118[0] = *(v2 + 40);
        v118[1] = v12;
        v13 = *(&v120 + 1);
        v14 = v121;
        if (v121)
        {
          v15 = *(v2 + 56);
          *v100 = *(v2 + 40);
          *&v100[16] = v15;
          *&v100[32] = *(v2 + 72);
          *&v100[40] = *(&v119 + 1);
          v100[48] = v120;
          *&v100[49] = *(v2 + 89);
          *&v100[52] = *(v2 + 92);
          *&v100[56] = *(&v120 + 1);
          v101 = v121;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(v118, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          v85 = *(v2 + 56);
          *v100 = *(v2 + 40);
          *&v100[16] = v85;
          *&v100[32] = *(v2 + 72);
          *&v100[40] = *(&v119 + 1);
          v100[48] = v120;
          *&v100[49] = *(v2 + 89);
          *&v100[52] = *(v2 + 92);
          *&v100[56] = *(&v120 + 1);
          v101 = 0;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(v118, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);

          v13 = 0;
        }

        v86 = sub_1CF074DF4(v13, v14);

        return v86;
      }

      else
      {
        v56 = *(v2 + 56);
        v123 = *(v2 + 40);
        v124 = v56;
        v57 = *(v2 + 104);
        v58 = *(v2 + 88);
        v125 = *(v2 + 72);
        v126 = v58;
        v59 = *(v2 + 120);
        v127 = v57;
        v128 = v59;
        v60 = v123;
        v61 = DWORD2(v123);
        v62 = v124;
        v63 = BYTE8(v124);
        if (v57)
        {
          *v100 = v123;
          *&v100[16] = v124;
          v100[24] = BYTE8(v124);
          *&v100[25] = *(v2 + 65);
          *&v100[41] = *(v2 + 81);
          *&v100[56] = *(v2 + 96);
          v101 = v57;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(&v123, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
          return sub_1CF1DF344(v60, v61, v62, v63 & 1);
        }

        else
        {
          *v100 = v123;
          *&v100[16] = v124;
          v100[24] = BYTE8(v124);
          *&v100[25] = *(v2 + 65);
          *&v100[41] = *(v2 + 81);
          *&v100[56] = *(v2 + 96);
          v101 = 0;
          v102 = *(v2 + 112);
          v103 = *(v2 + 128);
          sub_1CEFCCBDC(&v123, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v87 = [v9 bindObjectParameter_];
          v88 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

          return v88;
        }
      }
    }

    if (a1 == 197)
    {
      v29 = *(v2 + 104);
      v30 = *(v2 + 88);
      v129[2] = *(v2 + 72);
      v129[3] = v30;
      v31 = *(v2 + 120);
      v129[4] = v29;
      v129[5] = v31;
      v32 = *(v2 + 56);
      v129[0] = *(v2 + 40);
      v129[1] = v32;
      v16 = v29;
      if (v29)
      {
        while (1)
        {
          v92 = *(v2 + 56);
          *v100 = *(v2 + 40);
          *&v100[16] = v92;
          v93 = *(v2 + 88);
          *&v100[32] = *(v2 + 72);
          *&v100[48] = v93;
          *(v8 + 72) = *(v2 + 112);
          v94 = *(v2 + 128);
          v101 = v16;
          v103 = v94;
          sub_1CEFCCBDC(v129, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
LABEL_68:
          sub_1CF9E7B68();
          __break(1u);
        }
      }

      v33 = a2;
      v34 = *(v2 + 56);
      *v100 = *(v2 + 40);
      *&v100[16] = v34;
      v35 = *(v2 + 88);
      *&v100[32] = *(v2 + 72);
      *&v100[48] = v35;
      v102 = *(v2 + 112);
      v36 = *(v2 + 128);
      v101 = 0;
      v103 = v36;
      sub_1CEFCCBDC(v129, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v37 = [v33 bindObjectParameter_];
    }

    else
    {
      v64 = *(v2 + 232);
      if (v64)
      {
        v65 = a2;
        v66 = [v64 version];
        a2 = v65;
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      v37 = [a2 bindLongParameter_];
    }

    goto LABEL_64;
  }

  if (a1 == 192)
  {
    v39 = a2;
    v40 = *(v2 + 40);
    v41 = *(v2 + 104);
    v42 = *(v2 + 88);
    v107[2] = *(v2 + 72);
    v107[3] = v42;
    v43 = *(v2 + 120);
    v108 = v41;
    v109 = v43;
    v44 = *(v2 + 56);
    v107[0] = v40;
    v107[1] = v44;
    v45 = DWORD2(v40);
    *v100 = v40;
    *&v100[12] = *(v2 + 52);
    *&v100[28] = *(v2 + 68);
    *&v100[44] = *(v2 + 84);
    if (v108)
    {
      v46 = *(v2 + 100);
      *&v100[8] = DWORD2(v40);
      *&v100[60] = v46;
      v102 = *(v2 + 112);
      v47 = *(v2 + 128);
      v101 = v108;
      v103 = v47;
      sub_1CEFCCBDC(v107, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
      LODWORD(v96) = v45;
      v48 = sub_1CF9E8028();
    }

    else
    {
      v80 = *(v2 + 100);
      *&v100[8] = DWORD2(v40);
      *&v100[60] = v80;
      v102 = *(v2 + 112);
      v81 = *(v2 + 128);
      v101 = 0;
      v103 = v81;
      sub_1CEFCCBDC(v107, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v48 = 0;
    }

    goto LABEL_66;
  }

  if (a1 == 193)
  {
    v22 = a2;
    v23 = *(v2 + 56);
    v24 = *(v2 + 104);
    v25 = *(v2 + 88);
    v110[2] = *(v2 + 72);
    v110[3] = v25;
    v26 = *(v2 + 120);
    v111 = v24;
    v112 = v26;
    v110[0] = *(v2 + 40);
    v110[1] = v23;
    v27 = BYTE8(v23);
    if (v24)
    {
      *v100 = *(v2 + 40);
      *&v100[16] = v23;
      v100[24] = BYTE8(v23);
      *&v100[25] = *(v2 + 65);
      *&v100[41] = *(v2 + 81);
      *&v100[56] = *(v2 + 96);
      v101 = v111;
      v102 = *(v2 + 112);
      v103 = *(v2 + 128);
      sub_1CEFCCBDC(v110, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
      if ((v27 & 1) == 0)
      {
        v28 = sub_1CF9E81A8();
LABEL_56:
        v82 = [v22 bindObjectParameter_];
        swift_unknownObjectRelease();
        v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v83;
      }
    }

    else
    {
      *v100 = *(v2 + 40);
      *&v100[16] = v23;
      v100[24] = BYTE8(v23);
      *&v100[25] = *(v2 + 65);
      *&v100[41] = *(v2 + 81);
      *&v100[56] = *(v2 + 96);
      v101 = 0;
      v102 = *(v2 + 112);
      v103 = *(v2 + 128);
      sub_1CEFCCBDC(v110, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);
    }

    v28 = 0;
    goto LABEL_56;
  }

  v49 = a2;
  v50 = *(v2 + 88);
  v114 = *(v2 + 72);
  v115 = v50;
  v51 = *(v2 + 120);
  v116 = *(v2 + 104);
  v117 = v51;
  v52 = *(v2 + 56);
  v113[0] = *(v2 + 40);
  v113[1] = v52;
  v53 = *(&v114 + 1);
  v54 = v115;
  if (v116)
  {
    v55 = *(v2 + 56);
    *v100 = *(v2 + 40);
    *&v100[16] = v55;
    *&v100[32] = *(v2 + 72);
    *&v100[40] = *(&v114 + 1);
    v100[48] = v115;
    *&v100[49] = *(v2 + 89);
    *&v100[52] = *(v2 + 92);
    *&v100[56] = *(&v115 + 1);
    v101 = v116;
    v102 = *(v2 + 112);
    v103 = *(v2 + 128);
    sub_1CEFCCBDC(v113, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);

    sub_1CEFCCC44(v100, &unk_1EC4BE330, &unk_1CF9FF010);
  }

  else
  {
    v84 = *(v2 + 56);
    *v100 = *(v2 + 40);
    *&v100[16] = v84;
    *&v100[32] = *(v2 + 72);
    *&v100[40] = *(&v114 + 1);
    v100[48] = v115;
    *&v100[49] = *(v2 + 89);
    *&v100[52] = *(v2 + 92);
    *&v100[56] = *(&v115 + 1);
    v101 = 0;
    v102 = *(v2 + 112);
    v103 = *(v2 + 128);
    sub_1CEFCCBDC(v113, &v96, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v100, &unk_1EC4BECD0, &unk_1CF9FEF80);

    v53 = 0;
    v54 = -1;
  }

  return sub_1CF39BEC8(v49, v53, v54);
}

uint64_t sub_1CF3A4FD4(char a1, void *a2)
{
  LOBYTE(v5) = a1;
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5 >> 6) <= 1u)
  {
    if (!(v5 >> 6))
    {
      v12 = *(v2 + 19);
      if (v12 >> 60 != 11)
      {
        v77 = v2[8];
        *&v78 = *(v2 + 18);
        *(&v78 + 1) = v12;
        v29 = v2[11];
        v79 = v2[10];
        v80 = v29;
        v81 = v77;
        *&v82[0] = v78;
        *(&v82[0] + 1) = v12;
        v82[1] = v79;
        v82[2] = v29;
        sub_1CF1AE1DC(&v81, &v73);
        v2 = &v77;
        v30 = sub_1CF356DB8(v5, a2);
        if (v3)
        {
          v73 = v77;
          v74 = v78;
          v75 = v79;
          v76 = v80;
          sub_1CF1AE25C(&v73);
        }

        else
        {
          v2 = v30;
          v73 = v77;
          v74 = v78;
          v75 = v79;
          v76 = v80;
          sub_1CF1AE25C(&v73);
        }

        return v2;
      }

      goto LABEL_62;
    }

LABEL_12:
    v20 = sub_1CF086728(v5 & 0x3F, a2, *(v2 + 13), *(v2 + 14), *(v2 + 120));
    if (!v3)
    {
      return v20;
    }

    return v2;
  }

  v13 = &v81;
  if (v5 >> 6 == 3)
  {
    if (v5 <= 0xC2u)
    {
      if (v5 == 192)
      {
        v42 = v2[3];
        v87 = v2[2];
        v88 = v42;
        v43 = v2[5];
        v89 = v2[4];
        v90 = v43;
        v17 = *(&v87 + 1);
        v16 = v87;
        v44 = v88;
        if (v88 != 1)
        {
LABEL_67:
          *&v81 = v16;
          *(&v81 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v70 = *(v2 + 11);
          *&v82[0] = v44;
          *(&v82[2] + 1) = v70;
          sub_1CEFCCBDC(&v87, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_68;
        }

        v81 = v87;
        *(v82 + 8) = *(v2 + 56);
        *(&v82[1] + 8) = *(v2 + 72);
        v45 = *(v2 + 11);
        *&v82[0] = 1;
        *(&v82[2] + 1) = v45;
        sub_1CEFCCBDC(&v87, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v36 = [a2 bindObjectParameter_];
      }

      else if (v5 == 193)
      {
        v32 = v2[3];
        v91 = v2[2];
        v92 = v32;
        v33 = v2[5];
        v93 = v2[4];
        v94 = v33;
        v17 = *(&v91 + 1);
        v16 = v91;
        v34 = v92;
        if (v92 != 1)
        {
LABEL_66:
          *&v81 = v16;
          *(&v81 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v69 = *(v2 + 11);
          *&v82[0] = v34;
          *(&v82[2] + 1) = v69;
          sub_1CEFCCBDC(&v91, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_67;
        }

        v81 = v91;
        *(v82 + 8) = *(v2 + 56);
        *(&v82[1] + 8) = *(v2 + 72);
        v35 = *(v2 + 11);
        *&v82[0] = 1;
        *(&v82[2] + 1) = v35;
        sub_1CEFCCBDC(&v91, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v36 = [a2 bindObjectParameter_];
      }

      else
      {
        v46 = v2[3];
        v95[0] = v2[2];
        v95[1] = v46;
        v47 = v2[5];
        v96 = v2[4];
        v97 = v47;
        v16 = *(&v46 + 1);
        v48 = v46;
        v17 = v96;
        if (v46 != 1)
        {
LABEL_68:
          v81 = v2[2];
          *&v82[0] = v48;
          *(&v82[0] + 1) = v16;
          *(v13 + 40) = *(v2 + 72);
          v71 = *(v2 + 11);
          *&v82[1] = v17;
          *(&v82[2] + 1) = v71;
          sub_1CEFCCBDC(v95, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_69;
        }

        v81 = v2[2];
        *&v82[0] = 1;
        *(&v82[0] + 1) = *(&v46 + 1);
        *(&v82[1] + 8) = *(v2 + 72);
        v49 = *(v2 + 11);
        *&v82[1] = v96;
        *(&v82[2] + 1) = v49;
        sub_1CEFCCBDC(v95, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v36 = [a2 bindObjectParameter_];
      }
    }

    else
    {
      if (v5 <= 0xC4u)
      {
        if (v5 == 195)
        {
          v14 = v2[3];
          v98[0] = v2[2];
          v98[1] = v14;
          v15 = v2[5];
          v99 = v2[4];
          v100 = v15;
          v16 = *(&v14 + 1);
          v17 = v99;
          if (v14 == 1)
          {
            v81 = v2[2];
            *&v82[0] = 1;
            *(&v82[0] + 1) = *(&v14 + 1);
            *(&v82[1] + 8) = *(v2 + 72);
            v18 = *(v2 + 11);
            *&v82[1] = v99;
            *(&v82[2] + 1) = v18;
            v5 = &unk_1CF9FEF20;
            sub_1CEFCCBDC(v98, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);

            v77 = 0u;
            v78 = 0u;
            v2 = sub_1CEFF8EA0(&v77);
            a2 = v19;
            sub_1CEFCCC44(&v77, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            if (a2)
            {
              return v2;
            }

            goto LABEL_11;
          }

          v81 = v2[2];
          v82[0] = v14;
          *(&v82[1] + 8) = *(v2 + 72);
          v68 = *(v2 + 11);
          *&v82[1] = v99;
          *(&v82[2] + 1) = v68;
          sub_1CEFCCBDC(v98, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_66;
        }

        v50 = v2[3];
        v101 = v2[2];
        v102 = v50;
        v51 = v2[5];
        v103 = v2[4];
        v104 = v51;
        v40 = *(&v101 + 1);
        v39 = v101;
        if (v102 == 1)
        {
          v81 = v101;
          *(v82 + 8) = *(v2 + 56);
          *(&v82[1] + 8) = *(v2 + 72);
          v52 = *(v2 + 11);
          *&v82[0] = 1;
          *(&v82[2] + 1) = v52;
          sub_1CEFCCBDC(&v101, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v36 = [a2 bindObjectParameter_];
          goto LABEL_63;
        }

        v81 = v101;
        *(v82 + 8) = *(v2 + 56);
        *(&v82[1] + 8) = *(v2 + 72);
        v65 = *(v2 + 11);
        *&v82[0] = v102;
        *(&v82[2] + 1) = v65;
        sub_1CEFCCBDC(&v101, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v39, v40);
        sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v39, v40);
        v63 = sub_1CF9E5B48();
        v64 = [a2 bindObjectParameter_];
        goto LABEL_59;
      }

      if (v5 != 197)
      {
        v53 = *(v2 + 24);
        if (v53)
        {
          v54 = [v53 version];
        }

        else
        {
          v54 = 0;
        }

        v36 = [a2 bindLongParameter_];
        goto LABEL_63;
      }

      v37 = v2[3];
      v105[0] = v2[2];
      v105[1] = v37;
      v38 = v2[5];
      v106 = v2[4];
      v107 = v38;
      v39 = *(&v37 + 1);
      v40 = v106;
      if (v37 != 1)
      {
        v81 = v2[2];
        v82[0] = v37;
        *(&v82[1] + 8) = *(v2 + 72);
        v62 = *(v2 + 11);
        *&v82[1] = v106;
        *(&v82[2] + 1) = v62;
        sub_1CEFCCBDC(v105, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v39, v40);
        sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v39, v40);
        v63 = sub_1CF9E5B48();
        v64 = [a2 bindObjectParameter_];
LABEL_59:
        v66 = v64;

        v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CEFE4714(v39, v40);
        sub_1CEFE4714(v39, v40);
        return v2;
      }

      v81 = v2[2];
      *&v82[0] = 1;
      *(&v82[0] + 1) = *(&v37 + 1);
      *(&v82[1] + 8) = *(v2 + 72);
      v41 = *(v2 + 11);
      *&v82[1] = v106;
      *(&v82[2] + 1) = v41;
      sub_1CEFCCBDC(v105, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v36 = [a2 bindObjectParameter_];
    }

LABEL_63:
    v67 = v36;
    v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v2;
  }

  if (v5 > 0x83u)
  {
    if (v5 > 0x85u)
    {
      if (v5 == 134)
      {
        v36 = [a2 bindBooleanParameter_];
      }

      else
      {
        v58 = v2[3];
        v83 = v2[2];
        v84 = v58;
        v59 = v2[5];
        v85 = v2[4];
        v86 = v59;
        v17 = *(&v83 + 1);
        v16 = v83;
        v60 = v84;
        if (v84 != 1)
        {
LABEL_69:
          *&v81 = v16;
          *(&v81 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v72 = *(v2 + 11);
          *&v82[0] = v60;
          *(&v82[2] + 1) = v72;
          sub_1CEFCCBDC(&v83, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          result = sub_1CEFCCC44(&v81, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_70;
        }

        v81 = v83;
        *(v82 + 8) = *(v2 + 56);
        *(&v82[1] + 8) = *(v2 + 72);
        v61 = *(v2 + 11);
        *&v82[0] = 1;
        *(&v82[2] + 1) = v61;
        sub_1CEFCCBDC(&v83, &v77, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v81, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v36 = [a2 bindObjectParameter_];
      }

      goto LABEL_63;
    }

    if (v5 == 132)
    {
      v31 = *(v2 + 96);
LABEL_47:
      *(&v82[0] + 1) = MEMORY[0x1E69E6530];
      *&v81 = v31;
      goto LABEL_53;
    }

    v55 = *(v2 + 97);
    if (v55 != 6)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (v5 > 0x81u)
  {
    if (v5 == 130)
    {
      v31 = *(v2 + 2);
      goto LABEL_47;
    }

    v55 = *(v2 + 24);
    if (v55 != 5)
    {
LABEL_51:
      v56 = MEMORY[0x1E69E6530];
      goto LABEL_52;
    }

LABEL_49:
    v55 = 0;
    v56 = 0;
    *(&v81 + 1) = 0;
    *&v82[0] = 0;
LABEL_52:
    *&v81 = v55;
    *(&v82[0] + 1) = v56;
LABEL_53:
    v2 = sub_1CEFF8EA0(&v81);
    a2 = v57;
    sub_1CEFCCC44(&v81, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (a2)
    {
      return v2;
    }

LABEL_11:
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_12;
  }

  if (v5 != 128)
  {
    v31 = *(v2 + 1);
    goto LABEL_47;
  }

  v21 = *v2;
  if (!v21)
  {
LABEL_62:
    v36 = [a2 bindObjectParameter_];
    goto LABEL_63;
  }

  v22 = v9;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v108 = v21;
  sub_1CF9E6918();
  v23 = sub_1CF9E68C8();
  v25 = v24;

  result = (*(v7 + 8))(v11, v22);
  if (v25 >> 60 != 15)
  {
    v27 = sub_1CF9E5B48();
    sub_1CEFE48D8(v23, v25);
    v28 = [a2 bindObjectParameter_];

    v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v2;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1CF3A5BD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = *(v1 + qword_1EDEBB780);
  if ((*(v18 + 82) & 4) != 0)
  {
    v22 = *(a1 + 80);
    v21 = *(a1 + 88);
    v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
    v24 = type metadata accessor for ItemMetadata();
    v25 = *(v23 + *(v24 + 104));
    v26 = *(v24 + 120);
    v27 = *(v18 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v28 = swift_dynamicCastClass();
    if (v28 && *(*(v28 + 32) + qword_1EDEBBB18))
    {

      if (sub_1CF3A8798(v22, v21, v23 + v26))
      {
        if ((*(v18 + 82) & 8) == 0 && (v29 = *(v18 + 24), (v30 = swift_dynamicCastClass()) != 0) && (v31 = *(*(v30 + 32) + qword_1EDEBBB18)) != 0)
        {
          v32 = *(v31 + qword_1EDEBB7B0);

          v34 = v25 > 0 && v32 >= v25;
        }

        else
        {

          v34 = 1;
        }

        return v34 & 1;
      }
    }

    goto LABEL_19;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v20 = type metadata accessor for ItemMetadata();
  sub_1CEFCCBDC(a1 + *(v20 + 120) + v19, v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_19:
    v34 = 0;
    return v34 & 1;
  }

  (*(v8 + 32))(v17, v6, v7);
  result = sub_1CF9E5CC8();
  if ((*(v1 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v1 + qword_1EDEBB798)) >> 63)
  {
    sub_1CF9E5C38();
    v36 = *(v8 + 8);
    v36(v12, v7);
    sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
    v37 = sub_1CF9E67E8();
    v36(v15, v7);
    v36(v17, v7);
    v34 = v37 ^ 1;
    return v34 & 1;
  }

  __break(1u);
  return result;
}

void sub_1CF3A6000(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v86 = a3;
  v85 = a2;
  v93 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v85 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v85 - v9;
  v11 = sub_1CF9E64A8();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v89 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v85 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v85 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v85 - v28;
  sub_1CEFCCBDC(v93, &v85 - v28, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 44)
    {
      sub_1CF0335E0();
      goto LABEL_47;
    }

    v31 = v92;
    if (EnumCaseMultiPayload != 22)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_47:
        sub_1CEFCCC44(v29, &qword_1EC4BE710, &qword_1CF9FE5A8);
        return;
      }

      v32 = v29;
      sub_1CEFCCBDC(v29, v27, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v34 = *(v33 + 48);
      if ((*&v27[*(v33 + 64)] & 0x40200000000082ALL) == 0)
      {
LABEL_9:
        sub_1CEFCCC44(&v27[v34], &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v27, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v29 = v32;
        goto LABEL_47;
      }

      v35 = *(*&v31[qword_1EDEBB780] + 64);
      v37 = v89;
      v36 = v90;
      *v89 = v35;
      v38 = v91;
      (*(v36 + 104))(v37, *MEMORY[0x1E69E8020], v91);
      v39 = v35;
      LOBYTE(v35) = sub_1CF9E64D8();
      (*(v36 + 8))(v37, v38);
      if (v35)
      {
        v40 = *(*v31 + 136);
        swift_beginAccess();
        if ((v31[v40] & 1) == 0)
        {
          v31[v40] = 1;
          v31[72] = 1;
          sub_1CF802820(v85, v86);
        }

        goto LABEL_9;
      }

      goto LABEL_50;
    }

    sub_1CEFCCBDC(v29, v18, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v18 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
      if (swift_dynamicCastClass())
      {

        goto LABEL_20;
      }

LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
      if (swift_dynamicCastClass())
      {
        v73 = *(*&v31[qword_1EDEBB780] + 64);
        v75 = v89;
        v74 = v90;
        *v89 = v73;
        v76 = v91;
        (*(v74 + 104))(v75, *MEMORY[0x1E69E8020], v91);
        v77 = v73;
        LOBYTE(v73) = sub_1CF9E64D8();
        (*(v74 + 8))(v75, v76);
        if ((v73 & 1) == 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v78 = *(*v31 + 136);
        swift_beginAccess();
        if ((v31[v78] & 1) == 0)
        {
          v31[v78] = 1;
          v31[72] = 1;
          sub_1CF802820(v85, v86);
        }
      }

      goto LABEL_47;
    }

    goto LABEL_29;
  }

  v41 = v87;
  v42 = v88;
  if (EnumCaseMultiPayload == 5)
  {
    sub_1CEFCCBDC(v29, v21, &qword_1EC4BE710, &qword_1CF9FE5A8);
    sub_1CEFD0994(v21[2], *(v21 + 24), *(v21 + 25));
    sub_1CEFD0994(*v21, *(v21 + 8), *(v21 + 9));
    v31 = v92;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    goto LABEL_47;
  }

  v43 = v6;
  v44 = v29;
  sub_1CEFCCBDC(v29, v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
  v46 = *(v45 + 48);
  v47 = *&v24[*(v45 + 64)];
  v48 = *(v41 + 48);
  if (v48(&v24[v46], 1, v42) == 1)
  {
    sub_1CEFCCC44(&v24[v46], &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFCCC44(v24, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v29 = v44;
    goto LABEL_47;
  }

  sub_1CEFE55D0(v24, v10, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v55 = &v24[v46];
  v56 = v43;
  v57 = v10;
  sub_1CEFE55D0(v55, v56, &unk_1EC4BE360, &qword_1CF9FE650);
  v58 = v48(v10, 1, v42);
  v59 = (v56 + *(v42 + 48));
  if (v58 == 1 || *v59 != 1)
  {
    v31 = v92;
    v29 = v44;
    if (!*v59)
    {
      if (v58 != 1 && (v47 & 0x10) != 0)
      {
        v61 = v57;
        v68 = *(*&v92[qword_1EDEBB780] + 64);
        v70 = v89;
        v69 = v90;
        *v89 = v68;
        v71 = v91;
        (*(v69 + 104))(v70, *MEMORY[0x1E69E8020], v91);
        v72 = v68;
        LOBYTE(v68) = sub_1CF9E64D8();
        (*(v69 + 8))(v70, v71);
        if ((v68 & 1) == 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        goto LABEL_44;
      }

      if (v59[*(type metadata accessor for ItemMetadata() + 80)] == 1 && (v47 & 0x820) != 0)
      {
        v61 = v57;
        v79 = *(*&v31[qword_1EDEBB780] + 64);
        v81 = v89;
        v80 = v90;
        *v89 = v79;
        v82 = v91;
        (*(v80 + 104))(v81, *MEMORY[0x1E69E8020], v91);
        v83 = v79;
        LOBYTE(v79) = sub_1CF9E64D8();
        (*(v80 + 8))(v81, v82);
        if ((v79 & 1) == 0)
        {
LABEL_52:
          __break(1u);
          return;
        }

        goto LABEL_44;
      }
    }

LABEL_46:
    sub_1CEFCCC44(v56, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v57, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_47;
  }

  v60 = type metadata accessor for ItemMetadata();
  v31 = v92;
  v29 = v44;
  if ((v59[*(v60 + 80)] & 1) != 0 || (v47 & 0x10) == 0)
  {
    goto LABEL_46;
  }

  v61 = v57;
  v62 = *(*&v92[qword_1EDEBB780] + 64);
  v64 = v89;
  v63 = v90;
  *v89 = v62;
  v65 = v91;
  (*(v63 + 104))(v64, *MEMORY[0x1E69E8020], v91);
  v66 = v62;
  LOBYTE(v62) = sub_1CF9E64D8();
  (*(v63 + 8))(v64, v65);
  if (v62)
  {
LABEL_44:
    v84 = *(*v31 + 136);
    swift_beginAccess();
    v57 = v61;
    if ((v31[v84] & 1) == 0)
    {
      v31[v84] = 1;
      v31[72] = 1;
      sub_1CF802820(v85, v86);
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
  v67 = swift_dynamicCastClass();

  if (!v67)
  {
    goto LABEL_47;
  }

LABEL_20:
  sub_1CEFCCC44(v29, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v49 = *(*&v31[qword_1EDEBB780] + 64);
  v51 = v89;
  v50 = v90;
  *v89 = v49;
  v52 = v91;
  (*(v50 + 104))(v51, *MEMORY[0x1E69E8020], v91);
  v53 = v49;
  LOBYTE(v49) = sub_1CF9E64D8();
  (*(v50 + 8))(v51, v52);
  if ((v49 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v54 = *(*v31 + 136);
  swift_beginAccess();
  if ((v31[v54] & 1) == 0)
  {
    v31[v54] = 1;
    v31[72] = 1;
    sub_1CF802820(v85, v86);
  }
}

uint64_t sub_1CF3A6A70(void *a1, uint64_t *a2, unsigned int a3)
{
  v197 = a3;
  v196 = a2;
  v212 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v208 = *(v3 - 8);
  v209 = v3;
  v4 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v207 = &v182 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v206 = &v182 - v8;
  v9 = sub_1CF9E5CF8();
  v199 = *(v9 - 8);
  v200 = v9;
  v10 = *(v199 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v184 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v185 = &v182 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v190 = &v182 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v182 - v17;
  v201 = type metadata accessor for ItemMetadata();
  v18 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v198 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v195 = &v182 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v186 = &v182 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v188 = &v182 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v194 = &v182 - v31;
  v32 = sub_1CF9E64A8();
  v203 = *(v32 - 8);
  v204 = v32;
  v33 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v191 = &v182 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v189 = &v182 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v187 = &v182 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v193 = &v182 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v202 = &v182 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v205 = &v182 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = (&v182 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = (&v182 - v55);
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v182 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v182 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v182 - v63;
  sub_1CEFCCBDC(v212, &v182 - v63, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v80 = v24;
    v82 = v208;
    v81 = v209;
    v84 = v206;
    v83 = v207;
    v212 = v35;
    if (EnumCaseMultiPayload == 5)
    {
      v89 = v64;
      sub_1CEFCCBDC(v64, v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v90 = v210;
      v91 = *(*&v210[qword_1EDEBB780] + 64);
      v92 = v212;
      *v212 = v91;
      v93 = v203;
      v94 = v204;
      (*(v203 + 104))(v92, *MEMORY[0x1E69E8020], v204);
      v95 = v91;
      LOBYTE(v91) = sub_1CF9E64D8();
      result = (*(v93 + 8))(v92, v94);
      v97 = v211;
      if (v91)
      {
        v98 = *(*v90 + 136);
        swift_beginAccess();
        if ((v90[v98] & 1) != 0 || (v90[v98] = 1, v90[72] = 1, sub_1CF802820(v196, v197), !v97))
        {
          v64 = v89;
          sub_1CEFD0994(v56[2], *(v56 + 24), *(v56 + 25));
          sub_1CEFD0994(*v56, *(v56 + 8), *(v56 + 9));
        }

        else
        {
          sub_1CEFD0994(v56[2], *(v56 + 24), *(v56 + 25));
          sub_1CEFD0994(*v56, *(v56 + 8), *(v56 + 9));
          v64 = v89;
        }

        return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      __break(1u);
      goto LABEL_90;
    }

    if (EnumCaseMultiPayload != 6)
    {
      return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    v183 = v64;
    sub_1CEFCCBDC(v64, v59, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
    v86 = *(v85 + 48);
    v205 = *&v59[*(v85 + 64)];
    v87 = *(v82 + 48);
    if (v87(&v59[v86], 1, v81) == 1)
    {
      sub_1CEFCCC44(&v59[v86], &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_46:
      v64 = v183;
      return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    sub_1CEFE55D0(v59, v84, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(&v59[v86], v83, &unk_1EC4BE360, &qword_1CF9FE650);
    v99 = v87(v84, 1, v81);
    v100 = (v83 + v81[12]);
    if (v99 == 1 || *v100 != 1)
    {
      if (!*v100)
      {
        sub_1CEFCCBDC(&v100[*(v201 + 120)], v80, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v199 + 48))(v80, 1, v200) != 1)
        {
          sub_1CEFCCC44(v80, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if (v87(v84, 1, v81) == 1 || (v205 & 0x10) == 0)
          {
            if (v100[*(v201 + 80)] != 1 || (v205 & 0x20) == 0)
            {
              v64 = v183;
LABEL_28:
              sub_1CEFCCC44(v83, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_42:
              sub_1CEFCCC44(v84, &qword_1EC4C1B40, &unk_1CF9FCB70);
              return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

            v101 = v210;
            v168 = *(*&v210[qword_1EDEBB780] + 64);
            v169 = v212;
            *v212 = v168;
            v170 = v203;
            v171 = v204;
            (*(v203 + 104))(v169, *MEMORY[0x1E69E8020], v204);
            v172 = v168;
            LOBYTE(v168) = sub_1CF9E64D8();
            (*(v170 + 8))(v169, v171);
            if ((v168 & 1) == 0)
            {
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            v101 = v210;
            v142 = *(*&v210[qword_1EDEBB780] + 64);
            v143 = v212;
            *v212 = v142;
            v144 = v203;
            v139 = v204;
            (*(v203 + 104))(v143, *MEMORY[0x1E69E8020], v204);
            v145 = v142;
            LOBYTE(v142) = sub_1CF9E64D8();
            (*(v144 + 8))(v143, v139);
            if ((v142 & 1) == 0)
            {
              __break(1u);
              goto LABEL_70;
            }
          }

LABEL_26:
          v107 = *(*v101 + 136);
          swift_beginAccess();
          v64 = v183;
          if ((v101[v107] & 1) == 0)
          {
            v101[v107] = 1;
            v101[72] = 1;
            sub_1CF802820(v196, v197);
          }

          goto LABEL_28;
        }

        sub_1CEFCCC44(v83, &unk_1EC4BE360, &qword_1CF9FE650);
        v120 = &unk_1EC4BEDC0;
        v121 = &unk_1CF9FEEA0;
        v122 = v80;
LABEL_41:
        sub_1CEFCCC44(v122, v120, v121);
        v64 = v183;
        goto LABEL_42;
      }
    }

    else if ((v100[*(v201 + 80)] & 1) == 0 && (v205 & 0x10) != 0)
    {
      v101 = v210;
      v102 = *(*&v210[qword_1EDEBB780] + 64);
      v103 = v212;
      *v212 = v102;
      v104 = v203;
      v105 = v204;
      (*(v203 + 104))(v103, *MEMORY[0x1E69E8020], v204);
      v106 = v102;
      LOBYTE(v102) = sub_1CF9E64D8();
      result = (*(v104 + 8))(v103, v105);
      if ((v102 & 1) == 0)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      goto LABEL_26;
    }

    v120 = &unk_1EC4BE360;
    v121 = &qword_1CF9FE650;
    v122 = v83;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload == 22)
  {
    sub_1CEFCCBDC(v64, v53, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if (*v53 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
      if (!swift_dynamicCastClass())
      {

        return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      v108 = v64;
      v109 = v35;
      v110 = v210;
      v111 = *(*&v210[qword_1EDEBB780] + 64);
      *v109 = v111;
      v113 = v203;
      v112 = v204;
      (*(v203 + 104))(v109, *MEMORY[0x1E69E8020], v204);
      v114 = v111;
      LOBYTE(v111) = sub_1CF9E64D8();
      result = (*(v113 + 8))(v109, v112);
      if (v111)
      {
        v115 = *(*v110 + 136);
        swift_beginAccess();
        if (v110[v115] != 1)
        {
          v110[v115] = 1;
          v110[72] = 1;
          sub_1CF802820(v196, v197);
        }

        v64 = v108;
        return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      goto LABEL_91;
    }

    v88 = *v53;

    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload != 7)
  {
    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v212 = v35;
  sub_1CEFCCBDC(v64, v62, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
  v67 = *(v66 + 48);
  v68 = v64;
  v69 = *&v62[*(v66 + 64)];
  v70 = v205;
  sub_1CEFE55D0(v62, v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v71 = &v62[v67];
  v72 = v202;
  sub_1CEFE55D0(v71, v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if ((v69 & 0x40200000000002ALL) == 0)
  {
    sub_1CEFCCC44(v72, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v70, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v64 = v68;
    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v183 = v68;
  v73 = v193;
  sub_1CEFCCBDC(v70, v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v75 = *(*(v74 - 8) + 48);
  if (v75(v73, 1, v74) == 1)
  {
    sub_1CEFCCC44(v73, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v77 = v199;
    v76 = v200;
    v78 = v194;
    (*(v199 + 56))(v194, 1, 1, v200);
    v79 = v195;
  }

  else
  {
    v116 = v198;
    sub_1CEFDA214(v73 + *(v74 + 48), v198, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v73, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v78 = v194;
    sub_1CEFCCBDC(v116 + *(v201 + 120), v194, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFD5278(v116, type metadata accessor for ItemMetadata);
    v77 = v199;
    v76 = v200;
    v117 = *(v199 + 48);
    v118 = v117(v78, 1, v200);
    v79 = v195;
    if (v118 != 1)
    {
      goto LABEL_50;
    }
  }

  sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v119 = v191;
  sub_1CEFCCBDC(v72, v191, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v75(v119, 1, v74) == 1)
  {
    sub_1CEFCCC44(v72, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v119, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    (*(v77 + 56))(v79, 1, 1, v76);
LABEL_45:
    sub_1CEFCCC44(v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_46;
  }

  v123 = v198;
  sub_1CEFDA214(v119 + *(v74 + 48), v198, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v119, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCBDC(v123 + *(v201 + 120), v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v123, type metadata accessor for ItemMetadata);
  v117 = *(v77 + 48);
  if (v117(v79, 1, v76) == 1)
  {
    sub_1CEFCCC44(v72, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_45;
  }

  v78 = v79;
LABEL_50:
  sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v124 = v190;
  result = sub_1CF9E5CC8();
  if ((*&v210[qword_1EDEBB798] * -86400) >> 64 != (-86400 * *&v210[qword_1EDEBB798]) >> 63)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_1CF9E5C38();
  v125 = v77;
  v126 = v124;
  v127 = v200;
  v209 = *(v77 + 8);
  (v209)(v126, v200);
  v128 = v187;
  sub_1CEFCCBDC(v205, v187, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v75(v128, 1, v74) == 1)
  {
    sub_1CEFCCC44(v128, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v129 = v188;
    (*(v125 + 56))(v188, 1, 1, v127);
    v130 = v189;
LABEL_54:
    sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_55;
  }

  v131 = v198;
  sub_1CEFDA214(v128 + *(v74 + 48), v198, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v128, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v129 = v188;
  sub_1CEFCCBDC(v131 + *(v201 + 120), v188, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v131, type metadata accessor for ItemMetadata);
  v132 = v117(v129, 1, v127);
  v130 = v189;
  if (v132 == 1)
  {
    goto LABEL_54;
  }

  v138 = v129;
  v139 = v185;
  (*(v199 + 32))(v185, v138, v127);
  sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
  if ((sub_1CF9E67E8() & 1) == 0)
  {
LABEL_70:
    v146 = v210;
    v147 = *(*&v210[qword_1EDEBB780] + 64);
    v148 = v212;
    *v212 = v147;
    v150 = v203;
    v149 = v204;
    (*(v203 + 104))(v148, *MEMORY[0x1E69E8020], v204);
    v151 = v147;
    LOBYTE(v147) = sub_1CF9E64D8();
    result = (*(v150 + 8))(v148, v149);
    if (v147)
    {
      v152 = *(*v146 + 136);
      swift_beginAccess();
      v153 = v211;
      v154 = v183;
      if (v146[v152])
      {
        v155 = v200;
        v156 = v192;
      }

      else
      {
        v146[v152] = 1;
        v146[72] = 1;
        sub_1CF802820(v196, v197);
        v156 = v192;
        if (v153)
        {
          v176 = v139;
          v177 = v200;
          v178 = v209;
          (v209)(v176, v200);
          (v178)(v156, v177);
          sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v179 = v205;
LABEL_88:
          sub_1CEFCCC44(v179, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v64 = v154;
          return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        v155 = v200;
      }

      v180 = v205;
      v181 = v209;
      (v209)(v185, v155);
      (v181)(v156, v155);
      sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v179 = v180;
      goto LABEL_88;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  (v209)(v139, v127);
LABEL_55:
  v133 = v202;
  sub_1CEFCCBDC(v202, v130, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v75(v130, 1, v74) == 1)
  {
    (v209)(v192, v127);
    sub_1CEFCCC44(v133, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v130, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v134 = v186;
    (*(v199 + 56))(v186, 1, 1, v127);
    v64 = v183;
LABEL_59:
    sub_1CEFCCC44(v134, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v135 = v198;
  sub_1CEFDA214(v130 + *(v74 + 48), v198, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v130, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v134 = v186;
  sub_1CEFCCBDC(v135 + *(v201 + 120), v186, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v135, type metadata accessor for ItemMetadata);
  v136 = v199;
  v137 = v117(v134, 1, v127);
  v64 = v183;
  if (v137 == 1)
  {
    (v209)(v192, v127);
    sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_59;
  }

  v80 = v183;
  v140 = v184;
  (*(v136 + 32))(v184, v134, v127);
  sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
  v84 = v192;
  if (sub_1CF9E67E8())
  {
    v141 = v209;
    (v209)(v140, v127);
    (v141)(v84, v127);
    sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v205, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v64 = v80;
    return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v157 = v210;
  v158 = *(*&v210[qword_1EDEBB780] + 64);
  v159 = v212;
  *v212 = v158;
  v161 = v203;
  v160 = v204;
  (*(v203 + 104))(v159, *MEMORY[0x1E69E8020], v204);
  v162 = v158;
  LOBYTE(v158) = sub_1CF9E64D8();
  result = (*(v161 + 8))(v159, v160);
  if (v158)
  {
    v163 = *(*v157 + 136);
    swift_beginAccess();
    v164 = v211;
    if ((v157[v163] & 1) == 0)
    {
      v157[v163] = 1;
      v157[72] = 1;
      sub_1CF802820(v196, v197);
      if (v164)
      {
        v165 = v200;
        v166 = v209;
        (v209)(v140, v200);
        (v166)(v84, v165);
        sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v167 = v205;
LABEL_82:
        sub_1CEFCCC44(v167, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v64 = v80;
        return sub_1CEFCCC44(v64, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

LABEL_81:
    v173 = v200;
    v174 = v205;
    v175 = v209;
    (v209)(v184, v200);
    (v175)(v84, v173);
    sub_1CEFCCC44(v202, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v167 = v174;
    goto LABEL_82;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1CF3A8440()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  if (*v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v2, v3);

  if ((*(v1 + 16) & 1) == 0)
  {
    v11 = *(v1 + 8);
    sub_1CF064F48();
    v4 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v4);

    MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  }

  if ((*(v0 + qword_1EDEBB7D8 + 8) & 1) == 0)
  {
    v12 = *(v0 + qword_1EDEBB7D8);
    sub_1CF064F48();
    v5 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v5);

    MEMORY[0x1D3868CC0](0x3A7478656E20, 0xE600000000000000);
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v6 = *(v1 + 32);
    sub_1CF9E7948();

    sub_1CF064F48();
    v7 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA433E0);
  }

  sub_1CF9E7948();

  v13 = *(v1 + 24);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA433A0);

  sub_1CF9E7948();

  v14 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = *(v1 + 57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9E0, &unk_1CFA03F70);
  v9 = sub_1CF9E6948();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA433C0);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A79747269643CLL;
}

uint64_t sub_1CF3A8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v43 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  sub_1CEFCCBDC(a3, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v21 = 0;
  }

  else
  {
    (*(v13 + 32))(v20, v11, v12);
    v48 = a1;
    v49 = a2;
    v46 = 47;
    v47 = 0xE100000000000000;
    v44 = 58;
    v45 = 0xE100000000000000;
    v40 = sub_1CEFE4E68();
    v41 = v40;
    v39[0] = MEMORY[0x1E69E6158];
    v39[1] = v40;
    sub_1CF9E7668();
    v22 = sub_1CF9E6888();

    v23 = [v22 pathExtension];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = sub_1CF9E6958();
    v26 = v25;

    v27 = objc_sync_enter(v4);
    if (v27)
    {
      MEMORY[0x1EEE9AC00](v27);
      v40 = v4;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v39, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v28 = *&v4[qword_1EDEBB7F0];
    if (*(v28 + 16))
    {
      v29 = *&v4[qword_1EDEBB7F0];

      v30 = sub_1CEFE4328(v24, v26);
      v32 = v31;
      if (v31)
      {
        v33 = *(*(v28 + 56) + 8 * v30);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v34 = objc_sync_exit(v4);
    if (v34)
    {
      MEMORY[0x1EEE9AC00](v34);
      v40 = v4;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v39, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if ((v32 & (v33 > 0)) != 0)
    {
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        (*(v13 + 8))(v20, v12);
        v21 = 1;
      }

      else
      {
        v35 = v42;
        sub_1CF9E5CC8();
        v36 = v43;
        sub_1CF9E5C38();
        v37 = *(v13 + 8);
        v37(v35, v12);
        sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
        LOBYTE(v35) = sub_1CF9E67E8();
        v37(v36, v12);
        v37(v20, v12);
        v21 = v35 ^ 1;
      }
    }

    else
    {
      (*(v13 + 8))(v20, v12);
      v21 = 0;
    }
  }

  return v21 & 1;
}

uint64_t sub_1CF3A8C70(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t), uint64_t), void (*a3)(uint64_t (*)(uint64_t), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 72);
    v7 = *(result + 80);
    a2(v6, v7);

    if (v6)
    {
      v9 = v6(v8);
      a3(v6, v7);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF3A8D20(uint64_t result, uint64_t a2, char a3)
{
  v28 = a2;
  LOBYTE(v29) = a3;
  v5 = *(v3 + 72);
  if (v5)
  {
    v6 = v3;
    v7 = result;
    v8 = v4;
    v9 = *(v3 + 80);

    v11 = v5(v10);
    result = sub_1CEFF7124(v5);
    if (v11)
    {
      v12 = *(v7 + 96);
      v13 = *(v7 + 104);
      v14 = *(v7 + 112);
      if (*(v7 + 112))
      {
        if (v14 != 1)
        {
          goto LABEL_23;
        }

        v15 = *(*v11 + 304);
        v16 = *(v7 + 96);

        v15(v17);
LABEL_22:
        sub_1CF03D7A8(v12, v13, v14);
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = v24;
          v26 = *(*v11 + 544);

          v26(v25, 1, &v28, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v8)
          {
          }
        }

        v27 = (*(*v11 + 184))(v24);
        if (v27)
        {
          (*(*v27 + 120))(v11, v7);
        }
      }

      if ((v12 & 0x200000) != 0)
      {
        v19 = *(*v11 + 352);
        v20 = *(v7 + 104);

        v19(v21);
        if ((v12 & 0x1000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = *(v7 + 104);

        if ((v12 & 0x1000000) == 0)
        {
          goto LABEL_22;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        (*(*v11 + 584))(v22, v23);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
      if (swift_dynamicCastClass() && (*(v6 + 104) & 1) == 0)
      {
        *(v6 + 104) = 1;
        if (qword_1EDEA5A98 != -1)
        {
          swift_once();
        }

        [qword_1EDEBB818 addWatcher_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
      if (swift_dynamicCastClass() && (*(v6 + 104) & 1) == 0)
      {
        *(v6 + 104) = 1;
        if (qword_1EDEA5A98 != -1)
        {
          swift_once();
        }

        [qword_1EDEBB818 addWatcher_];
      }

      goto LABEL_22;
    }
  }

  return result;
}

void sub_1CF3A90C0(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v31 - v10);
  v36 = v3;
  v37 = a1;
  v12 = sub_1CF7D55FC(sub_1CF480D0C, v35, a2, a3);
  if (!v4)
  {
    v13 = v12;
    v42 = 0;
    v14 = [v12 next];
    if (v14)
    {
      v34 = [v13 longAtIndex_];
      if ([v13 isNullAtIndex_])
      {
        v33 = 4;
      }

      else
      {
        v33 = [v13 longAtIndex_];
      }

      v32 = [v13 isNullAtIndex_];
      v31 = [v13 unsignedLongAtIndex_];
      v18 = *(v3 + 16);
      v40 = &type metadata for SQLItemJobID;
      v41 = sub_1CF03E084();
      v19 = v34;
      v38 = v34;
      v39 = v18;
      swift_beginAccess();
      sub_1CEFDA9E0(&v38, a1 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v20 = swift_endAccess();
      if (v33 == 2)
      {
        MEMORY[0x1EEE9AC00](v20);
        *(&v31 - 4) = v3;
        *(&v31 - 3) = a1;
        *(&v31 - 2) = v19;
        v21 = v42;
        sub_1CF7D5920(sub_1CF485978, (&v31 - 6), a2);
        if (v21)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      MEMORY[0x1EEE9AC00](v20);
      v22 = &v31 - 6;
      *(&v31 - 4) = v3;
      *(&v31 - 3) = a1;
      *(&v31 - 2) = v19;
      v23 = v42;
      if (v24 >= 2)
      {
        v25 = sub_1CF480D1C;
      }

      else
      {
        if (v32)
        {
          sub_1CF7D5920(sub_1CF480D34, v22, a2);
          if (!v23)
          {
            if (v31 == 0x8000 && *(a1 + 136) != 0x8000)
            {
              v26 = *(v3 + 72);
              if (v26)
              {
                v27 = *(v3 + 80);

                v29 = v26(v28);
                sub_1CEFF7124(v26);
                if (v29)
                {
                  *v11 = a1;
                  swift_storeEnumTagMultiPayload();
                  v30 = *(*v29 + 312);

                  v30(v11);

                  sub_1CEFCCC44(v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
                  return;
                }
              }
            }

            goto LABEL_21;
          }

          goto LABEL_14;
        }

        v25 = sub_1CF480D28;
      }

      sub_1CF7D5920(v25, v22, a2);
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_19:
      if (![a2 changes])
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    MEMORY[0x1EEE9AC00](v14);
    *(&v31 - 2) = v3;
    *(&v31 - 1) = a1;
    v15 = v42;
    sub_1CF7D5920(sub_1CF480D14, (&v31 - 4), a2);
    if (!v15)
    {
      v16 = [a2 lastInsertedRowID];
      v17 = *(v3 + 16);
      v40 = &type metadata for SQLItemJobID;
      v41 = sub_1CF03E084();
      v38 = v16;
      v39 = v17;
      swift_beginAccess();
      sub_1CEFDA9E0(&v38, a1 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
      swift_endAccess();
LABEL_20:
      sub_1CF3A8D20(a1, a2, a3);
LABEL_21:

      return;
    }

LABEL_14:
  }
}

uint64_t sub_1CF3A95B0(void *a1, uint64_t a2, uint64_t *a3)
{
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000004ALL, 0x80000001CFA44EB0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D2065707974);
  v6 = *a3;
  v7 = qword_1CFA05BE8[sub_1CF388E8C()];
  v17[3] = MEMORY[0x1E69E6530];
  v17[0] = v7;
  v8 = sub_1CEFF8EA0(v17);
  v10 = v9;
  sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v11 = a3[18];
    if (*(a3 + 152))
    {
      if (*(a3 + 152) != 1)
      {
        v11 = (v11 != 0) << 63;
        goto LABEL_8;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v12 = [a1 bindLongParameter_];
        v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v15 = v14;

        MEMORY[0x1D3868CC0](v13, v15);

        return v18;
      }

      __break(1u);
    }

    v11 = -v11;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3A97E8(void *a1, void *a2, uint64_t *a3)
{
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v41 = 0;
  v42 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44E30);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA44E50);
  v6 = a3[18];
  if (!*(a3 + 152))
  {
    goto LABEL_5;
  }

  if (*(a3 + 152) != 1)
  {
    v6 = (v6 != 0) << 63;
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v6 = -v6;
  }

LABEL_7:
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v11 = *a3;
  v12 = sub_1CF388E8C();
  v13 = MEMORY[0x1E69E6530];
  v14 = qword_1CFA05BE8[v12];
  v40 = MEMORY[0x1E69E6530];
  v39[0] = v14;
  v15 = sub_1CEFF8EA0(v39);
  v17 = v16;
  sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v17)
  {
    goto LABEL_12;
  }

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v18 = a3[12];
  v19 = a3[13];
  v20 = *(a3 + 112);
  sub_1CF03C530(v18, v19, v20);
  v21 = sub_1CF03D7E8();
  v22 = sub_1CF03D9EC(v21, v18, v19, v20);
  v24 = v23;

  sub_1CF03D7A8(v18, v19, v20);
  MEMORY[0x1D3868CC0](v22, v24);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v25 = a3[17];
  v26 = MEMORY[0x1E69E6810];
  v40 = MEMORY[0x1E69E6810];
  v39[0] = v25;
  v27 = sub_1CEFF8EA0(v39);
  v29 = v28;
  sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v29)
  {
    goto LABEL_12;
  }

  MEMORY[0x1D3868CC0](v27, v29);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v30 = a3[16];
  v40 = v13;
  v39[0] = v30;
  v31 = sub_1CEFF8EA0(v39);
  v33 = v32;
  sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v33)
  {
    goto LABEL_12;
  }

  MEMORY[0x1D3868CC0](v31, v33);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v34 = a3[15];
  v40 = v26;
  v39[0] = v34;
  v35 = sub_1CEFF8EA0(v39);
  v37 = v36;
  sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v37)
  {
    MEMORY[0x1D3868CC0](v35, v37);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v41;
  }

  else
  {
LABEL_12:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3A9C24(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a3;
  v33 = a1;
  v8 = sub_1CF7D55FC(sub_1CF480CDC, v32, a2, a3);
  if (!v4)
  {
    v9 = v8;
    if ([v8 next])
    {
      v10 = [v9 longAtIndex_];
      v36 = [v9 unsignedLongAtIndex_];
      v11 = [v9 longAtIndex_];
      v12 = [v9 unsignedLongAtIndex_];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v3 + 64))
        {
          MEMORY[0x1EEE9AC00](v12);
          v13 = &v26;
          v28 = v3;
          v29 = v10;
          v14 = sub_1CF480D04;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v12);
          v13 = v25;
          v26 = v3;
          v27 = a1;
          v28 = v10;
          v14 = sub_1CF480CF8;
        }

        sub_1CF7D5920(v14, v13, a2);
      }

      else
      {
        v31 = v12;
        MEMORY[0x1EEE9AC00](v12);
        v25[1] = 0;
        v26 = 0;
        v25[0] = v3;
        LOBYTE(v27) = 1;
        v28 = v10;
        sub_1CF7D5920(sub_1CF480CE4, &v24, a2);
        v30 = v3;
        v15 = *a1;
        v16 = sub_1CF388E8C();
        v17 = a1[18];
        v18 = *(a1 + 152);
        sub_1CF19F384(v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
        v19 = swift_dynamicCastMetatype();
        if (v19)
        {
          v34 = v17;
          v35 = v18;
          v20 = (*(v19 + 592))(&v34, v31, v11, v36);
          v22 = *(v20 + 96);
          v21 = *(v20 + 104);
          *(v20 + 96) = 0;
          *(v20 + 104) = 0;
          v23 = *(v20 + 112);
          *(v20 + 112) = 0;

          sub_1CF03D7A8(v22, v21, v23);

          swift_beginAccess();
          sub_1CEFCCBDC((a1 + 7), &v34, &unk_1EC4C1BE0, &unk_1CF9FD400);
          swift_beginAccess();
          sub_1CEFDA9E0(&v34, v20 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
          swift_endAccess();
          sub_1CF3A8D20(v20, a2, v5);
        }

        else
        {
          LODWORD(v29) = 0;
          v28 = 87;
          sub_1CF9E7B68();
          __break(1u);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1CF3AA00C(void *a1, uint64_t a2, uint64_t *a3)
{
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA44CF0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x742045524548570ALL, 0xEE00203D20657079);
  v6 = *a3;
  v7 = qword_1CFA05BE8[sub_1CF388E8C()];
  v17[3] = MEMORY[0x1E69E6530];
  v17[0] = v7;
  v8 = sub_1CEFF8EA0(v17);
  v10 = v9;
  sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v11 = a3[18];
    if (*(a3 + 152))
    {
      if (*(a3 + 152) != 1)
      {
        v11 = (v11 != 0) << 63;
        goto LABEL_8;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v12 = [a1 bindLongParameter_];
        v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v15 = v14;

        MEMORY[0x1D3868CC0](v13, v15);

        return v18;
      }

      __break(1u);
    }

    v11 = -v11;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AA244(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA44B50);
  if (*(a2 + 16))
  {
    v8 = 20550;
  }

  else
  {
    v8 = 21318;
  }

  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  if (!a4)
  {
    goto LABEL_8;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    a3 = -a3;
  }

LABEL_10:
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  return v14;
}

void sub_1CF3AA380(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = v3;
  v118 = sub_1CF9E6118();
  v116 = *(v118 - 8);
  v8 = *(v116 + 8);
  v9 = MEMORY[0x1EEE9AC00](v118);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v108 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v108 - v17);
  v121 = a2;
  v124 = a2;
  v120 = a3;
  v125 = a3;
  v19 = *(a1 + 112);
  if (v19 > 2)
  {
    v32 = a1;
    v33 = *(v4 + 72);
    if (v33 && (v34 = *(v4 + 80), v35 = , v36 = v33(v35), sub_1CEFF7124(v33), v36))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
      v37 = swift_dynamicCastClass();
      v38 = v120;
      if (v37)
      {
        v39 = v37;
        v40 = *(*v36 + 544);

        v41 = v126;
        v40(v39, 0, &v124, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v126 = v41;
        if (v41)
        {

          return;
        }
      }

      *v18 = v32;
      swift_storeEnumTagMultiPayload();
      v95 = *(*v36 + 312);

      v95(v18);
      v96 = sub_1CEFCCC44(v18, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v97 = (*(*v36 + 184))(v96);
      if (v97)
      {
        (*(*v97 + 128))(v36, v32);
      }
    }

    else
    {
      v38 = v120;
    }

    v25 = v121;
    v98 = v126;
    sub_1CF3A9C24(v32, v121, v38);
    v126 = v98;
    if (!v98)
    {
      goto LABEL_73;
    }

    return;
  }

  v119 = v4;
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v117 = a1;
  if (!v19)
  {
    v22 = v21;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_19:
    v42 = *(*v22 + 88);
    v43 = sub_1CF03C530(v20, v21, v19);
    v44 = v42(v43);
    v46 = v45;
    v48 = v47;
    LODWORD(v42) = v47;
    sub_1CF03D7A8(v20, v21, v19);
    if (v42 == 3 && v44 == 1 && v46 == 0)
    {
      MEMORY[0x1EEE9AC00](v49);
      v53 = &v108 - 4;
      v4 = v119;
      v32 = v117;
      *(&v108 - 2) = v119;
      *(&v108 - 1) = v32;
      v54 = sub_1CF480CD4;
    }

    else
    {
      v52 = sub_1CF1DBCF0(v44, v46, v48);
      MEMORY[0x1EEE9AC00](v52);
      v53 = &v108 - 4;
      v4 = v119;
      v32 = v117;
      *(&v108 - 2) = v119;
      *(&v108 - 1) = v32;
      v54 = sub_1CF480CCC;
    }

    v25 = v121;
    v93 = v120;
    v94 = v126;
    sub_1CF7D5920(v54, v53, v121);
    v126 = v94;
    if (!v94)
    {
      if ([v25 changes] || (v103 = v126, sub_1CF3A90C0(v32, v25, v93), (v126 = v103) == 0))
      {
        sub_1CF373FB0(v32);
        goto LABEL_73;
      }
    }

    return;
  }

  if (v19 != 1)
  {
    MEMORY[0x1EEE9AC00](v16);
    v4 = v119;
    v32 = v117;
    *(&v108 - 2) = v119;
    *(&v108 - 1) = v32;
    v25 = v121;
    v55 = v126;
    sub_1CF7D5920(sub_1CF480CC4, (&v108 - 4), v121);
    v126 = v55;
    if (!v55)
    {
      goto LABEL_73;
    }

    return;
  }

  v22 = v20;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_5:
  v23 = v117;
  v24 = *v117;
  if (sub_1CF388E8C() == 8)
  {
    v25 = v121;
    v26 = v120;
    v4 = v119;
    v27 = v126;
    v28 = sub_1CF3AC224(*(v23 + 144), *(v23 + 152), &unk_1F4BED1B8, v121, v120);
    v126 = v27;
    if (v27)
    {
      return;
    }

    v23 = v28;
    v30 = v28 >> 62;
    if (!(v28 >> 62))
    {
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        v4 = 0;
        v31 = v23 & 0xFFFFFFFFFFFFFF8;
        v114 = (v116 + 8);
        v115 = v23 & 0xC000000000000001;
        v113 = v23 & 0xFFFFFFFFFFFFFF8;
        if (v23 < 0)
        {
          v31 = v23;
        }

        v109 = v31;
        *&v29 = 136315138;
        v110 = v29;
        v111 = v30;
        v112 = v23;
        while (1)
        {
          if (v115)
          {
            v57 = MEMORY[0x1D3869C30](v4, v23);
            v58 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              goto LABEL_86;
            }
          }

          else
          {
            if (v4 >= *(v113 + 16))
            {
              goto LABEL_88;
            }

            v57 = *(v23 + 8 * v4 + 32);

            v58 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }
          }

          v116 = v58;
          v60 = *(v57 + 96);
          v59 = *(v57 + 104);
          *(v57 + 96) = 0;
          *(v57 + 104) = 0;
          v61 = *(v57 + 112);
          *(v57 + 112) = 4;

          sub_1CF03D7A8(v60, v59, v61);

          v62 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v63 = sub_1CF9E6108();
          v64 = sub_1CF9E7288();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v122 = v66;
            *v65 = v110;
            v67 = sub_1CF902D78();
            v69 = v68;

            v70 = sub_1CEFD0DF0(v67, v69, &v122);
            v23 = v112;

            *(v65 + 4) = v70;
            _os_log_impl(&dword_1CEFC7000, v63, v64, "✍️  Cancelling materialize job due to new eviction job: %s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v66);
            v71 = v66;
            v30 = v111;
            MEMORY[0x1D386CDC0](v71, -1, -1);
            v72 = v65;
            v26 = v120;
            MEMORY[0x1D386CDC0](v72, -1, -1);
          }

          else
          {
          }

          (*v114)(v13, v118);
          v25 = v121;
          v73 = v126;
          sub_1CF3AA380(v57, v121, v26);
          v126 = v73;
          if (v73)
          {
            goto LABEL_81;
          }

          if (v30)
          {
            v56 = sub_1CF9E7818();
          }

          else
          {
            v56 = *(v113 + 16);
          }

          ++v4;
          if (v116 == v56)
          {

            v4 = v119;
            goto LABEL_92;
          }
        }
      }

LABEL_91:

LABEL_92:
      v32 = v117;
      v106 = *(v117 + 152);
      v122 = *(v117 + 144);
      v123 = v106;
      MEMORY[0x1EEE9AC00](v104);
      *(&v108 - 2) = v4;
      *(&v108 - 1) = &v122;
      v107 = v126;
      sub_1CF7D5920(sub_1CF485A8C, (&v108 - 4), v25);
      v126 = v107;
      if (!v107)
      {
        goto LABEL_84;
      }

      return;
    }

LABEL_90:
    if (sub_1CF9E7818())
    {
      goto LABEL_9;
    }

    goto LABEL_91;
  }

  v74 = sub_1CF388E8C();
  v26 = v120;
  v25 = v121;
  if (v74 != 7)
  {
    goto LABEL_83;
  }

  v32 = v117;
  v75 = v126;
  v76 = sub_1CF3AC224(*(v117 + 144), *(v117 + 152), &unk_1F4BED1E0, v121, v120);
  v126 = v75;
  if (v75)
  {
    return;
  }

  v111 = v76;
  v115 = v76 >> 62;
  if (v76 >> 62)
  {
    v4 = v11;
    if (sub_1CF9E7818())
    {
      goto LABEL_47;
    }

LABEL_95:

    v4 = v119;
    goto LABEL_84;
  }

  v4 = v11;
  if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_95;
  }

LABEL_47:
  v13 = 0;
  v30 = v111;
  v78 = v111 & 0xFFFFFFFFFFFFFF8;
  v113 = (v116 + 8);
  v114 = (v111 & 0xC000000000000001);
  v112 = v111 & 0xFFFFFFFFFFFFFF8;
  if (v111 < 0)
  {
    v78 = v111;
  }

  v109 = v78;
  *&v77 = 136315138;
  v110 = v77;
  do
  {
    if (v114)
    {
      v80 = MEMORY[0x1D3869C30](v13, v30);
    }

    else
    {
      if (v13 >= *(v112 + 16))
      {
        goto LABEL_89;
      }

      v80 = *(v30 + 8 * v13 + 32);
    }

    v116 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v81 = *(v80 + 96);
    v23 = *(v80 + 104);
    *(v80 + 96) = 0;
    *(v80 + 104) = 0;
    v82 = *(v80 + 112);
    *(v80 + 112) = 4;

    sub_1CF03D7A8(v81, v23, v82);

    v83 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v84 = sub_1CF9E6108();
    v85 = sub_1CF9E7288();
    if (os_log_type_enabled(v84, v85))
    {
      v23 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v122 = v86;
      *v23 = v110;
      v87 = sub_1CF902D78();
      v89 = v88;

      v90 = sub_1CEFD0DF0(v87, v89, &v122);
      v26 = v120;

      *(v23 + 4) = v90;
      _os_log_impl(&dword_1CEFC7000, v84, v85, "✍️  Cancelling eviction job due to new materialize job: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v91 = v86;
      v30 = v111;
      MEMORY[0x1D386CDC0](v91, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    else
    {
    }

    (*v113)(v4, v118);
    v25 = v121;
    v92 = v126;
    sub_1CF3AA380(v80, v121, v26);
    v126 = v92;
    if (v92)
    {
LABEL_81:

      return;
    }

    if (v115)
    {
      v79 = sub_1CF9E7818();
    }

    else
    {
      v79 = *(v112 + 16);
    }

    ++v13;
  }

  while (v116 != v79);

LABEL_83:
  v4 = v119;
  v32 = v117;
LABEL_84:
  v105 = v126;
  sub_1CF3A90C0(v32, v25, v26);
  v126 = v105;
  if (!v105)
  {
LABEL_73:
    v99 = *v32;
    v100 = sub_1CF388E8C();
    if (v100 == 23 || (v100 = sub_1CF388E8C(), v100 == 7))
    {
      v101 = *(v32 + 152);
      v122 = *(v32 + 144);
      v123 = v101;
      MEMORY[0x1EEE9AC00](v100);
      *(&v108 - 2) = v4;
      *(&v108 - 1) = &v122;
      v102 = v126;
      sub_1CF7D5920(sub_1CF485A8C, (&v108 - 4), v25);
      v126 = v102;
    }
  }
}

uint64_t sub_1CF3AB010(void *a1, uint64_t a2, uint64_t *a3)
{
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v24 = 0;
  v25 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = a3[12];
  v7 = a3[13];
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, v8);
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v12 = a3[18];
  if (!*(a3 + 152))
  {
LABEL_5:
    v12 = -v12;
    goto LABEL_7;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  v12 = (v12 != 0) << 63;
LABEL_7:
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v17 = *a3;
  v18 = qword_1CFA05BE8[sub_1CF388E8C()];
  v23[3] = MEMORY[0x1E69E6530];
  v23[0] = v18;
  v19 = sub_1CEFF8EA0(v23);
  v21 = v20;
  sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v21)
  {
    MEMORY[0x1D3868CC0](v19, v21);

    return v24;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3AB2D0(void *a1, uint64_t a2, uint64_t *a3)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v34 = 0;
  v35 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = a3[12];
  v7 = a3[13];
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, v8);
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v12 = a3[16];
  v13 = MEMORY[0x1E69E6530];
  v33 = MEMORY[0x1E69E6530];
  v32[0] = v12;
  v14 = sub_1CEFF8EA0(v32);
  v16 = v15;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v17 = a3[17];
  v33 = MEMORY[0x1E69E6810];
  v32[0] = v17;
  v18 = sub_1CEFF8EA0(v32);
  v20 = v19;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v20)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v21 = a3[18];
  if (!*(a3 + 152))
  {
LABEL_7:
    v21 = -v21;
    goto LABEL_9;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_7;
  }

  v21 = (v21 != 0) << 63;
LABEL_9:
  v22 = [a1 bindLongParameter_];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;

  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v26 = *a3;
  v27 = qword_1CFA05BE8[sub_1CF388E8C()];
  v33 = v13;
  v32[0] = v27;
  v28 = sub_1CEFF8EA0(v32);
  v30 = v29;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v30)
  {
    MEMORY[0x1D3868CC0](v28, v30);

    return v34;
  }

LABEL_11:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AB688(void *a1, uint64_t a2, uint64_t *a3)
{
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = a3[12];
  v7 = a3[13];
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, v8);
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v12 = a3[17];
  v28 = MEMORY[0x1E69E6810];
  v27[0] = v12;
  v13 = sub_1CEFF8EA0(v27);
  v15 = v14;
  sub_1CEFCCC44(v27, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v15)
  {
    goto LABEL_10;
  }

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v16 = a3[18];
  if (!*(a3 + 152))
  {
LABEL_6:
    v16 = -v16;
    goto LABEL_8;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_6;
  }

  v16 = (v16 != 0) << 63;
LABEL_8:
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v21 = *a3;
  v22 = qword_1CFA05BE8[sub_1CF388E8C()];
  v28 = MEMORY[0x1E69E6530];
  v27[0] = v22;
  v23 = sub_1CEFF8EA0(v27);
  v25 = v24;
  sub_1CEFCCC44(v27, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v25)
  {
    MEMORY[0x1D3868CC0](v23, v25);

    return v29;
  }

LABEL_10:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AB9D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = [a1 longAtIndex_];
  v33 = [a1 unsignedLongAtIndex_];
  v32 = [a1 longAtIndex_];
  v7 = [a1 unsignedLongAtIndex_];
  v8 = [a1 longAtIndex_];
  v38 = [a1 unsignedLongAtIndex_];
  v9 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v9 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  else
  {
    v12 = v9;
    v29 = v6;
    v30 = v7;
    v31 = a2;
    v13 = sub_1CF03D7E8();
    v14 = sub_1CF044430(v13, a1, 9);
    v16 = v15;
    v18 = v17;

    if (!v3)
    {
      v19 = [a1 stringAtIndex_];
      if (!v19)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v19 = sub_1CF9E6888();
      }

      v28 = v2;
      v20 = [a1 unsignedLongAtIndex_];
      sub_1CF1A01B4(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
      v21 = swift_dynamicCastMetatype();
      if (v21)
      {
        v34 = v19;
        v22 = (*(v21 + 592))(&v34, v33, v32, v20);
        v23 = *(v22 + 96);
        v24 = *(v22 + 104);
        *(v22 + 96) = v14;
        *(v22 + 104) = v16;
        v25 = *(v22 + 112);
        *(v22 + 112) = v18;

        sub_1CF03C530(v14, v16, v18);
        sub_1CF03D7A8(v23, v24, v25);
        sub_1CF03D7A8(v14, v16, v18);
        v26 = *(v28 + 16);
        v36 = &type metadata for SQLItemJobID;
        v37 = sub_1CF03E084();
        v34 = v29;
        v35 = v26;
        swift_beginAccess();
        sub_1CEFDA9E0(&v34, v22 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_endAccess();

        v27 = v38;
        *v31 = v22;
        *(v31 + 8) = v27;
        *(v31 + 16) = v8;
        *(v31 + 24) = v30;
        *(v31 + 32) = v8 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = sub_1CF9E7B68();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1CF3ABD1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = [a1 longAtIndex_];
  v38 = [a1 unsignedLongAtIndex_];
  v6 = [a1 longAtIndex_];
  v7 = [a1 unsignedLongAtIndex_];
  v45 = [a1 longAtIndex_];
  v39 = [a1 unsignedLongAtIndex_];
  v8 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v8 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  else
  {
    v10 = v8;
    v36 = v6;
    v37 = a2;
    v11 = sub_1CF03D7E8();
    v12 = sub_1CF044430(v11, a1, 9);
    v14 = v13;
    v16 = v15;

    if (!v3)
    {
      v17 = v12;
      v35 = v16;
      sub_1CEFE9AC4([a1 longAtIndex_], &v41);
      v34 = v2;
      v18 = v41;
      v19 = v42;
      v20 = [a1 unsignedLongAtIndex_];
      sub_1CF19F384(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v21 = swift_dynamicCastMetatype();
      if (v21)
      {
        v22 = v14;
        v23 = v17;
        v41 = v18;
        v42 = v19;
        v24 = (*(v21 + 592))(&v41, v38, v36, v20);
        v25 = *(v24 + 96);
        v26 = *(v24 + 104);
        *(v24 + 96) = v17;
        *(v24 + 104) = v22;
        v27 = *(v24 + 112);
        *(v24 + 112) = v35;

        sub_1CF03C530(v23, v22, v35);
        sub_1CF03D7A8(v25, v26, v27);
        sub_1CF03D7A8(v23, v22, v35);
        v28 = *(v34 + 16);
        v43 = &type metadata for SQLItemJobID;
        v44 = sub_1CF03E084();
        v41 = v40;
        v42 = v28;
        swift_beginAccess();
        sub_1CEFDA9E0(&v41, v24 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_endAccess();

        v29 = v45;
        v30 = v45 == 0x7FFFFFFFFFFFFFFFLL;
        v31 = v45 == 0x7FFFFFFFFFFFFFFFLL;
        v32 = v39;
        if (v45 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = 0;
          v29 = 0;
        }

        *v37 = v24;
        *(v37 + 8) = v32;
        v33 = v7;
        if (v30)
        {
          v33 = 0;
        }

        *(v37 + 16) = v29;
        *(v37 + 24) = v33;
        *(v37 + 32) = v31;
      }

      else
      {
        sub_1CF9E7B68();
        __break(1u);
      }
    }
  }
}

uint64_t sub_1CF3AC088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA44A80);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  v11 = a2[3];
  v12 = a2[4];
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a4)
  {

    MEMORY[0x1D3868CC0](v11, v12);
    MEMORY[0x1D3868CC0](a3, a4);

    v13 = 0x2044455845444E49;
    v10 = 0xEB00000000205942;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1D3868CC0](v13, v10);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v14 = a5(a1);
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF3AC224(uint64_t a1, char a2, uint64_t a3, void *a4, unsigned int a5)
{
  v37 = a5;
  v36 = a4;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v47 = a2;
  v48 = MEMORY[0x1E69E7CC0];
  v42 = &v46;
  v43 = a3;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v9 + 56))(v19, 1, 1, v8);
  sub_1CEFCCBDC(v19, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v9 + 48);
  if (v24(v17, 1, v8) == 1)
  {
    v25 = v23;
    sub_1CF9E6048();
    if (v24(v17, 1, v8) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
  }

  v26 = v40;
  (*(v9 + 16))(v40, v12, v8);
  *(v26 + *(v20 + 20)) = v23;
  v27 = v26 + *(v20 + 24);
  *v27 = "SQLDB: Fetch Jobs";
  *(v27 + 8) = 17;
  *(v27 + 16) = 2;
  v28 = v23;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v9 + 8))(v12, v8);
  v29 = sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v29);
  *(&v35 - 5) = 0;
  *(&v35 - 4) = 0;
  v30 = v38;
  *(&v35 - 6) = v39;
  *(&v35 - 3) = sub_1CF480D40;
  *(&v35 - 2) = &v41;
  v31 = sub_1CF7D55FC(sub_1CF485AA4, (&v35 - 8), v36, v37);
  if (v30)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v26, type metadata accessor for Signpost);
  }

  else
  {
    v33 = v31;
    if ([v31 next])
    {
      do
      {
        v34 = objc_autoreleasePoolPush();
        sub_1CF3ABD1C(v33, v44);
        sub_1CF47E31C(v44[0], v44[1], v44[2], v44[3], v45, &v48);

        objc_autoreleasePoolPop(v34);
      }

      while (([v33 next] & 1) != 0);
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v26, type metadata accessor for Signpost);
    return v48;
  }
}

uint64_t sub_1CF3AC728(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  sub_1CF9E7948();

  strcpy(v19, "item_id = ");
  BYTE3(v19[1]) = 0;
  HIDWORD(v19[1]) = -369098752;
  if (!a3)
  {
LABEL_5:
    a2 = -a2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  a2 = (a2 != 0) << 63;
LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v12 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  v13 = v19[0];
  if (a4)
  {
    strcpy(v19, " AND type IN ");
    HIWORD(v19[1]) = -4864;
    *(swift_allocObject() + 16) = a1;

    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    v15 = sub_1CF9E6C18();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v19[0], v19[1]);
  }

  return v13;
}

uint64_t sub_1CF3ACA9C(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CF9E7948();
  v37 = v34;
  v38 = v35;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v11 = a3[12];
  v12 = a3[13];
  v13 = *(a3 + 112);
  sub_1CF03C530(v11, v12, v13);
  v33 = a1;
  v14 = sub_1CF065BDC(v11, v12, v13, 0x696C756465686373, 0xEB000000005F676ELL);
  v16 = v15;
  sub_1CF03D7A8(v11, v12, v13);
  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  v17 = a3[18];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v18 = sub_1CF9E68C8();
  v20 = v19;

  (*(v7 + 8))(v10, v6);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_1CF9E5B48();
    sub_1CEFE48D8(v18, v20);
    v22 = [v33 bindObjectParameter_];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);

    MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
    v26 = *a3;
    v27 = qword_1CFA05BE8[sub_1CF387EDC()];
    v36 = MEMORY[0x1E69E6530];
    v34 = v27;
    v28 = sub_1CEFF8EA0(&v34);
    v30 = v29;
    sub_1CEFCCC44(&v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v30)
    {
      MEMORY[0x1D3868CC0](v28, v30);

      return v37;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3ACE38(void *a1, uint64_t a2, uint64_t *a3)
{
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v24 = 0;
  v25 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = a3[12];
  v7 = a3[13];
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, v8);
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  v12 = a3[18];
  if (!*(a3 + 152))
  {
LABEL_5:
    v12 = -v12;
    goto LABEL_7;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  v12 = (v12 != 0) << 63;
LABEL_7:
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v17 = *a3;
  v18 = qword_1CFA05BE8[sub_1CF388E8C()];
  v23[3] = MEMORY[0x1E69E6530];
  v23[0] = v18;
  v19 = sub_1CEFF8EA0(v23);
  v21 = v20;
  sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v21)
  {
    MEMORY[0x1D3868CC0](v19, v21);

    return v24;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3AD104(uint64_t a1, void *a2, uint64_t a3)
{
  v115 = a2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v120 = &v90 - v9;
  v106 = sub_1CF9E6068();
  v10 = *(v106 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v90 - v18;
  v102 = type metadata accessor for Signpost(0);
  v19 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 72);
  if (!v22)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = *(v3 + 80);
  v24 = *(v4 + 80);

  v26 = v22(v25);
  if (!v26)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
  }

  v27 = v26;
  sub_1CEFF7124(v22);
  v28 = *(v27 + 32);

  (*(**(v28 + 16) + 96))(&v116, v29);

  v30 = sub_1CF02F42C(v116, v117);
  v31 = *(v30 + 16);
  if (!v31)
  {
  }

  v32 = 0;
  v99 = v30 + 32;
  v98 = (v10 + 56);
  v33 = (v10 + 48);
  v91 = (v10 + 32);
  v96 = (v10 + 16);
  v95 = (v10 + 8);
  v34 = v105;
  v35 = v106;
  v93 = v4;
  v109 = a1;
  v101 = v21;
  v94 = v30;
  v92 = v17;
  v97 = v33;
  v112 = a3;
  while (1)
  {
    if (v32 >= v31)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v104 = &v90;
    v100 = v32;
    v36 = v99 + 32 * v32;
    v37 = *(v36 + 24);
    v38 = *(v36 + 8);
    v39 = *(v36 + 16);
    v107 = *v36;
    v118[0] = v107;
    v118[1] = v38;
    v118[2] = v39;
    v119 = v37;
    MEMORY[0x1EEE9AC00](v38);
    v113 = &v90 - 4;
    *(&v90 - 2) = v118;
    v40 = qword_1EDEAE980;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDEBBE40;
    v42 = v111;
    (*v98)(v111, 1, 1, v35);
    sub_1CEFCCBDC(v42, v17, &unk_1EC4BED20, &unk_1CFA00700);
    v43 = *v97;
    if ((*v97)(v17, 1, v35) == 1)
    {
      v44 = v41;
      sub_1CF9E6048();
      v45 = v43(v17, 1, v35);
      v46 = v109;
      if (v45 != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*v91)(v34, v17, v35);
      v46 = v109;
    }

    (*v96)(v21, v34, v35);
    v47 = v102;
    *&v21[*(v102 + 20)] = v41;
    v48 = &v21[*(v47 + 24)];
    *v48 = "SQLDB: Fetch Jobs";
    *(v48 + 1) = 17;
    v48[16] = 2;
    v49 = v41;
    sub_1CF9E7468();
    v103 = v49;
    sub_1CF9E6038();
    (*v95)(v34, v35);
    v50 = sub_1CEFCCC44(v111, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v50);
    *(&v90 - 5) = 0;
    *(&v90 - 4) = 0;
    *(&v90 - 6) = v4;
    v51 = v113;
    v52 = v114;
    *(&v90 - 3) = sub_1CF4810A0;
    *(&v90 - 2) = v51;
    v53 = sub_1CF7D55FC(sub_1CF485AA4, (&v90 - 8), v115, a3);
    v114 = v52;
    if (v52)
    {
      goto LABEL_39;
    }

    v54 = v53;
    v55 = [v53 next];
    v108 = v54;
    if (v55)
    {
      break;
    }

LABEL_37:
    v32 = v100 + 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v21, type metadata accessor for Signpost);

    v31 = *(v94 + 16);
    if (v32 == v31)
    {
    }
  }

  while (1)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v114;
    sub_1CF3ABD1C(v54, &v116);
    if (v57)
    {
      break;
    }

    v110 = v56;
    v58 = v116;
    if (*(v116 + 112))
    {
      goto LABEL_47;
    }

    v59 = v120;
    sub_1CEFCCBDC(v46, v120, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = *(v4 + 72);
    if (!v61)
    {
      goto LABEL_43;
    }

    v62 = *(v4 + 80);

    v64 = v61(v63);
    if (!v64)
    {
      goto LABEL_44;
    }

    v65 = v64;
    sub_1CEFF7124(v61);
    if (*(v58 + 112))
    {
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    v66 = *(v58 + 96);
    v67 = v66 & v107;
    v113 = *(v58 + 104);

    if (v67)
    {
      v68 = v66;
      do
      {
        v70 = v67 & -v67;
        if (sub_1CF44058C(v70, v58, v120, v65, v115, a3))
        {
          v71 = -1;
          if ((v68 & v70) != 0)
          {
            v71 = ~v70;
          }

          v68 &= v71;
          v72 = *(v58 + 96);
          v114 = *(v58 + 104);
          v73 = v113;
          *(v58 + 96) = v68;
          *(v58 + 104) = v73;
          v74 = *(v58 + 112);
          *(v58 + 112) = 0;
          sub_1CF03C530(v66, v73, 0);
          v75 = v72;
          a3 = v112;
          sub_1CF03D7A8(v75, v114, v74);
        }

        v69 = v67 == v70;
        v67 ^= v70;
      }

      while (!v69);
    }

    else
    {
      v68 = v66;
    }

    v76 = v68 == 0;
    if (v68)
    {
      v77 = v113;
    }

    else
    {
      v68 = v113;
      v77 = 0;
    }

    sub_1CEFCCC44(v120, &unk_1EC4BFDF0, &unk_1CFA054F0);

    v78 = *(v58 + 96);
    v79 = *(v58 + 104);
    *(v58 + 96) = v68;
    *(v58 + 104) = v77;
    v80 = *(v58 + 112);
    *(v58 + 112) = v76;
    sub_1CF03D7A8(v78, v79, v80);
    v81 = v115;
    v82 = [v115 assertOnQueue];
    MEMORY[0x1EEE9AC00](v82);
    v4 = v93;
    *(&v90 - 2) = v93;
    *(&v90 - 1) = v58;
    sub_1CF7D5920(sub_1CF4810B4, (&v90 - 4), v81);
    v114 = 0;
    v21 = v101;
    if (*(v58 + 112) == 1)
    {
      v83 = *(v4 + 72);
      v46 = v109;
      v17 = v92;
      if (v83)
      {
        v84 = *(v4 + 80);

        v86 = v83(v85);
        v87 = sub_1CEFF7124(v83);
        if (v86)
        {
          (*(*v86 + 304))(v87);
        }
      }

      v35 = v106;
    }

    else
    {
      v46 = v109;
      v35 = v106;
      v17 = v92;
    }

    objc_autoreleasePoolPop(v110);
    v54 = v108;
    v88 = [v108 next];
    v34 = v105;
    if ((v88 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v114 = v57;
  objc_autoreleasePoolPop(v56);

LABEL_39:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5278(v21, type metadata accessor for Signpost);
}

uint64_t sub_1CF3ADBB0(uint64_t a1, void *a2, uint64_t a3)
{
  v127 = a2;
  v4 = v3;
  v123 = a1;
  v131[3] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = v101 - v8;
  v117 = sub_1CF9E6068();
  v9 = *(v117 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v12 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v122 = v101 - v18;
  v112 = type metadata accessor for Signpost(0);
  v19 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v21 = v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 72);
  if (!v22)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v23 = *(v3 + 80);
  v24 = *(v4 + 80);

  v26 = v22(v25);
  if (!v26)
  {
    goto LABEL_53;
  }

  v27 = v26;
  sub_1CEFF7124(v22);
  v28 = *(v27 + 32);

  (*(**(v28 + 16) + 96))(aBlock, v29);

  v30 = aBlock[0];
  v31 = sub_1CF031F0C(aBlock[0]);

  v32 = *(v31 + 2);
  if (!v32)
  {
LABEL_43:

    goto LABEL_44;
  }

  v33 = 0;
  v108 = v31 + 2;
  v107 = (v9 + 56);
  v34 = (v9 + 48);
  v101[0] = v9 + 32;
  v105 = (v9 + 16);
  v104 = (v9 + 8);
  v101[1] = v130;
  v35 = v117;
  v120 = v17;
  v102 = v4;
  v111 = v21;
  v110 = v31;
  v103 = v12;
  v106 = v34;
  v124 = a3;
  while (1)
  {
    if (v33 >= v32)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v116 = v101;
    v109 = v33;
    v36 = v108 + 3 * v33;
    v37 = v36[1];
    v38 = v36[2];
    v118 = *v36;
    v131[0] = v118;
    v131[1] = v37;
    v131[2] = v38;
    v39 = MEMORY[0x1EEE9AC00](v37);
    v125 = &v101[-4];
    v101[-2] = v131;
    v40 = qword_1EDEAE980;
    v115 = v39;

    v114 = v38;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDEBBE40;
    v42 = v122;
    (*v107)(v122, 1, 1, v35);
    sub_1CEFCCBDC(v42, v17, &unk_1EC4BED20, &unk_1CFA00700);
    v43 = *v106;
    if ((*v106)(v17, 1, v35) == 1)
    {
      v44 = v41;
      v45 = v103;
      sub_1CF9E6048();
      v46 = v43(v120, 1, v35);
      v47 = v45;
      v17 = v120;
      if (v46 != 1)
      {
        sub_1CEFCCC44(v120, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v47 = v103;
      (*v101[0])(v103, v17, v35);
    }

    (*v105)(v21, v47, v35);
    v48 = v112;
    *&v21[*(v112 + 20)] = v41;
    v49 = &v21[*(v48 + 24)];
    *v49 = "SQLDB: Fetch Jobs";
    *(v49 + 1) = 17;
    v49[16] = 2;
    v50 = v41;
    sub_1CF9E7468();
    v113 = v50;
    sub_1CF9E6038();
    (*v104)(v47, v35);
    v51 = sub_1CEFCCC44(v122, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v51);
    v101[-5] = 0;
    v101[-4] = 0;
    v101[-6] = v4;
    v52 = v125;
    v53 = v126;
    v101[-3] = sub_1CF481064;
    v101[-2] = v52;
    v54 = sub_1CF7D55FC(sub_1CF485AA4, &v101[-8], v127, a3);
    v126 = v53;
    if (v53)
    {
      v99 = v114;
      goto LABEL_42;
    }

    v55 = v54;
    v56 = [v54 next];
    v119 = v55;
    if (v56)
    {
      break;
    }

LABEL_39:
    v96 = v55;
    v33 = v109 + 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v21, type metadata accessor for Signpost);

    v32 = *(v31 + 2);
    if (v33 == v32)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {
    v57 = objc_autoreleasePoolPush();
    v58 = v126;
    sub_1CF3AB9D4(v55, aBlock);
    if (v58)
    {
      v126 = v58;
      v99 = v114;
      goto LABEL_41;
    }

    v59 = aBlock[0];
    if (*(aBlock[0] + 112))
    {
      sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
    }

    v60 = v128;
    sub_1CEFCCBDC(v123, v128, &unk_1EC4C4E20, &unk_1CFA05350);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v62 = *(v4 + 72);
    if (!v62)
    {
      goto LABEL_50;
    }

    v63 = *(v4 + 80);

    v65 = v62(v64);
    if (!v65)
    {
      goto LABEL_51;
    }

    v66 = v65;
    sub_1CEFF7124(v62);
    if (*(v59 + 112))
    {
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    v121 = v57;
    v67 = v59[12];
    v68 = v67 & v118;
    v125 = v59[13];

    if (v68)
    {
      v69 = v67;
      do
      {
        v71 = v68 & -v68;
        sub_1CF43D19C(v71, v59, v128, v66, v127, a3);
        if (v72)
        {
          v73 = -1;
          if ((v69 & v71) != 0)
          {
            v73 = ~v71;
          }

          v69 &= v73;
          v74 = v59[12];
          v126 = v59[13];
          v75 = v125;
          v59[12] = v69;
          v59[13] = v75;
          v76 = *(v59 + 112);
          *(v59 + 112) = 0;
          sub_1CF03C530(v67, v75, 0);
          v77 = v74;
          a3 = v124;
          sub_1CF03D7A8(v77, v126, v76);
        }

        v70 = v68 == v71;
        v68 ^= v71;
      }

      while (!v70);
    }

    else
    {
      v69 = v67;
    }

    v126 = 0;
    v78 = v69 == 0;
    if (v69)
    {
      v79 = v125;
    }

    else
    {
      v69 = v125;
      v79 = 0;
    }

    sub_1CEFCCC44(v128, &qword_1EC4BFDE8, &qword_1CFA054E8);

    v80 = v59[12];
    v81 = v59[13];
    v59[12] = v69;
    v59[13] = v79;
    v82 = *(v59 + 112);
    *(v59 + 112) = v78;
    sub_1CF03D7A8(v80, v81, v82);
    v83 = v127;
    v84 = [v127 assertOnQueue];
    MEMORY[0x1EEE9AC00](v84);
    v4 = v102;
    v101[-2] = v102;
    v101[-1] = v59;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1CF481098;
    *(v85 + 24) = &v101[-4];
    v130[2] = sub_1CEFE7610;
    v130[3] = v85;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v130[0] = sub_1CEFE7548;
    v130[1] = &block_descriptor_882;
    v86 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v87 = [v83 executeSwift:v86 error:aBlock];
    _Block_release(v86);
    v88 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_49;
    }

    if (!v87)
    {
      break;
    }

    v21 = v111;
    if (*(v59 + 112) == 1)
    {
      v90 = *(v4 + 72);
      v17 = v120;
      if (v90)
      {
        v91 = *(v4 + 80);

        v93 = v90(v92);
        v94 = sub_1CEFF7124(v90);
        if (v93)
        {
          (*(*v93 + 304))(v94);
        }
      }

      v35 = v117;
    }

    else
    {
      v35 = v117;
      v17 = v120;
    }

    v55 = v119;

    objc_autoreleasePoolPop(v121);
    v95 = [v55 next];
    v31 = v110;
    if ((v95 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v100 = sub_1CF9E57F8();

  v126 = v100;
  swift_willThrow();

  v21 = v111;
  v99 = v114;
  v57 = v121;
LABEL_41:
  objc_autoreleasePoolPop(v57);

LABEL_42:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5278(v21, type metadata accessor for Signpost);

LABEL_44:
  v98 = *MEMORY[0x1E69E9840];
  return result;
}