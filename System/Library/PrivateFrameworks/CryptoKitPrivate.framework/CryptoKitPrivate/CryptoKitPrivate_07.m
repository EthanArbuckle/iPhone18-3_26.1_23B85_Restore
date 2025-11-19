__int128 *PIR.IndexPirClient.decrypt(reply:index:)(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 2);
  if (v4 != 2)
  {
    v7 = *(v2 + 3);
    v8 = *(v2 + 4);
    LOWORD(v46) = *v2;
    BYTE2(v46) = v4;
    *(&v46 + 3) = *(v2 + 3);
    v9 = *(v2 + 2);
    *(&v46 + 1) = *(v2 + 1);
    v47 = v9;
    v48 = v7;
    v49 = v8;
    v10 = *(v2 + 56);
    v50 = *(v2 + 40);
    v51 = v10;
    v52 = *(v2 + 9);
    v2 = &v46;
    v11 = sub_1C0D5CAFC(a1);
    if (v3)
    {
      goto LABEL_25;
    }

    if (v8)
    {
      v13 = v11;
      v14 = v12;
      if (a2 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_49;
      }

      v15 = a2 % v8 * v9;
      if ((a2 % v8 * v9) >> 64 == v15 >> 63)
      {
        v16 = v15 + v9;
        if (!__OFADD__(v15, v9))
        {
          v17 = v14 >> 62;
          if ((v14 >> 62) <= 1)
          {
            if (v17)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              if (HIDWORD(v13) - v13 < v16)
              {
                goto LABEL_24;
              }
            }

            else if (BYTE6(v14) < v16)
            {
              goto LABEL_24;
            }

            goto LABEL_16;
          }

          if (v17 == 2)
          {
            v19 = *(v13 + 16);
            v18 = *(v13 + 24);
            v20 = __OFSUB__(v18, v19);
            v21 = v18 - v19;
            if (v20)
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            if (v21 >= v16)
            {
              goto LABEL_16;
            }
          }

          else if (v16 <= 0)
          {
LABEL_16:
            if (v16 >= v15)
            {
              v22 = sub_1C0D782DC();
              v48 = MEMORY[0x1E6969080];
              v49 = MEMORY[0x1E6969078];
              *&v46 = v22;
              *(&v46 + 1) = v23;
              v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
              v25 = *v24;
              v26 = v24[1];
              v27 = v26 >> 62;
              if ((v26 >> 62) > 1)
              {
                if (v27 != 2)
                {
                  memset(v44, 0, 14);
                  v29 = v44;
                  v28 = v44;
                  goto LABEL_45;
                }

                v33 = *(v25 + 16);
                v34 = *(v25 + 24);
                v35 = sub_1C0D7812C();
                if (v35)
                {
                  v36 = sub_1C0D7815C();
                  v25 = v33 - v36;
                  if (__OFSUB__(v33, v36))
                  {
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

                  v35 += v25;
                }

                v20 = __OFSUB__(v34, v33);
                v37 = v34 - v33;
                if (!v20)
                {
                  goto LABEL_37;
                }

                __break(1u);
              }

              else if (!v27)
              {
                v44[0] = *v24;
                LOWORD(v44[1]) = v26;
                BYTE2(v44[1]) = BYTE2(v26);
                BYTE3(v44[1]) = BYTE3(v26);
                BYTE4(v44[1]) = BYTE4(v26);
                BYTE5(v44[1]) = BYTE5(v26);
                v28 = v44 + BYTE6(v26);
                v29 = v44;
LABEL_45:
                sub_1C0D20850(v29, v28, &v45);
                sub_1C0CF448C(v13, v14);
                v2 = v45;
                __swift_destroy_boxed_opaque_existential_1(&v46);
                goto LABEL_25;
              }

              v38 = v25;
              v39 = v25 >> 32;
              v37 = v39 - v38;
              if (v39 >= v38)
              {
                v35 = sub_1C0D7812C();
                if (!v35)
                {
LABEL_37:
                  v41 = sub_1C0D7814C();
                  if (v41 >= v37)
                  {
                    v42 = v37;
                  }

                  else
                  {
                    v42 = v41;
                  }

                  v43 = (v42 + v35);
                  if (v35)
                  {
                    v28 = v43;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v29 = v35;
                  goto LABEL_45;
                }

                v40 = sub_1C0D7815C();
                if (!__OFSUB__(v38, v40))
                {
                  v35 += v38 - v40;
                  goto LABEL_37;
                }

LABEL_55:
                __break(1u);
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            goto LABEL_50;
          }

LABEL_24:
          sub_1C0CF8DE0();
          swift_allocError();
          *v30 = 5;
          *(v30 + 4) = 1;
          swift_willThrow();
          sub_1C0CF448C(v13, v14);
          goto LABEL_25;
        }

        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1C0CF8DE0();
  swift_allocError();
  *v5 = 5;
  *(v5 + 4) = 1;
  swift_willThrow();
LABEL_25:
  v31 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C0D5BA94(uint64_t result)
{
  v14 = v1[2];
  v15 = v1[4];
  v3 = v1[1];
  v13 = *v1;
  v4 = *(v1 + 6);
  if (*(v1 + 7))
  {
    v4 = 1;
  }

  if (!v4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = result;
  if (*(&v14 + 1) == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_30;
  }

  v6 = *(&v14 + 1) / v4;
  if (!(*(&v14 + 1) / v4))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v7 = *(result + 16);
  result = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1 && v7 != 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + v6;
      v11 = __OFADD__(v9, v6) ? ((v9 + v6) >> 63) ^ 0x8000000000000000 : v9 + v6;
      if (__OFADD__(v9, v6))
      {
        break;
      }

      if (v7 < v10)
      {
        v10 = v7;
      }

      if (v10 < v9)
      {
        goto LABEL_26;
      }

      if (v9 < 0)
      {
        goto LABEL_27;
      }

      v12 = sub_1C0D5BEF0(v5, v5 + 32, v9, (2 * v10) | 1);
      if (v2)
      {
      }

      result = sub_1C0CF9B90(v12);
      v9 = v11;
      if (v11 >= v7)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1C0D5BBD0(uint64_t result)
{
  v4 = v1[1];
  v41 = *v1;
  v42 = v4;
  v43[0] = v1[2];
  *(v43 + 10) = *(v1 + 42);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(result + 16);
  if (!v7)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v2 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v31 = sub_1C0D52840(v2, v6, v5, v3);

    return v31;
  }

  v8 = *&v43[0];
  if (!*&v43[0])
  {
    goto LABEL_47;
  }

  v32 = v5;
  v33 = v6;
  v34 = result;
  v9 = *(&v42 + 1);
  v10 = *(result + 32);
  if (*&v43[0] == -1 && v10 == 0x8000000000000000)
  {
LABEL_35:
    __break(1u);
LABEL_36:

    v6 = v33;
    v5 = v32;
    goto LABEL_38;
  }

  v11 = v7 - 1;
  v2 = MEMORY[0x1E69E7CC0];
  v12 = 40;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = v12;
    v36 = v41;
    v37 = v42;
    v38[0] = v43[0];
    *(v38 + 10) = *(v43 + 10);
    v13 = v8;
    v14 = v10 / v8;
    sub_1C0D3B860(&v41, v35);
    v15 = sub_1C0D33848(v14);
    v39[0] = v36;
    v39[1] = v37;
    v40[0] = v38[0];
    *(v40 + 10) = *(v38 + 10);
    result = sub_1C0D3B80C(v39);
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= *(v2 + 24) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      result = sub_1C0CF4C28(result, v23, 1, v2);
      v2 = result;
      if (*(v15 + 16))
      {
LABEL_10:
        v19 = *(v2 + 16);
        if ((*(v2 + 24) >> 1) - v19 < v16)
        {
          goto LABEL_43;
        }

        memcpy((v2 + 8 * v19 + 32), (v15 + 32), 8 * v16);

        if (v16)
        {
          v20 = *(v2 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_45;
          }

          *(v2 + 16) = v22;
        }

        goto LABEL_19;
      }
    }

    if (v16)
    {
      goto LABEL_40;
    }

LABEL_19:
    v24 = *(v9 + 16);
    v25 = *(v3 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_41;
    }

    sub_1C0D3B860(&v41, &v36);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v3 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v30 = v25 + v24;
      }

      else
      {
        v30 = v25;
      }

      result = sub_1C0CF4C28(result, v30, 1, v3);
      v3 = result;
      if (*(v9 + 16))
      {
LABEL_23:
        v27 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v27 < v24)
        {
          goto LABEL_44;
        }

        memcpy((v3 + 8 * v27 + 32), (v9 + 32), 8 * v24);
        result = sub_1C0D3B80C(&v41);
        v8 = v13;
        if (v24)
        {
          v28 = *(v3 + 16);
          v21 = __OFADD__(v28, v24);
          v29 = v28 + v24;
          if (v21)
          {
            goto LABEL_46;
          }

          *(v3 + 16) = v29;
        }

        goto LABEL_32;
      }
    }

    result = sub_1C0D3B80C(&v41);
    v8 = v13;
    if (v24)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (!v11)
    {
      goto LABEL_36;
    }

    v10 = *(v34 + v44);
    v12 = v44 + 8;
    --v11;
    if (v8 == -1 && v10 == 0x8000000000000000)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return result;
}

uint64_t sub_1C0D5BEF0(int64_t a1, unint64_t a2, int64_t a3, unint64_t a4)
{
  v10 = v5;
  v11 = *(v5 + 48);
  if (*(v5 + 56))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v5 + 48);
  }

  if (!v12)
  {
    goto LABEL_98;
  }

  v13 = *(v5 + 40);
  if (v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_100;
  }

  v15 = a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_99;
  }

  v92 = v13 / v12;
  if (v13 / v12 < ((a4 >> 1) - a3))
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v16 = 5;
    *(v16 + 4) = 1;
    swift_willThrow();
    return v5;
  }

  v8 = v6;
  inited = a1;
  v84 = a4 >> 1;
  *&v93 = v12;
  v7 = v10[3];
  v19 = dword_1C0D7E4A4[*v10];
  v20 = cche_encryption_params_polynomial_degree();
  v81 = a2;
  v82 = inited;
  if (v20)
  {
    v21 = v20;
    v22 = v15;
    v23 = v20;
    v24 = sub_1C0D78C2C();
    *(v24 + 16) = v23;
    v15 = v22;
    inited = v82;
    bzero((v24 + 32), 8 * v21);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v83 = *(v7 + 16);
  v9 = sub_1C0D5FC34(v24, v83);

  v94 = v10;
  if (v84 != v15)
  {
    if ((v93 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      inited = v15;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }

      goto LABEL_106;
    }

    goto LABEL_105;
  }

  inited = v9[2];
  if (!inited)
  {
LABEL_80:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1C0CF7A90(0, inited, 0);
  v25 = 0;
  v5 = v96;
  v26 = v10[8];
  v83 = *(v26 + 32);
  v84 = inited;
  v85 = v9;
  v92 = v26;
  while (1)
  {
    if (v25 >= v9[2])
    {
      goto LABEL_96;
    }

    v88 = v25;
    v9 = v9[v25 + 4];
    cche_plaintext_sizeof();
    sub_1C0D78BFC();

    v27 = swift_slowAlloc();
    if (HIDWORD(v9[2]))
    {
      goto LABEL_97;
    }

    v7 = v27;
    LODWORD(v28) = cche_encode_simd_uint64();
    if (v28)
    {
LABEL_84:
      v73 = v28;
      sub_1C0CF8DE0();
      swift_allocError();
      *v74 = v73;
      *(v74 + 4) = 0;
      swift_willThrow();

      MEMORY[0x1C68E4EB0](v7, -1, -1);

LABEL_86:

      return v5;
    }

    *&v93 = v7;
    v90 = v5;
    v29 = v8;
    v8 = v10[9];
    v7 = cche_param_ctx_ciphertext_ctx_nmoduli();
    v30 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v26;

    v31 = swift_slowAlloc();
    *(inited + 24) = v31;
    *(inited + 32) = v31 + v30;
    result = cche_rng_seed_sizeof();
    if (result)
    {
      v32 = result;
      if (result < 15)
      {
        if (result < 0)
        {
          goto LABEL_103;
        }

        result = 0;
        v37 = v82 & 0xF00000000000000 | (v32 << 48);
        v82 = v37;
      }

      else
      {
        v33 = sub_1C0D7818C();
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        v36 = sub_1C0D7813C();
        if (v32 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v32;
          v37 = v36 | 0x8000000000000000;
        }

        else
        {
          result = v32 << 32;
          v37 = v36 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v37 = 0xC000000000000000;
    }

    *&v95[0] = result;
    *(&v95[0] + 1) = v37;
    v38 = v8[3];
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1C0D51ED4(v95, v31, v93, v92, v38, v7);

    if (v5)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v75 = v5;
      *(v75 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](v31, -1, -1);

      sub_1C0CF448C(*&v95[0], *(&v95[0] + 1));

      MEMORY[0x1C68E4EB0](v93, -1, -1);

      goto LABEL_86;
    }

    v39 = *(&v95[0] + 1);
    v7 = *&v95[0];
    sub_1C0CF6468(*&v95[0], *(&v95[0] + 1));
    sub_1C0CF448C(v7, v39);
    v40 = cche_serialize_seeded_ciphertext_coeff_nbytes();
    if (!v40)
    {
      v46 = 0xC000000000000000;
      goto LABEL_40;
    }

    v41 = v40;
    if (v40 <= 14)
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        v40 = 0;
        v46 = v81 & 0xF00000000000000 | (v41 << 48);
        v81 = v46;
        goto LABEL_40;
      }

      while (1)
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        v9 = sub_1C0CFD6D4(v9);
LABEL_49:
        v55 = v84;
        v91 = 0;
        v80 = (v7 + 32);
        v56 = v9 + 4;
        v57 = MEMORY[0x1E69E7CC0];
        v79 = v8;
LABEL_50:
        v86 = inited;
        if (inited >= v55)
        {
          goto LABEL_101;
        }

        if (!__OFADD__(v91, 1))
        {
          break;
        }

LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
      }

      v58 = v83;
      if (!v83)
      {
        v60 = v93;
LABEL_62:
        v65 = 0;
        v87 = v86 + 1;
        v89 = v57;
        do
        {
          if (v65 >= v60)
          {
            goto LABEL_91;
          }

          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_92;
          }

          v67 = v94[3];
          v95[2] = v94[2];
          v95[3] = v67;
          v95[4] = v94[4];
          v68 = v94[1];
          v95[0] = *v94;
          v95[1] = v68;
          v69 = v65 * v92;
          if ((v65 * v92) >> 64 != (v65 * v92) >> 63)
          {
            goto LABEL_93;
          }

          v70 = v91 + v69;
          if (__OFADD__(v91, v69))
          {
            goto LABEL_94;
          }

          inited = v57;
          sub_1C0D78BFC();
          v28 = sub_1C0D5C8C4(v70, inited);
          v5 = v28;
          v71 = *(v28 + 2);
          if (v71)
          {
            inited = 0;
            while (inited < v9[2])
            {
              v7 = v9;
              v72 = *(v5 + 32 + 8 * inited);
              v8 = v56[inited];
              LODWORD(v28) = swift_isUniquelyReferenced_nonNull_native();
              v56[inited] = v8;
              if (v28)
              {
                if ((v72 & 0x8000000000000000) != 0)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v28 = sub_1C0CFD6C0(v8);
                v8 = v28;
                v56[inited] = v28;
                if ((v72 & 0x8000000000000000) != 0)
                {
                  goto LABEL_82;
                }
              }

              if (v72 >= v8[2])
              {
                goto LABEL_83;
              }

              ++inited;
              v8[v72 + 4] = 1;
              v9 = v7;
              if (v71 == inited)
              {
                goto LABEL_63;
              }
            }

            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

LABEL_63:

          v65 = v66;
          v60 = v93;
          v57 = v89;
        }

        while (v66 != v93);

        ++v91;
        v55 = v84;
        inited = v87;
        v8 = v79;
        v10 = v94;
        v57 = MEMORY[0x1E69E7CC0];
        if (v87 != v84)
        {
          goto LABEL_50;
        }

        swift_unknownObjectRelease();
        inited = v9[2];
        if (!inited)
        {
          goto LABEL_80;
        }

        goto LABEL_18;
      }

      v59 = *(v81 + 8 * inited);
      v57 = sub_1C0CF4C28(0, 1, 1, v57);
      v8 = v80;
      v60 = v93;
      while (1)
      {
        v61 = *v8++;
        inited = v61;
        if (!v61)
        {
          break;
        }

        if (v59 == 0x8000000000000000 && inited == -1)
        {
          goto LABEL_95;
        }

        v63 = *(v57 + 2);
        v62 = *(v57 + 3);
        if (v63 >= v62 >> 1)
        {
          v64 = sub_1C0CF4C28((v62 > 1), v63 + 1, 1, v57);
          v60 = v93;
          v57 = v64;
        }

        *(v57 + 2) = v63 + 1;
        *&v57[8 * v63 + 32] = v59 % inited;
        v59 /= inited;
        if (!--v58)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v42 = sub_1C0D7818C();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_1C0D7813C();
    if (v41 >= 0x7FFFFFFF)
    {
      sub_1C0D7828C();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = v41;
      v46 = v45 | 0x8000000000000000;
    }

    else
    {
      v40 = v41 << 32;
      v46 = v45 | 0x4000000000000000;
    }

LABEL_40:
    *&v95[0] = v40;
    *(&v95[0] + 1) = v46;
    v47 = sub_1C0D52488(v95, inited);
    v26 = v92;
    if (v47)
    {
      break;
    }

    v8 = v29;

    MEMORY[0x1C68E4EB0](v93, -1, -1);

    swift_setDeallocating();
    v48 = *(inited + 16);
    v49 = *(inited + 24);
    v50 = v39;

    if (v49)
    {
      MEMORY[0x1C68E4EB0](v49, -1, -1);
    }

    v9 = v85;
    v10 = v94;

    v51 = v95[0];
    v5 = v90;
    v96 = v90;
    v53 = *(v90 + 16);
    v52 = *(v90 + 24);
    inited = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v93 = v95[0];
      sub_1C0CF7A90((v52 > 1), v53 + 1, 1);
      v51 = v93;
      v5 = v96;
    }

    *(v5 + 16) = inited;
    v54 = v5 + 32 * v53;
    *(v54 + 32) = v51;
    v25 = v88 + 1;
    *(v54 + 48) = v7;
    *(v54 + 56) = v50;
    if (v84 == v88 + 1)
    {

      return v5;
    }
  }

  v76 = v47;

  sub_1C0CF8DE0();
  swift_allocError();
  *v77 = v76;
  *(v77 + 4) = 0;
  swift_willThrow();

  MEMORY[0x1C68E4EB0](v93, -1, -1);

  sub_1C0CF448C(v7, v39);
  swift_setDeallocating();
  v5 = *(inited + 16);
  v78 = *(inited + 24);

  if (v78)
  {
    MEMORY[0x1C68E4EB0](v78, -1, -1);
  }

  sub_1C0CF448C(*&v95[0], *(&v95[0] + 1));

  return v5;
}

char *sub_1C0D5C8C4(uint64_t a1, char *a2)
{
  v5 = *v2;
  v6 = *(v2 + 5);
  v7 = dword_1C0D7E4A4;
  if (v6 >= 2)
  {
    v8 = dword_1C0D7E4A4[v5];
    v9 = a1 >= 0 ? a1 & 1 : -(a1 & 1);
    v10 = cche_encryption_params_polynomial_degree();
    v11 = *(a2 + 2);
    if (v11)
    {
      v12 = v9 * v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1C0CFD6E8(a2);
      }

      v13 = 32;
      v14 = v12 / v6;
      do
      {
        v15 = *&a2[v13];
        v16 = __OFADD__(v15, v14);
        v17 = v15 + v14;
        if (v16)
        {
          goto LABEL_52;
        }

        *&a2[v13] = v17;
        v13 += 8;
        --v11;
      }

      while (v11);
    }
  }

  if (v6 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 /= 2;
  }

  v18 = dword_1C0D7E4A4[v5];
  v19 = cche_encryption_params_polynomial_degree();
  if (!v6)
  {
    goto LABEL_59;
  }

  v7 = *(a2 + 2);
  v20 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_43;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v7 = v19 / v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1C0CFD6E8(a2);
  }

  v21 = 0;
  v22 = v7 / 2;
  v23 = v7 + 1;
  v24 = v7 + 3;
  do
  {
    if (v21 >= *(a2 + 2))
    {
      goto LABEL_51;
    }

    v25 = &a2[8 * v21];
    v27 = *(v25 + 4);
    v26 = *(v25 + 5);
    v16 = __OFADD__(v27, v26);
    v28 = v27 + v26;
    v29 = v16;
    if (v27 >= v22)
    {
      if (v29)
      {
        goto LABEL_54;
      }

      if (v23 < 3)
      {
        goto LABEL_55;
      }

      if (v28 == 0x8000000000000000 && v24 < 2)
      {
        goto LABEL_57;
      }

      v31 = v28 % v22 + v22;
    }

    else
    {
      if (v29)
      {
        goto LABEL_53;
      }

      if (v23 < 3)
      {
        goto LABEL_56;
      }

      if (v28 == 0x8000000000000000 && v24 < 2)
      {
        while (1)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          a2 = sub_1C0CFD6E8(a2);
LABEL_44:
          v33 = a1 / 2;
          for (i = 32; ; i += 8)
          {
            v35 = *&a2[i];
            v36 = v35 * v6;
            if ((v35 * v6) >> 64 != (v35 * v6) >> 63)
            {
              break;
            }

            *&a2[i] = v36;
            v16 = __OFADD__(v36, v33);
            v37 = v36 + v33;
            if (v16)
            {
              goto LABEL_50;
            }

            *&a2[i] = v37;
            if (!--v7)
            {
              return a2;
            }
          }

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
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }
      }

      v31 = v28 % v22;
    }

    *(v25 + 5) = v31;
    ++v21;
  }

  while (v20 != v21);
  v7 = *(a2 + 2);
  if (v7)
  {
LABEL_43:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

  return a2;
}

unint64_t sub_1C0D5CAFC(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  if (!*(v1 + 2))
  {
    v30 = *v1;
    v33 = *(v1 + 3);
    v35 = *(v1 + 19);
    *v37 = *(v1 + 35);
    *&v37[13] = *(v1 + 3);
    v39 = *(v1 + 8);
    v41 = *(v1 + 9);
    result = sub_1C0D5CF00(a1);
    v6 = v2;
    if (!v2)
    {
      goto LABEL_6;
    }

    return v3;
  }

  if (*(v1 + 2) != 1)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v22 = 5;
    *(v22 + 4) = 1;
    swift_willThrow();
    return v3;
  }

  v29 = *v1;
  v32 = *(v1 + 3);
  v34 = *(v1 + 19);
  *v36 = *(v1 + 35);
  *&v36[13] = *(v1 + 3);
  v38 = *(v1 + 8);
  v40 = *(v1 + 9);
  result = sub_1C0D5E4A8(a1);
  v6 = v2;
  if (v2)
  {
    return v3;
  }

LABEL_6:
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v27 = *(result + 16);
  if (!v27)
  {
LABEL_22:

    v3 = sub_1C0D0FA30(v8);

    return v3;
  }

  v28 = v4;
  v9 = 0;
  while (v9 < *(v7 + 16))
  {
    v10 = *(v7 + 8 * v9 + 32);
    v11 = *(v3 + 32);
    v12 = cche_plaintext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    inited[2] = v3;

    result = swift_slowAlloc();
    inited[3] = result;
    inited[4] = result + v12;
    if (!*(v10 + 24))
    {
      goto LABEL_28;
    }

    if (!*(v28 + 24))
    {
      goto LABEL_29;
    }

    v14 = result;
    v15 = cche_decrypt();
    if (v15)
    {
      v23 = v15;
      sub_1C0CF8DE0();
      swift_allocError();
      *v24 = v23;
      *(v24 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](v14, -1, -1);

LABEL_24:

      return v3;
    }

    v16 = *(v3 + 32);
    v17 = cche_param_ctx_polynomial_degree();

    sub_1C0D5FCD0(v17, inited, v3);
    if (v6)
    {

      swift_setDeallocating();
      v25 = inited[2];
      v26 = inited[3];

      if (v26)
      {
        MEMORY[0x1C68E4EB0](v26, -1, -1);
      }

      goto LABEL_24;
    }

    v18 = *(v3 + 32);
    result = cche_param_ctx_plaintext_modulus();
    if (!result)
    {
      goto LABEL_27;
    }

    v19 = sub_1C0D74850(__clz(result) ^ 0x3F);

    swift_setDeallocating();
    v20 = inited[2];
    v21 = inited[3];

    if (v21)
    {
      MEMORY[0x1C68E4EB0](v21, -1, -1);
    }

    ++v9;

    result = sub_1C0CF9C84(v19);
    if (v27 == v9)
    {
      v8 = v31;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5CF00(void *a1)
{
  v140[1] = *MEMORY[0x1E69E9840];
  v122 = v1[3];
  v2 = v1[8];
  v129 = v1[9];
  v140[0] = MEMORY[0x1E69E7CC0];
  v3 = a1[2];
  v132 = v2;
  if (v3)
  {
    v5 = a1[5];
    v123 = MEMORY[0x1E69E7CC0];
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = a1[6];
      v7 = a1[4];
      sub_1C0CF6468(v7, v5 & 0xDFFFFFFFFFFFFFFFLL);
      sub_1C0D78BFC();
      sub_1C0CF448C(v7, v5 & 0xDFFFFFFFFFFFFFFFLL);
      v123 = v6;
      v140[0] = v6;
    }

    v139 = MEMORY[0x1E69E7CC0];
    sub_1C0D78E3C();
    v8 = 0;
    v9 = a1 + 4;
    v126 = v3;
    v127 = a1 + 4;
    while (1)
    {
      if (v8 == v3)
      {
        goto LABEL_197;
      }

      v10 = &v9[4 * v8];
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_1C0D5FDD4(*v10, v12, v13, v14);
      v133 = v11;
      sub_1C0D5FDD4(v11, v12, v13, v14);
      v15 = qword_1EBE6CB78;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1EBE72CC0;
      if (qword_1EBE72CC0 < 0)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        sub_1C0D7814C();
LABEL_243:
        __break(1u);
      }

      if (HIDWORD(qword_1EBE72CC0))
      {
        goto LABEL_199;
      }

      v135 = v13;
      v17 = *(v2 + 32);
      v18 = cche_ciphertext_sizeof();
      type metadata accessor for HE.ObjectStorage();
      v19 = swift_allocObject();
      v19[2] = v2;

      v20 = swift_slowAlloc();
      v19[3] = v20;
      v19[4] = v20 + v18;
      v21 = *(v2 + 32);
      if ((v12 & 0x2000000000000000) != 0)
      {
        v130 = v14;
        v128 = v8;
        v26 = *(v135 + 16);
        if (v26)
        {
          v137 = MEMORY[0x1E69E7CC0];

          sub_1C0CF7C90(0, v26, 0);
          v27 = v137;
          v28 = (v135 + 32);
          do
          {
            v30 = *v28++;
            v29 = v30;
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_193;
            }

            if (HIDWORD(v29))
            {
              goto LABEL_194;
            }

            v32 = *(v137 + 16);
            v31 = *(v137 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1C0CF7C90((v31 > 1), v32 + 1, 1);
            }

            *(v137 + 16) = v32 + 1;
            *(v137 + 4 * v32 + 32) = v29;
            --v26;
          }

          while (v26);
          v2 = v132;
          v3 = v126;
        }

        else
        {

          v27 = MEMORY[0x1E69E7CC0];
        }

        v37 = v12 >> 62;
        v8 = v128;
        if ((v12 >> 62) > 1)
        {
          if (v37 == 2)
          {
            v39 = *(v133 + 16);
            v40 = *(v133 + 24);
            sub_1C0D78BFC();
            v41 = sub_1C0D7812C();
            if (v41)
            {
              v42 = v41;
              v43 = sub_1C0D7815C();
              if (__OFSUB__(v39, v43))
              {
                goto LABEL_209;
              }

              v44 = v39 - v43 + v42;
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_204;
              }
            }

            else
            {
              v44 = 0;
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_204;
              }
            }

            sub_1C0D7814C();
            if (!v44)
            {
              goto LABEL_241;
            }

            *(v27 + 16);
            v38 = cche_deserialize_ciphertext_coeff();
            v14 = v130;
            swift_bridgeObjectRelease_n();
            v2 = v132;
            v3 = v126;
            v8 = v128;
            v23 = v135;
          }

          else
          {
            *(v27 + 16);
            sub_1C0D78BFC();
            v38 = cche_deserialize_ciphertext_coeff();
            v14 = v130;
            swift_bridgeObjectRelease_n();
            v23 = v135;
          }
        }

        else if (v37)
        {
          if (v133 >> 32 < v133)
          {
            goto LABEL_203;
          }

          sub_1C0D78BFC();
          v49 = sub_1C0D7812C();
          if (!v49)
          {
            goto LABEL_242;
          }

          v50 = v49;
          v51 = sub_1C0D7815C();
          if (__OFSUB__(v133, v51))
          {
            goto LABEL_205;
          }

          v52 = v133 - v51 + v50;
          sub_1C0D7814C();
          if (!v52)
          {
            goto LABEL_243;
          }

          *(v27 + 16);
          v38 = cche_deserialize_ciphertext_coeff();
          v14 = v130;
          swift_bridgeObjectRelease_n();
          v3 = v126;
          v23 = v135;
        }

        else
        {
          *(v27 + 16);
          sub_1C0D78BFC();
          v38 = cche_deserialize_ciphertext_coeff();
          v14 = v130;
          v23 = v135;
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v22 = v12 >> 62;
        v23 = v135;
        if ((v12 >> 62) > 1)
        {
          if (v22 != 2)
          {
            v47 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v47 == 2)
              {
                v60 = *(v135 + 16);

                v61 = sub_1C0D7812C();
                if (!v61)
                {
                  goto LABEL_254;
                }

                v62 = v61;
                v63 = sub_1C0D7815C();
                if (__OFSUB__(v60, v63))
                {
                  goto LABEL_211;
                }

                v16 = v60 - v63 + v62;
                sub_1C0D7814C();
                if (!v16)
                {
                  goto LABEL_255;
                }

                v23 = v135;
                if (qword_1EBE6CC50 != -1)
                {
                  swift_once();
                }

                if (qword_1EBE72CC8 < 0)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v88 = qword_1EBE6CC50;

                if (v88 != -1)
                {
                  swift_once();
                }

                if (qword_1EBE72CC8 < 0)
                {
                  goto LABEL_212;
                }
              }
            }

            else if (v47)
            {
              if (v135 > v135 >> 32)
              {
                goto LABEL_213;
              }

              v82 = sub_1C0D7812C();
              if (!v82)
              {
                goto LABEL_266;
              }

              v83 = v82;
              v84 = sub_1C0D7815C();
              if (__OFSUB__(v135, v84))
              {
                goto LABEL_220;
              }

              v85 = v135 - v84 + v83;
              result = sub_1C0D7814C();
              if (!v85)
              {
                goto LABEL_267;
              }

              v23 = v135;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_232;
              }
            }

            else
            {
              v48 = qword_1EBE6CC50;

              if (v48 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_216;
              }
            }

LABEL_133:
            v38 = cche_deserialize_seeded_ciphertext_coeff();
            goto LABEL_163;
          }

          v131 = v14;
          v33 = *(v133 + 16);
          v34 = *(v133 + 24);

          v16 = sub_1C0D7812C();
          if (v16)
          {
            v35 = sub_1C0D7815C();
            if (__OFSUB__(v33, v35))
            {
              goto LABEL_207;
            }

            v16 += v33 - v35;
          }

          if (__OFSUB__(v34, v33))
          {
            goto LABEL_202;
          }

          sub_1C0D7814C();
          v36 = v131 >> 62;
          if ((v131 >> 62) > 1)
          {
            v23 = v135;
            if (v36 != 2)
            {
              if (!v16)
              {
                goto LABEL_250;
              }

              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_229;
              }

              goto LABEL_147;
            }

            v64 = *(v135 + 16);
            v65 = sub_1C0D7812C();
            if (!v65)
            {
              goto LABEL_262;
            }

            v66 = v65;
            v67 = sub_1C0D7815C();
            v68 = __OFSUB__(v64, v67);
            v69 = v64 - v67;
            if (v68)
            {
              goto LABEL_228;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_263;
            }

            if (!(v69 + v66))
            {
              goto LABEL_264;
            }

            v23 = v135;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v23 = v135;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_235;
            }
          }

          else
          {
            v23 = v135;
            if (!v36)
            {
              if (!v16)
              {
                goto LABEL_265;
              }

              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_227;
              }

LABEL_147:
              v38 = cche_deserialize_seeded_ciphertext_coeff();
              v14 = v131;
              goto LABEL_163;
            }

            if (v135 > v135 >> 32)
            {
              goto LABEL_224;
            }

            v89 = sub_1C0D7812C();
            if (!v89)
            {
              goto LABEL_251;
            }

            v90 = v89;
            v91 = sub_1C0D7815C();
            v92 = v135 - v91;
            if (__OFSUB__(v135, v91))
            {
              goto LABEL_234;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_252;
            }

            if (!(v92 + v90))
            {
              goto LABEL_253;
            }

            v23 = v135;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v23 = v135;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_238;
            }
          }

          v38 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v131;
          goto LABEL_157;
        }

        if (!v22)
        {
          v16 = BYTE6(v12);
          v24 = v14 >> 62;
          if ((v14 >> 62) > 1)
          {
            if (v24 == 2)
            {
              v53 = *(v135 + 16);

              v54 = sub_1C0D7812C();
              if (!v54)
              {
                sub_1C0D7814C();
LABEL_245:
                __break(1u);
LABEL_246:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_247:
                  __break(1u);
                }

LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_252:
                  __break(1u);
                }

LABEL_253:
                __break(1u);
LABEL_254:
                sub_1C0D7814C();
LABEL_255:
                __break(1u);
LABEL_256:
                sub_1C0D7814C();
LABEL_257:
                __break(1u);
LABEL_258:
                __break(1u);
LABEL_259:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_260:
                  __break(1u);
                }

LABEL_261:
                __break(1u);
LABEL_262:
                sub_1C0D7814C();
                if (!v16)
                {
LABEL_263:
                  __break(1u);
                }

LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                result = sub_1C0D7814C();
LABEL_267:
                __break(1u);
                return result;
              }

              v55 = v54;
              v56 = sub_1C0D7815C();
              if (__OFSUB__(v53, v56))
              {
                goto LABEL_218;
              }

              v57 = v14;
              v58 = v53 - v56 + v55;
              v59 = v57;
              sub_1C0D7814C();
              if (!v58)
              {
                goto LABEL_245;
              }

              v23 = v135;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_222;
              }

              goto LABEL_117;
            }

            v87 = qword_1EBE6CC50;

            if (v87 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_214;
            }
          }

          else
          {
            if (v24)
            {
              if (v135 > v135 >> 32)
              {
                goto LABEL_217;
              }

              v16 = v20;

              v77 = sub_1C0D7812C();
              if (!v77)
              {
                goto LABEL_256;
              }

              v78 = v77;
              v79 = sub_1C0D7815C();
              if (__OFSUB__(v135, v79))
              {
                goto LABEL_219;
              }

              v80 = v14;
              v81 = v135 - v79 + v78;
              v59 = v80;
              sub_1C0D7814C();
              if (!v81)
              {
                goto LABEL_257;
              }

              v23 = v135;
              if (qword_1EBE6CC50 != -1)
              {
                swift_once();
              }

              if (qword_1EBE72CC8 < 0)
              {
                goto LABEL_231;
              }

LABEL_117:
              v38 = cche_deserialize_seeded_ciphertext_coeff();
              v14 = v59;
              goto LABEL_163;
            }

            v25 = qword_1EBE6CC50;

            if (v25 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_215;
            }
          }

          goto LABEL_133;
        }

        if (v133 >> 32 < v133)
        {
          goto LABEL_201;
        }

        v16 = sub_1C0D7812C();
        v124 = v12;
        if (v16)
        {
          v45 = sub_1C0D7815C();
          if (__OFSUB__(v133, v45))
          {
            goto LABEL_208;
          }

          v46 = v14;
          v16 += v133 - v45;
        }

        else
        {
          v46 = v14;
        }

        sub_1C0D7814C();
        v70 = v46 >> 62;
        if ((v46 >> 62) > 1)
        {
          v23 = v135;
          if (v70 == 2)
          {
            v72 = *(v135 + 16);
            v73 = sub_1C0D7812C();
            if (!v73)
            {
              goto LABEL_246;
            }

            v74 = v73;
            v75 = sub_1C0D7815C();
            v68 = __OFSUB__(v72, v75);
            v76 = v72 - v75;
            if (v68)
            {
              goto LABEL_230;
            }

            v14 = v46;
            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_247;
            }

            if (!(v76 + v74))
            {
              goto LABEL_248;
            }

            v12 = v124;
            v23 = v135;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v23 = v135;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_236;
            }

            v38 = cche_deserialize_seeded_ciphertext_coeff();
LABEL_157:
            v3 = v126;
            goto LABEL_163;
          }

          if (!v16)
          {
            goto LABEL_258;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_226;
          }

          v38 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v46;
          v12 = v124;
        }

        else
        {
          if (v70)
          {
            if (v135 > v135 >> 32)
            {
              goto LABEL_223;
            }

            v14 = v46;
            v93 = sub_1C0D7812C();
            if (!v93)
            {
              goto LABEL_259;
            }

            v94 = v93;
            v95 = sub_1C0D7815C();
            v96 = v135 - v95;
            if (__OFSUB__(v135, v95))
            {
              goto LABEL_233;
            }

            sub_1C0D7814C();
            if (!v16)
            {
              goto LABEL_260;
            }

            if (!(v96 + v94))
            {
              goto LABEL_261;
            }

            v23 = v135;
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
              v23 = v135;
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_237;
            }

            v38 = cche_deserialize_seeded_ciphertext_coeff();
            v12 = v124;
            goto LABEL_157;
          }

          if (!v16)
          {
            goto LABEL_249;
          }

          v71 = v46;
          v12 = v124;
          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_225;
          }

          v38 = cche_deserialize_seeded_ciphertext_coeff();
          v14 = v71;
          v23 = v135;
        }
      }

LABEL_163:
      sub_1C0D5FE40(v133, v12, v23, v14);

      if (v38)
      {
        sub_1C0CF8DE0();
        swift_allocError();
        *v120 = v38;
        *(v120 + 4) = 0;
        swift_willThrow();

        sub_1C0D5FE40(v133, v12, v23, v14);
        v16 = v139;

LABEL_189:

        goto LABEL_190;
      }

      ++v8;

      sub_1C0D5FE40(v133, v12, v23, v14);
      sub_1C0D78E0C();
      v97 = *(v139 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      v9 = v127;
      if (v8 == v3)
      {
        v16 = v139;
        if (!*(v139 + 16))
        {
          goto LABEL_192;
        }

LABEL_167:
        v98 = *(v16 + 32);

        v99 = sub_1C0D3CD98(v123, v98);

        v100 = *(v122 + 16);
        if (v100)
        {
          v101 = v100 - 1;
          if (v100 == 1)
          {
            goto LABEL_186;
          }

          v102 = 0;
          v134 = v100 - 1;
          v136 = v99;
          while (1)
          {
            if (v102 == v101)
            {
              goto LABEL_200;
            }

            v103 = *(v16 + 16);
            if (!v103)
            {
              break;
            }

            v138 = MEMORY[0x1E69E7CC0];
            sub_1C0CF7BA0(0, v103, 0);
            v104 = 0;
            v105 = v138;
            do
            {
              if (v104 >= *(v16 + 16))
              {
                __break(1u);
LABEL_197:
                __break(1u);
                goto LABEL_198;
              }

              v106 = *(v16 + 8 * v104 + 32);
              v107 = *(v2 + 32);
              v108 = v2;
              v109 = cche_plaintext_sizeof();
              type metadata accessor for HE.ObjectStorage();
              v110 = swift_allocObject();
              v110[2] = v108;

              v111 = swift_slowAlloc();
              v110[3] = v111;
              v110[4] = v111 + v109;
              if (!*(v106 + 24))
              {
                goto LABEL_239;
              }

              if (!*(v129 + 24))
              {
                goto LABEL_240;
              }

              v2 = v132;
              v112 = *(v132 + 32);
              v113 = cche_decrypt();
              if (v113)
              {
                v118 = v113;

                sub_1C0CF8DE0();
                swift_allocError();
                *v119 = v118;
                *(v119 + 4) = 0;
                swift_willThrow();

                goto LABEL_189;
              }

              v115 = *(v138 + 16);
              v114 = *(v138 + 24);
              if (v115 >= v114 >> 1)
              {
                sub_1C0CF7BA0((v114 > 1), v115 + 1, 1);
              }

              ++v104;
              *(v138 + 16) = v115 + 1;
              *(v138 + 8 * v115 + 32) = v110;
            }

            while (v103 != v104);

            v101 = v134;
            v99 = v136;
            if (!v136)
            {
              goto LABEL_206;
            }

LABEL_184:
            v116 = *(v105 + 16);
            sub_1C0D78BFC();
            v117 = sub_1C0D5A090(0, v116, v99, v99, v105, v140);
            if (v125)
            {
              goto LABEL_195;
            }

            v16 = v117;
            ++v102;

            if (v102 == v101)
            {
LABEL_186:

              goto LABEL_190;
            }
          }

          v105 = MEMORY[0x1E69E7CC0];
          if (v99)
          {
            goto LABEL_184;
          }

          goto LABEL_206;
        }

        goto LABEL_210;
      }
    }
  }

  v123 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_167;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:

LABEL_190:
  v121 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1C0D5E4A8(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_166:
    v100 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = *(v1 + 64);
  v110 = MEMORY[0x1E69E7CC0];
  sub_1C0D78E3C();
  v6 = 0;
  v105 = a1 + 32;
  v101 = v3;
  v102 = v5;
  while (1)
  {
    v7 = (v105 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    sub_1C0D5FDD4(*v7, v9, v11, v10);
    v108 = v11;
    sub_1C0D5FDD4(v8, v9, v11, v10);
    v12 = qword_1EBE6CB78;

    if (v12 != -1)
    {
      swift_once();
    }

    if (qword_1EBE72CC0 < 0)
    {
      goto LABEL_169;
    }

    if (HIDWORD(qword_1EBE72CC0))
    {
      goto LABEL_170;
    }

    v107 = v10;
    v13 = *(v5 + 32);
    v14 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    v15 = swift_allocObject();
    v15[2] = v5;

    v16 = swift_slowAlloc();
    v15[3] = v16;
    v15[4] = v16 + v14;
    v17 = *(v5 + 32);
    if ((v9 & 0x2000000000000000) != 0)
    {
      v106 = v8;
      v103 = v6;
      v22 = *(v108 + 16);
      if (v22)
      {
        v109 = MEMORY[0x1E69E7CC0];

        sub_1C0CF7C90(0, v22, 0);
        v23 = v109;
        v24 = (v108 + 32);
        while (1)
        {
          v26 = *v24++;
          v25 = v26;
          if ((v26 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (HIDWORD(v25))
          {
            goto LABEL_168;
          }

          v28 = *(v109 + 16);
          v27 = *(v109 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1C0CF7C90((v27 > 1), v28 + 1, 1);
          }

          *(v109 + 16) = v28 + 1;
          *(v109 + 4 * v28 + 32) = v25;
          if (!--v22)
          {
            v3 = v101;
            v5 = v102;
            v8 = v106;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        sub_1C0D7814C();
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v38 = v9 >> 62;
      v19 = v107;
      if ((v9 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v39 = *(v8 + 16);
          v40 = *(v8 + 24);
          sub_1C0D78BFC();
          v41 = sub_1C0D7812C();
          if (v41)
          {
            v42 = sub_1C0D7815C();
            if (__OFSUB__(v39, v42))
            {
              goto LABEL_178;
            }

            v41 += v39 - v42;
          }

          if (__OFSUB__(v40, v39))
          {
            goto LABEL_174;
          }

          sub_1C0D7814C();
          if (!v41)
          {
            goto LABEL_209;
          }

          *(v23 + 16);
          v19 = v107;
          v43 = cche_deserialize_ciphertext_coeff();
          swift_bridgeObjectRelease_n();
          v3 = v101;
          v5 = v102;
          goto LABEL_58;
        }

        *(v23 + 16);
        sub_1C0D78BFC();
LABEL_57:
        v43 = cche_deserialize_ciphertext_coeff();
        swift_bridgeObjectRelease_n();
LABEL_58:
        v6 = v103;
        v29 = v108;
        goto LABEL_162;
      }

      if (!v38)
      {
        *(v23 + 16);
        sub_1C0D78BFC();
        v19 = v107;
        goto LABEL_57;
      }

      if (v8 >> 32 < v8)
      {
        goto LABEL_173;
      }

      sub_1C0D78BFC();
      v51 = sub_1C0D7812C();
      if (!v51)
      {
        goto LABEL_207;
      }

      v52 = v51;
      v53 = sub_1C0D7815C();
      if (__OFSUB__(v8, v53))
      {
        goto LABEL_175;
      }

      v54 = v8 - v53 + v52;
      sub_1C0D7814C();
      if (!v54)
      {
        goto LABEL_208;
      }

      *(v23 + 16);
      v19 = v107;
      v43 = cche_deserialize_ciphertext_coeff();
      swift_bridgeObjectRelease_n();
      v3 = v101;
      v5 = v102;
      v6 = v103;
      goto LABEL_161;
    }

    v18 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      break;
    }

    v29 = v108;
    if (v18 != 2)
    {
      v19 = v107;
      v49 = v107 >> 62;
      if ((v107 >> 62) > 1)
      {
        if (v49 != 2)
        {
          v89 = qword_1EBE6CC50;

          if (v89 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_180;
          }

          goto LABEL_132;
        }

        v62 = v9;
        v37 = *(v108 + 16);

        v63 = sub_1C0D7812C();
        if (!v63)
        {
          goto LABEL_211;
        }

        v64 = v63;
        v65 = sub_1C0D7815C();
        if (__OFSUB__(v37, v65))
        {
          goto LABEL_182;
        }

        v66 = v37 - v65 + v64;
        sub_1C0D7814C();
        if (!v66)
        {
          goto LABEL_212;
        }

        v29 = v108;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        v5 = v102;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_187;
        }
      }

      else
      {
        if (!v49)
        {
          v50 = qword_1EBE6CC50;

          if (v50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_181;
          }

LABEL_132:
          v43 = cche_deserialize_seeded_ciphertext_coeff();
          goto LABEL_162;
        }

        v37 = v108;
        if (v108 > v108 >> 32)
        {
          goto LABEL_186;
        }

        v62 = v9;

        v84 = sub_1C0D7812C();
        if (!v84)
        {
          goto LABEL_223;
        }

        v85 = v84;
        v86 = sub_1C0D7815C();
        if (__OFSUB__(v108, v86))
        {
          goto LABEL_189;
        }

        v87 = v108 - v86 + v85;
        sub_1C0D7814C();
        if (!v87)
        {
          goto LABEL_224;
        }

        v29 = v108;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        v5 = v102;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_199;
        }
      }

      v9 = v62;
      v43 = cche_deserialize_seeded_ciphertext_coeff();
      v19 = v107;
      goto LABEL_162;
    }

    v30 = v8;
    v31 = v6;
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v106 = v30;

    v34 = sub_1C0D7812C();
    if (v34)
    {
      v35 = v34;
      v36 = sub_1C0D7815C();
      if (__OFSUB__(v32, v36))
      {
        goto LABEL_176;
      }

      v37 = v32 - v36 + v35;
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_172;
      }
    }

    else
    {
      v37 = 0;
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_172;
      }
    }

    sub_1C0D7814C();
    v19 = v107;
    v67 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      if (v67 != 2)
      {
        v3 = v101;
        if (!v37)
        {
          goto LABEL_230;
        }

        v5 = v102;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_197;
        }

        goto LABEL_160;
      }

      v68 = *(v108 + 16);
      v69 = sub_1C0D7812C();
      if (!v69)
      {
        goto LABEL_216;
      }

      v70 = v69;
      v71 = sub_1C0D7815C();
      v72 = __OFSUB__(v68, v71);
      v73 = v68 - v71;
      if (v72)
      {
        goto LABEL_193;
      }

      sub_1C0D7814C();
      if (!v37)
      {
        goto LABEL_217;
      }

      if (!(v73 + v70))
      {
        goto LABEL_218;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v3 = v101;
      v5 = v102;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_201;
      }
    }

    else
    {
      if (!v67)
      {
        v3 = v101;
        if (!v37)
        {
          goto LABEL_222;
        }

        v5 = v102;
        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_196;
        }

        goto LABEL_160;
      }

      if (v108 > v108 >> 32)
      {
        goto LABEL_192;
      }

      v90 = sub_1C0D7812C();
      if (!v90)
      {
        goto LABEL_231;
      }

      v91 = v90;
      v92 = sub_1C0D7815C();
      v93 = v108 - v92;
      if (__OFSUB__(v108, v92))
      {
        goto LABEL_202;
      }

      result = sub_1C0D7814C();
      if (!v37)
      {
        goto LABEL_232;
      }

      if (!(v93 + v91))
      {
        goto LABEL_233;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v3 = v101;
      v5 = v102;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_205;
      }
    }

LABEL_155:
    v43 = cche_deserialize_seeded_ciphertext_coeff();
    v6 = v31;
    v19 = v107;
LABEL_161:
    v29 = v108;
    v8 = v106;
LABEL_162:
    sub_1C0D5FE40(v8, v9, v29, v19);

    if (v43)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v99 = v43;
      *(v99 + 4) = 0;
      swift_willThrow();

      sub_1C0D5FE40(v8, v9, v29, v19);

      goto LABEL_166;
    }

    ++v6;

    sub_1C0D5FE40(v8, v9, v29, v19);
    sub_1C0D78E0C();
    v98 = *(v110 + 16);
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    if (v6 == v3)
    {
      result = v110;
      goto LABEL_166;
    }
  }

  v19 = v107;
  if (!v18)
  {
    v20 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      if (v20 != 2)
      {
        v88 = qword_1EBE6CC50;

        if (v88 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_183;
        }

        goto LABEL_128;
      }

      v37 = BYTE6(v9);
      v104 = v9;
      v55 = v8;
      v56 = v6;
      v57 = *(v108 + 16);

      v58 = sub_1C0D7812C();
      if (!v58)
      {
        goto LABEL_225;
      }

      v59 = v58;
      v60 = sub_1C0D7815C();
      if (__OFSUB__(v57, v60))
      {
        goto LABEL_179;
      }

      v61 = v57 - v60 + v59;
      sub_1C0D7814C();
      if (!v61)
      {
        goto LABEL_226;
      }

      v6 = v56;
      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      v5 = v102;
      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_188;
      }

      v8 = v55;
    }

    else
    {
      if (!v20)
      {
        v21 = qword_1EBE6CC50;

        if (v21 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_184;
        }

LABEL_128:
        v43 = cche_deserialize_seeded_ciphertext_coeff();
        v29 = v108;
        goto LABEL_162;
      }

      v104 = v9;
      if (v108 > v108 >> 32)
      {
        goto LABEL_185;
      }

      v37 = v5;

      v80 = sub_1C0D7812C();
      if (!v80)
      {
        goto LABEL_213;
      }

      v81 = v80;
      v82 = sub_1C0D7815C();
      if (__OFSUB__(v108, v82))
      {
        goto LABEL_190;
      }

      v83 = v108 - v82 + v81;
      sub_1C0D7814C();
      if (!v83)
      {
        goto LABEL_214;
      }

      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_200;
      }
    }

    v43 = cche_deserialize_seeded_ciphertext_coeff();
    v19 = v107;
    v29 = v108;
    v9 = v104;
    goto LABEL_162;
  }

  v44 = v8;
  v31 = v6;
  v45 = v44;
  v106 = v44;
  if (v44 >> 32 < v44)
  {
    goto LABEL_171;
  }

  v46 = sub_1C0D7812C();
  if (v46)
  {
    v47 = v46;
    v48 = sub_1C0D7815C();
    if (__OFSUB__(v45, v48))
    {
      goto LABEL_177;
    }

    v37 = v45 - v48 + v47;
  }

  else
  {
    v37 = 0;
  }

  sub_1C0D7814C();
  v19 = v107;
  v74 = v107 >> 62;
  if ((v107 >> 62) > 1)
  {
    if (v74 != 2)
    {
      if (!v37)
      {
        goto LABEL_215;
      }

      v5 = v102;
      if (qword_1EBE6CC50 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC8 < 0)
      {
        goto LABEL_194;
      }

      goto LABEL_160;
    }

    v75 = *(v108 + 16);
    v76 = sub_1C0D7812C();
    if (!v76)
    {
      goto LABEL_227;
    }

    v77 = v76;
    v78 = sub_1C0D7815C();
    v72 = __OFSUB__(v75, v78);
    v79 = v75 - v78;
    if (v72)
    {
      goto LABEL_195;
    }

    sub_1C0D7814C();
    if (!v37)
    {
      goto LABEL_228;
    }

    if (!(v79 + v77))
    {
      goto LABEL_229;
    }

    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    v3 = v101;
    v5 = v102;
    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_204;
    }

    goto LABEL_155;
  }

  if (v74)
  {
    if (v108 > v108 >> 32)
    {
      goto LABEL_191;
    }

    v94 = sub_1C0D7812C();
    if (!v94)
    {
      goto LABEL_219;
    }

    v95 = v94;
    v96 = sub_1C0D7815C();
    v97 = v108 - v96;
    if (__OFSUB__(v108, v96))
    {
      goto LABEL_203;
    }

    sub_1C0D7814C();
    if (!v37)
    {
      goto LABEL_220;
    }

    if (!(v97 + v95))
    {
      goto LABEL_221;
    }

    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    v3 = v101;
    v5 = v102;
    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_206;
    }

    goto LABEL_155;
  }

  if (v37)
  {
    v5 = v102;
    if (qword_1EBE6CC50 != -1)
    {
      swift_once();
    }

    if (qword_1EBE72CC8 < 0)
    {
      goto LABEL_198;
    }

LABEL_160:
    v43 = cche_deserialize_seeded_ciphertext_coeff();
    v6 = v31;
    goto LABEL_161;
  }

  __break(1u);
LABEL_211:
  sub_1C0D7814C();
LABEL_212:
  __break(1u);
LABEL_213:
  sub_1C0D7814C();
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  sub_1C0D7814C();
  if (!v37)
  {
LABEL_217:
    __break(1u);
  }

LABEL_218:
  __break(1u);
LABEL_219:
  sub_1C0D7814C();
  if (!v37)
  {
LABEL_220:
    __break(1u);
  }

LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  sub_1C0D7814C();
LABEL_224:
  __break(1u);
LABEL_225:
  sub_1C0D7814C();
LABEL_226:
  __break(1u);
LABEL_227:
  sub_1C0D7814C();
  if (!v37)
  {
LABEL_228:
    __break(1u);
  }

LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  result = sub_1C0D7814C();
  if (!v37)
  {
LABEL_232:
    __break(1u);
  }

LABEL_233:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5F79C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 3);
  v33 = *(v2 + 2);
  v32 = *v2;
  v29 = v2[2];
  v30 = v2[3];
  v31 = v2[4];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(a1 + 16);
    v8 = sub_1C0D78C2C();
    *(v8 + 16) = v4;
    v34 = v8;
    v26 = v8 + 32;
    bzero((v8 + 32), 8 * v4);
    v9 = 0;
    v25 = (v3 + 32);
    v27 = v4;
    v28 = a2;
    while (1)
    {
      v10 = v3;
      v11 = *(v3 + 16);
      if (v11)
      {
        break;
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_13:
      v3 = v10;
      v20 = sub_1C0D5C8C4(v9, v14);
      v21 = *(v20 + 2);
      if (!v21)
      {

        sub_1C0CF8DE0();
        swift_allocError();
        *v24 = 5;
        *(v24 + 4) = 1;
        swift_willThrow();
        return v34;
      }

      v22 = *&v20[8 * v21 + 24];

      if (!v28)
      {
        goto LABEL_27;
      }

      if (v22 == 0x8000000000000000 && v28 == -1)
      {
        goto LABEL_29;
      }

      if (v9 >= *(v34 + 16))
      {
        goto LABEL_28;
      }

      *(v26 + 8 * v9++) = v22 / v28;
      if (v9 == v27)
      {
        return v34;
      }
    }

    v12 = *(a1 + 32 + 8 * v9);
    result = sub_1C0CF4C28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = result;
    v15 = v25;
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      if (!v17)
      {
        break;
      }

      if (v12 == 0x8000000000000000 && v16 == -1)
      {
        goto LABEL_26;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C0CF4C28((v18 > 1), v19 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v12 % v16;
      v12 /= v16;
      if (!--v11)
      {
        goto LABEL_13;
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
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1C0D5F9FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0E8, &qword_1C0D7B5F8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C0D5FAD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C0D5FB1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C0D5FB80(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D068, &unk_1C0D7B720);
    v6 = sub_1C0D78C2C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        sub_1C0D134D0(v5, a2);
        *(v9 - 1) = v5;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    sub_1C0D134D0(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_1C0D5FC34(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D088, &qword_1C0D7B5D0);
    v4 = sub_1C0D78C2C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        sub_1C0D78BFC();
        --v6;
      }

      while (v6);
    }

    sub_1C0D78BFC();
    return v5;
  }

  return result;
}

uint64_t sub_1C0D5FCD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  if (result)
  {
    result = sub_1C0D78C2C();
    *(result + 16) = v5;
    if (*(a2 + 24))
    {
      if (!HIDWORD(v5))
      {
        v6 = result;
LABEL_8:
        v7 = cche_decode_poly_uint64();
        if (v7)
        {
          v8 = v7;
          sub_1C0CF8DE0();
          swift_allocError();
          *v9 = v8;
          *(v9 + 4) = 0;
          swift_willThrow();
          *(v6 + 16) = 0;

          return v6;
        }

        v10 = *(a3 + 32);
        result = cche_param_ctx_polynomial_degree();
        if (result <= v5)
        {
          *(v6 + 16) = result;
          return v6;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  else if (*(a2 + 24))
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D5FDD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1C0CF6468(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return sub_1C0D78BFC();
  }

  else
  {
    sub_1C0CF6468(a1, a2);

    return sub_1C0CF6468(a3, a4);
  }
}

uint64_t sub_1C0D5FE40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1C0CF448C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1C0CF448C(a1, a2);

    return sub_1C0CF448C(a3, a4);
  }
}

uint64_t sub_1C0D5FEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = _s13ServerSecretsVMa();
  if (v7 <= 0x3F)
  {
    result = _s14KeyCommitmentsVMa();
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for ATHM.Ciphersuite();
      if (v9 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D60058(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 | 7;
  v21 = v13 | 7 | v14;
  v22 = ((v12 + v13 + ((v12 + v13 + ((v12 + v13 + ((v12 + v13) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v12 + v21;
  v23 = v15 + v14;
  v24 = v20 + v15;
  v25 = v12 + 7;
  v26 = (v25 & 0xFFFFFFFFFFFFFFF8) + v14 + ((v20 + v15 + ((v15 + v14 + ((v15 + v14) & ~v14)) & ~v14)) & ~v20) + 16;
  v27 = v15 + 7;
  if (v19 < a2)
  {
    v28 = ((((v27 + ((v23 + ((v26 + (v22 & ~v21)) & ~v14)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v29 = a2 - v19;
    v30 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = v29 + 1;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_36;
      }

      v34 = *(a1 + v28);
      if (!v34)
      {
        goto LABEL_36;
      }
    }

    v36 = v34 - 1;
    if (v30)
    {
      v36 = 0;
      v37 = *a1;
    }

    else
    {
      v37 = 0;
    }

    return v19 + (v37 | v36) + 1;
  }

LABEL_36:
  if (v9 == v19)
  {
    v38 = *(v8 + 48);
    v39 = a1;
LABEL_38:

    return v38(v39, v9, AssociatedTypeWitness);
  }

  v40 = ~v14;
  v41 = (a1 + v22) & ~v21;
  if (v17 == v19)
  {
    if (v11 < v16)
    {
      v39 = ((v24 + ((v23 + ((v23 + v41) & v40)) & v40)) & ~v20);
      if (v9 >= 0x7FFFFFFF)
      {
        v38 = *(v8 + 48);
        goto LABEL_38;
      }

      v42 = *((v39 + v25) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_53;
    }
  }

  else
  {
    v41 = (v26 + v41) & v40;
    if (v11 < v18)
    {
      v42 = *(((((v27 + ((v23 + v41) & v40)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_53:
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      return (v42 + 1);
    }
  }

  v43 = *(v10 + 48);

  return v43(v41);
}

void sub_1C0D60470(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_checkMetadataState() - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= v13)
  {
    v19 = *(v12 + 84);
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v19;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(v12 + 84);
  }

  v22 = v15 | 7;
  v23 = v15 | 7 | v16;
  v24 = ((v14 + v15 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15) & ~v15)) & ~v15)) & ~v15)) & ~v15) + v14 + v23;
  v25 = v17 + v16;
  v26 = v22 + v17;
  v27 = v14 + 7;
  v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v16 + v28 + ((v22 + v17 + ((v17 + v16 + ((v17 + v16) & ~v16)) & ~v16)) & ~v22) + 8;
  v30 = (v17 + v16 + ((v29 + (v24 & ~v23)) & ~v16)) & ~v16;
  v31 = v17 + 7;
  v32 = ((((v31 + v30) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 >= a3)
  {
    v34 = 0;
    v35 = a2 - v21;
    if (a2 <= v21)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (v32)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    if (v32)
    {
      v37 = ~v21 + a2;
      bzero(a1, v32);
      *a1 = v37;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }
    }

    else if (v34)
    {
      *(a1 + v32) = v36;
    }

    return;
  }

  if (((((v31 + v30) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v33 = a3 - v21 + 1;
  }

  else
  {
    v33 = 2;
  }

  if (v33 >= 0x10000)
  {
    v34 = 4;
  }

  else
  {
    v34 = 2;
  }

  if (v33 < 0x100)
  {
    v34 = 1;
  }

  if (v33 < 2)
  {
    v34 = 0;
  }

  v35 = a2 - v21;
  if (a2 > v21)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v32) = 0;
  }

  else if (v34)
  {
    *(a1 + v32) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v11 == v21)
  {
LABEL_42:
    v38 = *(v10 + 56);

    v38(a1, a2, v11, AssociatedTypeWitness);
    return;
  }

  v39 = ~v16;
  v40 = (a1 + v24) & ~v23;
  if (v19 != v21)
  {
    v40 = (v29 + v40) & v39;
    if (v13 < v20)
    {
      v42 = ((((v31 + ((v25 + v40) & v39)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v42 = a2 & 0x7FFFFFFF;
        v42[1] = 0;
      }

      else
      {
        v42[1] = (a2 - 1);
      }

      return;
    }

    goto LABEL_59;
  }

  if (v13 >= v18)
  {
LABEL_59:
    v43 = *(v12 + 56);

    v43(v40, a2);
    return;
  }

  a1 = ((v26 + ((v25 + ((v25 + v40) & v39)) & v39)) & ~v22);
  if (v18 >= a2)
  {
    if (v11 >= 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v44 = (a2 - 1);
    }

    *((a1 + v27) & 0xFFFFFFFFFFFFFFF8) = v44;
  }

  else if ((v27 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v41 = ~v18 + a2;
    bzero(((v26 + ((v25 + ((v25 + v40) & v39)) & v39)) & ~v22), v28);
    *a1 = v41;
  }
}

uint64_t sub_1C0D60928(uint64_t a1)
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

uint64_t sub_1C0D609A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1C0D60B0C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1C0D60D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  v7 = a1;
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7A90(0, v6 & ~(v6 >> 63), 0);
    if (a2 < v7 || v6 < 0)
    {
LABEL_59:
      __break(1u);
    }

    v11 = 0;
    result = v70;
    v58 = a3;
    v59 = a4;
    v60 = v7;
    v61 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_43;
      }

      v12 = v7 + v11;
      v13 = v7 + v11 + 1;
      if (__OFADD__(v7 + v11, 1))
      {
        goto LABEL_44;
      }

      v14 = v12 * a3;
      if ((v12 * a3) >> 64 != (v12 * a3) >> 63)
      {
        goto LABEL_45;
      }

      v15 = v13 * a3;
      if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
      {
        goto LABEL_46;
      }

      if (v15 < v14)
      {
        goto LABEL_47;
      }

      v16 = v12 * a4;
      if ((v12 * a4) >> 64 != (v12 * a4) >> 63)
      {
        goto LABEL_48;
      }

      v17 = v13 * a4;
      if ((v13 * a4) >> 64 != (v13 * a4) >> 63)
      {
        goto LABEL_49;
      }

      if (v17 < v16)
      {
        goto LABEL_50;
      }

      if (v14 < 0)
      {
        goto LABEL_51;
      }

      v18 = *a5;
      v19 = *(*a5 + 16);
      if (v19 < v14 || v19 < v15)
      {
        goto LABEL_52;
      }

      v65 = v11 + 1;
      v66 = v11;
      v67 = result;
      v20 = (2 * v15) | 1;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
      v72 = v21;
      v22 = sub_1C0D61554();
      v73 = v22;
      v23 = swift_allocObject();
      v71[0] = v23;
      v23[2] = v18;
      v23[3] = v18 + 32;
      v23[4] = v14;
      v23[5] = v20;
      v24 = __swift_project_boxed_opaque_existential_1(v71, v21);
      v25 = v24[2];
      v26 = v24[3] >> 1;
      v27 = v26 - v25;
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_53;
      }

      if (v27)
      {
        v28 = v24[1];
        if (v27 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v69 = v26 - v25;
          memcpy(__dst, (v28 + v25), v26 - v25);
          v34 = *__dst;
          v35 = v57 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v69 << 16)) << 32);
          sub_1C0D78BFC();
          v57 = v35;
        }

        else
        {
          v29 = sub_1C0D7818C();
          v30 = *(v29 + 48);
          v31 = *(v29 + 52);
          swift_allocObject();
          sub_1C0D78BFC();
          v32 = sub_1C0D7811C();
          v33 = v32;
          if (v27 >= 0x7FFFFFFF)
          {
            sub_1C0D7828C();
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            *(v34 + 24) = v27;
            v35 = v33 | 0x8000000000000000;
          }

          else
          {
            v34 = v27 << 32;
            v35 = v32 | 0x4000000000000000;
          }
        }
      }

      else
      {
        sub_1C0D78BFC();
        v34 = 0;
        v35 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v6 = v61;
      if (v16 < 0)
      {
        goto LABEL_54;
      }

      v36 = *a6;
      v37 = *(*a6 + 16);
      if (v37 < v16 || v37 < v17)
      {
        goto LABEL_55;
      }

      v38 = v34;
      v72 = v21;
      v73 = v22;
      v39 = swift_allocObject();
      v71[0] = v39;
      v39[2] = v36;
      v39[3] = v36 + 32;
      v39[4] = v16;
      v39[5] = (2 * v17) | 1;
      v40 = __swift_project_boxed_opaque_existential_1(v71, v21);
      v41 = v40[2];
      v42 = v40[3] >> 1;
      v43 = v42 - v41;
      if (__OFSUB__(v42, v41))
      {
        goto LABEL_56;
      }

      if (v43)
      {
        v44 = v40[1];
        if (v43 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v69 = v42 - v41;
          memcpy(__dst, (v44 + v41), v42 - v41);
          v50 = *__dst;
          v51 = v56 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v69 << 16)) << 32);
          sub_1C0D78BFC();
          v56 = v51;
        }

        else
        {
          v45 = sub_1C0D7818C();
          v46 = *(v45 + 48);
          v47 = *(v45 + 52);
          swift_allocObject();
          sub_1C0D78BFC();
          v48 = sub_1C0D7811C();
          v49 = v48;
          if (v43 >= 0x7FFFFFFF)
          {
            sub_1C0D7828C();
            v50 = swift_allocObject();
            *(v50 + 16) = 0;
            *(v50 + 24) = v43;
            v51 = v49 | 0x8000000000000000;
          }

          else
          {
            v50 = v43 << 32;
            v51 = v48 | 0x4000000000000000;
          }
        }
      }

      else
      {
        sub_1C0D78BFC();
        v50 = 0;
        v51 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      result = v67;
      v70 = v67;
      v53 = *(v67 + 16);
      v52 = *(v67 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1C0CF7A90((v52 > 1), v53 + 1, 1);
        result = v70;
      }

      *(result + 16) = v53 + 1;
      v54 = (result + 32 * v53);
      v54[4] = v38;
      v54[5] = v35;
      v54[6] = v50;
      v54[7] = v51;
      v11 = v66 + 1;
      v7 = v60;
      if ((v60 + v66) >= a2)
      {
        goto LABEL_57;
      }

      a3 = v58;
      a4 = v59;
      if (v65 == v61)
      {
        goto LABEL_41;
      }
    }

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
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_41:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D61224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  cche_relin_key_sizeof();
  v7 = cche_param_ctx_key_ctx_poly_nbytes();
  v8 = cche_rng_seed_sizeof();
  v9 = cche_param_ctx_key_ctx_nmoduli();
  v10 = v9 - 1;
  v11 = v10 * v7;
  if ((v10 * v7) >> 64 != (v10 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v8;
  v13 = v10 * v8;
  v26 = v12;
  if ((v10 * v12) >> 64 != v13 >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    goto LABEL_25;
  }

  v25 = v9;
  v24 = v7;
  if (v11)
  {
    v14 = sub_1C0D78C2C();
    *(v14 + 16) = v11;
    bzero((v14 + 32), v11);
    v29[0] = v14;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v29[0] = MEMORY[0x1E69E7CC0];
  if (v13 < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v23 = a3;
  if (v13)
  {
    v15 = sub_1C0D78C2C();
    *(v15 + 16) = v13;
    bzero((v15 + 32), v13);
    goto LABEL_11;
  }

LABEL_10:
  v15 = MEMORY[0x1E69E7CC0];
LABEL_11:

  v27 = swift_slowAlloc();
  if (!*(a2 + 24))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (HIDWORD(v13))
  {
    goto LABEL_24;
  }

  v16 = *(a1 + 32);
  if (!ccrng())
  {
    goto LABEL_28;
  }

  v28 = v15;
  v17 = cche_relin_key_generate();
  if (!v17)
  {
    if (!HIDWORD(v11))
    {
      v29[0] = v14;
      v17 = cche_relin_key_save();
      if (v17)
      {
        goto LABEL_17;
      }

      if (v25)
      {
        v22 = sub_1C0D60D3C(0, v10, v24, v26, v29, &v28);

        MEMORY[0x1C68E4EB0](v27, -1, -1);

        *v23 = v22;
        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:
  v18 = v17;
  sub_1C0CF8DE0();
  swift_allocError();
  *v19 = v18;
  *(v19 + 4) = 0;
  swift_willThrow();

  MEMORY[0x1C68E4EB0](v27, -1, -1);

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C0D61554()
{
  result = qword_1EBE6C9C0;
  if (!qword_1EBE6C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6C9C0);
  }

  return result;
}

uint64_t sub_1C0D615B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = *(a2 + 16);
  if (HIDWORD(v104))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v6 = *(a1 + 32);
  v7 = cche_galois_key_sizeof();
  v8 = cche_param_ctx_key_ctx_poly_nbytes();
  v9 = cche_rng_seed_sizeof();
  v10 = cche_param_ctx_key_ctx_nmoduli();
  v11 = v10 - 1;
  v12 = v104 * v11;
  if ((v104 * v11) >> 64 != (v104 * v11) >> 63)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v13 = v12 * v8;
  if ((v12 * v8) >> 64 != (v12 * v8) >> 63)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v100 = v10 - 1;
  v14 = v12 * v9;
  if ((v12 * v9) >> 64 != (v12 * v9) >> 63)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v15 = v10;
  if (v13)
  {
    v16 = sub_1C0D78C2C();
    *(v16 + 16) = v13;
    v101 = v16;
    bzero((v16 + 32), v13);
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v101 = MEMORY[0x1E69E7CC0];
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v99 = v9;
  v102 = v15;
  if (!v14)
  {
LABEL_12:
    v107 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v17 = sub_1C0D78C2C();
  *(v17 + 16) = v14;
  v107 = v17;
  bzero((v17 + 32), v14);
LABEL_13:
  type metadata accessor for HE.ObjectStorage();
  inited = swift_initStackObject();
  inited[2] = a1;

  v19 = swift_slowAlloc();
  inited[3] = v19;
  inited[4] = v19 + v7;
  if (!*(a3 + 24))
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
  }

  if (HIDWORD(v14))
  {
    goto LABEL_95;
  }

  v20 = v19;
  v21 = *(a1 + 32);
  LODWORD(v111[0]) = 0;
  if (!ccrng())
  {
    goto LABEL_103;
  }

  v22 = cche_galois_key_generate();
  if (v22)
  {
LABEL_19:
    v23 = v22;

    sub_1C0CF8DE0();
    swift_allocError();
    *v24 = v23;
    *(v24 + 4) = 0;
    swift_willThrow();

    swift_setDeallocating();

    MEMORY[0x1C68E4EB0](v20, -1, -1);

LABEL_20:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (HIDWORD(v13))
  {
    goto LABEL_99;
  }

  v22 = cche_galois_key_save();
  if (v22)
  {
    goto LABEL_19;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v28 = sub_1C0D39970(MEMORY[0x1E69E7CC0]);
  v89 = *(a2 + 16);
  if (!v89)
  {
LABEL_76:

    *a4 = v28;
    goto LABEL_20;
  }

  if (!v102)
  {
    goto LABEL_101;
  }

  v29 = 0;
  v30 = v99;
  v31 = v100;
  v97 = v8;
  while (1)
  {
    if (v29 >= *(a2 + 16))
    {
      goto LABEL_96;
    }

    v93 = *(a2 + 32 + 4 * v29);
    v92 = v29;
    if (v31)
    {
      v110 = v27;
      sub_1C0CF7A90(0, v31, 0);
      v98 = v92 * v31;
      if ((v92 * v31) >> 64 != (v92 * v31) >> 63)
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v90 = v28;
      v34 = 0;
      v35 = v110;
      v36 = v101;
      while (1)
      {
        v37 = v98 + v34;
        if (__OFADD__(v98, v34))
        {
          break;
        }

        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_78;
        }

        v39 = v37 * v8;
        if ((v37 * v8) >> 64 != (v37 * v8) >> 63)
        {
          goto LABEL_79;
        }

        v40 = v38 * v8;
        if ((v38 * v8) >> 64 != (v38 * v8) >> 63)
        {
          goto LABEL_80;
        }

        v41 = v37 * v30;
        if ((v37 * v30) >> 64 != (v37 * v30) >> 63)
        {
          goto LABEL_81;
        }

        v42 = v38 * v30;
        if ((v38 * v30) >> 64 != (v38 * v30) >> 63)
        {
          goto LABEL_82;
        }

        if (v40 < v39 || v42 < v41)
        {
          goto LABEL_83;
        }

        if (v39 < 0)
        {
          goto LABEL_84;
        }

        v43 = *(v36 + 16);
        if (v43 < v39 || v43 < v40)
        {
          goto LABEL_85;
        }

        v105 = v35;
        v44 = (2 * v40) | 1;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
        v112 = v45;
        v46 = sub_1C0D61554();
        v113 = v46;
        v47 = swift_allocObject();
        v111[0] = v47;
        v47[2] = v36;
        v47[3] = v101 + 32;
        v47[4] = v39;
        v47[5] = v44;
        v48 = __swift_project_boxed_opaque_existential_1(v111, v45);
        v49 = v48[2];
        v50 = v48[3] >> 1;
        v51 = v50 - v49;
        if (__OFSUB__(v50, v49))
        {
          goto LABEL_86;
        }

        if (v51)
        {
          v52 = v48[1];
          if (v51 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v109 = v50 - v49;
            memcpy(__dst, (v52 + v49), v50 - v49);
            v103 = *__dst;
            v58 = v96 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v109 << 16)) << 32);
            v36 = v101;
            sub_1C0D78BFC();
            v96 = v58;
          }

          else
          {
            v53 = sub_1C0D7818C();
            v54 = *(v53 + 48);
            v55 = *(v53 + 52);
            swift_allocObject();
            sub_1C0D78BFC();
            v56 = sub_1C0D7811C();
            v57 = v56;
            if (v51 >= 0x7FFFFFFF)
            {
              sub_1C0D7828C();
              v59 = swift_allocObject();
              *(v59 + 16) = 0;
              *(v59 + 24) = v51;
              v103 = v59;
              v58 = v57 | 0x8000000000000000;
            }

            else
            {
              v103 = v51 << 32;
              v58 = v56 | 0x4000000000000000;
            }

            v36 = v101;
          }
        }

        else
        {
          sub_1C0D78BFC();
          v103 = 0;
          v58 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v111);
        if (v41 < 0)
        {
          goto LABEL_87;
        }

        v60 = *(v107 + 16);
        if (v60 < v41 || v60 < v42)
        {
          goto LABEL_88;
        }

        v112 = v45;
        v113 = v46;
        v61 = swift_allocObject();
        v111[0] = v61;
        v61[2] = v107;
        v61[3] = v107 + 32;
        v61[4] = v41;
        v61[5] = (2 * v42) | 1;
        v62 = __swift_project_boxed_opaque_existential_1(v111, v45);
        v63 = v62[2];
        v64 = v62[3] >> 1;
        v65 = v64 - v63;
        if (__OFSUB__(v64, v63))
        {
          goto LABEL_89;
        }

        if (v65)
        {
          v66 = v62[1];
          v8 = v97;
          if (v65 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v109 = v64 - v63;
            memcpy(__dst, (v66 + v63), v64 - v63);
            v72 = *__dst;
            v73 = v95 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v109 << 16)) << 32);
            sub_1C0D78BFC();
            v95 = v73;
          }

          else
          {
            v67 = sub_1C0D7818C();
            v68 = *(v67 + 48);
            v69 = *(v67 + 52);
            swift_allocObject();
            sub_1C0D78BFC();
            v70 = sub_1C0D7811C();
            v71 = v70;
            if (v65 >= 0x7FFFFFFF)
            {
              sub_1C0D7828C();
              v72 = swift_allocObject();
              *(v72 + 16) = 0;
              *(v72 + 24) = v65;
              v73 = v71 | 0x8000000000000000;
            }

            else
            {
              v72 = v65 << 32;
              v73 = v70 | 0x4000000000000000;
            }
          }
        }

        else
        {
          sub_1C0D78BFC();
          v72 = 0;
          v73 = 0xC000000000000000;
          v8 = v97;
        }

        __swift_destroy_boxed_opaque_existential_1(v111);
        v35 = v105;
        v110 = v105;
        v75 = *(v105 + 16);
        v74 = *(v105 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1C0CF7A90((v74 > 1), v75 + 1, 1);
          v35 = v110;
        }

        ++v34;
        *(v35 + 16) = v75 + 1;
        v76 = (v35 + 32 * v75);
        v76[4] = v103;
        v76[5] = v58;
        v76[6] = v72;
        v76[7] = v73;
        v30 = v99;
        v31 = v100;
        if (v100 == v34)
        {
          v106 = v35;
          v27 = MEMORY[0x1E69E7CC0];
          v28 = v90;
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v106 = v27;
LABEL_66:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v28;
    v78 = sub_1C0D0EF18(v93);
    v80 = v28[2];
    v81 = (v79 & 1) == 0;
    v82 = __OFADD__(v80, v81);
    v83 = v80 + v81;
    if (v82)
    {
      goto LABEL_97;
    }

    v84 = v79;
    if (v28[3] < v83)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_71;
    }

    v88 = v78;
    sub_1C0CFB920();
    v78 = v88;
    v28 = v111[0];
    if (v84)
    {
LABEL_24:
      v32 = v28[7];
      v33 = *(v32 + 8 * v78);
      *(v32 + 8 * v78) = v106;

      goto LABEL_25;
    }

LABEL_72:
    v28[(v78 >> 6) + 8] |= 1 << v78;
    *(v28[6] + 4 * v78) = v93;
    *(v28[7] + 8 * v78) = v106;
    v86 = v28[2];
    v82 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v82)
    {
      goto LABEL_100;
    }

    v28[2] = v87;
LABEL_25:
    v29 = v92 + 1;
    if (v92 + 1 == v89)
    {
      goto LABEL_76;
    }
  }

  sub_1C0CFB0A0(v83, isUniquelyReferenced_nonNull_native);
  v78 = sub_1C0D0EF18(v93);
  if ((v84 & 1) == (v85 & 1))
  {
LABEL_71:
    v28 = v111[0];
    if (v84)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

  result = sub_1C0D78F7C();
  __break(1u);
  return result;
}

uint64_t sub_1C0D61EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 3);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v100 = *(v3 + 16);
    v101 = *v3;
    v102 = a3;
    v116 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7BA0(0, v7, 0);
    v10 = 0;
    v8 = v116;
    v105 = v6;
    v106 = v6 + 32;
    v113 = *(a1 + 32);
    v110 = a1;
    v104 = v7;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        goto LABEL_176;
      }

      v109 = v10;
      v11 = (v106 + 32 * v10);
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      sub_1C0D5FDD4(*v11, v12, v15, v14);
      sub_1C0D5FDD4(v13, v12, v15, v14);
      if (qword_1EBE6CB78 != -1)
      {
        swift_once();
      }

      if (qword_1EBE72CC0 < 0)
      {
        goto LABEL_177;
      }

      if (HIDWORD(qword_1EBE72CC0))
      {
        goto LABEL_178;
      }

      v16 = cche_ciphertext_sizeof();
      type metadata accessor for HE.ObjectStorage();
      inited = swift_initStackObject();
      inited[2] = a1;

      v18 = swift_slowAlloc();
      inited[3] = v18;
      inited[4] = v18 + v16;
      v111 = inited;
      v112 = v12;
      if ((v12 & 0x2000000000000000) == 0)
      {
        break;
      }

      v108 = v13;
      v22 = *(v15 + 16);
      v16 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v103 = v8;
        *&v115 = MEMORY[0x1E69E7CC0];

        sub_1C0CF7C90(0, v22, 0);
        v16 = v115;
        v23 = v15;
        v24 = (v15 + 32);
        while (1)
        {
          v26 = *v24++;
          v25 = v26;
          if ((v26 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (HIDWORD(v25))
          {
            goto LABEL_175;
          }

          *&v115 = v16;
          v28 = *(v16 + 16);
          v27 = *(v16 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1C0CF7C90((v27 > 1), v28 + 1, 1);
            v16 = v115;
          }

          *(v16 + 16) = v28 + 1;
          *(v16 + 4 * v28 + 32) = v25;
          if (!--v22)
          {
            v8 = v103;
            a1 = v110;
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
      }

      v23 = v15;

LABEL_38:
      v12 = v112;
      v33 = v112 >> 62;
      if ((v112 >> 62) > 1)
      {
        v15 = v23;
        if (v33 == 2)
        {
          v35 = v8;
          v36 = *(v108 + 16);
          v37 = *(v108 + 24);
          v38 = sub_1C0D7812C();
          if (v38)
          {
            v39 = sub_1C0D7815C();
            if (__OFSUB__(v36, v39))
            {
              goto LABEL_186;
            }

            v38 += v36 - v39;
          }

          if (__OFSUB__(v37, v36))
          {
            goto LABEL_182;
          }

          sub_1C0D7814C();
          if (!v38)
          {
            goto LABEL_219;
          }

          *(v16 + 16);
          v34 = cche_deserialize_ciphertext_coeff();

          a1 = v110;
          v12 = v112;
          v8 = v35;
        }

        else
        {
          *(&v115 + 6) = 0;
          *&v115 = 0;
          *(v16 + 16);
          v34 = cche_deserialize_ciphertext_coeff();
        }
      }

      else
      {
        v15 = v23;
        if (!v33)
        {
          v13 = v108;
          *&v115 = v108;
          DWORD2(v115) = v112;
          WORD6(v115) = WORD2(v112);
          *(v16 + 16);
          v34 = cche_deserialize_ciphertext_coeff();

          v20 = v111;
          goto LABEL_159;
        }

        if (v108 >> 32 < v108)
        {
          goto LABEL_181;
        }

        v43 = sub_1C0D7812C();
        if (!v43)
        {
          sub_1C0D7814C();
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          sub_1C0D7814C();
LABEL_221:
          __break(1u);
LABEL_222:
          sub_1C0D7814C();
          if (!v16)
          {
LABEL_223:
            __break(1u);
          }

LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          sub_1C0D7814C();
          if (!v16)
          {
LABEL_228:
            __break(1u);
          }

LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          sub_1C0D7814C();
          if (!v16)
          {
LABEL_232:
            __break(1u);
          }

LABEL_233:
          __break(1u);
LABEL_234:
          sub_1C0D7814C();
LABEL_235:
          __break(1u);
LABEL_236:
          sub_1C0D7814C();
LABEL_237:
          __break(1u);
LABEL_238:
          sub_1C0D7814C();
          if (!v16)
          {
LABEL_239:
            __break(1u);
          }

LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          result = sub_1C0D7814C();
LABEL_243:
          __break(1u);
          return result;
        }

        v44 = v43;
        v45 = sub_1C0D7815C();
        if (__OFSUB__(v108, v45))
        {
          goto LABEL_183;
        }

        v46 = v108 - v45 + v44;
        sub_1C0D7814C();
        if (!v46)
        {
          goto LABEL_218;
        }

        *(v16 + 16);
        v34 = cche_deserialize_ciphertext_coeff();

        a1 = v110;
        v12 = v112;
        v15 = v23;
      }

      v13 = v108;
      v20 = v111;
LABEL_159:
      sub_1C0D5FE40(v13, v12, v15, v14);

      if (v34)
      {
        sub_1C0CF8DE0();
        swift_allocError();
        *v93 = v34;
        *(v93 + 4) = 0;
        swift_willThrow();
        swift_setDeallocating();
        v94 = v20[2];
        v95 = v20[3];

        if (v95)
        {
          MEMORY[0x1C68E4EB0](v95, -1, -1);
        }

        sub_1C0D5FE40(v13, v112, v15, v14);
        goto LABEL_172;
      }

      v84 = cche_plaintext_sizeof();
      v85 = swift_allocObject();
      v85[2] = a1;

      v86 = swift_slowAlloc();
      v85[3] = v86;
      v85[4] = v86 + v84;
      v87 = v20[3];
      if (!v87)
      {
        goto LABEL_216;
      }

      if (!*(a2 + 24))
      {
        goto LABEL_215;
      }

      v88 = v20[3];
      v89 = cche_decrypt();
      if (v89)
      {
        v96 = v89;
        sub_1C0CF8DE0();
        swift_allocError();
        *v97 = v96;
        *(v97 + 4) = 0;
        swift_willThrow();

        sub_1C0D5FE40(v13, v112, v15, v14);
        swift_setDeallocating();
        v98 = v20[2];

        MEMORY[0x1C68E4EB0](v87, -1, -1);

LABEL_172:

        goto LABEL_173;
      }

      swift_setDeallocating();
      v90 = v20[2];

      MEMORY[0x1C68E4EB0](v87, -1, -1);

      sub_1C0D5FE40(v13, v112, v15, v14);
      v116 = v8;
      v92 = *(v8 + 16);
      v91 = *(v8 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1C0CF7BA0((v91 > 1), v92 + 1, 1);
        v8 = v116;
      }

      v10 = v109 + 1;
      *(v8 + 16) = v92 + 1;
      *(v8 + 8 * v92 + 32) = v85;
      v6 = v105;
      a1 = v110;
      if (v109 + 1 == v104)
      {
        a3 = v102;
        v4 = v101;
        v5 = v100;
        goto LABEL_170;
      }
    }

    v19 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v19 != 2)
      {
        v42 = v14 >> 62;
        *(&v115 + 6) = 0;
        *&v115 = 0;
        v20 = inited;
        if ((v14 >> 62) > 1)
        {
          if (v42 == 2)
          {
            v52 = *(v15 + 16);
            v53 = sub_1C0D7812C();
            if (!v53)
            {
              goto LABEL_234;
            }

            v54 = v53;
            v55 = sub_1C0D7815C();
            if (__OFSUB__(v52, v55))
            {
              goto LABEL_193;
            }

            v16 = v52 - v55 + v54;
            sub_1C0D7814C();
            a1 = v110;
            if (!v16)
            {
              goto LABEL_235;
            }

            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_195;
            }
          }

          else
          {
            memset(v114, 0, 14);
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_192;
            }
          }
        }

        else if (v42)
        {
          if (v15 > v15 >> 32)
          {
            goto LABEL_194;
          }

          v71 = sub_1C0D7812C();
          if (!v71)
          {
            goto LABEL_242;
          }

          v72 = v71;
          v73 = sub_1C0D7815C();
          if (__OFSUB__(v15, v73))
          {
            goto LABEL_198;
          }

          v74 = v15 - v73 + v72;
          result = sub_1C0D7814C();
          a1 = v110;
          if (!v74)
          {
            goto LABEL_243;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v114[0] = v15;
          LOWORD(v114[1]) = v14;
          BYTE2(v114[1]) = BYTE2(v14);
          BYTE3(v114[1]) = BYTE3(v14);
          BYTE4(v114[1]) = BYTE4(v14);
          BYTE5(v114[1]) = BYTE5(v14);
          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_129;
      }

      v29 = *(v13 + 16);
      v30 = *(v13 + 24);
      v16 = sub_1C0D7812C();
      if (v16)
      {
        v31 = sub_1C0D7815C();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_184;
        }

        v16 += v29 - v31;
      }

      if (__OFSUB__(v30, v29))
      {
        goto LABEL_180;
      }

      v12 = v112;
      sub_1C0D7814C();
      v32 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v32 == 2)
        {
          v56 = *(v15 + 16);
          v57 = sub_1C0D7812C();
          if (!v57)
          {
            goto LABEL_238;
          }

          v58 = v57;
          v59 = sub_1C0D7815C();
          v60 = __OFSUB__(v56, v59);
          v61 = v56 - v59;
          if (v60)
          {
            goto LABEL_206;
          }

          sub_1C0D7814C();
          if (!v16)
          {
            goto LABEL_239;
          }

          if (!(v61 + v58))
          {
            goto LABEL_240;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          a1 = v110;
          v12 = v112;
          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_211;
          }
        }

        else
        {
          *(&v115 + 6) = 0;
          *&v115 = 0;
          a1 = v110;
          if (!v16)
          {
            goto LABEL_230;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_203;
          }
        }
      }

      else if (v32)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_200;
        }

        v76 = sub_1C0D7812C();
        if (!v76)
        {
          goto LABEL_222;
        }

        v77 = v76;
        v78 = sub_1C0D7815C();
        v79 = v15 - v78;
        if (__OFSUB__(v15, v78))
        {
          goto LABEL_210;
        }

        sub_1C0D7814C();
        if (!v16)
        {
          goto LABEL_223;
        }

        if (!(v79 + v77))
        {
          goto LABEL_224;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        a1 = v110;
        v12 = v112;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        *&v115 = v15;
        WORD4(v115) = v14;
        BYTE10(v115) = BYTE2(v14);
        BYTE11(v115) = BYTE3(v14);
        BYTE12(v115) = BYTE4(v14);
        BYTE13(v115) = BYTE5(v14);
        a1 = v110;
        if (!v16)
        {
          goto LABEL_226;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_202;
        }
      }
    }

    else
    {
      v20 = inited;
      if (!v19)
      {
        *&v115 = v13;
        WORD4(v115) = v12;
        BYTE10(v115) = BYTE2(v12);
        BYTE11(v115) = BYTE3(v12);
        BYTE12(v115) = BYTE4(v12);
        BYTE13(v115) = BYTE5(v12);
        v21 = v14 >> 62;
        if ((v14 >> 62) > 1)
        {
          if (v21 != 2)
          {
            memset(v114, 0, 14);
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_191;
            }

            goto LABEL_129;
          }

          v16 = BYTE6(v12);
          v47 = *(v15 + 16);
          v48 = sub_1C0D7812C();
          if (!v48)
          {
            goto LABEL_236;
          }

          v49 = v48;
          v50 = sub_1C0D7815C();
          if (__OFSUB__(v47, v50))
          {
            goto LABEL_187;
          }

          v51 = v47 - v50 + v49;
          sub_1C0D7814C();
          a1 = v110;
          if (!v51)
          {
            goto LABEL_237;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_197;
          }
        }

        else
        {
          if (!v21)
          {
            v114[0] = v15;
            LOWORD(v114[1]) = v14;
            BYTE2(v114[1]) = BYTE2(v14);
            BYTE3(v114[1]) = BYTE3(v14);
            BYTE4(v114[1]) = BYTE4(v14);
            BYTE5(v114[1]) = BYTE5(v14);
            if (qword_1EBE6CC50 != -1)
            {
              swift_once();
            }

            if (qword_1EBE72CC8 < 0)
            {
              goto LABEL_188;
            }

LABEL_129:
            v34 = cche_deserialize_seeded_ciphertext_coeff();
            goto LABEL_158;
          }

          if (v15 > v15 >> 32)
          {
            goto LABEL_190;
          }

          v16 = BYTE6(v12);
          v67 = sub_1C0D7812C();
          if (!v67)
          {
            goto LABEL_220;
          }

          v68 = v67;
          v69 = sub_1C0D7815C();
          if (__OFSUB__(v15, v69))
          {
            goto LABEL_196;
          }

          v70 = v15 - v69 + v68;
          sub_1C0D7814C();
          a1 = v110;
          if (!v70)
          {
            goto LABEL_221;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_208;
          }
        }

        v34 = cche_deserialize_seeded_ciphertext_coeff();
        v12 = v112;
LABEL_158:

        goto LABEL_159;
      }

      if (v13 >> 32 < v13)
      {
        goto LABEL_179;
      }

      v16 = sub_1C0D7812C();
      if (v16)
      {
        v40 = sub_1C0D7815C();
        if (__OFSUB__(v13, v40))
        {
          goto LABEL_185;
        }

        v16 += v13 - v40;
      }

      sub_1C0D7814C();
      v41 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v62 = *(v15 + 16);
          v63 = sub_1C0D7812C();
          if (!v63)
          {
            goto LABEL_227;
          }

          v64 = v63;
          v65 = sub_1C0D7815C();
          v60 = __OFSUB__(v62, v65);
          v66 = v62 - v65;
          if (v60)
          {
            goto LABEL_204;
          }

          sub_1C0D7814C();
          if (!v16)
          {
            goto LABEL_228;
          }

          if (!(v66 + v64))
          {
            goto LABEL_229;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          a1 = v110;
          v12 = v112;
          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_212;
          }
        }

        else
        {
          *(&v115 + 6) = 0;
          *&v115 = 0;
          a1 = v110;
          if (!v16)
          {
            goto LABEL_225;
          }

          if (qword_1EBE6CC50 != -1)
          {
            swift_once();
          }

          if (qword_1EBE72CC8 < 0)
          {
            goto LABEL_205;
          }
        }
      }

      else if (v41)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_199;
        }

        v80 = sub_1C0D7812C();
        if (!v80)
        {
          goto LABEL_231;
        }

        v81 = v80;
        v82 = sub_1C0D7815C();
        v83 = v15 - v82;
        if (__OFSUB__(v15, v82))
        {
          goto LABEL_209;
        }

        sub_1C0D7814C();
        if (!v16)
        {
          goto LABEL_232;
        }

        if (!(v83 + v81))
        {
          goto LABEL_233;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        a1 = v110;
        v12 = v112;
        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_214;
        }
      }

      else
      {
        *&v115 = v15;
        WORD4(v115) = v14;
        BYTE10(v115) = BYTE2(v14);
        BYTE11(v115) = BYTE3(v14);
        BYTE12(v115) = BYTE4(v14);
        BYTE13(v115) = BYTE5(v14);
        a1 = v110;
        if (!v16)
        {
          goto LABEL_241;
        }

        if (qword_1EBE6CC50 != -1)
        {
          swift_once();
        }

        if (qword_1EBE72CC8 < 0)
        {
          goto LABEL_201;
        }
      }
    }

    v34 = cche_deserialize_seeded_ciphertext_coeff();
    v20 = v111;
    goto LABEL_158;
  }

LABEL_170:
  v115 = v4;
  LOBYTE(v114[0]) = v5;
  result = sub_1C0CFE738(&v115, v114, v8, a3);
LABEL_173:
  v99 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PEC.SerializedCiphertextCoeffMatrix.init(encryptionParams:dimensions:packing:ciphertexts:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v15[0] = v8;
  v15[1] = v9;
  v14 = v10;
  result = sub_1C0CFFC20(v16, v15, &v14);
  if (v5)
  {
  }

  if (*(a4 + 16) == result)
  {
    *a5 = v8;
    *(a5 + 8) = v9;
    *(a5 + 16) = v10;
    *(a5 + 24) = a4;
  }

  else
  {
LABEL_6:

    sub_1C0CF8DE0();
    swift_allocError();
    *v13 = 1;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D63338(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D63394(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t HE.RlweParams.init(inParams:plaintextModulus:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v4 = 0;
  v5 = *a1;
  while (1)
  {
    v6 = byte_1F4034348[v4 + 32];
    v7 = dword_1C0D7EB1C[v6];
    v8 = cche_encryption_params_polynomial_degree();
    v9 = dword_1C0D7EB1C[v5];
    if (v8 != cche_encryption_params_polynomial_degree())
    {
      goto LABEL_3;
    }

    v10 = dword_1C0D7EB1C[v6];
    if (cche_encryption_params_plaintext_modulus() != v3)
    {
      goto LABEL_3;
    }

    v11 = dword_1C0D7EB1C[v6];
    result = cche_encryption_params_coefficient_nmoduli();
    if (result < 0)
    {
      break;
    }

    v13 = result;
    if (result)
    {
      v14 = sub_1C0D78C2C();
      *(v14 + 16) = v13;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = dword_1C0D7EB1C[v6];
    v16 = (v14 + 32);
    cche_encryption_params_coefficient_moduli();
    *(v14 + 16) = v13;
    v17 = dword_1C0D7EB1C[v5];
    result = cche_encryption_params_coefficient_nmoduli();
    if (result < 0)
    {
      goto LABEL_39;
    }

    v18 = result;
    if (result)
    {
      v19 = sub_1C0D78C2C();
      *(v19 + 16) = v18;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = dword_1C0D7EB1C[v5];
    v21 = (v19 + 32);
    cche_encryption_params_coefficient_moduli();
    *(v19 + 16) = v18;
    if (*(v14 + 16) != v18)
    {
      goto LABEL_2;
    }

    if (v18 && v14 != v19)
    {
      while (*v16 == *v21)
      {
        ++v16;
        ++v21;
        if (!--v18)
        {
          goto LABEL_19;
        }
      }

LABEL_2:

      v3 = a2;
      goto LABEL_3;
    }

LABEL_19:

    v22 = 0x1EFFCu >> v6;
    if (((1 << v5) & 0x1EFFC) != 0)
    {
      v23 = 0x316D75746E617571;
    }

    else
    {
      v23 = 0x656B636568636E75;
    }

    if (((1 << v5) & 0x1EFFC) != 0)
    {
      v24 = 0xEA00000000003832;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    if (v22)
    {
      v25 = 0x316D75746E617571;
    }

    else
    {
      v25 = 0x656B636568636E75;
    }

    if (v22)
    {
      v26 = 0xEA00000000003832;
    }

    else
    {
      v26 = 0xE900000000000064;
    }

    if (v25 == v23 && v26 == v24)
    {

LABEL_37:
      *a3 = v6;
      return result;
    }

    v27 = sub_1C0D78F3C();

    v3 = a2;
    if (v27)
    {
      goto LABEL_37;
    }

LABEL_3:
    if (++v4 == 17)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v28 = 5;
      *(v28 + 4) = 1;
      return swift_willThrow();
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

_BYTE *HE.EncryptionParams.init(rlweParams:scheme:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t HE.RlweParams.coefficientModuli.getter()
{
  v1 = *v0;
  v2 = dword_1C0D7EB1C[v1];
  result = cche_encryption_params_coefficient_nmoduli();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      v5 = sub_1C0D78C2C();
      *(v5 + 16) = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = dword_1C0D7EB1C[v1];
    v7 = v5;
    cche_encryption_params_coefficient_moduli();
    *(v7 + 16) = v4;
    return v7;
  }

  return result;
}

uint64_t HE.RlweParams.supportsEvaluationKey.getter()
{
  v1 = *v0;
  v2 = dword_1C0D7EB1C[v1];
  result = cche_encryption_params_coefficient_nmoduli();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      v5 = sub_1C0D78C2C();
      *(v5 + 16) = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = dword_1C0D7EB1C[v1];
    v7 = v5;
    cche_encryption_params_coefficient_moduli();
    *(v7 + 16) = v4;

    return v4 > 1;
  }

  return result;
}

uint64_t HE.RlweParams.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C0D78F5C();

  v4 = 17;
  if (v2 < 0x11)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t HE.RlweParams.rawValue.getter()
{
  result = 0xD00000000000001DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 4:
    case 0xD:
    case 0x10:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 9:
    case 0xA:
    case 0xB:
    case 0xE:
    case 0xF:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0D63A30(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HE.RlweParams.rawValue.getter();
  v4 = v3;
  if (v2 == HE.RlweParams.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C0D78F3C();
  }

  return v7 & 1;
}

uint64_t sub_1C0D63ACC()
{
  v1 = *v0;
  sub_1C0D78FFC();
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D63B34()
{
  v2 = *v0;
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();
}

uint64_t sub_1C0D63B98()
{
  v1 = *v0;
  sub_1C0D78FFC();
  HE.RlweParams.rawValue.getter();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D63BFC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return HE.RlweParams.init(rawValue:)(a1);
}

unint64_t sub_1C0D63C08@<X0>(unint64_t *a1@<X8>)
{
  result = HE.RlweParams.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0D63CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64CE0();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D63D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64CE0();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t HE.SecurityLevel.rawValue.getter()
{
  if (*v0)
  {
    result = 0x316D75746E617571;
  }

  else
  {
    result = 0x656B636568636E75;
  }

  *v0;
  return result;
}

uint64_t sub_1C0D63E1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x316D75746E617571;
  }

  else
  {
    v4 = 0x656B636568636E75;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEA00000000003832;
  }

  if (*a2)
  {
    v6 = 0x316D75746E617571;
  }

  else
  {
    v6 = 0x656B636568636E75;
  }

  if (*a2)
  {
    v7 = 0xEA00000000003832;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C0D78F3C();
  }

  return v9 & 1;
}

uint64_t sub_1C0D63ECC()
{
  v1 = *v0;
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D63F58()
{
  *v0;
  sub_1C0D78B0C();
}

uint64_t sub_1C0D63FD0()
{
  v1 = *v0;
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

void sub_1C0D64064(uint64_t *a1@<X8>)
{
  v2 = 0x656B636568636E75;
  if (*v1)
  {
    v2 = 0x316D75746E617571;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA00000000003832;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C0D6416C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64C8C();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D641C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64C8C();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_1C0D64248@<X0>(char *a1@<X8>)
{
  v2 = sub_1C0D78F1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t HE.Scheme.rawValue.getter()
{
  if (*v0)
  {
    return 5654338;
  }

  else
  {
    return 5654082;
  }
}

uint64_t sub_1C0D642D4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 5654338;
  }

  else
  {
    v2 = 5654082;
  }

  if (*a2)
  {
    v3 = 5654338;
  }

  else
  {
    v3 = 5654082;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C0D78F3C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1C0D64348()
{
  v1 = *v0;
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D643AC()
{
  *v0;
  sub_1C0D78B0C();
}

uint64_t sub_1C0D643F4()
{
  v1 = *v0;
  sub_1C0D78FFC();
  sub_1C0D78B0C();

  return sub_1C0D7902C();
}

uint64_t sub_1C0D64460@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C0D78F1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C0D644BC(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 5654338;
  }

  else
  {
    v2 = 5654082;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1C0D645A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D64C38();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_1C0D645F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C0D64C38();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t _s16CryptoKitPrivate2HEO16EncryptionParamsV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v15 = *a1;
  v14 = *a2;
  v4 = HE.RlweParams.rawValue.getter();
  v6 = v5;
  if (v4 == HE.RlweParams.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1C0D78F3C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  if (v2)
  {
    v11 = 5654338;
  }

  else
  {
    v11 = 5654082;
  }

  if (v3)
  {
    v12 = 5654338;
  }

  else
  {
    v12 = 5654082;
  }

  if (v11 == v12)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C0D78F3C();
  }

  swift_bridgeObjectRelease_n();
  return v10 & 1;
}

unint64_t sub_1C0D64780()
{
  result = qword_1EBE6E050;
  if (!qword_1EBE6E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E050);
  }

  return result;
}

unint64_t sub_1C0D64808()
{
  result = qword_1EBE6CB70;
  if (!qword_1EBE6CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB70);
  }

  return result;
}

unint64_t sub_1C0D64890()
{
  result = qword_1EBE6E078;
  if (!qword_1EBE6E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6E078);
  }

  return result;
}

uint64_t sub_1C0D64914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _s16EncryptionParamsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16EncryptionParamsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10RlweParamsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10RlweParamsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D64C38()
{
  result = qword_1EBE6CB60;
  if (!qword_1EBE6CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB60);
  }

  return result;
}

unint64_t sub_1C0D64C8C()
{
  result = qword_1EBE6CB68;
  if (!qword_1EBE6CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB68);
  }

  return result;
}

unint64_t sub_1C0D64CE0()
{
  result = qword_1EBE6CB80;
  if (!qword_1EBE6CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CB80);
  }

  return result;
}

uint64_t sub_1C0D64D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 32))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D64DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1C0D64E2C(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        v10 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v11 = v9 < v8;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v15 = 1;
          }

          else
          {
            v12 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
            v14 = v13 | HIWORD(v13);
            if (v14 == -1)
            {
              v15 = 0xFFFFFFFFLL;
            }

            else
            {
              v15 = (v14 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v15;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v20 = result;
          v21 = *v4;
          result = swift_beginAccess();
          v22 = v21[2];
          if (v22 < v7)
          {
            __break(1u);
            return result;
          }

          sub_1C0CF062C(v21, 0, v7);
          sub_1C0CF0710(a2);
          sub_1C0CF062C(v21, v7, v22);

          *v4 = v20;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v16 = *v4;
          result = swift_beginAccess();
          v17 = v16[2];
          if (__OFADD__(v17, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v17 + 1)
          {
            goto LABEL_35;
          }

          if (v17 < v7)
          {
            goto LABEL_37;
          }

          result = sub_1C0CF2E8C(v7, v17, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v16);
          *(v16 + v7 + 32) = a2;
          v18 = v16[2];
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v16[2] = v19;
          if (!--v3)
          {
            return result;
          }
        }
      }

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
    }

    __break(1u);
  }

  return result;
}

size_t sub_1C0D65070(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *v1;
  swift_beginAccess();
  return sub_1C0CF15F4(*(v4 + 16), *(v4 + 16), (a1 + 32), v3);
}

size_t sub_1C0D650E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1C0D7836C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D6E02C(a1, a2, v3);
  if (result)
  {
    v32 = v7;
    if (a2 >> 62 == 2)
    {
      v12 = *(a1 + 16);
    }

    sub_1C0CF6468(a1, a2);
    sub_1C0D7837C();
    sub_1C0D6F118(&qword_1ED9076D8, MEMORY[0x1E6969050]);
    sub_1C0D78D4C();
    if (v34)
    {
      return (*(v32 + 8))(v10, v6);
    }

    else
    {
      v13 = v33;
      while (1)
      {
        v14 = *v3;
        result = swift_beginAccess();
        v15 = v14[2];
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v17 = _swift_stdlib_malloc_size(v14) - 32;
        v18 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v19 = v17 < v16;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (v16 < 0)
          {
            goto LABEL_35;
          }

          if (HIDWORD(v16))
          {
            goto LABEL_37;
          }

          if (v15 == -1)
          {
            v23 = 1;
          }

          else
          {
            v20 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
            v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
            v22 = v21 | HIWORD(v21);
            if (v22 == -1)
            {
              v23 = 0xFFFFFFFFLL;
            }

            else
            {
              v23 = (v22 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v23;
          if (v15 < 0)
          {
            goto LABEL_39;
          }

          v28 = result;
          v29 = *v3;
          result = swift_beginAccess();
          v30 = v29[2];
          if (v30 < v15)
          {
            __break(1u);
            break;
          }

          sub_1C0CF062C(v29, 0, v15);
          sub_1C0CF0710(v13);
          sub_1C0CF062C(v29, v15, v30);

          *v3 = v28;
        }

        else
        {
          v24 = *v3;
          result = swift_beginAccess();
          v25 = v24[2];
          if (__OFADD__(v25, 1))
          {
            goto LABEL_36;
          }

          result = _swift_stdlib_malloc_size(v24);
          if ((result - 32) < v25 + 1)
          {
            goto LABEL_38;
          }

          if (v25 < v15)
          {
            goto LABEL_40;
          }

          result = sub_1C0CF2E8C(v15, v25, 1);
          if (v15 < 0)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v24);
          if ((result - 32) < v16)
          {
            goto LABEL_42;
          }

          if (v16 < v15)
          {
            goto LABEL_43;
          }

          result = _swift_stdlib_malloc_size(v24);
          *(v24 + v15 + 32) = v13;
          v26 = v24[2];
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_44;
          }

          swift_beginAccess();
          v24[2] = v27;
        }

        sub_1C0D78D4C();
        v13 = v33;
        if (v34)
        {
          return (*(v32 + 8))(v10, v6);
        }
      }

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
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }
  }

  return result;
}

char *sub_1C0D65484(void *(*a1)(_OWORD *__return_ptr, int *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = HIDWORD(a3);
  if (HIDWORD(a3) < a3)
  {
    v6 = -(a3 - HIDWORD(a3));
  }

  else
  {
    v6 = (HIDWORD(a3) - a3);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6 == -1)
  {
    return v7;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1C0CF7D10(0, (v6 + 1) & ~((v6 + 1) >> 63), 0);
  if (v6 >= -1)
  {
    v7 = v27;
    v10 = v6 + 1;
    while (1)
    {
      v24 = v4;
      result = a1(v25, &v24, &v23);
      if (v3)
      {

        return v7;
      }

      v22 = v26;
      v20 = v25[4];
      v21 = v25[5];
      v18 = v25[2];
      v19 = v25[3];
      v16 = v25[0];
      v17 = v25[1];
      v27 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1C0CF7D10((v11 > 1), v12 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 104 * v12;
      *(v13 + 48) = v17;
      *(v13 + 64) = v18;
      *(v13 + 32) = v16;
      *(v13 + 128) = v22;
      *(v13 + 96) = v20;
      *(v13 + 112) = v21;
      *(v13 + 80) = v19;
      if (v4 == v5)
      {
        v14 = 0;
      }

      else
      {
        v14 = v4 + 1;
        if (v4 == -1)
        {
          __break(1u);
          break;
        }
      }

      if (!--v10)
      {
        return v7;
      }

      v15 = v4 == v5;
      v4 = v14;
      if (v15)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0D6562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D7825C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = xmmword_1C0D7BAB0;
  *(a2 + 48) = 0;
  *(a2 + 56) = xmmword_1C0D7BAB0;
  v9 = a2 + *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0) + 48);
  sub_1C0D783DC();
  v35 = 0;
  v10 = *(a1 + 160);
  if (!ccss_sizeof_shamir_share_generator_serialization())
  {
    v16 = 0x80000001C0D80270;
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 4) = -7;
    *(v18 + 8) = 0;
    v17 = 0xD00000000000003ALL;
    v19 = 49;
    goto LABEL_5;
  }

  v11 = swift_slowAlloc();
  v12 = *(a1 + 160);
  v13 = ccss_shamir_share_generator_serialize();
  if (v13)
  {
    v14 = v13;
    MEMORY[0x1C68E4EB0](v11, -1, -1);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000038, 0x80000001C0D802B0);
    v32[3] = v14;
    v15 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v15);

    v17 = v33;
    v16 = v34;
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 4) = 0;
    *(v18 + 8) = 1;
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    v19 = 56;
LABEL_5:
    *(v18 + 64) = v17;
    *(v18 + 72) = v16;
    *v18 = 3;
    *(v18 + 24) = v19;
    *(v18 + 32) = 0x293A5F2874696E69;
    *(v18 + 40) = 0xE800000000000000;
    *(v18 + 48) = 0xD00000000000006BLL;
    *(v18 + 56) = 0x80000001C0D81620;
    swift_willThrow();

    result = sub_1C0D6F0B8(a2, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    goto LABEL_6;
  }

  v22 = v35;
  (*(v5 + 104))(v8, *MEMORY[0x1E6969000], v4);
  v23 = sub_1C0D04A08(v11, v22, v8);
  v25 = v24;
  *a2 = 1;
  *(a2 + 17) = *(a1 + 17);
  v26 = *(a1 + 32);
  *(a2 + 20) = *(a1 + 24);
  *(a2 + 24) = *(a1 + 16);
  v27 = *(a1 + 40);
  if (v27 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  if (v27 >> 60 == 15)
  {
    v29 = 0xC000000000000000;
  }

  else
  {
    v29 = *(a1 + 40);
  }

  v30 = *(a2 + 32);
  v31 = *(a2 + 40);
  sub_1C0D134D0(v26, v27);
  sub_1C0CF448C(v30, v31);
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  LOBYTE(v30) = *(a1 + 18);

  *(a2 + 48) = v30;
  result = sub_1C0CF448C(*(a2 + 56), *(a2 + 64));
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
LABEL_6:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D659DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v2 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 8) = xmmword_1C0D7BAB0;
  v16 = &v15[v12[8]];
  sub_1C0D783DC();
  v17 = v12[9];
  v18 = *(v7 + 56);
  v31 = v6;
  v18(&v15[v17], 1, 1, v6);
  v19 = *(v3 + 56);
  v32 = v12[10];
  v33 = v19;
  v35 = v3 + 56;
  v36 = v2;
  v19(&v15[v32], 1, 1, v2);
  *v15 = 1;
  v20 = v38;
  v21 = *v38;

  v23 = v39;
  sub_1C0D6562C(v22, v10);
  if (!v23)
  {
    sub_1C0D13578(&v15[v17], &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    sub_1C0D37A20(v10, &v15[v17], type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    v18(&v15[v17], 0, 1, v31);
    v24 = type metadata accessor for CKSecretSharing.HybridGenerator();
    v25 = *(v24 + 20);
    MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 2) = v15;
    v26 = sub_1C0D7867C();
    MEMORY[0x1EEE9AC00](v26);
    *(&v31 - 2) = v20;
    sub_1C0D6F118(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    v27 = v34;
    v28 = v36;
    sub_1C0D7851C();
    v29 = v32;
    sub_1C0D13578(&v15[v32], &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    sub_1C0D37A20(v27, &v15[v29], type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    v33(&v15[v29], 0, 1, v28);
    sub_1C0D6F050(v15, v37, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  sub_1C0D6F0B8(v20, type metadata accessor for CKSecretSharing.HybridGenerator);
  return sub_1C0D6F0B8(v15, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
}

uint64_t sub_1C0D65E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = MEMORY[0x1E69E6290];
  v16[4] = MEMORY[0x1E6969DF8];
  v16[0] = a1;
  v16[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C0D77CE4(v5, v6);
      v9 = v14 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C0D77DA4(v5, v6);
      v9 = v15 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C0D77E20(v5, v6);
      v9 = v13 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  return sub_1C0CF448C(v10, v11);
}

uint64_t sub_1C0D65EE0(uint64_t a1)
{
  v2 = sub_1C0D7877C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for CKSecretSharing.HybridGenerator() + 24);
  v8 = sub_1C0D7878C();
  v10 = v9;
  sub_1C0CF448C(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  v11 = sub_1C0D7879C();
  v13 = v12;
  sub_1C0CF448C(*(a1 + 32), *(a1 + 40));
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  sub_1C0D787BC();
  v20 = v2;
  v21 = sub_1C0D6F118(&qword_1EBE6E090, MEMORY[0x1E69664E8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1C0D7819C();
  (*(v3 + 8))(v6, v2);
  v15 = v18[1];
  v16 = v18[2];
  __swift_destroy_boxed_opaque_existential_1(v19);
  result = sub_1C0CF448C(*a1, *(a1 + 8));
  *a1 = v15;
  *(a1 + 8) = v16;
  return result;
}

uint64_t sub_1C0D660D8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  v8 = v7;
  *(v8 + 16) = 257;
  *(v8 + 18) = 0;
  sub_1C0CEDF4C(v8 + 48);
  v34[0] = xmmword_1C0D7A9A0;
  v34[1] = xmmword_1C0D7A9B0;
  v34[2] = xmmword_1C0D7A9C0;
  v35 = 16;
  v36 = &unk_1F4034280;
  v37 = 0xD000000000000021;
  v38 = 0x80000001C0D7FDC0;
  v39 = 0xD000000000000023;
  v40 = 0x80000001C0D7FDF0;
  *(v8 + 16) = a4;
  *(v8 + 17) = a5;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  if ((a1 - 0x7FFFFFFF) >= 0xFFFFFFFF80000003)
  {
    if ((a7 & 1) == 0)
    {
      *(v8 + 18) = 1;
    }

    v21 = *(*(v8 + 104) + 16);
    sub_1C0D134D0(a2, a3);
    ccss_sizeof_parameters_fix();
    *(v8 + 144) = swift_slowAlloc();
    v22 = *(*(v8 + 104) + 16);
    v23 = ccss_shamir_parameters_init();
    if (!v23)
    {
      ccss_sizeof_share();
      *(v8 + 152) = swift_slowAlloc();
      v30 = *(v8 + 144);
      ccss_sizeof_generator();
      *(v8 + 160) = swift_slowAlloc();
      v32 = *(v8 + 144);
      v31 = *(v8 + 152);
      ccss_shamir_share_init();
      sub_1C0D6E5CC(v34);
      sub_1C0D13830(a2, a3);
      return v8;
    }

    MEMORY[0x1C68E4EB0](*(v8 + 144), -1, -1);
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000056, 0x80000001C0D81D30);
    LODWORD(v41) = v23;
    v24 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v24);

    v25 = v33[0];
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 4) = v23;
    *(v18 + 8) = 0;
    *(v18 + 64) = v25;
    v19 = 3;
    v20 = 156;
  }

  else
  {
    sub_1C0D134D0(a2, a3);
    sub_1C0D78DAC();

    *&v33[0] = 0xD000000000000016;
    *(&v33[0] + 1) = 0x80000001C0D80500;
    v15 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v15);

    MEMORY[0x1C68E3B00](8236, 0xE200000000000000);
    v41 = 2147483646;
    v16 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v16);

    MEMORY[0x1C68E3B00](93, 0xE100000000000000);
    v17 = v33[0];
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 4) = 0;
    v19 = 1;
    *(v18 + 8) = 1;
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 64) = v17;
    v20 = 141;
  }

  *v18 = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0xD00000000000007FLL;
  *(v18 + 40) = 0x80000001C0D81D90;
  *(v18 + 48) = 0xD00000000000006BLL;
  *(v18 + 56) = 0x80000001C0D81620;
  swift_willThrow();
  sub_1C0D13830(a2, a3);
  sub_1C0D6E5CC(v34);
  sub_1C0D13830(*(v8 + 32), *(v8 + 40));
  v26 = *(v8 + 96);
  v33[2] = *(v8 + 80);
  v33[3] = v26;
  v27 = *(v8 + 128);
  v33[4] = *(v8 + 112);
  v33[5] = v27;
  v28 = *(v8 + 64);
  v33[0] = *(v8 + 48);
  v33[1] = v28;
  sub_1C0D6E5CC(v33);
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1C0D664D8()
{
  MEMORY[0x1C68E4EB0](*(v0 + 144), -1, -1);
  MEMORY[0x1C68E4EB0](*(v0 + 152), -1, -1);
  memset_s(*(v0 + 160), 8uLL, 0, 8uLL);
  MEMORY[0x1C68E4EB0](*(v0 + 160), -1, -1);
  sub_1C0D13830(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 104);
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t CKSecretSharing.HybridGenerator.init(threshold:secret:associatedData:includeADInShares:includeThresholdInShares:ciphersuite:insecureToChangeIncludeMessageEntropy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>, unsigned __int8 a9)
{
  v172 = a2;
  LODWORD(v170) = a7;
  LODWORD(v169) = a6;
  v173 = a3;
  v167 = a8;
  LODWORD(v168) = a9;
  v193 = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v160 = v150 - v14;
  v15 = sub_1C0D787CC();
  v165 = *(v15 - 8);
  v166 = v15;
  v16 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v159 = v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1C0D7877C();
  v161 = *(v163 - 8);
  v18 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v162 = v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C0D786AC();
  v164 = *(v20 - 8);
  v21 = *(v164 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v150 - v25;
  type metadata accessor for CKSecretSharing.CKHybridSecretShareInternalState();
  swift_allocObject();
  sub_1C0D134D0(a4, a5);
  v27 = a1;
  v28 = a1;
  v29 = a4;
  v30 = v171;
  v32 = sub_1C0D660D8(v28, a4, a5, v169, v170, v31, v168);
  if (v30)
  {
    sub_1C0D13830(a4, a5);
    v33 = v172;
    v34 = v173;
LABEL_3:
    result = sub_1C0CF448C(v33, v34);
LABEL_51:
    v137 = *MEMORY[0x1E69E9840];
    return result;
  }

  v170 = v20;
  v171 = v27;
  v168 = v32;
  v169 = 0;
  v157 = v26;
  v158 = v24;
  *v167 = v32;
  v177[0] = xmmword_1C0D7A9A0;
  v177[1] = xmmword_1C0D7A9B0;
  v178 = xmmword_1C0D7A9C0;
  v179 = 16;
  v180 = &unk_1F4034280;
  v181 = 0xD000000000000021;
  v182 = 0x80000001C0D7FDC0;
  v36 = a5 >> 60;
  v183 = 0xD000000000000023;
  v184 = 0x80000001C0D7FDF0;
  v37 = a4;
  if (a5 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v54 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v54 != 2)
    {
      sub_1C0D13830(a4, a5);
LABEL_5:
      v38 = 0;
      goto LABEL_6;
    }

    v68 = a4[2];
    v67 = a4[3];
    v39 = __OFSUB__(v67, v68);
    v38 = v67 - v68;
    if (v39)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else if (v54)
  {
    LODWORD(v38) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_62;
    }

    v38 = v38;
  }

  else
  {
    sub_1C0D13830(a4, a5);
    v38 = BYTE6(a5);
  }

LABEL_6:
  v39 = __OFADD__(v38, 4);
  v40 = v38 + 4;
  if (v39)
  {
    __break(1u);
  }

  else if (!__OFADD__(v40, 1))
  {
    a4 = &v187;
    v191 = sub_1C0D6E528(v40 + 1);
    v192 = v41;
    if (qword_1EBE6CB98 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_9:
  v42 = off_1EBE6CBA0;
  v175 = off_1EBE6CBA0;
  v176 = off_1EBE6CBA0;
  if ((v171 - 0x7FFFFFFF) < 0xFFFFFFFF80000003)
  {
    a4[8] = 0;
    a4[9] = 0xE000000000000000;
    swift_retain_n();
    sub_1C0D78DAC();
    v43 = a4[9];

    a4[8] = 0xD000000000000016;
    a4[9] = 0x80000001C0D80500;
    a4[5] = 2;
    v44 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v44);

    MEMORY[0x1C68E3B00](8236, 0xE200000000000000);
    a4[5] = 2147483646;
    v45 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v45);

    MEMORY[0x1C68E3B00](93, 0xE100000000000000);
    v46 = a4[8];
    v47 = a4[9];
    sub_1C0D01E40();
    swift_allocError();
    *(v48 + 4) = 0;
    *(v48 + 8) = 1;
    *(v48 + 12) = 0;
    *(v48 + 16) = 256;
    *(v48 + 64) = v46;
    *(v48 + 72) = v47;
    *v48 = 1;
    *(v48 + 24) = xmmword_1C0D7ED60;
    *(v48 + 40) = 0x80000001C0D81590;
    *(v48 + 48) = 0xD00000000000006BLL;
    *(v48 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0CF448C(v172, v173);
    sub_1C0D6E5CC(v177);
    sub_1C0D13830(v37, a5);

    v49 = 0;
    v50 = 0;
    v52 = v166;
    v51 = v167;
    v53 = v170;
    goto LABEL_47;
  }

  v155 = v29;
  v156 = a5;
  v174 = bswap32(v171);
  swift_retain_n();
  v55 = sub_1C0D07CD0(&v174, &v175);
  v57 = v56;
  v58 = MEMORY[0x1E6969080];
  v59 = MEMORY[0x1E6969078];
  a4[11] = MEMORY[0x1E6969080];
  a4[12] = v59;
  a4[8] = v55;
  a4[9] = v57;
  v60 = __swift_project_boxed_opaque_existential_1(v190, v58);
  v37 = &v187;
  v62 = *v60;
  v61 = v60[1];
  sub_1C0CF6468(v55, v57);
  v63 = v169;
  sub_1C0D4268C(v62, v61);
  v29 = v63;
  sub_1C0CF448C(v55, v57);
  __swift_destroy_boxed_opaque_existential_1(v190);
  v154 = v42;
  if (v36 > 0xE)
  {
    v64 = v168;
    v65 = MEMORY[0x1E6969080];
    v66 = MEMORY[0x1E6969078];
    goto LABEL_21;
  }

LABEL_20:
  v69 = MEMORY[0x1E6969080];
  v37[11] = MEMORY[0x1E6969080];
  v66 = MEMORY[0x1E6969078];
  v37[12] = MEMORY[0x1E6969078];
  v71 = v155;
  v70 = v156;
  v37[8] = v155;
  v37[9] = v70;
  v72 = __swift_project_boxed_opaque_existential_1(v190, v69);
  v73 = *v72;
  v74 = v72[1];
  sub_1C0CF6468(v71, v70);
  sub_1C0D4268C(v73, v74);
  __swift_destroy_boxed_opaque_existential_1(v190);
  v64 = v168;
  v65 = v69;
LABEL_21:
  if (*(v64 + 18))
  {
    v75 = &unk_1F40346F8;
  }

  else
  {
    v75 = &unk_1F4034720;
  }

  v76 = sub_1C0D0FA30(v75);
  v78 = v77;
  v37[11] = v65;
  v37[12] = v66;
  v37[8] = v76;
  v37[9] = v77;
  v79 = __swift_project_boxed_opaque_existential_1(v190, v65);
  v80 = *v79;
  v81 = v79[1];
  sub_1C0CF6468(v76, v78);
  v82 = v29;
  sub_1C0D4268C(v80, v81);
  sub_1C0CF448C(v76, v78);
  __swift_destroy_boxed_opaque_existential_1(v190);
  sub_1C0D650E4(v37[13], v37[14]);
  v84 = v172;
  v83 = v173;
  sub_1C0D650E4(v172, v173);
  sub_1C0D650E4(v84, v83);
  v85 = *(v64 + 18);
  v171 = v82;
  if (v85)
  {
LABEL_44:
    v100 = v157;
    v101 = v176;
    v187 = v176;
    v168 = sub_1C0CF39A8();
    swift_retain_n();
    sub_1C0D7868C();
    v102 = v181;
    v103 = v182;
    sub_1C0D78BFC();
    v187 = sub_1C0D07698(v102, v103);
    v188 = v104;
    sub_1C0D78BFC();
    v185 = sub_1C0D07698(v102, v103);
    v186 = v105;
    v151 = type metadata accessor for CKSecretSharing.HybridGenerator();
    v106 = *(v151 + 20);
    v154 = sub_1C0D789EC();
    v107 = v100;
    v153 = sub_1C0D6F118(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
    sub_1C0D17E68();
    v152 = v106;
    sub_1C0D7881C();
    sub_1C0CF448C(v185, v186);
    sub_1C0CF448C(v187, v188);
    v108 = v164 + 8;
    v109 = *(v164 + 8);
    v53 = v170;
    v109(v107, v170);
    v169 = v101;
    v187 = v101;
    sub_1C0D7868C();
    v110 = v183;
    v111 = v184;
    sub_1C0D78BFC();
    v187 = sub_1C0D07698(v110, v111);
    v188 = v112;
    sub_1C0D78BFC();
    v113 = v111;
    v114 = v109;
    v185 = sub_1C0D07698(v110, v113);
    v186 = v115;
    v116 = v158;
    sub_1C0D7881C();
    sub_1C0CF448C(v185, v186);
    sub_1C0CF448C(v187, v188);
    v117 = v107;
    v118 = v108;
    v109(v117, v53);
    v119 = v162;
    v120 = v163;
    v121 = v171;
    sub_1C0D7867C();
    if (v121)
    {
      sub_1C0CF448C(v172, v173);
      sub_1C0D6E5CC(v177);
      sub_1C0D13830(v155, v156);
      v114(v116, v53);

      v50 = 0;
      v49 = 1;
      v51 = v167;
      v52 = v166;
    }

    else
    {
      v150[0] = v114;
      v150[1] = v118;
      v122 = v120;
      v123 = v175;
      v185 = v175;
      v124 = v119;
      v126 = v160;
      v125 = v161;
      (*(v161 + 16))(v160, v124, v122);
      (*(v125 + 56))(v126, 0, 1, v122);
      v128 = v191;
      v127 = v192;
      v187 = v191;
      v188 = v192;
      v171 = v123;

      v129 = v127;
      v130 = v126;
      sub_1C0CF6468(v128, v129);
      sub_1C0CF330C();
      v131 = v167;
      v132 = v159;
      sub_1C0D7874C();
      v138 = v163;
      sub_1C0CF448C(v187, v188);
      sub_1C0D13578(v130, qword_1EBE6DCE8, &unk_1C0D7EF60);

      (*(v165 + 32))(v131 + *(v151 + 24), v132, v166);
      v139 = v152;
      sub_1C0D7867C();
      v140 = v157;
      v141 = (*(v164 + 16))(v157, v131 + v139, v53);
      v142 = v53;
      MEMORY[0x1EEE9AC00](v141);
      sub_1C0D7867C();
      v143 = v150[0];
      (v150[0])(v140, v53);
      v144 = v187;
      if (!v187)
      {
        sub_1C0CF448C(v172, v173);
        sub_1C0D6E5CC(v177);
        sub_1C0D13830(v155, v156);
        (*(v161 + 8))(v162, v138);
        v143(v158, v142);

        v33 = v191;
        v34 = v192;
        goto LABEL_3;
      }

      v187 = 0;
      v188 = 0xE000000000000000;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000036, 0x80000001C0D7FF20);
      LODWORD(v185) = v144;
      v145 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v145);

      v146 = v187;
      v147 = v188;
      v148 = v142;
      sub_1C0D01E40();
      swift_allocError();
      *(v149 + 12) = 0;
      *(v149 + 16) = 256;
      *(v149 + 4) = v144;
      *(v149 + 8) = 0;
      *(v149 + 64) = v146;
      *(v149 + 72) = v147;
      v51 = v167;
      *v149 = 3;
      *(v149 + 24) = xmmword_1C0D7ED50;
      *(v149 + 40) = 0x80000001C0D81590;
      *(v149 + 48) = 0xD00000000000006BLL;
      *(v149 + 56) = 0x80000001C0D81620;
      swift_willThrow();
      sub_1C0CF448C(v172, v173);
      sub_1C0D6E5CC(v177);
      sub_1C0D13830(v155, v156);
      (*(v161 + 8))(v162, v138);
      (v150[0])(v158, v142);

      v49 = 1;
      v50 = 1;
      v52 = v166;
      v53 = v148;
    }

LABEL_47:
    sub_1C0CF448C(v191, v192);
    v133 = *v51;

    if (v49)
    {
      v134 = type metadata accessor for CKSecretSharing.HybridGenerator();
      result = (*(v164 + 8))(&v51[*(v134 + 20)], v53);
    }

    v135 = v165;
    if (v50)
    {
      v136 = type metadata accessor for CKSecretSharing.HybridGenerator();
      result = (*(v135 + 8))(&v51[*(v136 + 24)], v52);
    }

    goto LABEL_51;
  }

  v86 = v178;
  if (!v178)
  {
    v96 = v154;

    v52 = v166;
    v51 = v167;
    v87 = v156;
    goto LABEL_39;
  }

  v51 = v167;
  v87 = v156;
  if ((v178 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v52 = v166;
  if (DWORD1(v178))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  v88 = (v178 - 1) | ((v178 - 1) >> 1) | (((v178 - 1) | ((v178 - 1) >> 1)) >> 2);
  v89 = v88 | (v88 >> 4) | ((v88 | (v88 >> 4)) >> 8);
  v90 = v89 | HIWORD(v89);
  v91 = __CFADD__(v90, 1);
  v92 = v90 + 1;
  if (v91)
  {
    v93 = 0xFFFFFFFFLL;
  }

  else
  {
    v93 = v92;
  }

  type metadata accessor for SecureBytes.Backing();
  v94 = swift_allocObject();
  v94[2] = 0;
  v95 = v94 + 2;
  v94[3] = v93;
  v96 = v94;
  if ((_swift_stdlib_malloc_size(v94) - 32) < v86)
  {
    goto LABEL_60;
  }

  LODWORD(v190[0]) = 0;
  result = ccrng();
  if (result)
  {
    if (!LODWORD(v190[0]))
    {
      ccrng_generate_bridge();
      swift_beginAccess();
      *v95 = v86;
LABEL_39:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_beginAccess();
        v97 = v171;
        sub_1C0CF2CF4(v96 + 32, v96 + 32 + *(v96 + 16), v189);
        v171 = v97;
        v98 = v37[2];

        v96 = v98;
      }

      swift_beginAccess();
      if (SecRandomCopyBytes(*MEMORY[0x1E697B308], *(v96 + 16), (v96 + 32)))
      {
        sub_1C0D01E40();
        swift_allocError();
        *(v99 + 4) = 0;
        *(v99 + 8) = 1;
        *(v99 + 12) = 0;
        *(v99 + 16) = 256;
        *(v99 + 64) = 0;
        *(v99 + 72) = 0xE000000000000000;
        *v99 = 7;
        *(v99 + 24) = xmmword_1C0D7ED40;
        *(v99 + 40) = 0x80000001C0D81590;
        *(v99 + 48) = 0xD00000000000006BLL;
        *(v99 + 56) = 0x80000001C0D81620;
        swift_willThrow();
        sub_1C0CF448C(v172, v173);
        sub_1C0D6E5CC(v177);
        sub_1C0D13830(v155, v87);

        v49 = 0;
        v50 = 0;
        v53 = v170;
        goto LABEL_47;
      }

      sub_1C0D65070(v96);
      sub_1C0D65070(v96);

      goto LABEL_44;
    }

    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D67714@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_1C0D67728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 160);
  v6 = *(*a2 + 144);
  if (!ccrng())
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  result = ccss_shamir_share_generator_init();
  *a3 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CKSecretSharing.HybridGenerator.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v319 = a3;
  v291 = sub_1C0D787CC();
  v290 = *(v291 - 8);
  v5 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v296 = &v282 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_1C0D7877C();
  v297 = *(v298 - 8);
  v7 = *(v297 + 64);
  v8 = MEMORY[0x1EEE9AC00](v298);
  v302 = &v282 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v303 = &v282 - v10;
  v11 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v323 = *(v11 - 8);
  v324 = v11;
  v12 = v323[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v316 = (&v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v312 = (&v282 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v308 = (&v282 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v304 = (&v282 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v295 = (&v282 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v294 = (&v282 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v301 = (&v282 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v307 = (&v282 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v311 = (&v282 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v315 = (&v282 - v32);
  MEMORY[0x1EEE9AC00](v31);
  v317 = (&v282 - v33);
  v322 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v325 = *(v322 - 8);
  v34 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v320 = (&v282 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v321 = &v282 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v314 = &v282 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v310 = &v282 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v306 = &v282 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v300 = &v282 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v293 = &v282 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v292 = &v282 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v299 = &v282 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v305 = &v282 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v309 = &v282 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v313 = &v282 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v318 = &v282 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v282 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v68 = &v282 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v282 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v282 - v72;
  v74 = sub_1C0D7840C();
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v76 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v79 = (&v282 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v333 = 0;
  v331 = 0u;
  v332 = 0u;
  sub_1C0CF6468(a1, a2);
  sub_1C0D783FC();
  sub_1C0D6F118(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  v80 = v326;
  sub_1C0D784DC();
  if (v80)
  {
    return sub_1C0CF448C(a1, a2);
  }

  v288 = v68;
  v287 = v71;
  v82 = v325;
  v289 = a2;
  v326 = a1;
  v83 = *v79;
  if (*v79 != 1)
  {
    *&v331 = 0;
    *(&v331 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000038, 0x80000001C0D81690);
    LODWORD(v327) = v83;
    v103 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v103);

    v104 = v331;
    sub_1C0D01E40();
    swift_allocError();
    *(v105 + 4) = 0;
    *(v105 + 8) = 1;
    *(v105 + 12) = 0;
    *(v105 + 16) = 256;
    *(v105 + 64) = v104;
    *v105 = 17;
    *(v105 + 24) = xmmword_1C0D7ED70;
    *(v105 + 40) = 0xE800000000000000;
    *(v105 + 48) = 0xD00000000000006BLL;
    *(v105 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0D03EF4(v79 + 1);
    sub_1C0CF448C(v326, v289);
    v102 = v79;
    return sub_1C0D6F0B8(v102, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v284 = 0;
  v285 = *(v76 + 28);
  sub_1C0D13734(v79 + v285, v73, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v84 = *(v82 + 48);
  v85 = v322;
  v325 = v82 + 48;
  v286 = v84;
  v86 = v84(v73, 1, v322);
  sub_1C0D13578(v73, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (v86 == 1 || (v87 = *(v76 + 32), v88 = v63, sub_1C0D13734(v79 + v87, v63, &qword_1EBE6D9D0, &qword_1C0D7CAF8), v89 = (v323 + 6), v283 = v323[6], v90 = v283(v88, 1, v324), sub_1C0D13578(v88, &qword_1EBE6D9D0, &qword_1C0D7CAF8), v90 == 1))
  {
    *&v331 = 0;
    *(&v331 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000028, 0x80000001C0D816D0);
    v91 = v288;
    sub_1C0D13734(v79 + v285, v288, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v92 = v286(v91, 1, v85);
    sub_1C0D13578(v91, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v93 = v92 == 1;
    v94 = 1702195828;
    if (v93)
    {
      v95 = 0x65736C6166;
    }

    else
    {
      v95 = 1702195828;
    }

    if (v93)
    {
      v96 = 0xE500000000000000;
    }

    else
    {
      v96 = 0xE400000000000000;
    }

    MEMORY[0x1C68E3B00](v95, v96);

    MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D81700);
    v97 = v79 + *(v76 + 32);
    v98 = v321;
    sub_1C0D13734(v97, v321, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if ((v323[6])(v98, 1, v324) == 1)
    {
      v94 = 0x65736C6166;
      v99 = 0xE500000000000000;
    }

    else
    {
      v99 = 0xE400000000000000;
    }

    sub_1C0D13578(v98, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    MEMORY[0x1C68E3B00](v94, v99);

    v100 = v331;
    sub_1C0D01E40();
    swift_allocError();
    *(v101 + 4) = 0;
    *(v101 + 8) = 1;
    *(v101 + 12) = 0;
    *(v101 + 16) = 256;
    *(v101 + 64) = v100;
    *v101 = 17;
    *(v101 + 24) = xmmword_1C0D7EDE0;
    *(v101 + 40) = 0xE800000000000000;
    *(v101 + 48) = 0xD00000000000006BLL;
    *(v101 + 56) = 0x80000001C0D81620;
    swift_willThrow();
    sub_1C0D03EF4(v79 + 1);
    sub_1C0CF448C(v326, v289);
    v102 = v79;
    return sub_1C0D6F0B8(v102, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v321 = v89;
  v323 = v79;
  v106 = v287;
  sub_1C0D13734(v79 + v285, v287, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v107 = v286;
  v108 = v286(v106, 1, v85);
  v109 = v284;
  if (v108 == 1)
  {
    v110 = v320;
    *v320 = 0;
    *(v110 + 1) = 0;
    *(v110 + 8) = 1;
    v110[5] = 0;
    *(v110 + 24) = 0;
    *(v110 + 2) = xmmword_1C0D7BAB0;
    *(v110 + 48) = 0;
    *(v110 + 14) = xmmword_1C0D7BAB0;
    v111 = v110 + *(v85 + 48);
    sub_1C0D783DC();
    v112 = v107(v106, 1, v85);
    v113 = v326;
    if (v112 != 1)
    {
      sub_1C0D13578(v106, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    }
  }

  else
  {
    v110 = v320;
    sub_1C0D37A20(v106, v320, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    v113 = v326;
  }

  result = sub_1C0D6E898(v110);
  if (v109)
  {
    v114 = v323;
    sub_1C0D03EF4(v323 + 1);
    sub_1C0CF448C(v113, v289);
    v102 = v114;
    return sub_1C0D6F0B8(v102, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
  }

  v115 = result;
  v325 = v87;
  *v319 = result;
  v116 = v323[1];
  v117 = v323[2];
  v118 = v117 >> 62;
  if ((v117 >> 62) <= 1)
  {
    v119 = v318;
    if (!v118)
    {
      v120 = BYTE6(v117);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v119 = v318;
  if (v118 != 2)
  {
    v120 = 0;
    goto LABEL_35;
  }

  v122 = *(v116 + 16);
  v121 = *(v116 + 24);
  v120 = v121 - v122;
  if (__OFSUB__(v121, v122))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v116), v116))
    {
      __break(1u);
      goto LABEL_189;
    }

    v120 = HIDWORD(v116) - v116;
  }

LABEL_35:
  v123 = *(result + 72);
  if (v120 == v123)
  {
    v284 = 0;
    *&v331 = v116;
    *(&v331 + 1) = v117;
    v322 = type metadata accessor for CKSecretSharing.HybridGenerator();
    v124 = *(v322 + 20);
    sub_1C0CF6468(v116, v117);
    sub_1C0D7868C();
    sub_1C0D13734(v323 + v325, v119, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    v125 = v324;
    v126 = v283;
    v127 = v321;
    if (v283(v119, 1, v324) == 1)
    {
      v128 = v317;
      *v317 = xmmword_1C0D7BAB0;
      v128[1] = xmmword_1C0D7BAB0;
      v128[2] = xmmword_1C0D7BAB0;
      v129 = v128 + *(v125 + 28);
      sub_1C0D783DC();
      result = v126(v119, 1, v125);
      if (result != 1)
      {
        result = sub_1C0D13578(v119, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
      }
    }

    else
    {
      v128 = v317;
      result = sub_1C0D37A20(v119, v317, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    }

    v134 = *v128;
    v135 = *(v128 + 1);
    v136 = (v135 >> 62);
    if ((v135 >> 62) <= 1)
    {
      if (!v136)
      {
        v137 = BYTE6(v135);
        goto LABEL_61;
      }

      v140 = __OFSUB__(HIDWORD(v134), v134);
      v147 = HIDWORD(v134) - v134;
      if (!v140)
      {
        v137 = v147;
        goto LABEL_61;
      }

LABEL_190:
      __break(1u);
      goto LABEL_191;
    }
  }

  else
  {
    v126 = 0xD00000000000006BLL;
    *&v331 = 0;
    *(&v331 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    result = MEMORY[0x1C68E3B00](0xD000000000000046, 0x80000001C0D81720);
    v130 = v323[1];
    v131 = v323[2];
    v132 = v131 >> 62;
    v127 = v123;
    if ((v131 >> 62) <= 1)
    {
      v119 = v289;
      if (!v132)
      {
        v123 = v120;
        v133 = BYTE6(v131);
LABEL_57:
        v327 = v133;
        v144 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v144);

        MEMORY[0x1C68E3B00](v126 - 57, 0x80000001C0D81770);
        v145 = v331;
        sub_1C0D01E40();
        swift_allocError();
        *(v146 + 4) = 0;
        *(v146 + 8) = 1;
        *(v146 + 12) = 0;
        *(v146 + 16) = 256;
        *(v146 + 64) = v145;
        *v146 = 17;
        *(v146 + 24) = xmmword_1C0D7ED80;
        *(v146 + 40) = 0xE800000000000000;
        *(v146 + 48) = v126;
        *(v146 + 56) = 0x80000001C0D81620;
        goto LABEL_174;
      }

      goto LABEL_55;
    }

    v123 = v120;
    v120 = v115;
    v133 = 0;
    v93 = v132 == 2;
    v136 = &v321;
    v119 = v289;
    if (!v93)
    {
      goto LABEL_57;
    }

    v139 = v130 + 16;
    v134 = *(v130 + 16);
    v138 = *(v139 + 8);
    v140 = __OFSUB__(v138, v134);
    v133 = v138 - v134;
    if (!v140)
    {
      goto LABEL_57;
    }

    __break(1u);
  }

  if (v136 != 2)
  {
    v137 = 0;
    goto LABEL_61;
  }

  v142 = v134 + 16;
  v130 = *(v134 + 16);
  v141 = *(v142 + 8);
  v137 = v141 - v130;
  if (__OFSUB__(v141, v130))
  {
    __break(1u);
LABEL_55:
    v140 = __OFSUB__(HIDWORD(v130), v130);
    v143 = HIDWORD(v130) - v130;
    if (!v140)
    {
      v123 = v120;
      v133 = v143;
      goto LABEL_57;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

LABEL_61:
  v148 = *(v115 + 88);
  sub_1C0D6F0B8(v317, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
  if (v137 == v148)
  {
    v149 = v123;
    v150 = v313;
    sub_1C0D13734(v323 + v325, v313, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    v151 = v324;
    v127 = v321;
    if (v126(v150, 1, v324) == 1)
    {
      v152 = v315;
      *v315 = xmmword_1C0D7BAB0;
      v152[1] = xmmword_1C0D7BAB0;
      v152[2] = xmmword_1C0D7BAB0;
      v153 = v152 + *(v151 + 28);
      sub_1C0D783DC();
      v119 = v126;
      result = v126(v150, 1, v151);
      if (result != 1)
      {
        result = sub_1C0D13578(v150, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
      }
    }

    else
    {
      v119 = v126;
      v152 = v315;
      result = sub_1C0D37A20(v150, v315, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    }

    v158 = *v152;
    v159 = *(v152 + 1);
    v160 = v159 >> 62;
    if ((v159 >> 62) <= 1)
    {
      v123 = v149;
      if (!v160)
      {
        v161 = BYTE6(v159);
LABEL_88:
        v171 = v119;
        goto LABEL_89;
      }

      v140 = __OFSUB__(HIDWORD(v158), v158);
      v170 = HIDWORD(v158) - v158;
      if (!v140)
      {
        v171 = v119;
        v161 = v170;
LABEL_89:
        v149 = v319;
        v172 = *(v115 + 88);
        sub_1C0D6F0B8(v315, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
        if (v161 == v172)
        {
          v320 = v120;
          v173 = v309;
          sub_1C0D13734(v323 + v325, v309, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
          v174 = v324;
          v119 = v321;
          if (v171(v173, 1, v324) == 1)
          {
            v175 = v311;
            *v311 = xmmword_1C0D7BAB0;
            v175[1] = xmmword_1C0D7BAB0;
            v175[2] = xmmword_1C0D7BAB0;
            v176 = v175 + *(v174 + 28);
            sub_1C0D783DC();
            result = v171(v173, 1, v174);
            if (result != 1)
            {
              result = sub_1C0D13578(v173, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
            }
          }

          else
          {
            v175 = v311;
            result = sub_1C0D37A20(v173, v311, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
          }

          v187 = *(v175 + 4);
          v188 = *(v175 + 5);
          v189 = v188 >> 62;
          if ((v188 >> 62) <= 1)
          {
            v190 = v320;
            if (!v189)
            {
              v191 = BYTE6(v188);
LABEL_118:
              v201 = *(v115 + 96);
              sub_1C0D6F0B8(v311, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
              if (v191 == v201)
              {
                v127 = v305;
                sub_1C0D13734(v323 + v325, v305, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                v202 = v324;
                if (v171(v127, 1, v324) == 1)
                {
                  v203 = v307;
                  *v307 = xmmword_1C0D7BAB0;
                  v203[1] = xmmword_1C0D7BAB0;
                  v203[2] = xmmword_1C0D7BAB0;
                  v204 = v203 + *(v202 + 28);
                  sub_1C0D783DC();
                  result = v171(v127, 1, v202);
                  if (result != 1)
                  {
                    result = sub_1C0D13578(v127, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                  }
                }

                else
                {
                  v203 = v307;
                  result = sub_1C0D37A20(v127, v307, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                }

                v212 = *(v203 + 4);
                v213 = *(v203 + 5);
                v214 = v213 >> 62;
                if ((v213 >> 62) <= 1)
                {
                  if (!v214)
                  {
                    v215 = BYTE6(v213);
LABEL_147:
                    v225 = *(v115 + 96);
                    sub_1C0D6F0B8(v307, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                    if (v215 == v225)
                    {
                      v226 = v299;
                      sub_1C0D13734(v323 + v325, v299, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                      v227 = v324;
                      if (v171(v226, 1, v324) == 1)
                      {
                        v228 = v301;
                        *v301 = xmmword_1C0D7BAB0;
                        v228[1] = xmmword_1C0D7BAB0;
                        v228[2] = xmmword_1C0D7BAB0;
                        v229 = v228 + *(v227 + 28);
                        sub_1C0D783DC();
                        v230 = v171(v226, 1, v227);
                        v231 = v303;
                        v232 = v302;
                        if (v230 != 1)
                        {
                          sub_1C0D13578(v226, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        }
                      }

                      else
                      {
                        v228 = v301;
                        sub_1C0D37A20(v226, v301, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        v231 = v303;
                        v232 = v302;
                      }

                      v240 = *v228;
                      v241 = *(v228 + 1);
                      sub_1C0CF6468(*v228, v241);
                      sub_1C0D6F0B8(v228, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                      *&v331 = v240;
                      *(&v331 + 1) = v241;
                      sub_1C0D17E68();
                      v242 = v284;
                      sub_1C0D7876C();
                      v243 = v242;
                      if (v242)
                      {
                        v244 = v289;
                      }

                      else
                      {
                        v284 = 0;
                        (*(v297 + 16))(v232, v231, v298);
                        v252 = v292;
                        sub_1C0D13734(v323 + v325, v292, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        if (v283(v252, 1, v324) == 1)
                        {
                          v253 = v294;
                          *v294 = xmmword_1C0D7BAB0;
                          v253[1] = xmmword_1C0D7BAB0;
                          v253[2] = xmmword_1C0D7BAB0;
                          v254 = v324;
                          v255 = v253 + *(v324 + 28);
                          sub_1C0D783DC();
                          if (v283(v252, 1, v254) != 1)
                          {
                            sub_1C0D13578(v252, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                          }
                        }

                        else
                        {
                          v253 = v294;
                          sub_1C0D37A20(v252, v294, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        }

                        v262 = *(v253 + 2);
                        v263 = *(v253 + 3);
                        sub_1C0CF6468(v262, v263);
                        sub_1C0D6F0B8(v253, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        *&v331 = v262;
                        *(&v331 + 1) = v263;
                        v264 = v293;
                        sub_1C0D13734(v323 + v325, v293, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                        v265 = v324;
                        v266 = v283;
                        if (v283(v264, 1, v324) == 1)
                        {
                          v267 = v295;
                          *v295 = xmmword_1C0D7BAB0;
                          v267[1] = xmmword_1C0D7BAB0;
                          v267[2] = xmmword_1C0D7BAB0;
                          v268 = v267 + *(v265 + 28);
                          sub_1C0D783DC();
                          if (v266(v264, 1, v265) != 1)
                          {
                            sub_1C0D13578(v264, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                          }
                        }

                        else
                        {
                          v267 = v295;
                          sub_1C0D37A20(v264, v295, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        }

                        v269 = v267;
                        v270 = *(v267 + 4);
                        v271 = *(v267 + 5);
                        sub_1C0CF6468(v270, v271);
                        sub_1C0D6F0B8(v269, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        v327 = v270;
                        v328 = v271;
                        v272 = v296;
                        v273 = v284;
                        sub_1C0D787AC();
                        v243 = v273;
                        v244 = v289;
                        if (!v273)
                        {
                          (*(v297 + 8))(v303, v298);
                          (*(v290 + 32))(v149 + *(v322 + 24), v272, v291);
                          v281 = v323;
                          sub_1C0D03EF4(v323 + 1);
                          sub_1C0CF448C(v326, v244);
                          v102 = v281;
                          return sub_1C0D6F0B8(v102, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);
                        }

                        (*(v297 + 8))(v303, v298);
                      }

                      *&v331 = v243;
                      v274 = v243;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
                      if (swift_dynamicCast())
                      {
                        v327 = v243;
                        v275 = v243;
                        swift_dynamicCast();
                        v276 = v243;
                        v277 = v329;
                        v278 = v330;
                        sub_1C0D01E40();
                        swift_allocError();
                        *(v279 + 4) = 0;
                        *(v279 + 8) = 1;
                        *(v279 + 16) = v278 != 0;
                        *(v279 + 12) = v277;
                        *(v279 + 17) = 0;
                        *(v279 + 64) = 0xD00000000000002CLL;
                        *(v279 + 72) = 0x80000001C0D818C0;
                        *v279 = 17;
                        *(v279 + 24) = xmmword_1C0D7EDD0;
                        *(v279 + 40) = 0xE800000000000000;
                        *(v279 + 48) = 0xD00000000000006BLL;
                        *(v279 + 56) = 0x80000001C0D81620;
                        swift_willThrow();
                      }

                      else
                      {

                        swift_willThrow();
                      }

                      v280 = v323;
                      sub_1C0D03EF4(v323 + 1);
                      sub_1C0CF448C(v326, v244);
                      sub_1C0D6F0B8(v280, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

LABEL_175:
                      v260 = *(type metadata accessor for CKSecretSharing.HybridGenerator() + 20);
                      v261 = sub_1C0D786AC();
                      return (*(*(v261 - 8) + 8))(v319 + v260, v261);
                    }

                    v149 = 0xD00000000000006BLL;
                    *&v331 = 0;
                    *(&v331 + 1) = 0xE000000000000000;
                    sub_1C0D78DAC();
                    MEMORY[0x1C68E3B00](0xD000000000000051, 0x80000001C0D81860);
                    v233 = v300;
                    sub_1C0D13734(v323 + v325, v300, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                    v234 = v324;
                    if (v171(v233, 1, v324) == 1)
                    {
                      v235 = v304;
                      *v304 = xmmword_1C0D7BAB0;
                      v235[1] = xmmword_1C0D7BAB0;
                      v235[2] = xmmword_1C0D7BAB0;
                      v236 = v235 + *(v234 + 28);
                      sub_1C0D783DC();
                      v93 = v171(v233, 1, v234) == 1;
                      result = v233;
                      v119 = v289;
                      if (!v93)
                      {
                        result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                      }
                    }

                    else
                    {
                      v235 = v304;
                      result = sub_1C0D37A20(v233, v304, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                      v119 = v289;
                    }

                    v127 = v123;
                    v245 = *(v235 + 4);
                    v246 = *(v235 + 5);
                    v247 = v246 >> 62;
                    v123 = v190;
                    if ((v246 >> 62) <= 1)
                    {
                      if (!v247)
                      {
                        v248 = v115;
                        v245 = BYTE6(v246);
LABEL_172:
                        v327 = v245;
                        v256 = sub_1C0D78F2C();
                        MEMORY[0x1C68E3B00](v256);

                        sub_1C0D6F0B8(v304, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                        MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
                        v327 = *(v248 + 96);
                        v257 = sub_1C0D78F2C();
                        MEMORY[0x1C68E3B00](v257);

                        v258 = *(&v331 + 1);
                        v183 = v331;
                        sub_1C0D01E40();
                        swift_allocError();
                        *(v185 + 4) = 0;
                        *(v185 + 8) = 1;
                        *(v185 + 12) = 0;
                        *(v185 + 16) = 256;
                        *(v185 + 72) = v258;
                        *v185 = 17;
                        v186 = xmmword_1C0D7EDC0;
                        goto LABEL_173;
                      }

                      v140 = __OFSUB__(HIDWORD(v245), v245);
                      LODWORD(v245) = HIDWORD(v245) - v245;
                      if (!v140)
                      {
                        v248 = v115;
                        v245 = v245;
                        goto LABEL_172;
                      }

LABEL_201:
                      __break(1u);
                      return result;
                    }

                    if (v247 != 2)
                    {
                      v248 = v115;
                      v245 = 0;
                      goto LABEL_172;
                    }

                    v251 = (v245 + 16);
                    v249 = *(v245 + 16);
                    v250 = v251[1];
                    v140 = __OFSUB__(v250, v249);
                    v245 = v250 - v249;
                    if (!v140)
                    {
                      v248 = v115;
                      goto LABEL_172;
                    }

LABEL_200:
                    __break(1u);
                    goto LABEL_201;
                  }

                  v140 = __OFSUB__(HIDWORD(v212), v212);
                  v224 = HIDWORD(v212) - v212;
                  if (!v140)
                  {
                    v215 = v224;
                    goto LABEL_147;
                  }

                  goto LABEL_198;
                }

                if (v214 != 2)
                {
                  v215 = 0;
                  goto LABEL_147;
                }

                v220 = v212 + 16;
                v216 = *(v212 + 16);
                v219 = *(v220 + 8);
                v215 = v219 - v216;
                if (!__OFSUB__(v219, v216))
                {
                  goto LABEL_147;
                }

                __break(1u);
              }

              else
              {
                v149 = 0xD00000000000006BLL;
                *&v331 = 0;
                *(&v331 + 1) = 0xE000000000000000;
                sub_1C0D78DAC();
                MEMORY[0x1C68E3B00](0xD000000000000051, 0x80000001C0D81860);
                v205 = v306;
                sub_1C0D13734(v323 + v325, v306, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                v206 = v324;
                if (v171(v205, 1, v324) == 1)
                {
                  v207 = v308;
                  *v308 = xmmword_1C0D7BAB0;
                  v207[1] = xmmword_1C0D7BAB0;
                  v207[2] = xmmword_1C0D7BAB0;
                  v208 = v207 + *(v206 + 28);
                  sub_1C0D783DC();
                  v93 = v171(v205, 1, v206) == 1;
                  result = v205;
                  v119 = v289;
                  if (!v93)
                  {
                    result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
                  }
                }

                else
                {
                  v207 = v308;
                  result = sub_1C0D37A20(v205, v308, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                  v119 = v289;
                }

                v127 = v123;
                v216 = *(v207 + 4);
                v217 = *(v207 + 5);
                v214 = v217 >> 62;
                v123 = v190;
                if ((v217 >> 62) <= 1)
                {
                  if (v214)
                  {
                    v140 = __OFSUB__(HIDWORD(v216), v216);
                    LODWORD(v216) = HIDWORD(v216) - v216;
                    if (v140)
                    {
LABEL_199:
                      __break(1u);
                      goto LABEL_200;
                    }

                    v218 = v115;
                    v216 = v216;
                  }

                  else
                  {
                    v218 = v115;
                    v216 = BYTE6(v217);
                  }

                  goto LABEL_155;
                }
              }

              if (v214 != 2)
              {
                v218 = v115;
                v216 = 0;
                goto LABEL_155;
              }

              v223 = (v216 + 16);
              v221 = *(v216 + 16);
              v222 = v223[1];
              v140 = __OFSUB__(v222, v221);
              v216 = v222 - v221;
              if (!v140)
              {
                v218 = v115;
LABEL_155:
                v327 = v216;
                v237 = sub_1C0D78F2C();
                MEMORY[0x1C68E3B00](v237);

                sub_1C0D6F0B8(v308, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
                MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
                v327 = *(v218 + 96);
                v238 = sub_1C0D78F2C();
                MEMORY[0x1C68E3B00](v238);

                v239 = *(&v331 + 1);
                v183 = v331;
                sub_1C0D01E40();
                swift_allocError();
                *(v185 + 4) = 0;
                *(v185 + 8) = 1;
                *(v185 + 12) = 0;
                *(v185 + 16) = 256;
                *(v185 + 72) = v239;
                *v185 = 17;
                v186 = xmmword_1C0D7EDB0;
                goto LABEL_173;
              }

LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

            v140 = __OFSUB__(HIDWORD(v187), v187);
            v200 = HIDWORD(v187) - v187;
            if (!v140)
            {
              v191 = v200;
              goto LABEL_118;
            }

            goto LABEL_195;
          }

          v190 = v320;
          if (v189 != 2)
          {
            v191 = 0;
            goto LABEL_118;
          }

          v196 = v187 + 16;
          v192 = *(v187 + 16);
          v195 = *(v196 + 8);
          v191 = v195 - v192;
          if (!__OFSUB__(v195, v192))
          {
            goto LABEL_118;
          }

          __break(1u);
        }

        else
        {
          v149 = 0xD00000000000006BLL;
          *&v331 = 0;
          *(&v331 + 1) = 0xE000000000000000;
          sub_1C0D78DAC();
          MEMORY[0x1C68E3B00](0xD000000000000053, 0x80000001C0D81800);
          v177 = v310;
          sub_1C0D13734(v323 + v325, v310, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
          v178 = v324;
          if (v171(v177, 1, v324) == 1)
          {
            v179 = v312;
            *v312 = xmmword_1C0D7BAB0;
            v179[1] = xmmword_1C0D7BAB0;
            v179[2] = xmmword_1C0D7BAB0;
            v180 = v179 + *(v178 + 28);
            sub_1C0D783DC();
            v93 = v171(v177, 1, v178) == 1;
            result = v177;
            v119 = v289;
            if (!v93)
            {
              result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
            }
          }

          else
          {
            v179 = v312;
            result = sub_1C0D37A20(v177, v312, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
            v119 = v289;
          }

          v127 = v123;
          v192 = *v179;
          v193 = *(v179 + 1);
          v189 = v193 >> 62;
          v123 = v120;
          if ((v193 >> 62) <= 1)
          {
            if (v189)
            {
              v140 = __OFSUB__(HIDWORD(v192), v192);
              LODWORD(v192) = HIDWORD(v192) - v192;
              if (v140)
              {
LABEL_196:
                __break(1u);
                goto LABEL_197;
              }

              v194 = v115;
              v192 = v192;
            }

            else
            {
              v194 = v115;
              v192 = BYTE6(v193);
            }

            goto LABEL_126;
          }
        }

        if (v189 != 2)
        {
          v194 = v115;
          v192 = 0;
          goto LABEL_126;
        }

        v199 = (v192 + 16);
        v197 = *(v192 + 16);
        v198 = v199[1];
        v140 = __OFSUB__(v198, v197);
        v192 = v198 - v197;
        if (!v140)
        {
          v194 = v115;
LABEL_126:
          v327 = v192;
          v209 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v209);

          sub_1C0D6F0B8(v312, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
          MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
          v327 = *(v194 + 88);
          v210 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v210);

          v211 = *(&v331 + 1);
          v183 = v331;
          sub_1C0D01E40();
          swift_allocError();
          *(v185 + 4) = 0;
          *(v185 + 8) = 1;
          *(v185 + 12) = 0;
          *(v185 + 16) = 256;
          *(v185 + 72) = v211;
          *v185 = 17;
          v186 = xmmword_1C0D7EDA0;
          goto LABEL_173;
        }

LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      goto LABEL_192;
    }

    v123 = v149;
    if (v160 != 2)
    {
      v161 = 0;
      goto LABEL_88;
    }

    v166 = v158 + 16;
    v162 = *(v158 + 16);
    v165 = *(v166 + 8);
    v161 = v165 - v162;
    if (!__OFSUB__(v165, v162))
    {
      goto LABEL_88;
    }

    __break(1u);
LABEL_80:
    if (v160 != 2)
    {
      v164 = v115;
      v162 = 0;
      goto LABEL_97;
    }

    v169 = (v162 + 16);
    v167 = *(v162 + 16);
    v168 = v169[1];
    v140 = __OFSUB__(v168, v167);
    v162 = v168 - v167;
    if (!v140)
    {
      v164 = v115;
      goto LABEL_97;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v149 = 0xD00000000000006BLL;
  *&v331 = 0;
  *(&v331 + 1) = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000048, 0x80000001C0D817B0);
  v154 = v314;
  sub_1C0D13734(v323 + v325, v314, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v155 = v324;
  if (v126(v154, 1, v324) == 1)
  {
    v156 = v316;
    *v316 = xmmword_1C0D7BAB0;
    v156[1] = xmmword_1C0D7BAB0;
    v156[2] = xmmword_1C0D7BAB0;
    v157 = v156 + *(v155 + 28);
    sub_1C0D783DC();
    v93 = v126(v154, 1, v155) == 1;
    result = v154;
    v119 = v289;
    if (!v93)
    {
      result = sub_1C0D13578(result, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    }
  }

  else
  {
    v156 = v316;
    result = sub_1C0D37A20(v154, v316, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    v119 = v289;
  }

  v127 = v123;
  v162 = *v156;
  v163 = *(v156 + 1);
  v160 = v163 >> 62;
  v123 = v120;
  if ((v163 >> 62) > 1)
  {
    goto LABEL_80;
  }

  if (v160)
  {
    v140 = __OFSUB__(HIDWORD(v162), v162);
    LODWORD(v162) = HIDWORD(v162) - v162;
    if (v140)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v164 = v115;
    v162 = v162;
  }

  else
  {
    v164 = v115;
    v162 = BYTE6(v163);
  }

LABEL_97:
  v327 = v162;
  v181 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v181);

  sub_1C0D6F0B8(v316, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
  MEMORY[0x1C68E3B00](0x707865202E737620, 0xEE00206465746365);
  v327 = *(v164 + 88);
  v182 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v182);

  v184 = *(&v331 + 1);
  v183 = v331;
  sub_1C0D01E40();
  swift_allocError();
  *(v185 + 4) = 0;
  *(v185 + 8) = 1;
  *(v185 + 12) = 0;
  *(v185 + 16) = 256;
  *(v185 + 72) = v184;
  *v185 = 17;
  v186 = xmmword_1C0D7ED90;
LABEL_173:
  *(v185 + 24) = v186;
  *(v185 + 40) = 0xE800000000000000;
  *(v185 + 48) = v149;
  *(v185 + 56) = 0x80000001C0D81620;
  *(v185 + 64) = v183;
LABEL_174:
  swift_willThrow();
  v259 = v323;
  sub_1C0D03EF4(v323 + 1);
  sub_1C0CF448C(v326, v119);
  sub_1C0D6F0B8(v259, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

  if (v123 == v127)
  {
    goto LABEL_175;
  }

  return result;
}