uint64_t sub_1AE02D2AC(unint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = a1;
    switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
    {
      case 7uLL:
        v20 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        v21 = v20[8];
        v22 = v20[9];
        v23 = v20[10];
        if (v21)
        {
          v24 = v20[8];
        }

        else
        {
          v24 = MEMORY[0x1E69E7CC0];
        }

        if (v21)
        {
          v25 = v20[9];
        }

        else
        {
          v25 = 0;
        }

        v26 = 0xC000000000000000;
        if (v21)
        {
          v26 = v20[10];
        }

        v85 = v26;
        v88 = v25;

        sub_1ADE51B2C(v2);

        sub_1ADE56F74(v21, v22, v23);
        sub_1AE02EA38(v24);
        v28 = v27;
        v30 = v29;
        v32 = v31;

        sub_1ADDCC35C(v88, v85);
        if (v1)
        {

          goto LABEL_32;
        }

        v59 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v59 = sub_1ADDE4C34(v20);
        }

        swift_beginAccess();
        v60 = v59[8];
        v61 = v59[9];
        v62 = v59[10];
        v59[8] = v28;
        v59[9] = v30;
        v59[10] = v32;
        sub_1ADE73D6C(v60, v61, v62);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Value._StorageClass();
          v63 = swift_allocObject();
          v64 = *(v3 + 16);
          *(v63 + 16) = v64;
          sub_1ADE51B2C(v64);

          v3 = v63;
        }

        v65 = swift_allocObject();
        *(v65 + 16) = v59;
        v66 = v65 | 0x3000000000000004;
        goto LABEL_76;
      case 8uLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (!*(v33 + 16))
        {
          goto LABEL_3;
        }

        sub_1ADE51B2C(v2);

        v35 = sub_1AE02D2AC(v34);
        if (v1)
        {

LABEL_32:
          sub_1ADE51B48(v2);
        }

        else
        {
          v89 = v35;

          v75 = v3;
          v76 = *(v3 + 16);
          if ((~v76 & 0xF000000000000007) != 0 && ((v76 >> 59) & 0x1E | (v76 >> 2) & 1) == 8)
          {

            inited = *((v76 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_Optional._StorageClass();
            inited = swift_initStaticObject();
          }

          v3 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Optional._StorageClass();
            v78 = swift_allocObject();
            *(v78 + 16) = 0;
            swift_beginAccess();
            v79 = *(inited + 16);
            swift_beginAccess();
            *(v78 + 16) = v79;

            inited = v78;
          }

          swift_beginAccess();
          v80 = *(inited + 16);
          *(inited + 16) = v89;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Value._StorageClass();
            v81 = swift_allocObject();
            v82 = *(v3 + 16);
            *(v81 + 16) = v82;
            sub_1ADE51B2C(v82);

            v3 = v81;
          }

          v83 = swift_allocObject();
          *(v83 + 16) = inited;
          v66 = v83 | 0x4000000000000000;
LABEL_76:
          v84 = *(v3 + 16);
          *(v3 + 16) = v66;
          sub_1ADE51B48(v84);
          sub_1ADE51B48(v2);
        }

        return v3;
      case 0xAuLL:
        v11 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v12 = *(v11 + 16);
        if (!v12)
        {

          sub_1ADE51B2C(v2);
          v17 = v3;
          v16 = MEMORY[0x1E69E7CC0];
          goto LABEL_46;
        }

        v91 = MEMORY[0x1E69E7CC0];

        sub_1ADE51B2C(v2);

        sub_1AE23DB1C();
        v3 = 0;
        while (1)
        {
          if (v3 >= *(v11 + 16))
          {
            goto LABEL_78;
          }

          v13 = *(v11 + 8 * v3 + 32);

          sub_1AE02D2AC(v14);
          if (v1)
          {
            break;
          }

          ++v3;

          sub_1AE23DAEC();
          v15 = *(v91 + 16);
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          if (v12 == v3)
          {

            v16 = v91;
            v17 = a1;
LABEL_46:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_Value._StorageClass();
              v50 = swift_allocObject();
              v51 = *(v17 + 16);
              *(v50 + 16) = v51;
              sub_1ADE51B2C(v51);

              v17 = v50;
            }

            v52 = swift_allocObject();
            *(v52 + 16) = v16;
            v53 = v52 | 0x5000000000000000;
            v54 = *(v17 + 16);
            *(v17 + 16) = v53;
            sub_1ADE51B48(v54);
            sub_1ADE51B48(v2);
            return v17;
          }
        }

LABEL_36:

        sub_1ADE51B48(v2);

        return v3;
      case 0xBuLL:
        v18 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (*(v18 + 24))
        {
          v19 = *(v18 + 24);
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v19 = swift_initStaticObject();
        }

        sub_1ADE51B2C(v2);

        v55 = sub_1AE02D2AC(v19);
        if (v1)
        {

          sub_1ADE51B48(v2);
        }

        else
        {
          v56 = v55;

          v57 = *(v3 + 16);
          if ((~v57 & 0xF000000000000007) != 0 && ((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xB)
          {
            v58 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v58 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();

            v68 = sub_1ADDE5178(v67);

            v58 = v68;
          }

          swift_beginAccess();
          v69 = *(v58 + 24);
          *(v58 + 24) = v56;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Value._StorageClass();
            v70 = swift_allocObject();
            v71 = *(v3 + 16);
            *(v70 + 16) = v71;
            sub_1ADE51B2C(v71);

            v3 = v70;
          }

          v72 = swift_allocObject();
          *(v72 + 16) = v58;
          v73 = v72 | 0x5000000000000004;
          v74 = *(v3 + 16);
          *(v3 + 16) = v73;
          sub_1ADE51B48(v74);
          sub_1ADE51B48(v2);
        }

        return v3;
      case 0xDuLL:
        v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v6 = *(v5 + 16);
        if (!v6)
        {

          sub_1ADE51B2C(v2);
          v10 = MEMORY[0x1E69E7CC0];
          goto LABEL_38;
        }

        v90 = MEMORY[0x1E69E7CC0];

        sub_1ADE51B2C(v2);

        sub_1AE23DB1C();
        v3 = 0;
        break;
      case 0xEuLL:
        v36 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1ADE51B2C(v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Value._StorageClass();
          v37 = swift_allocObject();
          v38 = *(v3 + 16);
          *(v37 + 16) = v38;
          sub_1ADE51B2C(v38);

          v3 = v37;
        }

        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        v40 = v39 | 4;
        v41 = *(v3 + 16);
        *(v3 + 16) = v40;
        sub_1ADE51B48(v41);
        sub_1ADE51B48(v2);
        return v3;
      default:
LABEL_3:

        return v3;
    }

    while (v3 < *(v5 + 16))
    {
      v7 = *(v5 + 8 * v3 + 32);

      sub_1AE02D2AC(v8);
      if (v1)
      {
        goto LABEL_36;
      }

      ++v3;

      sub_1AE23DAEC();
      v9 = *(v90 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      if (v6 == v3)
      {

        v10 = v90;
        v3 = a1;
LABEL_38:
        v42 = *(v3 + 16);
        if ((~v42 & 0xF000000000000007) != 0 && ((v42 >> 59) & 0x1E | (v42 >> 2) & 1) == 0xD)
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_44;
          }

LABEL_43:
          type metadata accessor for Proto_Value._StorageClass();
          v45 = swift_allocObject();
          v46 = *(v3 + 16);
          *(v45 + 16) = v46;
          sub_1ADE51B2C(v46);

          v3 = v45;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = MEMORY[0x1E69E7CC0];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_44:
        v47 = swift_allocObject();
        *(v47 + 16) = v43;
        *(v47 + 24) = v10;
        v48 = v47 | 0x6000000000000004;
        v49 = *(v3 + 16);
        *(v3 + 16) = v48;
        sub_1ADE51B48(v49);
        sub_1ADE51B48(v2);
        return v3;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
  }

  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1AE02DD40(uint64_t a1)
{
  type metadata accessor for Proto_Register._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (*(a1 + 32))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 24);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE8D20(inited);
  }

  swift_beginAccess();
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  *(inited + 32) = 0;
  swift_beginAccess();
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v7 = swift_initStaticObject();
  }

  v8 = sub_1AE02D2AC(v7);

  if (v1)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE8D20(inited);
    }

    swift_beginAccess();
    v9 = *(inited + 40);
    *(inited + 40) = v8;
  }

  return inited;
}

uint64_t sub_1AE02DEDC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v56 = v6;
  v7 = *(a1 + 32);
  v52 = *(a1 + 16);
  v53 = v7;
  v8 = *(a1 + 64);
  v54 = *(a1 + 48);
  v55 = v8;
  v9 = *(v6 + 16);
  if (!v9)
  {
    sub_1ADFAEE10(a1, &v46);
    sub_1ADDCEDE0(&v56, qword_1EB5BBB90, &unk_1AE24EC40);
    v29 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *&v41 = v5;
    *(&v41 + 1) = v29;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v5;
    v47 = v29;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_1ADFAEE10(&v41, v40);
    result = sub_1ADFAECE8(&v46);
    v31 = v44;
    v4[2] = v43;
    v4[3] = v31;
    v4[4] = v45;
    v32 = v42;
    *v4 = v41;
    v4[1] = v32;
    return result;
  }

  v36 = v5;
  sub_1ADFAEE10(a1, &v46);
  *&v41 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F03C(0, v9, 0);
  v10 = v41;
  v35 = v6;
  v11 = (v6 + 64);
  while (1)
  {
    v39 = v10;
    v12 = *(v11 - 3);
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (*(v11 - 4))
    {

      sub_1ADE42C78(v13);

      sub_1ADE42C78(v13);

      v17 = sub_1AE02D2AC(v16);
      if (v3)
      {

        sub_1ADE42CB8(v13);

        v33 = v36;
        goto LABEL_18;
      }

      v38 = v17;

      v37 = v9;
      if (!v12)
      {
LABEL_9:
        v23 = v3;

        v19 = v13;
        v20 = v14;
        sub_1ADE42CB8(v13);

        v24 = 0;
        goto LABEL_10;
      }
    }

    else
    {

      sub_1ADE42C78(v13);

      sub_1ADE42C78(v13);

      v38 = 0;
      v37 = v9;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v18 = v3;
    v19 = v13;
    v20 = v14;

    v22 = sub_1AE02CA90(v21);
    v23 = v18;
    if (v18)
    {
      break;
    }

    v24 = v22;

    sub_1ADE42CB8(v19);

LABEL_10:
    v10 = v39;
    *&v41 = v39;
    v26 = *(v39 + 16);
    v25 = *(v39 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1ADE6F03C((v25 > 1), v26 + 1, 1);
      v10 = v41;
    }

    v11 += 5;
    *(v10 + 16) = v26 + 1;
    v27 = (v10 + 40 * v26);
    v27[4] = v38;
    v27[5] = v24;
    v27[6] = v19;
    v27[7] = v20;
    v27[8] = v15;
    v9 = v37 - 1;
    v3 = v23;
    if (v37 == 1)
    {
      v28 = v10;
      sub_1ADDCEDE0(&v56, qword_1EB5BBB90, &unk_1AE24EC40);
      v29 = v28;
      v5 = v36;
      v4 = a2;
      goto LABEL_15;
    }
  }

  sub_1ADE42CB8(v13);

  v33 = v36;
LABEL_18:

  sub_1ADE42CB8(v13);

  v46 = v33;
  v47 = v35;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  return sub_1ADFAECE8(&v46);
}

uint64_t sub_1AE02E2D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AE23DB1C();
    v6 = (a2 + 32);
    while (1)
    {
      v7 = *v6;

      sub_1AE02CA90(v8);
      if (v2)
      {
        break;
      }

      sub_1AE23DAEC();
      v9 = *(v11 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      ++v6;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
  }

  return a1;
}

uint64_t sub_1AE02E3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v34[0] = v4;
  v5 = *a1;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v30 = *(a1 + 56);
  v31 = v7;
  v32 = *(a1 + 88);
  v33 = v5;
  v28 = *(a1 + 24);
  v29 = v6;
  v8 = *(v4 + 16);
  if (v8)
  {
    v35 = a2;
    *&v19 = MEMORY[0x1E69E7CC0];
    sub_1ADE51B64(a1, &v21);
    sub_1AE23DB1C();
    v9 = 32;
    while (1)
    {
      v10 = *(v4 + v9);

      sub_1AE02D2AC(v11);
      if (v2)
      {
        break;
      }

      sub_1AE23DAEC();
      v12 = *(v19 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v9 += 8;
      if (!--v8)
      {
        sub_1ADDCEDE0(v34, &qword_1EB5BCCC8, &qword_1AE251C00);
        v13 = v19;
        v3 = v35;
        goto LABEL_7;
      }
    }

    v21 = v33;
    v22 = v4;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v23 = v28;
    return sub_1AE030800(&v21);
  }

  else
  {
    sub_1ADE51B64(a1, &v21);
    sub_1ADDCEDE0(v34, &qword_1EB5BCCC8, &qword_1AE251C00);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v19 = v33;
    *v20 = v13;
    *&v20[24] = v29;
    *&v20[40] = v30;
    *&v20[56] = v31;
    *&v20[72] = v32;
    *&v20[8] = v28;
    v21 = v33;
    v22 = v13;
    v25 = v30;
    v24 = v29;
    v26 = v31;
    v23 = v28;
    v27 = v32;
    sub_1ADE51B64(&v19, v18);
    result = sub_1AE030800(&v21);
    v15 = *&v20[64];
    *(v3 + 64) = *&v20[48];
    *(v3 + 80) = v15;
    *(v3 + 96) = *&v20[80];
    v16 = *v20;
    *v3 = v19;
    *(v3 + 16) = v16;
    v17 = *&v20[32];
    *(v3 + 32) = *&v20[16];
    *(v3 + 48) = v17;
  }

  return result;
}

uint64_t sub_1AE02E614(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  v64 = *(a1 + 16);
  *v65 = v3;
  v4 = *(a1 + 64);
  *&v65[16] = *(a1 + 48);
  *&v65[32] = v4;
  v66 = *(a1 + 80);
  v5 = *(&v64 + 1);
  v6 = MEMORY[0x1E69E7CC0];
  if (*(&v64 + 1))
  {
    v7 = v64;
    v8 = *v65;
    v9 = *&v65[8];
    v10 = *&v65[24];
    v11 = v66;
    v12 = v65[40];
  }

  else
  {
    v7 = 0;
    v11 = 0uLL;
    v12 = 1;
    v5 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *&v55 = v7;
  *(&v55 + 1) = v5;
  *v56 = v8;
  *&v56[8] = v9;
  *&v56[24] = v10;
  v56[40] = v12 & 1;
  v57 = v11;
  v63[0] = v55;
  v63[1] = *v56;
  v63[2] = *&v56[16];
  v63[3] = *&v56[32];
  v63[4] = v11;

  sub_1ADDCEE40(&v64, &v52, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1AE02DEDC(v63, v58);
  sub_1ADFAECE8(&v55);
  if (v1)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v13 = sub_1AE1D0514(a1);

      a1 = v13;
    }

    v48 = v58[2];
    v49 = v58[3];
    v50 = v58[4];
    v46 = v58[0];
    v47 = v58[1];
    swift_beginAccess();
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    v51[3] = *(a1 + 64);
    v51[4] = v16;
    v51[1] = v14;
    v51[2] = v15;
    v51[0] = *(a1 + 16);
    v17 = v50;
    *(a1 + 64) = v49;
    *(a1 + 80) = v17;
    v18 = v48;
    *(a1 + 32) = v47;
    *(a1 + 48) = v18;
    *(a1 + 16) = v46;
    sub_1ADDCEDE0(v51, &qword_1EB5BCC30, &qword_1AE2580D0);
    swift_beginAccess();
    v19 = *(a1 + 176);
    *&v54[32] = *(a1 + 160);
    *&v54[48] = v19;
    v20 = *(a1 + 96);
    v21 = *(a1 + 112);
    *&v54[64] = *(a1 + 192);
    v52 = v20;
    v53 = v21;
    v22 = *(a1 + 144);
    *v54 = *(a1 + 128);
    *&v54[16] = v22;
    v23 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      v24 = v53;
      v25 = v52;
      v6 = *v54;
      v26 = *&v54[8];
      v27 = *&v54[24];
      v28 = *&v54[40];
      v29 = *&v54[56];
    }

    else
    {
      v25 = 0;
      v24 = vdupq_n_s64(v6);
      v26 = 0uLL;
      v23 = 0xE000000000000000;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
    }

    *&v44[0] = v25;
    *(&v44[0] + 1) = v23;
    v44[1] = v24;
    *v45 = v6;
    *&v45[8] = v26;
    *&v45[24] = v27;
    *&v45[40] = v28;
    *&v45[56] = v29;
    v61[4] = *&v45[32];
    v61[5] = *&v45[48];
    v62 = *(&v29 + 1);
    v61[0] = v44[0];
    v61[1] = v24;
    v61[2] = *v45;
    v61[3] = *&v45[16];
    sub_1ADDCEE40(&v52, v42, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1AE02E3EC(v61, v59);
    sub_1AE030800(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v31 = sub_1AE1D0514(a1);

      a1 = v31;
    }

    v39 = v59[4];
    v40 = v59[5];
    v41 = v60;
    v35 = v59[0];
    v36 = v59[1];
    v37 = v59[2];
    v38 = v59[3];
    swift_beginAccess();
    v43 = *(a1 + 192);
    v32 = *(a1 + 176);
    v42[4] = *(a1 + 160);
    v42[5] = v32;
    v33 = *(a1 + 112);
    v42[0] = *(a1 + 96);
    v42[1] = v33;
    v34 = *(a1 + 144);
    v42[2] = *(a1 + 128);
    v42[3] = v34;
    *(a1 + 96) = v35;
    *(a1 + 112) = v36;
    *(a1 + 192) = v41;
    *(a1 + 160) = v39;
    *(a1 + 176) = v40;
    *(a1 + 128) = v37;
    *(a1 + 144) = v38;
    sub_1ADDCEDE0(v42, &qword_1EB5BCC28, &unk_1AE251820);
  }

  return a1;
}

void sub_1AE02EA38(uint64_t a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23CD5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v17 = 0xD000000000000021;
    *(v17 + 8) = 0x80000001AE262320;
    *(v17 + 16) = 0;
    swift_willThrow();
    return;
  }

  v15 = *(*(a1 + 32) + 16);
  if ((~v15 & 0xF000000000000007) == 0)
  {
LABEL_3:
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001AE262350;
    *(v16 + 16) = 0;
    swift_willThrow();

    sub_1ADDCC35C(0, 0xC000000000000000);
    return;
  }

  v18 = (v15 >> 59) & 0x1E | (v15 >> 2) & 1;
  if (v18 == 5)
  {
    v32 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = *(v1 + 16);
      if (v32 < *(v33 + 16))
      {
        (*(v4 + 16))(v7, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v3, v12);
        sub_1ADE51B2C(v15);
        v40 = sub_1ADDCC6B4(&unk_1F23BBB90);
        v41 = v34;
        v35 = sub_1ADDD8E0C();
        v37 = v36;
        sub_1AE23BEEC();
        sub_1ADDCC35C(v35, v37);
        (*(v4 + 8))(v7, v3);
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 == 3)
  {
    v29 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v30 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1ADE51B2C(v15);
    sub_1ADDD86D8(v29, v30);
    v40 = sub_1ADDCC6B4(&unk_1F23BBBB8);
    v41 = v31;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v29, v30);
    goto LABEL_16;
  }

  if (v18 != 2)
  {
    goto LABEL_3;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v20 = *(v1 + 32);
  if (v19 >= *(v20 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v11;
  v22 = v20 + 16 * v19;
  v24 = *(v22 + 32);
  v23 = *(v22 + 40);

  sub_1ADE51B2C(v15);
  v40 = sub_1ADDCC6B4(&unk_1F23BBB68);
  v41 = v25;
  sub_1AE23CD4C();
  v26 = sub_1AE23CD1C();
  v28 = v27;
  (*(v9 + 8))(v14, v21);
  if (v28 >> 60 != 15)
  {

    sub_1AE23BEEC();
    sub_1ADDE1588(v26, v28);
LABEL_16:
    v38 = v40;
    v39 = v41;
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1ADE51B48(v15);

    sub_1ADDD86D8(v38, v39);

    sub_1ADDCC35C(v38, v39);
    return;
  }

LABEL_21:
  __break(1u);
}

sqlite3_stmt *sub_1AE02EE88(uint64_t a1, char *a2)
{
  v5 = sub_1AE23C34C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23CD5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADDD1E30();
  v210 = v2;
  if (v2)
  {
    return result;
  }

  v15 = result;
  v136 = v8;
  if (sqlite3_step(result) == 100)
  {
    v16 = sqlite3_column_int(v15, 0);
  }

  else
  {
    v16 = 0;
  }

  sqlite3_finalize(v15);
  v200 = sub_1ADE55498(0, v16 & ~(v16 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v17 = v210;
  sub_1ADE44EB4(a1, &v200);
  v210 = v17;
  sub_1AE23CD4C();
  v146 = sub_1AE23CD1C();
  v19 = v18;
  result = (*(v10 + 8))(v13, v9);
  v147 = v19;
  if (v19 >> 60 == 15)
  {
LABEL_84:
    __break(1u);
    return result;
  }

  v20 = v200;
  v21 = *(v200 + 2);
  if (!v21)
  {
LABEL_73:
    v125 = v210;
    sub_1ADE43570(1, 0x10000);
    sub_1ADDE1588(v146, v147);

    v210 = v125;
    return result;
  }

  v139 = a2;
  v135 = OBJC_IVAR___CRContext_assetManager;
  result = swift_beginAccess();
  if (!*(v20 + 2))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v22 = 0;
  v23 = (v20 + 40);
  v134 = v21 - 1;
  v151 = a1;
  v153 = v20;
  while (1)
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    v143 = v23;
    sub_1ADDD86D8(v24, v25);
    v160 = v24;
    v26 = sub_1ADDD6F8C(v24, v25, v146, v147);
    v155 = v25;
    if (v26)
    {
      v27 = sub_1ADDCC6B4(&unk_1F23BBBE0);
      v148 = v28;
    }

    else
    {
      type metadata accessor for UpgradeKeyPaths();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E7CC0];
      v29[2] = MEMORY[0x1E69E7CC0];
      v31 = MEMORY[0x1E69E7CC8];
      v29[3] = MEMORY[0x1E69E7CC8];
      v29[4] = v30;
      v29[5] = v31;
      v29[6] = 0;
      v29[7] = 0;
      if (qword_1ED9697D8 != -1)
      {
        swift_once();
      }

      v32 = v160;
      v33 = v210;
      sub_1ADE60630(v178, v160, v25, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v191);
      v210 = v33;
      if (v33)
      {
        sub_1ADDCC35C(v32, v25);
        sub_1ADDE1588(v146, v147);
        goto LABEL_75;
      }

      v209[4] = v196;
      v209[5] = v197;
      v209[6] = v198;
      v209[7] = v199;
      v209[0] = v192;
      v209[1] = v193;
      v209[2] = v194;
      v209[3] = v195;
      sub_1AE02BD5C(v209, v201);
      v210 = 0;

      sub_1ADDCEDE0(&v191, &qword_1EB5BA278, &unk_1AE241D30);
      if ((~*&v201[0] & 0xF000000000000007) == 0)
      {
        goto LABEL_17;
      }

      if ((*&v201[0] & 0xC000000000000000) == 0x8000000000000000)
      {
        inited = (*&v201[0] & 0x3FFFFFFFFFFFFFFFLL);
      }

      else
      {
LABEL_17:
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      sub_1ADE6AF00(v201);
      swift_beginAccess();
      if (inited[8])
      {
        v36 = inited[9];
        v35 = inited[10];
        v37 = inited[8];

        sub_1ADDD86D8(v36, v35);
      }

      else
      {
        v36 = 0;
        v35 = 0xC000000000000000;
      }

      sub_1ADDD86D8(v36, v35);

      v148 = v35;
      sub_1ADDCC35C(v36, v35);
      v27 = v36;
      v25 = v155;
    }

    v38 = v160;
    v39 = v210;
    result = sub_1AE030540(v160, v25, a1, &v191);
    v210 = v39;
    if (v39)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADDCC35C(v27, v148);
      sub_1ADDCC35C(v38, v25);
    }

    v144 = v27;
    v158 = v192;
    if (v192 >> 60 == 15)
    {
      goto LABEL_83;
    }

    v40 = v191;
    v157 = *(&v192 + 1);
    v152 = *(&v193 + 1);
    v159 = v193;
    v154 = v194;
    v41 = type metadata accessor for UpgradeKeyPaths();
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    v42[2] = MEMORY[0x1E69E7CC0];
    v44 = MEMORY[0x1E69E7CC8];
    v42[3] = MEMORY[0x1E69E7CC8];
    v42[4] = v43;
    v42[5] = v44;
    v42[6] = 0;
    v42[7] = 0;
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v156 = v40;
    v45 = v210;
    sub_1ADE60630(v190, v40, v158, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v191);
    v210 = v45;
    if (v45)
    {

      sub_1ADDCC35C(v144, v148);
      sub_1ADDCC35C(v160, v155);
      sub_1ADDE1588(v146, v147);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
    }

    v208[4] = v196;
    v208[5] = v197;
    v208[6] = v198;
    v208[7] = v199;
    v208[0] = v192;
    v208[1] = v193;
    v208[2] = v194;
    v208[3] = v195;
    sub_1AE02BD5C(v208, v202);
    v210 = 0;

    sub_1ADDCEDE0(&v191, &qword_1EB5BA278, &unk_1AE241D30);
    v186 = v202[4];
    v187 = v202[5];
    v188 = v202[6];
    v189 = v202[7];
    v182 = v202[0];
    v183 = v202[1];
    v184 = v202[2];
    v185 = v202[3];
    v46 = sub_1ADE73BC8();
    v47 = v210;
    v149 = sub_1AE23C51C();
    v150 = v48;
    v210 = v47;
    if (v47)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADDCC35C(v144, v148);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
      sub_1ADDCC35C(v160, v155);
      *&v178[64] = v186;
      *&v178[80] = v187;
      *&v178[96] = v188;
      *&v178[112] = v189;
      *v178 = v182;
      *&v178[16] = v183;
      *&v178[32] = v184;
      *&v178[48] = v185;
      sub_1ADE6AF00(v178);
    }

    v142 = v46;
    v145 = v41;
    v140 = v22;
    v181[4] = v186;
    v181[5] = v187;
    v181[6] = v188;
    v181[7] = v189;
    v181[0] = v182;
    v181[1] = v183;
    v181[2] = v184;
    v181[3] = v185;
    sub_1ADE6AF00(v181);
    v49 = v156;
    v50 = v158;
    sub_1ADDD86D8(v156, v158);
    v51 = v157;
    v52 = v159;
    sub_1ADDD86D8(v157, v159);
    v53 = v154;
    sub_1ADDD86D8(v154, *(&v154 + 1));
    sub_1ADDCC35C(v53, *(&v53 + 1));
    sub_1ADDCC35C(v49, v50);
    sub_1ADDD86D8(v49, v50);
    sub_1ADDD86D8(v51, v52);
    sub_1ADDD86D8(v53, *(&v53 + 1));
    sub_1ADDCC35C(v53, *(&v53 + 1));
    sub_1ADDCC35C(v49, v50);
    v54 = v52 >> 62;
    if ((v52 >> 62) <= 1)
    {
      break;
    }

    if (v54 == 2)
    {
      v63 = *(v157 + 16);
      v64 = *(v157 + 24);
      sub_1ADDCC35C(v157, v159);
      goto LABEL_38;
    }

    v55 = v157;
    v67 = v159;
    sub_1ADDCC35C(v157, v159);
    v141 = v55;
    v142 = v67;
LABEL_50:
    v58 = v156;
LABEL_51:
    v79 = v158;
    sub_1ADDD86D8(v58, v158);
    sub_1ADDD86D8(v55, v67);
    v80 = v154;
    sub_1ADDD86D8(v154, *(&v154 + 1));
    sub_1ADDCC35C(v55, v67);
    sub_1ADDCC35C(v58, v79);
    v161 = v80;
    *&v171 = 0;
    v169 = 0u;
    v170 = 0u;
    sub_1AE23C33C();
    sub_1ADE73D18();
    v81 = v210;
    sub_1AE23C52C();
    v210 = v81;
    if (v81)
    {
      sub_1ADDCC35C(v149, v150);
      sub_1ADDCC35C(v160, v155);
      sub_1ADDE1588(v146, v147);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
      sub_1ADDCC35C(v141, v142);
      v119 = v144;
      v120 = v148;
LABEL_72:
      sub_1ADDCC35C(v119, v120);
    }

    v205[2] = *&v178[32];
    v205[3] = *&v178[48];
    v205[4] = *&v178[64];
    v206 = *&v178[80];
    v205[0] = *v178;
    v205[1] = *&v178[16];
    v82 = swift_allocObject();
    v83 = MEMORY[0x1E69E7CC0];
    v82[2] = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC8];
    v82[3] = MEMORY[0x1E69E7CC8];
    v82[4] = v83;
    v82[5] = v84;
    v82[6] = 0;
    v82[7] = 0;
    v85 = v210;
    sub_1AE02C6F4(v205, v204);
    v86 = v160;
    v210 = v85;
    if (v85)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADDCC35C(v149, v150);
      sub_1ADE73C68(v205);
      sub_1ADDCC35C(v141, v142);
      sub_1ADDCC35C(v144, v148);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
      sub_1ADDCC35C(v86, v155);
      swift_setDeallocating();
      v121 = v82[2];

      v122 = v82[3];

      v123 = v82[4];

      v124 = v82[5];

      swift_deallocClassInstance();
    }

    swift_setDeallocating();
    v87 = v82[2];

    v88 = v82[3];

    v89 = v82[4];

    v90 = v82[5];

    swift_deallocClassInstance();
    v91 = v139;
    v92 = *&v139[v135];

    v93 = v210;
    v94 = sub_1ADF98164(v204);
    v210 = v93;
    if (v93)
    {
      sub_1ADDCC35C(v149, v150);
      sub_1ADDCC35C(v86, v155);
      sub_1ADE73C68(v205);
      sub_1ADDE1588(v146, v147);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
      sub_1ADDCC35C(v141, v142);
LABEL_77:
      sub_1ADDCC35C(v144, v148);
    }

    v96 = v94;
    v97 = v95;
    v178[0] = 1;
    type metadata accessor for CREncoder();
    swift_allocObject();
    CREncoder.init(_:version:fileSignature:)(v91, v178, 0, 0xF000000000000000);
    v98 = v210;
    v99 = sub_1ADE6B3B8(v96, v97);
    v210 = v98;
    if (v98)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADDCC35C(v149, v150);

      sub_1ADE73C68(v205);
      sub_1ADDCC35C(v141, v142);
      sub_1ADDCC35C(v144, v148);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
      sub_1ADDCC35C(v160, v155);
LABEL_75:
    }

    v101 = v99;
    v102 = v100;

    v103 = v151;

    v104 = v210;
    sub_1AE0303DC(v160, v155);
    v210 = v104;
    if (v104)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADE73C68(v205);
      sub_1ADDCC35C(v141, v142);
      sub_1ADDCC35C(v101, v102);
      sub_1ADDCC35C(v144, v148);
      sub_1ADDCC35C(v160, v155);
      sub_1ADDCC35C(v149, v150);
      sub_1AE030B24(v156, v158, v157, v159, v152, v154, *(&v154 + 1));
    }

    sub_1ADDCEE40(v103 + 88, &v169, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (*(&v170 + 1))
    {
      sub_1ADE23E6C(&v169, v178);
      v105 = *&v178[24];
      v106 = *&v178[32];
      __swift_project_boxed_opaque_existential_1(v178, *&v178[24]);
      v145 = (*(v106 + 8))(v149, v150, v105, v106);
      v108 = v107;
      __swift_destroy_boxed_opaque_existential_1(v178);
    }

    else
    {
      sub_1ADDCEDE0(&v169, &qword_1EB5B9DB0, &qword_1AE240B80);
      v109 = v149;
      v108 = v150;
      sub_1ADDD86D8(v149, v150);
      v145 = v109;
    }

    v110 = v151;

    v111 = v141;
    v112 = v142;
    sub_1ADDD86D8(v141, v142);
    sub_1ADDD86D8(v101, v102);
    v113 = v145;
    sub_1ADDD86D8(v145, v108);
    v114 = v152;
    v132 = v110;
    v115 = v102;
    v116 = v144;
    v117 = v148;
    v137 = v115;
    v138 = v101;
    v118 = v210;
    sub_1AE02921C(v144, v148, v111, v112, v101, v115, v113, v108, v132, v152);
    v210 = v118;
    if (v118)
    {
      sub_1ADDE1588(v146, v147);
      sub_1ADE73C68(v205);
      sub_1ADDCC35C(v116, v117);
      sub_1AE030B24(v156, v158, v157, v159, v114, v154, *(&v154 + 1));
      sub_1ADDCC35C(v160, v155);
      sub_1ADDCC35C(v149, v150);
      sub_1ADDCC35C(v111, v112);
      sub_1ADDCC35C(v138, v137);
      v119 = v145;
      v120 = v108;
      goto LABEL_72;
    }

    sub_1ADE73C68(v205);
    sub_1ADDCC35C(v116, v117);
    sub_1AE030B24(v156, v158, v157, v159, v114, v154, *(&v154 + 1));
    sub_1ADDCC35C(v160, v155);
    sub_1ADDCC35C(v149, v150);
    sub_1ADDCC35C(v111, v112);
    sub_1ADDCC35C(v138, v137);
    result = sub_1ADDCC35C(v145, v108);
    if (v134 == v140)
    {
      goto LABEL_73;
    }

    v22 = v140 + 1;
    v23 = v143 + 2;
    a1 = v151;
    if ((v140 + 1) >= *(v153 + 2))
    {
      goto LABEL_82;
    }
  }

  if (!v54)
  {
    v55 = v157;
    v56 = v159;
    sub_1ADDCC35C(v157, v159);
    v57 = v155;
    v58 = v156;
    if ((v56 & 0xFF000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v65 = v157;
  sub_1ADDCC35C(v157, v159);
  v63 = v65;
  v64 = v65 >> 32;
LABEL_38:
  v57 = v155;
  v58 = v156;
  v66 = v63 == v64;
  v55 = v157;
  if (v66)
  {
LABEL_40:
    v67 = v159;
    v141 = v55;
    v142 = v159;
    goto LABEL_51;
  }

LABEL_31:
  type metadata accessor for CRDecoder();
  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  *(v59 + 32) = MEMORY[0x1E69E7CC0];
  *(v59 + 40) = v60;
  *(v59 + 48) = MEMORY[0x1E69E7CC8];
  *(v59 + 56) = 256;
  *(v59 + 16) = 0;
  *(v59 + 24) = v60;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  v61 = v210;
  sub_1ADE60630(&v179, v55, v159, qword_1ED96F240, *algn_1ED96F248, 0, 0, v178);
  v210 = v61;
  if (v61)
  {
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v126 = v159;
    sub_1ADDCC35C(v55, v159);
    sub_1ADDCC35C(v149, v150);
    sub_1ADDCC35C(v160, v57);
    sub_1ADDE1588(v146, v147);
    sub_1AE030B24(v58, v158, v55, v126, v152, v154, *(&v154 + 1));
    goto LABEL_77;
  }

  v207[4] = *&v178[72];
  v207[5] = *&v178[88];
  v207[6] = *&v178[104];
  v207[7] = *&v178[120];
  v207[0] = *&v178[8];
  v207[1] = *&v178[24];
  v207[2] = *&v178[40];
  v207[3] = *&v178[56];
  sub_1ADDD5D3C(v207);
  v210 = 0;
  if ((~*&v178[8] & 0xF000000000000007) != 0 && (*&v178[8] & 0xC000000000000000) == 0x4000000000000000)
  {
    v62 = *&v178[8] & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v62 = swift_initStaticObject();
  }

  v68 = v157;
  v69 = *(v62 + 16);
  if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 6)
  {
    v70 = v69 & 0xFFFFFFFFFFFFFFBLL;
    v71 = *(v70 + 16);
    v72 = *(v70 + 24);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
  }

  v73 = v210;
  sub_1ADDD6748(v71, v72, v59, v180);
  v210 = v73;
  if (v73)
  {
    v127 = v155;
    v128 = v160;
    v129 = v148;
    sub_1ADDE1588(v146, v147);
    v130 = v159;
    sub_1ADDCC35C(v68, v159);
    sub_1ADDCC35C(v144, v129);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    sub_1ADDCEDE0(v178, &qword_1EB5BA278, &unk_1AE241D30);
    sub_1ADDCC35C(v128, v127);
    sub_1ADDCC35C(v149, v150);
    sub_1AE030B24(v58, v158, v68, v130, v152, v154, *(&v154 + 1));
  }

  swift_setDeallocating();
  CRDecoder.deinit();
  swift_deallocClassInstance();
  sub_1ADDCEDE0(v178, &qword_1EB5BA278, &unk_1AE241D30);
  v74 = v180[0];
  v75 = v180[1];
  v177 = 1;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(v139, &v177, 0, 0xF000000000000000);
  *&v169 = v74;
  *(&v169 + 1) = v75;
  sub_1ADE6A0EC(&v169, v203);
  v173 = v203[4];
  v174 = v203[5];
  v175 = v203[6];
  v176 = v203[7];
  v169 = v203[0];
  v170 = v203[1];
  v171 = v203[2];
  v172 = v203[3];
  v76 = v210;
  v77 = sub_1AE23C51C();
  v210 = v76;
  if (!v76)
  {
    v141 = v77;
    v142 = v78;
    v67 = v159;
    sub_1ADDCC35C(v68, v159);

    v165 = v173;
    v166 = v174;
    v167 = v175;
    v168 = v176;
    v161 = v169;
    v162 = v170;
    v163 = v171;
    v164 = v172;
    sub_1ADE6AF00(&v161);
    v55 = v68;
    goto LABEL_50;
  }

  sub_1ADDE1588(v146, v147);
  v131 = v159;
  sub_1ADDCC35C(v68, v159);
  sub_1ADDCC35C(v144, v148);

  sub_1ADDCC35C(v160, v155);
  sub_1ADDCC35C(v149, v150);
  sub_1AE030B24(v156, v158, v68, v131, v152, v154, *(&v154 + 1));
  v165 = v173;
  v166 = v174;
  v167 = v175;
  v168 = v176;
  v161 = v169;
  v162 = v170;
  v163 = v171;
  v164 = v172;
  sub_1ADE6AF00(&v161);
}

uint64_t sub_1AE030368()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1AE0303DC(uint64_t a1, unint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v8, 0, 14);
      v3 = v8;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      v8[0] = a1;
      LOWORD(v8[1]) = a2;
      BYTE2(v8[1]) = BYTE2(a2);
      BYTE3(v8[1]) = BYTE3(a2);
      BYTE4(v8[1]) = BYTE4(a2);
      BYTE5(v8[1]) = BYTE5(a2);
      v3 = v8 + BYTE6(a2);
LABEL_9:
      sub_1ADE45600(v8, v3);
      goto LABEL_10;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE0306A8(v4, v5);
LABEL_10:

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE030540@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v12, 0, 14);
      v6 = v12;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v6 = v12 + BYTE6(a2);
LABEL_9:
      sub_1ADE46228(v12, v6, a3, a4);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE03074C(v7, v8, a3, a4);
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE0306A8(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23BB7C();
  v5 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1AE23BB9C();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1ADE45600(v5, v11);
}

uint64_t sub_1AE03074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE46228(v9, v15, a3, a4);
}

uint64_t sub_1AE030854(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BDAC();
  v8 = v7;
  v14 = a1;
  sub_1ADDCEE40(a1 + OBJC_IVAR___CRContext_encryptionDelegate, v13, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CRSQLStore();
  inited = swift_initStackObject();
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0u;
  *(inited + 152) = 0u;
  *(inited + 168) = 0u;
  *(inited + 184) = 0u;
  *(inited + 200) = 0u;
  *(inited + 216) = 0u;
  *(inited + 232) = 0u;
  *(inited + 248) = 0u;
  *(inited + 88) = 0u;
  *(inited + 264) = 0u;
  *(inited + 280) = 0u;
  swift_beginAccess();
  sub_1ADE9241C(v13, inited + 88);
  swift_endAccess();
  *(inited + 24) = v8;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 64) = 0;
  *(inited + 66) = 1;
  *(inited + 68) = 0;
  *(inited + 70) = 1;
  *(inited + 72) = 0;
  *(inited + 80) = -1;
  *(inited + 16) = v6;
  *(inited + 41) = 1;
  *(inited + 48) = a3;
  *(inited + 56) = &unk_1F23BBD70;

  sub_1ADDD16D4();
  sub_1ADDCEDE0(v13, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AE2418F0;
    sub_1AE23DA2C();

    sub_1AE23BDDC();
    sub_1AE030ACC();
    v11 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v11);

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = 0xD000000000000020;
    *(v10 + 40) = 0x80000001AE262390;
    sub_1AE23E2EC();

    sub_1ADE43ECC(0, inited, inited, v14);
  }
}

unint64_t sub_1AE030ACC()
{
  result = qword_1EB5BDCE0;
  if (!qword_1EB5BDCE0)
  {
    sub_1AE23BDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDCE0);
  }

  return result;
}

uint64_t sub_1AE030B24(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(result, a2);
    sub_1ADDCC35C(a3, a4);

    return sub_1ADDCC35C(a6, a7);
  }

  return result;
}

__n128 __swift_memcpy139_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AE030BC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 139))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE030C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 139) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 139) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE030CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE030CF4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AE030D3C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1ADE0B11C(0, v5, 0);
  v6 = v21;
  for (i = (a3 + 56); ; i = (i + 40))
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v18[0] = *(i - 3);
    v18[1] = v9;
    v18[2] = v10;
    v19 = *i;
    sub_1ADE42C78(v18[0]);

    a1(v20, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_1ADE42CB8(v18[0]);

    v12 = v20[0];
    v11 = v20[1];
    v21 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1ADE0B11C((v13 > 1), v14 + 1, 1);
      v6 = v21;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  sub_1ADE42CB8(v18[0]);

  __break(1u);
  return result;
}

uint64_t sub_1AE030E90(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = MEMORY[0x1E69E7CC0];
  if (!a4)
  {
    return v7;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F47C(0, a4 & ~(a4 >> 63), 0);
  v7 = v26;
  sub_1ADDDF1A4();
  sub_1AE23C27C();
  if (a4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 == a3)
  {
    if (v22 != a5)
    {
      goto LABEL_19;
    }

    for (i = 0; ; ++i)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v25 != 1)
      {
        goto LABEL_15;
      }

      v19 = *(v23 + *(v23 + 24) + 16 * ~v24 + 32);
      sub_1ADDD86D8(v19, *(&v19 + 1));
      a1(&v20, &v19);
      if (v6)
      {
        goto LABEL_20;
      }

      v6 = 0;
      sub_1ADDCC35C(v19, *(&v19 + 1));
      v13 = v20;
      v26 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v20;
        sub_1ADE6F47C((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v7 = v26;
      }

      *(v7 + 16) = v15 + 1;
      *(v7 + 16 * v15 + 32) = v13;
      if ((sub_1AE23C1CC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v12 == a4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1ADDCC35C(v19, *(&v19 + 1));

  __break(1u);
  return result;
}

uint64_t sub_1AE031064(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v2, 0);
    v4 = v35;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1AE23D8EC();
    v7 = result;
    v8 = 0;
    v30 = v1 + 64;
    v31 = v2;
    v32 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v33 = v8;
      v34 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB788, &qword_1AE24CD20);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AE241900;
      *(v14 + 32) = sub_1ADF6652C(v12);
      *(v14 + 40) = sub_1ADF6652C(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB790, &unk_1AE251E40);
      sub_1ADF73650();
      v15 = sub_1AE23CBFC();
      v17 = v16;

      MEMORY[0x1B26FB670](v15, v17);

      MEMORY[0x1B26FB670](93, 0xE100000000000000);

      v18 = v4;
      v36 = v4;
      v19 = v1;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1ADE0B11C((v20 > 1), v21 + 1, 1);
        v18 = v36;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 16 * v21;
      *(v22 + 32) = 91;
      *(v22 + 40) = 0xE100000000000000;
      v9 = 1 << *(v19 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v32;
      v23 = *(v32 + 8 * v10);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v19;
      v4 = v18;
      if (v34 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1ADDFFBC8(v7, v34, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1ADDFFBC8(v7, v34, 0);
      }

LABEL_4:
      v8 = v33 + 1;
      v7 = v9;
      if (v33 + 1 == v31)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE031374@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1ADDFC33C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 24);
    result = memmove(v9, (v9 + 40), 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AE031418(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1ADF79A54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

double sub_1AE0314A8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 20))
  {
    v4 = sub_1AE23C20C();
    if (!v4)
    {
      result = 0.0;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      return result;
    }
  }

  else
  {
    v4 = *(v1 + 8);
    *(v1 + 16) = v3 + 1;
  }

  v5 = (v4 + *(v4 + 24) + (~v3 << 6));
  v6 = v5[5];
  v8 = v5[2];
  v7 = v5[3];
  v13[2] = v5[4];
  v13[3] = v6;
  v13[0] = v8;
  v13[1] = v7;
  v9 = v5[3];
  *a1 = v5[2];
  a1[1] = v9;
  v10 = v5[5];
  a1[2] = v5[4];
  a1[3] = v10;
  sub_1ADDCEE40(v13, &v12, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return result;
}

void (*sub_1AE031554(uint64_t *a1, uint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  v9 = v2 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  sub_1ADDDF7A8(v8, v7, *v9, v6);
  return sub_1AE0315F8;
}

void sub_1AE0315F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  sub_1ADDDC21C(**a1, v1[1], v1[2]);

  free(v1);
}

void sub_1AE03163C(_OWORD *a1@<X8>)
{
  v3 = v1;
  v139 = a1;
  v160 = sub_1AE23C12C();
  v4 = *(v160 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v149 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v137 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v158 = &v137 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v137 - v12;
  v13 = type metadata accessor for Replica();
  v144 = *(v13 - 8);
  v14 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v137 - v22;
  v156 = v4 + 16;
  v157 = v4;
  v159 = (v4 + 32);
  v150 = (v4 + 8);
  while (2)
  {
    v23 = &unk_1EB5BCD30;
    while (1)
    {
      v24 = *(v3 + 120);
      v25 = *(v3 + 152);
      v190[6] = *(v3 + 136);
      v191[0] = v25;
      *(v191 + 11) = *(v3 + 163);
      v26 = *(v3 + 56);
      v27 = *(v3 + 88);
      v190[2] = *(v3 + 72);
      v190[3] = v27;
      v190[4] = *(v3 + 104);
      v190[5] = v24;
      v190[0] = *(v3 + 40);
      v190[1] = v26;
      if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v190) == 1)
      {
        goto LABEL_4;
      }

      v50 = *(v3 + 56);
      if (v50 < *(v3 + 60))
      {
        break;
      }

      v51 = sub_1AE23C20C();
      if (v51)
      {
        goto LABEL_49;
      }

LABEL_4:
      sub_1ADECD850(v185);
      v28 = *(v3 + 120);
      v29 = *(v3 + 152);
      v188[5] = *(v3 + 136);
      v189[0] = v29;
      *(v189 + 11) = *(v3 + 163);
      v30 = *(v3 + 56);
      v31 = *(v3 + 88);
      v188[1] = *(v3 + 72);
      v188[2] = v31;
      v188[3] = *(v3 + 104);
      v188[4] = v28;
      v187 = *(v3 + 40);
      v188[0] = v30;
      sub_1ADDCEDE0(&v187, v23, &unk_1AE251E08);
      v32 = v185[5];
      *(v3 + 104) = v185[4];
      v33 = v185[2];
      *(v3 + 88) = v185[3];
      *(v3 + 72) = v33;
      v34 = v185[0];
      *(v3 + 56) = v185[1];
      *(v3 + 163) = *(v186 + 11);
      v35 = v185[6];
      *(v3 + 152) = v186[0];
      *(v3 + 136) = v35;
      *(v3 + 120) = v32;
      *(v3 + 40) = v34;
      v37 = *(v3 + 24);
      v36 = *(v3 + 32);
      v38 = *(v37 + 16);
      if (v36 == v38)
      {
        goto LABEL_60;
      }

      if (v36 >= v38)
      {
        goto LABEL_67;
      }

      v39 = (v37 + 40 * v36);
      v2 = v39[4];
      v40 = v39[5];
      v42 = v39[6];
      v41 = v39[7];
      *(v3 + 32) = v36 + 1;
      if (!v2)
      {
        sub_1AE23C1FC();
        goto LABEL_47;
      }

      v43 = *(v3 + 208);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_69;
      }

      *(v3 + 208) = v45;
      v46 = *(v3 + 200);
      v48 = *(v3 + 184);
      v47 = *(v3 + 192);
      v146 = v41;
      *&v147 = v42;
      if (v46 == 1)
      {
        if (*(v47 + 16) >= *(v40 + 16))
        {
          v153 = v47;
          v138 = v48;
          v69 = *(v40 + 64);
          v142 = v40 + 64;
          v70 = 1 << *(v40 + 32);
          if (v70 < 64)
          {
            v71 = ~(-1 << v70);
          }

          else
          {
            v71 = -1;
          }

          v72 = v71 & v69;
          sub_1ADE42C78(v2);

          v140 = v2;
          sub_1ADE42C78(v2);
          v141 = (v70 + 63) >> 6;

          v73 = 0;
          v155 = v40;
          while (v72)
          {
            v74 = v73;
LABEL_35:
            v78 = __clz(__rbit64(v72));
            v72 &= v72 - 1;
            v79 = v78 | (v74 << 6);
            v80 = v143;
            sub_1ADDDE408(*(v40 + 48) + *(v144 + 72) * v79, v143, type metadata accessor for Replica);
            v81 = v157;
            v82 = *(v40 + 56) + *(v157 + 72) * v79;
            v83 = v145;
            v84 = v160;
            (*(v157 + 16))(v145, v82, v160);
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v86 = *(v85 + 48);
            v87 = v80;
            v77 = v154;
            sub_1ADDD8010(v87, v154);
            (*(v81 + 32))(v77 + v86, v83, v84);
            (*(*(v85 - 8) + 56))(v77, 0, 1, v85);
LABEL_36:
            v2 = v152;
            sub_1ADDD2198(v77, v152, &qword_1EB5BA458, &qword_1AE251E00);
            v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            if ((*(*(v88 - 8) + 48))(v2, 1, v88) == 1)
            {

              v49 = v140;
              v101 = sub_1ADF637A8(v140, v138);
              sub_1ADE42CB8(v49);
              v23 = &unk_1EB5BCD30;
              if (v101)
              {
                goto LABEL_46;
              }

LABEL_59:
              sub_1ADE42CB8(v49);

LABEL_60:
              v2 = *(v3 + 208);
              if (v2 >= 101)
              {
                if (qword_1EB5B94F8 == -1)
                {
                  goto LABEL_62;
                }

                goto LABEL_70;
              }

              goto LABEL_65;
            }

            v89 = *v159;
            (*v159)(v158, v2 + *(v88 + 48), v160);
            v90 = v151;
            sub_1ADDD8010(v2, v151);
            v91 = v153;
            if (!*(v153 + 16) || (v92 = sub_1ADDD8A6C(v90), (v93 & 1) == 0))
            {

              v49 = v140;
              sub_1ADE42CB8(v140);
              sub_1ADDE5058(v90, type metadata accessor for Replica);
              (*v150)(v158, v160);
              goto LABEL_45;
            }

            v94 = v157;
            v95 = v149;
            v96 = v160;
            (*(v157 + 16))(v149, *(v91 + 56) + *(v157 + 72) * v92, v160);
            sub_1ADDE5058(v90, type metadata accessor for Replica);
            v97 = v148;
            v89(v148, v95, v96);
            v98 = v158;
            v2 = sub_1AE23C0BC();
            v99 = *(v94 + 8);
            v99(v97, v96);
            v99(v98, v96);
            v40 = v155;
            if ((v2 & 1) == 0)
            {

              v49 = v140;
              sub_1ADE42CB8(v140);
LABEL_45:
              v23 = &unk_1EB5BCD30;
              goto LABEL_46;
            }
          }

          if (v141 <= v73 + 1)
          {
            v75 = v73 + 1;
          }

          else
          {
            v75 = v141;
          }

          v76 = v75 - 1;
          v77 = v154;
          while (1)
          {
            v74 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v74 >= v141)
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
              (*(*(v100 - 8) + 56))(v77, 1, 1, v100);
              v72 = 0;
              v73 = v76;
              goto LABEL_36;
            }

            v72 = *(v142 + 8 * v74);
            ++v73;
            if (v72)
            {
              v73 = v74;
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        sub_1ADE42C78(v2);

        v49 = v2;
LABEL_46:
        sub_1AE23C1FC();
        sub_1ADE42CB8(v49);

LABEL_47:
        v175 = v167;
        v176[0] = v168[0];
        *(v176 + 11) = *(v168 + 11);
        v171 = v163;
        v172 = v164;
        v173 = v165;
        v174 = v166;
        v169 = v161;
        v170 = v162;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v169, v52);
        v102 = *(v3 + 120);
        v103 = *(v3 + 152);
        v183 = *(v3 + 136);
        v184[0] = v103;
        *(v184 + 11) = *(v3 + 163);
        v104 = *(v3 + 56);
        v105 = *(v3 + 88);
        v179 = *(v3 + 72);
        v180 = v105;
        v181 = *(v3 + 104);
        v182 = v102;
        v177 = *(v3 + 40);
        v178 = v104;
        sub_1ADDCEDE0(&v177, v23, &unk_1AE251E08);
        v106 = v173;
        *(v3 + 120) = v174;
        v107 = v176[0];
        *(v3 + 136) = v175;
        *(v3 + 152) = v107;
        *(v3 + 163) = *(v176 + 11);
        v108 = v169;
        *(v3 + 56) = v170;
        v109 = v172;
        *(v3 + 72) = v171;
        *(v3 + 88) = v109;
        *(v3 + 104) = v106;
        *(v3 + 40) = v108;
      }

      else
      {
        sub_1ADE42C78(v2);

        sub_1ADE42C78(v2);

        v53 = sub_1ADF63DF4(v40, v47);
        v54 = v53;
        if (v53 & 0x100) != 0 && (v53)
        {

          sub_1ADE42CB8(v2);
          v49 = v2;
          v2 = 1;
        }

        else
        {
          v55 = v23;
          v56 = sub_1ADF63DF4(v2, v48);
          v57 = v56;
          v58 = v54 | v56;

          v59 = v2;
          sub_1ADE42CB8(v2);
          v2 = (v58 >> 8) & 1;
          v49 = v59;
          v23 = v55;
          if ((v54 & 1) == 0 && (v57 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        sub_1AE23C1FC();
        sub_1ADE42CB8(v49);

        v175 = v167;
        v176[0] = v168[0];
        *(v176 + 11) = *(v168 + 11);
        v171 = v163;
        v172 = v164;
        v173 = v165;
        v174 = v166;
        v169 = v161;
        v170 = v162;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v169, v60);
        v61 = *(v3 + 120);
        v62 = *(v3 + 152);
        v183 = *(v3 + 136);
        v184[0] = v62;
        *(v184 + 11) = *(v3 + 163);
        v63 = *(v3 + 56);
        v64 = *(v3 + 88);
        v179 = *(v3 + 72);
        v180 = v64;
        v181 = *(v3 + 104);
        v182 = v61;
        v177 = *(v3 + 40);
        v178 = v63;
        sub_1ADDCEDE0(&v177, v23, &unk_1AE251E08);
        v65 = v173;
        *(v3 + 120) = v174;
        v66 = v176[0];
        *(v3 + 136) = v175;
        *(v3 + 152) = v66;
        *(v3 + 163) = *(v176 + 11);
        v67 = v169;
        *(v3 + 56) = v170;
        v68 = v172;
        *(v3 + 72) = v171;
        *(v3 + 88) = v68;
        *(v3 + 104) = v65;
        *(v3 + 40) = v67;
        *(v3 + 200) = v2 ^ 1;
      }
    }

    v51 = *(v3 + 48);
    *(v3 + 56) = v50 + 1;
LABEL_49:
    v110 = *(v51 + *(v51 + 24) + 16 * ~v50 + 32);
    v111 = *(v3 + 200);
    v155 = *(v51 + *(v51 + 24) + 16 * ~v50 + 40);
    v147 = v110;
    if (v111 == 1)
    {
      sub_1ADDD86D8(v110, v155);
LABEL_57:
      v126 = *(v3 + 8);
      v127 = *(v3 + 16);
      sub_1ADDDF7A8(v147, v155, *v3, &v187);
      v128 = *&v188[0];
      if (*&v188[0])
      {
        v129 = *(&v188[1] + 1);
        v130 = v187;
        v131 = v139;
        *v139 = v147;
        v131[1] = v130;
        *(v131 + 4) = v128;
        *(v131 + 40) = *(v188 + 8);
        *(v131 + 7) = v129;
        return;
      }

      goto LABEL_72;
    }

    v112 = *(v3 + 208);
    v44 = __OFADD__(v112, 1);
    v113 = v112 + 1;
    if (!v44)
    {
      *(v3 + 208) = v113;
      v114 = *(v3 + 184);
      v115 = *(v3 + 192);
      v116 = *v3;
      v117 = *(v3 + 8);
      v118 = v110;
      v119 = *(v3 + 16);
      v120 = v155;
      sub_1ADDD86D8(v110, v155);
      sub_1ADDDF7A8(v118, v120, v116, &v187);
      v121 = *&v188[0];
      if (*&v188[0])
      {
        v153 = *(&v188[1] + 1);
        v2 = *&v188[1];
        v122 = *(&v188[0] + 1);
        v123 = *(&v187 + 1);
        v124 = v187;

        sub_1ADDDC21C(v124, v123, v121);
        if (sub_1ADF637A8(v122, v115))
        {
        }

        else
        {
          v125 = sub_1ADF637A8(v121, v114);

          if ((v125 & 1) == 0)
          {
            sub_1ADDCC35C(v118, v155);
            continue;
          }
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    break;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  swift_once();
LABEL_62:
  v132 = sub_1AE23C78C();
  __swift_project_value_buffer(v132, qword_1EB5D74A8);
  v133 = sub_1AE23C76C();
  v134 = sub_1AE23D61C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 134217984;
    *(v135 + 4) = v2;
    _os_log_impl(&dword_1ADDCA000, v133, v134, "Excessive since comparisons: %ld", v135, 0xCu);
    MEMORY[0x1B26FDA50](v135, -1, -1);
  }

LABEL_65:
  v136 = v139;
  v139[2] = 0u;
  v136[3] = 0u;
  *v136 = 0u;
  v136[1] = 0u;
}

unint64_t sub_1AE0323AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a3[1];
  v30 = *a3;
  v10 = (v4 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  ++v10[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v11 = sub_1AE23E34C();
  v12 = *v10;
  swift_beginAccess();
  v13 = *(v12 + 16) != 0;
  *&v36 = v6;
  *(&v36 + 1) = v7;
  sub_1ADDD86D8(v6, v7);
  sub_1ADDDC21C(0, 0, 0);
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  *v40 = v11;
  *&v40[16] = v12;
  *&v40[24] = 0;
  v40[28] = 0;
  v40[29] = v13;
  v40[30] = 0;
  result = sub_1ADDDD688(&v36);
  v15 = v38;
  if (!v38)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1ADF64C74(v16, v9);
  if ((v17 & 1) == 0)
  {

LABEL_8:
    v26 = v37;
    if (v37)
    {
      if (v8 == v37)
      {
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v28 = &word_1ED96F220;
        v24 = HIBYTE(word_1ED96F220);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = (*(*v26 + 168))();

          *&v37 = v27;
          v26 = v27;
        }

        v28 = v32;
        (*(*v26 + 96))(v32, v8);
        v24 = BYTE1(v32[0]);
      }

      v23 = *v28;
      v25 = *(v28 + 2);
      sub_1ADF5F770(v9, v32);
      sub_1ADF5F770(v30, v31);
      v34 = v31[0];
      v35 = BYTE2(v31[0]);
      v29 = &v34;
      MergeResult.merge(_:)(v29);
      v20 = LOBYTE(v32[0]);
      v21 = BYTE1(v32[0]);
      v22 = BYTE2(v32[0]);
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  sub_1ADF64C74(v15, v30);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  v20 = word_1ED96F220;
  v21 = HIBYTE(word_1ED96F220);
  v22 = byte_1ED96F222;
  v23 = word_1ED96F220;
  v24 = HIBYTE(word_1ED96F220);
  v25 = byte_1ED96F222;
LABEL_17:
  sub_1ADDDD94C(v10, &v36);
  v32[2] = v38;
  v32[3] = v39;
  v33[0] = *v40;
  *(v33 + 15) = *&v40[15];
  v32[0] = v36;
  v32[1] = v37;
  result = sub_1ADDCEDE0(v32, &qword_1EB5BA960, &qword_1AE2455E0);
  if (qword_1ED9670C0 != -1)
  {
    result = swift_once();
  }

  if (v20 != word_1ED96F220 || v21 != HIBYTE(word_1ED96F220) || ((v22 ^ byte_1ED96F222) & 1) != 0)
  {
    v31[0] = v6;
    v31[1] = v7;
    result = sub_1AE0328B8(v31);
  }

  *a4 = v23;
  a4[1] = v24;
  a4[2] = v25;
  return result;
}

uint64_t sub_1AE032778(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = *(result + 24);
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_9:
    result = sub_1ADDFC33C(v6);
    v6 = result;
LABEL_5:
    if (v7 > *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = v6 + 40 * (v7 - 1);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      *(v11 + 32) = v2;
      *(v11 + 40) = v3;
      result = sub_1ADE42CB8(v12);
      *(v1 + v5) = v6;
    }

    return result;
  }

  v8 = v6 + 40 * v7;
  v10 = *(v8 - 8);
  v9 = v8 - 8;
  if (!v10 && *(v9 + 24) >= 21)
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AE032838()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5D74A8);
  __swift_project_value_buffer(v0, qword_1EB5D74A8);
  return sub_1AE23C77C();
}

uint64_t sub_1AE0328B8(uint64_t *a1)
{
  v2 = a1[1];
  v21 = *a1;
  v3 = v21;
  v22 = v2;
  sub_1ADDE0708(&v21, 0);
  v4 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = v1 + *(v4 + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  sub_1ADDDF7A8(v3, v2, *v5, &v21);
  v8 = v23;
  if (v23)
  {
    v9 = v21;
    v10 = v22;
    v11 = v24;

    sub_1ADDDC21C(v9, v10, v8);
    v21 = v3;
    v22 = v2;
    v25[0] = v8;
    v25[1] = v11;
    sub_1ADDDAD3C(&v21, v25);
    v12 = *(v11 + 16);

    if (v12)
    {
      v13 = *(v4 + 28);
      sub_1ADDD86D8(v3, v2);
      sub_1ADDDB0F8(&v21, v3, v2);
      return sub_1ADDCC35C(v21, v22);
    }
  }

  else
  {
    sub_1ADDDC21C(v21, v22, 0);
  }

  v15 = v1 + *(v4 + 28);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v16 = sub_1AE23E34C();
  sub_1ADDE0898(0, v3, v2, v16, &v21);
  v18 = v21;
  v17 = v22;
  v19 = v23;
  v20 = v24;
  if (v22 >> 60 == 15)
  {
    return sub_1ADECD780(v21, v22, v23, v24);
  }

  ++*(v15 + 16);
  sub_1ADDE1588(v19, v20);

  return sub_1ADDCC35C(v18, v17);
}

uint64_t sub_1AE032AA4()
{
  v1 = *(v0 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 24));
  v16 = v0;
  v2 = sub_1AE030D3C(sub_1AE03CB18, &v15, v1);
  v17 = 2117456;
  v18 = 0xE300000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v4 = MEMORY[0x1E69E7508];
  v5 = MEMORY[0x1E69E7558];
  *(v3 + 56) = MEMORY[0x1E69E7508];
  *(v3 + 64) = v5;
  *(v3 + 32) = v6;
  sub_1AE23BFCC();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v7;
  v8 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](v8);

  MEMORY[0x1B26FB670](5972026, 0xE300000000000000);
  v10 = v17;
  v9 = v18;
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
  v11 = sub_1AE23CBFC();
  v13 = v12;

  v17 = v10;
  v18 = v9;

  MEMORY[0x1B26FB670](v11, v13);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);

  return v17;
}

uint64_t sub_1AE032C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v22[2] = a2;
  v9 = sub_1AE030E90(sub_1AE03CB38, v22, v6, v7, v8);
  v10 = sub_1ADF7F054(v9);

  v11 = sub_1AE031064(v10);

  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
  v12 = 0xE200000000000000;
  v13 = sub_1AE23CBFC();
  v15 = v14;

  if (v4)
  {
    v23 = v4;
    v24 = v5;
    v16 = CRVersion.description.getter();
    v12 = v17;
  }

  else
  {
    v16 = 23899;
  }

  v23 = 8069178;
  v24 = 0xE300000000000000;
  MEMORY[0x1B26FB670](v13, v15);

  MEMORY[0x1B26FB670](125, 0xE100000000000000);
  v18 = v23;
  v19 = v24;
  v23 = v16;
  v24 = v12;

  MEMORY[0x1B26FB670](v18, v19);

  v21 = v24;
  *a3 = v23;
  a3[1] = v21;
  return result;
}

uint64_t sub_1AE032E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  result = sub_1ADDDF7A8(v4, v5, *v6, v14);
  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v13 = v14[0];
    v12 = v14[1];

    result = sub_1ADDDC21C(v13, v12, v10);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE032EE8()
{
  result = qword_1EB5BCCD8;
  if (!qword_1EB5BCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCCD8);
  }

  return result;
}

__n128 sub_1AE032F3C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1AE23C1FC();
  sub_1ADDE5058(v2, type metadata accessor for PartiallyOrderedReferenceMap);
  a2[6] = v14;
  a2[7] = *v15;
  *(a2 + 123) = *&v15[11];
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v13;
  result = v9;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1AE032FBC()
{
  v1 = sub_1AE03AD2C(v0);
  sub_1ADDE5058(v0, type metadata accessor for PartiallyOrderedReferenceMap);
  return v1;
}

__n128 sub_1AE033008@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = *(v1 + 208);
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v4;
  v5 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  v6 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v6;
  result = *v1;
  v8 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1AE03304C()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v9[12] = *(v0 + 192);
  v10 = *(v0 + 208);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_1AE03B038(v9);
  sub_1ADECD8C8(v9);
  return v7;
}

uint64_t sub_1AE0330C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v15 = v3[10];
  v16 = v3[11];
  v17 = v3[12];
  v18 = *(v3 + 26);
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[8];
  v14 = v3[9];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return sub_1AE038E20(a1, a2, a3);
}

unint64_t sub_1AE033138(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int *a5, void *a6, int8x8_t a7)
{
  v8 = *a5;
  v7 = a5[1];
  if ((v7 & *a5) != 0)
  {
    if (sub_1AE033244(a1, a2, a3, a4, a5, a6))
    {
      return 2;
    }

    else
    {
      return v9 << 32;
    }
  }

  else
  {
    v11 = 1 << (a4 >> a1);
    if ((v8 & v11) != 0)
    {
      a7.i32[0] = v8 & (v11 - 1);
      v12 = vcnt_s8(a7);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      v14 = (&a6[8 * ~v12.u32[0]] + a5[2]);
      v15 = *v14;
      v16 = v14[1];
      v17 = a2;
      sub_1ADDD86D8(*v14, v16);
      LOBYTE(v17) = sub_1ADDD6F8C(v15, v16, v17, a3);
      sub_1ADDCC35C(v15, v16);
      if (v17)
      {
        return v13 << 32;
      }

      else
      {
        return 2;
      }
    }

    else if ((v7 & v11) != 0)
    {
      a7.i32[0] = v7 & (v11 - 1);
      v19 = vcnt_s8(a7);
      v19.i16[0] = vaddlv_u8(v19);
      return (v19.u32[0] << 32) | 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AE033244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v16[0] = a2;
  v16[1] = a3;
  if (a1 <= 0x3Fu && *a6 != a4)
  {
    return 2;
  }

  v7 = vcnt_s8(*a5);
  a5[1];
  v8 = a6 + a5[2];
  MEMORY[0x1EEE9AC00](a1);
  v15[2] = v16;
  sub_1AE033484(sub_1AE03CA34, v15, v9, v10);
  if (v11)
  {
    v12 = vcnt_s8(*a5);
    a5[1];
    return 1;
  }

  else
  {
    result = 0;
    v14 = vaddlv_u8(vcnt_s8(*a5));
    a5[1];
  }

  return result;
}

uint64_t sub_1AE033364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v16[0] = a2;
  v16[1] = a3;
  if (a1 <= 0x3Fu && *a6 != a4)
  {
    return 2;
  }

  v7 = vcnt_s8(*a5);
  a5[1];
  v8 = a6 + a5[2];
  MEMORY[0x1EEE9AC00](a1);
  v15[2] = v16;
  sub_1AE0335BC(sub_1AE03CA34, v15, v9, v10);
  if (v11)
  {
    v12 = vcnt_s8(*a5);
    a5[1];
    return 1;
  }

  else
  {
    result = 0;
    v14 = vaddlv_u8(vcnt_s8(*a5));
    a5[1];
  }

  return result;
}

uint64_t sub_1AE033484(uint64_t (*a1)(__int128 *), uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = a3[3];
    v25[2] = a3[2];
    v25[3] = v11;
    v25[0] = v9;
    v25[1] = v10;
    v12 = a3[1];
    v21 = *a3;
    v22 = v12;
    v13 = a3[3];
    v23 = a3[2];
    v24 = v13;
    sub_1ADDCEE40(v25, &v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v14 = a1(&v21);
    if (v4)
    {
      break;
    }

    v15 = v14;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    sub_1ADDCEDE0(&v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
    if (v15)
    {
      return v8;
    }

    ++v8;
    a3 += 4;
    if (a4 == v8)
    {
      return 0;
    }
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_1ADDCEDE0(&v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v8;
}

uint64_t sub_1AE0335BC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v11 = *(a3 + 16 * v8);
    sub_1ADDD86D8(v11, *(&v11 + 1));
    v9 = a1(&v11);
    sub_1ADDCC35C(v11, *(&v11 + 1));
    if (v4 || (v9 & 1) != 0)
    {
      break;
    }

    if (a4 == ++v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1AE033684(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AE0339B0(a1, a2, a3, a4, a5, a6, *v6, *(v6 + 8), v38);
    v19 = v38[0];
    v20 = v39;
    v21 = v40;

    *v6 = v20;
    *(v6 + 8) = v21;
    return v19;
  }

  v17 = sub_1ADDDAB3C(a1, a2, a3, a4, (v16 + 16), (v16 + 32), v15);
  v18 = v17 >> 29;
  if (v17 >> 29 <= 1)
  {
    if (!v18)
    {
      return 0;
    }

    v23 = v17;
    v24 = HIDWORD(v17);
    swift_beginAccess();
    if (*(v16 + 28) >= 0x40u)
    {
      v31 = sub_1ADE1A914(v24, v23, (v16 + 16), v16 + 32);
      a5(v31);
      ++*(v6 + 8);
    }

    else
    {
      sub_1ADE1A674(v23, v24, a5, a6, v25);
    }

LABEL_23:
    v36 = *v6;
    return 1;
  }

  if (v18 == 2)
  {
    v19 = 1;
    sub_1AE033E90(1, a1, v17, HIDWORD(v17), a4, a5, a6);
    return v19;
  }

  if (v18 != 3)
  {
    if (v17 != 0x80000000)
    {
      v26 = *(v6 + 8);
      v27 = *(v16 + 32);

      v28 = sub_1AE033D0C(a1, a5, a6, a4, v16, v26, v27);
      v30 = v29;

      *v6 = v28;
      *(v6 + 8) = v30;
      return 1;
    }

    swift_beginAccess();
    v22 = *(v16 + 28);
    if (v22 > 0x3F)
    {
      v32 = *(v16 + 16);
      v33 = vcnt_s8(v32);
      v33.i16[0] = vaddlv_u8(v33);
      if (v32 == *(v16 + 20))
      {
        v34 = v32;
      }

      else
      {
        v34 = v33.u32[0];
      }

      *(v16 + 28) = v22 - 64;
      v35 = v16 + 32 - (v34 << 6) + *(v16 + 24) - 64;
      *(v16 + 16) = v32 + 1;
      *(v16 + 20) = v32 + 1;
      a5(v35);
      ++*(v6 + 8);
    }

    else
    {
      sub_1AE034ECC(a5, a6, sub_1AE0351D8, sub_1AE035028);
    }

    goto LABEL_23;
  }

  if (sub_1AE033684((a1 + 5), a2, a3, a4, a5, a6))
  {
    ++*(v6 + 8);
    return 1;
  }

  return 0;
}

unint64_t sub_1AE0339B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, int64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a7;
  v17 = (a7 + 32);

  result = sub_1ADDDAB3C(a1, a2, a3, a4, (v10 + 16), v17, v18);
  v20 = result;
  v21 = result >> 29;
  if (result >> 29 <= 1)
  {
    if (v21)
    {

      a3 = HIDWORD(v20);
      result = sub_1ADDD83C0(v20, HIDWORD(v20), a5, v42, a6, v10);
      v10 = result;
      a8 = v43;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = HIDWORD(result);
      v28 = v10;
    }
  }

  else if (v21 == 2)
  {

    v34 = (&v17[8 * ~HIDWORD(v20)] + *(v10 + 24));
    v35 = *v34;
    v36 = v34[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v35, v36);
    sub_1AE23BECC();
    a3 = sub_1AE23E34C();
    sub_1ADDCC35C(v35, v36);
    result = sub_1AE034800(a1, v20, HIDWORD(v20), a3, a4, a5, a6, v10);
    v10 = result;
    a8 = v37;
    v28 = v38;
    LODWORD(a3) = v39;
    LOBYTE(v21) = 1;
  }

  else if (v21 == 3)
  {

    v47 = HIDWORD(v20);
    v22 = &v17[2 * HIDWORD(v20)];
    v24 = *v22;
    v23 = v22[1];

    sub_1AE0339B0(v49, (a1 + 5), a2, a3, a4, a5, a6, v24, v23);
    v25 = v49[0];
    v26 = v49[1];
    v27 = v49[2];
    v28 = v49[3];
    LODWORD(a3) = v50;

    if (v25)
    {
      v29 = sub_1ADDFB3E0();
      v10 = sub_1ADDF59C8(v29, v10, a8);
      v31 = v30;
      v32 = v10 + 16 * v47;
      v33 = *(v32 + 32);
      *(v32 + 32) = v26;
      *(v32 + 40) = v27;

      a8 = v31 + 1;
      LOBYTE(v21) = 1;
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    if (v20 == 0x80000000)
    {
      result = sub_1AE034BB0(a5, a6, v10, a8, sub_1AE035378, sub_1AE035028);
      v10 = result;
      a8 = v40;
      LODWORD(a3) = v41;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = *(v10 + 32);

      result = sub_1AE033D0C(a1, a5, a6, a4, v10, a8, a3);
      v10 = result;
      a8 = v44;
      v28 = v45;
      LOBYTE(v21) = 1;
      LODWORD(a3) = v46;
    }
  }

  *a9 = v21;
  *(a9 + 8) = v10;
  *(a9 + 16) = a8;
  *(a9 + 24) = v28;
  *(a9 + 32) = a3;
  return result;
}

uint64_t sub_1AE033D68(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, unint64_t), uint64_t (*a9)(uint64_t), uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = (a4 >> a1) & 0x1F;
  v12 = (a7 >> a1) & 0x1F;
  if (v11 != v12)
  {
    return a10(a2, a3, v11, a5, a6, v12);
  }

  v17 = a3;

  v20 = a8((a1 + 5), a2, v17, a4, a5, a6, a7);
  v22 = v21;
  LODWORD(v17) = 1 << v11;
  v23 = a9(16);
  *(v23 + 16) = 0;
  *(v23 + 20) = v17;
  *(v23 + 28) -= 16;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;

  return v23;
}

int64_t sub_1AE033E90(char a1, int a2, char a3, unsigned int a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v13 = *v7;
  v81 = *v7 + 32;
  v14 = ~a4;
  v15 = (v81 + *(*v7 + 24) + (v14 << 6));
  v16 = *v15;
  v17 = v15[1];
  sub_1AE23E31C();
  sub_1ADDD86D8(v16, v17);
  sub_1AE23BECC();
  v18 = sub_1AE23E34C();
  sub_1ADDCC35C(v16, v17);
  if (v18 == a5)
  {
    v20 = v13[4];
    v21 = v13[5];
    if (v20 == v21)
    {
      if (v20 == 1)
      {
LABEL_4:
        v22 = v81 + v13[6];
        v23 = *(v22 - 16);
        v25 = *(v22 - 64);
        v24 = *(v22 - 48);
        v105 = *(v22 - 32);
        v106 = v23;
        v103 = v25;
        v104 = v24;
        sub_1ADDCEE40(&v103, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);

        v98 = v104;
        v99 = v105;
        v100 = v106;
        v26 = sub_1AE034DBC(a5, v103, *(&v103 + 1), &v98, a6);
        *v8 = v26;
        v8[1] = v27;
        return v26;
      }
    }

    else
    {
      v19.i32[0] = v13[4];
      v28 = vcnt_s8(v19);
      v28.i16[0] = vaddlv_u8(v28);
      if (v20)
      {
        v29 = v21 == 0;
      }

      else
      {
        v29 = 0;
      }

      if (v29 && v28.i32[0] < 2u)
      {
        goto LABEL_4;
      }
    }
  }

  if (a1)
  {
    v69 = a2;
    v72 = a5;
    swift_beginAccess();
    v74 = v8[1];
    v75 = v8;
    LODWORD(v31) = v13[4];
    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    if (v31 == v13[5])
    {
      v31 = v31;
    }

    else
    {
      v31 = v32.u32[0];
    }

    v33 = v13[6];
    v13[7] += 64;
    v34 = v81 - (v31 << 6) + v33;
    v35 = (v31 + v14) << 6;
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 8);
    v38 = *(v34 + v35 + 16);
    v39 = *(v34 + v35 + 24);
    v40 = *(v34 + v35 + 32);
    v41 = *(v34 + v35 + 40);
    v42 = *(v34 + v35 + 48);
    v43 = *(v34 + v35 + 56);
    memmove((v34 + 64), v34, v35);
    v44 = v13[4];
    if ((v13[5] & v44) != 0)
    {
      v45 = v44 - 1;
      v13[5] = v45;
    }

    else
    {
      v45 = v44 & ((-1 << a3) - 1);
    }

    v13[4] = v45;
    *&v103 = v36;
    *(&v103 + 1) = v37;
    *&v104 = v38;
    *(&v104 + 1) = v39;
    *&v105 = v40;
    *(&v105 + 1) = v41;
    v50 = v42;
    *&v106 = v42;
    *(&v106 + 1) = v43;
    v51 = v43;
    v76 = v41;
    v77 = v50;
    v71 = v38;
    v70 = v39;
    if (v18 == v72)
    {
      v82[0] = v36;
      v82[1] = v37;
      v82[2] = v38;
      v82[3] = v39;
      v82[4] = v40;
      v82[5] = v41;
      v82[6] = v50;
      v82[7] = v43;
      v52 = v41;
      v53 = sub_1ADDDAC74(136);
      v54 = *(v53 + 24);
      *(v53 + 28) -= 136;
      *(v53 + 32) = v72;
      *(v53 + 16) = 0x200000002;
      v55 = v53 + 32 + v54;
      v73 = v55 - 128;
      *&v83 = v36;
      *(&v83 + 1) = v37;
      v84 = v38;
      v85 = v39;
      v86 = v40;
      v87 = v52;
      v88 = v77;
      v89 = v51;
      *(v55 - 64) = v36;
      *(v55 - 56) = v37;
      *(v55 - 48) = v38;
      *(v55 - 40) = v39;
      *(v55 - 32) = v40;
      *(v55 - 24) = v52;
      *(v55 - 16) = v77;
      *(v55 - 8) = v51;
      sub_1ADDCEE40(&v103, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(v82, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(&v83, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      a6(v73);
      v90 = v36;
      v91 = v37;
      v92 = v38;
      v93 = v39;
      v94 = v40;
      v95 = v52;
      v96 = v77;
      v97 = v51;
      sub_1ADDCEDE0(&v90, &qword_1EB5BA9E8, &qword_1AE251DE0);
      *&v98 = v36;
      *(&v98 + 1) = v37;
      *&v99 = v38;
      *(&v99 + 1) = v39;
      *&v100 = v40;
      *(&v100 + 1) = v52;
      v101 = v77;
      v102 = v51;
      sub_1ADDCEDE0(&v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v56 = v37;
      v57 = v36;
      v58 = 2;
      v26 = v53;
    }

    else
    {
      v90 = v36;
      v91 = v37;
      v92 = v38;
      v93 = v39;
      v94 = v40;
      v95 = v41;
      v96 = v50;
      v97 = v43;
      *&v83 = v38;
      *(&v83 + 1) = v39;
      v84 = v40;
      v85 = v41;
      v86 = v50;
      v87 = v43;
      v56 = v37;
      sub_1ADDCEE40(&v103, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(&v90, &v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v53 = sub_1ADE1A9BC(v69 + 5, v36, v37, &v83, v18, a6, a7, v72);
      v59 = v38;
      v58 = v60;
      v26 = v61;
      *&v98 = v36;
      *(&v98 + 1) = v56;
      v57 = v36;
      *&v99 = v59;
      *(&v99 + 1) = v39;
      *&v100 = v40;
      *(&v100 + 1) = v76;
      v101 = v77;
      v102 = v51;
      sub_1ADDCEDE0(&v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    v62 = v51;
    v75[1] = v74 + v58 - 1;
    v63 = v13[5];
    v13[7] -= 16;
    v64.i32[0] = v63;
    v64.i32[1] = v63 & ((1 << a3) - 1);
    v65 = vpaddl_u16(vpaddl_u8(vcnt_s8(v64)));
    v66 = (v81 + 16 * v65.u32[1]);
    memmove(v66 + 2, v66, 16 * (v65.u32[0] - v65.u32[1]));
    *v66 = v53;
    v66[1] = v58;
    v13[5] |= 1 << a3;
    *&v98 = v57;
    *(&v98 + 1) = v56;
    *&v99 = v71;
    *(&v99 + 1) = v70;
    *&v100 = v40;
    *(&v100 + 1) = v76;
    v101 = v77;
    v102 = v62;

    sub_1ADDCEDE0(&v98, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v68 = v8[1];
    v46 = sub_1AE034800(a2, a3, a4, v18, a5, a6, a7, v13);
    v48 = v47;
    v26 = v49;

    *v8 = v46;
    v8[1] = v48;
  }

  return v26;
}

uint64_t sub_1AE034414(char a1, void (*a2)(char *), uint64_t a3)
{
  v6 = *v3;
  if (a1)
  {
    swift_beginAccess();
    v7 = v6[7];
    v8 = v7 >= 0x40;
    v9 = v7 - 64;
    if (v8)
    {
      v15 = v6[4];
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v15 == v6[5])
      {
        v17 = v15;
      }

      else
      {
        v17 = v16.u32[0];
      }

      v18 = v6 + v6[6] + -64 * v17;
      v6[7] = v9;
      v6[4] = v15 + 1;
      v6[5] = v15 + 1;
      a2(v18 - 32);
      v10 = v3[1];
      v3[1] = v10 + 1;
    }

    else
    {
      return sub_1AE034ECC(a2, a3, sub_1AE0351D8, sub_1AE035028);
    }
  }

  else
  {
    v11 = sub_1AE034BB0(a2, a3, *v3, v3[1], sub_1AE035378, sub_1AE035028);
    v13 = v12;
    v10 = v14;

    *v3 = v11;
    v3[1] = v13;
  }

  return v10;
}

_DWORD *sub_1AE034564(int a1, char a2, unsigned int a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7, unsigned int *a8)
{
  v13 = a8 + 8;
  v14 = &a8[4 * ~a3 + 8] + a8[6];
  v15 = *v14;
  v16 = *(v14 + 8);
  if (a4 == a5)
  {
    v17 = sub_1ADDDB860(40);
    *(v17 + 16) = 0x200000002;
    v18 = *(v17 + 24);
    *(v17 + 28) -= 40;
    *(v17 + 32) = a4;
    v19 = v17 + v18;
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    sub_1ADDD86D8(v15, v16);
    sub_1ADDD86D8(v15, v16);
    sub_1ADDD86D8(v15, v16);
    a6(v19);
    sub_1ADDCC35C(v15, v16);
    v20 = 2;
  }

  else
  {
    sub_1ADDD86D8(*v14, *(v14 + 8));
    sub_1ADDD86D8(v15, v16);
    v17 = sub_1ADE1B784(a1 + 5, v15, v16, a4, a6, a7, a5, v23);
    v20 = v24;
  }

  sub_1ADDCC35C(v15, v16);
  v26 = a8[4];
  v27 = a8[5];
  if (v26 == v27)
  {
    if (v26 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_12;
    }

    if (v27)
    {
      goto LABEL_12;
    }

    v25.i32[0] = a8[4];
    v25 = vcnt_s8(v25);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.i32[0] >= 2u)
    {
      goto LABEL_12;
    }
  }

  if ((*(v17 + 20) & *(v17 + 16)) == 0)
  {
LABEL_12:
    v25.i32[0] = v27 & ((1 << a2) - 1);
    v29 = vcnt_s8(v25);
    v29.i16[0] = vaddlv_u8(v29);
    v42 = v29.i32[0];
    v30 = v26 & ~(1 << a2);
    v41 = a3;
    v31 = v27 | (1 << a2);
    v29.i32[0] = v30;
    v32 = vcnt_s8(v29);
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    v32.i32[0] = v31;
    v34 = vcnt_s8(v32);
    v34.i16[0] = vaddlv_u8(v34);
    v40 = v13;
    v35 = v34.u32[0];
    v36 = 16 * (v34.i32[0] + v33);
    v28 = sub_1ADDDB860(16 * (v34.u32[0] + v33));
    v28[4] = v30;
    v28[5] = v31;
    v37 = v28[6];
    v28[7] -= v36;
    sub_1AE03544C((v28 + 8), v35, v38, v28 + v37 + -16 * v33 + 32, v33, a8 + 4, v40, v42, v17, v20, v41);
    goto LABEL_13;
  }

  v28 = v17;
LABEL_13:

  return v28;
}

_DWORD *sub_1AE034800(int a1, char a2, unsigned int a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t), uint64_t a7, unsigned int *a8)
{
  v45 = (a8 + 8);
  v9 = (&a8[16 * ~a3 + 8] + a8[6]);
  v10 = v9[1];
  v62 = *v9;
  v63 = v10;
  v11 = v9[3];
  v64 = v9[2];
  v65 = v11;
  v12 = v62;
  v13 = v63;
  v14 = v64;
  v15 = v11;
  if (a4 == a5)
  {
    v49[0] = v62;
    v49[1] = v63;
    v49[2] = v64;
    v49[3] = v11;
    v16 = sub_1ADDDAC74(136);
    v17 = *(v16 + 24);
    *(v16 + 28) -= 136;
    *(v16 + 32) = a4;
    *(v16 + 16) = 0x200000002;
    v18 = v16 + 32 + v17;
    v40 = v18 - 128;
    v50 = v12;
    v51 = v13;
    v52 = v14;
    v53 = v15;
    *(v18 - 64) = v12;
    *(v18 - 48) = v13;
    *(v18 - 32) = v14;
    *(v18 - 16) = v15;
    sub_1ADDCEE40(&v62, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(v49, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v50, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    a6(v40);
    v54 = v12;
    v55 = v13;
    v56 = v14;
    v57 = v15;
    sub_1ADDCEDE0(&v54, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v58 = v12;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    sub_1ADDCEDE0(&v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v20 = 2;
  }

  else
  {
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v11;
    v50 = v63;
    v51 = v64;
    v52 = v11;
    sub_1ADDCEE40(&v62, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v54, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v16 = sub_1ADE1A9BC(a1 + 5, v12, *(&v12 + 1), &v50, a4, a6, a7, a5);
    v20 = v23;
    v58 = v12;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    sub_1ADDCEDE0(&v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  v24 = a8[4];
  v25 = a8[5];
  if (v24 == v25)
  {
    if (v24 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v24)
    {
      goto LABEL_12;
    }

    if (v25)
    {
      goto LABEL_12;
    }

    v19.i32[0] = a8[4];
    v19 = vcnt_s8(v19);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.i32[0] >= 2u)
    {
      goto LABEL_12;
    }
  }

  if ((*(v16 + 20) & *(v16 + 16)) == 0)
  {
LABEL_12:
    v27 = 1 << a2;
    v19.i32[0] = v25 & ((1 << a2) - 1);
    v28 = vcnt_s8(v19);
    v28.i16[0] = vaddlv_u8(v28);
    v43 = v28.i32[0];
    v29 = v24 & ~v27;
    v30 = v25 | v27;
    v28.i32[0] = v29;
    v31 = vcnt_s8(v28);
    v31.i16[0] = vaddlv_u8(v31);
    v32 = v31.u32[0];
    v31.i32[0] = v25 | v27;
    v33 = vcnt_s8(v31);
    v33.i16[0] = vaddlv_u8(v33);
    v34 = v33.u32[0];
    v35 = v32 << 6;
    v36 = (v32 << 6) + 16 * v33.i32[0];
    v26 = sub_1ADDDAC74(v35 + 16 * v33.u32[0]);
    v26[4] = v29;
    v26[5] = v30;
    v37 = v26[6];
    v26[7] -= v36;
    sub_1AE03574C((v26 + 8), v34, v38, v26 + v37 - v35 + 32, v32, a8 + 4, v45, v43, v16, v20, a3);
    goto LABEL_13;
  }

  v26 = v16;
LABEL_13:

  return v26;
}

int64_t sub_1AE034C0C(void (*a1)(int64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = 1 << a3;
  v10 = 1 << a6;
  v11 = sub_1ADDDB860(32);
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  v12 = *(v11 + 24);
  *(v11 + 28) -= 32;
  a1(v11 + 32 + v12 - 16);
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  return v11;
}

int64_t sub_1AE034C98(void (*a1)(int64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = 1 << a3;
  v10 = 1 << a6;
  v11 = sub_1ADDDAC74(80);
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  v12 = *(v11 + 24);
  *(v11 + 28) -= 80;
  a1(v11 + 32 + v12 - 64);
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  return v11;
}

int64_t sub_1AE034D24(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_1ADDDB860(40);
  *(v8 + 16) = 0x200000002;
  v9 = *(v8 + 24);
  *(v8 + 28) -= 40;
  *(v8 + 32) = a1;
  v10 = v8 + v9;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_1ADDD86D8(a2, a3);
  a4(v10);
  sub_1ADDCC35C(a2, a3);
  return v8;
}

int64_t sub_1AE034DBC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(uint64_t))
{
  v10 = sub_1ADDDAC74(136);
  v11 = *(v10 + 24);
  *(v10 + 28) -= 136;
  *(v10 + 32) = a1;
  *(v10 + 16) = 0x200000002;
  v12 = v10 + 32 + v11;
  v13 = v12 - 128;
  v19[0] = a2;
  v19[1] = a3;
  v14 = a4[1];
  v20 = *a4;
  v21 = v14;
  v22 = a4[2];
  v15 = v20;
  v16 = v22;
  *(v12 - 64) = a2;
  *(v12 - 56) = a3;
  *(v12 - 48) = v15;
  *(v12 - 32) = v14;
  *(v12 - 16) = v16;
  sub_1ADDCEE40(v19, v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
  a5(v13);
  v23[0] = a2;
  v23[1] = a3;
  v17 = a4[1];
  v24 = *a4;
  v25 = v17;
  v26 = a4[2];
  sub_1ADDCEDE0(v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v10;
}

uint64_t sub_1AE034ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4[1];
  v6 = a4(*v4 + 16, *v4 + 32, v5, a1, a2, a3);
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
  return v5;
}

int64_t sub_1AE034F44(int64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(int64_t, unint64_t, int64_t, uint64_t *, uint64_t, uint64_t))
{
  if ((a3 - 0x7FFFFFFFFFFFFFFLL) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v11 = a3 + 1;
  v12 = *a2;
  v13 = 16 * (a3 + 1);
  result = sub_1ADDDB860(v13 | 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v11))
  {
    *(result + 16) = v11;
    *(result + 20) = v11;
    v14 = *(result + 24);
    *(result + 28) -= v13 | 8;
    *(result + 32) = v12;
    v15 = result;
    a6(result + 32 - v13 + v14, v11, v7, a2, a4, a5);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1AE035028(int64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(int64_t, unint64_t, int64_t, uint64_t *, uint64_t, uint64_t))
{
  if ((a3 - 0x1FFFFFFFFFFFFFFLL) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v11 = a3 + 1;
  v12 = *a2;
  v13 = (a3 + 1) << 6;
  result = sub_1ADDDAC74(v13 | 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v11))
  {
    *(result + 16) = v11;
    *(result + 20) = v11;
    v14 = *(result + 24);
    *(result + 28) -= v13 | 8;
    *(result + 32) = v12;
    v15 = result;
    a6(result + 32 - v13 + v14, v11, v7, a2, a4, a5);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE03510C(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  v7 = a2 != 0;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = (result + 16 * v7);
  if (!result)
  {
    v9 = 0;
  }

  if (v6)
  {
    if (a2 - v7 >= v6)
    {
      v10 = a4 + a3[2];
      v11 = (v10 - 16 * v6);
      if (v10 <= v9 || v11 != v9)
      {
        v13 = result;
        v14 = a5;
        memmove(v9, v11, 16 * v6);
        result = v13;
        a5 = v14;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (result)
  {
    result = a5();
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AE0351D8(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  v7 = a2 != 0;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = (result + (v7 << 6));
  if (!result)
  {
    v9 = 0;
  }

  if (v6)
  {
    if (a2 - v7 >= v6)
    {
      v10 = a4 + a3[2];
      v11 = (v10 - (v6 << 6));
      if (v10 <= v9 || v11 != v9)
      {
        v13 = result;
        v14 = a5;
        memmove(v9, v11, v6 << 6);
        result = v13;
        a5 = v14;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (result)
  {
    result = a5();
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AE0352A4(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  if (a2 - (a2 != 0) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a4 + a3[2] - 16 * v6;
  v9 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
  swift_arrayInitWithCopy();
  result = v9;
LABEL_8:
  if (result)
  {
    return a5();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AE035378(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  if (a2 - (a2 != 0) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a4 + a3[2] - (v6 << 6);
  v9 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
  swift_arrayInitWithCopy();
  result = v9;
LABEL_8:
  if (result)
  {
    return a5();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AE03544C(uint64_t result, unint64_t a2, int8x8_t a3, uint64_t a4, unint64_t a5, unsigned int *a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v12 = result;
  v13 = a11;
  v14 = a10;
  v16 = *a6;
  v15 = a6[1];
  if (*a6 == v15)
  {
    v17 = 0;
    v18 = a6[2];
    v19 = a8;
    v20 = -a8;
    if (a8)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    a3.i32[0] = a6[1];
    v21 = vcnt_s8(a3);
    v21.i16[0] = vaddlv_u8(v21);
    v17 = v21.u32[0];
    v21.i32[0] = *a6;
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    v16 = v22.i32[0];
    v23 = a6[2];
    if (a8)
    {
      v19 = a8;
      if (v17 >= a8)
      {
        v24 = a8;
      }

      else
      {
        v24 = v17;
      }

      if (!v15)
      {
        goto LABEL_50;
      }

      v36 = a6[2];
      if ((a2 & 0x8000000000000000) == 0 && v24 > a2)
      {
        goto LABEL_59;
      }

      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
      result = swift_arrayInitWithCopy();
      a2 = v25;
      v14 = a10;
      v20 = v17 - v19;
      if ((v17 - v19) < 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = 0;
      v20 = v17;
    }
  }

  if (-v20 < -a2 && -a2 < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = a2 - v20;
  }

  if (a2 < v27)
  {
    goto LABEL_51;
  }

  if (v17 < v19)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 != v19)
  {
    if ((a2 - v27) < v20)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    result = swift_arrayInitWithCopy();
    v14 = v28;
    v13 = a11;
  }

  v29 = (v12 + 16 * v19);
  *v29 = a9;
  v29[1] = v14;
  v30 = a5 - v13;
  if (-v13 < -a5 && -a5 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = a5 - v13;
  }

  if (a5 < v32)
  {
    goto LABEL_53;
  }

  v33 = v16 - v13;
  if (v16 < v13)
  {
    v33 = 0;
  }

  v34 = v16 - v33;
  if (v16 < v33)
  {
    goto LABEL_54;
  }

  if (v34 > 0)
  {
    if ((a5 - v32) < v34)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
    result = swift_arrayInitWithCopy();
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a5 != v13)
  {
    v35 = v30 >= v16 ? v16 : a5 - v13;
    if (v35)
    {
      if ((a5 & 0x8000000000000000) == 0 && v35 > a5)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
      swift_arrayInitWithCopy();
    }
  }
}

uint64_t sub_1AE03574C(uint64_t result, unint64_t a2, int8x8_t a3, uint64_t a4, unint64_t a5, unsigned int *a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v12 = result;
  v13 = a11;
  v14 = a10;
  v16 = *a6;
  v15 = a6[1];
  if (*a6 == v15)
  {
    v17 = 0;
    v18 = a6[2];
    v19 = a8;
    v20 = -a8;
    if (a8)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    a3.i32[0] = a6[1];
    v21 = vcnt_s8(a3);
    v21.i16[0] = vaddlv_u8(v21);
    v17 = v21.u32[0];
    v21.i32[0] = *a6;
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    v16 = v22.i32[0];
    v23 = a6[2];
    if (a8)
    {
      v19 = a8;
      if (v17 >= a8)
      {
        v24 = a8;
      }

      else
      {
        v24 = v17;
      }

      if (!v15)
      {
        goto LABEL_50;
      }

      v36 = a6[2];
      if ((a2 & 0x8000000000000000) == 0 && v24 > a2)
      {
        goto LABEL_59;
      }

      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
      result = swift_arrayInitWithCopy();
      a2 = v25;
      v14 = a10;
      v20 = v17 - v19;
      if ((v17 - v19) < 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = 0;
      v20 = v17;
    }
  }

  if (-v20 < -a2 && -a2 < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = a2 - v20;
  }

  if (a2 < v27)
  {
    goto LABEL_51;
  }

  if (v17 < v19)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 != v19)
  {
    if ((a2 - v27) < v20)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    result = swift_arrayInitWithCopy();
    v14 = v28;
    v13 = a11;
  }

  v29 = (v12 + 16 * v19);
  *v29 = a9;
  v29[1] = v14;
  v30 = a5 - v13;
  if (-v13 < -a5 && -a5 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = a5 - v13;
  }

  if (a5 < v32)
  {
    goto LABEL_53;
  }

  v33 = v16 - v13;
  if (v16 < v13)
  {
    v33 = 0;
  }

  v34 = v16 - v33;
  if (v16 < v33)
  {
    goto LABEL_54;
  }

  if (v34 > 0)
  {
    if ((a5 - v32) < v34)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
    result = swift_arrayInitWithCopy();
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a5 != v13)
  {
    v35 = v30 >= v16 ? v16 : a5 - v13;
    if (v35)
    {
      if ((a5 & 0x8000000000000000) == 0 && v35 > a5)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
      swift_arrayInitWithCopy();
    }
  }
}

int64_t sub_1AE035A4C(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = *(a3 + 32);
  v8 = 16 * a4;
  v9 = (16 * a4) | 8;
  result = sub_1ADDDB860((16 * a4) | 8);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a4))
  {
    *(result + 16) = a4;
    *(result + 20) = a4;
    v10 = *(result + 24);
    *(result + 28) -= v9;
    *(result + 32) = v7;
    v11 = result;
    sub_1AE035BD4(result + 32 - v8 + v10, a4, v6, a2);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1AE035B10(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = *(a3 + 32);
  v8 = a4 << 6;
  v9 = (a4 << 6) | 8;
  result = sub_1ADDDAC74((a4 << 6) | 8);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a4))
  {
    *(result + 16) = a4;
    *(result + 20) = a4;
    v10 = *(result + 24);
    *(result + 28) -= v9;
    *(result + 32) = v7;
    v11 = result;
    sub_1AE035C7C(result + 32 - v8 + v10, a4, v6, a2);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE035BD4(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = vcnt_s8(*a3);
  v4.i16[0] = vaddlv_u8(v4);
  if (*a3 == a3[1])
  {
    v5 = *a3;
  }

  else
  {
    v5 = v4.u32[0];
  }

  if (v5)
  {
    if (v5 > a2)
    {
      __break(1u);
    }

    else
    {
      v6 = a4 + a3[2] - 16 * v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);

      return swift_arrayInitWithCopy();
    }
  }

  return result;
}

uint64_t sub_1AE035C7C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = vcnt_s8(*a3);
  v4.i16[0] = vaddlv_u8(v4);
  if (*a3 == a3[1])
  {
    v5 = *a3;
  }

  else
  {
    v5 = v4.u32[0];
  }

  if (v5)
  {
    if (v5 > a2)
    {
      __break(1u);
    }

    else
    {
      v6 = a4 + a3[2] - (v5 << 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);

      return swift_arrayInitWithCopy();
    }
  }

  return result;
}

double sub_1AE035D24@<D0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  if (BYTE4(a4) != a1)
  {
    v18 = a3 >> a1;
    v19 = *v5;
    sub_1AE03637C(*v5 + 32, (a3 >> a1) & 0x1F, a1, a2, a3, a4 & 0x1FFFFFFFFFFLL, &v91);
    v87 = v91;
    v88 = v92;
    v89 = v93;
    v90 = v94;
    v20 = v5[1];
    v5[1] = v20 - 1;
    if (v89)
    {
      v85 = v93;
      v86 = v94;
      v21.i32[1] = DWORD1(v92);
      v83 = v91;
      v84 = v92;
      if (!v19[4] && v19[5] && a1 && (v21.i32[0] = v19[5], v22 = vcnt_s8(v21), v22.i16[0] = vaddlv_u8(v22), v22.i32[0] < 2u))
      {
        sub_1ADDCEE40(&v83, &v79, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v23 = *sub_1AE23C1EC();

        *v5 = v23;
        v5[1] = 0;
        v24 = v88;
        *a5 = v87;
        a5[1] = v24;
        v25 = v90;
        a5[2] = v89;
        a5[3] = v25;
      }

      else
      {
        v5[1] = v20 - 2;
        swift_beginAccess();
        if (v19[7] > 0x2Fu)
        {
          v79 = v87;
          v80 = v88;
          v81 = v89;
          v82 = v90;
          sub_1ADDCEE40(&v79, v76, &qword_1EB5BA9E8, &qword_1AE251DE0);
        }

        else
        {
          v79 = v87;
          v80 = v88;
          v81 = v89;
          v82 = v90;
          sub_1ADDCEE40(&v79, v76, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1AE0369FC(48);
        }

        v38 = a2 >> (a1 & 0x3F);
        v39 = *v5;
        v72 = (*v5 + 16);
        v40 = *v5 + 32;
        if (*v72 == *(*v5 + 20))
        {
          v41 = -1;
        }

        else
        {
          v26.i32[0] = *(*v5 + 20);
          v42 = vcnt_s8(v26);
          v42.i16[0] = vaddlv_u8(v42);
          v41 = v42.u32[0] - 1;
        }

        v39[7] += 16;
        v43 = (v40 + 16 * (v18 & 0x1F));
        v44 = *v43;
        v66 = v43[1];
        v70 = (v39 + 8);
        memmove(v43, v43 + 2, 16 * (v41 - (v18 & 0x1F)));
        v68 = v38;
        v45 = 1 << v38;
        v39[5] &= ~v45;

        v46 = v5[1];
        v47 = v83;
        v48 = v84;
        v49 = v85;
        v51 = *(&v86 + 1);
        v50 = v86;
        v52.i32[0] = v39[4] & (v45 - 1);
        v53 = vcnt_s8(v52);
        v53.i16[0] = vaddlv_u8(v53);
        v65 = v53.i32[0];
        v74[0] = v83;
        v74[1] = v84;
        v74[2] = v85;
        v74[3] = v86;
        v5[1] = v46 - v66 + 1;
        v75[0] = v47;
        v75[1] = v48;
        v75[2] = v49;
        v75[3] = __PAIR128__(v51, v50);
        v54 = v50;
        sub_1ADDCEE40(&v87, &v79, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(v74, &v79, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v55 = sub_1ADE1A914(v65, v68 & 0x1F, v72, v70);
        *v55 = v47;
        *(v55 + 1) = v48;
        *(v55 + 2) = v49;
        *(v55 + 6) = v54;
        *(v55 + 7) = v51;
        sub_1ADDCEE40(v75, &v79, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v87, &qword_1EB5BA980, &qword_1AE245630);
        v76[0] = v47;
        v76[1] = v48;
        v76[2] = v49;
        v77 = v54;
        v78 = v51;
        sub_1ADDCEDE0(v76, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v79 = v47;
        v80 = v48;
        v81 = v49;
        v82 = __PAIR128__(v51, v54);
        sub_1ADDCEDE0(&v79, &qword_1EB5BA9E8, &qword_1AE251DE0);
        *a5 = 0u;
        a5[1] = 0u;
        a5[2] = 0u;
        a5[3] = 0u;
      }
    }

    else
    {
      v32 = v19[5];
      if (v19[4])
      {
        v33 = 1;
      }

      else
      {
        v33 = v32.i32[0] == 0;
      }

      v34 = vcnt_s8(v32);
      v34.i16[0] = vaddlv_u8(v34);
      if (!v33 && v34.i32[0] < 2u)
      {
        v36 = *(v19 + 4);
        if ((*(v36 + 20) & *(v36 + 16)) != 0)
        {
          v19[7] += 16;
          v37 = *(v19 + 5);
          memmove(v19 + 8, v19 + 12, (16 * v34.i32[0]) - 16);
          v19[5] = 0;

          *v5 = v36;
          v5[1] = v37;
        }
      }

      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
    }

    v83 = v91;
    v84 = v92;
    v85 = v93;
    v86 = v94;
    sub_1ADDCEDE0(&v83, &qword_1EB5BA980, &qword_1AE245630);
    return result;
  }

  v9 = *v5;
  --v5[1];
  LODWORD(v10) = *(v9 + 16);
  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v10 == *(v9 + 20))
  {
    v10 = v10;
  }

  else
  {
    v10 = v11.u32[0];
  }

  v12 = (v9 + 32);
  v13 = *(v9 + 24);
  *(v9 + 28) += 64;
  memmove((v9 + 32 - (v10 << 6) + v13 + 64), (v9 + 32 - (v10 << 6) + v13), (v10 + (~a4 | 0x3FFFFFF00000000)) << 6);
  v16 = *(v9 + 16);
  v15 = *(v9 + 20);
  if ((v15 & v16) != 0)
  {
    v17 = v16 - 1;
    *(v9 + 20) = v17;
    v15 = v17;
  }

  else
  {
    v17 = v16 & ((-1 << (a2 >> a1)) - 1);
  }

  *(v9 + 16) = v17;
  v14.i32[0] = v15;
  v27 = vcnt_s8(v14);
  v27.i16[0] = vaddlv_u8(v27);
  if (v15)
  {
    v28 = v17 == 0;
  }

  else
  {
    v28 = 0;
  }

  if (!v28 || v27.i32[0] > 1u)
  {
LABEL_25:
    if (v17 == v15)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v30 = *v12;
  if ((*(*v12 + 20) & *(*v12 + 16)) != 0)
  {
    *(v9 + 28) += 16;
    v31 = *(v9 + 40);
    memmove((v9 + 32), (v9 + 48), (16 * v27.i32[0]) - 16);
    *(v9 + 20) = 0;

    *v5 = v30;
    v5[1] = v31;
    v17 = *(v30 + 16);
    v15 = *(v30 + 20);
    v9 = v30;
    goto LABEL_25;
  }

  v17 = 0;
  if (!v15)
  {
LABEL_26:
    if (v15 != 1)
    {
LABEL_54:
      result = 0.0;
      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
      return result;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (!v17)
  {
    goto LABEL_54;
  }

  if (v15)
  {
    goto LABEL_54;
  }

  v27.i32[0] = v17;
  v57 = vcnt_s8(v27);
  v57.i16[0] = vaddlv_u8(v57);
  if (v57.i32[0] >= 2u)
  {
    goto LABEL_54;
  }

LABEL_48:
  if (!a1)
  {
    if ((v15 & v17) != 0)
    {
      v64 = *(v9 + 28);
      *(v9 + 16) = 1 << *(v9 + 32);
      *(v9 + 20) = 0;
      *(v9 + 28) = v64 + 8;
    }

    goto LABEL_54;
  }

  v5[1] = 0;
  v58 = *(v9 + 16);
  v59 = vcnt_s8(v58);
  v59.i16[0] = vaddlv_u8(v59);
  if (v58 != *(v9 + 20))
  {
    v58 = v59.i32[0];
  }

  v60 = v58 << 6;
  v61 = v9 - v60 + *(v9 + 24);
  *(v9 + 28) += 64;
  v62 = v60 - 64;
  v63 = (v61 + 32 + v60 - 64);
  v71 = v63[1];
  v73 = *v63;
  v67 = v63[3];
  v69 = v63[2];
  memmove((v61 + 96), (v61 + 32), v62);
  *(v9 + 16) = 0;
  *(v9 + 28) = *(v9 + 24);
  *a5 = v73;
  a5[1] = v71;
  result = *&v67;
  a5[2] = v69;
  a5[3] = v67;
  return result;
}

void *sub_1AE03637C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, int a3@<W3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v7 = BYTE4(a6);
  v10 = HIDWORD(a6);
  v11 = a3 + 5;
  v12 = (a1 + 16 * a2);
  if ((a3 + 5) != BYTE4(a6))
  {
    v20 = a5 >> (a3 + 5);
    sub_1AE03637C(&v105, *v12 + 16, *v12 + 32, v20 & 0x1F, (a3 + 5), a4);
    v101 = v105;
    v102 = v106;
    v103 = v107;
    v104 = v108;
    v21 = v12[1];
    v12[1] = v21 - 1;
    if (v103)
    {
      v99 = v107;
      v100 = v108;
      v22.i32[1] = DWORD1(v106);
      v97 = v105;
      v98 = v106;
      v23 = *v12;
      if (!*(*v12 + 16) && v23[5] && v11 && (v22.i32[0] = v23[5], v24 = vcnt_s8(v22), v24.i16[0] = vaddlv_u8(v24), v24.i32[0] < 2u))
      {
        sub_1ADDCEE40(&v97, &v93, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v25 = *sub_1AE23C1EC();

        *v12 = v25;
        v12[1] = 0;
        v26 = v102;
        *a7 = v101;
        a7[1] = v26;
        v27 = v104;
        a7[2] = v103;
        a7[3] = v27;
      }

      else
      {
        v12[1] = v21 - 2;
        swift_beginAccess();
        if (v23[7] > 0x2Fu)
        {
          v93 = v101;
          v94 = v102;
          v95 = v103;
          v96 = v104;
          sub_1ADDCEE40(&v93, &v87, &qword_1EB5BA9E8, &qword_1AE251DE0);
        }

        else
        {
          v93 = v101;
          v94 = v102;
          v95 = v103;
          v96 = v104;
          sub_1ADDCEE40(&v93, &v87, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1AE0369FC(48);
        }

        v45 = a4 >> (v11 & 0x3F);
        v46 = *v12;
        v47 = *(*v12 + 16);
        v82 = (*v12 + 16);
        v48 = *v12 + 32;
        v49 = *(*v12 + 20);
        v109 = a7;
        if (v47 == v49)
        {
          v50 = -1;
        }

        else
        {
          v28.i32[0] = v49;
          v51 = vcnt_s8(v28);
          v51.i16[0] = vaddlv_u8(v51);
          v50 = v51.u32[0] - 1;
        }

        v46[7] += 16;
        v52 = (v48 + 16 * (v20 & 0x1F));
        v54 = *v52;
        v53 = v52[1];
        v80 = (v46 + 8);
        memmove(v52, v52 + 2, 16 * (v50 - (v20 & 0x1F)));
        v78 = v45;
        v55 = 1 << v45;
        v46[5] &= ~v55;

        v56 = v12[1] - v53;
        v12[1] = v56;
        v57 = v97;
        v59 = *(&v98 + 1);
        v58 = v98;
        v60 = v99;
        v61 = *(&v100 + 1);
        v62 = v100;
        v63.i32[0] = v46[4] & (v55 - 1);
        v64 = vcnt_s8(v63);
        v64.i16[0] = vaddlv_u8(v64);
        v77 = v64.i32[0];
        v85[0] = v97;
        v85[1] = v98;
        v85[2] = v99;
        v85[3] = v100;
        v12[1] = v56 + 1;
        v86[0] = v57;
        v86[1] = __PAIR128__(v59, v58);
        v65 = v58;
        v86[2] = v60;
        v86[3] = __PAIR128__(v61, v62);
        v66 = v61;
        sub_1ADDCEE40(&v101, &v93, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(v85, &v93, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v67 = sub_1ADE1A914(v77, v78 & 0x1F, v82, v80);
        *v67 = v57;
        *(v67 + 2) = v65;
        *(v67 + 3) = v59;
        *(v67 + 2) = v60;
        *(v67 + 6) = v62;
        *(v67 + 7) = v66;
        sub_1ADDCEE40(v86, &v93, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v101, &qword_1EB5BA980, &qword_1AE245630);
        v87 = v57;
        v88 = v65;
        v89 = v59;
        v90 = v60;
        v91 = v62;
        v92 = v66;
        sub_1ADDCEDE0(&v87, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v93 = v57;
        v94 = __PAIR128__(v59, v65);
        v95 = v60;
        v96 = __PAIR128__(v66, v62);
        sub_1ADDCEDE0(&v93, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v68 = v109;
        *v109 = 0u;
        v68[1] = 0u;
        v68[2] = 0u;
        v68[3] = 0u;
      }
    }

    else
    {
      v38 = *v12;
      v39 = *(*v12 + 20);
      if (*(*v12 + 16))
      {
        v40 = 1;
      }

      else
      {
        v40 = v39.i32[0] == 0;
      }

      v41 = vcnt_s8(v39);
      v41.i16[0] = vaddlv_u8(v41);
      if (!v40 && v41.i32[0] < 2u)
      {
        v43 = *(v38 + 32);
        if ((*(v43 + 20) & *(v43 + 16)) != 0)
        {
          *(v38 + 28) += 16;
          v44 = *(v38 + 40);
          memmove((v38 + 32), (v38 + 48), (16 * v41.i32[0]) - 16);
          *(v38 + 20) = 0;

          *v12 = v43;
          v12[1] = v44;
        }
      }

      a7[2] = 0u;
      a7[3] = 0u;
      *a7 = 0u;
      a7[1] = 0u;
    }

    v97 = v105;
    v98 = v106;
    v99 = v107;
    v100 = v108;
    return sub_1ADDCEDE0(&v97, &qword_1EB5BA980, &qword_1AE245630);
  }

  v13 = *v12;
  --v12[1];
  LODWORD(v14) = v13[4];
  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v14 == v13[5])
  {
    v14 = v14;
  }

  else
  {
    v14 = v15.u32[0];
  }

  v16 = v13 + v13[6] + -64 * v14;
  v13[7] += 64;
  result = memmove(v16 + 96, v16 + 32, (v14 + (~a6 | 0x3FFFFFF00000000)) << 6);
  v18 = v13[4];
  if ((v13[5] & v18) != 0)
  {
    v19 = v18 - 1;
    v13[5] = v19;
  }

  else
  {
    v19 = v18 & ((-1 << (a4 >> v10)) - 1);
  }

  v13[4] = v19;
  v29 = *v12;
  v31 = *(*v12 + 16);
  v30 = *(*v12 + 20);
  v32 = vcnt_s8(v30);
  v32.i16[0] = vaddlv_u8(v32);
  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = v30 == 0;
  }

  if (v33 || v32.i32[0] > 1u)
  {
LABEL_25:
    if (v31 == v30)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  result = (v29 + 32);
  v35 = *(v29 + 32);
  if ((*(v35 + 20) & *(v35 + 16)) != 0)
  {
    *(v29 + 28) += 16;
    v36 = *(v29 + 40);
    memmove(result, (v29 + 48), (16 * v32.i32[0]) - 16);
    *(v29 + 20) = 0;
    v37 = *v12;
    *v12 = v35;
    v12[1] = v36;

    v29 = *v12;
    v31 = *(*v12 + 16);
    v30 = *(*v12 + 20);
    goto LABEL_25;
  }

  v31 = 0;
  if (!v30)
  {
LABEL_26:
    if (v30 != 1)
    {
LABEL_54:
      a7[2] = 0u;
      a7[3] = 0u;
      *a7 = 0u;
      a7[1] = 0u;
      return result;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (!v31)
  {
    goto LABEL_54;
  }

  if (v30)
  {
    goto LABEL_54;
  }

  v32.i32[0] = v31;
  v69 = vcnt_s8(v32);
  v69.i16[0] = vaddlv_u8(v69);
  if (v69.i32[0] >= 2u)
  {
    goto LABEL_54;
  }

LABEL_48:
  if (!v7)
  {
    if ((v30 & v31) != 0)
    {
      v76 = *(v29 + 28);
      *(v29 + 16) = 1 << *(v29 + 32);
      *(v29 + 20) = 0;
      *(v29 + 28) = v76 + 8;
    }

    goto LABEL_54;
  }

  v12[1] = 0;
  v70 = *(v29 + 16);
  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  if (v70 != *(v29 + 20))
  {
    v70 = v71.i32[0];
  }

  v72 = v70 << 6;
  v73 = v29 - v72 + *(v29 + 24);
  *(v29 + 28) += 64;
  v74 = v72 - 64;
  v75 = (v73 + 32 + v72 - 64);
  v83 = v75[1];
  v84 = *v75;
  v79 = v75[3];
  v81 = v75[2];
  result = memmove((v73 + 96), (v73 + 32), v74);
  *(v29 + 16) = 0;
  *(v29 + 28) = *(v29 + 24);
  *a7 = v84;
  a7[1] = v83;
  a7[2] = v81;
  a7[3] = v79;
  return result;
}

uint64_t sub_1AE0369FC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *v1 + 2;
  if (((*v1)[2].i32[1] & v5->i32[0]) != 0)
  {
    v6 = sub_1AE036A88(v5, &v4[4], v3);
  }

  else
  {
    v6 = sub_1ADDFB30C(v5, &v4[4], v3, a1, sub_1AE036B4C);
  }

  v8 = v6;
  v9 = v7;

  *v1 = v8;
  v1[1] = v9;
  return result;
}

int64_t sub_1AE036A88(int64_t result, uint64_t *a2, unint64_t a3)
{
  if ((a3 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v6 = *a2;
  v7 = a3 << 6;
  v8 = (a3 << 6) | 8;
  result = sub_1ADDDAC74((a3 << 6) | 8);
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a3))
  {
    *(result + 16) = a3;
    *(result + 20) = a3;
    v9 = *(result + 24);
    *(result + 28) -= v8;
    *(result + 32) = v6;
    v10 = result;
    sub_1AE036C40((result + 32 - v7 + v9), a3, v5, a2);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1AE036B4C(char *result, uint64_t a2, char *__dst, uint64_t a4, unsigned int *a5, char *__src, int8x8_t a7)
{
  v8 = a5[1];
  if (*a5 != v8 && v8 != 0)
  {
    a7.i32[0] = a5[1];
    v15 = vcnt_s8(a7);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > a2)
    {
      goto LABEL_22;
    }

    if (result != __src || &__src[16 * v15.u32[0]] <= result)
    {
      v16 = __dst;
      v17 = __src;
      v18 = a4;
      result = memmove(result, __src, 16 * v15.u32[0]);
      a4 = v18;
      __src = v17;
      __dst = v16;
    }
  }

  LODWORD(v10) = *a5;
  v11 = vcnt_s8(*a5);
  v11.i16[0] = vaddlv_u8(v11);
  if (*a5 == a5[1])
  {
    v10 = v10;
  }

  else
  {
    v10 = v11.u32[0];
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (v10 <= a4)
  {
    v12 = &__src[a5[2]];
    v13 = &v12[-64 * v10];
    if (v12 <= __dst || v13 != __dst)
    {
      result = memmove(__dst, v13, v10 << 6);
    }

LABEL_16:
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_1AE036C40(void *result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  LODWORD(v4) = *a3;
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v4 = v4;
  }

  else
  {
    v4 = v5.u32[0];
  }

  if (!v4)
  {
LABEL_11:
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

  if (v4 <= a2)
  {
    v6 = a4 + a3[2];
    v7 = (v6 - (v4 << 6));
    if (v6 <= result || v7 != result)
    {
      v9 = a3;
      result = memmove(result, v7, v4 << 6);
      a3 = v9;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1AE036CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v13 = *v5;
    v14 = (*v5 + 32);
    v15 = sub_1AE033138(a1, a2, a3, a4, (*v5 + 16), v14, v12);
    if (v15 == 2)
    {
      sub_1ADEDA0C8(&v175);
      v16 = v180;
      *(a5 + 64) = v179;
      *(a5 + 80) = v16;
      v17 = *v182;
      *(a5 + 96) = v181;
      *(a5 + 112) = v17;
      v18 = v176;
      *a5 = v175;
      *(a5 + 16) = v18;
      v19 = v177;
      v20 = v178;
LABEL_6:
      *(a5 + 32) = v19;
      *(a5 + 48) = v20;
      return;
    }

    v116 = a4 >> a1;
    if (v15)
    {
      v113 = v5;
      v110 = HIDWORD(v15);
      sub_1AE036CC4(&v160, (a1 + 5), a2, a3, a4);
      v156 = v163[1];
      v157 = v164;
      v158 = v165;
      v159[0] = v166;
      v152 = v160;
      v153 = v161;
      v154 = v162;
      v155 = v163[0];
      v175 = v160;
      v176 = v161;
      v177 = v162;
      v178 = v163[0];
      v179 = v163[1];
      v180 = v164;
      v181 = v165;
      *v182 = v166;
      if (sub_1ADE23F54(&v175) == 1)
      {
        v148 = v163[1];
        v149 = v164;
        v150 = v165;
        v151 = v166;
        v144 = v160;
        v145 = v161;
        v146 = v162;
        v147 = v163[0];
        sub_1ADDCEDE0(&v144, &qword_1EB5BA978, &qword_1AE251DD0);
        v24 = v157;
        *(a5 + 64) = v156;
        *(a5 + 80) = v24;
        v25 = v159[0];
        *(a5 + 96) = v158;
        *(a5 + 112) = v25;
        v26 = v153;
        *a5 = v152;
        *(a5 + 16) = v26;
        v19 = v154;
        v20 = v155;
        goto LABEL_6;
      }

      v146 = v154;
      v147 = v155;
      v150 = v158;
      v151 = v159[0];
      v148 = v156;
      v149 = v157;
      v45.i32[1] = DWORD1(v153);
      v144 = v152;
      v145 = v153;
      v46 = v5[1];
      v5[1] = v46 - 1;
      v48 = *(v13 + 16);
      v47 = *(v13 + 20);
      if (v150)
      {
        if (!v48 && v47 && (v47 & (v47 - 1)) == 0 && a1)
        {
          sub_1ADDCEE40(&v152, &v136, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v148, &v136, &qword_1EB5BA980, &qword_1AE245630);
          v49 = *sub_1AE23C1EC();

          *v113 = v49;
          v113[1] = 0;
          v115 = v149;
          v117 = v148;
          v108 = v151;
          v112 = v150;
LABEL_59:
          v140 = v163[1];
          v141 = v164;
          v142 = v165;
          v143 = v166;
          v136 = v160;
          v137 = v161;
          v138 = v162;
          v139 = v163[0];
          sub_1ADDCEDE0(&v136, &qword_1EB5BA978, &qword_1AE251DD0);
          v91 = v145;
          *a5 = v144;
          *(a5 + 16) = v91;
          v92 = v147;
          *(a5 + 32) = v146;
          *(a5 + 48) = v92;
          *(a5 + 64) = v117;
          *(a5 + 80) = v115;
          *(a5 + 96) = v112;
          *(a5 + 112) = v108;
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5, v93);
          v32 = &qword_1EB5BA980;
          v33 = &qword_1AE245630;
          v34 = &v148;
          goto LABEL_60;
        }

        v5[1] = v46 - 2;
        swift_beginAccess();
        if (*(v13 + 28) > 0x2Fu)
        {
          sub_1ADDCEE40(&v152, &v136, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v148, &v136, &qword_1EB5BA980, &qword_1AE245630);
        }

        else
        {
          sub_1ADDCEE40(&v152, &v136, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v148, &v136, &qword_1EB5BA980, &qword_1AE245630);
          sub_1AE0369FC(48);
        }

        v78 = v148;
        v79 = *(&v149 + 1);
        v109 = v150;
        v104 = v149;
        v106 = *(&v150 + 1);
        v80 = v151;
        v81 = *v5;
        v102 = (*v5 + 16);
        v82 = *v5 + 32;
        if (*v102 == *(*v5 + 20))
        {
          v83 = -1;
        }

        else
        {
          v52.i32[0] = *(*v5 + 20);
          v84 = vcnt_s8(v52);
          v84.i16[0] = vaddlv_u8(v84);
          v83 = v84.u32[0] - 1;
        }

        v81[7] += 16;
        v85 = (v82 + 16 * v110);
        v86 = *v85;
        v98 = v85[1];
        memmove(v85, v85 + 2, 16 * (v83 - v110));
        v81[5] &= ~(1 << v116);

        v87 = v5[1];
        v88.i32[0] = v81[4] & ((1 << v116) - 1);
        v89 = vcnt_s8(v88);
        v89.i16[0] = vaddlv_u8(v89);
        v100 = v89.i32[0];
        v118 = v78;
        v119 = v104;
        v120 = v79;
        v121 = v109;
        v122 = v106;
        v123 = v80;
        v5[1] = v87 - v98 + 1;
        v124 = v78;
        v125 = v104;
        v126 = v79;
        v127 = v109;
        v128 = v106;
        v129 = v80;
        sub_1ADDCEE40(&v148, &v136, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(&v118, &v136, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v90 = sub_1ADE1A914(v100, v116 & 0x1F, v102, (v81 + 8));
        *v90 = v78;
        *(v90 + 2) = v104;
        *(v90 + 3) = v79;
        *(v90 + 4) = v109;
        *(v90 + 5) = v106;
        *(v90 + 3) = v80;
        sub_1ADDCEE40(&v124, &v136, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v148, &qword_1EB5BA980, &qword_1AE245630);
        v130 = v78;
        v131 = v104;
        v132 = v79;
        v133 = v109;
        v134 = v106;
        v135 = v80;
        sub_1ADDCEDE0(&v130, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v136 = v78;
        *&v137 = v104;
        *(&v137 + 1) = v79;
        *&v138 = v109;
        *(&v138 + 1) = v106;
        v139 = v80;
        sub_1ADDCEDE0(&v136, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      else
      {
        if (v48 || !v47 || (v45.i32[0] = *(v13 + 20), v53 = vcnt_s8(v45), v53.i16[0] = vaddlv_u8(v53), v53.i32[0] >= 2u) || (*(*v14 + 20) & *(*v14 + 16)) == 0)
        {
          v140 = v156;
          v141 = v157;
          v142 = v158;
          v143 = v159[0];
          v136 = v152;
          v137 = v153;
          v138 = v154;
          v139 = v155;
          sub_1ADDCEE40(&v136, &v130, &qword_1EB5BCD10, &qword_1AE251DD8);
          v115 = 0u;
          v117 = 0u;
          v108 = 0u;
          v112 = 0u;
          goto LABEL_59;
        }

        v140 = v156;
        v141 = v157;
        v142 = v158;
        v143 = v159[0];
        v136 = v152;
        v137 = v153;
        v138 = v154;
        v139 = v155;
        sub_1ADDCEE40(&v136, &v130, &qword_1EB5BCD10, &qword_1AE251DD8);
        if (*(v13 + 16) == *(v13 + 20))
        {
          v55 = -16;
        }

        else
        {
          v54.i32[0] = *(v13 + 20);
          v94 = vcnt_s8(v54);
          v94.i16[0] = vaddlv_u8(v94);
          v55 = (16 * v94.i32[0]) - 16;
        }

        *(v13 + 28) += 16;
        v95 = *(v13 + 32);
        v96 = *(v13 + 40);
        memmove(v14, (v13 + 48), v55);
        *(v13 + 20) = 0;

        *v113 = v95;
        v113[1] = v96;
      }

      v115 = 0u;
      v117 = 0u;
      v108 = 0u;
      v112 = 0u;
      goto LABEL_59;
    }

    --v5[1];
    LODWORD(v35) = *(v13 + 16);
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    if (v35 == *(v13 + 20))
    {
      v35 = v35;
    }

    else
    {
      v35 = v36.u32[0];
    }

    v37 = *(v13 + 24);
    *(v13 + 28) += 64;
    v38 = v14 + v37 + -64 * v35;
    v39 = (v35 + ~HIDWORD(v15)) << 6;
    v114 = *&v38[v39];
    v111 = *&v38[v39 + 8];
    v101 = *&v38[v39 + 32];
    v97 = *&v38[v39 + 24];
    v99 = *&v38[v39 + 40];
    v105 = *&v38[v39 + 48];
    v107 = *&v38[v39 + 16];
    v103 = *&v38[v39 + 56];
    memmove(v38 + 64, v38, v39);
    v43 = *(v13 + 16);
    v42 = *(v13 + 20);
    if ((v42 & v43) != 0)
    {
      v44 = v43 - 1;
      *(v13 + 20) = v44;
      v42 = v44;
      *(v13 + 16) = v44;
      if (!v44)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v44 = v43 & ((-1 << v116) - 1);
      *(v13 + 16) = v44;
      if (!v42)
      {
        goto LABEL_28;
      }
    }

    if (!v44)
    {
      v41.i32[0] = v42;
      v41 = vcnt_s8(v41);
      v41.i16[0] = vaddlv_u8(v41);
      if (v41.i32[0] <= 1u)
      {
        v50 = *v14;
        if ((*(*v14 + 20) & *(*v14 + 16)) == 0)
        {
          v44 = 0;
          if (!v42)
          {
LABEL_29:
            if (v42 != 1)
            {
LABEL_49:
              v56 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              goto LABEL_52;
            }

LABEL_43:
            if (a1)
            {
              v5[1] = 0;
              v65 = *(v13 + 16);
              v66 = vcnt_s8(v65);
              v66.i16[0] = vaddlv_u8(v66);
              if (v65 != *(v13 + 20))
              {
                v65 = v66.i32[0];
              }

              v67 = v65 << 6;
              v68 = v13 - v67 + *(v13 + 24);
              *(v13 + 28) += 64;
              v69 = v67 - 64;
              v70 = (v68 + 32 + v67 - 64);
              v56 = *v70;
              v71 = v70[1];
              v72 = v70[2];
              v73 = v70[3];
              v74 = v70[4];
              v75 = v70[5];
              v76 = v70[6];
              v64 = v70[7];
              memmove((v68 + 96), (v68 + 32), v69);
              v63 = v76;
              v62 = v75;
              v61 = v74;
              v60 = v73;
              v59 = v72;
              v58 = v71;
              *(v13 + 16) = 0;
              *(v13 + 28) = *(v13 + 24);
              goto LABEL_52;
            }

            if ((v42 & v44) == 0)
            {
              goto LABEL_49;
            }

            v56 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v77 = *(v13 + 32);
            *(v13 + 28) += 8;
            *(v13 + 16) = (1 << v77);
LABEL_52:
            *&v175 = v114;
            *(&v175 + 1) = v111;
            *&v176 = v107;
            *(&v176 + 1) = v97;
            *&v177 = v101;
            *(&v177 + 1) = v99;
            *&v178 = v105;
            *(&v178 + 1) = v103;
            *&v179 = v56;
            *(&v179 + 1) = v58;
            *&v180 = v59;
            *(&v180 + 1) = v60;
            *&v181 = v61;
            *(&v181 + 1) = v62;
            *v182 = v63;
            *&v182[8] = v64;
            *a5 = v114;
            *(a5 + 8) = v111;
            *(a5 + 16) = v107;
            *(a5 + 24) = v97;
            *(a5 + 32) = v101;
            *(a5 + 40) = v99;
            *(a5 + 48) = v105;
            *(a5 + 56) = v103;
            *(a5 + 64) = v56;
            *(a5 + 72) = v58;
            *(a5 + 80) = v59;
            *(a5 + 88) = v60;
            *(a5 + 96) = v61;
            *(a5 + 104) = v62;
            *(a5 + 112) = v63;
            *(a5 + 120) = v64;
            Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5, v40);
            sub_1ADDCEE40(&v175, &v152, &qword_1EB5BCD08, &unk_1AE251DC0);

            sub_1ADDCC35C(v114, v111);
            v32 = &qword_1EB5BA980;
            v33 = &qword_1AE245630;
            v34 = &v179;
            goto LABEL_60;
          }

LABEL_40:
          v56 = 0;
          if (!v44 || v42)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            goto LABEL_52;
          }

          v41.i32[0] = v44;
          v57 = vcnt_s8(v41);
          v57.i16[0] = vaddlv_u8(v57);
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          if (v57.i32[0] >= 2u)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        *(v13 + 28) += 16;
        v51 = *(v13 + 40);
        memmove(v14, (v13 + 48), (16 * v41.i32[0]) - 16);
        *(v13 + 20) = 0;

        *v5 = v50;
        v5[1] = v51;
        v44 = *(v50 + 16);
        v42 = *(v50 + 20);
        v13 = v50;
      }
    }

LABEL_28:
    if (v44 == v42)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  sub_1AE03783C(a1, a2, a3, a4, *v5, v5[1], &v167, v12);
  v180 = v172;
  v181 = v173;
  *v182 = v174[0];
  *&v182[10] = *(v174 + 10);
  v177 = v169;
  v178 = v170;
  v179 = v171;
  v175 = v167;
  v176 = v168;
  if (sub_1ADE23F54(&v175) == 1)
  {
    v158 = v173;
    v159[0] = v174[0];
    *(v159 + 10) = *(v174 + 10);
    v154 = v169;
    v155 = v170;
    v156 = v171;
    v157 = v172;
    v152 = v167;
    v153 = v168;
    sub_1ADDCEDE0(&v152, &qword_1EB5BCCF8, &qword_1AE251DB0);
    sub_1ADEDA0C8(&v160);
    v21 = v164;
    *(a5 + 64) = v163[1];
    *(a5 + 80) = v21;
    v22 = v166;
    *(a5 + 96) = v165;
    *(a5 + 112) = v22;
    v23 = v161;
    *a5 = v160;
    *(a5 + 16) = v23;
    v19 = v162;
    v20 = v163[0];
    goto LABEL_6;
  }

  v157 = v172;
  v158 = v173;
  v159[0] = v174[0];
  *(v159 + 10) = *(v174 + 10);
  v154 = v169;
  v155 = v170;
  v156 = v171;
  v152 = v167;
  v153 = v168;
  v162 = v173;
  v163[0] = v174[0];
  *(v163 + 10) = *(v174 + 10);
  v160 = v171;
  v161 = v172;
  sub_1AE037C54(a1, &v160, &v144);
  v27 = v153;
  *a5 = v152;
  *(a5 + 16) = v27;
  v28 = v155;
  *(a5 + 32) = v154;
  *(a5 + 48) = v28;
  v29 = v145;
  *(a5 + 64) = v144;
  *(a5 + 80) = v29;
  v30 = v147;
  *(a5 + 96) = v146;
  *(a5 + 112) = v30;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5, v31);
  v32 = &qword_1EB5BCD00;
  v33 = &qword_1AE251DB8;
  v34 = &v156;
LABEL_60:
  sub_1ADDCEDE0(v34, v32, v33);
}

void sub_1AE03783C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, _OWORD *a7@<X8>, int8x8_t a8@<D0>)
{
  v13 = a1;
  v15 = a5 + 4;
  v16 = sub_1AE033138(a1, a2, a3, a4, &a5[2], &a5[4], a8);
  if (v16 == 2)
  {
    sub_1AE03CAFC(&v71);
    v17 = v78[0];
    a7[6] = v77;
    a7[7] = v17;
    *(a7 + 122) = *(v78 + 10);
    v18 = v74;
    a7[2] = v73;
    a7[3] = v18;
    v19 = v76;
    a7[4] = v75;
    a7[5] = v19;
    v21 = v71;
    v20 = v72;
LABEL_3:
    *a7 = v21;
    a7[1] = v20;
    return;
  }

  v22 = HIDWORD(v16);
  if (v16)
  {
    v23 = &v15[2 * v22];
    v24 = *v23;
    v25 = v23[1];

    sub_1AE03783C(&v55, (v13 + 5), a2, a3, a4, *&v24, *&v25);

    v69 = v61;
    v70[0] = v62[0];
    *(v70 + 10) = *(v62 + 10);
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
    v63 = v55;
    v64 = v56;
    v77 = v61;
    v78[0] = v62[0];
    *(v78 + 10) = *(v62 + 10);
    v73 = v57;
    v74 = v58;
    v75 = v59;
    v76 = v60;
    v71 = v55;
    v72 = v56;
    if (sub_1ADE23F54(&v71) == 1)
    {
      v53 = v61;
      v54[0] = v62[0];
      *(v54 + 10) = *(v62 + 10);
      v49 = v57;
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v47 = v55;
      v48 = v56;
      sub_1ADDCEDE0(&v47, &qword_1EB5BCCF8, &qword_1AE251DB0);
      v26 = v70[0];
      a7[6] = v69;
      a7[7] = v26;
      *(a7 + 122) = *(v70 + 10);
      v27 = v66;
      a7[2] = v65;
      a7[3] = v27;
      v28 = v68;
      a7[4] = v67;
      a7[5] = v28;
      v21 = v63;
      v20 = v64;
      goto LABEL_3;
    }

    v41[2] = v69;
    v42[0] = v70[0];
    *(v42 + 10) = *(v70 + 10);
    v39 = v65;
    v40 = v66;
    v41[0] = v67;
    v41[1] = v68;
    v37 = v63;
    v38 = v64;
    v79[2] = v69;
    v80[0] = v70[0];
    v43[6] = v69;
    v44[0] = v70[0];
    *(v80 + 10) = *(v70 + 10);
    *(v44 + 10) = *(v70 + 10);
    v79[0] = v67;
    v79[1] = v68;
    v43[2] = v65;
    v43[3] = v66;
    v43[4] = v67;
    v43[5] = v68;
    v43[0] = v63;
    v43[1] = v64;
    sub_1ADDCEE40(&v63, &v47, &qword_1EB5BCCF8, &qword_1AE251DB0);
    sub_1ADDCEE40(v43, &v47, &qword_1EB5BCD20, &qword_1AE251DF0);
    sub_1AE0381E4(v13, (a4 >> v13) & 0x1F, v22, v79, a5, a6, v45);
    v53 = v61;
    v54[0] = v62[0];
    *(v54 + 10) = *(v62 + 10);
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v47 = v55;
    v48 = v56;
    sub_1ADDCEDE0(&v47, &qword_1EB5BCCF8, &qword_1AE251DB0);

    sub_1ADDCC35C(v37, *(&v37 + 1));
    *a7 = v37;
    a7[1] = v38;
    a7[2] = v39;
    a7[3] = v40;
    v34 = v46[0];
    a7[6] = v45[2];
    a7[7] = v34;
    *(a7 + 122) = *(v46 + 10);
    v35 = v45[1];
    a7[4] = v45[0];
    a7[5] = v35;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a7, v36);
    sub_1ADDCEDE0(v41, &qword_1EB5BCD00, &qword_1AE251DB8);
  }

  else
  {
    sub_1AE0388F0(a5 + 2, v15, HIDWORD(v16), v13, a5, a6, (a4 >> v13) & 0x1F, &v71);
    v29 = v72;
    *a7 = v71;
    a7[1] = v29;
    v30 = v74;
    a7[2] = v73;
    a7[3] = v30;
    v31 = v78[0];
    a7[6] = v77;
    a7[7] = v31;
    *(a7 + 122) = *(v78 + 10);
    v32 = v76;
    a7[4] = v75;
    a7[5] = v32;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a7, v33);
  }
}

uint64_t sub_1AE037C04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDD86D8(result, a2);

    return sub_1ADDE0F78(a3, a4);
  }

  return result;
}

double sub_1AE037C54@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;

  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a2 + 73) - 1 >= 2)
  {
    if (*(a2 + 73))
    {
      sub_1ADDCEE40(a2, v22, &qword_1EB5BCD00, &qword_1AE251DB8);
      *v3 = *sub_1AE23C1EC();
      v3[1] = 0;
    }

    else
    {
      v11 = *(a2 + 24);
      v10 = *(a2 + 32);
      v13 = *(a2 + 40);
      v12 = *(a2 + 48);
      v15 = *(a2 + 56);
      v14 = *(a2 + 64);
      if (a1)
      {
        v16 = a2;
        v17 = *(a2 + 64);
        v18 = v15;
        sub_1ADDCEE40(v16, v22, &qword_1EB5BCD00, &qword_1AE251DB8);
        *v3 = *sub_1AE23C1EC();
        v3[1] = 0;
        *a3 = v9;
        a3[1] = v8;
        a3[2] = v11;
        a3[3] = v10;
        a3[4] = v13;
        a3[5] = v12;
        a3[6] = v18;
        a3[7] = v17;

        return result;
      }

      v20 = *(a2 + 72);
      *&v23 = *(a2 + 24);
      *(&v23 + 1) = v10;
      v24 = v13;
      v25 = v12;
      v26 = v15;
      v27 = v14;
      sub_1ADDCEE40(a2, v22, &qword_1EB5BCD00, &qword_1AE251DB8);
      *v3 = sub_1AE038810(v9, v8, &v23, v20);
      v3[1] = v21;
    }
  }

  else
  {
    *v3 = v9;
    v3[1] = v8;
    sub_1ADDCEE40(a2, v22, &qword_1EB5BCD00, &qword_1AE251DB8);
  }

  result = 0.0;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1AE037DC4@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, _DWORD *a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  v14 = result;
  if (BYTE1(a6) <= 1u)
  {
    if (!BYTE1(a6))
    {
      v16 = a7[5];
      if (a7[4])
      {
        v17 = 1;
      }

      else
      {
        v17 = v16.i32[0] == 0;
      }

      v18 = vcnt_s8(v16);
      v18.i16[0] = vaddlv_u8(v18);
      if (!v17 && v18.i32[0] < 2u)
      {
        *(a8 + 8) = a4;
        *(a8 + 16) = a5;
        *(a8 + 24) = a2;
LABEL_42:
        *a8 = v14;
        return result;
      }

      v21 = sub_1ADDFA324(0, a7, a9);
      v66 = v22;
      sub_1ADDFA4B4(a4, a5, a6, 0);
      if (v21[4] == v21[5])
      {
        v24 = -1;
      }

      else
      {
        v23.i32[0] = v21[5];
        v58 = vcnt_s8(v23);
        v58.i16[0] = vaddlv_u8(v58);
        v24 = v58.u32[0] - 1;
      }

      v21[7] += 16;
      v59 = &v21[4 * a3 + 8];
      v60 = *v59;
      v61 = *(v59 + 1);
      memmove(v59, v59 + 4, 16 * (v24 - a3));
      v21[5] &= ~(1 << a2);

      v62.i32[0] = v21[4] & ((1 << a2) - 1);
      v63 = vcnt_s8(v62);
      v63.i16[0] = vaddlv_u8(v63);
      v64 = v63.i32[0];
      sub_1ADDD86D8(a4, a5);
      sub_1ADDD86D8(a4, a5);
      v65 = sub_1ADDE15A0(v64, a2, v21 + 4, (v21 + 8));
      *v65 = a4;
      *(v65 + 1) = a5;
      sub_1ADDD86D8(a4, a5);
      sub_1ADDCC35C(a4, a5);
      sub_1ADDFC318(a4, a5, a6, 0);
      sub_1ADDCC35C(a4, a5);
      result = sub_1ADDCC35C(a4, a5);
      *(a8 + 8) = v21;
      *(a8 + 16) = v66 - v61 + 1;
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  if (BYTE1(a6) == 2)
  {
    v25 = a7[5];
    if (a7[4])
    {
      v26 = 1;
    }

    else
    {
      v26 = v25.i32[0] == 0;
    }

    v27 = vcnt_s8(v25);
    v27.i16[0] = vaddlv_u8(v27);
    if (!v26 && v27.i32[0] < 2u)
    {
      *(a8 + 8) = a4;
      *(a8 + 16) = a5;
      *(a8 + 24) = a6;
      *(a8 + 25) = 2;
      goto LABEL_42;
    }

LABEL_22:
    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDFA324(v29, a7, a9);
    v32 = v31;
    v33 = v30 + 16 * a3;
    v34 = *(v33 + 32);
    v35 = a5 - *(v33 + 40);
    *(v33 + 32) = a4;
    *(v33 + 40) = a5;

    v36 = v35 + v32;
    *(a8 + 8) = v30;
LABEL_39:
    *(a8 + 16) = v36;
LABEL_40:
    v57 = 256;
LABEL_41:
    *(a8 + 24) = v57;
    goto LABEL_42;
  }

  v37 = a7 + 8;
  v38 = a7[4];
  if (v38)
  {
    if ((v38 & (v38 - 1)) == 0 && (a7[5] ^ (a7[5] - 1)) > a7[5] - 1)
    {
      v39 = v37 + a7[6];
      v40 = *(v39 - 2);
      v41 = *(v39 - 1);
      *(a8 + 8) = v40;
      *(a8 + 16) = v41;
      *(a8 + 24) = __clz(__rbit32(v38));
      *a8 = v14;

      return sub_1ADDD86D8(v40, v41);
    }

LABEL_35:
    v46 = sub_1ADDFB3E0();
    v47 = sub_1ADDFA324(v46, a7, a9);
    v49 = v47;
    v51 = v50;
    if (v47[4] == v47[5])
    {
      v52 = -1;
    }

    else
    {
      v48.i32[0] = v47[5];
      v53 = vcnt_s8(v48);
      v53.i16[0] = vaddlv_u8(v53);
      v52 = v53.u32[0] - 1;
    }

    v47[7] += 16;
    v54 = &v47[4 * a3 + 8];
    v55 = *v54;
    v56 = v54[1];
    memmove(v54, v54 + 2, 16 * (v52 - a3));
    v49[5] &= (-1 << a2) - 1;

    v36 = v51 - v56;
    *(a8 + 8) = v49;
    goto LABEL_39;
  }

  v42 = vcnt_s8(a7[5]);
  v42.i16[0] = vaddlv_u8(v42);
  if (v42.i32[0] == 1)
  {
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
    v57 = 768;
    goto LABEL_41;
  }

  if (v42.i32[0] != 2)
  {
    goto LABEL_35;
  }

  v43 = &v37[4 * (1 - a3)];
  v44 = *v43;
  if ((*(*v43 + 20) & *(*v43 + 16)) == 0)
  {
    goto LABEL_35;
  }

  v45 = v43[1];
  *(a8 + 8) = v44;
  *(a8 + 16) = v45;
  *(a8 + 24) = 512;
  *a8 = v14;
}

double sub_1AE0381E4@<D0>(char a1@<W0>, unsigned __int8 a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (*(a4 + 73) > 1u)
  {
    if (*(a4 + 73) != 2)
    {
      v32 = a5 + 8;
      v33 = a5[4];
      if (v33)
      {
        if ((v33 & (v33 - 1)) == 0 && (a5[5] ^ (a5[5] - 1)) > a5[5] - 1)
        {
          v34 = v32 + a5[6];
          v35 = *(v34 - 3);
          v83 = *(v34 - 4);
          v84 = v35;
          v36 = *(v34 - 1);
          v85 = *(v34 - 2);
          v86 = v36;
          v37 = v84;
          *(a7 + 8) = v83;
          *(a7 + 24) = v37;
          v38 = v86;
          *(a7 + 40) = v85;
          *(a7 + 56) = v38;
          *(a7 + 72) = __clz(__rbit32(v33));
          *a7 = a1;
          sub_1ADDCEE40(&v83, &v103, &qword_1EB5BA9E8, &qword_1AE251DE0);
          return *&v19;
        }
      }

      else
      {
        v45 = vcnt_s8(a5[5]);
        v45.i16[0] = vaddlv_u8(v45);
        if (v45.i32[0] == 1)
        {
          *&v19 = 0;
          *(a7 + 56) = 0u;
          *(a7 + 40) = 0u;
          *(a7 + 24) = 0u;
          *(a7 + 8) = 0u;
          *(a7 + 72) = 768;
          goto LABEL_35;
        }

        if (v45.i32[0] == 2)
        {
          v46 = &v32[4 * (1 - a3)];
          v47 = *v46;
          if ((*(*v46 + 20) & *(*v46 + 16)) != 0)
          {
            v48 = v46[1];
            *(a7 + 8) = v47;
            *(a7 + 16) = v48;
            *(a7 + 73) = 2;
            *a7 = a1;

            return *&v19;
          }
        }
      }

      v49 = sub_1ADDFB3E0();
      v50 = sub_1ADDF59C8(v49, a5, a6);
      v52 = v50;
      v54 = v53;
      if (v50[4] == v50[5])
      {
        v55 = -1;
      }

      else
      {
        v51.i32[0] = v50[5];
        v56 = vcnt_s8(v51);
        v56.i16[0] = vaddlv_u8(v56);
        v55 = v56.u32[0] - 1;
      }

      v50[7] += 16;
      v57 = &v50[4 * a3 + 8];
      v59 = *v57;
      v58 = v57[1];
      memmove(v57, v57 + 2, 16 * (v55 - a3));
      v52[5] &= (-1 << a2) - 1;

      v31 = v54 - v58;
      *(a7 + 8) = v52;
      goto LABEL_33;
    }

    v20 = a5[5];
    if (a5[4])
    {
      v21 = 1;
    }

    else
    {
      v21 = v20.i32[0] == 0;
    }

    v22 = vcnt_s8(v20);
    v22.i16[0] = vaddlv_u8(v22);
    if (!v21 && v22.i32[0] < 2u)
    {
      *(a7 + 8) = v14;
      *(a7 + 16) = v13;
      *(a7 + 24) = *(a4 + 24);
      *(a7 + 40) = *(a4 + 40);
      v19 = *(a4 + 56);
      *(a7 + 56) = v19;
      *(a7 + 72) = *(a4 + 72);
      v44 = 2;
LABEL_34:
      *(a7 + 73) = v44;
      goto LABEL_35;
    }

LABEL_16:
    v24 = sub_1ADDFB3E0();
    v25 = sub_1ADDF59C8(v24, a5, a6);
    v27 = v26;
    v28 = v25 + 16 * a3;
    v29 = *(v28 + 32);
    v30 = v13 - *(v28 + 40);
    *(v28 + 32) = v14;
    *(v28 + 40) = v13;

    v31 = v30 + v27;
    *(a7 + 8) = v25;
LABEL_33:
    *(a7 + 16) = v31;
    v60 = v84;
    *(a7 + 24) = v83;
    *(a7 + 40) = v60;
    *&v19 = v85;
    *(a7 + 56) = v85;
    *(a7 + 72) = v86;
    v44 = 1;
    goto LABEL_34;
  }

  if (*(a4 + 73))
  {
    goto LABEL_16;
  }

  *&v103 = *(a4 + 8);
  *(&v103 + 1) = v13;
  v15 = *(a4 + 40);
  v104 = *(a4 + 24);
  v105 = v15;
  v106 = *(a4 + 56);
  if (!a5[4])
  {
    v16 = a5[5];
    if (v16.i32[0])
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.i32[0] < 2u)
      {
        *(a7 + 8) = v14;
        *(a7 + 16) = v13;
        v18 = v105;
        *(a7 + 24) = v104;
        *(a7 + 40) = v18;
        *&v19 = v106;
        *(a7 + 56) = v106;
        *(a7 + 72) = a2;
LABEL_35:
        *a7 = a1;
        return *&v19;
      }
    }
  }

  v40 = sub_1ADDF59C8(48, a5, a6);
  v81 = v41;
  v82 = a4;
  sub_1ADDCEE40(a4, &v83, &qword_1EB5BCD00, &qword_1AE251DB8);
  if (v40[4] == v40[5])
  {
    v43 = -1;
  }

  else
  {
    v42.i32[0] = v40[5];
    v61 = vcnt_s8(v42);
    v61.i16[0] = vaddlv_u8(v61);
    v43 = v61.u32[0] - 1;
  }

  v40[7] += 16;
  v62 = &v40[4 * a3 + 8];
  v63 = *v62;
  v77 = *(v62 + 1);
  memmove(v62, v62 + 4, 16 * (v43 - a3));
  v40[5] &= ~(1 << a2);

  v64 = v103;
  v65 = *(&v104 + 1);
  v66 = v105;
  v67 = v106;
  v68.i32[0] = v40[4] & ((1 << a2) - 1);
  v69 = vcnt_s8(v68);
  v69.i16[0] = vaddlv_u8(v69);
  v76 = v69.i32[0];
  v87[0] = v103;
  v79 = *(&v106 + 1);
  v80 = v104;
  v87[1] = v104;
  v87[2] = v105;
  v78 = *(&v105 + 1);
  v87[3] = v106;
  v88 = v103;
  v89 = v104;
  v90 = v105;
  v91 = v106;
  sub_1ADDCEE40(&v103, &v83, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEE40(v87, &v83, &qword_1EB5BA9E8, &qword_1AE251DE0);
  v70 = sub_1ADE1A914(v76, a2, v40 + 4, (v40 + 8));
  v71 = v89;
  v72 = v90;
  v73 = v91;
  *v70 = v88;
  *(v70 + 1) = v71;
  *(v70 + 2) = v72;
  *(v70 + 3) = v73;
  sub_1ADDCEE40(&v88, &v83, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(&v103, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(v82, &qword_1EB5BCD00, &qword_1AE251DB8);
  v92 = v64;
  v93 = v80;
  v94 = v65;
  v95 = v66;
  v96 = v78;
  v97 = v67;
  v98 = v79;
  sub_1ADDCEDE0(&v92, &qword_1EB5BA9E8, &qword_1AE251DE0);
  v83 = v64;
  *&v84 = v80;
  *(&v84 + 1) = v65;
  *&v85 = v66;
  *(&v85 + 1) = v78;
  *&v86 = v67;
  *(&v86 + 1) = v79;
  sub_1ADDCEDE0(&v83, &qword_1EB5BA9E8, &qword_1AE251DE0);
  *(a7 + 8) = v40;
  *(a7 + 16) = v81 - v77 + 1;
  v74 = v100;
  *(a7 + 24) = v99;
  *(a7 + 40) = v74;
  *&v19 = v101;
  *(a7 + 56) = v101;
  *(a7 + 72) = v102;
  *(a7 + 73) = 1;
  *a7 = a1;
  return *&v19;
}

_DWORD *sub_1AE038790(uint64_t a1, unint64_t a2, char a3)
{
  v5 = 1 << a3;
  v6 = sub_1ADDDB860(16);
  v6[4] = v5;
  v6[5] = 0;
  v7 = v6[6];
  v6[7] -= 16;
  v8 = (v6 + v7 + 16);
  *v8 = a1;
  v8[1] = a2;
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(a1, a2);
  return v6;
}

_DWORD *sub_1AE038810(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v7 = 1 << a4;
  v8 = sub_1ADDDAC74(64);
  v9 = v8[6];
  v8[7] -= 64;
  v8[4] = v7;
  v8[5] = 0;
  v10 = (v8 + v9);
  v18[0] = a1;
  v18[1] = a2;
  v11 = a3[1];
  v19 = *a3;
  v20 = v11;
  v13 = *a3;
  v12 = a3[1];
  v21 = a3[2];
  v14 = v20;
  v15 = v21;
  *(v10 - 1) = v19;
  *v10 = v14;
  *(v10 - 4) = a1;
  *(v10 - 3) = a2;
  v10[1] = v15;
  v22[0] = a1;
  v22[1] = a2;
  v23 = v13;
  v24 = v12;
  v25 = a3[2];
  sub_1ADDCEE40(v18, &v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(v22, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v8;
}

int8x8_t *sub_1AE0388F0@<X0>(int8x8_t *result@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *result;
  v15 = HIDWORD(*result);
  if ((v15 & v14) != 0)
  {
    if (v14 == 2)
    {
      v16 = a2 + result[1].u32[0];
      v17 = &v16[64 * ~a3];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = 1 - a3;
      v21 = (*a2 >> a4) & 0x1FLL;
      v74 = *v17;
      v75 = v19;
LABEL_4:
      v23 = *(v17 + 3);
      v76 = *(v17 + 2);
      v22 = v76;
      v77 = v23;
      *a8 = v18;
      *(a8 + 16) = v19;
      *(a8 + 32) = v22;
      *(a8 + 48) = v23;
      v24 = &v16[64 * ~v20];
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      v27 = *(v24 + 1);
      v78 = *v24;
      v79 = v27;
      v80 = v26;
      v81 = v25;
      *(a8 + 72) = v78;
      *(a8 + 88) = v27;
      v28 = v81;
      *(a8 + 104) = v80;
      *(a8 + 120) = v28;
      *(a8 + 136) = v21;
      *(a8 + 137) = 0;
      *(a8 + 64) = a4;
      sub_1ADDCEE40(&v74, v73, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v29 = v73;
      return sub_1ADDCEE40(&v78, v29, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    v38 = sub_1ADDFB3E0();
    v39 = sub_1ADDF59C8(v38, a5, a6);
    v40 = v39;
    v42 = v41;
    LODWORD(v43) = v39[4];
    v44 = vcnt_s8(v43);
    v44.i16[0] = vaddlv_u8(v44);
    if (v43 == v39[5])
    {
      v43 = v43;
    }

    else
    {
      v43 = v44.u32[0];
    }

    v45 = v39 + v39[6] + -64 * v43;
    v39[7] += 64;
    v46 = (v43 + ~a3) << 6;
    v47 = &v45[v46 + 32];
    v69 = *(v47 + 1);
    v71 = *v47;
    v65 = *(v47 + 3);
    v67 = *(v47 + 2);
    result = memmove(v45 + 96, v45 + 32, v46);
    v48 = v40[4];
    if ((v40[5] & v48) != 0)
    {
      v49 = v48 - 1;
      v40[5] = v49;
    }

    else
    {
      v49 = v48 & ((-1 << a7) - 1);
    }

    v40[4] = v49;
    *a8 = v71;
    *(a8 + 16) = v69;
    *(a8 + 32) = v67;
    *(a8 + 48) = v65;
    *(a8 + 72) = v40;
    *(a8 + 80) = v42 - 1;
    v63 = 2;
    goto LABEL_30;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v30 = vpaddl_u16(vpaddl_u8(vcnt_s8(*result)));
  v31 = vcgt_u32(0x200000002, v30);
  if (v31.i8[0] & 1) != 0 && v15 && (v31.i8[4])
  {
    v32 = *a2;
    if ((*(*a2 + 20) & *(*a2 + 16)) != 0)
    {
      v33 = a2[1];
      v34 = a2 + result[1].u32[0];
      v35 = *(v34 - 3);
      v78 = *(v34 - 4);
      v79 = v35;
      v37 = *(v34 - 1);
      v80 = *(v34 - 2);
      v36 = v80;
      v81 = v37;
      *a8 = v78;
      *(a8 + 16) = v35;
      *(a8 + 32) = v36;
      *(a8 + 48) = v37;
      *(a8 + 72) = v32;
      *(a8 + 80) = v33;
      *(a8 + 137) = 2;
      *(a8 + 64) = a4;

      v29 = &v74;
      return sub_1ADDCEE40(&v78, v29, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    goto LABEL_21;
  }

  if (v30.i32[0] != 2 || v15 != 0)
  {
LABEL_21:
    v51 = sub_1ADDFB3E0();
    v52 = sub_1ADDF59C8(v51, a5, a6);
    v53 = v52;
    v55 = v54;
    LODWORD(v56) = v52[4];
    v57 = vcnt_s8(v56);
    v57.i16[0] = vaddlv_u8(v57);
    if (v56 == v52[5])
    {
      v56 = v56;
    }

    else
    {
      v56 = v57.u32[0];
    }

    v58 = v52 + v52[6] + -64 * v56;
    v52[7] += 64;
    v59 = (v56 + ~a3) << 6;
    v60 = &v58[v59 + 32];
    v70 = *(v60 + 1);
    v72 = *v60;
    v66 = *(v60 + 3);
    v68 = *(v60 + 2);
    result = memmove(v58 + 96, v58 + 32, v59);
    v61 = v53[4];
    if ((v53[5] & v61) != 0)
    {
      v62 = v61 - 1;
      v53[5] = v62;
    }

    else
    {
      v62 = v61 & ((-1 << a7) - 1);
    }

    v53[4] = v62;
    *a8 = v72;
    *(a8 + 16) = v70;
    *(a8 + 32) = v68;
    *(a8 + 48) = v66;
    *(a8 + 72) = v53;
    *(a8 + 80) = v55 - 1;
    v63 = 1;
LABEL_30:
    *(a8 + 137) = v63;
    *(a8 + 64) = a4;
    return result;
  }

  v64 = v14 - 1;
  if (a3 == 1)
  {
    v64 = -1;
  }

  LODWORD(v21) = v64 & v14;
  if (v21)
  {
    v16 = a2 + result[1].u32[0];
    v17 = &v16[64 * ~a3];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = 1 - a3;
    v74 = *v17;
    v75 = v19;
    LOBYTE(v21) = __clz(__rbit32(v21));
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE038C98(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_1AE23C1FC();
  result = sub_1ADDE5058(v3, type metadata accessor for PartiallyOrderedReferenceMap);
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 1;
  while (1)
  {
    v12 = v29;
    if (v29 < DWORD1(v29))
    {
      v13 = *(&v28 + 1);
      LODWORD(v29) = v29 + 1;
      goto LABEL_8;
    }

    v13 = sub_1AE23C20C();
    if (!v13)
    {
      break;
    }

LABEL_8:
    v14 = (v13 + *(v13 + 24) + (~v12 << 6));
    v15 = v14[5];
    v17 = v14[2];
    v16 = v14[3];
    v27[2] = v14[4];
    v27[3] = v15;
    v27[0] = v17;
    v27[1] = v16;
    v18 = v14[2];
    v19 = v14[3];
    v20 = v14[5];
    a2[2] = v14[4];
    a2[3] = v20;
    *a2 = v18;
    a2[1] = v19;
    if (a3 == v11)
    {
      sub_1ADDCEE40(v27, v26, &qword_1EB5BA9E8, &qword_1AE251DE0);
      goto LABEL_15;
    }

    a2 += 4;
    sub_1ADDCEE40(v27, v26, &qword_1EB5BA9E8, &qword_1AE251DE0);
    if (__OFADD__(v11++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  a3 = v11 - 1;
LABEL_15:
  v22 = v35[0];
  a1[6] = v34;
  a1[7] = v22;
  *(a1 + 123) = *(v35 + 11);
  v23 = v31;
  a1[2] = v30;
  a1[3] = v23;
  v24 = v33;
  a1[4] = v32;
  a1[5] = v24;
  v25 = v29;
  *a1 = v28;
  a1[1] = v25;
  return a3;
}

uint64_t sub_1AE038E20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v223 = sub_1AE23C12C();
  v221 = *(v223 - 8);
  v7 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v9 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v179 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v179 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v179 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v209 = &v179 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v220 = &v179 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v213 = &v179 - v23;
  v24 = type metadata accessor for Replica();
  v212 = *(v24 - 8);
  v25 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v217 = &v179 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v211 = &v179 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v219 = &v179 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v216 = &v179 - v40;
  v41 = *(v3 + 176);
  v258[8] = *(v3 + 160);
  v258[9] = v41;
  v259 = *(v3 + 192);
  v260 = *(v3 + 208);
  v42 = *(v3 + 112);
  v258[4] = *(v3 + 96);
  v258[5] = v42;
  v43 = *(v3 + 144);
  v258[6] = *(v3 + 128);
  v258[7] = v43;
  v44 = *(v3 + 48);
  v258[0] = *(v3 + 32);
  v258[1] = v44;
  v45 = *(v3 + 80);
  v258[2] = *(v3 + 64);
  v258[3] = v45;
  v46 = *(v3 + 16);
  v256 = *v3;
  v257 = v46;
  if (!a2)
  {
    goto LABEL_95;
  }

  if (!a3)
  {
    goto LABEL_106;
  }

  if (a3 < 0)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    swift_once();
LABEL_100:
    v164 = sub_1AE23C78C();
    __swift_project_value_buffer(v164, qword_1EB5D74A8);
    v165 = sub_1AE23C76C();
    v166 = sub_1AE23D61C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 134217984;
      *(v167 + 4) = v12;
      _os_log_impl(&dword_1ADDCA000, v165, v166, "Excessive since comparisons: %ld", v167, 0xCu);
      MEMORY[0x1B26FDA50](v167, -1, -1);
    }

    goto LABEL_103;
  }

  v190 = v39;
  v191 = v38;
  v188 = v9;
  v189 = v27;
  v196 = v15;
  v197 = a1;
  v187 = v12;
  v185 = a2;
  v183 = a3;
  v47 = *(v3 + 8);
  v200 = *v3;
  v201 = 0;
  v218 = v221 + 16;
  v222 = (v221 + 32);
  v208 = (v221 + 8);
  v48 = *(v3 + 24);
  v198 = *(v3 + 16);
  v199 = v47;
  v224 = v48;
  v206 = v48 + 56;
  v49 = *(v3 + 200);
  v12 = *(v3 + 208);
  v50 = *(v3 + 184);
  v214 = *(v3 + 192);
  v203 = v50;
  a2 = *(v3 + 32);
  v51 = 1;
LABEL_5:
  v184 = v51;
LABEL_6:
  v205 = v49;
  LODWORD(v215) = v49;
  v52 = a2;
LABEL_7:
  for (i = (v206 + 40 * v52); ; i += 5)
  {
    v254[6] = *(&v258[6] + 8);
    v255[0] = *(&v258[7] + 8);
    *(v255 + 11) = *(&v258[8] + 3);
    v254[2] = *(&v258[2] + 8);
    v254[3] = *(&v258[3] + 8);
    v254[5] = *(&v258[5] + 8);
    v254[4] = *(&v258[4] + 8);
    v254[1] = *(&v258[1] + 8);
    v254[0] = *(v258 + 8);
    if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v254) != 1)
    {
      v54 = DWORD2(v258[1]);
      if (DWORD2(v258[1]) < HIDWORD(v258[1]))
      {
        v55 = *&v258[1];
        ++DWORD2(v258[1]);
LABEL_69:
        v136 = v55 + *(v55 + 24) + 16 * ~v54;
        v137 = *(v136 + 32);
        v3 = *(v136 + 40);
        v49 = v205;
        v207 = v137;
        if (v205)
        {
          sub_1ADDD86D8(v137, v3);
          v152 = v207;
        }

        else
        {
          v62 = __OFADD__(v12++, 1);
          if (v62)
          {
            goto LABEL_111;
          }

          v204 = v12;
          v260 = v12;
          v138 = v137;
          sub_1ADDD86D8(v137, v3);
          v215 = v3;
          result = sub_1ADDDF7A8(v138, v3, v200, &v251);
          v140 = *&v252[0];
          if (!*&v252[0])
          {
            __break(1u);
LABEL_116:
            __break(1u);
            return result;
          }

          v141 = *(&v252[0] + 1);
          a1 = *(&v251 + 1);
          v142 = v251;

          sub_1ADDDC21C(v142, a1, v140);
          if (sub_1ADF637A8(v141, v214))
          {

            v12 = v204;
          }

          else
          {
            a1 = sub_1ADF637A8(v140, v203);

            v12 = v204;
            if ((a1 & 1) == 0)
            {
              sub_1ADDCC35C(v138, v215);
              v49 = 0;
              goto LABEL_6;
            }
          }

          v49 = v205;
          v152 = v207;
          v3 = v215;
        }

        result = sub_1ADDDF7A8(v152, v3, v200, &v251);
        v153 = *&v252[0];
        if (!*&v252[0])
        {
          goto LABEL_116;
        }

        v154 = *(&v252[1] + 1);
        v155 = v185;
        *v185 = v207;
        v155[1] = v251;
        *(v155 + 4) = v153;
        *(v155 + 40) = *(v252 + 8);
        *(v155 + 7) = v154;
        if (v184 == v183)
        {
LABEL_105:
          a1 = v197;
          a3 = v183;
LABEL_106:
          v174 = v258[9];
          *(a1 + 160) = v258[8];
          *(a1 + 176) = v174;
          *(a1 + 192) = v259;
          *(a1 + 208) = v260;
          v175 = v258[5];
          *(a1 + 96) = v258[4];
          *(a1 + 112) = v175;
          v176 = v258[7];
          *(a1 + 128) = v258[6];
          *(a1 + 144) = v176;
          v177 = v258[1];
          *(a1 + 32) = v258[0];
          *(a1 + 48) = v177;
          v178 = v258[3];
          *(a1 + 64) = v258[2];
          *(a1 + 80) = v178;
          v161 = v256;
          v162 = v257;
LABEL_107:
          *a1 = v161;
          *(a1 + 16) = v162;
          return a3;
        }

        v185 = v155 + 4;
        v201 = v184;
        v51 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          __break(1u);
LABEL_95:
          a3 = 0;
          *(a1 + 208) = *(v3 + 208);
          v156 = *(v3 + 176);
          *(a1 + 160) = *(v3 + 160);
          *(a1 + 176) = v156;
          *(a1 + 192) = *(v3 + 192);
          v157 = *(v3 + 112);
          *(a1 + 96) = *(v3 + 96);
          *(a1 + 112) = v157;
          v158 = *(v3 + 144);
          *(a1 + 128) = *(v3 + 128);
          *(a1 + 144) = v158;
          v159 = *(v3 + 48);
          *(a1 + 32) = *(v3 + 32);
          *(a1 + 48) = v159;
          v160 = *(v3 + 80);
          *(a1 + 64) = *(v3 + 64);
          *(a1 + 80) = v160;
          v161 = *v3;
          v162 = *(v3 + 16);
          goto LABEL_107;
        }

        goto LABEL_5;
      }

      v55 = sub_1AE23C20C();
      if (v55)
      {
        goto LABEL_69;
      }
    }

    sub_1ADECD850(v249);
    v252[5] = *(&v258[6] + 8);
    v253[0] = *(&v258[7] + 8);
    *(v253 + 11) = *(&v258[8] + 3);
    v252[1] = *(&v258[2] + 8);
    v252[2] = *(&v258[3] + 8);
    v252[4] = *(&v258[5] + 8);
    v252[3] = *(&v258[4] + 8);
    v251 = *(v258 + 8);
    v252[0] = *(&v258[1] + 8);
    sub_1ADDCEDE0(&v251, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v258[5] + 8) = v249[5];
    *(&v258[6] + 8) = v249[6];
    *(&v258[7] + 8) = v250[0];
    *(&v258[8] + 3) = *(v250 + 11);
    *(&v258[1] + 8) = v249[1];
    *(&v258[2] + 8) = v249[2];
    *(&v258[3] + 8) = v249[3];
    *(&v258[4] + 8) = v249[4];
    *(v258 + 8) = v249[0];
    v56 = *(v224 + 16);
    if (a2 == v56)
    {
      goto LABEL_98;
    }

    if (a2 >= v56)
    {
      break;
    }

    v58 = *(i - 3);
    v57 = *(i - 2);
    v59 = *(i - 1);
    v60 = *i;
    *&v258[0] = a2 + 1;
    if (v58)
    {
      v62 = __OFADD__(v12++, 1);
      if (v62)
      {
        goto LABEL_112;
      }

      v260 = v12;
      *&v207 = v57;
      v202 = v59;
      v193 = v60;
      if ((v215 & 1) == 0)
      {
        v203 = *(&v258[9] + 1);
        v143 = v259;
        v144 = v58;
        sub_1ADE42C78(v58);

        v186 = v144;
        v145 = v207;
        sub_1ADE42C78(v144);

        v214 = v143;
        v146 = sub_1ADF63DF4(v145, v143);
        v147 = v146;
        if (v146 & 0x100) != 0 && (v146)
        {

          v148 = v186;
          a1 = v207;
          sub_1ADE42CB8(v186);
          LODWORD(v215) = 1;
LABEL_86:
          ++a2;
          sub_1AE23C1FC();
          sub_1ADE42CB8(v148);

          v239 = v231;
          v240[0] = v232[0];
          *(v240 + 11) = *(v232 + 11);
          v235 = v227;
          v236 = v228;
          v237 = v229;
          v238 = v230;
          v233 = v225;
          v234 = v226;
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233, v151);
          v247 = *(&v258[6] + 8);
          v248[0] = *(&v258[7] + 8);
          *(v248 + 11) = *(&v258[8] + 3);
          v243 = *(&v258[2] + 8);
          v244 = *(&v258[3] + 8);
          v245 = *(&v258[4] + 8);
          v246 = *(&v258[5] + 8);
          v241 = *(v258 + 8);
          v242 = *(&v258[1] + 8);
          sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
          *(&v258[5] + 8) = v238;
          *(&v258[6] + 8) = v239;
          *(&v258[7] + 8) = v240[0];
          *(&v258[8] + 3) = *(v240 + 11);
          *(&v258[1] + 8) = v234;
          *(&v258[2] + 8) = v235;
          *(&v258[3] + 8) = v236;
          *(&v258[4] + 8) = v237;
          *(v258 + 8) = v233;
          v49 = v215 ^ 1;
          BYTE8(v259) = v215 ^ 1;
          goto LABEL_6;
        }

        v149 = v186;
        LODWORD(v215) = sub_1ADF63DF4(v186, v203);

        sub_1ADE42CB8(v149);
        if (v147)
        {
          LODWORD(v215) = ((v147 | v215) >> 8) & 1;
          a1 = v207;
          v148 = v186;
          goto LABEL_86;
        }

        if ((v147 & 0x100) != 0)
        {
          if (v215)
          {
            v150 = 1;
LABEL_85:
            LODWORD(v215) = v150;
            a1 = v207;
            v148 = v186;
            goto LABEL_86;
          }
        }

        else if (v215)
        {
          v150 = (v215 >> 8) & 1;
          goto LABEL_85;
        }

        sub_1ADE42CB8(v186);

        goto LABEL_98;
      }

      v192 = a2 + 1;
      if (*(v214 + 16) >= *(v57 + 16))
      {
        v204 = v12;
        v64 = *(v57 + 64);
        v195 = v57 + 64;
        v65 = v58;
        v66 = 1 << *(v57 + 32);
        if (v66 < 64)
        {
          v67 = ~(-1 << v66);
        }

        else
        {
          v67 = -1;
        }

        v68 = v67 & v64;
        sub_1ADE42C78(v58);

        v186 = v65;
        sub_1ADE42C78(v65);
        v194 = ((v66 + 63) >> 6);

        v69 = 0;
        v70 = v219;
        while (1)
        {
          if (!v68)
          {
            if (v194 <= v69 + 1)
            {
              v72 = (v69 + 1);
            }

            else
            {
              v72 = v194;
            }

            v73 = v72 - 1;
            v12 = v216;
            v74 = v217;
            while (1)
            {
              v71 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                break;
              }

              if (v71 >= v194)
              {
                v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
                (*(*(v101 - 8) + 56))(v70, 1, 1, v101);
                v68 = 0;
                v69 = v73;
                goto LABEL_34;
              }

              v68 = *(v195 + 8 * v71);
              ++v69;
              if (v68)
              {
                v69 = v71;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_105;
          }

          v71 = v69;
LABEL_33:
          v75 = __clz(__rbit64(v68));
          v68 &= v68 - 1;
          v76 = v75 | (v71 << 6);
          v77 = v207;
          v78 = v211;
          sub_1ADDDE408(*(v207 + 48) + *(v212 + 72) * v76, v211, type metadata accessor for Replica);
          v79 = v221;
          v80 = *(v77 + 56) + *(v221 + 72) * v76;
          v81 = v213;
          v82 = v223;
          (*(v221 + 16))(v213, v80, v223);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v84 = *(v83 + 48);
          v85 = v78;
          v70 = v219;
          sub_1ADDD8010(v85, v219);
          (*(v79 + 32))(v70 + v84, v81, v82);
          (*(*(v83 - 8) + 56))(v70, 0, 1, v83);
          v12 = v216;
          v74 = v217;
LABEL_34:
          sub_1ADDD2198(v70, v12, &qword_1EB5BA458, &qword_1AE251E00);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v87 = *(v86 - 8);
          v88 = *(v87 + 48);
          if (v88(v12, 1, v86) == 1)
          {
            break;
          }

          v89 = *v222;
          (*v222)(v220, v12 + *(v86 + 48), v223);
          sub_1ADDD8010(v12, v74);
          v90 = v214;
          if (!*(v214 + 16) || (v91 = sub_1ADDD8A6C(v74), (v92 & 1) == 0))
          {
            a1 = v207;

            v63 = v186;
            sub_1ADE42CB8(v186);
            sub_1ADDE5058(v74, type metadata accessor for Replica);
            (*v208)(v220, v223);
            goto LABEL_44;
          }

          v93 = v221;
          v94 = *(v90 + 56) + *(v221 + 72) * v91;
          v95 = v210;
          v96 = v74;
          v97 = v223;
          (*(v221 + 16))(v210, v94, v223);
          sub_1ADDE5058(v96, type metadata accessor for Replica);
          v98 = v209;
          v89(v209, v95, v97);
          v99 = v220;
          LODWORD(v215) = sub_1AE23C0BC();
          v100 = *(v93 + 8);
          v100(v98, v97);
          v100(v99, v97);
          v70 = v219;
          if ((v215 & 1) == 0)
          {
            a1 = v207;

            v63 = v186;
            v102 = v186;
            goto LABEL_43;
          }
        }

        v194 = v88;
        a1 = v207;

        v102 = v186;
        if (*(v203 + 16) < *(v186 + 16))
        {
          v63 = v186;
LABEL_43:
          sub_1ADE42CB8(v102);
LABEL_44:
          v12 = v204;
          goto LABEL_45;
        }

        v195 = v86;
        v104 = *(v186 + 64);
        v181 = v186 + 64;
        v105 = 1 << *(v186 + 32);
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        else
        {
          v106 = -1;
        }

        a2 = v106 & v104;
        v180 = (v105 + 63) >> 6;
        v182 = (v87 + 56);

        v107 = 0;
        while (a2)
        {
          v108 = v107;
LABEL_60:
          v112 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v113 = v112 | (v108 << 6);
          v114 = v186;
          v115 = v211;
          sub_1ADDDE408(*(v186 + 48) + *(v212 + 72) * v113, v211, type metadata accessor for Replica);
          v116 = v221;
          v117 = *(v114 + 56) + *(v221 + 72) * v113;
          v118 = v213;
          v119 = v223;
          (*(v221 + 16))(v213, v117, v223);
          v120 = v195;
          v215 = *(v195 + 48);
          v121 = v115;
          v122 = v191;
          sub_1ADDD8010(v121, v191);
          v123 = *(v116 + 32);
          v111 = v120;
          v123(v122 + v215, v118, v119);
          v124 = 0;
LABEL_61:
          (*v182)(v122, v124, 1, v111);
          v125 = v190;
          sub_1ADDD2198(v122, v190, &qword_1EB5BA458, &qword_1AE251E00);
          if ((v194)(v125, 1, v111) == 1)
          {
            goto LABEL_97;
          }

          v126 = *v222;
          (*v222)(v196, v125 + *(v111 + 48), v223);
          v127 = v189;
          sub_1ADDD8010(v125, v189);
          v128 = v203;
          if (!*(v203 + 16) || (v129 = sub_1ADDD8A6C(v127), (v130 & 1) == 0))
          {
            v63 = v186;

            a1 = v207;
            sub_1ADE42CB8(v63);
            sub_1ADDE5058(v127, type metadata accessor for Replica);
            (*v208)(v196, v223);
            goto LABEL_44;
          }

          v131 = v188;
          v132 = v223;
          (*(v221 + 16))(v188, *(v128 + 56) + *(v221 + 72) * v129, v223);
          sub_1ADDE5058(v127, type metadata accessor for Replica);
          v133 = v187;
          v126(v187, v131, v132);
          v12 = v196;
          v134 = sub_1AE23C0BC();
          v135 = *(v221 + 8);
          v135(v133, v132);
          v135(v12, v132);
          if ((v134 & 1) == 0)
          {
            v63 = v186;

            a1 = v207;
            sub_1ADE42CB8(v63);
            v12 = v204;
            goto LABEL_45;
          }
        }

        if (v180 <= v107 + 1)
        {
          v109 = v107 + 1;
        }

        else
        {
          v109 = v180;
        }

        v110 = v109 - 1;
        v111 = v195;
        while (1)
        {
          v108 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            break;
          }

          if (v108 >= v180)
          {
            a2 = 0;
            v124 = 1;
            v107 = v110;
            v122 = v191;
            goto LABEL_61;
          }

          a2 = *(v181 + 8 * v108);
          ++v107;
          if (a2)
          {
            v107 = v108;
            goto LABEL_60;
          }
        }

        __break(1u);
        goto LABEL_110;
      }

      a1 = v57;
      v63 = v58;
      sub_1ADE42C78(v58);

LABEL_45:
      sub_1AE23C1FC();
      sub_1ADE42CB8(v63);

      v239 = v231;
      v240[0] = v232[0];
      *(v240 + 11) = *(v232 + 11);
      v235 = v227;
      v236 = v228;
      v237 = v229;
      v238 = v230;
      v233 = v225;
      v234 = v226;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233, v103);
      v247 = *(&v258[6] + 8);
      v248[0] = *(&v258[7] + 8);
      *(v248 + 11) = *(&v258[8] + 3);
      v243 = *(&v258[2] + 8);
      v244 = *(&v258[3] + 8);
      v245 = *(&v258[4] + 8);
      v246 = *(&v258[5] + 8);
      v241 = *(v258 + 8);
      v242 = *(&v258[1] + 8);
      sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
      *(&v258[5] + 8) = v238;
      *(&v258[6] + 8) = v239;
      *(&v258[7] + 8) = v240[0];
      *(&v258[8] + 3) = *(v240 + 11);
      *(&v258[1] + 8) = v234;
      *(&v258[2] + 8) = v235;
      *(&v258[3] + 8) = v236;
      *(&v258[4] + 8) = v237;
      LODWORD(v215) = 1;
      v52 = v192;
      a2 = v192;
      *(v258 + 8) = v233;
      goto LABEL_7;
    }

    ++a2;
    sub_1AE23C1FC();
    v239 = v231;
    v240[0] = v232[0];
    *(v240 + 11) = *(v232 + 11);
    v235 = v227;
    v236 = v228;
    v237 = v229;
    v238 = v230;
    v233 = v225;
    v234 = v226;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233, v61);
    v247 = *(&v258[6] + 8);
    v248[0] = *(&v258[7] + 8);
    *(v248 + 11) = *(&v258[8] + 3);
    v243 = *(&v258[2] + 8);
    v244 = *(&v258[3] + 8);
    v245 = *(&v258[4] + 8);
    v246 = *(&v258[5] + 8);
    v241 = *(v258 + 8);
    v242 = *(&v258[1] + 8);
    sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v258[5] + 8) = v238;
    *(&v258[6] + 8) = v239;
    *(&v258[7] + 8) = v240[0];
    *(&v258[8] + 3) = *(v240 + 11);
    *(&v258[1] + 8) = v234;
    *(&v258[2] + 8) = v235;
    *(&v258[3] + 8) = v236;
    *(&v258[4] + 8) = v237;
    *(v258 + 8) = v233;
  }

  __break(1u);
LABEL_97:
  v163 = v186;
  sub_1ADE42CB8(v186);

  sub_1ADE42CB8(v163);
  v12 = v204;
LABEL_98:
  a2 = v197;
  if (v12 >= 101)
  {
    if (qword_1EB5B94F8 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_113;
  }

LABEL_103:
  v168 = v258[9];
  *(a2 + 160) = v258[8];
  *(a2 + 176) = v168;
  *(a2 + 192) = v259;
  *(a2 + 208) = v260;
  v169 = v258[5];
  *(a2 + 96) = v258[4];
  *(a2 + 112) = v169;
  v170 = v258[7];
  *(a2 + 128) = v258[6];
  *(a2 + 144) = v170;
  v171 = v258[1];
  *(a2 + 32) = v258[0];
  *(a2 + 48) = v171;
  v172 = v258[3];
  *(a2 + 64) = v258[2];
  *(a2 + 80) = v172;
  v173 = v257;
  a3 = v201;
  *a2 = v256;
  *(a2 + 16) = v173;
  return a3;
}

void sub_1AE03A354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = type metadata accessor for Replica();
      sub_1ADDDE408(v28 + *(*(v29 - 8) + 72) * v26, v10, type metadata accessor for Replica);
      v30 = *(v27 + 56);
      v31 = sub_1AE23C12C();
      (*(*(v31 - 8) + 16))(&v10[*(v40 + 48)], v30 + *(*(v31 - 8) + 72) * v26, v31);
      a1 = v39;
      sub_1ADDD2198(v10, v39, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDD2198(a1, a2, &qword_1EB5BA2A0, &unk_1AE242200);
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_1AE03A62C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1ADDD86D8(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1ADDD86D8(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AE03A790(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1ADDD86D8(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1ADDD86D8(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AE03A8F4(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1AE03A9F4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1AE03AAF0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Replica();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_1ADDDE408(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for Replica);
      sub_1ADDD8010(v11, v14);
      sub_1ADDD8010(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        goto LABEL_23;
      }

      a2 += v26;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1AE03AD2C(uint64_t a1)
{
  v2 = type metadata accessor for PartiallyOrderedReferenceMap();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ADDDE408(a1, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v7 = &v6[*(v3 + 28)];
  v8 = *v7;
  v9 = v7[1];
  sub_1AE23C1FC();
  sub_1ADDE5058(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 4)
  {
    v13 = v45;
    if (v45 >= DWORD1(v45))
    {
      result = sub_1AE23C20C();
      if (!result)
      {
        v42 = v50;
        v43[0] = v51[0];
        *(v43 + 11) = *(v51 + 11);
        v38 = v46;
        v39 = v47;
        v40 = v48;
        v41 = v49;
        v36 = v44;
        v37 = v45;
        result = sub_1ADDFD834(&v36);
        v32 = v11[3];
        if (v32 >= 2)
        {
          v33 = v32 >> 1;
          v20 = __OFSUB__(v33, v10);
          v34 = v33 - v10;
          if (v20)
          {
            goto LABEL_31;
          }

          v11[2] = v34;
        }

        return v11;
      }
    }

    else
    {
      result = *(&v44 + 1);
      LODWORD(v45) = v45 + 1;
    }

    v15 = (result + *(result + 24) + (~v13 << 6));
    v16 = v15[5];
    v18 = v15[2];
    v17 = v15[3];
    v38 = v15[4];
    v39 = v16;
    v36 = v18;
    v37 = v17;
    if (v10)
    {
      result = sub_1ADDCEE40(&v36, v35, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v19 = v11;
      v20 = __OFSUB__(v10--, 1);
      if (v20)
      {
        break;
      }

      goto LABEL_23;
    }

    v21 = v11[3];
    if (((v21 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_30;
    }

    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD38, &qword_1AE251E18);
    v19 = swift_allocObject();
    v24 = _swift_stdlib_malloc_size(v19);
    v25 = v24 - 32;
    if (v24 < 32)
    {
      v25 = v24 + 31;
    }

    v26 = v25 >> 6;
    v19[2] = v23;
    v19[3] = 2 * v26;
    v27 = v11[3] >> 1;
    i = &v19[8 * v27 + 4];
    v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v27;
    if (v11[2])
    {
      if (v19 >= v11 && v19 + 4 < &v11[8 * v27 + 4] && v19 == v11)
      {
        sub_1ADDCEE40(&v36, v35, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      else
      {
        sub_1ADDCEE40(&v36, v35, &qword_1EB5BA9E8, &qword_1AE251DE0);
        memmove(v19 + 4, v11 + 4, v27 << 6);
      }

      v11[2] = 0;
    }

    else
    {
      sub_1ADDCEE40(&v36, v35, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    v20 = __OFSUB__(v28, 1);
    v10 = v28 - 1;
    if (v20)
    {
      break;
    }

LABEL_23:
    v29 = v36;
    v30 = v37;
    v31 = v39;
    i[2] = v38;
    i[3] = v31;
    *i = v29;
    i[1] = v30;
    v11 = v19;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AE03B038(uint64_t a1)
{
  v230 = sub_1AE23C12C();
  v2 = *(v230 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v196 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v195 = &v187 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v187 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v215 = &v187 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v214 = &v187 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v226 = &v187 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v218 = &v187 - v16;
  v17 = type metadata accessor for Replica();
  v217 = *(v17 - 8);
  v18 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v204 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v225 = &v187 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v216 = &v187 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v199 = &v187 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v198 = &v187 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v222 = &v187 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v221 = &v187 - v32;
  v33 = *(a1 + 208);
  v34 = *(a1 + 200);
  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  v37 = *(a1 + 192);
  v210 = *(a1 + 184);
  v223 = v33;
  v224 = v37;
  v38 = *a1;
  v206 = *(a1 + 8);
  v207 = v38;
  v205 = *(a1 + 16);
  v39 = *(a1 + 176);
  v263[8] = *(a1 + 160);
  v263[9] = v39;
  v264 = *(a1 + 192);
  v265 = v33;
  v40 = *(a1 + 112);
  v263[4] = *(a1 + 96);
  v263[5] = v40;
  v41 = *(a1 + 144);
  v263[6] = *(a1 + 128);
  v263[7] = v41;
  v42 = *(a1 + 48);
  v263[0] = *(a1 + 32);
  v263[1] = v42;
  v43 = *(a1 + 80);
  v263[2] = *(a1 + 64);
  v263[3] = v43;
  v44 = *(a1 + 16);
  v45 = &v261;
  v261 = *a1;
  v262 = v44;
  sub_1ADECD86C(a1, &v253);
  v200 = 0;
  v227 = v2 + 16;
  v228 = v2;
  v229 = (v2 + 32);
  v220 = (v2 + 8);
  v208 = MEMORY[0x1E69E7CC0];
  v209 = v35;
  v192 = (MEMORY[0x1E69E7CC0] + 32);
  v213 = v35 + 56;
LABEL_2:
  v211 = v34;
  LODWORD(v212) = v34;
  v46 = v36;
LABEL_3:
  for (i = (v213 + 40 * v46); ; i += 5)
  {
    v251[6] = *(&v263[6] + 8);
    v252[0] = *(&v263[7] + 8);
    *(v252 + 11) = *(&v263[8] + 3);
    v251[2] = *(&v263[2] + 8);
    v251[3] = *(&v263[3] + 8);
    v251[5] = *(&v263[5] + 8);
    v251[4] = *(&v263[4] + 8);
    v251[0] = *(v263 + 8);
    v251[1] = *(&v263[1] + 8);
    if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v251) == 1)
    {
      goto LABEL_7;
    }

    v48 = DWORD2(v263[1]);
    if (DWORD2(v263[1]) < HIDWORD(v263[1]))
    {
      v49 = *&v263[1];
      ++DWORD2(v263[1]);
LABEL_65:
      v133 = v49 + *(v49 + 24) + 16 * ~v48;
      v134 = *(v133 + 32);
      v135 = *(v133 + 40);
      v34 = v211;
      v212 = v134;
      if (v211)
      {
        sub_1ADDD86D8(v134, v135);
        v144 = v212;
        goto LABEL_78;
      }

      v136 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      ++v223;
      v265 = v136;
      v137 = v134;
      sub_1ADDD86D8(v134, v135);
      v219 = v135;
      result = sub_1ADDDF7A8(v137, v135, v207, &v253);
      v139 = *&v254[0];
      if (!*&v254[0])
      {
        goto LABEL_125;
      }

      v140 = *(&v254[0] + 1);
      v141 = *(&v253 + 1);
      v142 = v253;

      sub_1ADDDC21C(v142, v141, v139);
      if (sub_1ADF637A8(v140, v224))
      {

        v35 = v209;
      }

      else
      {
        v143 = sub_1ADF637A8(v139, v210);

        if ((v143 & 1) == 0)
        {
          sub_1ADDCC35C(v137, v219);
          v34 = 0;
          v35 = v209;
          goto LABEL_2;
        }

        v35 = v209;
      }

      v34 = v211;
      v144 = v212;
      v135 = v219;
LABEL_78:
      result = sub_1ADDDF7A8(v144, v135, v207, &v253);
      v154 = *&v254[0];
      if (*&v254[0])
      {
        v155 = v253;
        v156 = *(&v254[1] + 1);
        v157 = *(v254 + 8);
        v158 = v208;
        if (v200)
        {
          v159 = v212;
          v160 = v200 - 1;
          if (!__OFSUB__(v200, 1))
          {
LABEL_95:
            v200 = v160;
            v208 = v158;
            v174 = v192;
            *v192 = v159;
            v174[1] = v155;
            *(v174 + 4) = v154;
            *(v174 + 40) = v157;
            *(v174 + 7) = v156;
            v192 = (v174 + 4);
            goto LABEL_2;
          }

LABEL_123:
          __break(1u);
        }

        else
        {
          v201 = *(v254 + 8);
          v202 = v253;
          v219 = *(&v254[1] + 1);
          v161 = *(v208 + 24);
          if (((v161 >> 1) + 0x4000000000000000) >= 0)
          {
            v162 = v161 & 0xFFFFFFFFFFFFFFFELL;
            if (v162 <= 1)
            {
              v163 = 1;
            }

            else
            {
              v163 = v162;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD38, &qword_1AE251E18);
            v164 = swift_allocObject();
            v165 = _swift_stdlib_malloc_size(v164);
            v166 = v165 - 32;
            if (v165 < 32)
            {
              v166 = v165 + 31;
            }

            v167 = v166 >> 6;
            *(v164 + 2) = v163;
            *(v164 + 3) = 2 * (v166 >> 6);
            v168 = v164 + 32;
            v169 = *(v158 + 3) >> 1;
            v170 = v158;
            if (*(v158 + 2))
            {
              v171 = v158 + 32;
              if (v164 != v158 || v168 >= &v171[64 * v169])
              {
                memmove(v164 + 32, v171, v169 << 6);
                v170 = v208;
              }

              v170[2] = 0;
            }

            v192 = &v168[64 * v169];

            v172 = (v167 & 0x7FFFFFFFFFFFFFFFLL) - v169;
            v158 = v164;
            v34 = v211;
            v159 = v212;
            v156 = v219;
            v157 = v201;
            v155 = v202;
            v173 = __OFSUB__(v172, 1);
            v160 = v172 - 1;
            if (!v173)
            {
              goto LABEL_95;
            }

            goto LABEL_123;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v49 = sub_1AE23C20C();
    if (v49)
    {
      goto LABEL_65;
    }

LABEL_7:
    sub_1ADECD850(v247);
    v249[6] = *(&v263[6] + 8);
    v250[0] = *(&v263[7] + 8);
    *(v250 + 11) = *(&v263[8] + 3);
    v249[2] = *(&v263[2] + 8);
    v249[3] = *(&v263[3] + 8);
    v249[4] = *(&v263[4] + 8);
    v249[5] = *(&v263[5] + 8);
    v249[0] = *(v263 + 8);
    v249[1] = *(&v263[1] + 8);
    sub_1ADDCEDE0(v249, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v263[5] + 8) = v247[5];
    *(&v263[6] + 8) = v247[6];
    *(&v263[7] + 8) = v248[0];
    *(&v263[8] + 3) = *(v248 + 11);
    *(&v263[1] + 8) = v247[1];
    *(&v263[2] + 8) = v247[2];
    *(&v263[3] + 8) = v247[3];
    *(&v263[4] + 8) = v247[4];
    *(v263 + 8) = v247[0];
    v50 = *(v35 + 16);
    if (v36 == v50)
    {
      goto LABEL_107;
    }

    if (v36 >= v50)
    {
      break;
    }

    v52 = *(i - 3);
    v51 = *(i - 2);
    v53 = *(i - 1);
    v54 = *i;
    v46 = v36 + 1;
    *&v263[0] = v36 + 1;
    if (v52)
    {
      v56 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_119;
      }

      ++v223;
      v265 = v56;
      v219 = v51;
      *&v201 = v54;
      if ((v212 & 1) == 0)
      {
        v210 = *(&v263[9] + 1);
        v145 = v53;
        v146 = v264;
        v147 = v52;
        sub_1ADE42C78(v52);
        v197 = v145;
        v148 = v210;

        v194 = v147;
        v149 = v147;
        v150 = v219;
        sub_1ADE42C78(v149);

        v224 = v146;
        v151 = sub_1ADF63DF4(v150, v146);
        v152 = v151;
        if (v151 & 0x100) != 0 && (v151)
        {

          v153 = v194;
          sub_1ADE42CB8(v194);
          LODWORD(v212) = 1;
          goto LABEL_104;
        }

        v175 = v194;
        LODWORD(v212) = sub_1ADF63DF4(v194, v148);

        sub_1ADE42CB8(v175);
        if (v152)
        {
          v176 = v152 | v212;
          goto LABEL_102;
        }

        v176 = v212;
        if ((v152 & 0x100) != 0)
        {
          if ((v212 & 1) == 0)
          {
            goto LABEL_122;
          }

          v177 = 1;
        }

        else
        {
          if ((v212 & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_102:
          v177 = (v176 >> 8) & 1;
        }

        LODWORD(v212) = v177;
        v153 = v194;
LABEL_104:
        ++v36;
        sub_1AE23C1FC();
        sub_1ADE42CB8(v153);

        v245 = v237;
        v246[0] = v238[0];
        *(v246 + 11) = *(v238 + 11);
        v241 = v233;
        v242 = v234;
        v243 = v235;
        v244 = v236;
        v239 = v231;
        v240 = v232;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v239, v178);
        v258 = *(&v263[6] + 8);
        v259[0] = *(&v263[7] + 8);
        *(v259 + 11) = *(&v263[8] + 3);
        v254[1] = *(&v263[2] + 8);
        v255 = *(&v263[3] + 8);
        v257 = *(&v263[5] + 8);
        v256 = *(&v263[4] + 8);
        v254[0] = *(&v263[1] + 8);
        v253 = *(v263 + 8);
        sub_1ADDCEDE0(&v253, &qword_1EB5BCD30, &unk_1AE251E08);
        *(&v263[5] + 8) = v244;
        *(&v263[6] + 8) = v245;
        *(&v263[7] + 8) = v246[0];
        *(&v263[8] + 3) = *(v246 + 11);
        *(&v263[1] + 8) = v240;
        *(&v263[2] + 8) = v241;
        *(&v263[3] + 8) = v242;
        *(&v263[4] + 8) = v243;
        *(v263 + 8) = v239;
        v34 = v212 ^ 1;
        BYTE8(v264) = v212 ^ 1;
        goto LABEL_2;
      }

      if (*(v224 + 16) < *(v51 + 16))
      {
        v57 = v52;
        sub_1ADE42C78(v52);

        goto LABEL_41;
      }

      v193 = v36 + 1;
      v58 = *(v51 + 64);
      *&v212 = v51 + 64;
      v59 = v52;
      v60 = v53;
      v61 = 1 << *(v51 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & v58;
      sub_1ADE42C78(v52);
      v197 = v60;

      v194 = v59;
      sub_1ADE42C78(v59);
      *&v202 = (v61 + 63) >> 6;

      v64 = 0;
      while (2)
      {
        if (v63)
        {
          v65 = v64;
          goto LABEL_29;
        }

        if (v202 <= v64 + 1)
        {
          v66 = v64 + 1;
        }

        else
        {
          v66 = v202;
        }

        v67 = v66 - 1;
        v68 = v221;
        v69 = v222;
        do
        {
          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (v65 >= v202)
          {
            v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v97 - 8) + 56))(v69, 1, 1, v97);
            v63 = 0;
            v64 = v67;
            goto LABEL_30;
          }

          v63 = *(v212 + 8 * v65);
          ++v64;
        }

        while (!v63);
        v64 = v65;
LABEL_29:
        v70 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v71 = v70 | (v65 << 6);
        v72 = v219;
        v73 = v216;
        sub_1ADDDE408(*(v219 + 48) + *(v217 + 72) * v71, v216, type metadata accessor for Replica);
        v74 = v228;
        v75 = v218;
        v76 = v230;
        (*(v228 + 16))(v218, *(v72 + 56) + *(v228 + 72) * v71, v230);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v78 = *(v77 + 48);
        v79 = v73;
        v80 = v222;
        sub_1ADDD8010(v79, v222);
        v81 = v76;
        v69 = v80;
        (*(v74 + 32))(v80 + v78, v75, v81);
        (*(*(v77 - 8) + 56))(v80, 0, 1, v77);
        v68 = v221;
LABEL_30:
        sub_1ADDD2198(v69, v68, &qword_1EB5BA458, &qword_1AE251E00);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v83 = *(v82 - 8);
        v84 = *(v83 + 48);
        if (v84(v68, 1, v82) == 1)
        {

          if (*(v210 + 16) >= *(v194 + 16))
          {
            *&v202 = v82;
            v99 = *(v194 + 64);
            v189 = v194 + 64;
            v100 = 1 << *(v194 + 32);
            if (v100 < 64)
            {
              v101 = ~(-1 << v100);
            }

            else
            {
              v101 = -1;
            }

            v102 = v101 & v99;
            v188 = (v100 + 63) >> 6;
            v190 = (v83 + 56);
            v191 = v84;

            v103 = 0;
            while (1)
            {
              if (v102)
              {
                v104 = v103;
LABEL_56:
                v111 = __clz(__rbit64(v102));
                v102 &= v102 - 1;
                v112 = v111 | (v104 << 6);
                v113 = v194;
                v114 = v216;
                sub_1ADDDE408(*(v194 + 48) + *(v217 + 72) * v112, v216, type metadata accessor for Replica);
                v115 = v228;
                v116 = *(v113 + 56) + *(v228 + 72) * v112;
                v117 = v218;
                v118 = v230;
                (*(v228 + 16))(v218, v116, v230);
                v119 = v202;
                *&v212 = *(v202 + 48);
                v120 = v114;
                v108 = v199;
                sub_1ADDD8010(v120, v199);
                v121 = *(v115 + 32);
                v110 = v119;
                v121(v108 + v212, v117, v118);
                v122 = 0;
                v107 = v204;
                v109 = v198;
              }

              else
              {
                if (v188 <= v103 + 1)
                {
                  v105 = v103 + 1;
                }

                else
                {
                  v105 = v188;
                }

                v106 = v105 - 1;
                v107 = v204;
                v109 = v198;
                v108 = v199;
                v110 = v202;
                while (1)
                {
                  v104 = v103 + 1;
                  if (__OFADD__(v103, 1))
                  {
                    goto LABEL_117;
                  }

                  if (v104 >= v188)
                  {
                    break;
                  }

                  v102 = *(v189 + 8 * v104);
                  ++v103;
                  if (v102)
                  {
                    v103 = v104;
                    goto LABEL_56;
                  }
                }

                v102 = 0;
                v122 = 1;
                v103 = v106;
              }

              (*v190)(v108, v122, 1, v110);
              sub_1ADDD2198(v108, v109, &qword_1EB5BA458, &qword_1AE251E00);
              if (v191(v109, 1, v110) == 1)
              {
                goto LABEL_106;
              }

              v123 = *v229;
              (*v229)(v203, v109 + *(v110 + 48), v230);
              sub_1ADDD8010(v109, v107);
              v124 = v210;
              if (!*(v210 + 16))
              {
                break;
              }

              v125 = sub_1ADDD8A6C(v107);
              v107 = v204;
              if ((v126 & 1) == 0)
              {
                break;
              }

              v127 = v196;
              v128 = v230;
              (*(v228 + 16))(v196, *(v124 + 56) + *(v228 + 72) * v125, v230);
              sub_1ADDE5058(v107, type metadata accessor for Replica);
              v129 = v195;
              v123(v195, v127, v128);
              v130 = v203;
              v131 = sub_1AE23C0BC();
              v132 = *(v228 + 8);
              v132(v129, v128);
              v132(v130, v128);
              v46 = v193;
              if ((v131 & 1) == 0)
              {
                v57 = v194;

                sub_1ADE42CB8(v57);
                v35 = v209;
                goto LABEL_41;
              }
            }

            v57 = v194;

            sub_1ADE42CB8(v57);
            sub_1ADDE5058(v107, type metadata accessor for Replica);
            (*v220)(v203, v230);
          }

          else
          {
            v57 = v194;
            sub_1ADE42CB8(v194);
          }

          goto LABEL_37;
        }

        v85 = *v229;
        (*v229)(v226, v68 + *(v82 + 48), v230);
        v86 = v225;
        sub_1ADDD8010(v68, v225);
        v87 = v224;
        if (*(v224 + 16))
        {
          v88 = sub_1ADDD8A6C(v86);
          v86 = v225;
          if (v89)
          {
            v90 = v228;
            v91 = v215;
            v92 = v230;
            (*(v228 + 16))(v215, *(v87 + 56) + *(v228 + 72) * v88, v230);
            sub_1ADDE5058(v86, type metadata accessor for Replica);
            v93 = v214;
            v85(v214, v91, v92);
            v94 = v226;
            v95 = sub_1AE23C0BC();
            v96 = *(v90 + 8);
            v96(v93, v92);
            v96(v94, v92);
            if ((v95 & 1) == 0)
            {

              v57 = v194;
              sub_1ADE42CB8(v194);
              v35 = v209;
              goto LABEL_40;
            }

            continue;
          }
        }

        break;
      }

      v57 = v194;
      sub_1ADE42CB8(v194);
      sub_1ADDE5058(v86, type metadata accessor for Replica);
      (*v220)(v226, v230);
LABEL_37:
      v35 = v209;
LABEL_40:
      v46 = v193;
LABEL_41:
      sub_1AE23C1FC();
      sub_1ADE42CB8(v57);

      v245 = v237;
      v246[0] = v238[0];
      *(v246 + 11) = *(v238 + 11);
      v241 = v233;
      v242 = v234;
      v243 = v235;
      v244 = v236;
      v239 = v231;
      v240 = v232;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v239, v98);
      v258 = *(&v263[6] + 8);
      v259[0] = *(&v263[7] + 8);
      *(v259 + 11) = *(&v263[8] + 3);
      v254[1] = *(&v263[2] + 8);
      v255 = *(&v263[3] + 8);
      v257 = *(&v263[5] + 8);
      v256 = *(&v263[4] + 8);
      v254[0] = *(&v263[1] + 8);
      v253 = *(v263 + 8);
      sub_1ADDCEDE0(&v253, &qword_1EB5BCD30, &unk_1AE251E08);
      *(&v263[5] + 8) = v244;
      *(&v263[6] + 8) = v245;
      *(&v263[7] + 8) = v246[0];
      *(&v263[8] + 3) = *(v246 + 11);
      *(&v263[1] + 8) = v240;
      *(&v263[2] + 8) = v241;
      *(&v263[3] + 8) = v242;
      *(&v263[4] + 8) = v243;
      LODWORD(v212) = 1;
      v36 = v46;
      *(v263 + 8) = v239;
      goto LABEL_3;
    }

    sub_1AE23C1FC();
    v245 = v237;
    v246[0] = v238[0];
    *(v246 + 11) = *(v238 + 11);
    v241 = v233;
    v242 = v234;
    v243 = v235;
    v244 = v236;
    v239 = v231;
    v240 = v232;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v239, v55);
    v258 = *(&v263[6] + 8);
    v259[0] = *(&v263[7] + 8);
    *(v259 + 11) = *(&v263[8] + 3);
    v254[1] = *(&v263[2] + 8);
    v255 = *(&v263[3] + 8);
    v257 = *(&v263[5] + 8);
    v256 = *(&v263[4] + 8);
    v254[0] = *(&v263[1] + 8);
    v253 = *(v263 + 8);
    sub_1ADDCEDE0(&v253, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v263[5] + 8) = v244;
    *(&v263[6] + 8) = v245;
    *(&v263[7] + 8) = v246[0];
    *(&v263[8] + 3) = *(v246 + 11);
    *(&v263[1] + 8) = v240;
    *(&v263[2] + 8) = v241;
    *(&v263[3] + 8) = v242;
    *(&v263[4] + 8) = v243;
    ++v36;
    *(v263 + 8) = v239;
  }

  __break(1u);
LABEL_106:
  v179 = v194;
  sub_1ADE42CB8(v194);

  sub_1ADE42CB8(v179);
  while (1)
  {
LABEL_107:
    v45 = v223;
    if (v223 >= 101)
    {
      if (qword_1EB5B94F8 != -1)
      {
LABEL_120:
        swift_once();
      }

      v180 = sub_1AE23C78C();
      __swift_project_value_buffer(v180, qword_1EB5D74A8);
      v181 = sub_1AE23C76C();
      v182 = sub_1AE23D61C();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 134217984;
        *(v183 + 4) = v45;
        _os_log_impl(&dword_1ADDCA000, v181, v182, "Excessive since comparisons: %ld", v183, 0xCu);
        MEMORY[0x1B26FDA50](v183, -1, -1);
      }
    }

    v259[3] = v263[8];
    v259[4] = v263[9];
    v259[5] = v264;
    v260 = v265;
    v258 = v263[4];
    v259[0] = v263[5];
    v259[1] = v263[6];
    v259[2] = v263[7];
    v254[1] = v263[0];
    v255 = v263[1];
    v256 = v263[2];
    v257 = v263[3];
    v253 = v261;
    v254[0] = v262;
    sub_1ADECD8C8(&v253);
    result = v208;
    v184 = *(v208 + 24);
    if (v184 < 2)
    {
      break;
    }

    v185 = v184 >> 1;
    v173 = __OFSUB__(v185, v200);
    v186 = v185 - v200;
    if (!v173)
    {
      *(v208 + 16) = v186;
      return result;
    }

    __break(1u);
LABEL_122:
    sub_1ADE42CB8(v194);
  }

  return result;
}