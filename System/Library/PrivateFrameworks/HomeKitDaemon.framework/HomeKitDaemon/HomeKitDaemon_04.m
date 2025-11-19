uint64_t sub_22959B144()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);

  if (v0)
  {
    v6 = sub_22959BE10;
  }

  else
  {
    v6 = sub_22959B278;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22959B278()
{
  v1 = v0[34];
  do
  {
    sub_22957F1C4((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v2 = v0[24];
    v0[35] = v2;
    v3 = [v2 characteristics];
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v4 = sub_22A4DD83C();
    v0[36] = v4;

    if (v4 >> 62)
    {
      v20 = sub_22A4DE0EC();
      v0[37] = v20;
      if (v20)
      {
LABEL_5:
        v6 = 0;
        do
        {
          v7 = v0[36];
          if ((v7 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x22AAD13F0](v6);
          }

          else
          {
            if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v8 = *(v7 + 8 * v6 + 32);
          }

          v9 = v8;
          v0[38] = v8;
          v0[39] = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          if (v0[27])
          {
            v10 = 0;
            for (i = 0; i != v0[27]; ++i)
            {
              v12 = v0[26] + v10;
              v13 = *(v12 + 32);
              v14 = *(v12 + 40);

              v15 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v16)
              {
                if (v13 == v15 && v16 == v14)
                {

LABEL_33:
                  if (i < v0[27])
                  {
                    v40 = v0[25];
                    v41 = v0[28] + v10;
                    v42 = *(v41 + 32);
                    v43 = *(v41 + 40);
                    v0[40] = v43;
                    v44 = *(v40 + 24);
                    v45 = *(v40 + 32);

                    v46 = swift_task_alloc();
                    v0[41] = v46;
                    *v46 = v0;
                    v46[1] = sub_22959B790;

                    sub_22970E398(v42, v43, v44, v45);
                    return;
                  }

LABEL_42:
                  __break(1u);
LABEL_43:
                  __break(1u);
                  return;
                }

                v18 = sub_22A4DE60C();

                if (v18)
                {
                  goto LABEL_33;
                }
              }

              else
              {
              }

              v10 += 16;
            }
          }

          v6 = v0[39];
        }

        while (v6 != v0[37]);
        v2 = v0[35];
        v19 = v0[36];
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[37] = v5;
      if (v5)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    v21 = v0[30];
    v22 = v0[31] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    if (v22 == v21)
    {
      v47 = v0[1];

      v47();
      return;
    }

    v23 = v0[31];
    v0[31] = v23 + 1;
    v24 = v0[26];
    sub_22957F1C4(v0[29] + 40 * v23 + 72, (v0 + 12));
    v25 = swift_task_alloc();
    *(v25 + 16) = v0 + 12;
    v26 = sub_22959BFAC(sub_22959E3E4, v25, v24);
    LOBYTE(v24) = v27;
  }

  while ((v24 & 1) != 0);
  v28 = v0[27];
  v29 = v0[15];
  v30 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v29);
  if (v26 >= v28)
  {
    goto LABEL_43;
  }

  v31 = v0[25];
  v32 = v0[28] + 16 * v26;
  v33 = *(v32 + 32);
  v34 = *(v32 + 40);
  v0[32] = v34;
  v35 = *(v31 + 24);
  v36 = *(v31 + 32);
  v37 = *(v30 + 56);

  v48 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  v0[33] = v39;
  *v39 = v0;
  v39[1] = sub_22959B144;

  v48(v33, v34, v35, v36, v29, v30);
}

uint64_t sub_22959B790()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  v2[42] = v0;

  v5 = v2[40];
  if (v0)
  {
    v6 = v2[36];

    v7 = sub_22959BE74;
  }

  else
  {

    v7 = sub_22959B8D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_22959B8D4()
{
  v1 = *(v0 + 336);
LABEL_2:
  v2 = *(v0 + 312);
  if (v2 != *(v0 + 296))
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
LABEL_4:

  while (1)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    if (v6 == v5)
    {
      v28 = *(v0 + 8);

      v28();
      return;
    }

    v7 = *(v0 + 248);
    *(v0 + 248) = v7 + 1;
    v8 = *(v0 + 208);
    sub_22957F1C4(*(v0 + 232) + 40 * v7 + 72, v0 + 96);
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 96;
    v10 = sub_22959BFAC(sub_22959E3E4, v9, v8);
    LOBYTE(v8) = v11;

    if ((v8 & 1) == 0)
    {
      break;
    }

    sub_22957F1C4(v0 + 96, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 192);
      *(v0 + 280) = v4;
      v12 = [v4 characteristics];
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v13 = sub_22A4DD83C();
      *(v0 + 288) = v13;

      if (!(v13 >> 62))
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 296) = v14;
        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_4;
      }

      v15 = sub_22A4DE0EC();
      *(v0 + 296) = v15;
      if (!v15)
      {
        goto LABEL_4;
      }

LABEL_12:
      v2 = 0;
LABEL_13:
      v16 = *(v0 + 288);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x22AAD13F0](v2);
        goto LABEL_17;
      }

      if (v2 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 8 * v2 + 32);
LABEL_17:
        v18 = v17;
        *(v0 + 304) = v17;
        *(v0 + 312) = v2 + 1;
        if (!__OFADD__(v2, 1))
        {
          if (*(v0 + 216))
          {
            v19 = 0;
            for (i = 0; i != *(v0 + 216); ++i)
            {
              v21 = *(v0 + 208) + v19;
              v23 = *(v21 + 32);
              v22 = *(v21 + 40);

              v24 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v25)
              {
                if (v23 == v24 && v25 == v22)
                {

LABEL_38:
                  if (i < *(v0 + 216))
                  {
                    v41 = *(v0 + 200);
                    v42 = *(v0 + 224) + v19;
                    v43 = *(v42 + 32);
                    v44 = *(v42 + 40);
                    *(v0 + 320) = v44;
                    v45 = *(v41 + 24);
                    v46 = *(v41 + 32);

                    v47 = swift_task_alloc();
                    *(v0 + 328) = v47;
                    *v47 = v0;
                    v47[1] = sub_22959B790;

                    sub_22970E398(v43, v44, v45, v46);
                    return;
                  }

LABEL_44:
                  __break(1u);
LABEL_45:
                  __break(1u);
                  return;
                }

                v27 = sub_22A4DE60C();

                if (v27)
                {
                  goto LABEL_38;
                }
              }

              else
              {
              }

              v19 += 16;
            }
          }

          goto LABEL_2;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  v29 = *(v0 + 216);
  v30 = *(v0 + 120);
  v31 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), v30);
  if (v10 >= v29)
  {
    goto LABEL_45;
  }

  v32 = *(v0 + 200);
  v33 = *(v0 + 224) + 16 * v10;
  v34 = *(v33 + 32);
  v35 = *(v33 + 40);
  *(v0 + 256) = v35;
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  v38 = *(v31 + 56);

  v48 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 264) = v40;
  *v40 = v0;
  v40[1] = sub_22959B144;

  v48(v34, v35, v36, v37, v30, v31);
}

uint64_t sub_22959BE10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[34];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22959BE74()
{
  v1 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v2 = *(v0 + 336);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22959BEE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v4);
  v6 = (*(v5 + 48))(0x53555F6E65, 0xE500000000000000, v4, v5);
  if (v7)
  {
    if (v2 == v6 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_22A4DE60C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_22959BFAC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_22959C06C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_22A4DB7DC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22959C158(uint64_t result, uint64_t a2, uint64_t a3, void *a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  v16 = *result;
  v17 = *(result + 8);
  result = sub_229543DBC(*result, v17);
  if ((v18 & 1) == 0)
  {
    return result;
  }

  sub_2295404B0(*(a2 + 56) + 32 * result, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v103 = a5;
  v19 = v106;
  if (a3 && *(v106 + 16))
  {

    v20 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073);
    if (v21 & 1) != 0 && (sub_2295404B0(*(v19 + 56) + 32 * v20, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast()))
    {
      v95 = v106;
      v98 = v16;
      result = [a4 homes];
      if (!result)
      {
        __break(1u);
        goto LABEL_89;
      }

      v22 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v23 = sub_22A4DD83C();

      v94 = sub_2298699E8(v23);

      v24 = *v103;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v103 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_22958A794(0, *(v24 + 2) + 1, 1, v24);
        *v103 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v92 = sub_22958A794((v26 > 1), v27 + 1, 1, v24);
        v28 = v27 + 1;
        v24 = v92;
        *v103 = v92;
      }

      *(v24 + 2) = v28;
      v29 = &v24[40 * v27];
      *(v29 + 4) = v94;
      *(v29 + 5) = v95;
      v16 = v98;
      *(v29 + 6) = a3;
      *(v29 + 7) = v98;
      *(v29 + 8) = v17;
    }

    else
    {
    }
  }

  if (!a6 || !*(v19 + 16))
  {
LABEL_28:
    if (!a7)
    {
      goto LABEL_40;
    }

LABEL_29:
    if (!*(v19 + 16))
    {
      goto LABEL_40;
    }

    v42 = sub_229543DBC(0x656D614E6D6F6F52, 0xE900000000000073);
    if ((v43 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v42, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_40;
    }

    v97 = v106;
    v100 = v16;
    result = [a4 homes];
    if (result)
    {
      v44 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v45 = sub_22A4DD83C();

      v46 = sub_229595600(v45);

      v47 = sub_229869BE4(v46);

      if (v47[2])
      {
        v48 = *v103;

        v49 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_22958A794(0, *(v48 + 2) + 1, 1, v48);
          *v103 = v48;
        }

        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        if (v51 >= v50 >> 1)
        {
          v48 = sub_22958A794((v50 > 1), v51 + 1, 1, v48);
          *v103 = v48;
        }

        *(v48 + 2) = v51 + 1;
        v52 = &v48[40 * v51];
        v16 = v100;
        *(v52 + 4) = v47;
        *(v52 + 5) = v97;
        *(v52 + 6) = a7;
        *(v52 + 7) = v100;
        *(v52 + 8) = v17;
      }

      else
      {

        v16 = v100;
      }

      goto LABEL_40;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v30 = sub_229543DBC(0x726F737365636341, 0xEE0073656D614E79);
  if ((v31 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v30, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_28;
  }

  v96 = v106;
  v99 = v16;
  result = [a4 homes];
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v32 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v33 = sub_22A4DD83C();

  v34 = sub_22959526C(v33);

  v35 = sub_229869A04(v34);

  if (!v35[2])
  {

    v16 = v99;
    if (!a7)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v36 = *v103;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v36;
  if ((v37 & 1) == 0)
  {
    v36 = sub_22958A794(0, *(v36 + 2) + 1, 1, v36);
    *v103 = v36;
  }

  v39 = *(v36 + 2);
  v38 = *(v36 + 3);
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    v93 = sub_22958A794((v38 > 1), v39 + 1, 1, v36);
    v40 = v39 + 1;
    v36 = v93;
    *v103 = v93;
  }

  *(v36 + 2) = v40;
  v41 = &v36[40 * v39];
  v16 = v99;
  *(v41 + 4) = v35;
  *(v41 + 5) = v96;
  *(v41 + 6) = a6;
  *(v41 + 7) = v99;
  *(v41 + 8) = v17;
  if (a7)
  {
    goto LABEL_29;
  }

LABEL_40:
  if (!a8 || !*(v19 + 16))
  {
LABEL_53:
    v65 = a9;
    if (!a9)
    {
      goto LABEL_65;
    }

LABEL_54:
    if (!*(v19 + 16))
    {
      goto LABEL_65;
    }

    v66 = sub_229543DBC(0x4E65636976726553, 0xEC00000073656D61);
    if ((v67 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v66, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_65;
    }

    v102 = v16;
    v68 = v106;
    result = [a4 homes];
    if (result)
    {
      v69 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v70 = sub_22A4DD83C();

      v71 = sub_22954B870(v70);

      v72 = sub_22954B4DC(v71);

      v73 = sub_229869C1C(v72);

      if (v73[2])
      {
        v74 = *v103;

        v75 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_22958A794(0, *(v74 + 2) + 1, 1, v74);
          *v103 = v74;
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v74 = sub_22958A794((v76 > 1), v77 + 1, 1, v74);
          *v103 = v74;
        }

        *(v74 + 2) = v77 + 1;
        v78 = &v74[40 * v77];
        *(v78 + 4) = v73;
        *(v78 + 5) = v68;
        v16 = v102;
        *(v78 + 6) = v65;
        *(v78 + 7) = v102;
        *(v78 + 8) = v17;
      }

      else
      {

        v16 = v102;
      }

      goto LABEL_65;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v53 = sub_229543DBC(0x6D614E656E656353, 0xEA00000000007365);
  if ((v54 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v53, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_53;
  }

  v101 = v16;
  v55 = v106;
  result = [a4 homes];
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v56 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v57 = sub_22A4DD83C();

  v58 = sub_229595994(v57);

  v59 = sub_229869C00(v58);

  if (!v59[2])
  {

    v16 = v101;
    v65 = a9;
    if (!a9)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  v60 = *v103;

  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_22958A794(0, *(v60 + 2) + 1, 1, v60);
    *v103 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_22958A794((v62 > 1), v63 + 1, 1, v60);
    *v103 = v60;
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[40 * v63];
  *(v64 + 4) = v59;
  *(v64 + 5) = v55;
  v16 = v101;
  *(v64 + 6) = a8;
  *(v64 + 7) = v101;
  *(v64 + 8) = v17;
  v65 = a9;
  if (a9)
  {
    goto LABEL_54;
  }

LABEL_65:
  if (!a10 || !*(v19 + 16))
  {
  }

  v79 = sub_229543DBC(0xD000000000000014, 0x800000022A587F90);
  if ((v80 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v79, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {
  }

  v81 = v16;
  v82 = v106;
  result = [a4 homes];
  if (!result)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v83 = result;

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v84 = sub_22A4DD83C();

  v85 = sub_22954B870(v84);

  v86 = sub_22954B4DC(v85);

  if (v86 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

  if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_87:
  }

LABEL_72:
  v87 = sub_229869C1C(v86);

  v88 = *v103;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v88;
  if ((result & 1) == 0)
  {
    result = sub_22958A794(0, *(v88 + 16) + 1, 1, v88);
    v88 = result;
    *v103 = result;
  }

  v90 = *(v88 + 16);
  v89 = *(v88 + 24);
  if (v90 >= v89 >> 1)
  {
    result = sub_22958A794((v89 > 1), v90 + 1, 1, v88);
    v88 = result;
    *v103 = result;
  }

  *(v88 + 16) = v90 + 1;
  v91 = (v88 + 40 * v90);
  v91[4] = v87;
  v91[5] = v82;
  v91[6] = a10;
  v91[7] = v81;
  v91[8] = v17;
  return result;
}

uint64_t sub_22959CD6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_22959CE0C;

  return sub_22959AAE0();
}

uint64_t sub_22959CE0C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22959CF00(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_2295926E4(a1, a2, v7, v6);
}

uint64_t sub_22959CFB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_229570788(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22959D024(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_22959E67C(v12, v6);
      sub_2295708D8(v10, v6);
      result = sub_22959E6E0(v10);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_22959D130(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v23 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
LABEL_11:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2295404B0(*(a1 + 56) + 32 * v11, v28);
      v27[0] = v14;
      v27[1] = v13;
      sub_2295404B0(v28, &v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      if (*(v24 + 16) && (v15 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073), (v16 & 1) != 0))
      {
        sub_2295404B0(*(v24 + 56) + 32 * v15, &v25);
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v25 = 0u;
        v26 = 0u;
      }

      sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
      if (*(v24 + 16))
      {
        v18 = sub_229543DBC(0x73656D6F48, 0xE500000000000000);
        if (v19)
        {
          sub_2295404B0(*(v24 + 56) + 32 * v18, &v25);

          sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
          goto LABEL_19;
        }
      }

      v25 = 0u;
      v26 = 0u;
      sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
      if (v17)
      {
LABEL_19:

        sub_22953EAE4(v27, &qword_27D87D578, &qword_22A5788C0);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22958A53C(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v21 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_22958A53C((v20 > 1), v21 + 1, 1, v23);
          v23 = result;
        }

        *(v23 + 16) = v21 + 1;
        v22 = v23 + 16 * v21;
        *(v22 + 32) = v14;
        *(v22 + 40) = v13;
        if (!v5)
        {
          break;
        }
      }

      else
      {
LABEL_6:
        result = sub_22953EAE4(v27, &qword_27D87D578, &qword_22A5788C0);
        if (!v5)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v23;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22959D41C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_229543DBC(0x53555F6E65, 0xE500000000000000);
    if (v3)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v2, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        if (*(v12 + 16) && (v4 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073), (v5 & 1) != 0))
        {
          sub_2295404B0(*(v12 + 56) + 32 * v4, v13);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
          if (swift_dynamicCast())
          {
            v6 = v12;
LABEL_12:
            v8 = v6 != 0;

            return v8;
          }
        }

        else
        {
        }

        v6 = 0;
        goto LABEL_12;
      }
    }
  }

  type metadata accessor for HMError(0);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x6E6F73616552;
  v10 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x800000022A58AC10;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(v10, &qword_27D87CDA0, &unk_22A57A930);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();
  return v8;
}

uint64_t sub_22959D63C(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v4 = swift_task_alloc();
  v2[34] = v4;
  *v4 = v2;
  v4[1] = sub_22959D6D4;

  return sub_229595D30(a1);
}

uint64_t sub_22959D6D4()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  *(v3 + 280) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22959D808, 0, 0);
  }
}

uint64_t sub_22959D808()
{
  v1 = v0[35];
  v2 = sub_22959D41C(v0[32]);
  if (v1)
  {
    v3 = v0[1];

    return v3();
  }

  else if (v2)
  {
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_22959DA20;
    v6 = v0[32];
    v7 = v0[33];

    return sub_229597ED0(v6);
  }

  else
  {
    v14 = *(v0 + 16);
    v8 = sub_22959D130(v0[32]);
    v0[37] = v8;
    v0[31] = v8;
    v9 = swift_task_alloc();
    v0[38] = v9;
    *(v9 + 16) = v14;
    v10 = *(MEMORY[0x277D0F008] + 4);
    v11 = swift_task_alloc();
    v0[39] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[40] = v12;
    v13 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b");
    *v11 = v0;
    v11[1] = sub_22959DC9C;

    return MEMORY[0x282167808](&unk_22A578850, v9, v12, v13);
  }
}

uint64_t sub_22959DA20()
{
  v2 = *(*v1 + 288);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22959DB50, 0, 0);
  }
}

uint64_t sub_22959DB50()
{
  v8 = *(v0 + 16);
  v1 = sub_22959D130(v0[32]);
  v0[37] = v1;
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *(v2 + 16) = v8;
  v3 = *(MEMORY[0x277D0F008] + 4);
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v0[40] = v5;
  v6 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b");
  *v4 = v0;
  v4[1] = sub_22959DC9C;

  return MEMORY[0x282167808](&unk_22A578850, v2, v5, v6);
}

uint64_t sub_22959DC9C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_22959E264;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_22959DDB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22959DDB8()
{
  v29 = v0;
  v1 = v0[37];
  v2 = v0[33];
  v3 = sub_229591628();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v4 = v3;
  }

  v28 = v4;
  sub_2296F0858(v1);
  v5 = sub_229672204(v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x73656C61636F4CLL;
  *(inited + 40) = 0xE700000000000000;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sub_229714EC0(*(v5 + 16), 0);
  v9 = sub_229715134(&v28, v8 + 4, v7, v5);
  sub_22953EE84();
  if (v9 != v7)
  {
    __break(1u);
LABEL_6:

    v8 = MEMORY[0x277D84F90];
  }

  v10 = v0[32];
  *(inited + 72) = v0[40];
  *(inited + 48) = v8;
  v11 = sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  if (*(v10 + 16))
  {
    v12 = v0[32];
    v13 = sub_229543DBC(0x4C746E6572727543, 0xED0000656C61636FLL);
    if (v14)
    {
      sub_2295404B0(*(v0[32] + 56) + 32 * v13, (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v15 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        v16 = v0[29];
        v17 = v0[30];
        v0[24] = v15;
        v0[21] = v16;
        v0[22] = v17;
        sub_229543C58(v0 + 21, v0 + 25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v11;
        v19 = v0[28];
        v20 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 25), v19);
        v21 = *(v19 - 8);
        v22 = *(v21 + 64) + 15;
        v23 = swift_task_alloc();
        (*(v21 + 16))(v23, v20, v19);
        sub_2297FE940(*v23, v23[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v28);
        __swift_destroy_boxed_opaque_existential_0(v0 + 25);

        v11 = v28;
      }
    }
  }

  v0[42] = v11;
  v24 = v0[33];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[15] = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  v0[16] = &off_283CDD168;
  v0[12] = v24;
  v25 = v24;
  v26 = swift_task_alloc();
  v0[43] = v26;
  *v26 = v0;
  v26[1] = sub_22959E140;

  return sub_22970A4FC((v0 + 12), v11);
}

uint64_t sub_22959E140()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_22959E2D0;
  }

  else
  {
    v5 = *(v2 + 336);

    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22959E264()
{
  v1 = v0[37];
  v2 = v0[38];

  v3 = v0[41];
  v4 = v0[1];

  return v4();
}

uint64_t sub_22959E2D0()
{
  v1 = v0[42];

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[44];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22959E33C(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22959883C(a1, v5, v4);
}

uint64_t sub_22959E404(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229598C6C(a1, v4, v5, v6);
}

uint64_t sub_22959E4B4(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229596240(a1, v5, v4);
}

uint64_t sub_22959E55C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2295967A0(a1, v4, v5, v6);
}

uint64_t sub_22959E62C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_229562F68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22959E67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22959E6E0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22959E73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22959E7B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22959E7FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22959E854(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_eventBuilders) + 16);
    if (v4)
    {
      v5 = result;
      v6 = OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_logEventSubmitter;
      v7 = a1;

      do
      {
        if ([v5 isTHSensorRequest])
        {
          v10 = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
          v11 = objc_allocWithZone(v10);
          v12 = &v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName];
          *v12 = 0xD000000000000044;
          *(v12 + 1) = 0x800000022A58AFB0;
          *&v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventOptions] = 4;
          *&v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_readWriteEvent] = v5;
          v16.receiver = v11;
          v16.super_class = v10;
          v13 = v7;
          v14 = objc_msgSendSuper2(&v16, sel_init);
          v15 = [v5 error];
          if (v15)
          {
            v8 = v15;
            v9 = sub_22A4DB3DC();
          }

          else
          {
            v9 = 0;
          }

          [v14 setError_];

          [*(v1 + v6) submitLogEvent_];
        }

        --v4;
      }

      while (v4);
    }
  }

  return result;
}

id sub_22959EAA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22959EB7C(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = [v3 home];
  if (v11)
  {
    v12 = v11;
    if ([v11 isCurrentDeviceConfirmedPrimaryResident])
    {
      v13 = [objc_msgSend(v12 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = sub_22A4DD9DC();
        (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v3;
        v15[5] = v12;
        v15[6] = a1;
        v15[7] = a2;
        v15[8] = ObjectType;
        v16 = v3;
        sub_2295A1C30(a1);
        sub_22957F3C0(0, 0, v10, &unk_22A5789E0, v15);

        return;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_22959ED38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = sub_22A4DD07C();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22959EE74, 0, 0);
}

uint64_t sub_22959EE74()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 56) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  *(v0 + 160) = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_dataSource);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = [v2 spiClientIdentifier];
  sub_22A4DB79C();

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_22959EF98;
  v6 = *(v0 + 152);

  return sub_22970BFA4(v6);
}

uint64_t sub_22959EF98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v6 = *(*v3 + 160);
  v7 = *(*v3 + 152);
  v8 = *(*v3 + 144);
  v9 = *(*v3 + 136);
  v12 = *v3;
  *(v4 + 176) = a2;
  *(v4 + 184) = v2;

  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  if (v2)
  {
    v10 = sub_22959F430;
  }

  else
  {
    v10 = sub_22959F12C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22959F12C()
{
  v34 = v0;
  if (*(v0 + 176))
  {
    v1 = *(v0 + 56);

    *(v0 + 224) = sub_2295A0268() & 1;
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_22959F70C;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_2295A0550(v3);
  }

  else
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    sub_229785E38();
    v9 = v8;
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    if (v12)
    {
      v32 = *(v0 + 120);
      v16 = *(v0 + 56);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v33[0] = v18;
      v33[1] = 91;
      v33[2] = 0xE100000000000000;
      v19 = [v16 logIdentifier];
      v20 = sub_22A4DD5EC();
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(91, 0xE100000000000000, v33);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v33);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Grid ID is nil - not updating supportsCleanEnergyAutomation", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      v24 = (*(v14 + 8))(v32, v15);
    }

    else
    {

      v24 = (*(v14 + 8))(v13, v15);
    }

    v25 = *(v0 + 72);
    if (v25)
    {
      v26 = *(v0 + 80);
      v25(v24);
    }

    v27 = *(v0 + 152);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_22959F430()
{
  v36 = v0;
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  sub_229785E38();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v34 = v0[14];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315650;
    v35[0] = v33;
    v35[1] = 91;
    v35[2] = 0xE100000000000000;
    v16 = [v13 logIdentifier];
    v32 = v12;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v35);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v35);
    *(v14 + 22) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v14, 0x20u);
    sub_2295A1C40(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v23 = (*(v11 + 8))(v34, v32);
  }

  else
  {

    v23 = (*(v11 + 8))(v10, v12);
  }

  v24 = v0[9];
  if (v24)
  {
    v25 = v0[10];
    v24(v23);
  }

  v26 = v0[19];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[14];

  v30 = v0[1];

  return v30();
}

uint64_t sub_22959F70C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 225) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_22959FF8C;
  }

  else
  {
    v5 = sub_22959F824;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22959F824()
{
  v30 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  sub_229785E38();
  v4 = v3;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v26 = *(v0 + 225);
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    v27 = *(v0 + 96);
    v28 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315906;
    v29[0] = v11;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v12 = [v9 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v29);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v7;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v26;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Found currentDeviceSupportStatus: %{BOOL}d and currentMFiCertificateStatus: %{BOOL}d", v10, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);

    (*(v19 + 8))(v17, v18);
  }

  v20 = *(v0 + 225);
  v21 = *(v0 + 224);
  v22 = *(v0 + 56);
  sub_229785F6C((v0 + 16));
  v23 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v24 = swift_task_alloc();
  *(v0 + 208) = v24;
  *v24 = v0;
  v24[1] = sub_22959FAF0;

  return sub_2296C6638(v21 & v20 & 1);
}

uint64_t sub_22959FAF0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_22959FCA8;
  }

  else
  {
    v3 = sub_22959FC04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22959FC04()
{
  v1 = v0[9];
  v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    v3 = v0[10];
    (v0[9])(v2);
  }

  v4 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22959FCA8()
{
  v36 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[27];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  sub_229785E38();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v34 = v0[14];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315650;
    v35[0] = v33;
    v35[1] = 91;
    v35[2] = 0xE100000000000000;
    v16 = [v13 logIdentifier];
    v32 = v12;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v35);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v35);
    *(v14 + 22) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v14, 0x20u);
    sub_2295A1C40(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v23 = (*(v11 + 8))(v34, v32);
  }

  else
  {

    v23 = (*(v11 + 8))(v10, v12);
  }

  v24 = v0[9];
  if (v24)
  {
    v25 = v0[10];
    v24(v23);
  }

  v26 = v0[19];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[14];

  v30 = v0[1];

  return v30();
}

uint64_t sub_22959FF8C()
{
  v36 = v0;
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  sub_229785E38();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v34 = v0[14];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315650;
    v35[0] = v33;
    v35[1] = 91;
    v35[2] = 0xE100000000000000;
    v16 = [v13 logIdentifier];
    v32 = v12;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v35);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v35);
    *(v14 + 22) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v14, 0x20u);
    sub_2295A1C40(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v23 = (*(v11 + 8))(v34, v32);
  }

  else
  {

    v23 = (*(v11 + 8))(v10, v12);
  }

  v24 = v0[9];
  if (v24)
  {
    v25 = v0[10];
    v24(v23);
  }

  v26 = v0[19];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[14];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2295A0268()
{
  v1 = v0;
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DCC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = [v1 alvaradoMatterEndpoint];
    if (v13)
    {
      v14 = v13;
      v15 = [v1 matterAdapter];
      if (v15)
      {
        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_22A576190;
        v18 = v14;
        sub_22A4DCC0C();
        sub_22A4DCC3C();
        (*(v8 + 8))(v11, v7);
        v19 = sub_22A4DE7DC();
        sub_22A4DCD2C();
        sub_22A4DCD9C();
        (*(v3 + 8))(v6, v2);
        v20 = sub_22A4DE7DC();
        v21 = [objc_opt_self() attributePathWithEndpointID:v18 clusterID:v19 attributeID:v20];

        *(v17 + 32) = v21;
        sub_2295A1CA8();
        v22 = sub_22A4DD81C();

        LOBYTE(v21) = [v16 isImplementingAttributePaths_];

        if (v21)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_2295A0550(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = swift_getObjectType();
  v3 = sub_22A4DD18C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_22A4DD16C();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_22A4DD12C();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_22A4DD07C();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v15 = sub_22A4DD13C();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();
  v18 = sub_22A4DD1AC();
  v2[29] = v18;
  v19 = *(v18 - 8);
  v2[30] = v19;
  v20 = *(v19 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A0818, 0, 0);
}

uint64_t sub_2295A0818()
{
  v38 = v0;
  v1 = [objc_msgSend(*(v0 + 56) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    (*(*(v0 + 216) + 104))(*(v0 + 224), *MEMORY[0x277CCE640], *(v0 + 208));
    v2 = *(MEMORY[0x277CCE650] + 4);
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_2295A0B98;
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);

    return MEMORY[0x2821211C8](v4, v5);
  }

  else
  {
    v6 = *(v0 + 176);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    sub_229785E38();
    v9 = v8;
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    if (v12)
    {
      v36 = *(v0 + 176);
      v16 = *(v0 + 64);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v37[0] = v18;
      v37[1] = 91;
      v37[2] = 0xE100000000000000;
      v19 = [v16 logIdentifier];
      v20 = sub_22A4DD5EC();
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(91, 0xE100000000000000, v37);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, v37);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Developer profile or feature flag enabled, skipping MFi certificate check", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v14 + 8))(v36, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v24 = *(v0 + 248);
    v25 = *(v0 + 224);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);
    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 96);

    v34 = *(v0 + 8);

    return v34(1);
  }
}

uint64_t sub_2295A0B98()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2295A1778;
  }

  else
  {
    v3 = sub_2295A0CAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295A0CAC()
{
  v132 = v0;
  v1 = [*(v0 + 64) bridge];
  if (!v1)
  {
    v1 = *(v0 + 64);
  }

  v2 = [v1 matterVendorID];
  if (!v2 || (v3 = v2, v4 = [v2 integerValue], v3, (v5 = objc_msgSend(v1, sel_matterProductID)) == 0))
  {
    v34 = *(v0 + 184);
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    sub_229785E38();
    v37 = v36;
    v38 = v1;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 240);
    v126 = *(v0 + 248);
    v43 = *(v0 + 232);
    v44 = *(v0 + 184);
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    if (v41)
    {
      v123 = *(v0 + 232);
      v47 = *(v0 + 64);
      v48 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v48 = 136315906;
      v129 = v120;
      v130 = 91;
      v131 = 0xE100000000000000;
      v49 = [v47 logIdentifier];
      v115 = v46;
      v117 = v44;
      v50 = sub_22A4DD5EC();
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(91, 0xE100000000000000, &v129);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v129);
      *(v48 + 22) = 2080;
      *(v0 + 40) = [v38 matterVendorID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
      v54 = sub_22A4DD64C();
      v56 = sub_2295A3E30(v54, v55, &v129);

      *(v48 + 24) = v56;
      *(v48 + 32) = 2080;
      *(v0 + 48) = [v38 matterProductID];
      v57 = sub_22A4DD64C();
      v59 = sub_2295A3E30(v57, v58, &v129);

      *(v48 + 34) = v59;
      _os_log_impl(&dword_229538000, v39, v40, "%s %s Missing required context: vendorID %s or productID %s", v48, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v120, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);

      (*(v45 + 8))(v117, v115);
      (*(v42 + 8))(v126, v123);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      (*(v42 + 8))(v126, v43);
    }

LABEL_25:
    v128 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = [v5 integerValue];

  v8 = [v1 firmwareVersion];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = *(v0 + 264);
  v10 = v8;
  v11 = [v8 rawVersionString];

  v12 = sub_22A4DD5EC();
  v14 = v13;

  *(v0 + 32) = 0;
  LOBYTE(v12) = sub_229818890(v12, v14);

  if ((v12 & 1) == 0)
  {
LABEL_15:
    v60 = *(v0 + 192);
    v62 = *(v0 + 64);
    v61 = *(v0 + 72);
    sub_229785E38();
    v63 = v62;
    v64 = v1;
    v65 = sub_22A4DD05C();
    v66 = sub_22A4DDCEC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 64);
      v68 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v129 = v127;
      *v68 = 136315650;
      v130 = 91;
      v131 = 0xE100000000000000;
      v69 = [v67 logIdentifier];
      v70 = sub_22A4DD5EC();
      v72 = v71;

      MEMORY[0x22AAD08C0](v70, v72);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v73 = sub_2295A3E30(91, 0xE100000000000000, &v129);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v129);
      *(v68 + 22) = 2080;
      v74 = [v64 firmwareVersion];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 rawVersionString];

        v77 = sub_22A4DD5EC();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      v96 = *(v0 + 240);
      v122 = *(v0 + 232);
      v124 = *(v0 + 248);
      v119 = *(v0 + 192);
      v98 = *(v0 + 152);
      v97 = *(v0 + 160);
      *(v0 + 16) = v77;
      *(v0 + 24) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
      v99 = sub_22A4DD64C();
      v101 = sub_2295A3E30(v99, v100, &v129);

      *(v68 + 24) = v101;
      _os_log_impl(&dword_229538000, v65, v66, "%s %s Failed to parse firmwareVersion from rawVersionString %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v127, -1, -1);
      MEMORY[0x22AAD4E50](v68, -1, -1);

      (*(v97 + 8))(v119, v98);
      (*(v96 + 8))(v124, v122);
    }

    else
    {
      v81 = *(v0 + 240);
      v80 = *(v0 + 248);
      v82 = *(v0 + 232);
      v83 = *(v0 + 192);
      v84 = *(v0 + 152);
      v85 = *(v0 + 160);

      (*(v85 + 8))(v83, v84);
      (*(v81 + 8))(v80, v82);
    }

    goto LABEL_25;
  }

  v15 = *(v0 + 200);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 32);
  sub_229785E38();
  v19 = v17;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 64);
    v23 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v129 = v125;
    *v23 = 136316162;
    v130 = 91;
    v131 = 0xE100000000000000;
    v24 = [v22 logIdentifier];
    v25 = v7;
    v26 = sub_22A4DD5EC();
    v28 = v27;

    MEMORY[0x22AAD08C0](v26, v28);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(91, 0xE100000000000000, &v129);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    result = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v129);
    *(v23 + 14) = result;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v4;
    *(v23 + 32) = 2048;
    *(v23 + 34) = v25;
    *(v23 + 42) = 2048;
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v18 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v18 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v31 = *(v0 + 200);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    *(v23 + 44) = v18;
    _os_log_impl(&dword_229538000, v20, v21, "%s %s Checking MFi allowlist using matterVendorID %ld, matterProductID %ld, and firmwareVersion %ld", v23, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v125, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);

    result = (*(v32 + 8))(v31, v33);
  }

  else
  {
    v86 = *(v0 + 200);
    v88 = *(v0 + 152);
    v87 = *(v0 + 160);

    result = (*(v87 + 8))(v86, v88);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v89 = *(v0 + 240);
  v90 = *(v0 + 136);
  v91 = *(v0 + 144);
  v92 = *(v0 + 120);
  v116 = *(v0 + 128);
  v93 = *(v0 + 112);
  v118 = *(v0 + 104);
  v121 = *(v0 + 232);
  v95 = *(v0 + 88);
  v94 = *(v0 + 96);
  v113 = *(v0 + 248);
  v114 = *(v0 + 80);
  *v91 = v18;
  (*(v90 + 104))(v91, *MEMORY[0x277CCE620]);
  sub_22A4DD17C();
  sub_22A4DD17C();
  v128 = sub_22A4DD14C();

  (*(v95 + 8))(v94, v114);
  (*(v93 + 8))(v92, v118);
  (*(v90 + 8))(v91, v116);
  (*(v89 + 8))(v113, v121);
LABEL_26:
  v102 = *(v0 + 248);
  v103 = *(v0 + 224);
  v105 = *(v0 + 192);
  v104 = *(v0 + 200);
  v107 = *(v0 + 176);
  v106 = *(v0 + 184);
  v108 = *(v0 + 168);
  v109 = *(v0 + 144);
  v110 = *(v0 + 120);
  v111 = *(v0 + 96);

  v112 = *(v0 + 8);

  return v112(v128 & 1);
}

uint64_t sub_2295A1778()
{
  v40 = v0;
  v1 = v0[33];
  v2 = v0[21];
  v4 = v0[8];
  v3 = v0[9];
  sub_229785E38();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  if (v9)
  {
    v38 = v0[21];
    v14 = v0[8];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v15 = 136315650;
    v39[0] = v37;
    v39[1] = 91;
    v39[2] = 0xE100000000000000;
    v17 = [v14 logIdentifier];
    v36 = v13;
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(91, 0xE100000000000000, v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, v39);
    *(v15 + 22) = 2112;
    v22 = v10;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v23;
    *v16 = v23;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to build mobile asset with error: %@", v15, 0x20u);
    sub_2295A1C40(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v12 + 8))(v38, v36);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[31];
  v25 = v0[28];
  v27 = v0[24];
  v26 = v0[25];
  v29 = v0[22];
  v28 = v0[23];
  v30 = v0[21];
  v31 = v0[18];
  v32 = v0[15];
  v33 = v0[12];

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_2295A1B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_22959ED38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2295A1C30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2295A1C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2295A1CA8()
{
  result = qword_27D87CF48;
  if (!qword_27D87CF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87CF48);
  }

  return result;
}

id HomeIntelligence.ActivityLogger.__allocating_init(home:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return HomeIntelligence.ActivityLogger.init(home:)(a1);
}

id HomeIntelligence.ActivityLogger.init(home:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - v14;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16 = a1;
  sub_2295A220C(v15);
  v17 = _s20DistributedSchedulerCMa();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = MEMORY[0x277D84F98];
  swift_unknownObjectWeakInit();
  *(v20 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask) = 0;
  v21 = OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_lock;
  _s4LockCMa();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = 0;
  *(v20 + v21) = v22;
  swift_unknownObjectWeakAssign();
  v44 = v16;

  sub_22957F2F8(v15, v20 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, &qword_27D87D5A0, &qword_22A582190);
  *(v1 + 15) = v20;
  sub_2295A2564(v11);
  v23 = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
  sub_22957F2F8(v11, &v1[OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream], &unk_27D881FF0, &qword_22A57A380);
  sub_229564F88(&v1[v23], v11, &unk_27D881FF0, &qword_22A57A380);
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v24 = sub_22A4DB7DC();
  __swift_project_value_buffer(v24, qword_27D8AB968);
  v25 = sub_22970DA38();
  v27 = v26;
  v28 = _s15SecureSubmitterCMa();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask) = 0;
  sub_229564F88(v11, v31 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream, &unk_27D881FF0, &qword_22A57A380);
  LOBYTE(v47) = 0;
  sub_22A4DC4AC();
  v32 = sub_22A4DC49C();
  sub_22953EAE4(v11, &unk_27D881FF0, &qword_22A57A380);
  v33 = v47;
  v34 = v31 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend;
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = 0xD00000000000001ALL;
  *(v34 + 24) = 0x800000022A58B0F0;
  *(v34 + 32) = v33;
  *(v34 + 40) = v32;
  *&v2[OBJC_IVAR___HomeIntelligenceActivityLogger_submitter] = v31;
  *&v2[OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers] = MEMORY[0x277D84F90];
  v35 = type metadata accessor for HomeIntelligence.ActivityLogger();
  v48.receiver = v2;
  v48.super_class = v35;
  v36 = objc_msgSendSuper2(&v48, sel_init);
  sub_229541CB0(ObjectType, &off_283CDD2C8);
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCCC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v47);
    _os_log_impl(&dword_229538000, v37, v38, "Initialized %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v39, -1, -1);
  }

  else
  {
  }

  (*(v45 + 8))(v7, v46);
  return v36;
}

uint64_t sub_2295A220C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5F8, &qword_22A578AC8);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D608, &qword_22A578AD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D618, &qword_22A582120);
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v22);
  v19 = v23;
  sub_22A4DDA6C();
  (*(v6 + 16))(v19, v9, v5);
  sub_229564F88(v16, v14, &qword_27D87D608, &qword_22A578AD0);
  result = (*(v18 + 48))(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
    (*(v18 + 32))(v19 + *(v21 + 28), v14, v17);
    return sub_22953EAE4(v16, &qword_27D87D608, &qword_22A578AD0);
  }

  return result;
}

uint64_t sub_2295A2564@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5E8, &qword_22A578AB8);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5F0, &qword_22A578AC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5D8, &qword_22A578A98);
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v22);
  v19 = v23;
  sub_22A4DDA6C();
  (*(v6 + 16))(v19, v9, v5);
  sub_229564F88(v16, v14, &qword_27D87D5F0, &qword_22A578AC0);
  result = (*(v18 + 48))(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
    (*(v18 + 32))(v19 + *(v21 + 28), v14, v17);
    return sub_22953EAE4(v16, &qword_27D87D5F0, &qword_22A578AC0);
  }

  return result;
}

Swift::Void __swiftcall HomeIntelligence.ActivityLogger.configure()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_22957F3C0(0, 0, v4, &unk_22A5789F8, v6);
}

uint64_t sub_2295A29F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295A2B90();
}

uint64_t sub_2295A2B90()
{
  v1[8] = v0;
  v1[9] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A2C68, v0, 0);
}

uint64_t sub_2295A2C68()
{
  v15 = v0;
  v1 = v0[13];
  sub_229541CB0(v0[9], &off_283CDD2C8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v14);
    _os_log_impl(&dword_229538000, v2, v3, "Configuring %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[14] = v10;
  v11 = v0[8];
  v0[15] = [objc_opt_self() defaultDataSource];
  v12 = *(v11 + 120);
  v0[16] = v12;

  return MEMORY[0x2822009F8](sub_2295A2E14, v12, 0);
}

uint64_t sub_2295A2E14()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  sub_22976B8F8();

  return MEMORY[0x2822009F8](sub_2295A2E80, v2, 0);
}

uint64_t sub_2295A2E80()
{
  v39 = v0;
  if ([*(v0 + 120) isSHADEREnabled])
  {
    v1 = *(v0 + 64);
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = _s8ObserverCMa();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = sub_22957EE94();
    *(v0 + 136) = v6;

    v7 = sub_2295A3178;
    v8 = v6;
    v9 = 0;
LABEL_5:

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = *(v0 + 64);
  v11 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v0 + 152) = v12;
  v13 = v12[2];
  *(v0 + 160) = v13;
  if (v13)
  {
    *(v0 + 168) = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
    *(v0 + 176) = 0;
    *(v0 + 184) = v12[4];
    v14 = v12[5];

    *(v0 + 192) = swift_getObjectType();
    v15 = *(v14 + 16);
    *(v0 + 200) = v15;
    *(v0 + 208) = *(v15 + 16);
    *(v0 + 216) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    v16 = *(v14 + 8);
    *(v0 + 224) = v16;
    v17 = *(v16 + 24);
    swift_unknownObjectRetain();
    v18 = sub_22A4DD8CC();
    v20 = v19;
    v7 = sub_2295A3668;
    v8 = v18;
    v9 = v20;
    goto LABEL_5;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  v23 = *(*(v0 + 64) + OBJC_IVAR___HomeIntelligenceActivityLogger_submitter);
  sub_229676994();
  sub_229541CB0(v22, &off_283CDD2C8);
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 80);
  if (v26)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v38);
    _os_log_impl(&dword_229538000, v24, v25, "Finished configuring %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v32, -1, -1);
  }

  v27(v29, v31);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2295A3178()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_adapter);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_2295A3214;

  return sub_2296DE3EC();
}

uint64_t sub_2295A3214()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295A3324, v2, 0);
}

uint64_t sub_2295A3324()
{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[8];
  v3 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v4 = *(v2 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22958A9E8(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_22958A9E8((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = v0[17];
  v9 = sub_2295A4548();
  v4[2] = v7 + 1;
  v10 = &v4[2 * v7];
  v10[4] = v8;
  v10[5] = v9;
  *(v2 + v3) = v4;
  swift_endAccess();

  v11 = v0[8];
  v12 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v0[19] = v13;
  v14 = v13[2];
  v0[20] = v14;
  if (v14)
  {
    v0[21] = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
    v0[22] = 0;
    v0[23] = v13[4];
    v15 = v13[5];

    v0[24] = swift_getObjectType();
    v16 = *(v15 + 16);
    v0[25] = v16;
    v0[26] = *(v16 + 16);
    v0[27] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    v17 = *(v15 + 8);
    v0[28] = v17;
    v18 = *(v17 + 24);
    swift_unknownObjectRetain();
    v20 = sub_22A4DD8CC();

    return MEMORY[0x2822009F8](sub_2295A3668, v20, v19);
  }

  else
  {
    v21 = v0[12];
    v22 = v0[9];
    v23 = *(v0[8] + OBJC_IVAR___HomeIntelligenceActivityLogger_submitter);
    sub_229676994();
    sub_229541CB0(v22, &off_283CDD2C8);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCCC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[14];
    v28 = v0[15];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[10];
    if (v26)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v38);
      _os_log_impl(&dword_229538000, v24, v25, "Finished configuring %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    v27(v29, v31);
    v35 = v0[12];
    v34 = v0[13];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_2295A3668()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 64);
  (*(v0 + 208))(v3 + *(v0 + 168), *(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](sub_2295A36E4, v3, 0);
}

uint64_t sub_2295A36E4()
{
  v1 = v0[23];
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2295A37A0;
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[16];

  return sub_22976D530(v5, v6, v4, v3);
}

uint64_t sub_2295A37A0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 64);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2295A38CC, v3, 0);
}

uint64_t sub_2295A38CC()
{
  v31 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = v0[19];

    v5 = v0[12];
    v6 = v0[9];
    v7 = *(v0[8] + OBJC_IVAR___HomeIntelligenceActivityLogger_submitter);
    sub_229676994();
    sub_229541CB0(v6, &off_283CDD2C8);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCCC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    v12 = v0[15];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v10)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v30);
      _os_log_impl(&dword_229538000, v8, v9, "Finished configuring %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    v11(v13, v15);
    v19 = v0[12];
    v18 = v0[13];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[22] + 1;
    v0[22] = v22;
    v23 = v0[19] + 16 * v22;
    v0[23] = *(v23 + 32);
    v24 = *(v23 + 40);
    v0[24] = swift_getObjectType();
    v25 = *(v24 + 16);
    v0[25] = v25;
    v0[26] = *(v25 + 16);
    v0[27] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    v26 = *(v24 + 8);
    v0[28] = v26;
    v27 = *(v26 + 24);
    swift_unknownObjectRetain();
    v29 = sub_22A4DD8CC();

    return MEMORY[0x2822009F8](sub_2295A3668, v29, v28);
  }
}

void HomeIntelligence.ActivityLogger.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void HomeIntelligence.ActivityLogger.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t HomeIntelligence.ActivityLogger.deinit()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  v1 = *(v0 + 120);

  sub_22953EAE4(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream, &unk_27D881FF0, &qword_22A57A380);
  v2 = *(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers);

  v3 = *(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_submitter);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HomeIntelligence.ActivityLogger.__deallocating_deinit()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  v1 = *(v0 + 120);

  sub_22953EAE4(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream, &unk_27D881FF0, &qword_22A57A380);
  v2 = *(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers);

  v3 = *(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_submitter);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HomeIntelligence.ActivityLogger()
{
  result = qword_27D87D5C0;
  if (!qword_27D87D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295A3D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_22953EAE4(a2, a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v10 - 8);
  (*(v13 + 16))(a2, a1, v10);
  v11 = *(v13 + 56);

  return v11(a2, 0, 1, v10);
}

uint64_t sub_2295A3E30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2295A3EFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2295404B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2295A3EFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2295A4008(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22A4DE25C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2295A4008(uint64_t a1, unint64_t a2)
{
  v4 = sub_2295A4054(a1, a2);
  sub_2295A4184(&unk_283CDA2C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2295A4054(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_229616344(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22A4DE25C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22A4DD70C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_229616344(v10, 0);
        result = sub_22A4DE1DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2295A4184(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2295A4270(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2295A4270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D140, &unk_22A57A950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2295A4364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2295A29F4();
}

void sub_2295A4420()
{
  sub_2295A44E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2295A44E4()
{
  if (!qword_27D87D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D5D8, &qword_22A578A98);
    v0 = _s6StreamVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87D5D0);
    }
  }
}

unint64_t sub_2295A4548()
{
  result = qword_27D87D5E0;
  if (!qword_27D87D5E0)
  {
    _s8ObserverCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D5E0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2295A45E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_2295A29F4();
}

id sub_2295A470C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState];
  *v3 = 0;
  v3[4] = 1;
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isFirstCloudImportComplete] = 2;
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isSignedIntoiCloud] = 2;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo] = 1;
  v4 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSerialNumber] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoModelIdentifier] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoRegionInfo] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___nearbyVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer] = xmmword_22A578AE0;
  v5 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome] = 1;
  v8 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents];
  *v9 = 0;
  v9[8] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress] = 1;
  v10 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags];
  *v10 = 0;
  v10[8] = 1;
  v7(&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier], 1, 1, v6);
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isCurrentDevicePrimaryResident] = 2;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_2295A49BC()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState + 4) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) hasManatee];
  *v1 = result;
  v1[4] = 0;
  return result;
}

unint64_t sub_2295A4BF4()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) numHomes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_2295A4C88()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceMediaRouteIdentifier];
    if (v5)
    {
      v6 = v5;
      v4 = sub_22A4DD5EC();
      v8 = v7;
    }

    else
    {
      v4 = 0;
      v8 = 0;
    }

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_2295A70F8(v9, v10);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

id sub_2295A4DA0()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2295A4E74(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22A4DD5AC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2295A4F64()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2295A4DA0();
    v6 = [v5 softwareVersion];

    if (v6)
    {
      v7 = [v6 versionString];

      v4 = sub_22A4DD5EC();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_2295A70F8(v10, v11);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

uint64_t sub_2295A5088(void *a1, SEL *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v8 = sub_2295A4DA0();
    v9 = [v8 *a2];

    if (v9)
    {
      v6 = sub_22A4DD5EC();
      v11 = v10;
    }

    else
    {
      v6 = 0;
      v11 = 0;
    }

    v12 = *v3;
    v13 = v3[1];
    *v3 = v6;
    v3[1] = v11;

    sub_2295A70F8(v12, v13);
  }

  sub_2295A710C(v4, v5);
  return v6;
}

uint64_t sub_2295A51DC()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto;
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) obtainNetworkInfoProto];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D798, &qword_22A578BE8);
    v2 = sub_22A4DD49C();

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2295A5338()
{
  v0 = sub_2295A51DC();
  if (*(v0 + 16) && (v1 = sub_229543DBC(0x496B726F7774654ELL, 0xEB000000006F666ELL), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_22986AE6C(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_2295A5400(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  a3();

  sub_229562F68(0, a4, a5);
  v9 = sub_22A4DD81C();

  return v9;
}

uint64_t sub_2295A5484()
{
  v0 = sub_2295A51DC();
  if (*(v0 + 16) && (v1 = sub_229543DBC(0xD000000000000012, 0x800000022A58BC30), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_22986AE80(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_2295A5570(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  v5 = sub_22A4DD81C();

  return v5;
}

uint64_t sub_2295A5600(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
    v5 = sub_22A4DD83C();

    v7 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_2295A56B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  v6 = sub_22A4DD83C();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;
}

uint64_t sub_2295A5820()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2295A576C();
    if (v5 && (v6 = v5, v7 = [v5 manufacturer], v6, v7))
    {
      v4 = sub_22A4DD5EC();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_2295A70F8(v10, v11);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

void sub_2295A58FC(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22A4DD5EC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  v11 = a1;
  sub_2295A70F8(v9, v10);
}

uint64_t sub_2295A5998@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  swift_beginAccess();
  sub_229564F88(v1 + v10, v9, &qword_27D87D788, &qword_22A578BE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_229564B0C(v9, a1);
  }

  sub_2295A7020(v9);
  v13 = sub_2295A576C();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 uuid];

    sub_22A4DB79C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_22A4DB7DC();
  (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
  sub_229564F88(a1, v7, &unk_27D87D2A0, &unk_22A578BD0);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2295A7088(v7, v1 + v10);
  return swift_endAccess();
}

id sub_2295A5C38()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_2295A576C();
    if (v4)
    {
      v5 = v4;
      v3 = [v4 pairingIdentity];

      if (v3)
      {
        v6 = [v3 publicPairingIdentity];

        v3 = [v6 protoPayload];
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_22954BC9C(v7);
  }

  sub_22954BCAC(v2);
  return v3;
}

id sub_2295A5DB4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_2295A576C();
    v3 = [v4 home];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_22954BC9C(v5);
  }

  sub_22954BCAC(v2);
  return v3;
}

id sub_2295A5ED0()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories + 8) != 1)
  {
    return *v1;
  }

  result = sub_2295A5DB4();
  if (result)
  {
    v3 = result;
    v4 = [result appleMediaAccessories];

    sub_229562F68(0, &qword_281401920, off_278666038);
    v5 = sub_22A4DD83C();

    if (v5 >> 62)
    {
      v7 = sub_22A4DE0EC();

      if (v7 < 0)
      {
        __break(1u);
      }

      result = v7;
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v6;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A600C()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents + 8) != 1)
  {
    return *v1;
  }

  result = sub_2295A5DB4();
  if (result)
  {
    v3 = result;
    v4 = [result residentDeviceManager];

    v5 = [v4 residentDevices];
    swift_unknownObjectRelease();
    sub_229562F68(0, &qword_281401B10, off_278666300);
    v6 = sub_22A4DD83C();

    if (v6 >> 62)
    {
      v8 = sub_22A4DE0EC();

      if (v8 < 0)
      {
        __break(1u);
      }

      result = v8;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v7;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A61B4(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = [*(v4 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2295A640C(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v11 = sub_2295A576C();
    if (v11 && (v12 = v11, v13 = [v11 *a2], v12, v13))
    {
      v8 = [v13 protoPayload];
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v4 + v6);
    *(v4 + v6) = v8;
    v15 = v8;
    a3(v14);
  }

  a4(v7);
  return v8;
}

id sub_2295A656C()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceRawProblemFlags];
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A65F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_22A4DB77C();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_2295A6728@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-v13];
  v15 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier;
  swift_beginAccess();
  sub_229564F88(v1 + v15, v14, &qword_27D87D788, &qword_22A578BE0);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    return sub_229564B0C(v14, a1);
  }

  sub_2295A7020(v14);
  v16 = [*(v1 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceIDSIdentifier];
  if (v16)
  {
    v17 = v16;
    sub_22A4DB79C();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = sub_22A4DB7DC();
  (*(*(v20 - 8) + 56))(v7, v18, 1, v20);
  sub_229564B0C(v7, a1);
  sub_229564F88(a1, v12, &unk_27D87D2A0, &unk_22A578BD0);
  (*(v4 + 56))(v12, 0, 1, v3);
  swift_beginAccess();
  sub_2295A7088(v12, v1 + v15);
  return swift_endAccess();
}

void sub_2295A69D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a3)
  {
    sub_22A4DB79C();
    v16 = sub_22A4DB7DC();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_22A4DB7DC();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  sub_229564B0C(v15, v10);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a4;
  swift_beginAccess();
  v19 = a1;
  sub_2295A7088(v10, a1 + v18);
  swift_endAccess();
}

uint64_t sub_2295A6C18(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

id sub_2295A6CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot()
{
  result = qword_27D87D768;
  if (!qword_27D87D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295A6EB0()
{
  sub_2295A6FBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2295A6FBC()
{
  if (!qword_27D87D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87D778);
    }
  }
}

uint64_t sub_2295A7020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295A7088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295A70F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2295A710C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2295A7128(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22A4DD07C();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A7250, 0, 0);
}

uint64_t sub_2295A7250()
{
  v54 = v0;
  v1 = [*(v0 + 104) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 168) = v3, v2, v3))
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *MEMORY[0x277CD12B0];
    *(v0 + 176) = *MEMORY[0x277CD12B0];
    v10 = v9;
    v11 = [v7 messageTargetUUID];
    sub_22A4DB79C();

    v12 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v13 = sub_22A4DB77C();
    v14 = [v12 initWithTarget_];
    *(v0 + 184) = v14;

    (*(v5 + 8))(v4, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v16 = *MEMORY[0x277CD0D40];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v17;
    v18 = sub_22A4DB76C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v20 = sub_22956AC5C(inited);
    *(v0 + 192) = v20;
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_2295A7710;

    return sub_2297983DC(v10, v14, v20);
  }

  else
  {
    v23 = objc_opt_self();
    v24 = sub_22A4DD5AC();
    v25 = [v23 hmErrorWithCode:3 description:v24 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    sub_2295A7CB0();
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v28 = v27;
    v29 = v25;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDD0C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 112);
    if (v32)
    {
      v36 = *(v0 + 104);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v37 = 136315394;
      v39 = [v36 logIdentifier];
      v50 = v35;
      v51 = v33;
      v40 = sub_22A4DD5EC();
      v42 = v41;

      v43 = sub_2295A3E30(v40, v42, &v53);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      v44 = v25;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v45;
      *v38 = v45;
      _os_log_impl(&dword_229538000, v30, v31, "%s Room update failed: %@", v37, 0x16u);
      sub_22953EAE4(v38, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v34 + 8))(v51, v50);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v46 = *(v0 + 160);
    v48 = *(v0 + 128);
    v47 = *(v0 + 136);
    swift_willThrow();

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_2295A7710()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_2295A7A34;
  }

  else
  {
    v6 = v2[23];
    v5 = v2[24];
    v7 = v2[22];

    v4 = sub_2295A7838;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295A7838()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[13];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  if (v6)
  {
    v11 = v0[13];
    v25 = v0[17];
    v12 = swift_slowAlloc();
    v24 = v10;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = [v11 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    v18 = sub_2295A3E30(v15, v17, &v26);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_229538000, v4, v5, "%s Room update succeeded", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[20];
  v20 = v0[16];
  v21 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2295A7A34()
{
  v35 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];

  v5 = v0[26];
  v6 = v0[16];
  v7 = v0[13];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v8 = v7;
  v9 = v5;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDD0C();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  if (v12)
  {
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v17 = 136315394;
    v19 = [v16 logIdentifier];
    v31 = v15;
    v32 = v13;
    v20 = sub_22A4DD5EC();
    v22 = v21;

    v23 = sub_2295A3E30(v20, v22, &v34);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = v5;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    *v18 = v25;
    _os_log_impl(&dword_229538000, v10, v11, "%s Room update failed: %@", v17, 0x16u);
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v14 + 8))(v32, v31);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v0[20];
  v28 = v0[16];
  v27 = v0[17];
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

unint64_t sub_2295A7CB0()
{
  result = qword_281401C30;
  if (!qword_281401C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401C30);
  }

  return result;
}

uint64_t sub_2295A7CFC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DD07C();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A7E28, 0, 0);
}

uint64_t sub_2295A7E28()
{
  v53 = v0;
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 176) = v3, v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *MEMORY[0x277CD0CA8];
    *(v0 + 184) = *MEMORY[0x277CD0CA8];
    v50 = v10;
    v11 = [v7 messageTargetUUID];
    sub_22A4DB79C();

    v12 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v13 = sub_22A4DB77C();
    v14 = [v12 initWithTarget_];
    *(v0 + 192) = v14;

    (*(v4 + 8))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v16 = *MEMORY[0x277CD1FC8];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v18 = sub_22956AC5C(inited);
    *(v0 + 200) = v18;
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    v19 = swift_task_alloc();
    *(v0 + 208) = v19;
    *v19 = v0;
    v19[1] = sub_2295A82F0;

    return sub_2297983DC(v50, v14, v18);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = sub_22A4DD5AC();
    v23 = [v21 hmErrorWithCode:3 description:v22 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    sub_2295A7CB0();
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v26 = v25;
    v27 = v23;
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDD0C();

    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 120);
    if (v30)
    {
      v34 = *(v0 + 112);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v35 = 136315394;
      v37 = [v34 logIdentifier];
      v48 = v33;
      v49 = v31;
      v38 = sub_22A4DD5EC();
      v40 = v39;

      v41 = sub_2295A3E30(v38, v40, &v52);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      v42 = v23;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v43;
      *v36 = v43;
      _os_log_impl(&dword_229538000, v28, v29, "%s Accessory name update failed: %@", v35, 0x16u);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);

      (*(v32 + 8))(v49, v48);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v44 = *(v0 + 168);
    v46 = *(v0 + 136);
    v45 = *(v0 + 144);
    swift_willThrow();

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_2295A82F0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_2295A8614;
  }

  else
  {
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[23];

    v4 = sub_2295A8418;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295A8418()
{
  v27 = v0;
  v1 = v0[18];
  v2 = v0[14];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  if (v6)
  {
    v11 = v0[14];
    v25 = v0[18];
    v12 = swift_slowAlloc();
    v24 = v10;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = [v11 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    v18 = sub_2295A3E30(v15, v17, &v26);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_229538000, v4, v5, "%s Accessory name update succeeded", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[21];
  v20 = v0[17];
  v21 = v0[18];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2295A8614()
{
  v35 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[27];
  v6 = v0[17];
  v7 = v0[14];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v8 = v7;
  v9 = v5;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDD0C();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  if (v12)
  {
    v16 = v0[14];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v17 = 136315394;
    v19 = [v16 logIdentifier];
    v31 = v15;
    v32 = v13;
    v20 = sub_22A4DD5EC();
    v22 = v21;

    v23 = sub_2295A3E30(v20, v22, &v34);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = v5;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    *v18 = v25;
    _os_log_impl(&dword_229538000, v10, v11, "%s Accessory name update failed: %@", v17, 0x16u);
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v14 + 8))(v32, v31);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v0[21];
  v28 = v0[17];
  v27 = v0[18];
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_2295A8970(void *a1, uint64_t a2)
{
  v20[3] = sub_22A4DC1DC();
  v20[4] = MEMORY[0x277D17D60];
  v20[0] = a2;
  v4 = qword_281401BF8;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_22957F1C4(v20, v19);
  v5 = sub_22A4DC1BC();
  v6 = objc_allocWithZone(v5);

  v7 = sub_22A4DC1AC();
  v8 = objc_allocWithZone(sub_22A4DC19C());
  v9 = v7;
  v10 = sub_22A4DC17C();
  v11 = sub_22A4DD5AC();
  v12 = [a1 preferenceForKey_];

  v13 = [v12 numberValue];
  if (v13)
  {
    [v13 doubleValue];
    sub_22957F1C4(v20, v19);
    v14 = objc_allocWithZone(v5);

    v15 = sub_22A4DC1AC();
    sub_22A4DD5EC();
    v16 = v15;
    sub_22A4DC18C();
  }

  v17 = [objc_allocWithZone(sub_22A4DC13C()) init];
  sub_22A4DD5EC();
  sub_22A4DC18C();

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v10;
}

uint64_t sub_2295A8BD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2295ACAA0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2295ACA3C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_22A4DB5FC();
    v15 = v14;
    result = sub_2295798D4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2295A8D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A8E4C, 0, 0);
}

uint64_t sub_2295A8E4C()
{
  v71 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  v3 = sub_2295ACBF0(v2, v1);
  *(v0 + 200) = v3;
  v4 = v3;
  v5 = [*(v0 + 120) accessories];
  *(v0 + 208) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v6 = sub_22A4DD83C();

  v65 = v0;
  if (v6 >> 62)
  {
LABEL_25:
    v66 = v6 & 0xFFFFFFFFFFFFFF8;
    v68 = sub_22A4DE0EC();
  }

  else
  {
    v66 = v6 & 0xFFFFFFFFFFFFFF8;
    v68 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v68 == v7)
    {

      v20 = v4;
      v21 = swift_task_alloc();
      *(v0 + 216) = v21;
      *v21 = v0;
      v21[1] = sub_2295A94D8;
      v22 = *(v0 + 120);

      return sub_22974AE98(v20);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAD13F0](v7, v6);
    }

    else
    {
      if (v7 >= *(v66 + 16))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = [v9 identifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    v15 = v4;
    v16 = [v4 identifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    if (v12 == v17 && v14 == v19)
    {
      break;
    }

    v8 = sub_22A4DE60C();

    ++v7;
    v4 = v15;
    if (v8)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v24 = *(v0 + 168);
  v26 = *(v0 + 136);
  v25 = v65[18];
  v27 = v65[15];

  sub_229541CB0(v25, &off_283CE8678);
  v28 = v26;
  v29 = v15;
  v30 = v27;
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  v33 = v65;
  v34 = os_log_type_enabled(v31, v32);
  v36 = v65[20];
  v35 = v65[21];
  v37 = v65[19];
  if (v34)
  {
    v69 = v65[21];
    v38 = v65[17];
    v64 = v65[15];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 136315650;
    v70[0] = v40;
    v70[1] = 91;
    v70[2] = 0xE100000000000000;
    v41 = v38;
    v67 = v37;
    v42 = [v41 description];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    MEMORY[0x22AAD08C0](v43, v45);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v46 = sub_2295A3E30(91, 0xE100000000000000, v70);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    v47 = [v64 shortDescription];
    v48 = sub_22A4DD5EC();
    v50 = v49;

    v51 = sub_2295A3E30(v48, v50, v70);

    *(v39 + 14) = v51;
    *(v39 + 22) = 2080;
    v52 = [v29 identifier];
    v53 = sub_22A4DD5EC();
    v55 = v54;

    v56 = sub_2295A3E30(v53, v55, v70);
    v33 = v65;

    *(v39 + 24) = v56;
    _os_log_impl(&dword_229538000, v31, v32, "%s home: %s already has an accessory with identifier: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v39, -1, -1);

    (*(v36 + 8))(v69, v67);
  }

  else
  {

    (*(v36 + 8))(v35, v37);
  }

  type metadata accessor for HMError(0);
  v33[13] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v58 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v59;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x800000022A58BE40;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v60 = v65[12];
  swift_willThrow();

  v61 = v65[24];
  v62 = v65[21];

  v63 = v65[1];

  return v63();
}

uint64_t sub_2295A94D8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_2295A9BA0;
  }

  else
  {

    v4 = sub_2295A95F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295A95F4()
{
  v1 = v0;
  v2 = *(v0 + 208);
  v3 = [*(v0 + 120) accessories];
  v4 = sub_22A4DD83C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_31:
    v10 = v1[25];

LABEL_32:

    v37 = v1[24];
    v38 = v1[21];

    v28 = v1[1];
LABEL_33:

    return v28();
  }

LABEL_30:
  v5 = sub_22A4DE0EC();
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_3:
  v6 = 0;
  v39 = v1;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v1[29] = v7;
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v9 = v1[25];
    v10 = v7;
    v11 = [v7 identifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    v15 = [v9 identifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
      break;
    }

    v20 = sub_22A4DE60C();

    if (v20)
    {
      goto LABEL_17;
    }

    ++v6;
    v1 = v39;
    if (v8 == v5)
    {
      goto LABEL_31;
    }
  }

LABEL_17:

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    v1 = v39;
    v29 = v39[25];

    v10 = v29;
    goto LABEL_32;
  }

  v22 = v21;
  v1 = v39;
  v23 = v39[28];
  v24 = v39[17];
  sub_2295A9CA4(v21);
  v25 = v39[25];
  if (v23)
  {

    v26 = v39[24];
    v27 = v39[21];

    v28 = v39[1];
    goto LABEL_33;
  }

  v30 = [v39[25] name];
  if (!v30)
  {
    sub_22A4DD5EC();
    v30 = sub_22A4DD5AC();
  }

  v31 = v39[16];
  [v22 renameDemoAccessory_];

  if (!v31)
  {

    goto LABEL_32;
  }

  v32 = v39[24];
  v33 = [v39[16] uuid];
  sub_22A4DB79C();

  v34 = swift_task_alloc();
  v39[30] = v34;
  *v34 = v39;
  v34[1] = sub_2295A99B0;
  v35 = v39[24];

  return sub_2295A7128(v35);
}

uint64_t sub_2295A99B0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v5 = sub_2295A9C1C;
  }

  else
  {
    v5 = sub_2295A9B18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295A9B18()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 128);

  v3 = *(v0 + 192);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2295A9BA0()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295A9C1C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 128);

  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);

  v6 = *(v0 + 8);

  return v6();
}

void sub_2295A9CA4(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v12 = v4;
  v13 = a1;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v8;
    v17 = v16;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v17 = 136315394;
    v38 = 91;
    v39 = 0xE100000000000000;
    v18 = v12;
    v19 = [v18 description];
    v34 = v7;
    v20 = v19;
    v21 = sub_22A4DD5EC();
    v33 = v15;
    v22 = v21;
    v37 = v2;
    v24 = v23;

    MEMORY[0x22AAD08C0](v22, v24);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(v38, v39, &v40);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v13 shortDescription];
    v27 = sub_22A4DD5EC();
    v29 = v28;

    v30 = sub_2295A3E30(v27, v29, &v40);
    v3 = v37;

    *(v17 + 14) = v30;
    _os_log_impl(&dword_229538000, v14, v33, "%s Loading accessory: %s", v17, 0x16u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v36 + 8))(v11, v34);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  [v13 setReachable_];
  sub_2295AE8E4(0xD000000000000016, 0x800000022A58BE70, v13);
  if (!v3)
  {
    sub_2295AE8E4(0xD000000000000015, 0x800000022A58BE90, v13);
  }
}

uint64_t sub_2295A9FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[98] = a1;
  v4[102] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[103] = v5;
  v6 = *(v5 - 8);
  v4[104] = v6;
  v7 = *(v6 + 64) + 15;
  v4[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295AA0D0, 0, 0);
}

uint64_t sub_2295AA0D0()
{
  v84 = v0;
  if ([*(*(v0 + 808) + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager) isCloudKitRequiredForHH2])
  {
    v1 = *(v0 + 840);
    v2 = *(v0 + 808);
    sub_229541CB0(*(v0 + 816), &off_283CE8678);
    v3 = v2;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCEC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 840);
    v8 = *(v0 + 832);
    v9 = *(v0 + 824);
    if (v6)
    {
      v79 = *(v0 + 840);
      v10 = *(v0 + 808);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v81 = v12;
      v82 = 91;
      v83 = 0xE100000000000000;
      v13 = v10;
      v14 = [v13 description];
      v15 = sub_22A4DD5EC();
      v77 = v9;
      v17 = v16;

      MEMORY[0x22AAD08C0](v15, v17);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v18 = sub_2295A3E30(91, 0xE100000000000000, &v81);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_229538000, v4, v5, "%s Cannot create current accessory in non-demo or CK enabled demo mode.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);

      (*(v8 + 8))(v79, v77);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    type metadata accessor for HMError(0);
    *(v0 + 776) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v29 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000044;
    *(inited + 56) = 0x800000022A58BDF0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v31 = *(v0 + 768);
    swift_willThrow();
    v32 = *(v0 + 840);

    v33 = *(v0 + 8);

    return v33();
  }

  v19 = *(v0 + 792);
  v20 = getUniqueDeviceId();
  v21 = sub_22A4DD5EC();
  v76 = v22;
  v78 = v21;

  v80 = v19;
  if (v19)
  {
    v23 = *(v0 + 792);
    v24 = [v23 name];
    v75 = sub_22A4DD5EC();
    v26 = v25;

    v27 = [v23 model];
    if (v27)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v35 = deviceName();
    v75 = sub_22A4DD5EC();
    v26 = v36;
  }

  v27 = [*(v0 + 800) modelIdentifier];
  if (!v27)
  {
    v40 = 0xED00006E776F6E6BLL;
    v38 = 0x6E55206C65646F4DLL;
    goto LABEL_15;
  }

LABEL_13:
  v37 = v27;
  v38 = sub_22A4DD5EC();
  v40 = v39;

LABEL_15:
  v41 = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_22A578C10;
  *(v42 + 32) = 0x696669746E656469;
  v43 = MEMORY[0x277D837D0];
  *(v42 + 40) = 0xEA00000000007265;
  *(v42 + 48) = v78;
  *(v42 + 56) = v76;
  *(v42 + 72) = v43;
  *(v42 + 80) = 1701667182;
  *(v42 + 88) = 0xE400000000000000;
  *(v42 + 96) = v75;
  *(v42 + 104) = v26;
  *(v42 + 120) = v43;
  *(v42 + 128) = 0x6C65646F6DLL;
  *(v42 + 136) = 0xE500000000000000;
  *(v42 + 144) = v38;
  *(v42 + 152) = v40;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x6572617774666F73;
  *(v42 + 184) = 0xEF6E6F6973726556;
  v44 = [v41 softwareVersion];
  v45 = [v44 versionString];

  v46 = sub_22A4DD5EC();
  v48 = v47;

  *(v42 + 192) = v46;
  *(v42 + 200) = v48;
  *(v42 + 216) = v43;
  *(v42 + 224) = 0x75646F7250464D48;
  *(v42 + 232) = 0xEF7373616C437463;
  v49 = [v41 productClass];
  v50 = MEMORY[0x277D83B88];
  *(v42 + 240) = v49;
  *(v42 + 264) = v50;
  *(v42 + 272) = 0x75646F7250464D48;
  *(v42 + 280) = 0xEF726F6C6F437463;
  *(v42 + 288) = [v41 productColor];
  *(v42 + 312) = v50;
  *(v42 + 320) = 0xD000000000000018;
  *(v42 + 328) = 0x800000022A58BD90;
  v51 = [objc_opt_self() appleMediaAccessoryVariant];
  v52 = MEMORY[0x277D83E88];
  *(v42 + 336) = v51;
  *(v42 + 360) = v52;
  *(v42 + 368) = 0xD000000000000012;
  *(v42 + 376) = 0x800000022A58BDB0;
  *(v42 + 408) = MEMORY[0x277D839B0];
  *(v42 + 384) = 1;
  v53 = sub_22956AD8C(v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
  swift_arrayDestroy();
  if (v80)
  {
    v54 = *(v0 + 792);
    v55 = [v54 capabilities];
    if (v55)
    {
      v56 = v55;
      *(v0 + 728) = swift_getObjectType();
      *(v0 + 704) = v56;
      sub_229543C58(v0 + 704, v0 + 736);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v53;
      sub_229543C6C(v0 + 736, 0xD000000000000015, 0x800000022A58BDD0, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
    }

    v58 = [v54 serialNumber];
    if (v58)
    {
      v59 = v58;
      v60 = sub_22A4DD5EC();
      v62 = v61;

      *(v0 + 664) = MEMORY[0x277D837D0];
      *(v0 + 640) = v60;
      *(v0 + 648) = v62;
      sub_229543C58(v0 + 640, v0 + 672);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v53;
      sub_229543C6C(v0 + 672, 0x754E6C6169726573, 0xEC0000007265626DLL, v63);
    }

    v64 = [v54 softwareVersion];
    if (v64)
    {
      v65 = v64;
      *(v0 + 600) = sub_229562F68(0, &qword_27D87D7B8, 0x277D0F8F8);
      *(v0 + 576) = v65;
      sub_229543C58(v0 + 576, v0 + 608);
      v66 = v65;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v53;
      sub_229543C6C(v0 + 608, 0x6572617774666F73, 0xEF6E6F6973726556, v67);
    }

    v68 = [v54 device];
    if (v68)
    {
      v69 = v68;
      *(v0 + 536) = sub_229562F68(0, &qword_27D87CEF0, off_278666100);
      *(v0 + 512) = v69;
      sub_229543C58(v0 + 512, v0 + 544);
      v70 = v69;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v53;
      sub_229543C6C(v0 + 544, 0x656369766564, 0xE600000000000000, v71);
    }
  }

  *(v0 + 848) = v53;
  v72 = swift_task_alloc();
  *(v0 + 856) = v72;
  *v72 = v0;
  v72[1] = sub_2295AA9F4;
  v73 = *(v0 + 808);
  v74 = *(v0 + 784);

  return sub_2295A8D20(v53, v74, 0);
}

uint64_t sub_2295AA9F4()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v7 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = sub_2295AAB74;
  }

  else
  {
    v5 = *(v2 + 848);

    v4 = sub_2295AAB10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295AAB10()
{
  v1 = *(v0 + 840);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295AAB74()
{
  v1 = v0[106];

  v2 = v0[108];
  v3 = v0[105];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2295AABE0(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    sub_229541CB0(a5, &off_283CE8678);
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136315906;
      v49 = 91;
      v50 = 0xE100000000000000;
      v51 = v24;
      v25 = v18;
      v46 = v21;
      v26 = v25;
      v27 = [v25 description];
      v28 = sub_22A4DD5EC();
      v47 = v10;
      v29 = v28;
      v45 = v22;
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v49, v50, &v51);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v19;
      v33 = v44;
      *v44 = v19;
      *(v23 + 22) = 2080;
      v34 = v19;
      v35 = [v20 shortDescription];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      v39 = sub_2295A3E30(v36, v38, &v51);

      *(v23 + 24) = v39;
      *(v23 + 32) = 2112;
      v40 = a1;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 34) = v41;
      v33[1] = v41;
      v42 = v46;
      _os_log_impl(&dword_229538000, v46, v45, "%s Failed to forward event: %@ for %s with %@", v23, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v43 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      return (*(v11 + 8))(v15, v47);
    }

    else
    {

      return (*(v11 + 8))(v15, v10);
    }
  }

  return result;
}

void sub_2295AAF60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2295AAFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229893848(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22A4DE67C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_229897F10();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_2295AB144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2296DBEC0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = _s13PresenceStateOMa();
      return sub_2295AEF30(a1, v22 + *(*(v23 - 8) + 72) * v15, _s13PresenceStateOMa);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_229897F38();
    goto LABEL_7;
  }

  sub_229893870(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_2296DBEC0(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2295AC630(v15, v12, a1, v21, _s13PresenceStateOMa, _s13PresenceStateOMa);
}

uint64_t sub_2295AB340(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2296DBEC0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
      return sub_2295AEF30(a1, v22 + *(*(v23 - 8) + 72) * v15, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_229898264();
    goto LABEL_7;
  }

  sub_229893D10(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_2296DBEC0(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2295AC630(v15, v12, a1, v21, _s28DefaultRoomPresencePublisherC8ObserverVMa, _s28DefaultRoomPresencePublisherC8ObserverVMa);
}

uint64_t sub_2295AB53C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_229898834();
      goto LABEL_7;
    }

    sub_2298945D0(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_229543DBC(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22A4DBB4C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2295AC724(v12, a2, a3, a1, v18);
}

uint64_t sub_2295AB6BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2296DBEC0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_229898C38();
      goto LABEL_7;
    }

    sub_229894C14(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2296DBEC0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2295AC8D8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

id sub_2295AB888(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2296DBF94(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229894FF0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2296DBF94(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_229898EB8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_2295ABA04(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2296DBFE4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229895260(v13, a3 & 1);
      v17 = *v4;
      result = sub_2296DBFE4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_229562F68(0, &qword_281401C20, off_278666020);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_22989901C();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_2295ABB70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229895634(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2298992A0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2295ABCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_2296DBEC0(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_229899410();
      goto LABEL_9;
    }

    sub_2298958DC(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_2296DBEC0(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    *v27 = v31;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_2295AC7D4(v16, v13, v25, a2, v26);
  }
}

id sub_2295ABEC8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2296DC034(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2298960AC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2296DC034(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_229562F68(0, &unk_281401910, off_278666388);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_229899924();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void sub_2295AC044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2296DBEC0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_229899A88();
      goto LABEL_7;
    }

    sub_22989631C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2296DBEC0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2295AC8D8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_22A4DE67C();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_2295AC210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2296DC084(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2298966F8(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_2296DC084(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for HMDHomeActivityStateContributorType(0);
        sub_22A4DE67C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_229899CFC();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    *(v20[6] + 8 * v9) = a2;
    *(v20[7] + 8 * v9) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

unint64_t sub_2295AC358(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2296DC0F0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229896C10(v13, a3 & 1);
      v17 = *v4;
      result = sub_2296DC0F0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_229899FB4();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_2295AC4C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for HomePassData(0);
      return sub_2295AEF30(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for HomePassData);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22989A5C8();
    goto LABEL_7;
  }

  sub_229897980(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_229543DBC(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2295AC990(v12, a2, a3, a1, v18);
}

uint64_t sub_2295AC630(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_22A4DB7DC();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_2295AEF98(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_2295AC724(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22A4DBB4C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2295AC7D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22A4DB7DC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_2295AC894(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2295AC8D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22A4DB7DC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2295AC990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for HomePassData(0);
  result = sub_2295AEF98(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for HomePassData);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2295ACA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2295ACAA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2295ACB54(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22A4DD6DC();

    return sub_22A4DD79C();
  }

  return result;
}

void *sub_2295ACBF0(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v205 - v7;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v235 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v236 = &v205 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v205 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v205 - v20;
  MEMORY[0x28223BE20](v19);
  v237 = &v205 - v22;
  if (*(a1 + 16))
  {
    v23 = sub_229543DBC(0x75646F7250464D48, 0xEF7373616C437463);
    if (v24)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v23, &v244);
      if ((swift_dynamicCast() & 1) != 0 && (qword_283CDA388 == v238 || qword_283CDA390 == v238))
      {
        v232 = v238;
        if (*(a1 + 16) && (v29 = sub_229543DBC(1684632949, 0xE400000000000000), (v30 & 1) != 0))
        {
          sub_2295404B0(*(a1 + 56) + 32 * v29, &v244);
          v31 = swift_dynamicCast();
          v32 = v10;
          (v10[7])(v8, v31 ^ 1u, 1, v9);
          if ((v10[6])(v8, 1, v9) != 1)
          {
            (v10[4])(v237, v8, v9);
            goto LABEL_15;
          }
        }

        else
        {
          v32 = v10;
          (v10[7])(v8, 1, 1, v9);
        }

        sub_22A4DB7CC();
        if ((v32[6])(v8, 1, v9) != 1)
        {
          sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
        }

LABEL_15:
        if (qword_27D87B8B8 != -1)
        {
          swift_once();
        }

        v207 = qword_27D8AB650;
        if (qword_27D87B8C0 != -1)
        {
          swift_once();
        }

        v224 = qword_27D8AB658;
        if (*(a1 + 16) && (v33 = sub_229543DBC(0x6769666E6F63, 0xE600000000000000), (v34 & 1) != 0))
        {
          sub_2295404B0(*(a1 + 56) + 32 * v33, &v244);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
          if (swift_dynamicCast())
          {
            v35 = v238;
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v35 = 0;
        }

        v220 = sub_22A4DB76C();
        v222 = v36;
        v37 = *(a1 + 16);
        v231 = a2;
        if (v37 && (v38 = sub_229543DBC(0x696669746E656469, 0xEA00000000007265), (v39 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v38, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v221 = v238;
          v223 = v239;
        }

        else
        {
          v221 = sub_22A4DB76C();
          v223 = v40;
        }

        v233 = v9;
        v219 = v2;
        if (v35)
        {
          v41 = sub_22A4DD5EC();
          if (*(v35 + 16))
          {
            v43 = sub_229543DBC(v41, v42);
            v45 = v44;

            if (v45)
            {
              sub_2295404B0(*(v35 + 56) + 32 * v43, &v244);

              if (swift_dynamicCast() & 1) != 0 && (v238)
              {

                v221 = sub_22A4DB76C();
                v223 = v46;
              }

              goto LABEL_38;
            }
          }

          else
          {
          }
        }

LABEL_38:
        v47 = objc_allocWithZone(_HMDLocalDeviceHandle);
        v48 = sub_22A4DB77C();
        v49 = [v47 initWithDeviceIdentifier_];

        v50 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];
        v51 = *(a1 + 16);
        v52 = v231;
        v234 = v10;
        if (v51 && (v53 = sub_229543DBC(0xD000000000000012, 0x800000022A58BDB0), (v54 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v53, &v244), swift_dynamicCast()) && (v238 & 1) != 0)
        {
          v55 = getMediaRouteIdentifier();
          if (v55)
          {
            v56 = v55;

            v221 = sub_22A4DD5EC();
            v223 = v57;
          }

          v58 = [objc_opt_self() localDeviceIDSIdentifier];
          if (v58)
          {
            v59 = v58;

            sub_22A4DB79C();

            v220 = sub_22A4DB76C();
            v222 = v60;
            v61 = objc_allocWithZone(_HMDLocalDeviceHandle);
            v62 = sub_22A4DB77C();
            v63 = [v61 initWithDeviceIdentifier_];

            v64 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];
            v52 = v231;
            v65 = v233;
            (v10[1])(v21);
            v217 = 1;
            v50 = v64;
            goto LABEL_48;
          }

          v217 = 1;
        }

        else
        {
          v217 = 0;
        }

        v65 = v233;
LABEL_48:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22A576190;
        *(v66 + 32) = v50;
        v246 = v66;
        v67 = *&v52[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
        v218 = v50;
        v68 = [v67 accountHandleForOwner];
        v69 = v68;
        if (!v68)
        {
          v230 = 0;
          v244 = 0;
          v245 = 0xE000000000000000;
          sub_22A4DE1FC();

          v244 = 0x6573755F6F6D6564;
          v245 = 0xEA00000000005F72;
          sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0]);
          v146 = sub_22A4DE5CC();
          MEMORY[0x22AAD08C0](v146);

          MEMORY[0x22AAD08C0](0x64756F6C6369405FLL, 0xEC0000006D6F632ELL);
          v147 = objc_allocWithZone(MEMORY[0x277D18A48]);
          v148 = sub_22A4DD5AC();

          v149 = [v147 initWithUnprefixedURI_];

          if (!v149)
          {
            v75 = 0;
            v80 = v66;
            v81 = v65;
            goto LABEL_52;
          }

          v150 = [objc_allocWithZone(HMDAccountHandle) initWithURI_];

          if (!v150)
          {
            v80 = v66;
            v75 = 0;
            v81 = v65;
            goto LABEL_52;
          }

          v69 = v150;
          v68 = v230;
        }

        v70 = v68;
        v71 = sub_22959082C();
        v73 = v72;
        v74 = objc_allocWithZone(_HMDGlobalDeviceHandle);
        sub_22956C148(v71, v73);
        v75 = v69;
        v76 = sub_22A4DB61C();
        v77 = [v74 initWithPushToken:v76 accountHandle:v75];

        sub_2295798D4(v71, v73);
        v78 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];

        v79 = v78;
        MEMORY[0x22AAD09E0]();
        if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();

        sub_2295798D4(v71, v73);
        v80 = v246;
        v81 = v233;
LABEL_52:
        if (!*(a1 + 16))
        {
          goto LABEL_56;
        }

        v82 = sub_229543DBC(0x6572617774666F73, 0xEF6E6F6973726556);
        if ((v83 & 1) == 0 || (sub_2295404B0(*(a1 + 56) + 32 * v82, &v244), (swift_dynamicCast() & 1) == 0) || (v84 = objc_allocWithZone(MEMORY[0x277D0F8F8]), v85 = sub_22A4DD5AC(), , v86 = [v84 initWithString_], v85, (v87 = v86) == 0))
        {
LABEL_56:
          if (qword_27D87B8B0 != -1)
          {
            swift_once();
          }

          v87 = qword_27D8AB648;
        }

        v88 = *(a1 + 16);
        v89 = v87;
        if (v88 && (v90 = sub_229543DBC(0x75646F7250464D48, 0xEF726F6C6F437463), (v91 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v90, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v92 = v238;
        }

        else
        {
          v92 = 1;
        }

        v228 = v92;
        if (*(a1 + 16) && (v93 = sub_229543DBC(0x6C65646F6DLL, 0xE500000000000000), (v94 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v93, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v95 = v239;
          v229 = v238;
        }

        else
        {
          v95 = 0xEB00000000333231;
          v96 = 0x2C5654656C707041;
          v97 = 0xE900000000000033;
          v98 = 0x32312C616964654DLL;
          if (v232 == 6)
          {
            v98 = 0x2C646F50656D6F48;
            v97 = 0xEB00000000333231;
          }

          if (v232 != 4)
          {
            v96 = v98;
          }

          v229 = v96;
          if (v232 != 4)
          {
            v95 = v97;
          }
        }

        v230 = v95;
        if (*(a1 + 16) && (v99 = sub_229543DBC(1701667182, 0xE400000000000000), (v100 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v99, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v101 = v239;
          v225 = v238;
        }

        else
        {
          v101 = 0xE700000000000000;
          v102 = 0x5654656C707041;
          v103 = 0xE500000000000000;
          v104 = 0x616964654DLL;
          if (v232 == 6)
          {
            v104 = 0x646F50656D6F48;
            v103 = 0xE700000000000000;
          }

          if (v232 != 4)
          {
            v102 = v104;
          }

          v225 = v102;
          if (v232 != 4)
          {
            v101 = v103;
          }
        }

        v226 = v101;
        v105 = *(a1 + 16);
        v210 = v80;
        if (v105 && (v106 = sub_229543DBC(0x754E6C6169726573, 0xEC0000007265626DLL), (v107 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v106, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v212 = v238;
          v213 = v239;
        }

        else
        {
          sub_22A4DB7CC();
          sub_22A4DB76C();
          (v234[1])(v18, v81);
          v108 = sub_2295ACB54(10);
          v110 = v109;
          v112 = v111;
          v114 = v113;

          v115 = v112;
          v81 = v233;
          v212 = MEMORY[0x22AAD0860](v108, v110, v115, v114);
          v213 = v116;
        }

        v117 = objc_allocWithZone(MEMORY[0x277D0F8E8]);
        v118 = v89;
        v119 = sub_22A4DD5AC();
        v120 = [v117 initWithPlatform:4 class:v232 variant:0 softwareVersion:v118 color:v228 modelIdentifier:v119];

        v121 = objc_opt_self();
        v208 = v120;
        v209 = [v121 categoryForProductInfo_];
        if (*(a1 + 16) && (v122 = sub_229543DBC(0x696C696261706163, 0xEC00000073656974), (v123 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v122, &v244), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7E0, &qword_22A578C38), (swift_dynamicCast() & 1) != 0))
        {
          v124 = v238;
          LODWORD(v238) = 0;
          WORD2(v238) = 0;
          if (v124)
          {
            [v124 supportsAnnounce];
            sub_2295AEE7C(&v238);
            [v124 supportsMusicAlarm];
            sub_2295AEE8C(&v238);
            [v124 supportsDoorbellChime];
            sub_2295AEE9C(&v238);
            [v124 supportsJustSiri];
            sub_2295AEEAC(&v238);
            [v124 supportsMediaActions];
LABEL_96:
            sub_2295AEEBC(&v238);
            LODWORD(v241) = 0;
            BYTE4(v241) = 0;
            v125 = (v238 | (WORD2(v238) << 32));
            v126 = sub_2295AEECC(v238);
            sub_2295AEED4(v126, &v241);
            v227 = v125;
            v127 = sub_2295AEEEC(v125);
            sub_2295AEEF4(v127, &v241);
            v128 = *(a1 + 16);
            v214 = v124;
            if (v128 && (v129 = sub_229543DBC(0x656369766564, 0xE600000000000000), (v130 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v129, &v244), sub_229562F68(0, &qword_27D87CEF0, off_278666100), (swift_dynamicCast() & 1) != 0))
            {
              v131 = v240;
              v232 = [v240 capabilities];
              if (v232)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v131 = 0;
            }

            sub_22A4DB7CC();
            v132 = objc_allocWithZone(HMDDeviceCapabilitiesModel);
            v133 = sub_22A4DB77C();
            v134 = [v132 initWithUUID_];

            (v234[1])(v18, v81);
            sub_229562F68(0, &qword_281401770, 0x277CCABB0);
            v135 = sub_22A4DDEAC();
            [v134 setResidentCapable_];

            v136 = sub_22A4DE7DC();
            [v134 setSupportsAnnounce_];

            v137 = v227;
            sub_2295AEF0C(v227);
            v138 = sub_22A4DE7DC();
            [v134 setSupportsMusicAlarm_];

            sub_2295AEF14(v137);
            v139 = sub_22A4DE7DC();
            [v134 setSupportsDoorbellChime_];

            v232 = [objc_allocWithZone(HMDDeviceCapabilities) initWithObjectModel_];
LABEL_103:
            v205 = a1;
            v216 = v75;
            if (v131)
            {
              v140 = v232;
              v141 = [v131 identifier];
              sub_22A4DB79C();

              v142 = v236;
              v143 = v131;
              (v234[4])();
              v144 = [v131 name];
              if (v144)
              {
                v145 = v144;
                sub_22A4DD5EC();

                v143 = v131;
                goto LABEL_111;
              }
            }

            else
            {
              v142 = v236;
              (v234[2])();
              v151 = v232;
              v143 = 0;
            }

LABEL_111:
            v215 = v118;
            v211 = v143;
            v152 = [v143 version];
            if (!v152)
            {
              v152 = v207;
            }

            v153 = objc_allocWithZone(HMDDevice);
            v154 = v208;
            v155 = sub_22A4DB77C();
            sub_229562F68(0, &qword_27D87D7D8, off_278666108);
            v156 = sub_22A4DD81C();

            v157 = sub_22A4DD5AC();

            v158 = v232;
            v207 = [v153 initWithIdentifier:v155 handles:v156 name:v157 productInfo:v154 version:v152 capabilities:v232];
            v208 = v154;

            v159 = v234[1];
            ++v234;
            v210 = v159;
            v159(v142, v233);
            v160 = objc_allocWithZone(MEMORY[0x277CD1678]);
            v161 = sub_22A4DB77C();
            v162 = [v160 initWithTagUUID:v161 capabilities:v227];

            v163 = [v162 pbCapabilities];
            v164 = [v163 data];

            if (v164)
            {
              v236 = sub_22A4DB62C();
              v166 = v165;
            }

            else
            {
              v236 = 0;
              v166 = 0xF000000000000000;
            }

            v167 = v241;
            v168 = BYTE4(v241);
            v169 = objc_allocWithZone(MEMORY[0x277CD1D60]);
            v170 = sub_22A4DB77C();
            v171 = [v169 initWithTagUUID:v170 capabilities:v167 | (v168 << 32)];

            v172 = [v171 pbCapabilities];
            v173 = [v172 data];

            if (v173)
            {
              v174 = sub_22A4DB62C();
              v176 = v175;
            }

            else
            {
              v174 = 0;
              v176 = 0xF000000000000000;
            }

            v177 = v236;
            v178 = *&v231[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher];
            v227 = v209;
            v179 = v224;
            v209 = v178;
            sub_2295AEF1C(v177, v166);
            v224 = v174;
            v235 = v176;
            sub_2295AEF1C(v174, v176);
            v180 = sub_22A4DD5AC();

            v181 = sub_22A4DD5AC();

            v182 = sub_22A4DD5AC();

            v206 = v166;
            if (v166 >> 60 == 15)
            {
              v183 = 0;
            }

            else
            {
              v184 = sub_22A4DB61C();
              v185 = v166;
              v183 = v184;
              sub_229590D18(v177, v185);
            }

            v186 = v235;
            if (v235 >> 60 == 15)
            {
              v187 = 0;
            }

            else
            {
              v188 = v224;
              v187 = sub_22A4DB61C();
              sub_229590D18(v188, v186);
            }

            v189 = objc_allocWithZone(HMDUnassociatedAppleMediaAccessory);
            v190 = v209;
            v191 = v227;
            v192 = [v189 initWithIdentifier:v180 name:v181 category:v227 requiredPairingCapabilities:15 minimumPairingSoftware:v179 productColor:v228 idsIdentifierString:v182 rawAccessoryCapabilities:v183 rawResidentCapabilities:v187 messageDispatcher:v209];

            v10 = v192;
            v193 = sub_22A4DB77C();
            [v10 setUUID_];

            v194 = sub_22A4DD5AC();

            [v10 setSerialNumber_];

            v195 = sub_22A4DD5AC();

            [v10 setModel_];

            v196 = v215;
            [v10 setSoftwareVersion_];

            v197 = v207;
            [v10 setDevice_];
            [v10 setVariant_];

            if (v217)
            {
              [v10 setVariant_];
            }

            v198 = v205;
            v199 = v231;
            v200 = v233;
            v201 = v206;
            if (*(v205 + 16) && (v202 = sub_229543DBC(0xD000000000000018, 0x800000022A58BD90), (v203 & 1) != 0))
            {
              sub_2295404B0(*(v198 + 56) + 32 * v202, &v244);

              if (swift_dynamicCast())
              {
                [v10 setVariant_];

                sub_229590D18(v224, v235);
                sub_229590D18(v236, v201);

                swift_unknownObjectRelease();
LABEL_133:
                v210(v237, v200);
                return v10;
              }

              swift_unknownObjectRelease();
              v204 = &v243;
            }

            else
            {

              swift_unknownObjectRelease();

              v204 = &v242;
            }

            sub_229590D18(v236, v201);
            sub_229590D18(v224, v235);

            goto LABEL_133;
          }
        }

        else
        {
          LODWORD(v238) = 0;
          WORD2(v238) = 0;
        }

        sub_2295AEE7C(&v238);
        sub_2295AEE8C(&v238);
        sub_2295AEE9C(&v238);
        sub_2295AEEAC(&v238);
        v124 = 0;
        goto LABEL_96;
      }
    }
  }

  type metadata accessor for HMError(0);
  v238 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v26 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v27;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x800000022A58BEF0;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  swift_willThrow();

  return v10;
}

void sub_2295AE8E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 home];
  if (v14)
  {
    v49 = ObjectType;
    v56 = v5;
    v51 = v4;
    v52 = a2;
    v15 = a3;
    v16 = v14;
    v17 = [v15 uuid];
    sub_22A4DB79C();

    v54 = sub_22A4DB76C();
    v55 = v18;
    v19 = *(v10 + 8);
    v19(v13, v9);
    v20 = objc_allocWithZone(MEMORY[0x277CD1868]);
    v21 = sub_22A4DD5AC();
    v53 = [v20 initWithKeyPath:v21 readOnly:0 BOOLValue:1];

    v50 = v16;
    v22 = [v16 uuid];
    sub_22A4DB79C();

    v23 = sub_22A4DB77C();
    v19(v13, v9);
    v48 = v15;
    v24 = [v15 uuid];
    sub_22A4DB79C();

    v25 = sub_22A4DB77C();
    v19(v13, v9);
    v26 = sub_22A4DD5AC();
    v27 = MEMORY[0x22AAD2730](v23, v25, v26);

    if (!v27)
    {
      sub_22A4DD5EC();
      v27 = sub_22A4DD5AC();
    }

    v28 = v53;
    sub_22A4DB66C();
    v30 = v29;
    v31 = objc_allocWithZone(MEMORY[0x277CD1AD8]);
    v32 = sub_22A4DD5AC();
    v33 = [v31 initWithSetting:v28 eventSource:v32 eventTimestamp:v30];

    v34 = v56;
    v35 = [*&v56[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] eventForwarder];
    if (v35)
    {
      v36 = v35;

      v37 = swift_allocObject();
      v37[2] = v34;
      v37[3] = v33;
      v38 = v48;
      v39 = v49;
      v37[4] = v48;
      v37[5] = v39;
      aBlock[4] = sub_2295AEE28;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2295AAF60;
      aBlock[3] = &block_descriptor_2;
      v40 = _Block_copy(aBlock);
      v41 = v34;
      v42 = v33;
      v43 = v38;

      [v36 forwardEvent:v42 topic:v27 completion:v40];
      _Block_release(v40);

      swift_unknownObjectRelease();
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    aBlock[16] = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v45 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v46;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A58BEB0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

uint64_t sub_2295AEE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295AEF1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22956C148(a1, a2);
  }

  return a1;
}

uint64_t sub_2295AEF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295AEF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295AF000(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v24 = *(v3 + 16);
    v22 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v25 = result;
    do
    {
      v23 = v8;
      v9 = (v3 + 40 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        v7 = v10 + 1;
        if ((*v9 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(*v9) & 0xF;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (v12 == v6 ? (v14 = v11 == a2) : (v14 = 0), v14 || (v15 = *(v9 - 1), v16 = *v9, (sub_22A4DE60C() & 1) != 0)))
        {
          v12 = 0;
          v11 = 0xE000000000000000;
          v8 = v23;
          goto LABEL_18;
        }

        MEMORY[0x22AAD08C0](46, 0xE100000000000000);
        if (sub_22A4DD75C())
        {
          break;
        }

        v9 += 2;
        ++v10;
        v6 = v25;
        if (v24 == v7)
        {
          v8 = v23;
          goto LABEL_29;
        }
      }

      v20 = sub_22A4DD6CC();

      v8 = v23;
      if (v20)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          result = sub_22A4DD6DC();
          if ((v21 & 1) == 0)
          {
            sub_22A4DD69C();

            goto LABEL_18;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_18:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22958A53C(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22958A53C((v17 > 1), v18 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v11;
      v6 = v25;
    }

    while (v22 != v10);
LABEL_29:
    if (!*(v8 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v8 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_30:
    type metadata accessor for KeyPaths.KeyPathsSet();
    result = swift_allocObject();
    *(result + 16) = v8;
    return result;
  }

LABEL_32:

  return 0;
}

uint64_t sub_2295AF2AC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v15 = *(v3 + 16);
  if (!v15)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(i - 1);
    if ((*i & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*i) & 0xF;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 1;
    }

    if (v8 == v5 && *i == a2)
    {
      return 1;
    }

    v11 = *(i - 1);
    v12 = *i;
    if (sub_22A4DE60C())
    {
      return 1;
    }

    MEMORY[0x22AAD08C0](46, 0xE100000000000000);
    if (sub_22A4DD75C())
    {
      break;
    }

    ++v6;

    if (v15 == v6)
    {
      return 0;
    }
  }

  v13 = sub_22A4DD6CC();

  if (!v13)
  {

    goto LABEL_21;
  }

  if (v13 < 0)
  {
    goto LABEL_25;
  }

  result = sub_22A4DD6DC();
  if ((v14 & 1) == 0)
  {
    sub_22A4DD69C();

LABEL_21:

    return 1;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2295AF470()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id KeyPaths.__allocating_init(for:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A576190;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 32) = v5;
  *&v3[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id KeyPaths.init(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A576190;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 32) = v4;
  *&v1[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Bool __swiftcall KeyPaths.push(key:)(Swift::String key)
{
  v3 = v1;
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v6 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 < 0)
  {
    v12 = *(v3 + v6);
  }

  v8 = sub_22A4DE0EC();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 8 * v2 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_17:

  MEMORY[0x22AAD13F0](v2, v7);

LABEL_8:
  countAndFlagsBits = sub_2295AF000(countAndFlagsBits, object);

  if (countAndFlagsBits)
  {
    swift_beginAccess();

    MEMORY[0x22AAD09E0](v10);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_22A4DD87C();
      swift_endAccess();

      return countAndFlagsBits != 0;
    }

LABEL_20:
    sub_22A4DD85C();
    goto LABEL_10;
  }

  return countAndFlagsBits != 0;
}

Swift::Bool __swiftcall KeyPaths.popKey()()
{
  v1 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + v1);
    }

    v3 = sub_22A4DE0EC();
    if (v3 < 2)
    {
      goto LABEL_10;
    }

LABEL_3:
    swift_beginAccess();
    v4 = *(v0 + v1);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v10 = *(v0 + v1);
      }

      if (sub_22A4DE0EC())
      {
LABEL_5:
        if (sub_2295AFF30())
        {
LABEL_9:

          swift_endAccess();
          goto LABEL_10;
        }

        v5 = *(v0 + v1);
        if (!(v5 >> 62))
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v7 = __OFSUB__(v6, 1);
          v8 = v6 - 1;
          if (!v7)
          {
LABEL_8:
            sub_2295AFDD4(v8);
            goto LABEL_9;
          }

LABEL_21:
          __break(1u);
          return v8;
        }

LABEL_19:
        v11 = sub_22A4DE0EC();
        v7 = __OFSUB__(v11, 1);
        v8 = v11 - 1;
        if (!v7)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 2)
  {
    goto LABEL_3;
  }

LABEL_10:
  LOBYTE(v8) = v3 > 1;
  return v8;
}

Swift::Bool __swiftcall KeyPaths.contains(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_22A4DE0EC();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_12:

    MEMORY[0x22AAD13F0](v2, v6);

    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return v7;
  }

  v8 = *(v6 + 8 * v2 + 32);

LABEL_8:
  v9 = sub_2295AF2AC(countAndFlagsBits, object);

  LOBYTE(v7) = v9 & 1;
  return v7;
}

id KeyPaths.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyPaths.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2295AFD4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2295AFE64(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2295AFDD4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2295AFECC(v3);
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

uint64_t sub_2295AFECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22A4DE0EC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22A4DE22C();
}

uint64_t sub_2295AFF30()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2295AFECC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2295AFFA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2295AFFFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2295B0060(void *a1)
{
  v2 = v1;
  v39 = a1;
  v4 = sub_22A4DD07C();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  sub_2295B0734();
  v15 = [a1 identifier];
  sub_22A4DB79C();

  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  (*(v9 + 32))(v17 + v16, v12, v8);

  v18 = v39;
  sub_22A4DDC1C();
  (*(v9 + 8))(v14, v8);
  v19 = *(v41 + 16);
  v40 = v4;
  v19(v7, v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v4);
  swift_retain_n();
  v20 = v18;
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136315650;
    v25 = sub_22A4DB76C();
    v27 = sub_2295A3E30(v25, v26, &v42);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = [v20 shortDescription];
    v29 = sub_22A4DD5EC();
    v31 = v30;

    v32 = sub_2295A3E30(v29, v31, &v42);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2048;
    v33 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);

    *(v23 + 24) = v33;

    _os_log_impl(&dword_229538000, v21, v22, "[%s] Sending %s, retried: %lu", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v7, v40);
  v34 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight) = v20;
  v35 = v20;

  v36 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);
  v37 = __CFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = v38;
    [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageDispatcher) sendMessage:v35 completionHandler:0];
  }
}

uint64_t sub_2295B04B8()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider));
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer, &qword_27D87EA00, &qword_22A579B80);

  v3 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger;
  v4 = sub_22A4DD07C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultUserActivityReportMessenger()
{
  result = qword_27D87D830;
  if (!qword_27D87D830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295B0624()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22A4DD07C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2295B0734()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
  swift_beginAccess();
  sub_2295B23D0(v0 + v6, &v19);
  if (!*(&v20 + 1))
  {
    return sub_22953EAE4(&v19, &qword_27D87EA00, &qword_22A579B80);
  }

  sub_229557188(&v19, v22);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v1);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    *&v19 = v11;
    *v10 = 136315138;
    v12 = sub_22A4DB76C();
    v14 = sub_2295A3E30(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_229538000, v7, v8, "[%s] Canceling retry of last message", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v2 + 8))(v5, v18);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  sub_22A4DBC8C();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  sub_22953ED1C(&v19, v0 + v6);
  swift_endAccess();
  v16 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
  *(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = 0;

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_2295B09F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a4, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  (*(v8 + 32))(&v18[v16], v10, v7);
  *&v18[v17] = a1;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = v22;

  v19 = a1;

  sub_22957F3C0(0, 0, v14, &unk_22A578D80, v18);
}

uint64_t sub_2295B0C18(void *a1, uint64_t a2)
{
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2295B09F4(a1, a2, v6, v7);
}

uint64_t sub_2295B0C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2295B0CC0, 0, 0);
}

uint64_t sub_2295B0CC0()
{
  v1 = v0[5];
  if (v1)
  {
    v1 = sub_2296F7AE8(v1);
  }

  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2295B0D68;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_2295B1CE8(v4, v3);
}

uint64_t sub_2295B0D68()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2295B0E78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B0F14, 0, 0);
}

uint64_t sub_2295B0F14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_22957F3C0(0, 0, v2, &unk_22A578DB8, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295B1014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295B10A4();
}

uint64_t sub_2295B10A4()
{
  v1[18] = v0;
  v2 = sub_22A4DD07C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B1170, v0, 0);
}

uint64_t sub_2295B1170()
{
  v46 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
    swift_beginAccess();
    sub_2295B23D0(v1 + v4, v0 + 16);
    if (*(v0 + 40))
    {
      v5 = *(v0 + 176);
      v6 = *(v0 + 152);
      v7 = *(v0 + 160);
      v8 = *(v0 + 144);
      v9 = v3;
      sub_22953EAE4(v0 + 16, &qword_27D87EA00, &qword_22A579B80);
      (*(v7 + 16))(v5, v8 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v6);

      v10 = sub_22A4DD05C();
      v11 = sub_22A4DDCCC();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 176);
      v15 = *(v0 + 152);
      v14 = *(v0 + 160);
      if (v12)
      {
        log = v10;
        v16 = *(v0 + 144);
        v44 = *(v0 + 152);
        v17 = swift_slowAlloc();
        v41 = v11;
        v18 = swift_slowAlloc();
        v45 = v18;
        *v17 = 136315138;
        v19 = sub_22A4DB76C();
        v42 = v13;
        v21 = v9;
        v22 = sub_2295A3E30(v19, v20, &v45);

        *(v17 + 4) = v22;
        v9 = v21;
        _os_log_impl(&dword_229538000, log, v41, "[%s] Retry timer fired", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AAD4E50](v18, -1, -1);
        MEMORY[0x22AAD4E50](v17, -1, -1);

        (*(v14 + 8))(v42, v44);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }

      v35 = *(v0 + 144);
      *(v0 + 56) = 0u;
      *(v0 + 72) = 0u;
      *(v0 + 88) = 0;
      swift_beginAccess();
      sub_22953ED1C(v0 + 56, v1 + v4);
      swift_endAccess();
      v36 = *(v1 + v2);
      *(v1 + v2) = 0;

      sub_2295B0060(v9);
      goto LABEL_11;
    }

    sub_22953EAE4(v0 + 16, &qword_27D87EA00, &qword_22A579B80);
    v1 = *(v0 + 144);
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, *(v0 + 152));

  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCFC();

  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 152);
  if (v25)
  {
    v29 = *(v0 + 144);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136315138;
    v32 = sub_22A4DB76C();
    v34 = sub_2295A3E30(v32, v33, &v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_229538000, v23, v24, "[%s] Retry timer fired but the timer is no longer set", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  (*(v27 + 8))(v26, v28);
LABEL_11:
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2295B155C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229569B30;

  return sub_2295B0C9C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2295B16A0(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v52[-v13];
  if (*(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) >= 3uLL)
  {
    (*(v5 + 16))(&v52[-v13], v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v4);

    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58[0] = v30;
      *v29 = 136315138;
      v31 = sub_22A4DB76C();
      v33 = sub_2295A3E30(v31, v32, v58);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_229538000, v27, v28, "[%s] Not retrying because we have exhausted the retry count.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    return (*(v5 + 8))(v14, v4);
  }

  else
  {
    v15 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
    swift_beginAccess();
    sub_2295B23D0(v2 + v15, v58);
    v16 = OpaqueTypeMetadata2;
    sub_22953EAE4(v58, &qword_27D87EA00, &qword_22A579B80);
    v17 = *(v5 + 16);
    v18 = v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger;
    if (v16)
    {
      v17(v12, v18, v4);

      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCFC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v58[0] = v22;
        *v21 = 136315138;
        v23 = sub_22A4DB76C();
        v25 = sub_2295A3E30(v23, v24, v58);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_229538000, v19, v20, "[%s] Unexpectedly starting a retry timer while there is already one in progress.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AAD4E50](v22, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);
      }

      return (*(v5 + 8))(v12, v4);
    }

    else
    {
      v17(v9, v18, v4);

      v34 = a1;
      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58[0] = v55;
        *v37 = 136315650;
        v54 = v35;
        v38 = sub_22A4DB76C();
        v40 = sub_2295A3E30(v38, v39, v58);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        v41 = [v34 shortDescription];
        v42 = sub_22A4DD5EC();
        v53 = v36;
        v43 = v42;
        v45 = v44;

        v46 = sub_2295A3E30(v43, v45, v58);

        *(v37 + 14) = v46;
        *(v37 + 22) = 2048;
        *(v37 + 24) = 0x4072C00000000000;
        v35 = v54;
        _os_log_impl(&dword_229538000, v54, v53, "[%s] Scheduling to send %s after %f seconds.", v37, 0x20u);
        v47 = v55;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v47, -1, -1);
        MEMORY[0x22AAD4E50](v37, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      v48 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
      *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = v34;
      v49 = v34;

      v50 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider + 24);
      v51 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider + 32);
      __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider), v50);
      sub_22A4DE88C();
      v58[0] = v50;
      v58[1] = v51;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v56 = v50;
      v57 = v51;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v58);

      sub_22A4DBB0C();

      swift_beginAccess();
      sub_22953ED1C(v58, v2 + v15);
      return swift_endAccess();
    }
  }
}