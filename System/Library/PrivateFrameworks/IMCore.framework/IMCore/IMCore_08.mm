uint64_t sub_1A841C0A8(uint64_t a1)
{
  v2 = sub_1A841ECA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7560, &qword_1A85029A0);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v52 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E7568, &qword_1A85029A8);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v52 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7570, &qword_1A85029B0);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v52 - v11;
  v12 = sub_1A83EA2FC(&qword_1EB2E7578, &qword_1A85029B8);
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v52 - v14;
  v68 = sub_1A83EA2FC(&qword_1EB2E7580, &qword_1A85029C0);
  v53 = *(v68 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - v16;
  v17 = sub_1A83EA2FC(&qword_1EB2E7588, &qword_1A85029C8);
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  v21 = sub_1A83EA2FC(&qword_1EB2E7590, &qword_1A85029D0);
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v69 = sub_1A83EA2FC(&qword_1EB2E7598, &qword_1A85029D8);
  v72 = *(v69 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v26 = v1[1];
  v70 = *v1;
  v71 = v26;
  v27 = *(v1 + 16);
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1;
  v32 = &v52 - v31;
  sub_1A82471E0(v30, v29);
  sub_1A841EBAC();
  v73 = v32;
  sub_1A84E68AC();
  if (v27 <= 2)
  {
    v38 = v17;
    v39 = v66;
    v40 = v67;
    v41 = v68;
    if (v27)
    {
      if (v27 == 1)
      {
        v75 = 1;
        sub_1A841EDA4();
        v42 = v69;
        v43 = v73;
        sub_1A84E669C();
        sub_1A84E66CC();
        (*(v52 + 8))(v20, v38);
      }

      else
      {
        v76 = 2;
        sub_1A841ED50();
        v51 = v40;
        v42 = v69;
        v43 = v73;
        sub_1A84E669C();
        sub_1A84E66CC();
        (*(v53 + 8))(v51, v41);
      }

      return (*(v72 + 8))(v43, v42);
    }

    else
    {
      v74 = 0;
      sub_1A841EDF8();
      v48 = v69;
      v49 = v73;
      sub_1A84E669C();
      sub_1A84E66CC();
      (*(v39 + 8))(v24, v21);
      return (*(v72 + 8))(v49, v48);
    }
  }

  else if (v27 > 4)
  {
    v44 = v69;
    if (v27 == 5)
    {
      v79 = 5;
      sub_1A841EC54();
      v45 = v60;
      sub_1A84E669C();
      v46 = v62;
      sub_1A84E66CC();
      v47 = v61;
    }

    else
    {
      v80 = 6;
      sub_1A841EC00();
      v45 = v63;
      sub_1A84E669C();
      v46 = v65;
      sub_1A84E66CC();
      v47 = v64;
    }

    (*(v47 + 8))(v45, v46);
    return (*(v72 + 8))(v73, v44);
  }

  else
  {
    v33 = v69;
    if (v27 == 3)
    {
      v77 = 3;
      sub_1A841ECFC();
      v34 = v54;
      v35 = v73;
      sub_1A84E669C();
      v36 = v56;
      sub_1A84E66CC();
      v37 = v55;
    }

    else
    {
      v78 = 4;
      sub_1A841ECA8();
      v34 = v57;
      v35 = v73;
      sub_1A84E669C();
      v36 = v59;
      sub_1A84E66CC();
      v37 = v58;
    }

    (*(v37 + 8))(v34, v36);
    return (*(v72 + 8))(v35, v33);
  }
}

uint64_t ImportExport.ConversationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v79 = sub_1A83EA2FC(&qword_1EB2E75E0, &qword_1A85029E0);
  v82 = *(v79 - 8);
  v3 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v88 = &v68 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E75E8, &qword_1A85029E8);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v68 - v7;
  v8 = sub_1A83EA2FC(&qword_1EB2E75F0, &qword_1A85029F0);
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v68 - v11;
  v12 = sub_1A83EA2FC(&qword_1EB2E75F8, &qword_1A85029F8);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v68 - v14;
  v74 = sub_1A83EA2FC(&qword_1EB2E7600, &qword_1A8502A00);
  v73 = *(v74 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v86 = &v68 - v16;
  v72 = sub_1A83EA2FC(&qword_1EB2E7608, &qword_1A8502A08);
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v19 = &v68 - v18;
  v20 = sub_1A83EA2FC(&qword_1EB2E7610, &qword_1A8502A10);
  v70 = *(v20 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v68 - v22;
  v24 = sub_1A83EA2FC(&qword_1EB2E7618, &qword_1A8502A18);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v68 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v89 = a1;
  sub_1A82471E0(a1, v29);
  sub_1A841EBAC();
  v31 = v90;
  sub_1A84E689C();
  if (v31)
  {
    return sub_1A8244788(v89);
  }

  v32 = v23;
  v68 = v20;
  v69 = v19;
  v33 = v86;
  v34 = v87;
  v35 = v88;
  v90 = v25;
  v36 = sub_1A84E668C();
  v37 = (2 * *(v36 + 16)) | 1;
  v91 = v36;
  v92 = v36 + 32;
  v93 = 0;
  v94 = v37;
  v38 = sub_1A84008EC();
  if (v38 == 7 || v93 != v94 >> 1)
  {
    v42 = sub_1A84E64BC();
    swift_allocError();
    v44 = v43;
    v45 = *(sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20) + 48);
    *v44 = &type metadata for ImportExport.ConversationError;
    sub_1A84E65CC();
    sub_1A84E64AC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v90 + 8))(v28, v24);
    swift_unknownObjectRelease();
    return sub_1A8244788(v89);
  }

  v95 = v38;
  if (v38 > 2u)
  {
    if (v38 > 4u)
    {
      v60 = v85;
      v39 = v90;
      if (v38 == 5)
      {
        v96 = 5;
        sub_1A841EC54();
        v49 = v84;
        sub_1A84E65BC();
        v50 = v81;
        v62 = sub_1A84E660C();
        v64 = v65;
        (*(v80 + 8))(v49, v50);
      }

      else
      {
        v96 = 6;
        sub_1A841EC00();
        v57 = v35;
        sub_1A84E65BC();
        v58 = v79;
        v62 = sub_1A84E660C();
        v64 = v67;
        (*(v82 + 8))(v57, v58);
      }

      goto LABEL_21;
    }

    v39 = v90;
    if (v38 == 3)
    {
      v96 = 3;
      sub_1A841ECFC();
      v40 = v83;
      sub_1A84E65BC();
      v41 = v76;
      v62 = sub_1A84E660C();
      v64 = v63;
      (*(v75 + 8))(v40, v41);
    }

    else
    {
      v96 = 4;
      sub_1A841ECA8();
      sub_1A84E65BC();
      v56 = v77;
      v62 = sub_1A84E660C();
      v64 = v66;
      (*(v78 + 8))(v34, v56);
    }

    goto LABEL_20;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v96 = 1;
      sub_1A841EDA4();
      v47 = v69;
      sub_1A84E65BC();
      v48 = v72;
      v62 = sub_1A84E660C();
      v64 = v59;
      (*(v71 + 8))(v47, v48);
      v60 = v85;
      v39 = v90;
LABEL_21:
      (*(v39 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v53 = v89;
      goto LABEL_22;
    }

    v96 = 2;
    sub_1A841ED50();
    sub_1A84E65BC();
    v54 = v74;
    v55 = sub_1A84E660C();
    v39 = v90;
    v62 = v55;
    v64 = v61;
    (*(v73 + 8))(v33, v54);
LABEL_20:
    v60 = v85;
    goto LABEL_21;
  }

  v96 = 0;
  sub_1A841EDF8();
  sub_1A84E65BC();
  v51 = v68;
  v62 = sub_1A84E660C();
  v64 = v52;
  (*(v70 + 8))(v32, v51);
  (*(v90 + 8))(v28, v24);
  swift_unknownObjectRelease();
  v53 = v89;
  v60 = v85;
LABEL_22:
  *v60 = v62;
  *(v60 + 8) = v64;
  *(v60 + 16) = v95;
  return sub_1A8244788(v53);
}

uint64_t sub_1A841D43C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A841E56C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A841D4FC(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1A841D4A8()
{
  result = qword_1EB2E74C8;
  if (!qword_1EB2E74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74C8);
  }

  return result;
}

uint64_t sub_1A841D4FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A84E674C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A84E602C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A841D734(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A841D5F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A841D5F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 144);
      v12 = *v10 == *(v10 - 144) && *(v10 + 8) == *(v10 - 136);
      if (v12 || (result = sub_1A84E67AC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 144;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v24 = *(v10 + 96);
      v25 = *(v10 + 112);
      v26 = *(v10 + 128);
      v20 = *(v10 + 32);
      v21 = *(v10 + 48);
      v22 = *(v10 + 64);
      v23 = *(v10 + 80);
      v18 = *v10;
      v19 = *(v10 + 16);
      v13 = *(v10 - 64);
      *(v10 + 64) = *(v10 - 80);
      *(v10 + 80) = v13;
      v14 = *(v10 - 32);
      *(v10 + 96) = *(v10 - 48);
      *(v10 + 112) = v14;
      *(v10 + 128) = *(v10 - 16);
      v15 = *(v10 - 96);
      *(v10 + 32) = *(v10 - 112);
      *(v10 + 48) = v15;
      v16 = *(v10 - 128);
      *v10 = *v11;
      *(v10 + 16) = v16;
      v10 -= 144;
      v11[4] = v22;
      v11[5] = v23;
      v11[6] = v24;
      v11[7] = v25;
      v11[8] = v26;
      v11[2] = v20;
      v11[3] = v21;
      *v11 = v18;
      v11[1] = v19;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A841D734(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  __dst = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_1A841E100(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v91 = &v9[16 * v89];
        v6 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1A841DDD4((v90 + 144 * *v91), (v90 + 144 * *v92), (v90 + 144 * v93), __dst);
        if (v5)
        {
        }

        if (v93 < v6)
        {
          goto LABEL_131;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_132;
        }

        *v91 = v6;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_133;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v6 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 144 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 144 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1A84E67AC();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 144 * v10 + 152);
        v18 = v17;
        do
        {
          result = v17[17];
          v20 = v18[18];
          v18 += 18;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A84E67AC();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 144 * v8 - 144;
          v23 = 144 * v10;
          v24 = v10;
          v25 = v8;
          v96 = v24;
          do
          {
            if (v24 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = (v27 + v22);
              v113 = *(v27 + v23 + 96);
              v115 = *(v27 + v23 + 112);
              v117 = *(v27 + v23 + 128);
              v105 = *(v27 + v23 + 32);
              v107 = *(v27 + v23 + 48);
              v109 = *(v27 + v23 + 64);
              v111 = *(v27 + v23 + 80);
              v101 = *(v27 + v23);
              v103 = *(v27 + v23 + 16);
              result = memmove((v27 + v23), (v27 + v22), 0x90uLL);
              v26[6] = v113;
              v26[7] = v115;
              v26[8] = v117;
              v26[2] = v105;
              v26[3] = v107;
              v26[4] = v109;
              v26[5] = v111;
              *v26 = v101;
              v26[1] = v103;
            }

            ++v24;
            v22 -= 144;
            v23 += 144;
          }

          while (v24 < v25);
          v10 = v96;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A83EEF08(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1A83EEF08((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *__dst;
    if (!*__dst)
    {
      goto LABEL_144;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_76:
          if (v50)
          {
            goto LABEL_122;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_125;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_129;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_90:
        if (v68)
        {
          goto LABEL_124;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_127;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_97:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_1A841DDD4((*v6 + 144 * v85), (*v6 + 144 * *&v9[16 * v46 + 32]), (*v6 + 144 * v86), v45);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A841E100(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1A841E074(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_120;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_121;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_123;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_126;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_130;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v95 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v95;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 144 * v8;
  v97 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 144);
    v35 = *v33 == *(v33 - 144) && *(v33 + 8) == *(v33 - 136);
    if (v35 || (result = sub_1A84E67AC(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 144;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v97;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v114 = *(v33 + 96);
    v116 = *(v33 + 112);
    v118 = *(v33 + 128);
    v106 = *(v33 + 32);
    v108 = *(v33 + 48);
    v110 = *(v33 + 64);
    v112 = *(v33 + 80);
    v102 = *v33;
    v104 = *(v33 + 16);
    v36 = *(v33 - 64);
    *(v33 + 64) = *(v33 - 80);
    *(v33 + 80) = v36;
    v37 = *(v33 - 32);
    *(v33 + 96) = *(v33 - 48);
    *(v33 + 112) = v37;
    *(v33 + 128) = *(v33 - 16);
    v38 = *(v33 - 96);
    *(v33 + 32) = *(v33 - 112);
    *(v33 + 48) = v38;
    v39 = *(v33 - 128);
    *v33 = *v34;
    *(v33 + 16) = v39;
    v33 -= 144;
    v34[4] = v110;
    v34[5] = v112;
    v34[6] = v114;
    v34[7] = v116;
    v34[8] = v118;
    v34[2] = v106;
    v34[3] = v108;
    *v34 = v102;
    v34[1] = v104;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_1A841DDD4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 144;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 144;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[144 * v9] <= __dst)
    {
      memmove(__dst, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 < 144 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1A84E67AC() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 144;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 144;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 144;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x90uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[144 * v11] <= __dst)
  {
    memmove(__dst, a2, 144 * v11);
  }

  v12 = &v4[144 * v11];
  if (v10 >= 144 && v6 > v7)
  {
    do
    {
      v15 = v6 - 144;
      v5 -= 144;
      v16 = v12;
      while (1)
      {
        v17 = *(v16 - 18);
        v18 = *(v16 - 17);
        v16 -= 144;
        v19 = v17 == *(v6 - 18) && v18 == *(v6 - 17);
        if (!v19 && (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }

        if (v5 + 144 != v12)
        {
          memmove(v5, v16, 0x90uLL);
        }

        v5 -= 144;
        v12 = v16;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      if (v5 + 144 != v6)
      {
        memmove(v5, v6 - 144, 0x90uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 144;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_41:
  v20 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v20])
  {
    memmove(v6, v4, 144 * v20);
  }

  return 1;
}

uint64_t sub_1A841E074(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A841E100(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1A841E17C()
{
  result = qword_1EB2E74E0;
  if (!qword_1EB2E74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74E0);
  }

  return result;
}

unint64_t sub_1A841E1D0()
{
  result = qword_1EB2E74E8;
  if (!qword_1EB2E74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74E8);
  }

  return result;
}

unint64_t sub_1A841E224()
{
  result = qword_1EB2E74F0;
  if (!qword_1EB2E74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74F0);
  }

  return result;
}

unint64_t sub_1A841E278()
{
  result = qword_1EB2E7508;
  if (!qword_1EB2E7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7508);
  }

  return result;
}

unint64_t sub_1A841E2CC()
{
  result = qword_1EB2E7510;
  if (!qword_1EB2E7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7510);
  }

  return result;
}

unint64_t sub_1A841E320()
{
  result = qword_1EB2E7520;
  if (!qword_1EB2E7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7520);
  }

  return result;
}

unint64_t sub_1A841E374()
{
  result = qword_1EB2E7528;
  if (!qword_1EB2E7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7528);
  }

  return result;
}

uint64_t sub_1A841E3C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E74F8, &qword_1A8502960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A841E440()
{
  result = qword_1EB2E7538;
  if (!qword_1EB2E7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7538);
  }

  return result;
}

unint64_t sub_1A841E494()
{
  result = qword_1EB2E7540;
  if (!qword_1EB2E7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7540);
  }

  return result;
}

uint64_t sub_1A841E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v41 - v10);
  v12 = sub_1A83EA2FC(&qword_1EB2E7748, &qword_1A8503A68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v14;
  v15 = type metadata accessor for ImportExport.Conversation();
  v16 = *(v15 + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();

  v17 = MEMORY[0x1E69E7CC0];
  v45 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  v18 = a2 + *(v15 + 84);
  sub_1A84E595C();

  v19 = sub_1A83EBA20(v17);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1A84E67AC() & 1) == 0 || *a1 != *a2)
  {
    goto LABEL_58;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (v20)
  {
    if (!v21 || (*(a1 + 48) != *(a2 + 48) || v20 != v21) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v21)
  {
    goto LABEL_58;
  }

  v42 = v19;
  v22 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v23 = 0x7564697669646E69;
  }

  else
  {
    v23 = 0x70756F7267;
  }

  if (*(a1 + 40))
  {
    v24 = 0xEA00000000006C61;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  if (*(a2 + 40))
  {
    v25 = 0x7564697669646E69;
  }

  else
  {
    v25 = 0x70756F7267;
  }

  if (*(a2 + 40))
  {
    v26 = 0xEA00000000006C61;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  if (v23 == v25 && v24 == v26)
  {
  }

  else
  {
    v27 = sub_1A84E67AC();

    if ((v27 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (sub_1A84E67AC() & 1) == 0 || (sub_1A8414F64(*(a1 + 240), *(a2 + 240)) & 1) == 0)
  {
    goto LABEL_58;
  }

  v28 = *(a1 + 288);
  v29 = *(a2 + 288);
  if (v28)
  {
    if (!v29 || (*(a1 + 280) != *(a2 + 280) || v28 != v29) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v29)
  {
    goto LABEL_58;
  }

  if (*(a1 + 248) != *(a2 + 248) || (sub_1A8436808(*(a1 + 272), *(a2 + 272)) & 1) == 0 || (sub_1A8436A6C(*(a1 + 273), *(a2 + 273)) & 1) == 0)
  {
    goto LABEL_58;
  }

  v30 = *(a1 + 320);
  v31 = *(a2 + 320);
  if (v30)
  {
    if (!v31 || (*(a1 + 312) != *(a2 + 312) || v30 != v31) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v31)
  {
    goto LABEL_58;
  }

  v32 = *(a1 + 72);
  v33 = *(a2 + 72);
  if (v32)
  {
    if (!v33 || (*(a1 + 64) != *(a2 + 64) || v32 != v33) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v33)
  {
    goto LABEL_58;
  }

  v34 = *(v15 + 80);
  v35 = *(v12 + 48);
  v36 = v44;
  sub_1A8415BC8(a1 + v34, v44);
  sub_1A8415BC8(a2 + v34, v36 + v35);
  v37 = *(v43 + 48);
  if (v37(v36, 1, v4) == 1)
  {
    if (v37(v36 + v35, 1, v4) != 1)
    {

LABEL_63:
      sub_1A824B2D4(v36, &qword_1EB2E7748, &qword_1A8503A68);
      goto LABEL_59;
    }

    goto LABEL_67;
  }

  sub_1A8415BC8(v36, v11);
  if (v37(v36 + v35, 1, v4) == 1)
  {

    sub_1A84208F8(v11, type metadata accessor for ImportExport.Attachment);
    goto LABEL_63;
  }

  sub_1A8420828(v36 + v35, v7, type metadata accessor for ImportExport.Attachment);
  if (*v11 == *v7 && v11[1] == v7[1])
  {
    sub_1A84208F8(v7, type metadata accessor for ImportExport.Attachment);
    sub_1A84208F8(v11, type metadata accessor for ImportExport.Attachment);
LABEL_67:
    sub_1A824B2D4(v36, &qword_1EB2E6F50, &unk_1A8502920);
LABEL_68:
    v38 = sub_1A84A4AE0(v45, v42);

    return v38 & 1;
  }

  v40 = sub_1A84E67AC();
  sub_1A84208F8(v7, type metadata accessor for ImportExport.Attachment);
  sub_1A84208F8(v11, type metadata accessor for ImportExport.Attachment);
  sub_1A824B2D4(v36, &qword_1EB2E6F50, &unk_1A8502920);
  if (v40)
  {
    goto LABEL_68;
  }

LABEL_58:

LABEL_59:
  v38 = 0;
  return v38 & 1;
}

unint64_t sub_1A841EBAC()
{
  result = qword_1EB2E75A0;
  if (!qword_1EB2E75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75A0);
  }

  return result;
}

unint64_t sub_1A841EC00()
{
  result = qword_1EB2E75A8;
  if (!qword_1EB2E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75A8);
  }

  return result;
}

unint64_t sub_1A841EC54()
{
  result = qword_1EB2E75B0;
  if (!qword_1EB2E75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75B0);
  }

  return result;
}

unint64_t sub_1A841ECA8()
{
  result = qword_1EB2E75B8;
  if (!qword_1EB2E75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75B8);
  }

  return result;
}

unint64_t sub_1A841ECFC()
{
  result = qword_1EB2E75C0;
  if (!qword_1EB2E75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75C0);
  }

  return result;
}

unint64_t sub_1A841ED50()
{
  result = qword_1EB2E75C8;
  if (!qword_1EB2E75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75C8);
  }

  return result;
}

unint64_t sub_1A841EDA4()
{
  result = qword_1EB2E75D0;
  if (!qword_1EB2E75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75D0);
  }

  return result;
}

unint64_t sub_1A841EDF8()
{
  result = qword_1EB2E75D8;
  if (!qword_1EB2E75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75D8);
  }

  return result;
}

uint64_t sub_1A841EE4C(void *a1)
{
  a1[1] = sub_1A841EFF0(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
  a1[2] = sub_1A841EFF0(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  result = sub_1A841EFF0(&qword_1EB2E7620, type metadata accessor for ImportExport.Conversation);
  a1[3] = result;
  return result;
}

unint64_t sub_1A841EEFC()
{
  result = qword_1EB2E7628;
  if (!qword_1EB2E7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7628);
  }

  return result;
}

unint64_t sub_1A841EF54()
{
  result = qword_1EB2E7630;
  if (!qword_1EB2E7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7630);
  }

  return result;
}

uint64_t sub_1A841EFF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A841F060()
{
  sub_1A841F1B8(319, &qword_1EB2E73E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A841F1B8(319, &qword_1EB2E7650, &type metadata for ImportExport.Participant, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A841F208();
      if (v2 <= 0x3F)
      {
        sub_1A8412BDC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A841F1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A841F208()
{
  if (!qword_1EB2E7658)
  {
    type metadata accessor for ImportExport.Attachment();
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7658);
    }
  }
}

uint64_t sub_1A841F28C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A841F2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s17ConversationErrorO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17ConversationErrorO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s12ConversationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12ConversationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A841F63C()
{
  result = qword_1EB2E7660;
  if (!qword_1EB2E7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7660);
  }

  return result;
}

unint64_t sub_1A841F694()
{
  result = qword_1EB2E7668;
  if (!qword_1EB2E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7668);
  }

  return result;
}

unint64_t sub_1A841F6EC()
{
  result = qword_1EB2E7670;
  if (!qword_1EB2E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7670);
  }

  return result;
}

unint64_t sub_1A841F744()
{
  result = qword_1EB2E7678;
  if (!qword_1EB2E7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7678);
  }

  return result;
}

unint64_t sub_1A841F79C()
{
  result = qword_1EB2E7680;
  if (!qword_1EB2E7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7680);
  }

  return result;
}

unint64_t sub_1A841F7F4()
{
  result = qword_1EB2E7688;
  if (!qword_1EB2E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7688);
  }

  return result;
}

unint64_t sub_1A841F84C()
{
  result = qword_1EB2E7690;
  if (!qword_1EB2E7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7690);
  }

  return result;
}

unint64_t sub_1A841F8A4()
{
  result = qword_1EB2E7698;
  if (!qword_1EB2E7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7698);
  }

  return result;
}

unint64_t sub_1A841F8FC()
{
  result = qword_1EB2E76A0;
  if (!qword_1EB2E76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76A0);
  }

  return result;
}

unint64_t sub_1A841F954()
{
  result = qword_1EB2E76A8;
  if (!qword_1EB2E76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76A8);
  }

  return result;
}

unint64_t sub_1A841F9AC()
{
  result = qword_1EB2E76B0;
  if (!qword_1EB2E76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76B0);
  }

  return result;
}

unint64_t sub_1A841FA04()
{
  result = qword_1EB2E76B8;
  if (!qword_1EB2E76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76B8);
  }

  return result;
}

unint64_t sub_1A841FA5C()
{
  result = qword_1EB2E76C0;
  if (!qword_1EB2E76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76C0);
  }

  return result;
}

unint64_t sub_1A841FAB4()
{
  result = qword_1EB2E76C8;
  if (!qword_1EB2E76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76C8);
  }

  return result;
}

unint64_t sub_1A841FB0C()
{
  result = qword_1EB2E76D0;
  if (!qword_1EB2E76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76D0);
  }

  return result;
}

unint64_t sub_1A841FB64()
{
  result = qword_1EB2E76D8;
  if (!qword_1EB2E76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76D8);
  }

  return result;
}

unint64_t sub_1A841FBBC()
{
  result = qword_1EB2E76E0;
  if (!qword_1EB2E76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76E0);
  }

  return result;
}

unint64_t sub_1A841FC14()
{
  result = qword_1EB2E76E8;
  if (!qword_1EB2E76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76E8);
  }

  return result;
}

unint64_t sub_1A841FC6C()
{
  result = qword_1EB2E76F0;
  if (!qword_1EB2E76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76F0);
  }

  return result;
}

unint64_t sub_1A841FCC4()
{
  result = qword_1EB2E76F8;
  if (!qword_1EB2E76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76F8);
  }

  return result;
}

unint64_t sub_1A841FD1C()
{
  result = qword_1EB2E7700;
  if (!qword_1EB2E7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7700);
  }

  return result;
}

unint64_t sub_1A841FD74()
{
  result = qword_1EB2E7708;
  if (!qword_1EB2E7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7708);
  }

  return result;
}

unint64_t sub_1A841FDCC()
{
  result = qword_1EB2E7710;
  if (!qword_1EB2E7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7710);
  }

  return result;
}

unint64_t sub_1A841FE24()
{
  result = qword_1EB2E7718;
  if (!qword_1EB2E7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7718);
  }

  return result;
}

unint64_t sub_1A841FE7C()
{
  result = qword_1EB2E7720;
  if (!qword_1EB2E7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7720);
  }

  return result;
}

unint64_t sub_1A841FED4()
{
  result = qword_1EB2E7728;
  if (!qword_1EB2E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7728);
  }

  return result;
}

unint64_t sub_1A841FF2C()
{
  result = qword_1EB2E7730;
  if (!qword_1EB2E7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7730);
  }

  return result;
}

uint64_t sub_1A841FF80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8530660 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8530680 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85306A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85306E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530700 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x70756F7247736372 && a2 == 0xEB00000000495255 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F685070756F7267 && a2 == 0xEA00000000006F74 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 17;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1A8420534(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x80000001A8530720 == a2;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8530740 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x45444970756F7267 && a2 == 0xEC000000726F7272 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530760 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8530780 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85307A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85307C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

unint64_t sub_1A8420780()
{
  result = qword_1EB2E7738;
  if (!qword_1EB2E7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7738);
  }

  return result;
}

unint64_t sub_1A84207D4()
{
  result = qword_1EB2E7740;
  if (!qword_1EB2E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7740);
  }

  return result;
}

uint64_t sub_1A8420828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8420890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84208F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ImportExport.Message.ISO8601String(fromDate:)(uint64_t a1)
{
  v2 = sub_1A84E577C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1A84E56DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8243D74(a1, v10, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = objc_opt_self();
    v18 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v19 = sub_1A824431C(v2, qword_1EB2E7FC8);
    swift_beginAccess();
    (*(v3 + 16))(v6, v19, v2);
    v20 = sub_1A84E576C();
    (*(v3 + 8))(v6, v2);
    v21 = [v17 stringFromDate:v18 timeZone:v20 formatOptions:1907];

    v22 = sub_1A84E5DBC();
    (*(v12 + 8))(v15, v11);
    return v22;
  }
}

void *ImportExport.Message.allAttachments.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for ImportExport.Attachment();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v26 - v10;
  v11 = type metadata accessor for ImportExport.MessagePart();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 216);
  v18 = *(v17 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v29 = *(v13 + 44);
  v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v28 = *(v14 + 72);
  v26 = v6;
  v20 = (v6 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v27 = v5;
  do
  {
    sub_1A8429854(v19, v16, type metadata accessor for ImportExport.MessagePart);
    sub_1A8243D74(&v16[v29], v4, &qword_1EB2E6F50, &unk_1A8502920);
    sub_1A84298BC(v16, type metadata accessor for ImportExport.MessagePart);
    if ((*v20)(v4, 1, v5) == 1)
    {
      sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
    }

    else
    {
      v22 = v30;
      sub_1A842AD50(v4, v30, type metadata accessor for ImportExport.Attachment);
      sub_1A8429854(v22, v31, type metadata accessor for ImportExport.Attachment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1A83EF118(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1A83EF118(v23 > 1, v24 + 1, 1, v21);
      }

      sub_1A84298BC(v30, type metadata accessor for ImportExport.Attachment);
      v21[2] = v24 + 1;
      sub_1A842AD50(v31, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for ImportExport.Attachment);
      v5 = v27;
    }

    v19 += v28;
    --v18;
  }

  while (v18);
  return v21;
}

uint64_t ImportExport.Message.update(attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v51 = a1;
  v43 = a2;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ImportExport.Attachment();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v60 = type metadata accessor for ImportExport.MessagePart();
  v18 = *(*(v60 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v42 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v42 - v24;
  v44 = v2;
  v27 = *(v2 + 216);
  v59 = *(v27 + 16);
  if (v59)
  {
    v28 = 0;
    v29 = *(v25 + 80);
    v52 = v17;
    v53 = (v29 + 32) & ~v29;
    v58 = v27 + v53;
    v57 = (v12 + 48);
    v30 = MEMORY[0x1E69E7CC0];
    v54 = v27;
    v55 = v10;
    v31 = v25;
    v46 = v25;
    v47 = v11;
    v56 = &v42 - v24;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
        return result;
      }

      v63 = v30;
      v62 = *(v31 + 72);
      sub_1A8429854(v58 + v62 * v28, v26, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v26[*(v60 + 44)], v10, &qword_1EB2E6F50, &unk_1A8502920);
      v32 = *v57;
      if ((*v57)(v10, 1, v11) == 1)
      {
        break;
      }

      v33 = v52;
      v34 = sub_1A842AD50(v10, v52, type metadata accessor for ImportExport.Attachment);
      MEMORY[0x1EEE9AC00](v34);
      *(&v42 - 2) = v33;
      v35 = v50;
      sub_1A8428194(sub_1A8429618, v51, v50);
      if (v32(v35, 1, v11) == 1)
      {
        sub_1A824B2D4(v35, &qword_1EB2E6F50, &unk_1A8502920);
        sub_1A84298BC(v33, type metadata accessor for ImportExport.Attachment);
        v31 = v46;
        v11 = v47;
        goto LABEL_10;
      }

      v38 = v49;
      sub_1A842AD50(v35, v49, type metadata accessor for ImportExport.Attachment);
      v26 = v56;
      ImportExport.MessagePart.update(attachment:)(v38, v48);
      if (v4)
      {
        sub_1A84298BC(v49, type metadata accessor for ImportExport.Attachment);
        sub_1A84298BC(v26, type metadata accessor for ImportExport.MessagePart);

        return sub_1A84298BC(v52, type metadata accessor for ImportExport.Attachment);
      }

      v30 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1A83EF140(0, v30[2] + 1, 1, v30);
      }

      v31 = v46;
      v39 = v62;
      v41 = v30[2];
      v40 = v30[3];
      v45 = 0;
      if (v41 >= v40 >> 1)
      {
        v30 = sub_1A83EF140(v40 > 1, v41 + 1, 1, v30);
      }

      sub_1A84298BC(v49, type metadata accessor for ImportExport.Attachment);
      sub_1A84298BC(v26, type metadata accessor for ImportExport.MessagePart);
      v30[2] = v41 + 1;
      sub_1A842AD50(v48, v30 + v53 + v41 * v39, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v52, type metadata accessor for ImportExport.Attachment);
      v4 = v45;
      v11 = v47;
LABEL_4:
      ++v28;
      v27 = v54;
      v10 = v55;
      if (v59 == v28)
      {
        goto LABEL_21;
      }
    }

    sub_1A824B2D4(v10, &qword_1EB2E6F50, &unk_1A8502920);
LABEL_10:
    v26 = v56;
    sub_1A8429854(v56, v61, type metadata accessor for ImportExport.MessagePart);
    v30 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1A83EF140(0, v30[2] + 1, 1, v30);
    }

    v37 = v30[2];
    v36 = v30[3];
    if (v37 >= v36 >> 1)
    {
      v30 = sub_1A83EF140(v36 > 1, v37 + 1, 1, v30);
    }

    sub_1A84298BC(v26, type metadata accessor for ImportExport.MessagePart);
    v30[2] = v37 + 1;
    result = sub_1A842AD50(v61, v30 + v53 + v37 * v62, type metadata accessor for ImportExport.MessagePart);
    goto LABEL_4;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_21:
  ImportExport.Message.update(messageParts:)(v30, v43);
}

uint64_t ImportExport.Message.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.Message.conversationID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImportExport.Message.senderID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImportExport.Message.account.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ImportExport.Message.destinationCallerID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ImportExport.Message.subject.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ImportExport.Message.body.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ImportExport.Message.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ImportExport.Message.dateReceived.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ImportExport.Message.receivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  if (*(v1 + 136))
  {
    v7 = *(v1 + 128);
    v8 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v9 = sub_1A84E5D8C();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1A84E569C();

      v11 = sub_1A84E56DC();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_1A84E56DC();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1A83F8010(v6, a1);
  }

  else
  {
    v12 = sub_1A84E56DC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t ImportExport.Message.dateDelivered.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t ImportExport.Message.deliveredDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  if (*(v1 + 152))
  {
    v7 = *(v1 + 144);
    v8 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v9 = sub_1A84E5D8C();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1A84E569C();

      v11 = sub_1A84E56DC();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_1A84E56DC();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1A83F8010(v6, a1);
  }

  else
  {
    v12 = sub_1A84E56DC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t ImportExport.Message.dateRead.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t ImportExport.Message.readDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  if (*(v1 + 168))
  {
    v7 = *(v1 + 160);
    v8 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v9 = sub_1A84E5D8C();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1A84E569C();

      v11 = sub_1A84E56DC();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_1A84E56DC();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1A83F8010(v6, a1);
  }

  else
  {
    v12 = sub_1A84E56DC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t ImportExport.Message.countryCode.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t ImportExport.Message.serviceTypeString.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t ImportExport.Message.messageSummaryInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Message() + 80);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t sub_1A8421F60@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.Message() + 80);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A8421FC8(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.Message() + 80);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Message.$messageSummaryInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Message() + 80);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Message.fallbackHash.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.Message() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.Message.rcsMessageID.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.Message() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.Message.sender.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ImportExport.Message() + 92));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_1A8400E7C(v17, &v16);
}

uint64_t ImportExport.Message.accountParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ImportExport.Message() + 96));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_1A8400E7C(v17, &v16);
}

uint64_t ImportExport.Message.init(id:conversationID:sender:accountParticipant:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int *a25, int *a26, uint64_t a27, uint64_t a28)
{
  v201 = a8;
  v208 = a4;
  v199 = a3;
  v223 = a2;
  v221 = a1;
  v216 = a16;
  v214 = a14;
  v215 = a12;
  v32 = sub_1A84E5C9C();
  v190 = *(v32 - 8);
  v191 = v32;
  v33 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v187 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ImportExport.MessagePart();
  v246 = *(v251 - 1);
  v35 = *(v246 + 64);
  v36 = MEMORY[0x1EEE9AC00](v251);
  v248 = &v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v187 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v219 = &v187 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v224 = &v187 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v249 = &v187 - v45;
  v46 = sub_1A84E5B9C();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v187 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a5[7];
  v264 = a5[6];
  v265 = v50;
  v266 = a5[8];
  v51 = a5[3];
  v260 = a5[2];
  v261 = v51;
  v52 = a5[5];
  v262 = a5[4];
  v263 = v52;
  v53 = a5[1];
  v258 = *a5;
  v259 = v53;
  v54 = a6[7];
  v273 = a6[6];
  v274 = v54;
  v275 = a6[8];
  v55 = a6[3];
  v269 = a6[2];
  v270 = v55;
  v56 = a6[5];
  v271 = a6[4];
  v272 = v56;
  v57 = a6[1];
  v267 = *a6;
  v268 = v57;
  v58 = *a7;
  v59 = *a19;
  v197 = type metadata accessor for ImportExport.Message();
  v60 = *(v197 + 80);
  *&v252[0] = 0;
  sub_1A84E5B8C();
  v61 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v213 = a9;
  v209 = v60;
  v222 = v49;
  v220 = v61;
  sub_1A84E594C();
  if (v214)
  {
    v62 = HIBYTE(v214) & 0xF;
    if ((v214 & 0x2000000000000000) == 0)
    {
      v62 = a13 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v58 |= 4uLL;
    }
  }

  v196 = a11;
  if (v215)
  {
    v63 = HIBYTE(v215) & 0xF;
    if ((v215 & 0x2000000000000000) == 0)
    {
      v63 = a11 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v58 |= 8uLL;
    }
  }

  v200 = a13;
  v198 = v59;
  v195 = a15;
  if (v216)
  {
    v64 = HIBYTE(v216) & 0xF;
    if ((v216 & 0x2000000000000000) == 0)
    {
      v64 = a15 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      v58 |= 0x10uLL;
    }
  }

  if ((~v58 & 0x8002) != 0)
  {
    v58 |= 0x8002uLL;
  }

  sub_1A8423270(a20, v252);
  v65 = *&v252[0];
  if ((*&v252[0] & ~v58) == 0)
  {
    v65 = 0;
  }

  v193 = v65;
  v194 = v58;
  v66 = *(a20 + 16);
  v67 = MEMORY[0x1E69E7CC0];
  v217 = a20;
  if (v66)
  {
    *&v252[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v66, 0);
    v67 = *&v252[0];
    v68 = a20 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v247 = *(v246 + 72);
    do
    {
      v69 = v249;
      sub_1A8429854(v68, v249, type metadata accessor for ImportExport.MessagePart);
      v70 = (v69 + v251[19]);
      v71 = v70[1];
      v250 = *v70;

      sub_1A84298BC(v69, type metadata accessor for ImportExport.MessagePart);
      *&v252[0] = v67;
      v73 = *(v67 + 16);
      v72 = *(v67 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1A83EF534((v72 > 1), v73 + 1, 1);
        v67 = *&v252[0];
      }

      *(v67 + 16) = v73 + 1;
      v74 = v67 + 16 * v73;
      *(v74 + 32) = v250;
      *(v74 + 40) = v71;
      v68 += v247;
      --v66;
    }

    while (v66);
  }

  v205 = a27;
  v207 = a26;
  v206 = a24;
  v203 = a22;
  v202 = a18;
  v204 = a10;
  *&v252[0] = v67;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v211 = sub_1A84E5D6C();
  v212 = v75;

  v76 = *(v217 + 16);
  v77 = v251;
  v78 = v224;
  if (v76)
  {
    v79 = 0;
    v80 = 0;
    v218 = (*(v246 + 80) + 32) & ~*(v246 + 80);
    v81 = MEMORY[0x1E69E7CC0];
    v249 = *(v246 + 72);
    v188 = v217 + v218;
    v189 = v76;
    result = v217 + v218;
    v83 = v76;
    do
    {
      v225 = result;
      v226 = v83;
      sub_1A8429854(result, v78, type metadata accessor for ImportExport.MessagePart);
      v84 = *(v78 + 48);
      v247 = v81;
      if (v84)
      {
        v227 = *(v78 + 40);
        v250 = v84;
      }

      else
      {
        v85 = (v78 + v77[19]);
        v86 = *v85;
        v87 = v85[1];
        v250 = sub_1A84E5E7C();
        v227 = v80;
      }

      v88 = *(v78 + 56);
      if (v88 < 0)
      {
        v88 = v79;
      }

      v246 = v88;
      v89 = *(v78 + 8);
      v235 = *v78;
      v90 = (v78 + v77[19]);
      v91 = v90[1];
      v237 = *v90;
      v228 = v91;
      v233 = *(v78 + 16);
      v240 = *(v78 + 96);
      v92 = *(v78 + 168);
      v93 = *(v78 + 120);
      v94 = *(v78 + 136);
      v256 = *(v78 + 152);
      v257 = v92;
      v254 = v93;
      v255 = v94;
      v253 = *(v78 + 104);
      v95 = v77[13];
      v96 = (v78 + v77[12]);
      v97 = *v96;
      v231 = v96[1];
      v98 = *(v78 + v95 + 8);
      v245 = *(v78 + v95);
      v243 = v97;
      v244 = v98;
      v99 = (v78 + v77[14]);
      v100 = *v99;
      v101 = v99[1];
      v102 = (v78 + v77[15]);
      v103 = *v102;
      v104 = v102[1];
      v241 = v100;
      v242 = v103;
      v234 = v104;
      v105 = v77[21];
      v106 = *(v78 + 80);
      v229 = *(v78 + 64);
      v230 = v106;

      sub_1A8243D74(&v253, v252, &qword_1EB2E6F58, &qword_1A8501388);

      v107 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v232 = *&v252[0];
      v108 = v77[17];
      v236 = *(v78 + v77[16]);
      v239 = *(v78 + v108);
      v238 = *(v78 + v77[18]);
      v109 = *(v78 + v77[20]);
      sub_1A8243D74(v78 + v77[11], &v40[v77[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v40 + 6) = 0u;
      *(v40 + 7) = 0u;
      *(v40 + 8) = 0u;
      *(v40 + 9) = 0u;
      *(v40 + 10) = 0u;
      *(v40 + 22) = 0;
      *(v40 + 4) = 0u;
      *(v40 + 5) = 0u;
      v110 = v77[21];
      *&v252[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v40[16] = v233;
      *v40 = v235;
      *(v40 + 1) = v89;
      v111 = v227;
      v112 = v250;
      *(v40 + 5) = v227;
      *(v40 + 6) = v112;
      v113 = &v40[v251[19]];
      v114 = v228;
      *v113 = v237;
      *(v113 + 1) = v114;
      v115 = *(v40 + 9);

      v116 = v230;
      *(v40 + 4) = v229;
      *(v40 + 5) = v116;
      *(v40 + 12) = v240;
      v117 = *(v40 + 120);
      v118 = *(v40 + 152);
      v252[2] = *(v40 + 136);
      v252[3] = v118;
      v252[4] = *(v40 + 168);
      v252[0] = *(v40 + 104);
      v252[1] = v117;
      sub_1A824B2D4(v252, &qword_1EB2E6F58, &qword_1A8501388);
      v119 = v253;
      *(v40 + 120) = v254;
      v120 = v256;
      *(v40 + 136) = v255;
      *(v40 + 152) = v120;
      *(v40 + 168) = v257;
      *(v40 + 104) = v119;
      v121 = &v40[v251[12]];
      v122 = v244;
      v123 = v231;
      *v121 = v243;
      *(v121 + 1) = v123;
      v124 = &v40[v251[13]];
      v125 = v245;
      *v124 = v245;
      *(v124 + 1) = v122;
      v126 = &v40[v251[14]];
      v127 = v242;
      *v126 = v241;
      *(v126 + 1) = v101;
      v128 = &v40[v251[15]];
      v129 = v234;
      *v128 = v127;
      *(v128 + 1) = v129;
      sub_1A83F5918(v125, v122);
      v130 = *(*(v107 - 8) + 8);
      v131 = v107;
      v132 = v246;
      v130(&v40[v110], v131);
      v276 = v232;
      sub_1A84E5B8C();
      v77 = v251;
      sub_1A84E594C();
      v40[v77[16]] = v236;
      v40[v77[17]] = v239;
      v40[v77[18]] = v238;
      *&v40[v77[20]] = v109;
      v133 = v223;
      *(v40 + 3) = v221;
      *(v40 + 4) = v133;
      *(v40 + 7) = v132;
      sub_1A8429854(v40, v248, type metadata accessor for ImportExport.MessagePart);

      v81 = v247;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1A83EF140(0, v81[2] + 1, 1, v81);
      }

      v135 = v81[2];
      v134 = v81[3];
      v136 = v219;
      if (v135 >= v134 >> 1)
      {
        v81 = sub_1A83EF140(v134 > 1, v135 + 1, 1, v81);
      }

      v81[2] = v135 + 1;
      sub_1A842AD50(v248, v81 + v218 + v135 * v249, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v40, type metadata accessor for ImportExport.MessagePart);
      v79 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v137 = v111 + v250;
      if (__OFADD__(v111, v250))
      {
        goto LABEL_67;
      }

      v80 = v137 + 1;
      v138 = v226;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_68;
      }

      v78 = v224;
      sub_1A84298BC(v224, type metadata accessor for ImportExport.MessagePart);
      result = v225 + v249;
      v83 = v138 - 1;
    }

    while (v83);
    v139 = 0;
    *&v253 = -1;
    v140 = v210;
    v142 = v188;
    v141 = v189;
    while (v139 < *(v217 + 16))
    {
      sub_1A8429854(v142, v136, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v136, &v253);
      if (v140)
      {
        sub_1A84298BC(v136, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v267);
        sub_1A8400ED8(&v258);

        sub_1A84E5C8C();
        v174 = v140;
        v175 = sub_1A84E5C7C();
        v176 = sub_1A84E619C();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          *v177 = 138412290;
          v179 = v140;
          v180 = _swift_stdlib_bridgeErrorToNSError();
          *(v177 + 4) = v180;
          *v178 = v180;
          _os_log_impl(&dword_1A823F000, v175, v176, "Failed to create a message with Error: %@", v177, 0xCu);
          sub_1A824B2D4(v178, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v178, -1, -1);
          MEMORY[0x1AC56D3F0](v177, -1, -1);
        }

        (*(v190 + 8))(v192, v191);
        swift_willThrow();
        v181 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v181 - 8) + 8))(&v213[v209], v181);
      }

      ++v139;
      result = sub_1A84298BC(v136, type metadata accessor for ImportExport.MessagePart);
      v142 += v249;
      if (v141 == v139)
      {
        v143 = v81;
        goto LABEL_46;
      }
    }

LABEL_69:
    __break(1u);
  }

  else
  {
    v143 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v251 = a25;
    v250 = a23;
    v144 = v193 | v194;

    v145 = v213;
    v146 = v223;
    *v213 = v221;
    v145[1] = v146;
    v147 = v212;
    v145[14] = v211;
    v145[15] = v147;
    v145[2] = a28;
    v148 = v208;
    v145[4] = v199;
    v145[5] = v148;
    v149 = v197;
    v150 = (v145 + *(v197 + 92));
    v151 = v261;
    v150[2] = v260;
    v150[3] = v151;
    v152 = v266;
    v150[7] = v265;
    v150[8] = v152;
    v153 = v264;
    v150[5] = v263;
    v150[6] = v153;
    v150[4] = v262;
    v154 = v259;
    *v150 = v258;
    v150[1] = v154;
    v155 = (v145 + v149[24]);
    v156 = v274;
    v155[6] = v273;
    v155[7] = v156;
    v155[8] = v275;
    v157 = v270;
    v155[2] = v269;
    v155[3] = v157;
    v158 = v272;
    v155[4] = v271;
    v155[5] = v158;
    v159 = v268;
    *v155 = v267;
    v155[1] = v159;
    v160 = v203;
    v145[10] = a21;
    v145[11] = v160;
    v161 = v204;
    v145[12] = v201;
    v145[13] = v161;
    v162 = v215;
    v145[16] = v196;
    v145[17] = v162;
    v163 = v214;
    v145[18] = v200;
    v145[19] = v163;
    v164 = v216;
    v145[20] = v195;
    v145[21] = v164;
    v165 = v202;
    v145[22] = a17;
    v145[23] = v165;
    v166 = v198;
    *(v145 + 208) = v198;
    v145[27] = v143;
    sub_1A8400E7C(&v258, v252);
    sub_1A8400E7C(&v267, v252);
    v167 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    (*(*(v167 - 8) + 8))(v145 + v209, v167);
    *&v252[0] = v205;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v168 = (v145 + v149[21]);
    v169 = v206;
    *v168 = v250;
    v168[1] = v169;
    v170 = (v145 + v149[22]);
    v171 = v207;
    *v170 = v251;
    v170[1] = v171;
    v145[3] = v144;
    if (v166 > 3)
    {
      if (v166 > 5)
      {
        if (v166 == 6)
        {
          v172 = 0xE300000000000000;
          v173 = 5456722;
        }

        else
        {
          v172 = 0xEC000000534D5365;
          v173 = 0x74696C6C65746153;
        }
      }

      else if (v166 == 4)
      {
        v173 = 5459283;
        v172 = 0xE300000000000000;
      }

      else
      {
        v172 = 0xE800000000000000;
        v173 = 0x656D695465636146;
      }
    }

    else if (v166 > 1)
    {
      if (v166 == 2)
      {
        v172 = 0xE800000000000000;
      }

      else
      {
        v172 = 0xEC0000006574694CLL;
      }

      v173 = 0x6567617373654D69;
    }

    else if (v166)
    {
      v172 = 0xE300000000000000;
      v173 = 7958113;
    }

    else
    {
      v172 = 0xE700000000000000;
      v173 = 0x6E776F6E6B6E75;
    }

    v182 = v213;
    *(v213 + 24) = v173;
    *(v182 + 25) = v172;
    v183 = *(&v260 + 1);
    v184 = v261;

    sub_1A8400ED8(&v258);
    *(v182 + 6) = v183;
    *(v182 + 7) = v184;
    v186 = *(&v269 + 1);
    v185 = v270;

    result = sub_1A8400ED8(&v267);
    *(v182 + 8) = v186;
    *(v182 + 9) = v185;
  }

  return result;
}

uint64_t sub_1A8423270@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ImportExport.MessagePart();
  v5 = *(*(v4 - 1) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1A8429854(v12, v9, type metadata accessor for ImportExport.MessagePart);
      if (v9[v4[16]])
      {
        v14 = v11 | 0x4000;
      }

      else
      {
        v14 = v11;
      }

      if (*(v9 + 9))
      {
        v14 |= 0x40uLL;
      }

      if (*(v9 + 15))
      {
        v14 |= 0x80uLL;
      }

      if (v9[v4[18]])
      {
        v11 = v14 | 0x1000;
      }

      else
      {
        v11 = v14;
      }

      v15 = v4[21];
      sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      if (v18)
      {
        v16 = *(v18 + 16);

        if (v16)
        {
          v11 |= 0x10000uLL;
        }
      }

      result = sub_1A84298BC(v9, type metadata accessor for ImportExport.MessagePart);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
  return result;
}

unint64_t sub_1A842343C(unint64_t result, uint64_t *a2)
{
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v3 = *(result + 56);
    if (*a2 >= v3)
    {
      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD00000000000003CLL, 0x80000001A8530980);
      v28 = *a2;
      v11 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v11);

      MEMORY[0x1AC56A990](540884512, 0xE400000000000000);
      v12 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v12);

LABEL_12:
      sub_1A842B9CC();
      swift_allocError();
      *v27 = 0;
      *(v27 + 8) = 0xE000000000000000;
      *(v27 + 16) = 1;
      return swift_willThrow();
    }

    v4 = *(result + 40);
    v5 = *(result + 48);
    if (__OFADD__(v4, v5))
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      if (sub_1A84E5E7C() < v4 + v5)
      {
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000021, 0x80000001A8530A10);
        v7 = sub_1A84E632C();
        MEMORY[0x1AC56A990](v7);

        MEMORY[0x1AC56A990](544106784, 0xE400000000000000);
        sub_1A84E5E7C();
        v8 = sub_1A84E676C();
        MEMORY[0x1AC56A990](v8);

        v9 = 0x20746E6572617020;
        v10 = 0xEE006874676E656CLL;
LABEL_11:
        MEMORY[0x1AC56A990](v9, v10);
        goto LABEL_12;
      }

      sub_1A840D3B0();

      v13 = sub_1A84E5E6C();

      result = sub_1A84E5E6C();
      if (result >> 14 >= v13 >> 14)
      {
        v14 = sub_1A84E5F5C();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = (v6 + *(type metadata accessor for ImportExport.MessagePart() + 76));
        v22 = *v21;
        v23 = v21[1];
        if (sub_1A842991C(v14, v16, v18, v20, *v21, v23))
        {

          *a2 = v3;
          return result;
        }

        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85309C0);
        MEMORY[0x1AC56A990](v22, v23);
        MEMORY[0x1AC56A990](0xD000000000000020, 0x80000001A85309E0);
        v24 = MEMORY[0x1AC56A930](v14, v16, v18, v20);
        v26 = v25;

        MEMORY[0x1AC56A990](v24, v26);

        v9 = 39;
        v10 = 0xE100000000000000;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ImportExport.Message.init(id:conversationID:sender:accountParticipant:messageState:subject:receivedDate:deliveredDate:readDate:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v251 = a3;
  v252 = a8;
  v308 = a7;
  v260 = a4;
  v279 = a1;
  v280 = a2;
  v273 = a9;
  v270 = a13;
  v271 = a12;
  v301 = a16;
  v27 = sub_1A84E5C9C();
  v243 = *(v27 - 8);
  v244 = v27;
  v28 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v246 = &v241 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ImportExport.MessagePart();
  v299 = *(v30 - 1);
  v31 = *(v299 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v307 = &v241 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v305 = &v241 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v241 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v277 = &v241 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v245 = &v241 - v41;
  v42 = sub_1A84E5B9C();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v281 = &v241 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1A84E577C();
  v304 = *(v306 - 8);
  v45 = v304[8];
  MEMORY[0x1EEE9AC00](v306);
  v303 = &v241 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v298 = &v241 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v297 = &v241 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v241 - v53;
  v55 = sub_1A84E56DC();
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v334 = (&v241 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x1EEE9AC00](v57);
  v300 = &v241 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v241 - v62;
  v64 = a5[7];
  v322 = a5[6];
  v323 = v64;
  v65 = a5[3];
  v318 = a5[2];
  v319 = v65;
  v66 = a5[5];
  v320 = a5[4];
  v321 = v66;
  v67 = a5[1];
  v316 = *a5;
  v317 = v67;
  v68 = a6[6];
  v69 = a6[7];
  v70 = a6[4];
  v330 = a6[5];
  v331 = v68;
  v71 = a6[8];
  v332 = v69;
  v333 = v71;
  v72 = a6[2];
  v73 = a6[3];
  v75 = *a6;
  v74 = a6[1];
  v76 = v61;
  v326 = v74;
  v327 = v72;
  v328 = v73;
  v329 = v70;
  v324 = a5[8];
  v325 = v75;
  v77 = *v308;
  v250 = *v301;
  v261 = a11;
  v79 = v78;
  sub_1A8243D74(a11, v54, &qword_1EB2E6F48, &unk_1A8501F00);
  v308 = *(v79 + 48);
  v80 = (v308)(v54, 1, v76);
  v301 = (v79 + 48);
  v302 = v77;
  v295 = v79;
  v296 = v76;
  if (v80 != 1)
  {
    (*(v79 + 32))(v63, v54, v76);
    v294 = objc_opt_self();
    v82 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_4;
  }

  sub_1A824B2D4(v54, &qword_1EB2E6F48, &unk_1A8501F00);
  v265 = 0;
  v269 = 0;
  for (i = v300; ; i = v300)
  {
    v90 = v297;
    sub_1A8243D74(v271, v297, &qword_1EB2E6F48, &unk_1A8501F00);
    v91 = (v308)(v90, 1, v76);
    v92 = v334;
    if (v91 == 1)
    {
      sub_1A824B2D4(v90, &qword_1EB2E6F48, &unk_1A8501F00);
      v274 = 0;
      v268 = 0;
    }

    else
    {
      (*(v79 + 32))(i, v90, v76);
      v297 = objc_opt_self();
      v93 = sub_1A84E565C();
      v94 = v76;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v95 = v306;
      v96 = sub_1A824431C(v306, qword_1EB2E7FC8);
      swift_beginAccess();
      v97 = v304;
      v98 = v303;
      (v304[2])(v303, v96, v95);
      v99 = sub_1A84E576C();
      (v97[1])(v98, v95);
      v100 = [v297 stringFromDate:v93 timeZone:v99 formatOptions:1907];

      v274 = sub_1A84E5DBC();
      v268 = v101;

      v79 = v295;
      (*(v295 + 8))(v300, v94);
      v76 = v94;
      v92 = v334;
    }

    v102 = v302;
    v103 = v298;
    sub_1A8243D74(v270, v298, &qword_1EB2E6F48, &unk_1A8501F00);
    if ((v308)(v103, 1, v76) == 1)
    {
      sub_1A824B2D4(v103, &qword_1EB2E6F48, &unk_1A8501F00);
      v264 = 0;
      v267 = 0;
    }

    else
    {
      (*(v79 + 32))(v92, v103, v76);
      v301 = objc_opt_self();
      v308 = sub_1A84E565C();
      v104 = v79;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v105 = v306;
      v106 = sub_1A824431C(v306, qword_1EB2E7FC8);
      swift_beginAccess();
      v107 = v304;
      v108 = v303;
      (v304[2])(v303, v106, v105);
      v109 = sub_1A84E576C();
      (v107[1])(v108, v105);
      v110 = v308;
      v111 = [v301 stringFromDate:v308 timeZone:v109 formatOptions:1907];

      v264 = sub_1A84E5DBC();
      v267 = v112;

      (*(v104 + 8))(v334, v296);
      v102 = v302;
    }

    v249 = type metadata accessor for ImportExport.Message();
    v113 = *(v249 + 80);
    *&v309[0] = 0;
    sub_1A84E5B8C();
    v114 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v259 = v113;
    v278 = v114;
    sub_1A84E594C();
    if (!v268)
    {
      v117 = v269;
      v118 = v267;
      v116 = v274;
      v119 = a17;
      if (!v269)
      {
        goto LABEL_25;
      }

LABEL_21:
      v120 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v120 = v265 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        v102 |= 8uLL;
      }

      goto LABEL_25;
    }

    v115 = HIBYTE(v268) & 0xF;
    v116 = v274;
    if ((v268 & 0x2000000000000000) == 0)
    {
      v115 = v274 & 0xFFFFFFFFFFFFLL;
    }

    if (v115)
    {
      v102 |= 4uLL;
    }

    v117 = v269;
    v118 = v267;
    v119 = a17;
    if (v269)
    {
      goto LABEL_21;
    }

LABEL_25:
    if (v118)
    {
      v121 = HIBYTE(v118) & 0xF;
      if ((v118 & 0x2000000000000000) == 0)
      {
        v121 = v264 & 0xFFFFFFFFFFFFLL;
      }

      if (v121)
      {
        v102 |= 0x10uLL;
      }
    }

    v274 = v116;
    if ((~v102 & 0x8002) != 0)
    {
      v122 = v102 | 0x8002;
    }

    else
    {
      v122 = v102;
    }

    sub_1A8423270(v119, v309);
    v123 = *&v309[0];
    if ((*&v309[0] & ~v122) == 0)
    {
      v123 = 0;
    }

    v247 = v123;
    v248 = v122;
    v124 = v119;
    v125 = *(v119 + 16);
    v126 = MEMORY[0x1E69E7CC0];
    v334 = v30;
    v272 = v124;
    if (v125)
    {
      *&v309[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v125, 0);
      v126 = *&v309[0];
      v127 = v124 + ((*(v299 + 80) + 32) & ~*(v299 + 80));
      v306 = *(v299 + 72);
      do
      {
        v128 = v307;
        sub_1A8429854(v127, v307, type metadata accessor for ImportExport.MessagePart);
        v129 = v128 + v30[19];
        v130 = *(v129 + 8);
        v308 = *v129;

        sub_1A84298BC(v128, type metadata accessor for ImportExport.MessagePart);
        *&v309[0] = v126;
        v132 = *(v126 + 16);
        v131 = *(v126 + 24);
        if (v132 >= v131 >> 1)
        {
          sub_1A83EF534((v131 > 1), v132 + 1, 1);
          v126 = *&v309[0];
        }

        *(v126 + 16) = v132 + 1;
        v133 = v126 + 16 * v132;
        *(v133 + 32) = v308;
        *(v133 + 40) = v130;
        v127 += v306;
        --v125;
        v30 = v334;
      }

      while (v125);
    }

    v256 = a24;
    v258 = a23;
    v257 = a21;
    v254 = a19;
    v253 = a15;
    v255 = a10;
    *&v309[0] = v126;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
    v262 = sub_1A84E5D6C();
    v263 = v134;

    v135 = *(v272 + 16);
    if (!v135)
    {
      break;
    }

    v136 = 0;
    v63 = 0;
    v276 = (*(v299 + 80) + 32) & ~*(v299 + 80);
    v82 = MEMORY[0x1E69E7CC0];
    v306 = *(v299 + 72);
    v242 = v272 + v276;
    v137 = v272 + v276;
    v275 = v135;
    v138 = v135;
    v139 = v277;
    do
    {
      v282 = v137;
      v283 = v138;
      sub_1A8429854(v137, v139, type metadata accessor for ImportExport.MessagePart);
      v140 = *(v139 + 48);
      v304 = v82;
      if (v140)
      {
        v308 = *(v139 + 40);
        v307 = v140;
      }

      else
      {
        v141 = (v139 + v30[19]);
        v142 = *v141;
        v143 = v141[1];
        v307 = sub_1A84E5E7C();
        v308 = v63;
      }

      v144 = *(v139 + 56);
      if (v144 < 0)
      {
        v144 = v136;
      }

      v303 = v144;
      v145 = *(v139 + 8);
      v292 = *v139;
      v146 = v139 + v30[19];
      v147 = *(v146 + 8);
      v294 = *v146;
      v284 = v147;
      v290 = *(v139 + 16);
      v297 = *(v139 + 96);
      v148 = *(v139 + 168);
      v149 = *(v139 + 120);
      v150 = *(v139 + 136);
      v314 = *(v139 + 152);
      v315 = v148;
      v312 = v149;
      v313 = v150;
      v311 = *(v139 + 104);
      v151 = v334[13];
      v152 = (v139 + v334[12]);
      v153 = *v152;
      v287 = v152[1];
      v154 = *(v139 + v151 + 8);
      v302 = *(v139 + v151);
      v300 = v153;
      v301 = v154;
      v155 = v334[15];
      v156 = (v139 + v334[14]);
      v157 = *v156;
      v288 = v156[1];
      v158 = v139 + v155;
      v159 = *(v139 + v155);
      v160 = *(v158 + 8);
      v298 = v157;
      v299 = v159;
      v291 = v160;
      v161 = v334[21];
      v162 = *(v139 + 80);
      v285 = *(v139 + 64);
      v286 = v162;

      sub_1A8243D74(&v311, v309, &qword_1EB2E6F58, &qword_1A8501388);

      v163 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v289 = *&v309[0];
      v164 = v334[17];
      v293 = *(v139 + v334[16]);
      LODWORD(v296) = *(v139 + v164);
      LODWORD(v295) = *(v139 + v334[18]);
      v165 = *(v139 + v334[20]);
      sub_1A8243D74(v139 + v334[11], &v38[v334[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v38 + 6) = 0u;
      *(v38 + 7) = 0u;
      *(v38 + 8) = 0u;
      *(v38 + 9) = 0u;
      *(v38 + 10) = 0u;
      *(v38 + 22) = 0;
      *(v38 + 4) = 0u;
      *(v38 + 5) = 0u;
      v166 = v334[21];
      *&v309[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v38[16] = v290;
      *v38 = v292;
      *(v38 + 1) = v145;
      v167 = v307;
      *(v38 + 5) = v308;
      *(v38 + 6) = v167;
      v168 = &v38[v334[19]];
      v169 = v284;
      *v168 = v294;
      *(v168 + 1) = v169;
      v170 = *(v38 + 9);

      v171 = v286;
      *(v38 + 4) = v285;
      *(v38 + 5) = v171;
      *(v38 + 12) = v297;
      v172 = *(v38 + 120);
      v173 = *(v38 + 152);
      v309[2] = *(v38 + 136);
      v309[3] = v173;
      v309[4] = *(v38 + 168);
      v309[0] = *(v38 + 104);
      v309[1] = v172;
      sub_1A824B2D4(v309, &qword_1EB2E6F58, &qword_1A8501388);
      v174 = v311;
      *(v38 + 120) = v312;
      v175 = v314;
      *(v38 + 136) = v313;
      *(v38 + 152) = v175;
      v30 = v334;
      *(v38 + 168) = v315;
      *(v38 + 104) = v174;
      v176 = &v38[v30[12]];
      v177 = v301;
      v178 = v287;
      *v176 = v300;
      *(v176 + 1) = v178;
      v179 = &v38[v30[13]];
      v180 = v302;
      *v179 = v302;
      *(v179 + 1) = v177;
      v181 = &v38[v30[14]];
      v182 = v288;
      *v181 = v298;
      *(v181 + 1) = v182;
      v183 = &v38[v30[15]];
      v184 = v291;
      *v183 = v299;
      *(v183 + 1) = v184;
      sub_1A83F5918(v180, v177);
      (*(*(v163 - 8) + 8))(&v38[v166], v163);
      v310 = v289;
      sub_1A84E5B8C();
      v185 = v303;
      sub_1A84E594C();
      v38[v30[16]] = v293;
      v38[v30[17]] = v296;
      v38[v30[18]] = v295;
      *&v38[v30[20]] = v165;
      v186 = v280;
      *(v38 + 3) = v279;
      *(v38 + 4) = v186;
      *(v38 + 7) = v185;
      sub_1A8429854(v38, v305, type metadata accessor for ImportExport.MessagePart);

      v82 = v304;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1A83EF140(0, v82[2] + 1, 1, v82);
      }

      v63 = v82[2];
      v187 = v82[3];
      v139 = v277;
      if (v63 >= v187 >> 1)
      {
        v82 = sub_1A83EF140(v187 > 1, v63 + 1, 1, v82);
      }

      v82[2] = v63 + 1;
      sub_1A842AD50(v305, v82 + v276 + v63 * v306, type metadata accessor for ImportExport.MessagePart);
      sub_1A84298BC(v38, type metadata accessor for ImportExport.MessagePart);
      v136 = (v185 + 1);
      if (__OFADD__(v185, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v188 = &v308[v307];
      if (__OFADD__(v308, v307))
      {
        goto LABEL_84;
      }

      v63 = (v188 + 1);
      v189 = v283;
      if (__OFADD__(v188, 1))
      {
        goto LABEL_85;
      }

      sub_1A84298BC(v139, type metadata accessor for ImportExport.MessagePart);
      v137 = v282 + v306;
      v138 = v189 - 1;
    }

    while (v138);
    v190 = 0;
    *&v311 = -1;
    v38 = v266;
    v63 = v245;
    v191 = v272;
    v30 = v262;
    v192 = v242;
    while (v190 < *(v191 + 16))
    {
      sub_1A8429854(v192, v63, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v63, &v311);
      if (v38)
      {
        sub_1A84298BC(v63, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v325);
        sub_1A8400ED8(&v316);

        sub_1A84E5C8C();
        v228 = v38;
        v229 = sub_1A84E5C7C();
        v230 = sub_1A84E619C();

        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          *v231 = 138412290;
          v233 = v38;
          v234 = _swift_stdlib_bridgeErrorToNSError();
          *(v231 + 4) = v234;
          *v232 = v234;
          _os_log_impl(&dword_1A823F000, v229, v230, "Failed to create a message with Error: %@", v231, 0xCu);
          sub_1A824B2D4(v232, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v232, -1, -1);
          MEMORY[0x1AC56D3F0](v231, -1, -1);
        }

        (*(v243 + 8))(v246, v244);
        swift_willThrow();
        sub_1A824B2D4(v270, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v271, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v261, &qword_1EB2E6F48, &unk_1A8501F00);
        v235 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v235 - 8) + 8))(&v273[v259], v235);
      }

      ++v190;
      sub_1A84298BC(v63, type metadata accessor for ImportExport.MessagePart);
      v192 += v306;
      if (v275 == v190)
      {
        v266 = 0;
        goto LABEL_63;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_4:
    v83 = v306;
    v84 = sub_1A824431C(v306, qword_1EB2E7FC8);
    swift_beginAccess();
    v85 = v304;
    v86 = v303;
    (v304[2])(v303, v84, v83);
    v87 = sub_1A84E576C();
    (v85[1])(v86, v83);
    v88 = [v294 stringFromDate:v82 timeZone:v87 formatOptions:1907];

    v265 = sub_1A84E5DBC();
    v269 = v89;

    v79 = v295;
    v76 = v296;
    (*(v295 + 8))(v63, v296);
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v193 = v247 | v248;

  v194 = v273;
  v195 = v280;
  *v273 = v279;
  *(v194 + 1) = v195;
  v196 = v263;
  *(v194 + 14) = v262;
  *(v194 + 15) = v196;
  *(v194 + 2) = a25;
  v197 = v194;
  v198 = v260;
  v197[4] = v251;
  v197[5] = v198;
  v199 = v249;
  v200 = (v197 + *(v249 + 92));
  v201 = v319;
  v200[2] = v318;
  v200[3] = v201;
  v203 = v324;
  v202 = v325;
  v204 = v322;
  v200[7] = v323;
  v200[8] = v203;
  v205 = v321;
  v200[4] = v320;
  v200[5] = v205;
  v200[6] = v204;
  v206 = v317;
  *v200 = v316;
  v200[1] = v206;
  v207 = (v197 + v199[24]);
  v208 = v330;
  v209 = v332;
  v210 = v333;
  v207[6] = v331;
  v207[7] = v209;
  v207[8] = v210;
  v211 = v326;
  v212 = v328;
  v213 = v329;
  v207[2] = v327;
  v207[3] = v212;
  v207[4] = v213;
  v207[5] = v208;
  *v207 = v202;
  v207[1] = v211;
  v214 = v254;
  v197[10] = a18;
  v197[11] = v214;
  v215 = v255;
  v197[12] = v252;
  v197[13] = v215;
  v216 = v269;
  v197[16] = v265;
  v197[17] = v216;
  v217 = v268;
  v197[18] = v274;
  v197[19] = v217;
  v218 = v267;
  v197[20] = v264;
  v197[21] = v218;
  v219 = v253;
  v197[22] = a14;
  v197[23] = v219;
  v220 = v250;
  *(v197 + 208) = v250;
  v197[27] = v82;
  sub_1A8400E7C(&v316, v309);
  sub_1A8400E7C(&v325, v309);
  v221 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v221 - 8) + 8))(v197 + v259, v221);
  *&v309[0] = v256;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v222 = (v197 + v199[21]);
  v224 = v257;
  v223 = v258;
  *v222 = a20;
  v222[1] = v224;
  v225 = (v197 + v199[22]);
  *v225 = a22;
  v225[1] = v223;
  v197[3] = v193;
  if (v220 > 3)
  {
    if (v220 > 5)
    {
      if (v220 == 6)
      {
        v226 = 0xE300000000000000;
        v227 = 5456722;
      }

      else
      {
        v226 = 0xEC000000534D5365;
        v227 = 0x74696C6C65746153;
      }
    }

    else if (v220 == 4)
    {
      v227 = 5459283;
      v226 = 0xE300000000000000;
    }

    else
    {
      v226 = 0xE800000000000000;
      v227 = 0x656D695465636146;
    }
  }

  else if (v220 > 1)
  {
    if (v220 == 2)
    {
      v226 = 0xE800000000000000;
    }

    else
    {
      v226 = 0xEC0000006574694CLL;
    }

    v227 = 0x6567617373654D69;
  }

  else if (v220)
  {
    v226 = 0xE300000000000000;
    v227 = 7958113;
  }

  else
  {
    v226 = 0xE700000000000000;
    v227 = 0x6E776F6E6B6E75;
  }

  sub_1A824B2D4(v270, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v271, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v261, &qword_1EB2E6F48, &unk_1A8501F00);
  v197[24] = v227;
  v197[25] = v226;
  v237 = *(&v318 + 1);
  v238 = v319;

  sub_1A8400ED8(&v316);
  v197[6] = v237;
  v197[7] = v238;
  v240 = *(&v327 + 1);
  v239 = v328;

  result = sub_1A8400ED8(&v325);
  v197[8] = v240;
  v197[9] = v239;
  return result;
}

unint64_t sub_1A842501C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65636E6575716573;
      break;
    case 2:
      result = 0x536567617373656DLL;
      break;
    case 3:
      result = 0x61737265766E6F63;
      break;
    case 4:
      result = 0x44497265646E6573;
      break;
    case 5:
      result = 0x746E756F636361;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7463656A627573;
      break;
    case 8:
      result = 2036625250;
      break;
    case 9:
      result = 0x6563655265746164;
      break;
    case 10:
      result = 0x696C654465746164;
      break;
    case 11:
      result = 0x6461655265746164;
      break;
    case 12:
      result = 0x437972746E756F63;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x5465636976726573;
      break;
    case 15:
      result = 0x506567617373656DLL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    case 18:
      result = 0x617373654D736372;
      break;
    case 19:
      result = 0x7265646E6573;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8425290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8429994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84252C4(uint64_t a1)
{
  v2 = sub_1A84296BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8425300(uint64_t a1)
{
  v2 = sub_1A84296BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7750, &qword_1A8503A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84296BC();
  sub_1A84E68AC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v92[0]) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v92[0]) = 1;
    sub_1A84E673C();
    *&v92[0] = v3[3];
    LOBYTE(v83) = 2;
    sub_1A8429710();
    sub_1A84E672C();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v92[0]) = 3;
    sub_1A84E66CC();
    v16 = v3[6];
    v17 = v3[7];
    LOBYTE(v92[0]) = 4;
    sub_1A84E66AC();
    v18 = v3[8];
    v19 = v3[9];
    LOBYTE(v92[0]) = 5;
    sub_1A84E66CC();
    v20 = v3[10];
    v21 = v3[11];
    LOBYTE(v92[0]) = 6;
    sub_1A84E66AC();
    v22 = v3[12];
    v23 = v3[13];
    LOBYTE(v92[0]) = 7;
    sub_1A84E66AC();
    v24 = v3[14];
    v25 = v3[15];
    LOBYTE(v92[0]) = 8;
    sub_1A84E66CC();
    v26 = v3[16];
    v27 = v3[17];
    LOBYTE(v92[0]) = 9;
    sub_1A84E66AC();
    v28 = v3[18];
    v29 = v3[19];
    LOBYTE(v92[0]) = 10;
    sub_1A84E66AC();
    v30 = v3[20];
    v31 = v3[21];
    LOBYTE(v92[0]) = 11;
    sub_1A84E66AC();
    v32 = v3[22];
    v33 = v3[23];
    LOBYTE(v92[0]) = 12;
    sub_1A84E66CC();
    v34 = v3[24];
    v35 = v3[25];
    LOBYTE(v92[0]) = 13;
    sub_1A84E66CC();
    LOBYTE(v92[0]) = *(v3 + 208);
    LOBYTE(v83) = 14;
    sub_1A841E278();
    sub_1A84E672C();
    *&v92[0] = v3[27];
    LOBYTE(v83) = 15;
    sub_1A83EA2FC(&qword_1EB2E7768, &qword_1A8503A80);
    sub_1A84297B8(&qword_1EB2E7770, &qword_1EB2E7778);
    sub_1A84E672C();
    v63 = type metadata accessor for ImportExport.Message();
    v36 = v63[20];
    LOBYTE(v92[0]) = 16;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E672C();
    v37 = (v3 + v63[21]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v92[0]) = 17;
    sub_1A84E66AC();
    v40 = (v3 + v63[22]);
    v41 = *v40;
    v42 = v40[1];
    v102 = 18;
    sub_1A84E66AC();
    v43 = (v3 + v63[23]);
    v44 = v43[5];
    v45 = v43[7];
    v97 = v43[6];
    v98 = v45;
    v46 = v43[7];
    v99 = v43[8];
    v47 = v43[1];
    v48 = v43[3];
    v93 = v43[2];
    v94 = v48;
    v49 = v43[3];
    v50 = v43[5];
    v95 = v43[4];
    v96 = v50;
    v51 = v43[1];
    v92[0] = *v43;
    v92[1] = v51;
    v89 = v97;
    v90 = v46;
    v91 = v43[8];
    v85 = v93;
    v86 = v49;
    v87 = v95;
    v88 = v44;
    v83 = v92[0];
    v84 = v47;
    v101 = 19;
    sub_1A8400E7C(v92, v75);
    sub_1A841E224();
    sub_1A84E672C();
    v74[6] = v89;
    v74[7] = v90;
    v74[8] = v91;
    v74[2] = v85;
    v74[3] = v86;
    v74[4] = v87;
    v74[5] = v88;
    v74[0] = v83;
    v74[1] = v84;
    sub_1A8400ED8(v74);
    v52 = (v3 + v63[24]);
    v53 = v52[5];
    v54 = v52[7];
    v80 = v52[6];
    v81 = v54;
    v55 = v52[7];
    v82 = v52[8];
    v56 = v52[1];
    v57 = v52[3];
    v76 = v52[2];
    v77 = v57;
    v58 = v52[3];
    v59 = v52[5];
    v78 = v52[4];
    v79 = v59;
    v60 = v52[1];
    v75[0] = *v52;
    v75[1] = v60;
    v71 = v80;
    v72 = v55;
    v73 = v52[8];
    v67 = v76;
    v68 = v58;
    v69 = v78;
    v70 = v53;
    v65 = v75[0];
    v66 = v56;
    v100 = 20;
    sub_1A8400E7C(v75, v64);
    sub_1A84E672C();
    v64[6] = v71;
    v64[7] = v72;
    v64[8] = v73;
    v64[2] = v67;
    v64[3] = v68;
    v64[4] = v69;
    v64[5] = v70;
    v64[0] = v65;
    v64[1] = v66;
    sub_1A8400ED8(v64);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v128 + 1) = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v126[-v6];
  v129 = sub_1A83EA2FC(&qword_1EB2E7780, &qword_1A8503A88);
  v8 = *(v129 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v11 = &v126[-v10];
  v12 = sub_1A84E5B9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = type metadata accessor for ImportExport.Message();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v126[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = v16;
  v19 = *(v16 + 80);
  *&v147 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v132 = v19;
  v135 = v18;
  sub_1A84E594C();
  v20 = a1[3];
  v21 = a1[4];
  v131 = a1;
  sub_1A82471E0(a1, v20);
  sub_1A84296BC();
  sub_1A84E689C();
  if (v2)
  {
    v156 = v2;
    v25 = v135;
    sub_1A8244788(v131);
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_4:
    v29 = v130;
    goto LABEL_5;
  }

  v22 = v8;
  LOBYTE(v147) = 0;
  v23 = v129;
  v24 = sub_1A84E660C();
  v25 = v135;
  *v135 = v24;
  *(v25 + 1) = v38;
  LOBYTE(v147) = 1;
  v39 = sub_1A84E667C();
  v156 = 0;
  *(v25 + 2) = v39;
  LOBYTE(v137) = 2;
  sub_1A8429764();
  v40 = v156;
  sub_1A84E666C();
  if (v40)
  {
    v156 = v40;
    (*(v8 + 8))(v11, v23);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v127 = 0;
    *&v128 = 0;
    DWORD2(v128) = 0;
    LODWORD(v129) = 0;
    goto LABEL_16;
  }

  *(v25 + 3) = v147;
  LOBYTE(v147) = 3;
  *(v25 + 4) = sub_1A84E660C();
  *(v25 + 5) = v59;
  LOBYTE(v147) = 4;
  *(v25 + 6) = sub_1A84E65DC();
  *(v25 + 7) = v60;
  LOBYTE(v147) = 5;
  *(v25 + 8) = sub_1A84E660C();
  *(v25 + 9) = v61;
  LOBYTE(v147) = 6;
  *(v25 + 10) = sub_1A84E65DC();
  *(v25 + 11) = v62;
  LOBYTE(v147) = 7;
  *(v25 + 12) = sub_1A84E65DC();
  *(v25 + 13) = v63;
  LOBYTE(v147) = 8;
  v64 = sub_1A84E660C();
  v156 = 0;
  *(v25 + 14) = v64;
  *(v25 + 15) = v65;
  LOBYTE(v147) = 9;
  v66 = v156;
  v67 = sub_1A84E65DC();
  v156 = v66;
  if (v66)
  {
    (*(v8 + 8))(v11, v129);
    v127 = 0;
    *&v128 = 0;
    DWORD2(v128) = 0;
    LODWORD(v129) = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v25 = v135;
    goto LABEL_16;
  }

  v69 = v135;
  *(v135 + 16) = v67;
  *(v69 + 17) = v68;
  LOBYTE(v147) = 10;
  v70 = v156;
  v71 = sub_1A84E65DC();
  v156 = v70;
  if (v70)
  {
    (*(v8 + 8))(v11, v129);
    *&v128 = 0;
    DWORD2(v128) = 0;
    LODWORD(v129) = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v127 = 1;
    v25 = v135;
    goto LABEL_16;
  }

  v73 = v135;
  *(v135 + 18) = v71;
  *(v73 + 19) = v72;
  LOBYTE(v147) = 11;
  v74 = v156;
  v75 = sub_1A84E65DC();
  v156 = v74;
  if (v74)
  {
    (*(v8 + 8))(v11, v129);
    DWORD2(v128) = 0;
    LODWORD(v129) = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v127 = 1;
    *&v128 = 1;
    v25 = v135;
    goto LABEL_16;
  }

  v77 = v135;
  *(v135 + 20) = v75;
  *(v77 + 21) = v76;
  LOBYTE(v147) = 12;
  v78 = v156;
  v79 = sub_1A84E660C();
  v156 = v78;
  if (v78)
  {
    (*(v8 + 8))(v11, v129);
    LODWORD(v129) = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v127 = 1;
    LODWORD(v128) = 1;
    *(&v128 + 4) = 1;
    v25 = v135;
    goto LABEL_16;
  }

  v81 = v135;
  *(v135 + 22) = v79;
  *(v81 + 23) = v80;
  LOBYTE(v147) = 13;
  v82 = v156;
  v83 = sub_1A84E660C();
  v156 = v82;
  if (v82)
  {
    (*(v8 + 8))(v11, v129);
    LODWORD(v129) = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v127 = 1;
    *&v128 = 0x100000001;
    DWORD2(v128) = 1;
    v25 = v135;
    goto LABEL_16;
  }

  v85 = v135;
  *(v135 + 24) = v83;
  *(v85 + 25) = v84;
  LOBYTE(v137) = 14;
  sub_1A841E440();
  v86 = v156;
  sub_1A84E666C();
  v156 = v86;
  if (v86)
  {
    (*(v8 + 8))(v11, v129);
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v127 = 1;
    *&v128 = 0x100000001;
    DWORD2(v128) = 1;
    LODWORD(v129) = 1;
    v25 = v135;
LABEL_16:
    sub_1A8244788(v131);
    v47 = *(v25 + 1);

    if (v41)
    {
      v48 = *(v25 + 5);

      v29 = v130;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v29 = v130;
      if (!v42)
      {
LABEL_18:
        if (v43)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    v54 = *(v25 + 7);

    if (v43)
    {
LABEL_19:
      v49 = *(v25 + 9);

      if ((v44 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v44)
    {
LABEL_20:
      if (v45)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_32:
    v55 = *(v25 + 11);

    if (v45)
    {
LABEL_21:
      v50 = *(v25 + 13);

      if ((v46 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v46)
    {
LABEL_22:
      if (v127)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

LABEL_34:
    v56 = *(v25 + 15);

    if (v127)
    {
LABEL_23:
      v51 = *(v25 + 17);

      if ((v128 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v128)
    {
LABEL_24:
      if (DWORD1(v128))
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

LABEL_36:
    v57 = *(v25 + 19);

    if (BYTE4(v128))
    {
LABEL_25:
      v52 = *(v25 + 21);

      if ((BYTE8(v128) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!DWORD2(v128))
    {
LABEL_26:
      if (!v129)
      {
LABEL_28:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        goto LABEL_5;
      }

LABEL_27:
      v53 = *(v25 + 25);

      goto LABEL_28;
    }

LABEL_38:
    v58 = *(v25 + 23);

    if ((v129 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v135[208] = v147;
  sub_1A83EA2FC(&qword_1EB2E7768, &qword_1A8503A80);
  LOBYTE(v137) = 15;
  sub_1A84297B8(&qword_1EB2E7790, &qword_1EB2E7798);
  v87 = v156;
  sub_1A84E666C();
  v88 = v87;
  if (v87)
  {
    (*(v22 + 8))(v11, v129);
    sub_1A8244788(v131);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v156 = v87;
  }

  else
  {
    *(v135 + 27) = v147;
    LOBYTE(v147) = 16;
    sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E666C();
    v156 = 0;
    (*(v133 + 40))(&v135[v132], v7, v134);
    LOBYTE(v147) = 17;
    v89 = v156;
    v90 = sub_1A84E65DC();
    v156 = v89;
    if (v89)
    {
      (*(v22 + 8))(v11, v129);
      sub_1A8244788(v131);
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v106 = &v135[v130[21]];
      *v106 = v90;
      v106[1] = v91;
      LOBYTE(v147) = 18;
      v107 = v156;
      v108 = sub_1A84E65DC();
      v156 = v107;
      if (v107)
      {
        (*(v22 + 8))(v11, v129);
        sub_1A8244788(v131);
        v27 = 0;
        v28 = 0;
        v26 = 1;
      }

      else
      {
        v110 = &v135[v130[22]];
        *v110 = v108;
        v110[1] = v109;
        v146 = 19;
        sub_1A841E374();
        v111 = v156;
        sub_1A84E666C();
        v156 = v111;
        if (v111)
        {
          (*(v22 + 8))(v11, v129);
          sub_1A8244788(v131);
          v28 = 0;
          v26 = 1;
          v27 = 1;
        }

        else
        {
          v112 = &v135[v130[23]];
          v113 = v152;
          v114 = v154;
          v115 = v155;
          *(v112 + 6) = v153;
          *(v112 + 7) = v114;
          *(v112 + 8) = v115;
          v116 = v150;
          *(v112 + 2) = v149;
          *(v112 + 3) = v116;
          *(v112 + 4) = v151;
          *(v112 + 5) = v113;
          v117 = v148;
          *v112 = v147;
          *(v112 + 1) = v117;
          v136 = 20;
          v118 = v156;
          sub_1A84E666C();
          v119 = (v22 + 8);
          v156 = v118;
          if (!v118)
          {
            (*v119)(v11, v129);
            v120 = v135;
            v121 = &v135[v130[24]];
            v122 = v144;
            *(v121 + 6) = v143;
            *(v121 + 7) = v122;
            *(v121 + 8) = v145;
            v123 = v140;
            *(v121 + 2) = v139;
            *(v121 + 3) = v123;
            v124 = v142;
            *(v121 + 4) = v141;
            *(v121 + 5) = v124;
            v125 = v138;
            *v121 = v137;
            *(v121 + 1) = v125;
            sub_1A8429854(v120, *(&v128 + 1), type metadata accessor for ImportExport.Message);
            sub_1A8244788(v131);
            return sub_1A84298BC(v120, type metadata accessor for ImportExport.Message);
          }

          (*v119)(v11, v129);
          sub_1A8244788(v131);
          v26 = 1;
          v27 = 1;
          v28 = 1;
        }
      }
    }
  }

  v92 = v135;
  v93 = *(v135 + 1);

  v94 = *(v92 + 5);

  v95 = *(v92 + 7);

  v96 = *(v92 + 9);

  v97 = *(v92 + 11);

  v98 = *(v92 + 13);

  v99 = *(v92 + 15);

  v100 = *(v92 + 17);

  v101 = *(v92 + 19);

  v102 = *(v92 + 21);

  v103 = *(v92 + 23);

  v104 = *(v92 + 25);

  if (!v88)
  {
    v25 = v135;
    v105 = *(v135 + 27);

    goto LABEL_4;
  }

  v29 = v130;
  v25 = v135;
LABEL_5:
  result = (*(v133 + 8))(&v25[v132], v134);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_7;
    }

LABEL_10:
    v32 = *&v25[v29[22] + 8];

    if (!v28)
    {
      return result;
    }

    goto LABEL_11;
  }

  v31 = *&v25[v29[21] + 8];

  if (v27)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v28)
  {
    return result;
  }

LABEL_11:
  v33 = &v25[v29[23]];
  v34 = *(v33 + 7);
  v153 = *(v33 + 6);
  v154 = v34;
  v155 = *(v33 + 8);
  v35 = *(v33 + 3);
  v149 = *(v33 + 2);
  v150 = v35;
  v36 = *(v33 + 5);
  v151 = *(v33 + 4);
  v152 = v36;
  v37 = *(v33 + 1);
  v147 = *v33;
  v148 = v37;
  return sub_1A8400ED8(&v147);
}

uint64_t static ImportExport.Message.date(fromISO8601String:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  if (a1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v9 = sub_1A84E5D8C();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1A84E569C();

      v11 = sub_1A84E56DC();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = sub_1A84E56DC();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    return sub_1A83F8010(v7, a2);
  }

  else
  {
    v12 = sub_1A84E56DC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t ImportExport.Message.attachmentTotalBytes.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v27 = type metadata accessor for ImportExport.Attachment();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImportExport.MessagePart();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 216);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v26 = *(v11 + 44);
    v18 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v19 = (v5 + 48);
    while (1)
    {
      sub_1A8429854(v18, v14, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v14[v26], v4, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84298BC(v14, type metadata accessor for ImportExport.MessagePart);
      v20 = v27;
      if ((*v19)(v4, 1, v27) == 1)
      {
        sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
      }

      else
      {
        sub_1A842AD50(v4, v8, type metadata accessor for ImportExport.Attachment);
        v21 = *&v8[*(v20 + 60)];
        result = sub_1A84298BC(v8, type metadata accessor for ImportExport.Attachment);
        if (v21 < 0)
        {
          __break(1u);
          return result;
        }

        v23 = __CFADD__(v17, v21);
        v17 += v21;
        if (v23)
        {
          __break(1u);
          return 0;
        }
      }

      v18 += v25;
      if (!--v16)
      {
        return v17;
      }
    }
  }

  return 0;
}

uint64_t ImportExport.Message.attachmentCount.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for ImportExport.MessagePart();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 216);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v7 + 44);
    v15 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    while (1)
    {
      sub_1A8429854(v15, v10, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v10[v14], v4, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84298BC(v10, type metadata accessor for ImportExport.MessagePart);
      v17 = type metadata accessor for ImportExport.Attachment();
      v18 = (*(*(v17 - 8) + 48))(v4, 1, v17);
      sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
      if (v18 != 1 && __OFADD__(v13++, 1))
      {
        break;
      }

      v15 += v16;
      if (!--v12)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return 0;
}

void ImportExport.Message.reaction.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for ImportExport.MessagePart() - 8);
    v6 = (((*(v5 + 80) + 32) & ~*(v5 + 80)) + v3 + 152);
    while (1)
    {
      v7 = *(v6 - 4);
      if (v7)
      {
        break;
      }

      v6 = (v6 + *(v5 + 72));
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v6 - 1);
    *a1 = *(v6 - 3);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(v6 - 24);
    *(a1 + 40) = v8;
    v9 = v6[1];
    *(a1 + 48) = *v6;
    *(a1 + 64) = v9;
  }

  else
  {
LABEL_5:
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

double ImportExport.Message.reply.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(v1 + 216);
  v5 = *(v4 + 16);
  do
  {
    if (v5 == v3)
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v6 = *(type metadata accessor for ImportExport.MessagePart() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3++;
    v8 = *(v7 + 72);
  }

  while (!v8);
  v9 = *(v7 + 96);
  *a1 = *(v7 + 64);
  *(a1 + 8) = v8;
  *(a1 + 16) = *(v7 + 80);
  *(a1 + 32) = v9;

  return result;
}

uint64_t ImportExport.Message.update(messageParts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v209 = a1;
  v188 = a2;
  v247 = type metadata accessor for ImportExport.MessagePart();
  v212 = *(v247 - 1);
  v4 = *(v212 + 64);
  v5 = MEMORY[0x1EEE9AC00](v247);
  v245 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v244 = &v176 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v176 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v218 = &v176 - v12;
  v13 = sub_1A84E5C9C();
  v177 = *(v13 - 8);
  v178 = v13;
  v14 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A84E5B9C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v219 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ImportExport.Message();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v208 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2[1];
  v217 = *v2;
  v221 = v23;
  v207 = v2[5];
  v24 = (v2 + v21[23]);
  v25 = v24[7];
  v260 = v24[6];
  v261 = v25;
  v262 = v24[8];
  v26 = v24[3];
  v256 = v24[2];
  v257 = v26;
  v27 = v24[5];
  v258 = v24[4];
  v259 = v27;
  v28 = v24[1];
  v254 = *v24;
  v255 = v28;
  v29 = (v2 + v21[24]);
  v30 = v29[8];
  v270 = v29[7];
  v271 = v30;
  v31 = v29[6];
  v32 = v29[3];
  v265 = v29[2];
  v266 = v32;
  v33 = v29[4];
  v268 = v29[5];
  v269 = v31;
  v267 = v33;
  v34 = v29[1];
  v263 = *v29;
  v264 = v34;
  v35 = v2[3];
  v180 = v2[4];
  v36 = v2[12];
  v37 = v2[13];
  v38 = v2[16];
  v39 = v2[17];
  v40 = v3[19];
  v202 = v3[18];
  v203 = v38;
  v205 = v40;
  v41 = v3[21];
  v201 = v3[20];
  v210 = v41;
  v42 = v3[23];
  v182 = v3[22];
  v183 = v36;
  v186 = *(v3 + 208);
  v43 = v3[11];
  v181 = v3[10];
  v44 = v21[21];
  v246 = v21[20];
  v45 = (v3 + v44);
  v46 = *v45;
  v47 = v45[1];
  v48 = (v3 + v21[22]);
  v49 = v48[1];
  v184 = *v48;
  v185 = v46;
  v195 = v49;

  v192 = v42;

  v193 = v37;

  v206 = v39;

  v50 = v205;

  v191 = v43;

  v194 = v47;

  v220 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v190 = *&v248[0];
  v179 = v3[2];
  v187 = v19;
  v51 = *(v19 + 80);
  *&v248[0] = 0;
  sub_1A84E5B8C();
  v52 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v196 = v51;
  v216 = v52;
  sub_1A84E594C();
  if (v50)
  {
    v53 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v53 = v202 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v35 |= 4uLL;
    }
  }

  if (v206)
  {
    v54 = HIBYTE(v206) & 0xF;
    if ((v206 & 0x2000000000000000) == 0)
    {
      v54 = v203 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v35 |= 8uLL;
    }
  }

  if (v210)
  {
    v55 = HIBYTE(v210) & 0xF;
    if ((v210 & 0x2000000000000000) == 0)
    {
      v55 = v201 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v35 |= 0x10uLL;
    }
  }

  if ((~v35 & 0x8002) != 0)
  {
    v56 = v35 | 0x8002;
  }

  else
  {
    v56 = v35;
  }

  v57 = v209;
  sub_1A8423270(v209, v248);
  v58 = *&v248[0];
  if ((*&v248[0] & ~v56) == 0)
  {
    v58 = 0;
  }

  v198 = v58;
  v199 = v56;
  v59 = *(v57 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  v204 = v59;
  if (v59)
  {
    *&v248[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v59, 0);
    v60 = *&v248[0];
    v61 = v57 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    v243 = *(v212 + 72);
    do
    {
      v62 = v245;
      sub_1A8429854(v61, v245, type metadata accessor for ImportExport.MessagePart);
      v63 = (v62 + v247[19]);
      v64 = v63[1];
      v246 = *v63;

      sub_1A84298BC(v62, type metadata accessor for ImportExport.MessagePart);
      *&v248[0] = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1A83EF534((v65 > 1), v66 + 1, 1);
        v60 = *&v248[0];
      }

      *(v60 + 16) = v66 + 1;
      v67 = v60 + 16 * v66;
      *(v67 + 32) = v246;
      *(v67 + 40) = v64;
      v61 += v243;
      --v59;
    }

    while (v59);
    v59 = v204;
  }

  *&v248[0] = v60;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v211 = sub_1A84E5D6C();
  v197 = v68;

  if (v59)
  {
    v69 = 0;
    v70 = 0;
    v71 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v72 = v209 + v71;
    v214 = *(v212 + 72);
    v215 = v71;
    v213 = v220 - 8;
    v73 = MEMORY[0x1E69E7CC0];
    v74 = v59;
    v75 = v247;
    v76 = v218;
    while (1)
    {
      v222 = v72;
      v223 = v74;
      sub_1A8429854(v72, v76, type metadata accessor for ImportExport.MessagePart);
      v77 = *(v76 + 48);
      v243 = v73;
      if (v77)
      {
        v224 = *(v76 + 40);
        v245 = v77;
      }

      else
      {
        v78 = (v76 + v75[19]);
        v79 = *v78;
        v80 = v78[1];
        v245 = sub_1A84E5E7C();
        v224 = v70;
      }

      v81 = *(v76 + 56);
      if (v81 < 0)
      {
        v81 = v69;
      }

      v246 = v81;
      v82 = *(v76 + 8);
      v83 = (v76 + v75[19]);
      v84 = *v83;
      v85 = v83[1];
      v232 = *v76;
      v233 = v84;
      v225 = v85;
      v229 = *(v76 + 16);
      v237 = *(v76 + 96);
      v86 = *(v76 + 168);
      v87 = *(v76 + 120);
      v88 = *(v76 + 136);
      v252 = *(v76 + 152);
      v253 = v86;
      v250 = v87;
      v251 = v88;
      v249 = *(v76 + 104);
      v89 = v75[13];
      v90 = (v76 + v75[12]);
      v91 = v90[1];
      v240 = *v90;
      v228 = v91;
      v92 = *(v76 + v89 + 8);
      v242 = *(v76 + v89);
      v241 = v92;
      v93 = v75[15];
      v94 = (v76 + v75[14]);
      v95 = v94[1];
      v238 = *v94;
      v96 = *(v76 + v93 + 8);
      v239 = *(v76 + v93);
      v231 = v96;
      v97 = v75[21];
      v98 = *(v76 + 80);
      v226 = *(v76 + 64);
      v227 = v98;

      sub_1A8243D74(&v249, v248, &qword_1EB2E6F58, &qword_1A8501388);

      v99 = v220;
      sub_1A84E595C();
      v230 = *&v248[0];
      v100 = v247[17];
      v234 = *(v76 + v247[16]);
      v236 = *(v76 + v100);
      v235 = *(v76 + v247[18]);
      v101 = *(v76 + v247[20]);
      sub_1A8243D74(v76 + v247[11], &v11[v247[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v11 + 6) = 0u;
      *(v11 + 7) = 0u;
      *(v11 + 8) = 0u;
      *(v11 + 9) = 0u;
      *(v11 + 10) = 0u;
      *(v11 + 22) = 0;
      *(v11 + 4) = 0u;
      *(v11 + 5) = 0u;
      v102 = v247[21];
      *&v248[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v11[16] = v229;
      v103 = v233;
      *v11 = v232;
      *(v11 + 1) = v82;
      v104 = v224;
      v105 = v245;
      *(v11 + 5) = v224;
      *(v11 + 6) = v105;
      v106 = &v11[v247[19]];
      v107 = v225;
      *v106 = v103;
      *(v106 + 1) = v107;
      v108 = *(v11 + 9);

      v109 = v227;
      *(v11 + 4) = v226;
      *(v11 + 5) = v109;
      *(v11 + 12) = v237;
      v110 = *(v11 + 120);
      v111 = *(v11 + 152);
      v248[2] = *(v11 + 136);
      v248[3] = v111;
      v248[4] = *(v11 + 168);
      v248[0] = *(v11 + 104);
      v248[1] = v110;
      sub_1A824B2D4(v248, &qword_1EB2E6F58, &qword_1A8501388);
      v112 = v249;
      *(v11 + 120) = v250;
      v113 = v252;
      *(v11 + 136) = v251;
      *(v11 + 152) = v113;
      *(v11 + 168) = v253;
      *(v11 + 104) = v112;
      v114 = &v11[v247[12]];
      v115 = v228;
      *v114 = v240;
      *(v114 + 1) = v115;
      v116 = &v11[v247[13]];
      v117 = v242;
      v118 = v241;
      *v116 = v242;
      *(v116 + 1) = v118;
      v119 = &v11[v247[14]];
      *v119 = v238;
      *(v119 + 1) = v95;
      v120 = &v11[v247[15]];
      v121 = v231;
      *v120 = v239;
      *(v120 + 1) = v121;
      sub_1A83F5918(v117, v118);
      v122 = *(*(v99 - 8) + 8);
      v123 = v99;
      v75 = v247;
      v122(&v11[v102], v123);
      v272 = v230;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v11[v75[16]] = v234;
      v11[v75[17]] = v236;
      v11[v75[18]] = v235;
      *&v11[v75[20]] = v101;
      v124 = v221;
      *(v11 + 3) = v217;
      *(v11 + 4) = v124;
      *(v11 + 7) = v246;
      sub_1A8429854(v11, v244, type metadata accessor for ImportExport.MessagePart);

      v73 = v243;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1A83EF140(0, v73[2] + 1, 1, v73);
      }

      v125 = v214;
      v127 = v73[2];
      v126 = v73[3];
      v76 = v218;
      if (v127 >= v126 >> 1)
      {
        v73 = sub_1A83EF140(v126 > 1, v127 + 1, 1, v73);
      }

      v73[2] = v127 + 1;
      sub_1A842AD50(v244, v73 + v215 + v127 * v125, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v11, type metadata accessor for ImportExport.MessagePart);
      v69 = v246 + 1;
      if (__OFADD__(v246, 1))
      {
        break;
      }

      v129 = v104 + v245;
      if (__OFADD__(v104, v245))
      {
        goto LABEL_68;
      }

      v70 = v129 + 1;
      v130 = v223;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_69;
      }

      sub_1A84298BC(v76, type metadata accessor for ImportExport.MessagePart);
      v72 = v222 + v125;
      v74 = v130 - 1;
      if (!v74)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v131 = 0;
    v132 = v198 | v199;
    *&v249 = -1;
    v133 = v200;
    v134 = v209;
    v135 = v204;
    v136 = v197;
    while (v135 != v131)
    {
      v137 = v131 + 1;
      sub_1A842343C(v134 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v131, &v249);
      v131 = v137;
      if (v133)
      {

        sub_1A84E5C8C();
        v138 = v133;
        v139 = sub_1A84E5C7C();
        v140 = sub_1A84E619C();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          *v141 = 138412290;
          v143 = v133;
          v144 = _swift_stdlib_bridgeErrorToNSError();
          *(v141 + 4) = v144;
          *v142 = v144;
          _os_log_impl(&dword_1A823F000, v139, v140, "Failed to create a message with Error: %@", v141, 0xCu);
          sub_1A824B2D4(v142, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v142, -1, -1);
          MEMORY[0x1AC56D3F0](v141, -1, -1);
        }

        (*(v177 + 8))(v189, v178);
        swift_willThrow();
        return (*(*(v220 - 8) + 8))(&v208[v196]);
      }
    }

    v145 = v208;
    v146 = v221;
    *v208 = v217;
    v145[1] = v146;
    v145[14] = v211;
    v145[15] = v136;
    v147 = v180;
    v145[2] = v179;
    v148 = v207;
    v145[4] = v147;
    v145[5] = v148;
    v149 = v187;
    v150 = (v145 + v187[23]);
    v151 = v257;
    v150[2] = v256;
    v150[3] = v151;
    v152 = v262;
    v150[7] = v261;
    v150[8] = v152;
    v153 = v260;
    v150[5] = v259;
    v150[6] = v153;
    v150[4] = v258;
    v154 = v255;
    *v150 = v254;
    v150[1] = v154;
    v155 = (v145 + v149[24]);
    v156 = v270;
    v155[6] = v269;
    v155[7] = v156;
    v155[8] = v271;
    v157 = v266;
    v155[2] = v265;
    v155[3] = v157;
    v158 = v268;
    v155[4] = v267;
    v155[5] = v158;
    v159 = v264;
    *v155 = v263;
    v155[1] = v159;
    v160 = v191;
    v145[10] = v181;
    v145[11] = v160;
    v161 = v193;
    v145[12] = v183;
    v145[13] = v161;
    v162 = v206;
    v145[16] = v203;
    v145[17] = v162;
    v163 = v205;
    v145[18] = v202;
    v145[19] = v163;
    v164 = v210;
    v145[20] = v201;
    v145[21] = v164;
    v165 = v192;
    v145[22] = v182;
    v145[23] = v165;
    v166 = v186;
    *(v145 + 208) = v186;
    v145[27] = v73;
    sub_1A8400E7C(&v254, v248);
    sub_1A8400E7C(&v263, v248);
    (*(*(v220 - 8) + 8))(v145 + v196);
    *&v248[0] = v190;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v167 = (v145 + v149[21]);
    v168 = v194;
    *v167 = v185;
    v167[1] = v168;
    v169 = (v145 + v149[22]);
    v170 = v195;
    *v169 = v184;
    v169[1] = v170;
    v145[3] = v132;
    if (v166 > 3)
    {
      if (v166 > 5)
      {
        if (v166 == 6)
        {
          v171 = 0xE300000000000000;
          v172 = 5456722;
        }

        else
        {
          v171 = 0xEC000000534D5365;
          v172 = 0x74696C6C65746153;
        }
      }

      else if (v166 == 4)
      {
        v172 = 5459283;
        v171 = 0xE300000000000000;
      }

      else
      {
        v171 = 0xE800000000000000;
        v172 = 0x656D695465636146;
      }
    }

    else if (v166 > 1)
    {
      if (v166 == 2)
      {
        v171 = 0xE800000000000000;
      }

      else
      {
        v171 = 0xEC0000006574694CLL;
      }

      v172 = 0x6567617373654D69;
    }

    else if (v166)
    {
      v171 = 0xE300000000000000;
      v172 = 7958113;
    }

    else
    {
      v171 = 0xE700000000000000;
      v172 = 0x6E776F6E6B6E75;
    }

    v173 = v208;
    *(v208 + 24) = v172;
    *(v173 + 25) = v171;
    v174 = v257;
    *(v173 + 6) = *(&v256 + 1);
    *(v173 + 7) = v174;
    v175 = v266;
    *(v173 + 8) = *(&v265 + 1);
    *(v173 + 9) = v175;
    sub_1A842AD50(v173, v188, type metadata accessor for ImportExport.Message);
  }

  return result;
}

uint64_t sub_1A8428194@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ImportExport.Attachment();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1A8429854(v13, v11, type metadata accessor for ImportExport.Attachment);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1A84298BC(v11, type metadata accessor for ImportExport.Attachment);
      }

      if (v15)
      {
        break;
      }

      sub_1A84298BC(v11, type metadata accessor for ImportExport.Attachment);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1A842AD50(v11, v19, type metadata accessor for ImportExport.Attachment);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t ImportExport.Message.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x6567617373654DLL, 0xE700000000000000);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0x6E6575716573202CLL, 0xEE00203A44496563);
  v39 = *(v0 + 16);
  v3 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8530800);
  MEMORY[0x1AC56A990](v1[4], v1[5]);
  MEMORY[0x1AC56A990](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v4 = type metadata accessor for ImportExport.Message();
  v5 = (v0 + v4[23]);
  v52 = v5[6];
  v54 = v5[7];
  v56 = v5[8];
  v44 = v5[2];
  v46 = v5[3];
  v48 = v5[4];
  v50 = v5[5];
  v40 = *v5;
  v42 = v5[1];
  v6 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85304C0);
  v7 = (v0 + v4[24]);
  v53 = v7[6];
  v55 = v7[7];
  v57 = v7[8];
  v45 = v7[2];
  v47 = v7[3];
  v49 = v7[4];
  v51 = v7[5];
  v41 = *v7;
  v43 = v7[1];
  v8 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0x72746E756F63202CLL, 0xEF203A65646F4379);
  MEMORY[0x1AC56A990](v1[22], v1[23]);
  MEMORY[0x1AC56A990](0xD000000000000037, 0x80000001A8530820);
  if (*(v0 + 136))
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x1AC56A990](v9, v10);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530860);
  if (*(v0 + 152))
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1AC56A990](v11, v12);

  MEMORY[0x1AC56A990](0x655265746164202CLL, 0xEC000000203A6461);
  if (*(v0 + 168))
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x1AC56A990](v13, v14);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530880);
  v15 = 0xE700000000000000;
  v16 = 0x6E776F6E6B6E75;
  v17 = *(v0 + 208);
  v18 = 0xE300000000000000;
  v19 = 5456722;
  if (v17 != 6)
  {
    v19 = 0x74696C6C65746153;
    v18 = 0xEC000000534D5365;
  }

  v20 = 5459283;
  v21 = 0xE300000000000000;
  if (v17 != 4)
  {
    v20 = 0x656D695465636146;
    v21 = 0xE800000000000000;
  }

  if (*(v0 + 208) <= 5u)
  {
    v19 = v20;
    v18 = v21;
  }

  v22 = 0xE800000000000000;
  if (v17 != 2)
  {
    v22 = 0xEC0000006574694CLL;
  }

  if (*(v0 + 208))
  {
    v16 = 7958113;
    v15 = 0xE300000000000000;
  }

  if (*(v0 + 208) > 1u)
  {
    v16 = 0x6567617373654D69;
    v15 = v22;
  }

  if (*(v0 + 208) <= 3u)
  {
    v23 = v16;
  }

  else
  {
    v23 = v19;
  }

  if (*(v0 + 208) <= 3u)
  {
    v24 = v15;
  }

  else
  {
    v24 = v18;
  }

  MEMORY[0x1AC56A990](v23, v24);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308A0);
  v25 = (v0 + v4[21]);
  if (v25[1])
  {
    v2 = *v25;
    v26 = v25[1];
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  MEMORY[0x1AC56A990](v2, v26);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308C0);
  *&v41 = *(v0 + 24);
  ImportExport.MessageState.description.getter();
  MEMORY[0x1AC56A990](v27, v28, v29, v30, v31, v32, v33, v34, v41, *(&v41 + 1), v43, *(&v43 + 1), v45, *(&v45 + 1), v47, *(&v47 + 1), v49, *(&v49 + 1));

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308E0);
  v35 = *(v0 + 216);
  v36 = type metadata accessor for ImportExport.MessagePart();
  v37 = MEMORY[0x1AC56AB00](v35, v36);
  MEMORY[0x1AC56A990](v37);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t static ImportExport.Message.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t ImportExport.Message.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A84E5E5C();
}

uint64_t ImportExport.Message.hashValue.getter()
{
  sub_1A84E684C();
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A8428910()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D64696C61766E69;
  }
}

uint64_t sub_1A842897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A842B8A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84289A4(uint64_t a1)
{
  v2 = sub_1A842ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84289E0(uint64_t a1)
{
  v2 = sub_1A842ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428A1C(uint64_t a1)
{
  v2 = sub_1A842AEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428A58(uint64_t a1)
{
  v2 = sub_1A842AEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428A94(uint64_t a1)
{
  v2 = sub_1A842AE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428AD0(uint64_t a1)
{
  v2 = sub_1A842AE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428B0C(uint64_t a1)
{
  v2 = sub_1A842AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428B48(uint64_t a1)
{
  v2 = sub_1A842AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E77A0, &qword_1A8503A90);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v29 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E77A8, &qword_1A8503A98);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E77B0, &qword_1A8503AA0);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v39 = sub_1A83EA2FC(&qword_1EB2E77B8, &qword_1A8503AA8);
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v29 - v16;
  v18 = v1[1];
  v37 = *v1;
  v38 = v18;
  v19 = *(v1 + 16);
  v20 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A842ADB8();
  sub_1A84E68AC();
  v21 = (v14 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v41 = 1;
      sub_1A842AE60();
      v22 = v39;
      sub_1A84E669C();
      v23 = v33;
      sub_1A84E66CC();
      (*(v32 + 8))(v9, v23);
    }

    else
    {
      v42 = 2;
      sub_1A842AE0C();
      v27 = v34;
      v22 = v39;
      sub_1A84E669C();
      v28 = v36;
      sub_1A84E66CC();
      (*(v35 + 8))(v27, v28);
    }

    return (*v21)(v17, v22);
  }

  else
  {
    v40 = 0;
    sub_1A842AEB4();
    v24 = v39;
    sub_1A84E669C();
    v25 = v31;
    sub_1A84E66CC();
    (*(v30 + 8))(v13, v25);
    return (*v21)(v17, v24);
  }
}

uint64_t ImportExport.MessageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_1A83EA2FC(&qword_1EB2E77E0, &qword_1A8503AB0);
  v49 = *(v52 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - v4;
  v48 = sub_1A83EA2FC(&qword_1EB2E77E8, &qword_1A8503AB8);
  v50 = *(v48 - 8);
  v5 = *(v50 + 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v46 - v6;
  v8 = sub_1A83EA2FC(&qword_1EB2E77F0, &qword_1A8503AC0);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = sub_1A83EA2FC(&qword_1EB2E77F8, &unk_1A8503AC8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v55 = a1;
  sub_1A82471E0(a1, v17);
  sub_1A842ADB8();
  v19 = v54;
  sub_1A84E689C();
  if (!v19)
  {
    v46 = 0;
    v20 = v51;
    v21 = v52;
    v54 = v13;
    v22 = v53;
    v23 = sub_1A84E668C();
    v24 = (2 * *(v23 + 16)) | 1;
    v56 = v23;
    v57 = v23 + 32;
    v58 = 0;
    v59 = v24;
    v25 = sub_1A8400920();
    if (v25 == 3 || v58 != v59 >> 1)
    {
      v28 = sub_1A84E64BC();
      swift_allocError();
      v29 = v16;
      v31 = v30;
      v32 = *(sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20) + 48);
      *v31 = &type metadata for ImportExport.MessageError;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v54 + 8))(v29, v12);
    }

    else
    {
      v60 = v25;
      if (v25)
      {
        if (v25 == 1)
        {
          v61 = 1;
          sub_1A842AE60();
          v26 = v46;
          sub_1A84E65BC();
          if (!v26)
          {
            v27 = v48;
            v40 = sub_1A84E660C();
            v42 = v41;
            (*(v50 + 1))(v7, v27);
            v43 = v54;
LABEL_16:
            (*(v43 + 8))(v16, v12);
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          v61 = 2;
          sub_1A842AE0C();
          v37 = v46;
          sub_1A84E65BC();
          if (!v37)
          {
            v50 = v16;
            v38 = v21;
            v39 = sub_1A84E660C();
            v43 = v54;
            v44 = v39;
            v42 = v45;
            (*(v49 + 8))(v20, v38);
            v16 = v50;
            v40 = v44;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v61 = 0;
        sub_1A842AEB4();
        v34 = v11;
        v35 = v46;
        sub_1A84E65BC();
        if (!v35)
        {
          v40 = sub_1A84E660C();
          v42 = v36;
          (*(v47 + 8))(v34, v8);
          (*(v54 + 8))(v16, v12);
          swift_unknownObjectRelease();
LABEL_17:
          *v22 = v40;
          *(v22 + 8) = v42;
          *(v22 + 16) = v60;
          return sub_1A8244788(v55);
        }
      }

      (*(v54 + 8))(v16, v12);
    }

    swift_unknownObjectRelease();
  }

  return sub_1A8244788(v55);
}

uint64_t sub_1A8429618(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC() & 1;
  }
}

uint64_t type metadata accessor for ImportExport.Message()
{
  result = qword_1EB2E7818;
  if (!qword_1EB2E7818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A84296BC()
{
  result = qword_1EB2E7758;
  if (!qword_1EB2E7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7758);
  }

  return result;
}

unint64_t sub_1A8429710()
{
  result = qword_1EB2E7760;
  if (!qword_1EB2E7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7760);
  }

  return result;
}

unint64_t sub_1A8429764()
{
  result = qword_1EB2E7788;
  if (!qword_1EB2E7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7788);
  }

  return result;
}

uint64_t sub_1A84297B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7768, &qword_1A8503A80);
    sub_1A842AFFC(a2, type metadata accessor for ImportExport.MessagePart);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8429854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84298BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A842991C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1A84E675C() & 1;
  }
}

uint64_t sub_1A8429994(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536567617373656DLL && a2 == 0xEC00000065746174 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8530900 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563655265746164 && a2 == 0xEC00000064657669 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696C654465746164 && a2 == 0xED00006465726576 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461655265746164 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x506567617373656DLL && a2 == 0xEC00000073747261 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530920 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000068736148 || (sub_1A84E67AC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x617373654D736372 && a2 == 0xEC00000044496567 || (sub_1A84E67AC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85306A0 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1A842A03C(uint64_t a1)
{
  v130[1] = *MEMORY[0x1E69E9840];
  v109 = sub_1A84E5C9C();
  v2 = *(v109 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v109);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v94 - v7;
  v9 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v125 = sub_1A84E558C();
  v16 = *(v125 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v114 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = &v94 - v21;
  v129 = type metadata accessor for ImportExport.Attachment();
  v22 = *(v129 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v129);
  v116 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v123 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v122 = &v94 - v28;
  v100 = type metadata accessor for ImportExport.MessagePart();
  v99 = *(v100 - 8);
  v29 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v121 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ImportExport.Message();
  v32 = *(*(v31 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v31 - 8);
  v105 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(a1 + 16);
  if (v104)
  {
    v37 = 0;
    v103 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v119 = (v22 + 48);
    v126 = (v16 + 48);
    v113 = (v16 + 32);
    v117 = (v16 + 8);
    v108 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v107 = "invalidParticipant";
    v106 = (v2 + 8);
    v102 = *(v34 + 72);
    *&v35 = 136315138;
    v96 = v35;
    v120 = v15;
    v38 = v118;
    v39 = v105;
    v98 = v6;
    v97 = v8;
    v112 = v13;
    v115 = v22;
    while (1)
    {
      v111 = v37;
      sub_1A8429854(v103 + v102 * v37, v39, type metadata accessor for ImportExport.Message);
      v40 = *(v39 + 216);
      v41 = *(v40 + 16);
      if (v41)
      {
        v128 = *(v100 + 44);
        v42 = v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        v43 = *(v99 + 72);
        v127 = MEMORY[0x1E69E7CC0];
        do
        {
          v44 = v121;
          sub_1A8429854(v42, v121, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(v44 + v128, v38, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84298BC(v44, type metadata accessor for ImportExport.MessagePart);
          if ((*v119)(v38, 1, v129) == 1)
          {
            sub_1A824B2D4(v38, &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v45 = v122;
            sub_1A842AD50(v38, v122, type metadata accessor for ImportExport.Attachment);
            sub_1A8429854(v45, v123, type metadata accessor for ImportExport.Attachment);
            v46 = v127;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_1A83EF118(0, v46[2] + 1, 1, v46);
            }

            v47 = v46;
            v48 = v46[2];
            v127 = v47;
            v49 = v47[3];
            if (v48 >= v49 >> 1)
            {
              v127 = sub_1A83EF118(v49 > 1, v48 + 1, 1, v127);
            }

            sub_1A84298BC(v122, type metadata accessor for ImportExport.Attachment);
            v50 = v127;
            v127[2] = v48 + 1;
            sub_1A842AD50(v123, v50 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v48, type metadata accessor for ImportExport.Attachment);
          }

          v42 += v43;
          --v41;
        }

        while (v41);
      }

      else
      {
        v127 = MEMORY[0x1E69E7CC0];
      }

      v51 = v127[2];
      if (v51)
      {
        break;
      }

LABEL_3:

      v37 = v111 + 1;
      v39 = v105;
      result = sub_1A84298BC(v105, type metadata accessor for ImportExport.Message);
      if (v37 == v104)
      {
        goto LABEL_35;
      }
    }

    v52 = v116;
    v53 = v127 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v124 = *(v115 + 72);
    v54 = v125;
    while (1)
    {
      v128 = v51;
      sub_1A8429854(v53, v52, type metadata accessor for ImportExport.Attachment);
      v55 = *(v129 + 40);
      sub_1A8243D74(v52 + v55, v15, &qword_1EB2E7068, &unk_1A8501EB0);
      v56 = *v126;
      if ((*v126)(v15, 1, v54) == 1)
      {
        break;
      }

      v57 = v114;
      (*v113)(v114, v15, v54);
      v58 = objc_opt_self();
      v59 = [v58 defaultManager];
      v60 = v54;
      sub_1A84E555C();
      v61 = sub_1A84E5D8C();

      v62 = [v59 fileExistsAtPath_];

      v63 = *v117;
      v64 = v57;
      v52 = v116;
      v65 = v60;
      v38 = v118;
      (*v117)(v64, v65);
      if ((v62 & 1) == 0 || *(v52 + *(v129 + 52)) != 1)
      {
        goto LABEL_32;
      }

      v66 = v112;
      sub_1A8243D74(v52 + v55, v112, &qword_1EB2E7068, &unk_1A8501EB0);
      v54 = v125;
      if (v56(v66, 1, v125) != 1)
      {
        v67 = v54;
        v68 = sub_1A84E555C();
        v70 = v69;
        v63(v66, v67);
        v71 = [v58 defaultManager];
        v110 = v68;
        v72 = sub_1A84E5D8C();
        v130[0] = 0;
        v73 = [v71 removeItemAtPath:v72 error:v130];

        if (v73)
        {
          v74 = v130[0];
          v75 = v97;
          sub_1A84E5C8C();

          v76 = sub_1A84E5C7C();
          v77 = sub_1A84E617C();

          v78 = os_log_type_enabled(v76, v77);
          v38 = v118;
          if (v78)
          {
            v79 = swift_slowAlloc();
            v95 = v76;
            v80 = v79;
            v81 = swift_slowAlloc();
            v130[0] = v81;
            *v80 = v96;
            v82 = sub_1A82446BC(v110, v70, v130);

            *(v80 + 4) = v82;
            v83 = v95;
            _os_log_impl(&dword_1A823F000, v95, v77, "deleted downloaded attachment at path: %s", v80, 0xCu);
            sub_1A8244788(v81);
            MEMORY[0x1AC56D3F0](v81, -1, -1);
            MEMORY[0x1AC56D3F0](v80, -1, -1);
            goto LABEL_28;
          }

LABEL_30:
        }

        else
        {
          v84 = v130[0];
          v85 = sub_1A84E548C();

          swift_willThrow();
          v101 = 0;
          v75 = v98;
          sub_1A84E5C8C();

          v76 = sub_1A84E5C7C();
          v86 = sub_1A84E619C();

          v87 = os_log_type_enabled(v76, v86);
          v38 = v118;
          if (!v87)
          {

            goto LABEL_30;
          }

          v88 = swift_slowAlloc();
          v94 = v76;
          v89 = v88;
          v90 = swift_slowAlloc();
          v95 = v85;
          v91 = v90;
          v130[0] = v90;
          *v89 = v96;
          v92 = sub_1A82446BC(v110, v70, v130);

          *(v89 + 4) = v92;
          v83 = v94;
          _os_log_impl(&dword_1A823F000, v94, v86, "failed to deleted downloaded attachment at path: %s", v89, 0xCu);
          sub_1A8244788(v91);
          MEMORY[0x1AC56D3F0](v91, -1, -1);
          MEMORY[0x1AC56D3F0](v89, -1, -1);

LABEL_28:
        }

        (*v106)(v75, v109);
LABEL_32:
        sub_1A84298BC(v52, type metadata accessor for ImportExport.Attachment);
        v54 = v125;
        goto LABEL_33;
      }

      sub_1A84298BC(v52, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v66, &qword_1EB2E7068, &unk_1A8501EB0);
      v38 = v118;
LABEL_33:
      v53 += v124;
      v51 = v128 - 1;
      v15 = v120;
      if (v128 == 1)
      {
        goto LABEL_3;
      }
    }

    sub_1A824B2D4(v15, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_32;
  }

LABEL_35:
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A842AD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A842ADB8()
{
  result = qword_1EB2E77C0;
  if (!qword_1EB2E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77C0);
  }

  return result;
}

unint64_t sub_1A842AE0C()
{
  result = qword_1EB2E77C8;
  if (!qword_1EB2E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77C8);
  }

  return result;
}

unint64_t sub_1A842AE60()
{
  result = qword_1EB2E77D0;
  if (!qword_1EB2E77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77D0);
  }

  return result;
}

unint64_t sub_1A842AEB4()
{
  result = qword_1EB2E77D8;
  if (!qword_1EB2E77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77D8);
  }

  return result;
}

uint64_t sub_1A842AF08(void *a1)
{
  a1[1] = sub_1A842AFFC(&qword_1EB2E7198, type metadata accessor for ImportExport.Message);
  a1[2] = sub_1A842AFFC(&qword_1EB2E7800, type metadata accessor for ImportExport.Message);
  result = sub_1A842AFFC(&qword_1EB2E7808, type metadata accessor for ImportExport.Message);
  a1[3] = result;
  return result;
}

uint64_t sub_1A842AFFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A842B06C()
{
  sub_1A8412B38();
  if (v0 <= 0x3F)
  {
    sub_1A842B174();
    if (v1 <= 0x3F)
    {
      sub_1A8412BDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A842B174()
{
  if (!qword_1EB2E7828)
  {
    type metadata accessor for ImportExport.MessagePart();
    v0 = sub_1A84E604C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7828);
    }
  }
}

uint64_t _s7MessageV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7MessageV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A842B37C()
{
  result = qword_1EB2E7830;
  if (!qword_1EB2E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7830);
  }

  return result;
}

unint64_t sub_1A842B3D4()
{
  result = qword_1EB2E7838;
  if (!qword_1EB2E7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7838);
  }

  return result;
}

unint64_t sub_1A842B42C()
{
  result = qword_1EB2E7840;
  if (!qword_1EB2E7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7840);
  }

  return result;
}

unint64_t sub_1A842B484()
{
  result = qword_1EB2E7848;
  if (!qword_1EB2E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7848);
  }

  return result;
}

unint64_t sub_1A842B4DC()
{
  result = qword_1EB2E7850;
  if (!qword_1EB2E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7850);
  }

  return result;
}

unint64_t sub_1A842B534()
{
  result = qword_1EB2E7858;
  if (!qword_1EB2E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7858);
  }

  return result;
}

unint64_t sub_1A842B58C()
{
  result = qword_1EB2E7860;
  if (!qword_1EB2E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7860);
  }

  return result;
}

unint64_t sub_1A842B5E4()
{
  result = qword_1EB2E7868;
  if (!qword_1EB2E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7868);
  }

  return result;
}

unint64_t sub_1A842B63C()
{
  result = qword_1EB2E7870;
  if (!qword_1EB2E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7870);
  }

  return result;
}

unint64_t sub_1A842B694()
{
  result = qword_1EB2E7878;
  if (!qword_1EB2E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7878);
  }

  return result;
}

unint64_t sub_1A842B6EC()
{
  result = qword_1EB2E7880;
  if (!qword_1EB2E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7880);
  }

  return result;
}

unint64_t sub_1A842B744()
{
  result = qword_1EB2E7888;
  if (!qword_1EB2E7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7888);
  }

  return result;
}

unint64_t sub_1A842B79C()
{
  result = qword_1EB2E7890;
  if (!qword_1EB2E7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7890);
  }

  return result;
}

unint64_t sub_1A842B7F4()
{
  result = qword_1EB2E7898;
  if (!qword_1EB2E7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7898);
  }

  return result;
}

unint64_t sub_1A842B84C()
{
  result = qword_1EB2E78A0;
  if (!qword_1EB2E78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78A0);
  }

  return result;
}

uint64_t sub_1A842B8A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D64696C61766E69 && a2 == 0xEE00656761737365;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530940 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530960 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

unint64_t sub_1A842B9CC()
{
  result = qword_1EB2E78A8;
  if (!qword_1EB2E78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78A8);
  }

  return result;
}

uint64_t sub_1A842BA20()
{
  sub_1A841263C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s27AttachmentDownloadingResultCMa()
{
  result = qword_1EB2E78B0;
  if (!qword_1EB2E78B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A842BAFC()
{
  result = type metadata accessor for ImportExport.Attachment();
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

uint64_t sub_1A842BBA4(uint64_t a1, double a2)
{
  *(v3 + 176) = v2;
  *(v3 + 168) = a2;
  *(v3 + 160) = a1;
  v4 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v5 = *(*(type metadata accessor for ImportExport.Attachment() - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v6 = type metadata accessor for ImportExport.AttachmentDownloadError();
  *(v3 + 248) = v6;
  v7 = *(v6 - 8);
  *(v3 + 256) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v9 = sub_1A83EA2FC(&qword_1EB2E78D8, &qword_1A85043F8);
  *(v3 + 280) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v11 = sub_1A84E5C0C();
  *(v3 + 312) = v11;
  v12 = *(v11 - 8);
  *(v3 + 320) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  v14 = sub_1A84E5C9C();
  *(v3 + 336) = v14;
  v15 = *(v14 - 8);
  *(v3 + 344) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  sub_1A84E609C();
  *(v3 + 392) = sub_1A84E608C();
  v18 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A842BE94, v18, v17);
}

void sub_1A842BE94()
{
  v237 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 176);
  strcpy(v236, "ImportExport.");
  HIWORD(v236[1]) = -4864;
  sub_1A842EDF4();
  v3 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v3);

  sub_1A84E5C8C();
  v4 = v2;
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E617C();
  if (!os_log_type_enabled(v5, v6))
  {
    v22 = *(v0 + 384);
    v23 = *(v0 + 336);
    v24 = *(v0 + 344);

    v225 = *(v24 + 8);
    v225(v22, v23);
    goto LABEL_9;
  }

  v7 = *(v0 + 176);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v236[0] = v9;
  *v8 = 136315650;
  v10 = [v7 guid];
  v11 = *(v0 + 176);
  if (!v10)
  {

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = v10;
  v13 = sub_1A84E5DBC();
  v15 = v14;

  v16 = sub_1A82446BC(v13, v15, v236);

  *(v8 + 4) = v16;
  *(v8 + 12) = 2080;
  v17 = [v11 messageGUID];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1A84E5DBC();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v226 = v9;
  v25 = *(v0 + 176);
  v26 = sub_1A82446BC(v19, v21, v236);

  *(v8 + 14) = v26;
  *(v8 + 22) = 2080;
  v27 = [v25 localPath];

  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = *(v0 + 384);
  v30 = *(v0 + 336);
  v29 = *(v0 + 344);
  v31 = sub_1A84E5DBC();
  v33 = v32;

  v34 = sub_1A82446BC(v31, v33, v236);

  *(v8 + 24) = v34;
  _os_log_impl(&dword_1A823F000, v5, v6, "Starting downloading attachment %s for message %s to path %s", v8, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v226, -1, -1);
  MEMORY[0x1AC56D3F0](v8, -1, -1);

  v225 = *(v29 + 8);
  v225(v28, v30);
LABEL_9:
  v35 = *(v0 + 376);
  v36 = *(v0 + 328);
  v37 = *(v0 + 176);
  [v37 _setSandboxTokenForExportDownload];
  [v37 _setTransferState_];
  strcpy(v236, "ImportExport.");
  HIWORD(v236[1]) = -4864;
  v38 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v38);

  sub_1A84E5C8C();
  sub_1A84E5BCC();
  objc_allocWithZone(_s21DownloadEventListenerCMa());
  v39 = sub_1A842E52C(v37);
  v40 = [objc_opt_self() sharedInstance];
  if (!v40)
  {
    sub_1A84E653C();
    return;
  }

  v41 = v40;
  v42 = *(v0 + 328);
  v43 = *(v0 + 296);
  v44 = *(v0 + 304);
  v45 = *(v0 + 280);
  v47 = *(v0 + 248);
  v46 = *(v0 + 256);
  v48 = *(v0 + 176);
  v49 = *(v0 + 168);
  [v40 registerNewFileTransfer_];
  v50 = [v48 guid];
  [v41 acceptTransfer_];

  sub_1A842D4EC(v44 + *(v45 + 48), v49);
  *v44 = v51;
  sub_1A84E5BEC();
  sub_1A842EE40(v44, v43);

  v215 = v45;
  v52 = *(v45 + 48);
  if ((*(v46 + 48))(v43 + v52, 1, v47) == 1)
  {
    v53 = *(v0 + 176);
    sub_1A824B2D4(v43 + v52, &qword_1EB2E7348, &qword_1A8504400);
    v54 = [objc_opt_self() defaultManager];
    v55 = &selRef_isGroupTypingMessage;
    v56 = [v53 localPath];
    if (v56)
    {
      v57 = v56;
      v58 = [v54 fileExistsAtPath_];

      if (!v58)
      {
        v124 = *(v0 + 392);
        v125 = *(v0 + 352);
        v126 = *(v0 + 200);
        v127 = *(v0 + 176);
        v128 = *(v0 + 160);

        strcpy(v236, "ImportExport.");
        HIWORD(v236[1]) = -4864;
        v129 = sub_1A84E69AC();
        MEMORY[0x1AC56A990](v129);

        sub_1A84E5C8C();
        sub_1A841269C(v128, v126, type metadata accessor for ImportExport.Attachment);
        v130 = v127;
        v131 = sub_1A84E5C7C();
        v132 = sub_1A84E619C();
        if (os_log_type_enabled(v131, v132))
        {
          v219 = v41;
          v223 = v39;
          v133 = *(v0 + 200);
          v134 = *(v0 + 176);
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v236[0] = v137;
          *v135 = 136315906;
          v138 = *v133;
          v139 = v133[1];

          sub_1A841263C(v133, type metadata accessor for ImportExport.Attachment);
          v140 = sub_1A82446BC(v138, v139, v236);

          *(v135 + 4) = v140;
          *(v135 + 12) = 2080;
          v141 = [v134 localPath];

          if (!v141)
          {
LABEL_44:
            __break(1u);
            return;
          }

          v142 = sub_1A84E5DBC();
          v144 = v143;

          v145 = sub_1A82446BC(v142, v144, v236);

          *(v135 + 14) = v145;
          *(v135 + 22) = 2112;
          if (qword_1EB2E5A28 != -1)
          {
            swift_once();
          }

          v146 = *(v0 + 344);
          v234 = *(v0 + 352);
          v147 = *(v0 + 328);
          v230 = *(v0 + 336);
          v148 = sub_1A824431C(*(v0 + 248), qword_1EB2E8F78);
          sub_1A842EEB0();
          swift_allocError();
          sub_1A841269C(v148, v149, type metadata accessor for ImportExport.AttachmentDownloadError);
          v150 = _swift_stdlib_bridgeErrorToNSError();
          *(v135 + 24) = v150;
          *v136 = v150;
          *(v135 + 32) = 2080;
          swift_beginAccess();
          v151 = sub_1A84E5BDC();
          v153 = sub_1A82446BC(v151, v152, v236);

          *(v135 + 34) = v153;
          _os_log_impl(&dword_1A823F000, v131, v132, "Failed downloading attachment: %s: to path: %s with error: %@ in %s", v135, 0x2Au);
          sub_1A824B2D4(v136, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v136, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1AC56D3F0](v137, -1, -1);
          MEMORY[0x1AC56D3F0](v135, -1, -1);

          v225(v234, v230);
          v41 = v219;
          v39 = v223;
        }

        else
        {
          v174 = *(v0 + 344);
          v173 = *(v0 + 352);
          v175 = *(v0 + 336);
          v176 = *(v0 + 200);
          v177 = *(v0 + 176);

          sub_1A841263C(v176, type metadata accessor for ImportExport.Attachment);
          v225(v173, v175);
        }

        if (qword_1EB2E5A28 != -1)
        {
          swift_once();
        }

        v121 = (v0 + 192);
        v178 = *(v0 + 192);
        v179 = *(v0 + 160);
        v180 = sub_1A824431C(*(v0 + 248), qword_1EB2E8F78);
        ImportExport.Attachment.update(downloadError:)(v180, v178);
        v181 = *(v0 + 328);
        v182 = *(v0 + 288);
        sub_1A842EE40(*(v0 + 304), v182);
        v235 = *v182;
        v231 = v182 + *(v215 + 48);
        swift_beginAccess();
        sub_1A84E5BFC();
        v157 = v183;

        goto LABEL_35;
      }

      v59 = *(v0 + 360);
      v60 = *(v0 + 224);
      v61 = *(v0 + 176);
      v62 = *(v0 + 160);
      strcpy(v236, "ImportExport.");
      HIWORD(v236[1]) = -4864;
      v63 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v63);

      sub_1A84E5C8C();
      sub_1A841269C(v62, v60, type metadata accessor for ImportExport.Attachment);
      v64 = v61;
      v65 = sub_1A84E5C7C();
      v66 = sub_1A84E617C();
      if (os_log_type_enabled(v65, v66))
      {
        v217 = v41;
        v221 = v39;
        v67 = *(v0 + 224);
        v68 = *(v0 + 176);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v236[0] = v70;
        *v69 = 136315650;
        v71 = *v67;
        v72 = v67[1];

        sub_1A841263C(v67, type metadata accessor for ImportExport.Attachment);
        v73 = sub_1A82446BC(v71, v72, v236);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2080;
        v74 = [v68 &selRef_nonBaseCharacterSet];

        if (!v74)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v232 = *(v0 + 360);
        v212 = *(v0 + 344);
        v228 = *(v0 + 336);
        v75 = *(v0 + 328);
        v76 = sub_1A84E5DBC();
        v78 = v77;

        v79 = sub_1A82446BC(v76, v78, v236);

        *(v69 + 14) = v79;
        *(v69 + 22) = 2080;
        swift_beginAccess();
        v80 = sub_1A84E5BDC();
        v82 = sub_1A82446BC(v80, v81, v236);

        *(v69 + 24) = v82;
        _os_log_impl(&dword_1A823F000, v65, v66, "Finished downloading attachment: %s: to path: %s in %s", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v70, -1, -1);
        MEMORY[0x1AC56D3F0](v69, -1, -1);

        v225(v232, v228);
        v41 = v217;
        v39 = v221;
        v55 = &selRef_isGroupTypingMessage;
      }

      else
      {
        v160 = *(v0 + 360);
        v161 = *(v0 + 336);
        v162 = *(v0 + 344);
        v163 = *(v0 + 224);
        v164 = *(v0 + 176);

        sub_1A841263C(v163, type metadata accessor for ImportExport.Attachment);
        v225(v160, v161);
      }

      v165 = [*(v0 + 176) v55[270]];
      if (v165)
      {
        v166 = v165;
        v167 = *(v0 + 392);
        v168 = *(v0 + 216);
        v169 = *(v0 + 184);
        v170 = *(v0 + 160);

        sub_1A84E5DBC();

        sub_1A84E54FC();

        v171 = sub_1A84E558C();
        (*(*(v171 - 8) + 56))(v169, 0, 1, v171);
        v236[0] = 0;
        ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v169, 0, 1, v236, v168);
        v172 = *(v0 + 328);
        v121 = (v0 + 208);
        v184 = *(v0 + 208);
        v185 = *(v0 + 304);
        v186 = *(v0 + 288);
        v187 = *(v0 + 216);
        sub_1A824B2D4(*(v0 + 184), &qword_1EB2E7068, &unk_1A8501EB0);
        sub_1A841269C(v187, v184, type metadata accessor for ImportExport.Attachment);
        sub_1A842EE40(v185, v186);
        v235 = *v186;
        v231 = v186 + *(v215 + 48);
        swift_beginAccess();
        sub_1A84E5BFC();
        v157 = v188;

        v159 = v187;
        v158 = type metadata accessor for ImportExport.Attachment;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v218 = v41;
  v222 = v39;
  v83 = *(v0 + 392);
  v84 = *(v0 + 368);
  v86 = *(v0 + 264);
  v85 = *(v0 + 272);
  v87 = *(v0 + 240);
  v88 = *(v0 + 176);
  v89 = *(v0 + 160);

  sub_1A842EF08(v43 + v52, v85, type metadata accessor for ImportExport.AttachmentDownloadError);
  strcpy(v236, "ImportExport.");
  HIWORD(v236[1]) = -4864;
  v90 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v90);

  sub_1A84E5C8C();
  sub_1A841269C(v89, v87, type metadata accessor for ImportExport.Attachment);
  sub_1A841269C(v85, v86, type metadata accessor for ImportExport.AttachmentDownloadError);
  v91 = v88;
  v92 = sub_1A84E5C7C();
  v93 = sub_1A84E619C();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = *(v0 + 240);
    v95 = *(v0 + 176);
    v96 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    v236[0] = v233;
    *v96 = 136315906;
    v98 = *v94;
    v97 = v94[1];

    sub_1A841263C(v94, type metadata accessor for ImportExport.Attachment);
    v99 = sub_1A82446BC(v98, v97, v236);

    *(v96 + 4) = v99;
    *(v96 + 12) = 2080;
    v100 = [v95 localPath];

    if (!v100)
    {
LABEL_41:
      sub_1A841263C(*(v0 + 264), type metadata accessor for ImportExport.AttachmentDownloadError);
      __break(1u);
      goto LABEL_42;
    }

    v208 = *(v0 + 344);
    v210 = *(v0 + 336);
    v213 = *(v0 + 368);
    v101 = *(v0 + 328);
    v102 = *(v0 + 264);
    v103 = *(v0 + 248);
    v104 = sub_1A84E5DBC();
    v106 = v105;

    v107 = sub_1A82446BC(v104, v106, v236);

    *(v96 + 14) = v107;
    *(v96 + 22) = 2112;
    sub_1A842EEB0();
    swift_allocError();
    sub_1A841269C(v102, v108, type metadata accessor for ImportExport.AttachmentDownloadError);
    v109 = _swift_stdlib_bridgeErrorToNSError();
    sub_1A841263C(v102, type metadata accessor for ImportExport.AttachmentDownloadError);
    *(v96 + 24) = v109;
    *v229 = v109;
    *(v96 + 32) = 2080;
    swift_beginAccess();
    v110 = sub_1A84E5BDC();
    v112 = sub_1A82446BC(v110, v111, v236);

    *(v96 + 34) = v112;
    _os_log_impl(&dword_1A823F000, v92, v93, "Failed downloading attachment: %s: to path: %s with error: %@ in %s", v96, 0x2Au);
    sub_1A824B2D4(v229, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v229, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v233, -1, -1);
    MEMORY[0x1AC56D3F0](v96, -1, -1);

    v113 = v210;
    v114 = v213;
  }

  else
  {
    v115 = *(v0 + 368);
    v116 = *(v0 + 336);
    v117 = *(v0 + 344);
    v118 = *(v0 + 264);
    v119 = *(v0 + 240);
    v120 = *(v0 + 176);

    sub_1A841263C(v118, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A841263C(v119, type metadata accessor for ImportExport.Attachment);
    v114 = v115;
    v113 = v116;
  }

  v225(v114, v113);
  v121 = (v0 + 232);
  v122 = *(v0 + 160);
  ImportExport.Attachment.update(downloadError:)(*(v0 + 272), *(v0 + 232));
  v123 = *(v0 + 328);
  v154 = *(v0 + 288);
  v155 = *(v0 + 272);
  sub_1A842EE40(*(v0 + 304), v154);
  v235 = *v154;
  v231 = v154 + *(v215 + 48);
  swift_beginAccess();
  sub_1A84E5BFC();
  v157 = v156;

  v158 = type metadata accessor for ImportExport.AttachmentDownloadError;
  v159 = v155;
LABEL_34:
  sub_1A841263C(v159, v158);
LABEL_35:
  v189 = *v121;
  v190 = *(v0 + 376);
  v191 = *(v0 + 384);
  v192 = *(v0 + 368);
  v201 = *(v0 + 360);
  v202 = *(v0 + 352);
  v193 = *(v0 + 320);
  v194 = *(v0 + 328);
  v195 = *(v0 + 312);
  v203 = *(v0 + 296);
  v204 = *(v0 + 288);
  v205 = *(v0 + 272);
  v206 = *(v0 + 264);
  v207 = *(v0 + 240);
  v209 = *(v0 + 232);
  v211 = *(v0 + 224);
  v214 = *(v0 + 216);
  v216 = *(v0 + 208);
  v220 = *(v0 + 200);
  v224 = *(v0 + 192);
  v227 = *(v0 + 184);
  sub_1A824B2D4(*(v0 + 304), &qword_1EB2E78D8, &qword_1A85043F8);
  v196 = _s27AttachmentDownloadingResultCMa();
  v197 = *(v196 + 48);
  v198 = *(v196 + 52);
  v199 = swift_allocObject();
  sub_1A842EF08(v189, v199 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
  *(v199 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = v157;
  *(v199 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = v235;
  sub_1A824B2D4(v231, &qword_1EB2E7348, &qword_1A8504400);
  (*(v193 + 8))(v194, v195);

  v200 = *(v0 + 8);

  v200(v199);
}

void sub_1A842D4EC(uint64_t a1, double a2)
{
  v3 = v2;
  v143 = a1;
  v5 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v141 = *(v5 - 8);
  v142 = v5;
  v6 = *(v141 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v136 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v132 = v129 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v137 = v129 - v11;
  v12 = sub_1A84E558C();
  v139 = *(v12 - 8);
  v140 = v12;
  v13 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v131 = v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v135 = v129 - v19;
  v20 = sub_1A84E5C9C();
  v144 = *(v20 - 8);
  v145 = v20;
  v21 = *(v144 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v134 = v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v130 = v129 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v133 = v129 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v146 = v129 - v28;
  v29 = sub_1A84E56DC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E562C();
  v35 = v34 + a2;
  v36 = OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting;
  v37 = (v30 + 8);
  while (v3[v36] == 1)
  {
    v38 = [objc_opt_self() mainRunLoop];
    sub_1A84E567C();
    v39 = sub_1A84E565C();
    (*v37)(v33, v29);
    [v38 runUntilDate_];

    sub_1A84E562C();
    if (v35 < v40)
    {
      strcpy(v147, "ImportExport.");
      HIWORD(v147[1]) = -4864;
      sub_1A842EDF4();
      v41 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v41);

      v42 = v134;
      sub_1A84E5C8C();
      v43 = sub_1A84E5C7C();
      v44 = sub_1A84E617C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1A823F000, v43, v44, "download timedout", v45, 2u);
        MEMORY[0x1AC56D3F0](v45, -1, -1);
      }

      (*(v144 + 8))(v42, v145);
      v46 = qword_1EB2E5A30;
      *&v3[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer];
      v47 = v46 == -1;
      v49 = v142;
      v48 = v143;
      if (!v47)
      {
        swift_once();
      }

      v50 = sub_1A824431C(v49, qword_1EB2E8F90);
      sub_1A841269C(v50, v48, type metadata accessor for ImportExport.AttachmentDownloadError);
      (*(v141 + 56))(v48, 0, 1, v49);
      return;
    }
  }

  strcpy(v147, "ImportExport.");
  HIWORD(v147[1]) = -4864;
  v51 = sub_1A842EDF4();
  v52 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v52);

  v53 = v146;
  sub_1A84E5C8C();
  v54 = v3;
  v55 = sub_1A84E5C7C();
  v56 = sub_1A84E617C();
  v57 = &OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate;
  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v147[0] = v59;
    *v58 = 136315138;
    v60 = [*&v54[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

    if (!v60)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v61 = sub_1A84E5DBC();
    v63 = v62;

    v64 = sub_1A82446BC(v61, v63, v147);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_1A823F000, v55, v56, "finished waiting for IMFileTransfer: %s", v58, 0xCu);
    sub_1A8244788(v59);
    MEMORY[0x1AC56D3F0](v59, -1, -1);
    MEMORY[0x1AC56D3F0](v58, -1, -1);

    v65 = *(v144 + 8);
    v65(v146, v145);
    v57 = &OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate;
  }

  else
  {

    v65 = *(v144 + 8);
    v65(v53, v145);
  }

  v129[1] = v51;
  v66 = 7104878;
  v146 = *&v54[v57[281]];
  v67 = [v146 localURL];
  v68 = v139;
  v134 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  if (!v67)
  {
    v71 = *(v139 + 56);
    v79 = v135;
    v71(v135, 1, 1, v140);
    sub_1A824B2D4(v79, &qword_1EB2E7068, &unk_1A8501EB0);
    v78 = 0xE300000000000000;
    v76 = 7104878;
    goto LABEL_17;
  }

  v69 = v135;
  v70 = v67;
  sub_1A84E554C();

  v71 = *(v68 + 56);
  v72 = v140;
  v71(v69, 0, 1, v140);
  sub_1A824B2D4(v69, &qword_1EB2E7068, &unk_1A8501EB0);
  v73 = [v146 localURL];
  if (!v73)
  {
    __break(1u);
    goto LABEL_46;
  }

  v74 = v73;
  v75 = v131;
  sub_1A84E554C();

  v76 = sub_1A84E555C();
  v78 = v77;
  (*(v68 + 8))(v75, v72);
LABEL_17:
  v147[0] = 0;
  v147[1] = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8530C60);
  v80 = [v146 guid];
  if (v80)
  {
    v81 = v80;
    v82 = sub_1A84E5DBC();
    v84 = v83;
  }

  else
  {
    v84 = 0xE300000000000000;
    v82 = 7104878;
  }

  MEMORY[0x1AC56A990](v82, v84);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530C90);
  v85 = [v146 messageGUID];
  if (v85)
  {
    v86 = v85;
    v66 = sub_1A84E5DBC();
    v88 = v87;
  }

  else
  {
    v88 = 0xE300000000000000;
  }

  MEMORY[0x1AC56A990](v66, v88);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530CB0);
  MEMORY[0x1AC56A990](v76, v78);

  v90 = v147[0];
  v89 = v147[1];
  if ([v146 error] == -1)
  {
    strcpy(v147, "ImportExport.");
    HIWORD(v147[1]) = -4864;
    v96 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v96);

    v97 = v130;
    sub_1A84E5C8C();

    v98 = sub_1A84E5C7C();
    v99 = sub_1A84E617C();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v147[0] = v101;
      *v100 = 136315138;
      v102 = sub_1A82446BC(v90, v89, v147);

      *(v100 + 4) = v102;
      _os_log_impl(&dword_1A823F000, v98, v99, "%s finished ok!", v100, 0xCu);
      sub_1A8244788(v101);
      MEMORY[0x1AC56D3F0](v101, -1, -1);
      MEMORY[0x1AC56D3F0](v100, -1, -1);
    }

    else
    {
    }

    v65(v97, v145);
    (*(v141 + 56))(v143, 1, 1, v142);
  }

  else
  {
    v91 = [v146 errorDescription];
    if (v91)
    {
      v92 = v91;
      v93 = sub_1A84E5DBC();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0xE000000000000000;
    }

    v135 = v65;
    v103 = [v146 localURL];
    if (v103)
    {
      v104 = v138;
      v105 = v103;
      sub_1A84E554C();

      v106 = v104;
      v107 = 0;
    }

    else
    {
      v107 = 1;
      v106 = v138;
    }

    v71(v106, v107, 1, v140);
    v108 = [v146 error];
    v109 = IMFileTransferErrorReason.name.getter([v146 error]);
    v111 = v110;
    *v136 = 1;
    v112 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v112 = v93 & 0xFFFFFFFFFFFFLL;
    }

    if (!v112)
    {
      v93 = v109;

      v109 = v93;
      v95 = v111;
    }

    v114 = v142;
    v113 = v143;
    v115 = v136;
    *(v136 + 1) = v93;
    v115[2] = v95;
    v115[3] = v108;
    v115[4] = v109;
    v115[5] = v111;
    sub_1A83FB148(v138, v115 + *(v114 + 32));
    *(v115 + *(v114 + 36)) = 0;
    v116 = v132;
    sub_1A842EF08(v115, v132, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A842EF08(v116, v137, type metadata accessor for ImportExport.AttachmentDownloadError);
    v147[0] = 0;
    v147[1] = 0xE000000000000000;
    sub_1A84E646C();

    v147[0] = v90;
    v147[1] = v89;
    MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530CD0);
    v117 = ImportExport.AttachmentDownloadError.description.getter();
    MEMORY[0x1AC56A990](v117);

    v119 = v147[0];
    v118 = v147[1];
    strcpy(v147, "ImportExport.");
    HIWORD(v147[1]) = -4864;
    v120 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v120);

    v121 = v133;
    sub_1A84E5C8C();

    v122 = sub_1A84E5C7C();
    v123 = sub_1A84E619C();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v147[0] = v125;
      *v124 = 136315138;
      v126 = sub_1A82446BC(v119, v118, v147);

      *(v124 + 4) = v126;
      _os_log_impl(&dword_1A823F000, v122, v123, "%s", v124, 0xCu);
      sub_1A8244788(v125);
      MEMORY[0x1AC56D3F0](v125, -1, -1);
      MEMORY[0x1AC56D3F0](v124, -1, -1);
    }

    else
    {
    }

    (v135)(v121, v145);
    sub_1A842EF08(v137, v113, type metadata accessor for ImportExport.AttachmentDownloadError);
    (*(v141 + 56))(v113, 0, 1, v114);
  }

  v127 = v146;

  v128 = v127;
}

id sub_1A842E404()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A842E52C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting] = 1;
  *&v1[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_downloadFinishedWithNotification_ name:@"__kIMFileTransferFinishedNotification" object:v4];

  v9 = [v6 defaultCenter];
  [v9 addObserver:v7 selector:sel_downloadedRemovedWithNotification_ name:@"__kIMFileTransferRemovedNotification" object:v4];

  v10 = [v6 defaultCenter];
  [v10 addObserver:v7 selector:sel_downloadRejectedWithNotification_ name:@"__kIMFileTransferRejectedNotification" object:v4];

  v11 = [v6 defaultCenter];
  [v11 addObserver:v7 selector:sel_downloadUpdatedWithNotification_ name:@"__kIMFileTransferUpdatedNotification" object:v4];

  v12 = [v6 defaultCenter];
  [v12 addObserver:v7 selector:sel_downloadCreatedWithNotification_ name:@"__kIMFileTransferCreatedNotification" object:v4];

  return v7;
}

uint64_t sub_1A842E760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = sub_1A84E535C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E533C();
  v13 = a1;
  a5(v12, a4);

  return (*(v9 + 8))(v12, v8);
}

void sub_1A842E860(uint64_t a1, const char *a2)
{
  v4 = sub_1A84E5C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v22, "ImportExport.");
  HIWORD(v22[1]) = -4864;
  sub_1A842EDF4();
  v9 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v9);

  sub_1A84E5C8C();
  v10 = v2;
  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E617C();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v5 + 8))(v8, v4);
    goto LABEL_5;
  }

  v20 = a2;
  v21 = v4;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v22[0] = v14;
  *v13 = 136315138;
  v15 = [*&v10[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

  if (v15)
  {
    v16 = sub_1A84E5DBC();
    v18 = v17;

    v19 = sub_1A82446BC(v16, v18, v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1A823F000, v11, v12, v20, v13, 0xCu);
    sub_1A8244788(v14);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
    MEMORY[0x1AC56D3F0](v13, -1, -1);

    (*(v5 + 8))(v8, v21);
LABEL_5:
    v10[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting] = 0;
    return;
  }

  __break(1u);
}

void sub_1A842EB1C(uint64_t a1, const char *a2)
{
  v4 = sub_1A84E5C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v22, "ImportExport.");
  HIWORD(v22[1]) = -4864;
  sub_1A842EDF4();
  v9 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v9);

  sub_1A84E5C8C();
  v10 = v2;
  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E617C();
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_5;
  }

  v21 = a2;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v22[0] = v14;
  *v13 = 136315138;
  v15 = [*&v10[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

  if (v15)
  {
    v16 = sub_1A84E5DBC();
    v18 = v17;

    v19 = sub_1A82446BC(v16, v18, v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1A823F000, v11, v12, v21, v13, 0xCu);
    sub_1A8244788(v14);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
    MEMORY[0x1AC56D3F0](v13, -1, -1);

LABEL_5:
    (*(v5 + 8))(v8, v4);
    return;
  }

  __break(1u);
}

unint64_t sub_1A842EDF4()
{
  result = qword_1EB2E78D0;
  if (!qword_1EB2E78D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E78D0);
  }

  return result;
}

uint64_t sub_1A842EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E78D8, &qword_1A85043F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A842EEB0()
{
  result = qword_1EB2E78E0;
  if (!qword_1EB2E78E0)
  {
    type metadata accessor for ImportExport.AttachmentDownloadError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78E0);
  }

  return result;
}

uint64_t sub_1A842EF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A842EF70()
{
  v0 = *MEMORY[0x1E69A6E00];
  v1 = *MEMORY[0x1E69A6D10];
  v2 = v0;
  v3 = IMGetDomainBoolForKeyWithDefaultValue();

  byte_1EB2FF250 = v3;
}

uint64_t sub_1A842EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a2;
  *(v7 + 24) = a6;
  *(v7 + 16) = a1;
  v8 = *(*(type metadata accessor for ImportExport.Attachment() - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v10 = type metadata accessor for ImportExport.AttachmentDownloadError();
  *(v7 + 112) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A842F130, 0, 0);
}

uint64_t sub_1A842F130()
{
  v1 = v0[8];
  if (ImportExport.Attachment.existsOnDisk.getter())
  {
    v2 = v0[9];
    sub_1A84300A8(v0[8], v2);
LABEL_3:
    v3 = _s27AttachmentDownloadingResultCMa();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v6 = swift_allocObject();
    sub_1A8430040(v2, v6 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
    *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = 0;
    *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = 0;
    v8 = v0[17];
    v7 = v0[18];
    v10 = v0[15];
    v9 = v0[16];
    v12 = v0[12];
    v11 = v0[13];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];

    v16 = v0[1];

    return v16(v6);
  }

  if (qword_1EB2E5960 != -1)
  {
    swift_once();
  }

  if (byte_1EB2FF250 != 1)
  {
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[14];
    v28 = v0[12];
    v29 = v0[10];
    v30 = v0[8];
    v31 = sub_1A84E558C();
    (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
    *v26 = 3;
    v32 = 0xD000000000000025;
    if (("\n   failed with error: " & 0xF00000000000000) != 0)
    {
      v33 = 0xD000000000000025;
    }

    else
    {
      v33 = 0;
    }

    if (("\n   failed with error: " & 0xF00000000000000) != 0)
    {
      v34 = 0x80000001A8530CF0;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    if (("\n   failed with error: " & 0x2000000000000000) != 0)
    {
      v32 = v33;
      v35 = v34;
    }

    else
    {
      v35 = 0x80000001A8530CF0;
    }

    *(v26 + 8) = v32;
    *(v26 + 16) = v35;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    sub_1A83FB148(v28, v26 + *(v27 + 32));
    *(v26 + *(v27 + 36)) = 128;
    sub_1A8430040(v26, v25, type metadata accessor for ImportExport.AttachmentDownloadError);
    ImportExport.Attachment.update(downloadError:)(v25, v29);
    sub_1A83F0040(v25);
    v2 = v0[10];
    goto LABEL_3;
  }

  v18 = v0[8];
  v20 = *v18;
  v19 = v18[1];
  v21 = sub_1A84E5D8C();
  v22 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v22)
  {
    v23 = v0[2];
    v0[19] = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

    v24 = sub_1A842FDD4();
    v0[20] = 0;
    v0[21] = v47;
    v0[22] = v24;
    v0[23] = sub_1A842EDF4();
    v0[24] = sub_1A84E609C();
    v0[25] = sub_1A84E608C();
    v48 = sub_1A84E605C();

    return MEMORY[0x1EEE6DFA0](sub_1A842F59C, v48, v49);
  }

  else
  {
    sub_1A8412484();
    swift_allocError();
    *v36 = v20;
    *(v36 + 8) = v19;
    *(v36 + 16) = 0;
    swift_willThrow();

    v38 = v0[17];
    v37 = v0[18];
    v40 = v0[15];
    v39 = v0[16];
    v42 = v0[12];
    v41 = v0[13];
    v44 = v0[10];
    v43 = v0[11];
    v45 = v0[9];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_1A842F59C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  v0[26] = sub_1A846D468(v5, v9, v8, v7, v6, v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A842F664, 0, 0);
}

uint64_t sub_1A842F664()
{
  v1 = *(v0 + 192);
  *(v0 + 216) = sub_1A84E608C();
  v3 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A842F6F0, v3, v2);
}

uint64_t sub_1A842F6F0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  *(v0 + 248) = [v2 isDownloadExpired];

  return MEMORY[0x1EEE6DFA0](sub_1A842F76C, 0, 0);
}

uint64_t sub_1A842F76C()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 160);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = sub_1A84E558C();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    *v3 = 3;
    v9 = 0xD000000000000014;
    if (("enabled during export" & 0xF00000000000000) != 0)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v10 = 0;
    }

    if (("enabled during export" & 0xF00000000000000) != 0)
    {
      v11 = 0x80000001A8530D20;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    if (("enabled during export" & 0x2000000000000000) != 0)
    {
      v9 = v10;
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001A8530D20;
    }

    *(v3 + 8) = v9;
    *(v3 + 16) = v12;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    sub_1A83FB148(v4, v3 + *(v5 + 32));
    *(v3 + *(v5 + 36)) = 256;
    sub_1A8430040(v3, v2, type metadata accessor for ImportExport.AttachmentDownloadError);
    ImportExport.Attachment.update(downloadError:)(v2, v6);
    sub_1A83F0040(v2);
    v13 = *(v0 + 208);
    v14 = *(v0 + 152);
    if (v1)
    {

      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v18 = *(v0 + 120);
      v17 = *(v0 + 128);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v22 = *(v0 + 80);
      v21 = *(v0 + 88);
      v23 = *(v0 + 72);

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      v30 = *(v0 + 88);

      v31 = _s27AttachmentDownloadingResultCMa();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      sub_1A8430040(v30, v34 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
      *(v34 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = 0;
      *(v34 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = 0;
      v36 = *(v0 + 136);
      v35 = *(v0 + 144);
      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v42 = *(v0 + 80);
      v41 = *(v0 + 88);
      v43 = *(v0 + 72);

      v44 = *(v0 + 8);

      return v44(v34);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 224) = v26;
    *v26 = v0;
    v26[1] = sub_1A842FADC;
    v27 = *(v0 + 208);
    v28 = *(v0 + 64);
    v29 = *(v0 + 24);

    return sub_1A842BBA4(v28, v29);
  }
}

uint64_t sub_1A842FADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_1A842FCF0;
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = sub_1A842FC04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}