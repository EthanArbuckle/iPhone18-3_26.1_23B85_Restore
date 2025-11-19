uint64_t sub_1D5F807E0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C34C8[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F8086C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C3508[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F808D8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C3510;
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F80944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v24 - v14);
  v17 = *a1;
  v16 = a1[1];
  sub_1D5C41360(a2, v11);
  v18 = sub_1D725A82C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v11, 1, v18) == 1)
  {
    *v15 = a4;
    (*(v19 + 104))(v15, *MEMORY[0x1E69D63E0], v18);
    v21 = v20(v11, 1, v18);

    if (v21 != 1)
    {
      sub_1D5F82D98(v11, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8]);
    }
  }

  else
  {
    (*(v19 + 32))(v15, v11, v18);
  }

  (*(v19 + 56))(v15, 0, 1, v18);
  *a3 = v17;
  a3[1] = v16;
  v22 = type metadata accessor for SportsDataServiceResourceRequest(0);
  sub_1D5F82FB8(v15, a3 + *(v22 + 20));
  type metadata accessor for SportsDataServiceRequest(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5F80BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a3;
  v53 = a4;
  v58 = a6;
  v9 = sub_1D725895C();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v50 - v15;
  v17 = sub_1D72585BC();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v12);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v50 - v23;
  v25 = sub_1D7257C7C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v62 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v54 = a2;
  sub_1D7257BCC();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1D5F82D98(v24, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v31 = 3;
    result = swift_willThrow();
LABEL_5:
    *a5 = v30;
    return result;
  }

  v52 = a5;
  (*(v26 + 32))(v62, v24, v25);
  sub_1D5C413F4(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  sub_1D7257B5C();
  *(swift_allocObject() + 16) = xmmword_1D7270C10;
  v63 = v29;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C840);
  sub_1D7261F3C();
  sub_1D7257B2C();

  sub_1D7257B2C();

  sub_1D7257B7C();
  sub_1D7257BDC();
  v34 = v60;
  v33 = v61;
  if ((*(v60 + 48))(v16, 1, v61) == 1)
  {
    sub_1D5F82D98(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v35 = 4;
    swift_willThrow();
    result = (*(v26 + 8))(v62, v25);
    a5 = v52;
    goto LABEL_5;
  }

  (*(v34 + 32))(v20, v16, v33);
  v59 = v25;
  v36 = v33;
  v37 = *(v34 + 16);
  v38 = v58;
  v37(v58, v53, v33);
  v39 = type metadata accessor for SportsDataServiceURLRequest(0);
  v40 = v20;
  v51 = v20;
  v41 = v26;
  v42 = v34;
  v43 = v39;
  v37(v38 + *(v39 + 20), v54, v33);
  v37(v38 + v43[6], v40, v33);
  v44 = (v38 + v43[8]);
  v45 = v55;
  sub_1D725894C();
  v46 = sub_1D725893C();
  v48 = v47;
  (*(v56 + 8))(v45, v57);
  (*(v42 + 8))(v51, v36);
  (*(v41 + 8))(v62, v59);
  *v44 = v46;
  v44[1] = v48;
  v49 = (v38 + v43[7]);
  type metadata accessor for SportsDataServiceRequest(0);
  *v49 = 0u;
  v49[1] = 0u;
  return swift_storeEnumTagMultiPayload();
}

void *sub_1D5F812AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *(v7 - 1);
      v10 = *v7;
      v12 = *(v6 + 16);

      if (v12 >= a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
        }

        v19 = v8[2];
        v18 = v8[3];
        if (v19 >= v18 >> 1)
        {
          v8 = sub_1D69915A8((v18 > 1), v19 + 1, 1, v8);
        }

        v8[2] = v19 + 1;
        v8[v19 + 4] = v6;
        sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1D7273AE0;
        *(v6 + 32) = v11;
        *(v6 + 40) = v10;

        v20 = sub_1D726221C();

        v5 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
LABEL_30:
          v25 = v8[2];
          v24 = v8[3];
          if (v25 >= v24 >> 1)
          {
            v8 = sub_1D69915A8((v24 > 1), v25 + 1, 1, v8);
          }

          v8[2] = v25 + 1;
          v8[v25 + 4] = v6;
          return v8;
        }
      }

      else
      {
        v13 = sub_1D726221C();
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        v15 = __OFADD__(v5, v14);
        v5 += v14;
        if (v15)
        {
          goto LABEL_36;
        }

        if (v5 >= a2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
          }

          v22 = v8[2];
          v21 = v8[3];
          if (v22 >= v21 >> 1)
          {
            v8 = sub_1D69915A8((v21 > 1), v22 + 1, 1, v8);
          }

          v8[2] = v22 + 1;
          v8[v22 + 4] = v6;
          sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1D7273AE0;
          *(v6 + 32) = v11;
          *(v6 + 40) = v10;

          v23 = sub_1D726221C();

          v5 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D5B858EC(0, *(v6 + 16) + 1, 1, v6);
          }

          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          if (v17 >= v16 >> 1)
          {
            v6 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v6);
          }

          *(v6 + 16) = v17 + 1;
          v9 = v6 + 16 * v17;
          *(v9 + 32) = v11;
          *(v9 + 40) = v10;
        }
      }

      v7 += 2;
      if (!--v3)
      {
        goto LABEL_28;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:
  if (*(v6 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  return v8;
}

uint64_t sub_1D5F8161C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v53 = a3;
  v47 = a5;
  v54 = a4;
  v52 = a7;
  v9 = sub_1D725895C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - v15;
  v17 = sub_1D72585BC();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v12);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v46 - v22;
  v24 = sub_1D7257C7C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v48 = a2;
  sub_1D7257BCC();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D5F82D98(v23, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v31 = 3;
    result = swift_willThrow();
LABEL_5:
    *v56 = v30;
    return result;
  }

  (*(v25 + 32))(v28, v23, v24);
  sub_1D5C413F4(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  sub_1D7257B5C();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  v57 = v29;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C840);
  sub_1D7261F3C();
  sub_1D7257B2C();

  sub_1D7257B7C();
  sub_1D7257BDC();
  if ((*(v55 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5F82D98(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v33 = 4;
    swift_willThrow();
    result = (*(v25 + 8))(v28, v24);
    goto LABEL_5;
  }

  v34 = v55;
  v35 = *(v55 + 32);
  v56 = v24;
  v36 = v46;
  v35();
  v37 = *(v34 + 16);
  v38 = v52;
  v37(v52, v47, v17);
  v39 = type metadata accessor for SportsDataServiceURLRequest(0);
  v37(v38 + v39[5], v48, v17);
  v37(v38 + v39[6], v36, v17);
  v40 = (v38 + v39[8]);
  v41 = v49;
  sub_1D725894C();
  v42 = sub_1D725893C();
  v53 = v43;
  v54 = v42;
  (*(v50 + 8))(v41, v51);
  (*(v34 + 8))(v36, v17);
  (*(v25 + 8))(v28, v56);
  v44 = v53;
  *v40 = v54;
  v40[1] = v44;
  v45 = (v38 + v39[7]);
  type metadata accessor for SportsDataServiceRequest(0);
  *v45 = 0u;
  v45[1] = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5F81C8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F81CCC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D5F81D38(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D5F81D38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
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
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D5F81F00(v7, v8, a1, v4);
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
    return sub_1D5F81E30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D5F81E30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D72646CC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F81F00(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D62FF50C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D5F824DC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D72646CC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D72646CC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D698BA94((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D5F824DC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D62FF480(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D72646CC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D5F824DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D72646CC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D5F82704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v6;
  v18 = *(a1 + 32);
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v16 = *(a1 + 32);
  v14[7] = SportsDataVisualizationRequest.tagIds.getter();
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C838);
  v8 = sub_1D72623CC();

  *&v15[0] = v8;

  sub_1D5F81CCC(v15);
  if (v3)
  {

    __break(1u);
  }

  else
  {

    sub_1D5F82E08(&qword_1EDF1AF28);
    v9 = sub_1D7262C1C();

    MEMORY[0x1EEE9AC00](v10, v11);
    v14[2] = a3;
    v14[3] = v17;
    v14[4] = a2;
    v12 = sub_1D5ECAC40(sub_1D5F82F94, v14, v9);

    return v12;
  }

  return result;
}

uint64_t sub_1D5F828F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = a3 + 40;
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = v6 + 16;

    v9 = sub_1D726221C();

    v6 = v8;
    v10 = __OFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  sub_1D72583DC();
  v11 = sub_1D726221C();

  v13 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = __OFSUB__(v13, v4);
  v14 = v13 - v4;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(v14, v5);
  v15 = v14 - v5;
  if (v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v15 - v5;
  if (__OFSUB__(v15, v5))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F829CC(void *a1)
{
  v2 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  *&v4 = MEMORY[0x1EEE9AC00](v2, v3).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 rosterResourceIDs];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_1D7261D3C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1D5B9A6D8(*(v9 + 16), 0);
    v12 = sub_1D5E25FE8(&v20, v11 + 4, v10, v9);
    sub_1D5B87E38();
    if (v12 != v10)
    {
      __break(1u);
LABEL_5:
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 16;
      return swift_willThrow();
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v2 + 20);
  *&v6[v15] = 0x40F5180000000000;
  v16 = *MEMORY[0x1E69D63E0];
  v17 = sub_1D725A82C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v6[v15], v16, v17);
  (*(v18 + 56))(&v6[v15], 0, 1, v17);
  *v6 = v11;
  sub_1D5C413F4(0, &qword_1EDF179D8, type metadata accessor for SportsDataServiceBatchResourceRequest, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D5F82C30()
{
  result = qword_1EC88DB80;
  if (!qword_1EC88DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB80);
  }

  return result;
}

uint64_t sub_1D5F82CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceBatchRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F82D3C(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataServiceBatchRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F82D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C413F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5F82E08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B581F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F82E88(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
    sub_1D5F82F20(result, a2, a3 & 1);
LABEL_9:
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D5F82F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D5F82FB8(uint64_t a1, uint64_t a2)
{
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F8304C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3510;
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F830B8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3508[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F831E0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3500[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F8324C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34F8[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F832B8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34F0[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F83348()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34E8[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F833B4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34E0[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F83420()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34D8[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F8348C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34D0[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t sub_1D5F834F8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34C8[0];
  type metadata accessor for SportsDataServiceResource();
  return v1();
}

uint64_t FormatStateViewNodeStateDataLayoutAttributes.state.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatStateViewNodeStateDataLayoutAttributes.deinit()
{

  return v0;
}

uint64_t FormatStateViewNodeStateDataLayoutAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28FormatOptionConverterContextO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D5F836C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F83710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D5F83754(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D5F83790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F84454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F837B8(uint64_t a1)
{
  v2 = sub_1D5F840D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F837F4(uint64_t a1)
{
  v2 = sub_1D5F840D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedLayoutCacheFixedKey.encode(to:)(void *a1)
{
  sub_1D5F8417C(0, &qword_1EDF028B8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F840D4();
  sub_1D7264B5C();
  LOBYTE(v19) = 0;
  sub_1D726442C();
  if (!v2)
  {
    v19 = v10;
    v20 = v11;
    v21 = 1;
    type metadata accessor for CGSize(0);
    sub_1D5F841E0(&unk_1EDF043A0);
    sub_1D726443C();
    v19 = v12;
    v20 = v13;
    v21 = 2;
    sub_1D726443C();
    v19 = v14;
    v20 = v15;
    v21 = 3;
    sub_1D5F84128();
    sub_1D726443C();
    v19 = v16;
    v20 = v17;
    v21 = 4;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FeedLayoutCacheFixedKey.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v17 = *(v0 + 64);
  MEMORY[0x1DA6FC0B0](*v0);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  MEMORY[0x1DA6FC0E0](*&v8);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1DA6FC0E0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  v15 = v17;
  if (v17 == 0.0)
  {
    v15 = 0.0;
  }

  return MEMORY[0x1DA6FC0E0](*&v15);
}

uint64_t FeedLayoutCacheFixedKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v18 = v0[8];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1DA6FC0E0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  v16 = v18;
  if (v18 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  return sub_1D7264A5C();
}

uint64_t FeedLayoutCacheFixedKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5F8417C(0, &qword_1EDF03BB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F840D4();
  sub_1D7264B0C();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v16 = sub_1D72642FC();
    type metadata accessor for CGSize(0);
    v18 = 1;
    sub_1D5F841E0(&qword_1EDF04398);
    sub_1D726431C();
    v11 = v17;
    v18 = 2;
    sub_1D726431C();
    v12 = v17;
    v18 = 3;
    sub_1D5F84224();
    sub_1D726431C();
    v13 = v17;
    v18 = 4;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v16;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 40) = v13;
    *(a2 + 56) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5F83FB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v1);
  sub_1D5BE7138(v2, v3);
  sub_1D5BE7138(v4, v5);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x1DA6FC0E0](*&v10);
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
  return sub_1D7264A5C();
}

unint64_t sub_1D5F840D4()
{
  result = qword_1EDF13DE8;
  if (!qword_1EDF13DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DE8);
  }

  return result;
}

unint64_t sub_1D5F84128()
{
  result = qword_1EDF13C28;
  if (!qword_1EDF13C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13C28);
  }

  return result;
}

void sub_1D5F8417C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F840D4();
    v7 = a3(a1, &type metadata for FeedLayoutCacheFixedKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F841E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F84224()
{
  result = qword_1EDF13C20;
  if (!qword_1EDF13C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13C20);
  }

  return result;
}

unint64_t sub_1D5F8427C()
{
  result = qword_1EC8819C0;
  if (!qword_1EC8819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819C0);
  }

  return result;
}

uint64_t sub_1D5F842D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F842F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1D5F84350()
{
  result = qword_1EC8819C8;
  if (!qword_1EC8819C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819C8);
  }

  return result;
}

unint64_t sub_1D5F843A8()
{
  result = qword_1EDF13DD8;
  if (!qword_1EDF13DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DD8);
  }

  return result;
}

unint64_t sub_1D5F84400()
{
  result = qword_1EDF13DE0;
  if (!qword_1EDF13DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DE0);
  }

  return result;
}

uint64_t sub_1D5F84454(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 99 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 100 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 101 && a2 == 0xE100000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FormatStateMachineInlineInput.initialState.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::FormatStateMachineInlineInput::Scope_optional __swiftcall FormatStateMachineInlineInput.Scope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatStateMachineInlineInput.Scope.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F74656C676E6973;
  }

  else
  {
    return 0x65636E6174736E69;
  }
}

uint64_t sub_1D5F846D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F84760()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F847D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F84858@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D5F848B8(uint64_t *a1@<X8>)
{
  v2 = 0x65636E6174736E69;
  if (*v1)
  {
    v2 = 0x6F74656C676E6973;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5F848FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F74656C676E6973;
  }

  else
  {
    v3 = 0x65636E6174736E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x6F74656C676E6973;
  }

  else
  {
    v5 = 0x65636E6174736E69;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t _s8NewsFeed29FormatStateMachineInlineInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    if (v2)
    {
      v6 = 0x6F74656C676E6973;
    }

    else
    {
      v6 = 0x65636E6174736E69;
    }

    if (v2)
    {
      v7 = 0xE90000000000006ELL;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    if (v3)
    {
      v8 = 0x6F74656C676E6973;
    }

    else
    {
      v8 = 0x65636E6174736E69;
    }

    if (v3)
    {
      v9 = 0xE90000000000006ELL;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1D72646CC();
    }
  }

  return v5 & 1;
}

unint64_t sub_1D5F84B38()
{
  result = qword_1EC8819D0;
  if (!qword_1EC8819D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819D0);
  }

  return result;
}

unint64_t sub_1D5F84B8C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F84BBC();
  result = sub_1D5F84C10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F84BBC()
{
  result = qword_1EC8819D8;
  if (!qword_1EC8819D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819D8);
  }

  return result;
}

unint64_t sub_1D5F84C10()
{
  result = qword_1EDF0A3F8;
  if (!qword_1EDF0A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3F8);
  }

  return result;
}

unint64_t sub_1D5F84C64(uint64_t a1)
{
  result = sub_1D5F84C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F84C8C()
{
  result = qword_1EC8819E0;
  if (!qword_1EC8819E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819E0);
  }

  return result;
}

unint64_t sub_1D5F84D20()
{
  result = qword_1EDF0A3F0;
  if (!qword_1EDF0A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3F0);
  }

  return result;
}

unint64_t sub_1D5F84D74()
{
  result = qword_1EDF0A400;
  if (!qword_1EDF0A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A400);
  }

  return result;
}

unint64_t sub_1D5F84DC8(uint64_t a1)
{
  result = sub_1D5F84DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F84DF0()
{
  result = qword_1EC8819E8;
  if (!qword_1EC8819E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819E8);
  }

  return result;
}

uint64_t sub_1D5F84E84(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F84ED8()
{
  result = qword_1EDF0A3E0;
  if (!qword_1EDF0A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3E0);
  }

  return result;
}

unint64_t sub_1D5F84F2C()
{
  result = qword_1EDF0A3E8;
  if (!qword_1EDF0A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3E8);
  }

  return result;
}

unint64_t sub_1D5F84F80()
{
  result = qword_1EC8819F0;
  if (!qword_1EC8819F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28DebugFormatUploadEntryTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t IssueCoverTraits.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F850B0()
{
  result = qword_1EC8819F8;
  if (!qword_1EC8819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819F8);
  }

  return result;
}

uint64_t sub_1D5F8517C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPuzzleEmbedViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F851C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40));
  type metadata accessor for FormatPuzzleEmbedViewController();
  v7 = sub_1D725AABC();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
    v10 = &v9[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier];
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v11 = v9;

    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F852A0(uint64_t a1)
{
  v106 = a1;
  v99 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v99, v1);
  v100 = (&v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v95 - v5;
  v7 = type metadata accessor for FormatOption();
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v97 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v95 - v26;
  sub_1D5D27CBC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v95 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v96 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v104 = &v95 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v95 - v39;
  v41 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = (&v95 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v105, v48, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D5C6C308(v48, v44, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDF3AF90;
    v63 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
    v62 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v65 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
    v64 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v66 = *&v44[*(v41 + 20)];

    sub_1D6B79708(v66, MEMORY[0x1E69E7CC0], v27);
    if (v62)
    {
      sub_1D69F65B4(v27, v63, v62, v65, v64, v40);
      v68 = v107;
      v67 = v108;
      (*(v107 + 8))(v27, v108);
    }

    else
    {
      v68 = v107;
      v67 = v108;
      (*(v107 + 32))(v40, v27, v108);
    }

    (*(v68 + 56))(v40, 0, 1, v67);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v86 = sub_1D62029B4(v61, v40);
    sub_1D5D2CDA8(v44, type metadata accessor for FormatAbsoluteURL);
    return v86;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v70 = *v48;
    v69 = v48[1];
    v71 = v48[2];
    v72 = v106;

    FormatOptionCollection.subscript.getter(v70, v69, v6);
    if ((*(v101 + 48))(v6, 1, v102) == 1)
    {
      sub_1D5F873CC(v6);
      v73 = v100;
      *v100 = v70;
      v73[1] = v69;
      v74 = v73;
      swift_storeEnumTagMultiPayload();
      v75 = *(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      sub_1D5F8731C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      v77 = swift_allocError();
      v78 = v108;
      v79 = v107;
      if ((v75 & 1) == 0)
      {
        sub_1D5F87444(v74, v76, type metadata accessor for FormatLayoutError);
        swift_willThrow();

        return sub_1D5D2CDA8(v74, type metadata accessor for FormatLayoutError);
      }

      sub_1D5F87444(v74, v76, type metadata accessor for FormatLayoutError);
      v80 = v95;
      sub_1D725855C();
      result = (*(v79 + 48))(v80, 1, v78);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_1D5D2CDA8(v74, type metadata accessor for FormatLayoutError);
      v82 = v97;
      (*(v79 + 32))(v97, v80, v78);
    }

    else
    {

      v83 = v6;
      v84 = v98;
      sub_1D5C6C308(v83, v98, type metadata accessor for FormatOption);
      v85 = v109;
      sub_1D6B744A8(v72, &v111);
      v79 = v107;
      v78 = v108;
      if (v85)
      {

        return sub_1D5D2CDA8(v84, type metadata accessor for FormatOption);
      }

      v87 = v70;
      v82 = v97;
      sub_1D6B80238(v111, v87, v69, v71, v72, v97);

      sub_1D5D2CDA8(v84, type metadata accessor for FormatOption);
    }

    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v88 = qword_1EDF3AF90;
    v89 = (v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v90 = *(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    if (v90)
    {
      v91 = v89[3];
      v92 = v89[4];
      v93 = v89[1];

      v94 = v96;
      sub_1D69F65B4(v82, v93, v90, v91, v92, v96);
    }

    else
    {
      v94 = v96;
      (*(v79 + 16))(v96, v82, v78);
    }

    (*(v79 + 56))(v94, 0, 1, v78);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v86 = sub_1D62029B4(v88, v94);
    (*(v79 + 8))(v82, v78);
    return v86;
  }

  v50 = v48[2];
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDF3AF90;
  v52 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v101 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
  v102 = v52;
  v53 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v100 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
  v110 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);
  v105 = v53;

  v106 = v51;

  sub_1D722B410(v16);
  sub_1D725849C();
  v54 = v107;
  v55 = *(v107 + 8);
  v56 = v16;
  v57 = v108;
  v55(v56, v108);
  v58 = v103;
  sub_1D6B79708(v50, MEMORY[0x1E69E7CC0], v103);
  v59 = v102;

  v55(v20, v57);
  v60 = v104;
  if (v59)
  {
    sub_1D69F65B4(v58, v101, v59, v100, v105, v104);
    v55(v58, v57);
  }

  else
  {
    (*(v54 + 32))(v104, v58, v57);
  }

  (*(v54 + 56))(v60, 0, 1, v57);
  type metadata accessor for FormatCommandAction();
  swift_allocObject();
  return sub_1D62029B4(v106, v60);
}

uint64_t FormatCommandOpenURL.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C30408();
  v49 = v24;
  sub_1D71B5B30(&type metadata for FormatCodingKeys, v27, v26, &type metadata for FormatVersions.JazzkonC, v25, &off_1F51F6C78, v24);
  sub_1D5F87444(v48, v20, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v20;
      v30 = v20[1];
      v31 = v20[2];
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCD18);
      (*(*(v32 - 8) + 16))(v8, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v49;
      sub_1D63A34F0(2, v29, v30, v31, v8);

      v35 = v8;
    }

    else
    {
      v40 = *v20;
      v41 = v20[1];
      v42 = v20[2];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
      v45 = v47;
      (*(*(v43 - 8) + 16))(v47, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v49;
      sub_1D63A3688(3, v40, v41, v42, v45);

      v35 = v45;
    }

    sub_1D5D2CDA8(v35, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CDA8(v34, sub_1D5D30DC4);
  }

  else
  {
    sub_1D5C6C308(v20, v16, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
    (*(*(v36 - 8) + 16))(v12, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v49;
    sub_1D63A331C(0, v16, v12);
    sub_1D5D2CDA8(v12, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CDA8(v16, type metadata accessor for FormatAbsoluteURL);
    return sub_1D5D2CDA8(v38, sub_1D5D30DC4);
  }
}

uint64_t sub_1D5F86390()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F86468()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F8652C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F86600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
  v5 = 0xE500000000000000;
  v6 = 0x7465737361;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574756C6F736261;
    v3 = 0xE800000000000000;
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

uint64_t sub_1D5F8671C()
{
  v2 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v0, v5, type metadata accessor for FormatCommandOpenURL);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_1D5D2CDA8(v5, type metadata accessor for FormatCommandOpenURL);
  }

  v8 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v14[0] = v8;
  v14[1] = v7;
  v14[2] = v9;
  HIBYTE(v13) = 6;

  v10 = sub_1D703E0C8(v14, &v13 + 7);
  if (v1)
  {
  }

  else
  {
    v11 = v10;

    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0;
    sub_1D6C4D24C(v12 | 0x3000000000000000);
  }
}

unint64_t sub_1D5F868E4()
{
  result = qword_1EDF415E8;
  if (!qword_1EDF415E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415E8);
  }

  return result;
}

uint64_t _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v44 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - v18;
  sub_1D5F874AC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = (&v44 + *(v23 + 56) - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v26 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F87444(v25, v26, type metadata accessor for FormatCommandOpenURL);
  sub_1D5F87444(a2, v24, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D5F87444(v26, v19, type metadata accessor for FormatCommandOpenURL);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D5C6C308(v24, v7, type metadata accessor for FormatAbsoluteURL);
      if (sub_1D72584CC())
      {
        v42 = sub_1D633A250(*&v19[*(v4 + 20)], *&v7[*(v4 + 20)]);
        sub_1D5D2CDA8(v7, type metadata accessor for FormatAbsoluteURL);
        if (v42)
        {
          sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
          v41 = 1;
LABEL_30:
          v40 = type metadata accessor for FormatCommandOpenURL;
          goto LABEL_31;
        }
      }

      else
      {
        sub_1D5D2CDA8(v7, type metadata accessor for FormatAbsoluteURL);
      }

      sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
LABEL_29:
      v41 = 0;
      goto LABEL_30;
    }

    sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
LABEL_22:
    v41 = 0;
    v40 = sub_1D5F874AC;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5F87444(v26, v15, type metadata accessor for FormatCommandOpenURL);
    v29 = *v15;
    v28 = v15[1];
    v30 = v15[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v24[2];
      v32 = v29 == *v24 && v28 == v24[1];
      if (v32 || (sub_1D72646CC() & 1) != 0)
      {
        v33 = sub_1D633A250(v30, v31);
        goto LABEL_19;
      }

LABEL_26:

      goto LABEL_29;
    }

    goto LABEL_21;
  }

  sub_1D5F87444(v26, v11, type metadata accessor for FormatCommandOpenURL);
  v35 = *v11;
  v34 = v11[1];
  v36 = v11[2];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_21:

    goto LABEL_22;
  }

  v37 = v24[2];
  v38 = v35 == *v24 && v34 == v24[1];
  if (!v38 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v33 = sub_1D6341C50(v36, v37);
LABEL_19:
  v39 = v33;

  v40 = type metadata accessor for FormatCommandOpenURL;
  if ((v39 & 1) == 0)
  {
    goto LABEL_29;
  }

  v41 = 1;
LABEL_31:
  sub_1D5D2CDA8(v26, v40);
  return v41;
}

uint64_t sub_1D5F86DA0(uint64_t a1)
{
  v40 = a1;
  v3 = type metadata accessor for FormatOption();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v1, v19, type metadata accessor for FormatCommandOpenURL);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v20 = type metadata accessor for FormatCommandOpenURL;
    v21 = v19;
    return sub_1D5D2CDA8(v21, v20);
  }

  v24 = *v19;
  v23 = v19[1];
  v25 = v19[2];
  v41[0] = v24;
  v41[1] = v23;
  v41[2] = v25;
  v42 = 6;

  v26 = sub_1D703E0C8(v41, &v42);
  if (v2)
  {
  }

  v37 = v26;
  v38 = v25;
  v27 = v40;
  v39 = v23;
  FormatOptionCollection.subscript.getter(v24, v23, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {

    sub_1D5F873CC(v11);
    if ((*(v27 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5F8731C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v29 = v39;
      *v30 = v24;
      v30[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    (*(v4 + 56))(v15, 1, 1, v3);
  }

  else
  {
    sub_1D5C6C308(v11, v7, type metadata accessor for FormatOption);
    v41[0] = v7[2];
    v28 = v37;

    FormatOptionValue.type.getter(&v42);
    if ((sub_1D6183C84(v42, v28) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D5F8731C(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v32 = v31;
      v34 = *v7;
      v33 = v7[1];
      v41[0] = v7[2];

      FormatOptionValue.type.getter(&v42);
      v35 = v42;
      *v32 = v34;
      *(v32 + 8) = v33;
      *(v32 + 16) = v35;
      *(v32 + 24) = v28;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v20 = type metadata accessor for FormatOption;
      v21 = v7;
      return sub_1D5D2CDA8(v21, v20);
    }

    swift_bridgeObjectRelease_n();
    sub_1D5C6C308(v7, v15, type metadata accessor for FormatOption);
    (*(v4 + 56))(v15, 0, 1, v3);
  }

  return sub_1D5F873CC(v15);
}

uint64_t sub_1D5F87270(void *a1)
{
  a1[1] = sub_1D5F8731C(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL);
  a1[2] = sub_1D5F8731C(&qword_1EDF0F168, type metadata accessor for FormatCommandOpenURL);
  result = sub_1D5F8731C(&qword_1EC881A10, type metadata accessor for FormatCommandOpenURL);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F8731C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F87378()
{
  result = qword_1EC881A18;
  if (!qword_1EC881A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A18);
  }

  return result;
}

uint64_t sub_1D5F873CC(uint64_t a1)
{
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F87444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F874AC()
{
  if (!qword_1EC881A20)
  {
    type metadata accessor for FormatCommandOpenURL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881A20);
    }
  }
}

void *sub_1D5F87520()
{
  result = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(MEMORY[0x1E69E7CC0]);
  qword_1EC9BA748 = result;
  return result;
}

UIColor sub_1D5F8754C()
{
  sub_1D5C0B9F0();
  v0._countAndFlagsBits = 0x333945384538;
  v0._object = 0xE600000000000000;
  result.super.isa = UIColor.init(hex:)(v0).super.isa;
  qword_1EDFFC548 = result.super.isa;
  return result;
}

void *FormatSportsEventMatchupColorProvider.__allocating_init(sportsEvent:)(void *a1)
{
  v1 = [a1 eventCompetitorTags];
  if (v1)
  {
    v2 = v1;
    sub_1D5EC01D0();
    v3 = sub_1D726267C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v3);
  swift_unknownObjectRelease();
  return v4;
}

void *FormatSportsEventMatchupColorProvider.subscript.getter(void *a1)
{
  swift_getObjectType();

  return sub_1D5F879DC(a1, v1);
}

void *sub_1D5F87654(id a1, void *a2)
{
  v3 = v2;
  if (a1 && (v6 = [a1 sportsTheme]) != 0 && (v7 = objc_msgSend(v6, sel_sportsPrimaryColor), swift_unknownObjectRelease(), v7))
  {
    v8 = [v7 ne_color];

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDF06C20 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDFFC548;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  v9 = [a2 sportsTheme];
  if (v9)
  {
    v10 = [v9 sportsPrimaryColor];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = [v10 ne_color];

      goto LABEL_15;
    }
  }

LABEL_12:
  if (qword_1EDF06C20 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDFFC548;
LABEL_15:
  if ([v8 _isSimilarToColor_withinPercentage_])
  {
    v12 = [objc_opt_self() whiteColor];
    v13 = sub_1D726359C();

    if (v13)
    {

      v11 = v13;
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v15 = [swift_unknownObjectRetain() identifier];
    v16 = sub_1D726207C();
    v18 = v17;

    v19 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D769B4(v19, v16, v18, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v21 = [a2 identifier];
    v22 = sub_1D726207C();
    v24 = v23;

    v25 = v11;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D769B4(v25, v22, v24, v26);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v3[2] = v8;
  v3[3] = v11;
  v3[4] = v14;
  return v3;
}

uint64_t FormatSportsEventMatchupColorProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D5F879DC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = [a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  if (*(v2 + 16))
  {
    v7 = sub_1D5B69D90(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v2 + 56) + 8 * v7);
      v11 = v10;
      return v10;
    }
  }

  else
  {
  }

  return 0;
}

void *_s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(void *a1)
{
  sub_1D5F87C04();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_1D5F87C68();
  sub_1D5F87CC0();
  sub_1D725AD9C();
  v13 = 0;
  sub_1D725AD8C();
  v8 = v14;
  v12[1] = 1;
  sub_1D725AD8C();
  v9 = v13;
  type metadata accessor for FormatSportsEventMatchupColorProvider();
  swift_allocObject();
  v10 = sub_1D5F87654(v8, v9);
  (*(v4 + 8))(v7, v3);
  return v10;
}

void sub_1D5F87C04()
{
  if (!qword_1EDF17C58)
  {
    sub_1D5F87C68();
    sub_1D5F87CC0();
    v0 = sub_1D725AD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C58);
    }
  }
}

void sub_1D5F87C68()
{
  if (!qword_1EDF04A10)
  {
    sub_1D5EC01D0();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04A10);
    }
  }
}

unint64_t sub_1D5F87CC0()
{
  result = qword_1EDF049F8;
  if (!qword_1EDF049F8)
  {
    sub_1D5F87C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF049F8);
  }

  return result;
}

id FCAssetHandle.data.getter()
{
  result = [v0 dataProvider];
  if (result)
  {
    v2 = [result data];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1D725867C();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FCAssetHandle.loadData(cachePolicy:)()
{
  sub_1D5F88D54();
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_1D725B92C();
  v3 = sub_1D725BA8C();

  return v3;
}

uint64_t FCAssetHandle.load()()
{
  v1 = [v0 filePath];
  if (v1)
  {
    v3 = v1;
    sub_1D726207C();

    sub_1D5F129A4();
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D5F129A4();
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

uint64_t FCAssetHandle.loadAsset()()
{
  v1 = [v0 filePath];
  if (v1)
  {

    sub_1D5F88F70(0, &qword_1EDF17938, sub_1D5C169F4);
    swift_allocObject();
    v3 = v0;
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D5F88F70(v5, &qword_1EDF17938, sub_1D5C169F4);
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

uint64_t sub_1D5F8806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5F89598;
  v11[6] = v10;
  v16[4] = sub_1D5F895D0;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_25;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F881B8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 filePath];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D726207C();
    v17 = v16;

    a4(v15, v17);
  }

  else
  {
    _s6ErrorsOMa_0();
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0);
    v18 = swift_allocError();
    v20 = v19;
    v21 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v20, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v18);
  }
}

uint64_t sub_1D5F883BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5B7E910;
  v11[6] = v10;
  v16[4] = sub_1D5F89580;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_16;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F88508(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 dataProvider])
  {
    a4(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    _s6ErrorsOMa_0();
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0);
    v13 = swift_allocError();
    v15 = v14;
    v16 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v15, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v13);
  }
}

uint64_t FCAssetHandle.loadDataProvider(cachePolicy:)(uint64_t *a1)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = [v1 dataProvider];
  if (v11)
  {
    v18[1] = v11;
    sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    if (v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      _s6ErrorsOMa_0();
      sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0);
      swift_allocError();
      v16 = v15;
      v17 = [v1 remoteURL];
      sub_1D72584EC();

      (*(v4 + 32))(v16, v8, v3);
      swift_storeEnumTagMultiPayload();
      sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
      swift_allocObject();
      return sub_1D725BAFC();
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v12);
      v18[-2] = v1;
      sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
      swift_allocObject();
      return sub_1D725BBAC();
    }
  }
}

uint64_t sub_1D5F88990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5B7E910;
  v11[6] = v10;
  v16[4] = sub_1D5F89568;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_12;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F88ADC(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 dataProvider])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    _s6ErrorsOMa_0();
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0);
    v13 = swift_allocError();
    v15 = v14;
    v16 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v15, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v13);
  }
}

uint64_t sub_1D5F88CC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = a3 & 1;
  return FCAssetHandle.loadDataProvider(cachePolicy:)(&v4);
}

uint64_t sub_1D5F88D0C()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = v1;
  return FCAssetHandle.loadDataProvider(cachePolicy:)(&v3);
}

unint64_t sub_1D5F88D54()
{
  result = qword_1EDF1A9A0;
  if (!qword_1EDF1A9A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A9A0);
  }

  return result;
}

void sub_1D5F88DB8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D725867C();
    v16 = v15;

    *a3 = v14;
    a3[1] = v16;
  }

  else
  {
    _s6ErrorsOMa_0();
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0);
    swift_allocError();
    v18 = v17;
    v19 = [a2 remoteURL];
    sub_1D72584EC();

    (*(v7 + 32))(v18, v11, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_1D5F88F70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D725BC0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s6ErrorsOMa_0()
{
  result = qword_1EDF1ABD8;
  if (!qword_1EDF1ABD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FCAssetHandle.remoteURLAbsoluteString.getter()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 remoteURL];
  sub_1D72584EC();

  v8 = sub_1D72583DC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t FCAssetHandle.download(withGroup:)(uint64_t a1)
{
  v2 = [v1 downloadIfNeededWithGroup_];

  return swift_unknownObjectRelease();
}

id FCAssetHandle.assetDataProvider.getter@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5F891E0(&qword_1EDF1AB58, sub_1D5C169F4);
  *a1 = v3;

  return v3;
}

uint64_t sub_1D5F891E0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D5F89228@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5F891E0(&qword_1EDF1AB58, sub_1D5C169F4);
  *a1 = v4;

  return v4;
}

uint64_t sub_1D5F892B4()
{
  v1 = [*v0 uniqueKey];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D5F8930C(uint64_t a1)
{
  v2 = [*v1 downloadIfNeededWithGroup_];

  return swift_unknownObjectRelease();
}

id FCAssetHandle.isRawFileConsumable.getter()
{
  v1 = [v0 dataProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isRawFileConsumable];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1D5F893AC()
{
  result = [*v0 dataProvider];
  if (result)
  {
    v2 = [result data];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1D725867C();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F8943C()
{
  v1 = [*v0 filePath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

id sub_1D5F894A4()
{
  v1 = [*v0 dataProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isRawFileConsumable];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D5F89504()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F89598(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

NewsFeed::FormatPatternDirection_optional __swiftcall FormatPatternDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatPatternDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F546D6F74746F62;
  }

  else
  {
    return 0x746F426F54706F74;
  }
}

uint64_t sub_1D5F896C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F546D6F74746F62;
  }

  else
  {
    v3 = 0x746F426F54706F74;
  }

  if (v2)
  {
    v4 = 0xEB000000006D6F74;
  }

  else
  {
    v4 = 0xEB00000000706F54;
  }

  if (*a2)
  {
    v5 = 0x6F546D6F74746F62;
  }

  else
  {
    v5 = 0x746F426F54706F74;
  }

  if (*a2)
  {
    v6 = 0xEB00000000706F54;
  }

  else
  {
    v6 = 0xEB000000006D6F74;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D5F89780()
{
  result = qword_1EC881A28;
  if (!qword_1EC881A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A28);
  }

  return result;
}

uint64_t sub_1D5F897D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F89868()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F898E8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F89978@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D5F899D8(uint64_t *a1@<X8>)
{
  v2 = 0x746F426F54706F74;
  if (*v1)
  {
    v2 = 0x6F546D6F74746F62;
  }

  v3 = 0xEB000000006D6F74;
  if (*v1)
  {
    v3 = 0xEB00000000706F54;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D5F89A28(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F89A58();
  result = sub_1D5F89AAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F89A58()
{
  result = qword_1EC881A30;
  if (!qword_1EC881A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A30);
  }

  return result;
}

unint64_t sub_1D5F89AAC()
{
  result = qword_1EDF0DA28;
  if (!qword_1EDF0DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA28);
  }

  return result;
}

unint64_t sub_1D5F89B00(uint64_t a1)
{
  result = sub_1D5F89B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F89B28()
{
  result = qword_1EC881A38;
  if (!qword_1EC881A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A38);
  }

  return result;
}

unint64_t sub_1D5F89B7C(void *a1)
{
  a1[1] = sub_1D5F89BB4();
  a1[2] = sub_1D5F89C08();
  result = sub_1D5F89780();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F89BB4()
{
  result = qword_1EDF0DA20;
  if (!qword_1EDF0DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA20);
  }

  return result;
}

unint64_t sub_1D5F89C08()
{
  result = qword_1EDF0DA30;
  if (!qword_1EDF0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA30);
  }

  return result;
}

uint64_t sub_1D5F89CF8()
{
  sub_1D5B74A14(0, &qword_1EDF3B2E0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B74A14(0, &qword_1EDF3B180, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169C0 = result;
  return result;
}

uint64_t static Commands.delphi.getter()
{
  if (qword_1EDF169B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D5F89E8C(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = qword_1EDF169B8;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v12[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v10 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t FormatItemCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    sub_1D5CBB26C();
    v11 = v10;
    v18 = *(v10 - 8);
    sub_1D5CCD174(v9 + *(v18 + 72) * v8, a3);
    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    sub_1D5CBB26C();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t FormatItemCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5CBB104();
  sub_1D5CBB194(&qword_1EDF05100, &qword_1EDF12430);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatItemCollection __swiftcall FormatItemCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2BF34(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.itemsByIdentifier._rawValue = v4;
  result.items._rawValue = v3;
  return result;
}

unint64_t sub_1D5F8A2EC@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C2BF34(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_1D5F8A320(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CFBB04(a1, v7, *v2);
  return result;
}

uint64_t sub_1D5F8A378(uint64_t a1, uint64_t a2)
{
  sub_1D5CBB26C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatPuzzleStatistic.identifier.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = *(*v0 + 16);

  MEMORY[0x1DA6F9910](v1, v2);
  return v4;
}

uint64_t FormatPuzzleStatistic.statistic.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FormatPuzzleStatistic.selectors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t FormatPuzzleStatistic.properties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t FormatPuzzleStatistic.init(puzzleType:statistic:selectors:properties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1D5F8A580()
{
  v1 = 0x7954656C7A7A7570;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x69747265706F7270;
  }

  if (*v0)
  {
    v1 = 0x6974736974617473;
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

uint64_t sub_1D5F8A60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F8B354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F8A634(uint64_t a1)
{
  v2 = sub_1D5E1C4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8A670(uint64_t a1)
{
  v2 = sub_1D5E1C4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleStatistic.encode(to:)(void *a1)
{
  sub_1D5F8B04C(0, &qword_1EDF02660, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v19 = v1[2];
  v20 = v10;
  v17 = v1[4];
  v18 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C4F0();

  sub_1D7264B5C();
  v22 = v11;
  v21 = 0;
  type metadata accessor for FormatPuzzleType(0);
  sub_1D5F8B0B0(&qword_1EDF111D8, type metadata accessor for FormatPuzzleType);
  sub_1D726443C();
  if (v2)
  {
  }

  else
  {
    v13 = v17;
    v14 = v18;

    LOBYTE(v22) = 1;
    sub_1D72643FC();
    if (*(v14 + 16))
    {
      sub_1D5E07814(v14, v9, 2);
    }

    if (*(v13 + 16))
    {
      v21 = 3;
      v22 = v13;
      sub_1D5F8AFD8();
      sub_1D5E4C584();
      sub_1D5E4C5D4();
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FormatPuzzleStatistic.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  sub_1D5E18934();
  v47 = v3;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v8 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8B04C(0, &qword_1EDF19C08, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C4F0();
  v17 = v51;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v11;
  v19 = v8;
  v20 = v50;
  type metadata accessor for FormatPuzzleType(0);
  v57 = 0;
  sub_1D5F8B0B0(&qword_1EDF30128, type metadata accessor for FormatPuzzleType);
  sub_1D726431C();
  v22 = v16;
  v23 = v58;
  v56 = 1;
  v24 = sub_1D72642BC();
  v51 = v25;
  v44 = v24;
  v45 = 0;
  v55 = 2;
  v26 = sub_1D726434C();
  if ((v26 & 1) == 0)
  {
    v42 = v22;
    v43 = v23;
    v41 = MEMORY[0x1E69E7CD0];
    v28 = v45;
    goto LABEL_14;
  }

  v52 = 2;
  sub_1D5F8B0B0(&qword_1EDF3BE00, sub_1D5C8CD38);
  v27 = v45;
  sub_1D726431C();
  v28 = v27;
  if (!v27)
  {
    v42 = v22;
    v43 = v23;
    v41 = sub_1D725A74C();
    (*(v46 + 1))(v18, v19);
LABEL_14:
    v31 = v6;
    v54 = 3;
    v32 = v42;
    v33 = sub_1D726434C();
    v35 = v48;
    v34 = v49;
    if (v33)
    {
      v53 = 3;
      sub_1D5F8B0B0(&qword_1EDF3BD70, sub_1D5E18934);
      v46 = v31;
      v36 = v47;
      sub_1D726431C();
      v37 = v32;
      if (v28)
      {
        (*(v20 + 8))(v32, v13);
        v29 = 1;
        v30 = v45;
        goto LABEL_5;
      }

      v38 = sub_1D725A74C();
      (*(v34 + 8))(v46, v36);
      (*(v20 + 8))(v37, v13);
    }

    else
    {
      (*(v20 + 8))(v32, v13);
      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = v44;
    *v35 = v43;
    v35[1] = v39;
    v40 = v41;
    v35[2] = v51;
    v35[3] = v40;
    v35[4] = v38;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  (*(v20 + 8))(v22, v13);
  v29 = 0;
  v30 = v45;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (!v30)
  {
  }

  if (v29)
  {
  }

  return result;
}

uint64_t _s8NewsFeed21FormatPuzzleStatisticV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  type metadata accessor for FormatPuzzleType(0);
  if ((static FormatPuzzleType.== infix(_:_:)(v2, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v3 == v7 && v5 == v10;
  if (!v12 && (sub_1D72646CC() & 1) == 0 || (sub_1D5BFC390(v4, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1D6339F3C(v6, v11);
}

unint64_t sub_1D5F8AFD8()
{
  result = qword_1EC87F9B8;
  if (!qword_1EC87F9B8)
  {
    sub_1D5F8B04C(255, &qword_1EDF02660, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9B8);
  }

  return result;
}

void sub_1D5F8B04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C4F0();
    v7 = a3(a1, &type metadata for FormatPuzzleStatistic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F8B0B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F8B0F8(void *a1)
{
  a1[1] = sub_1D5F8B130();
  a1[2] = sub_1D5F8B184();
  result = sub_1D5F8B1D8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F8B130()
{
  result = qword_1EDF29450;
  if (!qword_1EDF29450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29450);
  }

  return result;
}

unint64_t sub_1D5F8B184()
{
  result = qword_1EDF0DF80;
  if (!qword_1EDF0DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF80);
  }

  return result;
}

unint64_t sub_1D5F8B1D8()
{
  result = qword_1EC881A48;
  if (!qword_1EC881A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A48);
  }

  return result;
}

unint64_t sub_1D5F8B250()
{
  result = qword_1EC881A50;
  if (!qword_1EC881A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A50);
  }

  return result;
}

unint64_t sub_1D5F8B2A8()
{
  result = qword_1EDF29458;
  if (!qword_1EDF29458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29458);
  }

  return result;
}

unint64_t sub_1D5F8B300()
{
  result = qword_1EDF29460;
  if (!qword_1EDF29460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29460);
  }

  return result;
}

uint64_t sub_1D5F8B354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656C7A7A7570 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xE900000000000063 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
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

id SportsLineScoreDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsLineScoreDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsLineScoreDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500);
  v3 = sub_1D726267C();

  return v3;
}

uint64_t SportsLineScoreDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsLineScoreDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3);
}

uint64_t sub_1D5F8B638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D5F8B6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

char *SportsLineScoreDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = swift_allocObject();
  v24 = *a7;
  v22 = *a6;
  v23 = a7[1];
  v13 = a7[2];
  v14 = a7[3];
  v15 = a7[4];
  v16 = a7[5];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(v12 + 6) = a3;
  v17 = OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl;
  v27 = sub_1D72585BC();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v12[v17], a4, v27);
  *&v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources] = a5;
  *&v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster] = v22;
  v18 = &v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
  *v18 = v24;
  v18[1] = v23;
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;

  swift_unknownObjectRetain();
  sub_1D5F8B638(v24, v23);
  v30 = sub_1D72583DC();
  v31 = v19;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  v20 = v31;
  *(v12 + 2) = v30;
  *(v12 + 3) = v20;
  v30 = v24;
  v31 = v23;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  sub_1D692133C(a4, &v30, 0xD00000000000001ALL, 0x80000001D73C47E0, &v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v28 + 8))(a4, v27);
  sub_1D5F8BBC8(v24, v23);
  return v12;
}

void *SportsLineScoreDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v37 = a5;
  v38 = a1;
  v43 = a4;
  v44 = a3;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v41 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a6;
  v19 = *a7;
  v20 = a7[1];
  v21 = a7[2];
  v22 = a7[3];
  v23 = a7[5];
  v42 = a7[4];
  v8[4] = a1;
  v8[5] = a2;
  v24 = v43;
  v8[6] = v44;
  (*(v25 + 16))(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v24, v16);
  *(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v37;
  *(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v18;
  v26 = (v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  *v26 = v19;
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  v36 = v22;
  v26[4] = v42;
  v26[5] = v23;

  swift_unknownObjectRetain();
  sub_1D5F8B638(v19, v20);
  v45 = sub_1D72583DC();
  v46 = v27;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v38, a2);

  v28 = v46;
  v8[2] = v45;
  v8[3] = v28;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v36;
  v29 = v43;
  v49 = v42;
  v50 = v23;
  v30 = v41;
  sub_1D692133C(v43, &v45, 0xD00000000000001ALL, 0x80000001D73C47E0, v41);
  swift_unknownObjectRelease();
  v31 = v40;
  v32 = v29;
  v33 = v39;
  (*(v40 + 8))(v32, v39);
  sub_1D5F8BBC8(v19, v20);
  (*(v31 + 32))(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v30, v33);
  return v8;
}

uint64_t sub_1D5F8BBC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void *SportsLineScoreDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v39 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = a1[1];
  v40 = *a1;
  v10 = a1[3];
  v34 = a1[2];
  v35 = v9;
  v11 = a1[5];
  v32 = a1[4];
  v33 = v10;
  v31 = v11;
  v12 = *(v1 + 32);
  v14 = *(v2 + 40);
  v36 = *(v2 + 48);
  v13 = v36;
  v37 = v12;
  v15 = *(v39 + 16);
  v38 = v4;
  v15(v8, v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v4, v6);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources);
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);
  v18 = swift_allocObject();
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v13;
  v19 = v30;
  (v15)(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v30, v4);
  *(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v16;
  *(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v17;
  v20 = (v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v21 = v34;
  v22 = v35;
  *v20 = v40;
  v20[1] = v22;
  v24 = v32;
  v23 = v33;
  v20[2] = v21;
  v20[3] = v23;
  v25 = v31;
  v20[4] = v24;
  v20[5] = v25;

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v41 = sub_1D72583DC();
  v42 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v37, v14);
  v27 = v42;
  v18[2] = v41;
  v18[3] = v27;
  v41 = v40;
  v42 = v22;
  v43 = v21;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  sub_1D692133C(v19, &v41, 0xD00000000000001ALL, 0x80000001D73C47E0, v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl);
  (*(v39 + 8))(v19, v38);

  swift_unknownObjectRelease();

  return v18;
}

uint64_t SportsLineScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsLineScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsLineScoreDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C();
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D0BC(0, &qword_1EC881A58, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8C7E4();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v29, v30);
    sub_1D5F8E7DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D5F8D650(&unk_1EDF04AB0, &unk_1EDF065B0);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v49;
    v52 = 4;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v49;
    v52 = 5;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 6;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

void sub_1D5F8C77C()
{
  if (!qword_1EDF17698)
  {
    sub_1D5B5534C(255, &qword_1EDF1A870);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17698);
    }
  }
}

unint64_t sub_1D5F8C7E4()
{
  result = qword_1EC881A60;
  if (!qword_1EC881A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A60);
  }

  return result;
}

uint64_t sub_1D5F8C838(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F8C880()
{
  result = qword_1EC881A70;
  if (!qword_1EC881A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A70);
  }

  return result;
}

unint64_t sub_1D5F8C8D4()
{
  result = qword_1EDF0A160;
  if (!qword_1EDF0A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A160);
  }

  return result;
}

uint64_t SportsLineScoreDataVisualization.encode(to:)(void *a1)
{
  v2 = sub_1D725ABEC();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D088(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D0BC(0, &qword_1EC881A78, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8C7E4();
  v16 = v11;
  v17 = v39;
  sub_1D7264B5C();
  LOBYTE(v40) = 0;
  v18 = v38;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v12 + 8))(v15, v16);
  }

  v20 = v37;
  v36 = v15;
  v38 = v16;
  v21 = v12;
  v40 = *(v17 + 48);
  v22 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v2, qword_1EDF17E38);
  v24 = (*(v20 + 16))(v5, v23, v2);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v36 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870);
  swift_getKeyPath();
  sub_1D725BF6C();
  sub_1D5F8C77C();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  LOBYTE(v40) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C);
  sub_1D72643BC();
  sub_1D5F8E850(v9, sub_1D5F8D088);
  LOBYTE(v40) = 2;
  v27 = sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
  v28 = v39;
  sub_1D726443C();
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources);
  v46 = 3;
  sub_1D5F8E7DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D5F8D650(&qword_1EDF04AC0, &qword_1EDF065C0);
  sub_1D726443C();
  v37 = v27;
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);
  v46 = 4;
  sub_1D5B49CBC(0, &qword_1EC881A80);
  sub_1D5F8D714(&qword_1EC881A88, &qword_1EC881A80, &type metadata for SportsEventRoster, sub_1D5F8D78C);

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = 5;
  sub_1D5F8B638(v40, v29);
  sub_1D5B49CBC(0, &qword_1EC899360);
  v34 = v36;
  v35 = v38;
  sub_1D5F8D714(&qword_1EC881AA0, &qword_1EC899360, &type metadata for SportsDataVisualizationConfig, sub_1D5F8D7E0);
  sub_1D726443C();
  sub_1D5F8BBC8(v40, v41);
  LOBYTE(v40) = 6;
  sub_1D72643FC();
  LOBYTE(v40) = 7;
  sub_1D726443C();
  return (*(v21 + 8))(v34, v35);
}

void sub_1D5F8D0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F8C7E4();
    v7 = a3(a1, &type metadata for SportsLineScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F8D148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F8E790();
  *a1 = result;
  return result;
}

void sub_1D5F8D178(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xEA00000000007265;
  v6 = 0x696669746E656469;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0x726574736F72;
  if (v2 != 4)
  {
    v7 = 0x6769666E6F63;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6C72556465626D65;
  if (v2 != 2)
  {
    v9 = 0x53617461446C7275;
    v8 = 0xEE0073656372756FLL;
  }

  if (*v1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1D5F8D28C()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x696669746E656469;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x726574736F72;
  if (v1 != 4)
  {
    v4 = 0x6769666E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C72556465626D65;
  if (v1 != 2)
  {
    v5 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
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

uint64_t sub_1D5F8D39C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F8E790();
  *a1 = result;
  return result;
}

uint64_t sub_1D5F8D3C4(uint64_t a1)
{
  v2 = sub_1D5F8C7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8D400(uint64_t a1)
{
  v2 = sub_1D5F8C7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsLineScoreDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsLineScoreDataVisualization.__deallocating_deinit()
{
  SportsLineScoreDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D5F8D578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsLineScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsLineScoreDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F8D624(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F8D650(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F8E7DC(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D5F8C838(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F8D714(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49CBC(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F8D78C()
{
  result = qword_1EC881A90;
  if (!qword_1EC881A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A90);
  }

  return result;
}

unint64_t sub_1D5F8D7E0()
{
  result = qword_1EDF0A170;
  if (!qword_1EDF0A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A170);
  }

  return result;
}

uint64_t type metadata accessor for SportsLineScoreDataVisualization()
{
  result = qword_1EDF1E898;
  if (!qword_1EDF1E898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F8D888()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5F8D9BC()
{
  result = qword_1EC881AB0;
  if (!qword_1EC881AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AB0);
  }

  return result;
}

unint64_t sub_1D5F8DA14()
{
  result = qword_1EC881AB8;
  if (!qword_1EC881AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AB8);
  }

  return result;
}

unint64_t sub_1D5F8DA6C()
{
  result = qword_1EC881AC0;
  if (!qword_1EC881AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AC0);
  }

  return result;
}

void *sub_1D5F8DAC0(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v114 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v169 = a1[6];
  v170 = v17;
  v171 = a1[8];
  v172 = *(a1 + 18);
  v18 = a1[3];
  v165 = a1[2];
  v166 = v18;
  v19 = a1[5];
  v167 = a1[4];
  v168 = v19;
  v20 = a1[1];
  v163 = *a1;
  v164 = v20;
  if (a2)
  {
    v133 = v16;
    v134 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v144 = &v106 - v14;
    sub_1D5F8E7DC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v106 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5F8E7DC(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8();
    v136 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v131 = *(v25 + 80);
    v132 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v107 = v28;
    v130 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 4);
    v30 = *(a2 + 5);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v110 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v128 = *(v36 + 56);
    v129 = v35;
    v127 = v36 + 56;
    v128(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v144;
    v125 = *(v5 + 16);
    v126 = v5 + 16;
    v125(v144, &v110[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl], v4);
    v142 = v5;
    v42 = *(v5 + 56);
    v135 = v4;
    v43 = v4;
    v44 = v110;
    v123 = v42;
    v124 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v109 = v29;
    v137 = v26;
    v143 = v40;
    v144 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v145 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v145;
        v122 = v45 & 0xC000000000000001;
        v50 = 2 * v137;
        v117 = 3 * v137;
        v116 = (v142 + 48);
        v113 = (v142 + 32);
        v111 = v45 & 0xFFFFFFFFFFFFFF8;
        v112 = (v142 + 8);
        v115 = xmmword_1D7279970;
        v121 = xmmword_1D7287CC0;
        v119 = v46;
        v120 = v45;
        v118 = 2 * v137;
        while (!__OFADD__(v48, 1))
        {
          v141 = v49;
          v142 = v48;
          v140 = v48 + 1;
          if (v122)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v111 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v130;
          v53 = swift_allocObject();
          *(v53 + 16) = v115;
          v138 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v57 = v33;
          v58 = v33;
          v59 = v144;
          (v144)(v54, 0, 1, v57);
          v60 = v51[4];
          v61 = v51[5];

          v62 = v137;
          sub_1D711F844(7955787, 0xE300000000000000, v60, v61, &v54[v137]);
          v59(&v54[v62], 0, 1, v58);
          v63 = &v54[v50];
          v139 = v51;
          v64 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v65 = v133;
          v66 = v135;
          v44 = v125;
          v125(v133, v64, v135);
          v123(v65, 0, 1, v66);
          v67 = v134;
          sub_1D5EB84C0(v65, v134);
          if ((*v116)(v67, 1, v66) == 1)
          {
            sub_1D5F8E850(v65, sub_1D5B4D3E0);
            v128(&v63[*(v58 + 24)], 1, 1, v129);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v68 = &v63[*(v58 + 28)];
            *v68 = 0;
            *(v68 + 1) = 0;
            v68[16] = -1;
          }

          else
          {
            v69 = v114;
            (v44)(v114, v67, v66);
            sub_1D5F8E850(v65, sub_1D5B4D3E0);
            v70 = *(v58 + 24);
            (*v113)(&v63[v70], v69, v66);
            v71 = v129;
            swift_storeEnumTagMultiPayload();
            v128(&v63[v70], 0, 1, v71);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v72 = &v63[*(v58 + 28)];
            *v72 = 0;
            *(v72 + 1) = 0;
            v72[16] = -1;
            (*v112)(v67, v66);
          }

          v33 = v58;
          (v144)(v63, 0, 1, v58);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v138, v161);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v152 + 1) = &type metadata for FormatInspectionGroup;
          *&v153 = &off_1F518B2C0;
          v73 = swift_allocObject();
          *&v151 = v73;

          *(v73 + 48) = v162;
          v74 = v161[1];
          *(v73 + 16) = v161[0];
          *(v73 + 32) = v74;
          v145 = v141;
          v76 = *(v141 + 16);
          v75 = *(v141 + 24);
          v45 = v120;
          if (v76 >= v75 >> 1)
          {
            sub_1D6997EC0((v75 > 1), v76 + 1, 1);
          }

          v77 = *(&v152 + 1);
          v78 = v153;
          v79 = __swift_mutable_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
          v80 = MEMORY[0x1EEE9AC00](v79, v79);
          v82 = &v106 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v83 + 16))(v82, v80);
          sub_1D5BD0BE4(v76, v82, &v145, v77, v78);
          __swift_destroy_boxed_opaque_existential_1(&v151);
          v49 = v145;
          v48 = v142 + 1;
          v50 = v118;
          if (v140 == v119)
          {
            v44 = v110;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v137;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v85 = sub_1D5F62BFC(v49);

      v86 = sub_1D7073500(v85);

      v87 = v109;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v86, 0, 0, &v109[v50]);
      (v144)(&v87[v50], 0, 1, v33);
      v88 = &v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
      v89 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8];
      if (v89)
      {
        v90 = *v88;
      }

      else
      {
        v90 = 0;
      }

      v91 = 3 * v137;
      sub_1D5F8E7DC(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v92 = swift_initStackObject();
      *(v92 + 16) = v106;
      v157 = v169;
      v158 = v170;
      v159 = v171;
      v160 = v172;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v151 = v163;
      v152 = v164;
      v93 = v88[1];
      v94 = v88[2];
      v95 = v88[3];
      v96 = v88[4];
      v97 = v88[5];
      v145 = *v88;
      v146 = v93;
      v147 = v94;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      sub_1D5F8B638(v145, v93);
      v98 = sub_1D6924F88(&v151, &v145);
      sub_1D5F8BBC8(v145, v146);
      *(v92 + 56) = &type metadata for FormatInspection;
      *(v92 + 64) = &off_1F51E3FD0;
      *(v92 + 32) = v98;
      v99 = sub_1D5F62BFC(v92);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v92 + 32);
      v100 = sub_1D7073500(v99);

      v101 = v109;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v100, v90, v89, &v109[v91]);
      (v144)(&v101[v91], 0, 1, v33);
      sub_1D6795150(0x6F635320656E694CLL, 0xEA00000000006572, 0, 0, v107, &v151);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v102 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v102 + 64) = &off_1F518B2C0;
      v103 = swift_allocObject();
      *(v102 + 32) = v103;
      *(v103 + 48) = v153;
      v104 = v152;
      *(v103 + 16) = v151;
      *(v103 + 32) = v104;
      v105 = sub_1D7073500(v102);
      swift_setDeallocating();
      sub_1D5F8E850(v102 + 32, sub_1D5E4F358);

      return v105;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v84);
  }

  return result;
}

uint64_t sub_1D5F8E790()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1D5F8E7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F8E840(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1D5C30618(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5F8E850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLayoutViewRouterError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F8E928()
{
  result = qword_1EC881AC8;
  if (!qword_1EC881AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AC8);
  }

  return result;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatIssueCoverNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatIssueCoverNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

__n128 FormatIssueCoverNodeLayoutAttributes.issueCoverViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D5F8EABC()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v2 = *(v1 + 184);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];

    sub_1D6998504(0, v3, 0);
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1D6998504((v8 > 1), v5 + 1, 1);
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v4;
}

unint64_t sub_1D5F8EBC4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656C797473;
    v7 = 0xD00000000000001ELL;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x656D617266;
    v3 = 0x676E697A69736572;
    if (a1 != 4)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x6E65644965646F6ELL;
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
}

uint64_t sub_1D5F8ED58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F901B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F8ED80(uint64_t a1)
{
  v2 = sub_1D5F8F38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8EDBC(uint64_t a1)
{
  v2 = sub_1D5F8F38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssueCoverNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.__deallocating_deinit()
{
  FormatIssueCoverNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatIssueCoverNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5F8FBE8(0, &qword_1EC881AD0, sub_1D5F8F38C, &type metadata for FormatIssueCoverNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8F38C();
  sub_1D7264B5C();
  LOBYTE(v18) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_1D72643FC();
    LOBYTE(v18) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v18 = *(v3 + 64);
    v19 = v12;
    LOBYTE(v23) = 3;
    type metadata accessor for CGRect(0);
    sub_1D5F90574(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v18 = *(v3 + 96);
    LOBYTE(v23) = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v18) = 5;
    sub_1D726442C();
    *&v18 = *(v3 + 112);
    LOBYTE(v23) = 6;
    sub_1D5EB1500(v18);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v18);
    LOBYTE(v18) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v18 = *(v3 + 128);
    BYTE8(v18) = v13;
    LOBYTE(v23) = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    v23 = *(v3 + 144);
    v22 = 9;
    type metadata accessor for FormatIssueCoverNodeStyle();
    sub_1D5F90574(&qword_1EDF0C2D0, 255, type metadata accessor for FormatIssueCoverNodeStyle);
    sub_1D72643BC();
    v14 = *(v3 + 168);
    v18 = *(v3 + 152);
    v19 = v14;
    v15 = *(v3 + 200);
    v20 = *(v3 + 184);
    v21 = v15;
    v17 = 10;
    sub_1D5EA5368();
    sub_1D726443C();
    *&v18 = *(v3 + 216);
    v17 = 11;
    sub_1D5F8FBE8(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D5F8FCA4(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5F8F38C()
{
  result = qword_1EC881AD8;
  if (!qword_1EC881AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AD8);
  }

  return result;
}

unint64_t sub_1D5F8F3E0()
{
  result = qword_1EC881AE0;
  if (!qword_1EC881AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AE0);
  }

  return result;
}

unint64_t sub_1D5F8F434()
{
  result = qword_1EDF0AFC0;
  if (!qword_1EDF0AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFC0);
  }

  return result;
}

unint64_t sub_1D5F8F488()
{
  result = qword_1EC881AF8;
  if (!qword_1EC881AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AF8);
  }

  return result;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatIssueCoverNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D5F8FBE8(0, &qword_1EC881B00, sub_1D5F8F38C, &type metadata for FormatIssueCoverNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8F38C();
  v19 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v17;
    LOBYTE(v21) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v21) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v21) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    LOBYTE(v20) = 3;
    sub_1D5F90574(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v22;
    *(v1 + 64) = v21;
    *(v1 + 80) = v13;
    LOBYTE(v20) = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v21;
    LOBYTE(v21) = 5;
    *(v1 + 104) = sub_1D72642FC();
    LOBYTE(v20) = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v21;
    LOBYTE(v21) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    LOBYTE(v20) = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v21);
    *(v1 + 128) = v21;
    *(v1 + 136) = v14;
    type metadata accessor for FormatIssueCoverNodeStyle();
    LOBYTE(v20) = 9;
    sub_1D5F90574(&qword_1EDF0C2C8, 255, type metadata accessor for FormatIssueCoverNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v21;
    v26 = 10;
    sub_1D5EA5310();
    sub_1D726431C();
    v15 = v22;
    *(v1 + 152) = v21;
    *(v1 + 168) = v15;
    v16 = v24;
    *(v1 + 184) = v23;
    *(v1 + 200) = v16;
    sub_1D5F8FBE8(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v25 = 11;
    sub_1D5F8FCA4(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v19, v18);
    *(v1 + 216) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D5F8FBE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5F8FC50()
{
  result = qword_1EC881B08;
  if (!qword_1EC881B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B08);
  }

  return result;
}

uint64_t sub_1D5F8FCA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F8FBE8(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F8FD48()
{
  result = qword_1EC881B18;
  if (!qword_1EC881B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B18);
  }

  return result;
}

double sub_1D5F8FE08()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_1D5F8FF30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatIssueCoverNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D5F8FFAC(uint64_t a1, uint64_t a2)
{
  sub_1D5F90574(&qword_1EC881B58, a2, type metadata accessor for FormatIssueCoverNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D5F900AC()
{
  result = qword_1EC881B40;
  if (!qword_1EC881B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B40);
  }

  return result;
}

unint64_t sub_1D5F90104()
{
  result = qword_1EC881B48;
  if (!qword_1EC881B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B48);
  }

  return result;
}

unint64_t sub_1D5F9015C()
{
  result = qword_1EC881B50;
  if (!qword_1EC881B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B50);
  }

  return result;
}

uint64_t sub_1D5F901B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C48C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D5F90574(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t URLHandlerPattern.Base.init(builder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

int *FormatArrangementCuration.init(content:subtype:allowHeroCuration:scoringContext:headlines:recipes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a5;
  sub_1D5F906A0(a1, a8);
  result = type metadata accessor for FormatArrangementCuration();
  v16 = (a8 + result[9]);
  *v16 = a2;
  v16[1] = a3;
  *(a8 + result[10]) = a4;
  *(a8 + result[11]) = v14;
  *(a8 + result[12]) = a6;
  *(a8 + result[13]) = a7;
  return result;
}

uint64_t sub_1D5F906A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5F9071C()
{
  type metadata accessor for FormatContent(319);
  if (v0 <= 0x3F)
  {
    sub_1D5B9F0A4(319, &qword_1EDF3C810, sub_1D5B5D6A0);
    if (v1 <= 0x3F)
    {
      sub_1D5B9F0A4(319, &qword_1EDF1AE20, sub_1D5B7AF6C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s8NewsFeed26FormatTextAdjustmentMetricV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[16];
  v4 = a2[16];
  if (_s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(*(a1 + 1), *(a2 + 1)))
  {
    return v3 ^ v4 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5F909A8(uint64_t a1)
{
  result = sub_1D5F909D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F909D0()
{
  result = qword_1EC881B60;
  if (!qword_1EC881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B60);
  }

  return result;
}

unint64_t sub_1D5F90A64()
{
  result = qword_1EDF23178;
  if (!qword_1EDF23178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23178);
  }

  return result;
}

unint64_t sub_1D5F90AB8()
{
  result = qword_1EDF0B470;
  if (!qword_1EDF0B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B470);
  }

  return result;
}

unint64_t sub_1D5F90B0C()
{
  result = qword_1EC881B68;
  if (!qword_1EC881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B68);
  }

  return result;
}

unint64_t sub_1D5F90B64()
{
  result = qword_1EC881B70;
  if (!qword_1EC881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B70);
  }

  return result;
}

unint64_t sub_1D5F90BB8(uint64_t a1)
{
  result = sub_1D5F90BE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F90BE0()
{
  result = qword_1EC881B78;
  if (!qword_1EC881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B78);
  }

  return result;
}

unint64_t sub_1D5F90C74()
{
  result = qword_1EDF304B0;
  if (!qword_1EDF304B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304B0);
  }

  return result;
}

unint64_t sub_1D5F90CC8()
{
  result = qword_1EDF113B0;
  if (!qword_1EDF113B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113B0);
  }

  return result;
}

unint64_t sub_1D5F90D20()
{
  result = qword_1EC881B80;
  if (!qword_1EC881B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B80);
  }

  return result;
}

unint64_t sub_1D5F90D74(uint64_t a1)
{
  result = sub_1D5F90D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F90D9C()
{
  result = qword_1EC881B88;
  if (!qword_1EC881B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B88);
  }

  return result;
}

uint64_t sub_1D5F90E30(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F90E84()
{
  result = qword_1EDF233B0;
  if (!qword_1EDF233B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233B0);
  }

  return result;
}

unint64_t sub_1D5F90ED8()
{
  result = qword_1EDF0B570;
  if (!qword_1EDF0B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B570);
  }

  return result;
}

uint64_t FormatQueryParameter.name.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static FormatQueryParameter.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {
    v5 = *(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24);
    if (v5 || (sub_1D72646CC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1D5F91020(uint64_t a1)
{
  result = sub_1D5F91048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F91048()
{
  result = qword_1EC881B90;
  if (!qword_1EC881B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B90);
  }

  return result;
}

uint64_t sub_1D5F9109C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

unint64_t sub_1D5F91128(void *a1)
{
  a1[1] = sub_1D5C6838C();
  a1[2] = sub_1D5C683E0();
  result = sub_1D5F91160();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F91160()
{
  result = qword_1EC881B98;
  if (!qword_1EC881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B98);
  }

  return result;
}

unint64_t sub_1D5F91238()
{
  result = qword_1EC881BA0;
  if (!qword_1EC881BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881BA0);
  }

  return result;
}

uint64_t sub_1D5F9128C()
{
  sub_1D7264A0C();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F91324()
{
  sub_1D7264A0C();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

unint64_t sub_1D5F9149C()
{
  result = qword_1EC881BA8[0];
  if (!qword_1EC881BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC881BA8);
  }

  return result;
}

uint64_t static FormatCodingEmptyFileReferenceCollectionStrategy.defaultValue.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for FormatFileReference();
  v2 = sub_1D726275C();

  return FormatFileReferenceCollection.init(references:)(v2, a1);
}

BOOL static FormatCodingEmptyFileReferenceCollectionStrategy.shouldEncode(wrappedValue:)()
{
  type metadata accessor for FormatFileReference();
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D7262CCC() & 1) == 0;
}

uint64_t sub_1D5F915E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Commands.UserActions.report.getter()
{
  if (qword_1EDF3B040 != -1)
  {
    swift_once();
  }
}

uint64_t FormatCommandActionValue.deinit()
{

  v1 = *(*v0 + 104);
  v2 = type metadata accessor for FormatCommandActionValue.DefaultValue();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FormatCommandActionValue.__deallocating_deinit()
{
  FormatCommandActionValue.deinit();

  return swift_deallocClassInstance();
}

uint64_t static FormatCommandActionValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24);
  if (v4 || (sub_1D72646CC()) && (type metadata accessor for FormatCommandActionValue.CaseValue(), swift_getWitnessTable(), (sub_1D726280C()))
  {
    v5 = sub_1D7261FBC();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D5F918F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v12 = *a1;
  v13 = v3;
  v14 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v9 = *a2;
  v10 = v5;
  v11 = v6;
  sub_1D5D03180(v12, v3, v4);
  sub_1D5D03180(v9, v5, v6);
  v7 = _s8NewsFeed18FormatCommandStateO2eeoiySbAC_ACtFZ_0(&v12, &v9);
  sub_1D5D07BA8(v9, v10, v11);
  sub_1D5D07BA8(v12, v13, v14);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandActionValue.CaseValue();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D5F919E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F91AC8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F91B48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F91BD0(uint64_t a1)
{
  v2 = *(a1 + 1);
  v10 = *a1;
  v3 = sub_1D70B50DC(&v10);
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v6 = [objc_opt_self() effectForBlurEffect:v4 style:v2];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v8 = [v5 contentView];
  [v8 addSubview_];

  *(v1 + 16) = v5;
  *(v1 + 24) = v7;
  return v1;
}

id sub_1D5F91CE8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(v5 + 16);
  sub_1D726344C();
  if (*(v5 + 24))
  {
    sub_1D726344C();
  }

  if (v12 <= 0xFD)
  {
    if ((v12 & 0x80) != 0)
    {
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      Height = CGRectGetHeight(v24);
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      Width = CGRectGetWidth(v25);
      if (Width >= Height)
      {
        Width = Height;
      }

      v15 = Width * 0.5;
      v10 = &unk_1F50F6F88;
      LOBYTE(v12) = v11;
      v16 = qword_1F50F6F98;
      if (qword_1F50F6F98)
      {
LABEL_9:
        v17 = 0;
        v18 = 32;
        do
        {
          v19 = qword_1D7288BB8[*(v10 + v18)];
          if ((v19 & ~v17) == 0)
          {
            v19 = 0;
          }

          v17 |= v19;
          ++v18;
          --v16;
        }

        while (v16);

        if (v17)
        {
          if ((v17 & 2) != 0)
          {
            v20 = 3;
            if ((v17 & 4) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v20 = 1;
            if ((v17 & 4) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else if ((v17 & 2) != 0)
        {
          v20 = 2;
          if ((v17 & 4) == 0)
          {
LABEL_24:
            if ((v17 & 8) != 0)
            {
              v20 |= 8uLL;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v20 = 0;
          if ((v17 & 4) == 0)
          {
            goto LABEL_24;
          }
        }

        v20 |= 4uLL;
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *&v11;
      sub_1D5ED34C4(v11, v10, v12);
      v16 = v10[2];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v20 = 0;
LABEL_26:
    [v13 _setCornerRadius_continuous_maskedCorners_];
    return sub_1D726348C();
  }

  return [v13 _setCornerRadius_continuous_maskedCorners_];
}

uint64_t FormatVisualEffectContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18PuzzleLaunchActionO(uint64_t a1)
{
  if ((*(a1 + 19) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 19) & 3;
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D5F91FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 20))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 19);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F92034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 19) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5F92078(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 18) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 19) = a2;
  return result;
}

uint64_t static FormatRange.== infix(_:_:)()
{
  if (sub_1D7261FBC())
  {
    type metadata accessor for FormatRange();
    v0 = sub_1D7261FBC();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1D5F921B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a3 - 8) + 32);
  v7(a4, a1);
  v8 = type metadata accessor for FormatRange();
  return (v7)(a4 + *(v8 + 52), a2, a3);
}

uint64_t FormatRange.closedRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  v16 = *(a1 + 52);
  v17 = *(a1 + 32);
  result = sub_1D7261F7C();
  if (result)
  {
    v19 = *(v6 - 8);
    v20 = v19;
    v27[0] = v16;
    v21 = a2;
    v22 = *(v19 + 16);
    v27[1] = v17;
    v22(v15, v3, v6);
    v22(&v15[*(TupleTypeMetadata2 + 48)], v3 + v27[0], v6);
    (*(v8 + 16))(v11, v15, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    v27[0] = *(v20 + 32);
    (v27[0])(v21, v11, v6);
    v24 = *(v20 + 8);
    v24(&v11[v23], v6);
    (*(v8 + 32))(v11, v15, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = sub_1D7261FAC();
    (v27[0])(v21 + *(v26 + 36), &v11[v25], v6);
    return (v24)(v11, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F9252C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F92568(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F925E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

NewsFeed::SavingCommandState_optional __swiftcall SavingCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_SavingCommandState_notSaved;
  }

  else
  {
    v2.value = NewsFeed_SavingCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SavingCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465766153746F6ELL;
  }

  else
  {
    return 0x6465766173;
  }
}

uint64_t sub_1D5F926E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465766153746F6ELL;
  }

  else
  {
    v3 = 0x6465766173;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465766153746F6ELL;
  }

  else
  {
    v5 = 0x6465766173;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5F92784()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F92804()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F92870()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F928EC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D5F9294C(uint64_t *a1@<X8>)
{
  v2 = 0x6465766173;
  if (*v1)
  {
    v2 = 0x6465766153746F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5F92988(uint64_t a1)
{
  v2 = sub_1D5F94510();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t SavingCommandState.title(context:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 0x657069636552;
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = 0x79726F7453;
  }

  v3 = 0xE600000000000000;
  if ((*(a1 + 8) & 1) == 0)
  {
    v3 = 0xE500000000000000;
  }

  if (v1 == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v1 == 255)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1DA6F9910](v4, v5);
  v6 = sub_1D726210C();
  v8 = v7;

  MEMORY[0x1DA6F9910](v6, v8);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D725811C();

  return v11;
}

uint64_t SaveCommandContext.init(data:origin:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for SaveCommandContext() + 28);
  result = (*(*(a3 - 8) + 32))(a4, a1, a3);
  *(a4 + v8) = a2;
  return result;
}

uint64_t sub_1D5F92D50(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v4 = *a2;
  v5 = v2;
  return SavingCommandState.title(context:)(&v4);
}

id sub_1D5F92D8C(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;

  return v2;
}

uint64_t static SwipeAction.save(headline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1D725CC8C();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725CC9C();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F93C28();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D5F945D0(0, &unk_1EDF3B620, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1D5F945D0(0, &qword_1EDF171C8, MEMORY[0x1E69D7AD8]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v26 = a1;
  v27 = 1024;
  v25 = 1;
  sub_1D5B66B90();

  swift_unknownObjectRetain();
  sub_1D725DA9C();
  v24 = 1;
  sub_1D725DABC();
  v23 = 1;
  sub_1D725DAFC();
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7628], v19);
  (*(v20 + 104))(v6, *MEMORY[0x1E69D7620], v21);
  return sub_1D725CCBC();
}

id sub_1D5F931D0()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

uint64_t sub_1D5F93210(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;
  v3 = [objc_opt_self() whiteColor];
  v4 = _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v2, v3);

  return v4;
}

void sub_1D5F932EC(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = sub_1D726207C();
      v8 = v7;

      if (v6 == 0x6C7070612E6D6F63 && v8 == 0xEE007377656E2E65)
      {
      }

      else
      {
        sub_1D72646CC();
      }
    }

    type metadata accessor for Localized();
    v11 = [v3 bundleForClass_];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
  }

  v12 = sub_1D725811C();
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
}

void sub_1D5F9356C(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D725811C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1D5F93694(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;

  return sub_1D725DFDC();
}

uint64_t static KeyCommandItem.save(headline:)()
{
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  return sub_1D725D15C();
}

uint64_t static KeyCommandItem.save(recipe:)(void *a1)
{
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v2 = a1;
  return sub_1D725D15C();
}

uint64_t SaveCommandOrigin.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(uint64_t a1)
{
  sub_1D5F945D0(0, &qword_1EDF3B548, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5F945D0(0, &unk_1EDF3B620, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D5F94634();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  sub_1D5F946C4(v8, v9);
  sub_1D5B68A1C(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725E95C();
  sub_1D725DABC();
  sub_1D725DF0C();
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3CC();
}

void sub_1D5F93C28()
{
  if (!qword_1EDF17130)
  {
    sub_1D5B66B90();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17130);
    }
  }
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE4save8headlineACSo19FCHeadlineProviding_p_tFZ_0()
{
  sub_1D5F94564();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D5F93C28();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  sub_1D726203C();
  sub_1D5B66B90();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE4save6recipeACSo8FCRecipeC_tFZ_0(void *a1)
{
  sub_1D5F94564();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5F93C28();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v6 = a1;
  sub_1D726203C();
  sub_1D5B66B90();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

unint64_t sub_1D5F9407C()
{
  result = qword_1EDF2D100;
  if (!qword_1EDF2D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D100);
  }

  return result;
}

unint64_t sub_1D5F940D8()
{
  result = qword_1EC881C38;
  if (!qword_1EC881C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C38);
  }

  return result;
}

uint64_t sub_1D5F94168(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFB)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 4;
      v17 = v15 - 4;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1D5F942D8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFB)
      {
        *(result + v8) = a2 + 4;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_1D5F94510()
{
  result = qword_1EDF2D0F8;
  if (!qword_1EDF2D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D0F8);
  }

  return result;
}

void sub_1D5F94564()
{
  if (!qword_1EC881C40)
  {
    sub_1D725DFEC();
    sub_1D5B66B90();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881C40);
    }
  }
}

void sub_1D5F945D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B66B90();
    v7 = a3(a1, &type metadata for SavingCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5F94634()
{
  if (!qword_1EC881C50)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    sub_1D5B66B90();
    v0 = sub_1D725E96C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881C50);
    }
  }
}

id sub_1D5F946C4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_1D5F946D0()
{
  if (!qword_1EDF3B420)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    v0 = sub_1D725F79C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B420);
    }
  }
}

void sub_1D5F9474C()
{
  if (!qword_1EDF3B7C8)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    sub_1D5B66B90();
    v0 = sub_1D725CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B7C8);
    }
  }
}

uint64_t sub_1D5F947E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FeedSponsorshipBannerAd();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = *v2;
  sub_1D67524A0(*(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v8);
  if (v3)
  {

    v18 = sub_1D72608BC();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  else
  {
    v19 = *(v5 + 20);
    v20 = sub_1D72608BC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v12, &v8[v19], v20);
    sub_1D5CF27AC(v8, type metadata accessor for FeedSponsorshipBannerAd);
    (*(v21 + 56))(v12, 0, 1, v20);
  }

  sub_1D5CEB57C(v12, v16);
  v24 = v17;
  sub_1D6311700(v16);
  sub_1D725BC1C();
  return sub_1D5CF27AC(v16, sub_1D5B49800);
}

uint64_t sub_1D5F94A50(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21[-v14];
  sub_1D67524A0(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v7);
  v16 = *(v4 + 20);
  v17 = sub_1D72608BC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v11, &v7[v16], v17);
  sub_1D5CF27AC(v7, type metadata accessor for FeedSponsorshipBannerAd);
  (*(v18 + 56))(v11, 0, 1, v17);
  sub_1D5CEB57C(v11, v15);
  v21[7] = a2;
  v19 = sub_1D6311700(v15);
  sub_1D5CF27AC(v15, sub_1D5B49800);
  return v19 & 1;
}

unint64_t sub_1D5F94CE4(uint64_t a1)
{
  result = sub_1D5F94D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F94D0C()
{
  result = qword_1EC881C58;
  if (!qword_1EC881C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C58);
  }

  return result;
}

unint64_t sub_1D5F94D60(void *a1)
{
  a1[1] = sub_1D5F94D98();
  a1[2] = sub_1D5F94DEC();
  result = sub_1D5F94E40();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F94D98()
{
  result = qword_1EDF1DF18;
  if (!qword_1EDF1DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF18);
  }

  return result;
}

unint64_t sub_1D5F94DEC()
{
  result = qword_1EDF076C8[0];
  if (!qword_1EDF076C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF076C8);
  }

  return result;
}

unint64_t sub_1D5F94E40()
{
  result = qword_1EC881C60;
  if (!qword_1EC881C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C60);
  }

  return result;
}

unint64_t sub_1D5F94EB4(uint64_t a1)
{
  result = sub_1D5F94EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F94EDC()
{
  result = qword_1EC881C68[0];
  if (!qword_1EC881C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC881C68);
  }

  return result;
}

unint64_t sub_1D5F94F30()
{
  result = qword_1EDF24860;
  if (!qword_1EDF24860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24860);
  }

  return result;
}

unint64_t sub_1D5F94F84()
{
  result = qword_1EDF0BFF8;
  if (!qword_1EDF0BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFF8);
  }

  return result;
}

uint64_t sub_1D5F94FF0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1D6BA20FC(v0[4], v2, v1);
  if ((v1 & 0x1000000000000000) != 0)
  {
    return sub_1D7263D3C();
  }

  v4 = v3 >> 16;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v9[0] = v2;
    v9[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    v6 = v9 + v4;
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v5 = sub_1D7263E5C();
    }

    v6 = (v5 + v4);
  }

  result = *v6;
  if (*v6 < 0)
  {
    v8 = (__clz(result ^ 0xFF) - 24);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        return ((result & 0xF) << 12) | ((v6[1] & 0x3F) << 6) | v6[2] & 0x3F;
      }

      else
      {
        return ((result & 0xF) << 18) | ((v6[1] & 0x3F) << 12) | ((v6[2] & 0x3F) << 6) | v6[3] & 0x3F;
      }
    }

    else if (v8 != 1)
    {
      return v6[1] & 0x3F | ((result & 0x1F) << 6);
    }
  }

  return result;
}

uint64_t sub_1D5F9510C(uint64_t result)
{
  if (result < 0)
  {
LABEL_37:
    __break(1u);
  }

  else if (result)
  {
    v2 = v1[2];
    v3 = v1[3];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = (v2 >> 59) & 1;
    if ((v3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v5) = 1;
    }

    v6 = 4 << v5;
    do
    {
      v7 = v1[4];
      if (4 * v4 <= v7 >> 14)
      {
        break;
      }

      if ((v1[4] & 0xCLL) == v6 || (v1[4] & 1) == 0)
      {
        if ((v1[4] & 0xCLL) == v6)
        {
          v18 = result;
          v7 = sub_1D6BA2080(v7, v2, v3);
          result = v18;
          if (v4 <= v7 >> 16)
          {
            goto LABEL_36;
          }
        }

        else if (v4 <= v7 >> 16)
        {
          goto LABEL_36;
        }

        if ((v7 & 1) == 0)
        {
          v16 = result;
          v9 = sub_1D6BA2208(v7, v2, v3);
          result = v16;
          v7 = v7 & 0xC | v9 & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v4 <= v7 >> 16)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v17 = result;
        v15 = sub_1D726218C();
        result = v17;
      }

      else
      {
        v10 = v7 >> 16;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v20[0] = v2;
          v20[1] = v3 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v20 + v10);
        }

        else
        {
          v11 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v2 & 0x1000000000000000) == 0)
          {
            v19 = result;
            v11 = sub_1D7263E5C();
            result = v19;
          }

          v12 = *(v11 + v10);
        }

        v13 = v12;
        v14 = __clz(v12 ^ 0xFF) - 24;
        if (v13 >= 0)
        {
          LOBYTE(v14) = 1;
        }

        v15 = ((v10 + v14) << 16) | 5;
      }

      v1[4] = v15;
      --result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_1D5F952D8(unint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v3;
  if (!v3)
  {
    return 1;
  }

  v4 = a2;
  v5 = 0;
  v6 = v2[4];
  v54 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a2 & 0xFFFFFFFFFFFFFFLL;
  while (1)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v9 = sub_1D7263D3C();
      v11 = v10;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v58 = a1;
        v59 = v55;
        v8 = &v58 + v5;
      }

      else
      {
        v7 = v54;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v7 = sub_1D7263E5C();
        }

        v8 = (v7 + v5);
      }

      v9 = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v37 = (__clz(v9 ^ 0xFF) - 24);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v9 = ((v9 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v9 = ((v9 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
          v11 = 4;
        }

        goto LABEL_16;
      }

      if (v37 == 1)
      {
LABEL_15:
        v11 = 1;
      }

      else
      {
        v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        v11 = 2;
      }
    }

LABEL_16:
    v12 = v2[2];
    v13 = v2[3];
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 >> 14 >= 4 * v14)
    {
      return 0;
    }

    v15 = v4;
    v16 = (v12 >> 59) & 1;
    if ((v13 & 0x1000000000000000) == 0)
    {
      LOBYTE(v16) = 1;
    }

    v17 = v6 & 0xC;
    v18 = 4 << v16;
    v19 = (v6 & 1) == 0 || v17 == v18;
    v20 = v19;
    if (v19)
    {
      break;
    }

    v22 = v6 >> 16;
    result = v6;
    if (v6 >> 16 >= v14)
    {
      goto LABEL_79;
    }

LABEL_36:
    if ((v13 & 0x1000000000000000) != 0)
    {
      v46 = v13;
      v51 = v12;
      v38 = v11;
      result = sub_1D7263D3C();
      v11 = v38;
      v13 = v46;
      v12 = v51;
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v58 = v12;
        v59 = v13 & 0xFFFFFFFFFFFFFFLL;
        v26 = &v58 + v22;
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v25 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v48 = v13;
          v53 = v12;
          v44 = v11;
          v25 = sub_1D7263E5C();
          v11 = v44;
          v13 = v48;
          v12 = v53;
        }

        v26 = (v25 + v22);
      }

      result = *v26;
      if (*v26 < 0)
      {
        v34 = (__clz(result ^ 0xFF) - 24);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            result = ((result & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          }

          else
          {
            result = ((result & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          }
        }

        else if (v34 != 1)
        {
          result = v26[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (v9 != result)
    {
      return 0;
    }

    if (v20)
    {
      if (v17 == v18)
      {
        v40 = v6;
        v41 = v12;
        v42 = v13;
        v43 = v11;
        result = sub_1D6BA2080(v40, v12, v13);
        v11 = v43;
        v12 = v41;
        v13 = v42;
        v6 = result;
        if (v14 <= result >> 16)
        {
          goto LABEL_81;
        }
      }

      else if (v14 <= v6 >> 16)
      {
        goto LABEL_81;
      }

      v4 = v15;
      if ((v6 & 1) == 0)
      {
        v50 = v12;
        v27 = v13;
        v28 = v11;
        v29 = sub_1D6BA2208(v6, v12, v13);
        v11 = v28;
        v12 = v50;
        v13 = v27;
        v6 = v6 & 0xC | v29 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v4 = v15;
      if (v14 <= v6 >> 16)
      {
        goto LABEL_80;
      }
    }

    v30 = v11;
    if ((v13 & 0x1000000000000000) != 0)
    {
      v6 = sub_1D726218C();
    }

    else
    {
      v31 = v6 >> 16;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v58 = v12;
        v59 = v13 & 0xFFFFFFFFFFFFFFLL;
        v33 = *(&v58 + v31);
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v32 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v32 = sub_1D7263E5C();
        }

        v33 = *(v32 + v31);
      }

      v35 = v33;
      v36 = __clz(v33 ^ 0xFF) - 24;
      if (v35 >= 0)
      {
        LOBYTE(v36) = 1;
      }

      v6 = ((v31 + v36) << 16) | 5;
    }

    v5 += v30;
    if (v5 >= v56)
    {
      return 1;
    }
  }

  result = v6;
  if (v17 == v18)
  {
    v47 = v2[3];
    v52 = v2[2];
    v39 = v11;
    result = sub_1D6BA2080(v6, v12, v13);
    v11 = v39;
    v13 = v47;
    v12 = v52;
  }

  v22 = result >> 16;
  if (result >> 16 < v14)
  {
    if ((result & 1) == 0)
    {
      v45 = v13;
      v49 = v12;
      v23 = v11;
      v24 = sub_1D6BA2208(result, v12, v13);
      v11 = v23;
      v13 = v45;
      v12 = v49;
      v22 = v24 >> 16;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1D5F95720(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v7 = v2[2];
  v6 = v2[3];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v80 = v8;
  v9 = v2[4];
  v76 = 4 * v8;
  if (4 * v8 <= v9 >> 14)
  {
LABEL_82:

    sub_1D5DF5BE4();
    swift_allocError();
    *v63 = v5;
    *(v63 + 8) = v4;
    *(v63 + 16) = 0;
    *(v63 + 24) = 10;

    return swift_willThrow();
  }

  else
  {
    v10 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = (v7 >> 59) & 1;
    v70 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v71 = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v72 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v73 = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = 0xE000000000000000;
    v77 = v6;
    v74 = v11;
    v75 = 4 << v12;
    v67 = v3;
LABEL_10:
    v69 = v14;
    if (v11)
    {
      v68 = v10;
      v15 = 0;
      while (1)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v21 = sub_1D7263D3C();
          v13 = v75;
          v6 = v77;
          v22 = v21;
          goto LABEL_23;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          v78 = v5;
          v79 = v71;
          v20 = &v78 + v15;
        }

        else
        {
          v19 = v70;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v19 = sub_1D7263E5C();
            v13 = v75;
            v6 = v77;
          }

          v20 = (v19 + v15);
        }

        v22 = *v20;
        if ((*v20 & 0x80000000) == 0)
        {
          break;
        }

        v41 = (__clz(v22 ^ 0xFF) - 24);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v22 = ((v22 & 0xF) << 12) | ((v20[1] & 0x3F) << 6) | v20[2] & 0x3F;
            v18 = 3;
          }

          else
          {
            v22 = ((v22 & 0xF) << 18) | ((v20[1] & 0x3F) << 12) | ((v20[2] & 0x3F) << 6) | v20[3] & 0x3F;
            v18 = 4;
          }
        }

        else
        {
          if (v41 == 1)
          {
            break;
          }

          v22 = v20[1] & 0x3F | ((v22 & 0x1F) << 6);
          v18 = 2;
        }

LABEL_23:
        if (v76 <= v9 >> 14)
        {

          sub_1D5DF5BE4();
          swift_allocError();
          *v64 = v5;
          *(v64 + 8) = v4;
          *(v64 + 16) = 0;
          *(v64 + 24) = 10;
          return swift_willThrow();
        }

        v23 = v7;
        v24 = v4;
        v25 = v5;
        v26 = v9 & 0xC;
        v27 = (v9 & 1) == 0 || v26 == v13;
        v28 = v27;
        if (v27)
        {
          v29 = v9;
          if (v26 == v13)
          {
            v59 = v18;
            v29 = sub_1D6BA2080(v9, v23, v77);
            v18 = v59;
            v13 = v75;
            v6 = v77;
          }

          v30 = v29 >> 16;
          if (v29 >> 16 >= v80)
          {
            goto LABEL_87;
          }

          if ((v29 & 1) == 0)
          {
            v31 = v18;
            v32 = sub_1D6BA2208(v29, v23, v77);
            v18 = v31;
            v13 = v75;
            v6 = v77;
            v30 = v32 >> 16;
          }
        }

        else
        {
          v30 = v9 >> 16;
          if (v9 >> 16 >= v80)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            return 0;
          }
        }

        if ((v6 & 0x1000000000000000) != 0)
        {
          v7 = v23;
          v57 = v18;
          v58 = sub_1D7263D3C();
          v18 = v57;
          v13 = v75;
          v6 = v77;
          if (v58 != v22)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if ((v6 & 0x2000000000000000) != 0)
          {
            v78 = v23;
            v79 = v73;
            v34 = &v78 + v30;
            v36 = *(&v78 + v30);
            if (*(&v78 + v30) < 0)
            {
              v37 = (__clz(v36 ^ 0xFF) - 24);
              if (v37 > 2)
              {
                if (v37 == 3)
                {
                  v42 = v34[1];
                  v43 = v34[2];
                  v44 = ((v36 & 0xF) << 12) | ((v42 & 0x3F) << 6);
                }

                else
                {
                  v47 = v34[1];
                  v48 = v34[2];
                  v43 = v34[3];
                  v44 = ((v36 & 0xF) << 18) | ((v47 & 0x3F) << 12) | ((v48 & 0x3F) << 6);
                }

                v36 = v44 & 0xFFFFFFC0 | v43 & 0x3F;
              }

              else
              {
LABEL_48:
                if (v37 != 1)
                {
                  v36 = v34[1] & 0x3F | ((v36 & 0x1F) << 6);
                }
              }
            }

LABEL_63:
            v7 = v23;
            if (v36 != v22)
            {
              goto LABEL_81;
            }

            goto LABEL_64;
          }

          v33 = v72;
          if ((v23 & 0x1000000000000000) == 0)
          {
            v66 = v18;
            v33 = sub_1D7263E5C();
            v18 = v66;
            v13 = v75;
            v6 = v77;
          }

          v34 = (v33 + v30);
          v35 = *(v33 + v30);
          v36 = *(v33 + v30);
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v37 = (__clz(v36 ^ 0xFF) - 24);
          if (v37 <= 2)
          {
            goto LABEL_48;
          }

          v7 = v23;
          if (v37 == 3)
          {
            v38 = v34[1];
            v39 = v34[2];
            v40 = ((v36 & 0xF) << 12) | ((v38 & 0x3F) << 6);
          }

          else
          {
            v45 = v34[1];
            v46 = v34[2];
            v39 = v34[3];
            v40 = ((v36 & 0xF) << 18) | ((v45 & 0x3F) << 12) | ((v46 & 0x3F) << 6);
          }

          if ((v40 & 0xFFFFFFC0 | v39 & 0x3F) != v22)
          {
LABEL_81:
            sub_1D5F94FF0();
            v78 = v68;
            v79 = v69;
            sub_1D72621BC();
            v10 = v78;
            v14 = v79;
            sub_1D5F9510C(1);
            v13 = v75;
            v6 = v77;
            v9 = v67[4];
            v5 = v25;
            v4 = v24;
            v11 = v74;
            if (v76 > v9 >> 14)
            {
              goto LABEL_10;
            }

            goto LABEL_82;
          }
        }

LABEL_64:
        if (v28)
        {
          if (v26 == v13)
          {
            v60 = v18;
            v61 = sub_1D6BA2080(v9, v7, v77);
            v18 = v60;
            v13 = v75;
            v6 = v77;
            v9 = v61;
          }

          v5 = v25;
          v4 = v24;
          v49 = v74;
          if (v80 <= v9 >> 16)
          {
            goto LABEL_89;
          }

          if ((v9 & 1) == 0)
          {
            v50 = v18;
            v51 = sub_1D6BA2208(v9, v7, v77);
            v18 = v50;
            v13 = v75;
            v6 = v77;
            v9 = v9 & 0xC | v51 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v5 = v25;
          v4 = v24;
          v49 = v74;
          if (v80 <= v9 >> 16)
          {
            goto LABEL_88;
          }
        }

        if ((v6 & 0x1000000000000000) != 0)
        {
          v16 = v18;
          v17 = sub_1D726218C();
          v18 = v16;
          v13 = v75;
          v6 = v77;
          v9 = v17;
        }

        else
        {
          v52 = v9 >> 16;
          if ((v6 & 0x2000000000000000) != 0)
          {
            v78 = v7;
            v79 = v73;
            v54 = *(&v78 + v52);
          }

          else
          {
            v53 = v72;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v62 = v18;
              v53 = sub_1D7263E5C();
              v18 = v62;
              v13 = v75;
              v6 = v77;
            }

            v54 = *(v53 + v52);
          }

          v55 = v54;
          v56 = __clz(v54 ^ 0xFF) - 24;
          if (v55 >= 0)
          {
            LOBYTE(v56) = 1;
          }

          v9 = ((v52 + v56) << 16) | 5;
        }

        v15 += v18;
        if (v15 >= v49)
        {
          return v68;
        }
      }

      v18 = 1;
      goto LABEL_23;
    }

    return 0;
  }
}

uint64_t sub_1D5F95D70(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[2] & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  v6 = 4 * v5;
  if ((4 * v5) <= v1[4] >> 14)
  {
LABEL_12:

    v14 = sub_1D72622EC();
    sub_1D5DF5BE4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = a1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  else
  {
    v2 = 0;
    v7 = a1 + 56;
    while (1)
    {
      v8 = sub_1D5F94FF0();
      if (*(a1 + 16))
      {
        v9 = v8;
        sub_1D7264A0C();
        sub_1D7264A3C();
        v10 = sub_1D7264A5C();
        v11 = -1 << *(a1 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          break;
        }
      }

LABEL_5:
      sub_1D5F94FF0();
      sub_1D72621BC();
      sub_1D5F9510C(1);
      if (v6 <= v1[4] >> 14)
      {
        goto LABEL_12;
      }
    }

    v13 = ~v11;
    while (*(*(a1 + 48) + 4 * v12) != v9)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  return v2;
}