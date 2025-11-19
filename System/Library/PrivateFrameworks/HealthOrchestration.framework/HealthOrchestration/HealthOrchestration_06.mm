uint64_t sub_22884D438(unint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v25 = v2;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    v12 = *(v29 + 16);
    if (*(v12 + 16))
    {
      v13 = (*(v25 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v10)))));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];

      v18 = sub_2287E6768(v14, v15, v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_2287E766C(*(v12 + 56) + 40 * v18, v26);
        v21 = v27;
        v22 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v22 + 64))(v21, v22);
        result = __swift_destroy_boxed_opaque_existential_1(v26);
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v23 = sub_228809168(MEMORY[0x277D84F90]);

      *a1 = v23;
      return result;
    }

    v10 = *(v3 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22884D5E8@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22884B800(*(v2 + 24), a1);
  *a2 = result;
  return result;
}

uint64_t sub_22884D62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x277D84F98];
    v4 = &protocol descriptor for InputSignalConfiguration;
    while (1)
    {
      sub_2287E766C(v2, &v105);
      v5 = *(&v106 + 1);
      v6 = v107;
      __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      (*(v6 + 16))(&v98, v5, v6);
      v7 = v98;
      v88 = v2;
      v90 = v99;
      if (v3[2] && (v8 = sub_2287E6768(v98, *(&v98 + 1), v99, *(&v99 + 1)), (v9 & 1) != 0))
      {
        v10 = *(v3[7] + 8 * v8);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      sub_228854BE8(0, &qword_2813CF270, qword_2813CFDF8, v4, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2288817D0;
      sub_2287E766C(&v105, inited + 32);
      v12 = v10[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v14 = v10[3] >> 1, v14 <= v12))
      {
        v10 = sub_2288305B0(isUniquelyReferenced_nonNull_native, v12 + 1, 1, v10);
        v14 = v10[3] >> 1;
      }

      if (v14 <= v10[2])
      {
        goto LABEL_65;
      }

      v86 = v1;
      v15 = v4;
      sub_2287E670C(0, qword_2813CFDF8);
      swift_arrayInitWithCopy();

      ++v10[2];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *&v98 = v3;
      v18 = sub_2287E6768(v7, *(&v7 + 1), v90, *(&v90 + 1));
      v19 = v3;
      v20 = v3[2];
      v21 = (v17 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_66;
      }

      v23 = v17;
      if (v19[3] >= v22)
      {
        if ((v16 & 1) == 0)
        {
          sub_228853934(sub_228854F84);
        }

        v24 = *(&v90 + 1);
        v27 = v98;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_228851734(v22, v16, sub_228854F84);
        v24 = *(&v90 + 1);
        v25 = sub_2287E6768(v7, *(&v7 + 1), v90, *(&v90 + 1));
        if ((v23 & 1) != (v26 & 1))
        {
          goto LABEL_68;
        }

        v18 = v25;
        v27 = v98;
        if (v23)
        {
LABEL_3:
          *(v27[7] + 8 * v18) = v10;

          v3 = v27;
          goto LABEL_4;
        }
      }

      v27[(v18 >> 6) + 8] |= 1 << v18;
      v28 = v27[6] + 32 * v18;
      *v28 = v7;
      *(v28 + 16) = v90;
      *(v28 + 24) = v24;
      *(v27[7] + 8 * v18) = v10;
      v29 = v27[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_67;
      }

      v3 = v27;
      v27[2] = v31;
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(&v105);
      v2 = v88 + 40;
      --v1;
      v4 = v15;
      if (v86 == 1)
      {
        goto LABEL_24;
      }
    }
  }

  v3 = MEMORY[0x277D84F98];
LABEL_24:
  v32 = MEMORY[0x277D84F90];
  v33 = v3 + 8;
  v34 = 1 << *(v3 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v3[8];
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v84 = v32;
  v89 = v3 + 8;
  v91 = v37;
  v87 = v3;
  while (v36)
  {
    v39 = v38;
LABEL_32:
    v40 = __clz(__rbit64(v36)) | (v39 << 6);
    v41 = (v3[6] + 32 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v46 = *(v3[7] + 8 * v40);
    v47 = *(v85 + 16);
    v48 = *(v47 + 16);

    if (v48 && (v49 = sub_2287E6768(v42, v43, v44, v45), (v50 & 1) != 0))
    {
      sub_2287E766C(*(v47 + 56) + 40 * v49, &v98);
      sub_2287EC014(&v98, v102);
      v51 = v103;
      v52 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v53 = sub_22884DEF4(v46, v51, v52);
      sub_2287E766C(v102, v97);
      sub_2287E766C(v97, &v98);
      v54 = *(v46 + 16);
      if (v54)
      {
        v92[0] = MEMORY[0x277D84F90];

        sub_22881DAB4(0, v54, 0);
        v55 = v92[0];
        v56 = v46 + 32;
        do
        {
          sub_2287E766C(v56, &v94);
          v92[0] = v55;
          v58 = *(v55 + 16);
          v57 = *(v55 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_22881DAB4((v57 > 1), v58 + 1, 1);
            v55 = v92[0];
          }

          *(v55 + 16) = v58 + 1;
          v59 = v55 + 40 * v58;
          v60 = v94;
          v61 = v95;
          *(v59 + 64) = v96;
          *(v59 + 32) = v60;
          *(v59 + 48) = v61;
          v56 += 40;
          --v54;
        }

        while (v54);

        v3 = v87;
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v62 = *(v55 + 16);
      v63 = sub_22880A5AC();
      v93 = MEMORY[0x22AAC0530](v62, &type metadata for InputSignalObservationManager.AnyConfiguration);
      v64 = *(v55 + 16);
      if (v64)
      {
        v65 = v55 + 32;
        do
        {
          sub_22881B930(v65, v92);
          sub_228877734(&v94, v92);
          sub_22881B98C(&v94);
          v65 += 40;
          --v64;
        }

        while (v64);
      }

      *(&v100 + 1) = v93;
      v66 = *(v53 + 16);
      if (v66)
      {
        v92[0] = MEMORY[0x277D84F90];
        sub_22881DAB4(0, v66, 0);
        v67 = v92[0];
        v68 = v53 + 32;
        do
        {
          sub_2287E766C(v68, &v94);
          v92[0] = v67;
          v70 = *(v67 + 16);
          v69 = *(v67 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_22881DAB4((v69 > 1), v70 + 1, 1);
            v67 = v92[0];
          }

          *(v67 + 16) = v70 + 1;
          v71 = v67 + 40 * v70;
          v72 = v94;
          v73 = v95;
          *(v71 + 64) = v96;
          *(v71 + 32) = v72;
          *(v71 + 48) = v73;
          v68 += 40;
          --v66;
        }

        while (v66);

        v3 = v87;
      }

      else
      {

        v67 = MEMORY[0x277D84F90];
      }

      v93 = MEMORY[0x22AAC0530](*(v67 + 16), &type metadata for InputSignalObservationManager.AnyConfiguration, v63);
      v74 = *(v67 + 16);
      if (v74)
      {
        v75 = v67 + 32;
        do
        {
          sub_22881B930(v75, v92);
          sub_228877734(&v94, v92);
          sub_22881B98C(&v94);
          v75 += 40;
          --v74;
        }

        while (v74);
      }

      v76 = v93;
      __swift_destroy_boxed_opaque_existential_1(v97);
      v108 = v76;
      v105 = v98;
      v106 = v99;
      v107 = v100;
      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0;
    }

    v33 = v89;
    v37 = v91;
    v36 &= v36 - 1;
    if (*(&v106 + 1))
    {
      v98 = v105;
      v99 = v106;
      v100 = v107;
      v101 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_228830470(0, *(v84 + 2) + 1, 1, v84);
      }

      v78 = *(v84 + 2);
      v77 = *(v84 + 3);
      if (v78 >= v77 >> 1)
      {
        v84 = sub_228830470((v77 > 1), v78 + 1, 1, v84);
      }

      *(v84 + 2) = v78 + 1;
      v79 = &v84[56 * v78];
      v80 = v98;
      v81 = v99;
      v82 = v100;
      *(v79 + 10) = v101;
      *(v79 + 3) = v81;
      *(v79 + 4) = v82;
      *(v79 + 2) = v80;
      v38 = v39;
    }

    else
    {
      sub_228854B24(&v105, &unk_27D8526C8, &type metadata for InputSignalObservationManager.InputSignalSetupRecord, MEMORY[0x277D83D88], sub_228854F34);
      v38 = v39;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      return v84;
    }

    v36 = v33[v39];
    ++v38;
    if (v36)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_22884DEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228854BE8(0, &qword_2813CF5E8, qword_2813CFDF8, &protocol descriptor for InputSignalConfiguration, MEMORY[0x277D83940]);
  swift_getAssociatedTypeWitness();
  sub_228854E44();
  sub_22887F470();
  v4 = (*(a3 + 72))();

  return v4;
}

uint64_t sub_22884E000(uint64_t a1)
{
  v49 = sub_22887F180();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = v1;
  result = sub_22884D62C(a1);
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  v53 = v4;
  while (1)
  {
    v52 = v7;
    if (v8)
    {
      v9 = 0;
      v56 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
      v54 = v6;
      v55 = v8;
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_2288054D8(v56 + 56 * v9, v65);
        v12 = v66;
        v13 = *(v66 + 16);
        if (v13)
        {
          v57 = v9;
          v58 = v10;
          v64 = MEMORY[0x277D84F90];

          sub_22881DA5C(0, v13, 0);
          v14 = v64;
          v61 = v12 + 56;
          v15 = sub_22887F830();
          v16 = 0;
          v59 = v12 + 64;
          v60 = v13;
          while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v12 + 32))
          {
            v19 = v15 >> 6;
            if ((*(v61 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
            {
              goto LABEL_49;
            }

            v6 = *(v12 + 36);
            sub_22881B930(*(v12 + 48) + 40 * v15, v62);
            sub_2287EC014(v62, v63);
            v64 = v14;
            v21 = *(v14 + 16);
            v20 = *(v14 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_22881DA5C((v20 > 1), v21 + 1, 1);
              v14 = v64;
            }

            *(v14 + 16) = v21 + 1;
            sub_2287EC014(v63, v14 + 40 * v21 + 32);
            v17 = 1 << *(v12 + 32);
            if (v15 >= v17)
            {
              goto LABEL_50;
            }

            v22 = *(v61 + 8 * v19);
            if ((v22 & (1 << v15)) == 0)
            {
              goto LABEL_51;
            }

            if (v6 != *(v12 + 36))
            {
              goto LABEL_52;
            }

            v23 = v22 & (-2 << (v15 & 0x3F));
            if (v23)
            {
              v17 = __clz(__rbit64(v23)) | v15 & 0x7FFFFFFFFFFFFFC0;
              v18 = v60;
            }

            else
            {
              v24 = v19 << 6;
              v25 = v19 + 1;
              v18 = v60;
              v26 = (v59 + 8 * v19);
              while (v25 < (v17 + 63) >> 6)
              {
                v28 = *v26++;
                v27 = v28;
                v24 += 64;
                ++v25;
                if (v28)
                {
                  sub_22883F9F0(v15, v6, 0);
                  v17 = __clz(__rbit64(v27)) + v24;
                  goto LABEL_10;
                }
              }

              sub_22883F9F0(v15, v6, 0);
            }

LABEL_10:
            ++v16;
            v15 = v17;
            if (v16 == v18)
            {
              sub_228805534(v65);

              v4 = v53;
              v6 = v54;
              v10 = v58;
              v9 = v57;
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        result = sub_228805534(v65);
        v14 = MEMORY[0x277D84F90];
LABEL_27:
        v29 = *(v14 + 16);
        v30 = v10[2];
        v31 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_56;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) != 0 && v31 <= v10[3] >> 1)
        {
          if (!*(v14 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v30 <= v31)
          {
            v32 = v30 + v29;
          }

          else
          {
            v32 = v30;
          }

          result = sub_2288305B0(result, v32, 1, v10);
          v10 = result;
          if (!*(v14 + 16))
          {
LABEL_4:

            v11 = v55;
            if (v29)
            {
              goto LABEL_57;
            }

            goto LABEL_5;
          }
        }

        if ((v10[3] >> 1) - v10[2] < v29)
        {
          goto LABEL_58;
        }

        sub_2287E670C(0, qword_2813CFDF8);
        swift_arrayInitWithCopy();

        v11 = v55;
        if (v29)
        {
          v33 = v10[2];
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_59;
          }

          v10[2] = v35;
        }

LABEL_5:
        if (++v9 == v11)
        {
          goto LABEL_41;
        }
      }
    }

    v10 = MEMORY[0x277D84F90];
LABEL_41:
    v65[0] = v50;

    sub_228861BA0(v10);
    v36 = sub_22884D62C(v65[0]);

    if (sub_22880479C(v6, v36))
    {
LABEL_53:

      return v6;
    }

    v37 = *(v6 + 16);

    v7 = 0;
    v8 = *(v36 + 16);
    v6 = v36;
    if (v37 == v8)
    {
      v7 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
LABEL_60:
        __break(1u);
        return result;
      }

      v6 = v36;
      if (v37 < v7)
      {
        break;
      }
    }
  }

  v39 = *(v51 + 48);
  v38 = *(v51 + 56);
  swift_getObjectType();
  (*(v38 + 40))();

  v40 = sub_22887F160();
  v41 = sub_22887F6A0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v65[0] = v43;
    *v42 = 136315138;
    *&v63[0] = v39;
    swift_unknownObjectRetain();
    v44 = sub_22887F3B0();
    v46 = sub_2287E64D8(v44, v45, v65);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_2287E4000, v40, v41, "[%s]: Failed to close input signal configurations; bailing with what we have.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AAC1440](v43, -1, -1);
    MEMORY[0x22AAC1440](v42, -1, -1);
  }

  (*(v48 + 8))(v4, v49);
  return v36;
}

uint64_t sub_22884E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_22887F7D0();
  v23 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v21 = &v21 - v16;
  v28[0] = a2;
  v24 = a3;
  v25 = a4;
  sub_228854BE8(0, &qword_2813CF5E8, qword_2813CFDF8, &protocol descriptor for InputSignalConfiguration, MEMORY[0x277D83940]);
  swift_getAssociatedTypeWitness();
  sub_228854E44();
  v17 = sub_22887F470();
  sub_2287F09B0(v22, &v26);
  if (v27)
  {
    v22 = v8;
    sub_2287EC014(&v26, v28);
    sub_2287E766C(v28, &v26);
    sub_2287E670C(0, qword_2813D0F88);
    if (swift_dynamicCast())
    {
      v18 = *(v15 + 56);
      v18(v14, 0, 1, AssociatedTypeWitness);
      v19 = v21;
      (*(v15 + 32))(v21, v14, AssociatedTypeWitness);
      (*(v15 + 16))(v11, v19, AssociatedTypeWitness);
      v18(v11, 0, 1, AssociatedTypeWitness);
      (*(a4 + 56))(v11, v17, a3, a4);

      (*(v23 + 8))(v11, v22);
      (*(v15 + 8))(v19, AssociatedTypeWitness);
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {

      (*(v15 + 56))(v14, 1, 1, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return (*(v23 + 8))(v14, v22);
    }
  }

  else
  {
    sub_228854DB8(&v26, &qword_2813D0F80, qword_2813D0F88, &protocol descriptor for InputSignalAnchor);
    (*(v15 + 56))(v11, 1, 1, AssociatedTypeWitness);
    (*(a4 + 56))(v11, v17, a3, a4);

    return (*(v23 + 8))(v11, v8);
  }
}

uint64_t sub_22884EAC0(unint64_t a1, uint64_t a2)
{
  v84[0] = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_14:
    v5 = sub_22887FA20();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAC07F0](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v9 = v84[0];
            goto LABEL_16;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v7 = *(a1 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_11;
          }
        }

        v96[0] = v7;
        sub_22884F220(v84, v96, v2);

        ++v6;
        if (v8 == v5)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F98];
LABEL_16:
  v67 = *(a2 + 16);
  if (!v67)
  {
    return v9;
  }

  v10 = 0;
  v68 = a2 + 32;
  v11 = MEMORY[0x277D84F90];
LABEL_19:
  v12 = v10;
  sub_2288054D8(v68 + 56 * v10, v96);
  v69 = v12 + 1;
  v13 = v97;
  v14 = v97 + 56;
  v15 = 1 << *(v97 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v97 + 56);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v78 = v13 + 64;
  v80 = v14;
  v71 = v18;
  while (v17)
  {
LABEL_30:
    v72 = v17;
    v73 = v19;
    sub_22881B930(*(v13 + 48) + 40 * (__clz(__rbit64(v17)) | (v19 << 6)), &v93);
    v91[0] = v93;
    v91[1] = v94;
    v21 = v95;
    v92 = v95;
    v22 = *(&v94 + 1);
    __swift_project_boxed_opaque_existential_1(v91, *(&v94 + 1));
    (*(v21 + 16))(v84, v22, v21);
    v74 = v84[2];
    v75 = v84[0];
    v76 = v84[1];
    v77 = v85;
    v23 = *(v13 + 16);
    if (v23)
    {
      v70 = v9;
      v90 = v11;
      sub_2287F6AD8(0, v23, 0);
      v82 = v90;
      v24 = v80;
      v25 = sub_22887F830();
      v26 = 0;
      v79 = v23;
      while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v13 + 32))
      {
        v28 = v25 >> 6;
        if ((*(v24 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_68;
        }

        v81 = *(v13 + 36);
        sub_22881B930(*(v13 + 48) + 40 * v25, v84);
        v30 = v85;
        v29 = v86;
        __swift_project_boxed_opaque_existential_1(v84, v85);
        (*(v29 + 16))(v88, v30, v29);
        sub_22881B98C(v84);
        v31 = v88[0];
        v32 = v88[1];
        v33 = v89;
        v34 = v82;
        v90 = v82;
        v35 = v13;
        v37 = *(v82 + 16);
        v36 = *(v82 + 24);
        if (v37 >= v36 >> 1)
        {
          v83 = v89;
          sub_2287F6AD8((v36 > 1), v37 + 1, 1);
          v33 = v83;
          v34 = v90;
        }

        *(v34 + 16) = v37 + 1;
        v38 = v34 + 32 * v37;
        *(v38 + 32) = v31;
        *(v38 + 40) = v32;
        *(v38 + 48) = v33;
        v27 = 1 << *(v35 + 32);
        if (v25 >= v27)
        {
          goto LABEL_69;
        }

        v13 = v35;
        v24 = v80;
        v39 = *(v80 + 8 * v28);
        if ((v39 & (1 << v25)) == 0)
        {
          goto LABEL_70;
        }

        if (v81 != *(v13 + 36))
        {
          goto LABEL_71;
        }

        v82 = v34;
        v40 = v39 & (-2 << (v25 & 0x3F));
        if (v40)
        {
          v27 = __clz(__rbit64(v40)) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v28 << 6;
          v42 = v28 + 1;
          v43 = (v78 + 8 * v28);
          while (v42 < (v27 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_22883F9F0(v25, v81, 0);
              v27 = __clz(__rbit64(v44)) + v41;
              goto LABEL_33;
            }
          }

          sub_22883F9F0(v25, v81, 0);
        }

LABEL_33:
        ++v26;
        v25 = v27;
        if (v26 == v79)
        {
          v11 = MEMORY[0x277D84F90];
          v9 = v70;
          v46 = v82;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v46 = v11;
LABEL_50:
    v47 = sub_22887D6C4(v46);

    sub_2287E766C(v96, v84);
    sub_2287E766C(v91, v87);
    v87[5] = v47;
    if (v9[2] && (v48 = sub_2287E6768(v75, v76, v74, v77), (v49 & 1) != 0))
    {
      v50 = *(v9[7] + 8 * v48);
    }

    else
    {
      v50 = v11;
    }

    sub_228854F34(0, &qword_2813CF260, &type metadata for InputSignalObservationManager.SignalDependent, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2288817D0;
    sub_2288372E4(v84, inited + 32);
    *(inited + 120) = 0;
    v52 = *(v50 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v54 = *(v50 + 3) >> 1, v54 <= v52))
    {
      v50 = sub_228830738(isUniquelyReferenced_nonNull_native, v52 + 1, 1, v50);
      v54 = *(v50 + 3) >> 1;
    }

    if (v54 <= *(v50 + 2))
    {
      goto LABEL_73;
    }

    v55 = v13;
    swift_arrayInitWithCopy();

    ++*(v50 + 2);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v9;
    v57 = sub_2287E6768(v75, v76, v74, v77);
    v59 = v9[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_74;
    }

    v63 = v58;
    if (v9[3] >= v62)
    {
      if ((v56 & 1) == 0)
      {
        v65 = v57;
        sub_228853934(sub_228854D28);
        v57 = v65;
      }
    }

    else
    {
      sub_228851734(v62, v56, sub_228854D28);
      v57 = sub_2287E6768(v75, v76, v74, v77);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_75;
      }
    }

    v13 = v55;
    v9 = v88[0];
    if (v63)
    {
      *(v88[0][7] + 8 * v57) = v50;
    }

    else
    {
      sub_22885BA08(v57, v75, v76, v74, v77, v50, v88[0]);
    }

    v18 = v71;
    v17 = (v72 - 1) & v72;
    sub_228837340(v84);
    sub_22881B98C(v91);
    v14 = v80;
    v19 = v73;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      sub_228805534(v96);
      v10 = v69;
      if (v69 == v67)
      {
        return v9;
      }

      goto LABEL_19;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_30;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);

  __break(1u);
LABEL_75:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_22884F220(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v48 = *a2;
  v3 = *(*a2 + 128);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(*a2 + 128) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  for (i = v11; v9; *a1 = v41)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (*(v11 + 48) + ((v12 << 11) | (32 * v14)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v20 = *(a3 + 16);
      v21 = *(v20 + 16);

      if (v21)
      {
        v22 = sub_2287E6768(v16, v17, v18, v19);
        if (v23)
        {
          break;
        }
      }

      v56 = 0;
      memset(v55, 0, sizeof(v55));

      sub_228854DB8(v55, &qword_2813D1570, &qword_2813D1578, &protocol descriptor for InputSignal);
      v11 = i;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v50 = v18;
    v51 = v16;
    v57 = v17;
    sub_2287E766C(*(v20 + 56) + 40 * v22, v55);
    sub_228854DB8(v55, &qword_2813D1570, &qword_2813D1578, &protocol descriptor for InputSignal);
    v24 = *a1;
    if (*(*a1 + 16))
    {
      v25 = v18;
      v26 = v51;
      v27 = sub_2287E6768(v51, v57, v18, v19);
      if (v28)
      {
        v29 = *(*(v24 + 56) + 8 * v27);
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      v25 = v18;
      v26 = v51;
    }

    sub_228854F34(0, &qword_2813CF260, &type metadata for InputSignalObservationManager.SignalDependent, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2288817D0;
    *(inited + 32) = v48;
    *(inited + 120) = 1;
    *&v55[0] = v29;

    sub_228861C9C(inited);
    v49 = *&v55[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[0] = *a1;
    v32 = *&v55[0];
    v34 = sub_2287E6768(v26, v57, v25, v19);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_32;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = *&v55[0];
        if (v33)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_228853934(sub_228854D28);
        v41 = *&v55[0];
        if (v38)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_228851734(v37, isUniquelyReferenced_nonNull_native, sub_228854D28);
      v39 = sub_2287E6768(v51, v57, v50, v19);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_34;
      }

      v34 = v39;
      v41 = *&v55[0];
      if (v38)
      {
LABEL_24:
        *(v41[7] + 8 * v34) = v49;

        goto LABEL_28;
      }
    }

    v41[(v34 >> 6) + 8] |= 1 << v34;
    v42 = (v41[6] + 32 * v34);
    v43 = v57;
    *v42 = v51;
    v42[1] = v43;
    v42[2] = v50;
    v42[3] = v19;
    *(v41[7] + 8 * v34) = v49;
    v44 = v41[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_33;
    }

    v41[2] = v46;
LABEL_28:
    v11 = i;
  }

LABEL_6:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_22884F624(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F7D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2287E766C(a1, v17);
  sub_2287E670C(0, qword_2813CFDF8);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v8, 0, 1, a2);
    (*(v9 + 32))(v11, v8, a2);
    v14 = sub_22887F360();
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    v13(v8, 1, 1, a2);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_22884F854()
{
  sub_22887FC90();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_22887F340();
  return sub_22887FCD0();
}

uint64_t sub_22884F904()
{
  sub_22887FC90();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_22887F340();
  return sub_22887FCD0();
}

uint64_t sub_22884F964(void *a1, uint64_t a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_22884F624(a2, v3) & 1;
}

uint64_t InputSignalObservationManager.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t InputSignalObservationManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22884FA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2287E766C(a1, v6);
  sub_2287E670C(0, qword_2813CFDF8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v4 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_22884FB34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22880A400();
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x22AAC0BB0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22884FD90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287E5FBC(0, &qword_27D851A60, MEMORY[0x277D839F8], MEMORY[0x277D84460]);
  v33 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22885004C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_22887F0C0();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22887F060();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22885501C(0, &unk_27D852670, MEMORY[0x277CC9578]);
  v45 = a2;
  v12 = v11;
  result = sub_22887FA40();
  v14 = result;
  if (*(v11 + 16))
  {
    v49 = v10;
    v50 = v7;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v8 + 16);
    v42 = v12;
    v40[0] = v2;
    v40[1] = v5 + 16;
    v43 = v8;
    v44 = v5;
    v46 = (v5 + 32);
    v47 = (v8 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v8 + 72);
      v28 = v27 + v48 * v26;
      if (v45)
      {
        (*v47)(v49, v28, v50);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        (*(v44 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v41)(v49, v28, v50);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        (*(v44 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22884A7C4();
      result = sub_22887F330();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v8 = v43;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v8 = v43;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v50);
      result = (*v46)(*(v14 + 56) + v30 * v22, v51, v52);
      ++*(v14 + 16);
      v12 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40[0];
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40[0];
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_2288504D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_22887F060();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_22885501C(0, &qword_27D851AC0, type metadata accessor for FileCoordinatorInputSignal.Presenter);
  v40 = a2;
  result = sub_22887FA40();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_22884A7C4();
      result = sub_22887F330();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22885088C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22880A99C();
  v37 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v41 = v22[2];
      v26 = v22[5];
      v39 = v22[4];
      v40 = *(v21 + 16 * v20);
      if ((v37 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22887FC90();
      sub_22887F3E0();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v41;
      v16[3] = v25;
      v16[4] = v39;
      v16[5] = v26;
      *(*(v7 + 56) + 16 * v15) = v40;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228850B88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22880A718();
  v37 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = v22[1];
      v41 = *v22;
      v24 = v22[3];
      v40 = v22[2];
      v25 = v22[5];
      v39 = v22[4];
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v41;
      v16[1] = v23;
      v16[2] = v40;
      v16[3] = v24;
      v16[4] = v39;
      v16[5] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228850E80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287E5FBC(0, &qword_27D8526C0, &type metadata for RequestedWorkExecutor.RequestedWork, MEMORY[0x277D84460]);
  v38 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v42 = *v24;
      v43 = *v22;
      v26 = *(v24 + 16);
      v41 = *(v24 + 24);
      v27 = *(v24 + 40);
      v40 = *(v24 + 32);
      if ((v38 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v41;
      v12 = v39;
      *(v17 + 32) = v40;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2288511A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287E5FBC(0, &unk_2813CF350, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
  v37 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228851498(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287E9A7C();
  v34 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228851734(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v37 = a2;
  result = sub_22887FA40();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v3;
    v36 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 32 * v21);
      v24 = v23[1];
      v39 = *v23;
      v25 = v23[3];
      v38 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v24;
      v17[2] = v38;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v6 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2288519F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_228854C8C();
  v41 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 32 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v42 = v25[2];
      v29 = (v24 + 48 * v23);
      if (v41)
      {
        v30 = *v29;
        v31 = v29[2];
        v44 = v29[1];
        v45 = v31;
        v43 = v30;
      }

      else
      {
        sub_228854CF0(v29, &v43);
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v26;
      v16[1] = v27;
      v16[2] = v42;
      v16[3] = v28;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v43;
      v19 = v45;
      v17[1] = v44;
      v17[2] = v19;
      *v17 = v18;
      ++*(v7 + 16);
      v5 = v40;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228851CF4(uint64_t a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  sub_228854AB0(0, a3, a4, MEMORY[0x277D84460]);
  v36 = a2;
  result = sub_22887FA40();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_228851FAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_228854A4C(0, &unk_27D8526A0, sub_22880A39C);
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = MEMORY[0x22AAC0BB0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228852230(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_228854A4C(0, &unk_27D852690, sub_22880A340);
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x22AAC0BB0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2288524A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287E5FBC(0, &unk_27D852680, MEMORY[0x277D849A8], MEMORY[0x277D84460]);
  v34 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228852760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22880A1C8();
  v33 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_228852A0C()
{
  v1 = v0;
  sub_22880A400();
  v2 = *v0;
  v3 = sub_22887FA30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_228852B4C()
{
  v1 = v0;
  sub_2287E5FBC(0, &qword_27D851A60, MEMORY[0x277D839F8], MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22887FA30();
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

char *sub_228852CCC()
{
  v1 = v0;
  v41 = sub_22887F0C0();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22887F060();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22885501C(0, &unk_27D852670, MEMORY[0x277CC9578]);
  v4 = *v0;
  v5 = sub_22887FA30();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_228853030()
{
  v1 = v0;
  v31 = sub_22887F060();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22885501C(0, &qword_27D851AC0, type metadata accessor for FileCoordinatorInputSignal.Presenter);
  v3 = *v0;
  v4 = sub_22887FA30();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2288532B4()
{
  v1 = v0;
  sub_22880A99C();
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v18 = 48 * v17;
        v19 = (*(v2 + 48) + 48 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v24 = v19[4];
        v23 = v19[5];
        v17 *= 16;
        v25 = (*(v4 + 48) + v18);
        v26 = *(*(v2 + 56) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v24;
        v25[5] = v23;
        *(*(v4 + 56) + v17) = v26;

        swift_unknownObjectRetain();
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

void *sub_228853458()
{
  v1 = v0;
  sub_22880A718();
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v18 = (*(v2 + 48) + 48 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v24 = v18[4];
        v23 = v18[5];
        v25 = (*(v4 + 48) + 48 * v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v24;
        v25[5] = v23;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_2288535E8()
{
  v1 = v0;
  sub_2287E5FBC(0, &qword_27D8526C0, &type metadata for RequestedWorkExecutor.RequestedWork, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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

void *sub_2288537D0()
{
  v1 = v0;
  sub_2287E9A7C();
  v2 = *v0;
  v3 = sub_22887FA30();
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

void *sub_228853934(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_22887FA30();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 32 * v18);
        v20 = v19[1];
        v22 = v19[2];
        v21 = v19[3];
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = (*(v5 + 48) + 32 * v18);
        *v24 = *v19;
        v24[1] = v20;
        v24[2] = v22;
        v24[3] = v21;
        *(*(v5 + 56) + 8 * v18) = v23;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_228853AB8()
{
  v1 = v0;
  sub_228854C8C();
  v2 = *v0;
  v3 = sub_22887FA30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v29 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v30 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 32 * v16;
        v18 = (*(v2 + 48) + 32 * v16);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = 48 * v16;
        sub_228854CF0(*(v2 + 56) + 48 * v16, v31);
        v24 = (*(v29 + 48) + v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v25 = (*(v29 + 56) + v23);
        v27 = v31[1];
        v26 = v31[2];
        *v25 = v31[0];
        v25[1] = v27;
        v25[2] = v26;

        v11 = v30;
      }

      while (v30);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v28;
        v4 = v29;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v30 = (v15 - 1) & v15;
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

void *sub_228853CA0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  sub_228854AB0(0, a1, a2, MEMORY[0x277D84460]);
  v4 = *v2;
  v5 = sub_22887FA30();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_228853E20()
{
  v1 = v0;
  sub_228854A4C(0, &unk_27D8526A0, sub_22880A39C);
  v2 = *v0;
  v3 = sub_22887FA30();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_228853F8C()
{
  v1 = v0;
  sub_228854A4C(0, &unk_27D852690, sub_22880A340);
  v2 = *v0;
  v3 = sub_22887FA30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2288540E8()
{
  v1 = v0;
  sub_2287E5FBC(0, &unk_27D852680, MEMORY[0x277D849A8], MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_228854268()
{
  v1 = v0;
  sub_22880A1C8();
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_2288543DC()
{
  v1 = v0;
  sub_2287F2964();
  v2 = *v0;
  v3 = sub_22887FA30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
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
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = 40 * v17;
        sub_2287E766C(*(v2 + 56) + 40 * v17, v27);
        v24 = (*(v26 + 48) + v18);
        *v24 = v21;
        v24[1] = v20;
        v24[2] = v22;
        sub_2287EC014(v27, *(v26 + 56) + v23);
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

        v1 = v25;
        v4 = v26;
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

uint64_t sub_22885458C(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 40))(v15, v4, v5);
  v7 = v15[0];
  v6 = v15[1];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 40))(v14, v8, v9);
  if (v7 == v14[0] && v6 == v14[1])
  {
  }

  else
  {
    v10 = sub_22887FBF0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = a1[5];
  v12 = a2[5];

  return sub_228815FD8(v11, v12);
}

uint64_t sub_2288547F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_228854838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2288548C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288548FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_228854950(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_2288549A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2288549EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_228854A4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887FA60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228854AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228854B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_228854B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228854BE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2287E670C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228854C8C()
{
  if (!qword_2813CF3C0)
  {
    sub_2287F74F8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3C0);
    }
  }
}

void sub_228854D28()
{
  if (!qword_2813CF390)
  {
    sub_228854F34(255, &qword_2813CF5D8, &type metadata for InputSignalObservationManager.SignalDependent, MEMORY[0x277D83940]);
    sub_2287F74F8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF390);
    }
  }
}

uint64_t sub_228854DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_228854BE8(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_228854E44()
{
  result = qword_2813CF5E0;
  if (!qword_2813CF5E0)
  {
    sub_228854BE8(255, &qword_2813CF5E8, qword_2813CFDF8, &protocol descriptor for InputSignalConfiguration, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CF5E0);
  }

  return result;
}

void sub_228854EC8()
{
  if (!qword_2813CF380)
  {
    sub_22880A550();
    sub_2287F74F8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF380);
    }
  }
}

void sub_228854F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_228854F84()
{
  if (!qword_2813CF3A0)
  {
    sub_228854BE8(255, &qword_2813CF5E8, qword_2813CFDF8, &protocol descriptor for InputSignalConfiguration, MEMORY[0x277D83940]);
    sub_2287F74F8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3A0);
    }
  }
}

void sub_22885501C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22887F060();
    a3(255);
    sub_22884A7C4();
    v5 = sub_22887FA60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228855098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2288550E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_228855158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2288551A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2288551FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_228855244(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2288552A0()
{
  result = qword_2813CFB40;
  if (!qword_2813CFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CFB40);
  }

  return result;
}

void *RemoteExecutionEngine.__allocating_init(contextProvider:executorProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

HealthOrchestration::RemoteExecutionEngine::Errors_optional __swiftcall RemoteExecutionEngine.Errors.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *RemoteExecutionEngine.init(contextProvider:executorProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void sub_2288553C4(uint64_t a1, uint64_t *a2, void (*a3)(void, id), uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v4;
    v8 = 0;
    v9 = *a2;
    v10 = a2[1];
    v11 = v5 + 32;
    v43 = a2[3];
    v44 = a2[2];
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      sub_2287E766C(v11, &v47);
      v12 = v48;
      v13 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, v48);
      if ((*(v13 + 8))(v12, v13) == v9 && v14 == v10)
      {
        break;
      }

      v16 = sub_22887FBF0();

      if (v16)
      {
        goto LABEL_12;
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v11 += 40;
      if (v6 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    sub_2287F8A28(&v47, &v50);
    sub_2287F8A28(&v50, v51);
    v20 = *(v7 + 16);
    v21 = *(v7 + 24);
    ObjectType = swift_getObjectType();
    v23 = sub_228824E0C(v20, ObjectType, v21);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = v52;
    v26 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v40 = AssociatedConformanceWitness;
    v41 = v23;
    v27 = (*(v26 + 16))(v23, AssociatedConformanceWitness, v25, v26);
    v28 = v27;
    v29 = *(v27 + 16);
    if (v29)
    {
      v30 = 0;
      v31 = (v27 + 40);
      while (v30 < *(v28 + 16))
      {
        v32 = *v31;
        v33 = swift_getObjectType();
        v34 = *(v32 + 24);
        swift_unknownObjectRetain();
        v34(&v50, v33, v32);
        if (v50 == v44 && *(&v50 + 1) == v43)
        {

LABEL_23:

          sub_228855A4C(a1, v41, v40, a3, a4, v33, v32);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        v36 = sub_22887FBF0();

        if (v36)
        {
          goto LABEL_23;
        }

        ++v30;
        swift_unknownObjectRelease();
        v31 += 2;
        if (v29 == v30)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_27;
    }

LABEL_21:

    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_22887F370();
    v39 = [v37 initWithDomain:v38 code:1 userInfo:0];

    a3(0, v39);
    swift_unknownObjectRelease();

LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
LABEL_10:
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = sub_22887F370();
    v19 = [v17 initWithDomain:v18 code:0 userInfo:0];

    a3(0, v19);
  }
}

void sub_228855990()
{
  if (!qword_27D8526D0)
  {
    sub_2288559E8();
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8526D0);
    }
  }
}

void sub_2288559E8()
{
  if (!qword_27D851AA8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851AA8);
    }
  }
}

uint64_t sub_228855A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v29 = a4;
  v26 = a3;
  v27 = a2;
  swift_getAssociatedTypeWitness();
  v28 = a6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  swift_getAssociatedConformanceWitness();
  sub_228824D74();
  (*(v10 + 16))(v13, v15, AssociatedTypeWitness);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 2) = v28;
  *(v18 + 3) = a7;
  v20 = v30;
  *(v18 + 4) = v29;
  *(v18 + 5) = v20;
  (*(v10 + 32))(&v18[v16], v13, AssociatedTypeWitness);
  v21 = &v18[v17];
  v22 = v26;
  *v21 = v27;
  *(v21 + 1) = v22;
  v23 = *(a7 + 40);

  swift_unknownObjectRetain();
  v23(v15, sub_228856908, v18, v19, a7);

  return (*(v10 + 8))(v15, AssociatedTypeWitness);
}

uint64_t RemoteExecutionEngine.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RemoteExecutionEngine.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228855F80(void *a1, void (*a2)(id, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v14 = a1;
    a2(0, a1);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15[3] = AssociatedTypeWitness;
    v15[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a4, AssociatedTypeWitness);
    objc_allocWithZone(type metadata accessor for SecurelyCodableWorkPlan());
    swift_unknownObjectRetain();
    v13 = SecurelyCodableWorkPlan.init(_:context:)(v15, a5, a6);
    a2(v13, 0);
  }
}

uint64_t sub_228856180(uint64_t a1)
{
  sub_2288559E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2288561E0()
{
  result = qword_27D8526D8;
  if (!qword_27D8526D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8526D8);
  }

  return result;
}

void sub_2288562B8(uint64_t a1, uint64_t *a2, void *a3, void (*a4)(__int128 *, __int128 *), uint64_t a5)
{
  v46 = swift_allocObject();
  *(v46 + 16) = a4;
  *(v46 + 24) = a5;
  v8 = *a2;
  v9 = a2[1];
  v47 = a2[3];
  v48 = a2[2];
  v10 = a3[4];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      sub_2287E766C(v13, &v49);
      v15 = v50;
      v14 = v51;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      if ((*(v14 + 8))(v15, v14) == v8 && v16 == v9)
      {
        break;
      }

      v18 = sub_22887FBF0();

      if (v18)
      {
        goto LABEL_12;
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_1(&v49);
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    sub_2287F8A28(&v49, &v52);
    sub_2287F8A28(&v52, &v53);
    v22 = a3[2];
    v23 = a3[3];
    ObjectType = swift_getObjectType();
    v25 = sub_228824E0C(v22, ObjectType, v23);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v54;
    v28 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v42 = AssociatedConformanceWitness;
    v43 = v25;
    v29 = (*(v28 + 16))(v25, AssociatedConformanceWitness, v27, v28);
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = (v29 + 40);
      while (v32 < *(v30 + 16))
      {
        v34 = *v33;
        v35 = swift_getObjectType();
        v36 = *(v34 + 24);
        swift_unknownObjectRetain();
        v36(&v52, v35, v34);
        if (v52 == v48 && *(&v52 + 1) == v47)
        {

LABEL_25:

          sub_228855A4C(a1, v43, v42, sub_228856900, v46, v35, v34);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&v53);
          goto LABEL_22;
        }

        v38 = sub_22887FBF0();

        if (v38)
        {
          goto LABEL_25;
        }

        ++v32;
        swift_unknownObjectRelease();
        v33 += 2;
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_27;
    }

LABEL_21:

    v39 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v40 = sub_22887F370();
    v41 = [v39 initWithDomain:v40 code:1 userInfo:0];

    *&v52 = 0;
    *&v49 = v41;
    a4(&v52, &v49);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v53);
LABEL_22:
  }

  else
  {
LABEL_10:
    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_22887F370();
    v21 = [v19 initWithDomain:v20 code:0 userInfo:0];

    *&v53 = 0;
    *&v52 = v21;
    a4(&v53, &v52);
  }
}

void sub_228856908(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_228855F80(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t PresenceInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void static InputSignalIdentifier.presence.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.presence.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

void PresenceInputSignal.Anchor.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t sub_228856AF4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_228856B24(uint64_t a1)
{
  v2 = sub_2288570CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228856B60(uint64_t a1)
{
  v2 = sub_2288570CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresenceInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_228857070();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288570CC();
  sub_22887FCF0();
  return (*(v4 + 8))(v6, v3);
}

void sub_228856CD0(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t sub_228856D1C(void *a1)
{
  sub_228857070();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288570CC();
  sub_22887FCF0();
  return (*(v4 + 8))(v6, v3);
}

void static PresenceInputSignal.identityConfiguration.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

void PresenceInputSignal.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228885CE0;
  a1[2] = 0;
  a1[3] = 0;
}

Swift::Void __swiftcall PresenceInputSignal.beginObservation(from:configurations:)(HealthOrchestration::PresenceInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = v2[3];
  v4 = *v2;
  ObjectType = swift_getObjectType();
  v8 = v2;
  v6 = *(v3 + 8);
  v7 = sub_228857314(&qword_2813D07F8);
  v6(v7, &v8, v4, v7, ObjectType, v3);
}

uint64_t PresenceInputSignal.init(observer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PresenceInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_228856FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(*v4 + 24);
  ObjectType = swift_getObjectType();
  v11 = v7;
  return (*(v8 + 8))(ObjectType, &v11, a3, a4, ObjectType, v8);
}

void sub_228857070()
{
  if (!qword_27D8526E0)
  {
    sub_2288570CC();
    v0 = sub_22887FB70();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8526E0);
    }
  }
}

unint64_t sub_2288570CC()
{
  result = qword_27D8526E8;
  if (!qword_27D8526E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8526E8);
  }

  return result;
}

unint64_t sub_228857144(void *a1)
{
  a1[1] = sub_22885717C();
  a1[2] = sub_2288571D0();
  result = sub_228857224();
  a1[3] = result;
  return result;
}

unint64_t sub_22885717C()
{
  result = qword_27D8526F0;
  if (!qword_27D8526F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8526F0);
  }

  return result;
}

unint64_t sub_2288571D0()
{
  result = qword_27D8526F8;
  if (!qword_27D8526F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8526F8);
  }

  return result;
}

unint64_t sub_228857224()
{
  result = qword_27D852700;
  if (!qword_27D852700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852700);
  }

  return result;
}

unint64_t sub_22885727C()
{
  result = qword_27D852708;
  if (!qword_27D852708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852708);
  }

  return result;
}

uint64_t sub_2288572D0(uint64_t a1)
{
  result = sub_228857314(qword_2813D0800);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228857314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresenceInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288573A4()
{
  result = qword_27D852710;
  if (!qword_27D852710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852710);
  }

  return result;
}

unint64_t sub_2288573FC()
{
  result = qword_27D852718;
  if (!qword_27D852718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852718);
  }

  return result;
}

HealthOrchestration::EnvironmentalStateDescription __swiftcall EnvironmentalStateDescription.init(matching:excluding:)(Swift::OpaquePointer matching, Swift::OpaquePointer excluding)
{
  v2->_rawValue = matching._rawValue;
  v2[1]._rawValue = excluding._rawValue;
  result.excluding = excluding;
  result.matching = matching;
  return result;
}

uint64_t static EnvironmentalStateDescription.+= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_228843B70(v4, sub_228844C30, 0, isUniquelyReferenced_nonNull_native, &v8);

  *a1 = v8;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v8 = a1[1];
  sub_228844318(v3, sub_228844C30, 0, v6, &v8);

  a1[1] = v8;
  return result;
}

uint64_t EnvironmentalStateDescription.description.getter()
{
  if (*(*(v0 + 8) + 16))
  {
    sub_22887F8A0();

    sub_2287E9598();
    v1 = sub_22887F300();
    MEMORY[0x22AAC0340](v1);

    MEMORY[0x22AAC0340](0x6964756C63786520, 0xEB0000000020676ELL);
    sub_22880AC30(0);
    v2 = sub_22887F300();
    MEMORY[0x22AAC0340](v2);

    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    return 60;
  }

  else
  {
    sub_2287E9598();
    return sub_22887F300();
  }
}

uint64_t EnvironmentalStateDescription.matching.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EnvironmentalStateDescription.excluding.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static EnvironmentalStateDescription.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v4;
  sub_228843B70(v7, sub_228844C30, 0, isUniquelyReferenced_nonNull_native, &v12);

  v9 = v12;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v12 = v5;
  sub_228844318(v6, sub_228844C30, 0, v10, &v12);

  result = v12;
  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_22885780C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2288774FC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static EnvironmentalStateDescription.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228816FC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_228816FD8(v2, v3);
}

uint64_t sub_22885796C()
{
  if (*v0)
  {
    return 0x6E6964756C637865;
  }

  else
  {
    return 0x676E69686374616DLL;
  }
}

uint64_t sub_2288579AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69686374616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6964756C637865 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

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

uint64_t sub_228857A90(uint64_t a1)
{
  v2 = sub_2288580E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228857ACC(uint64_t a1)
{
  v2 = sub_2288580E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnvironmentalStateDescription.encode(to:)(void *a1)
{
  sub_2288582D4(0, &qword_27D852720, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288580E8();

  sub_22887FCF0();
  v13 = v9;
  v12 = 0;
  sub_22885813C(0, &qword_27D852730, sub_2287E9598);
  sub_228858338(&qword_27D852738, &qword_27D8524C0);
  sub_22887FB50();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_22885813C(0, &qword_27D852740, sub_22880AC30);
    sub_2288581A0(&qword_27D852748, sub_228858234);
    sub_22887FB50();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EnvironmentalStateDescription.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2288582D4(0, &qword_27D852760, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288580E8();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_22885813C(0, &qword_27D852730, sub_2287E9598);
  v14 = 0;
  sub_228858338(&qword_27D852768, &qword_27D8524F0);
  sub_22887FAE0();
  v10 = v15;
  sub_22885813C(0, &qword_27D852740, sub_22880AC30);
  v14 = 1;
  sub_2288581A0(&qword_27D852770, sub_2288583D4);
  sub_22887FAE0();
  (*(v7 + 8))(v9, v6);
  v11 = v15;
  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_228858088(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228816FC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_228816FD8(v2, v3);
}

unint64_t sub_2288580E8()
{
  result = qword_27D852728;
  if (!qword_27D852728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852728);
  }

  return result;
}

void sub_22885813C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887F320();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2288581A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22885813C(255, &qword_27D852740, sub_22880AC30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228858234()
{
  result = qword_27D852750;
  if (!qword_27D852750)
  {
    sub_22880AC30(255);
    sub_228858474(&qword_27D852758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852750);
  }

  return result;
}

void sub_2288582D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2288580E8();
    v7 = a3(a1, &type metadata for EnvironmentalStateDescription.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228858338(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22885813C(255, &qword_27D852730, sub_2287E9598);
    sub_22883F560(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288583D4()
{
  result = qword_27D852778;
  if (!qword_27D852778)
  {
    sub_22880AC30(255);
    sub_228858474(&qword_27D852780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852778);
  }

  return result;
}

uint64_t sub_228858474(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22880A600();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288584E8()
{
  result = qword_27D852788;
  if (!qword_27D852788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852788);
  }

  return result;
}

unint64_t sub_228858540()
{
  result = qword_27D852790;
  if (!qword_27D852790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852790);
  }

  return result;
}

unint64_t sub_228858598()
{
  result = qword_27D852798;
  if (!qword_27D852798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852798);
  }

  return result;
}

uint64_t static InputSignalSet.LookupKey.userDefault<A>(type:_:)@<X0>(unint64_t *a1@<X1>, __n128 *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7.n128_u64[0] = *a1;
  v7.n128_u64[1] = v3;
  v8 = v4;
  v9 = v5;
  type metadata accessor for UserDefaultInputSignal();
  InputSignalSet.LookupKey.init(identifier:)(&v7, a2);
}

uint64_t UserDefaultInputSignal.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + qword_27D8527A0 + 8);
  v4 = *(v1 + qword_27D8527A0 + 16);
  v3 = *(v1 + qword_27D8527A0 + 24);
  *a1 = *(v1 + qword_27D8527A0);
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

void sub_2288586F8(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = *(a2 + qword_27D8527B8);
    v4 = sub_22887F370();
    [v3 removeObserver:a2 forKeyPath:v4];
  }

  else
  {
    *a1 = 1;
    v5 = *(a2 + qword_27D8527B8);
    v4 = sub_22887F370();
    [v5 addObserver:a2 forKeyPath:v4 options:1 context:0];
  }
}

Swift::Void __swiftcall UserDefaultInputSignal.stopObservation()()
{
  v1 = *(v0 + qword_27D8527A8);
  os_unfair_lock_lock((v1 + 20));
  sub_228859114((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

void sub_228858820(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = *(a2 + qword_27D8527B8);
    v5 = sub_22887F370();
    [v3 removeObserver:a2 forKeyPath:v5];

    *a1 = 0;
  }
}

id UserDefaultInputSignal.init(identifier:observer:defaults:key:transformer:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v25 = *a1;
  v16 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = qword_27D8527A8;
  sub_228859130();
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *&v8[v18] = v19;
  *(v19 + 16) = 0;
  v20 = &v8[qword_27D8527A0];
  *v20 = v25;
  *(v20 + 2) = v16;
  *(v20 + 3) = v17;
  v21 = &v8[qword_27D8527B0];
  *v21 = a2;
  *(v21 + 1) = a3;
  *&v8[qword_27D8527B8] = a4;
  v22 = &v8[qword_27D8527C0];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v8[qword_27D8527C8];
  *v23 = a7;
  *(v23 + 1) = a8;
  v28.receiver = v8;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_228858A58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_22887F3A0();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_22887F800();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_228859658();
  v10 = sub_22887F2F0();

LABEL_8:
  sub_228859190(v14, v10);

  return sub_2288595A8(v14);
}

id UserDefaultInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserDefaultInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228858C84(uint64_t a1)
{

  swift_unknownObjectRelease();
}

uint64_t _s19HealthOrchestration22UserDefaultInputSignalC16beginObservation4from14configurationsyAA19OptionalValueAnchorVyxGSg_SayAA21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & v2;
  v5 = *(v4 + 0x50);
  v6 = sub_22887F7D0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = *((v3 & v2) + 0x58);
  v10 = *(v4 + 96);
  v34 = v5;
  *&v11 = v5;
  v32 = v9;
  *(&v11 + 1) = v9;
  v31 = v10;
  v39 = v10;
  v38 = v11;
  v33 = type metadata accessor for OptionalValueAnchor();
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = v30 - v13;
  v15 = *(v1 + qword_27D8527A8);
  v36 = v1;
  os_unfair_lock_lock((v15 + 20));
  sub_2288596B0((v15 + 16));
  os_unfair_lock_unlock((v15 + 20));
  v16 = *(v1 + qword_27D8527B0);
  v30[0] = *(v1 + qword_27D8527B0 + 8);
  v30[1] = v16;
  v17 = *(v1 + qword_27D8527A0 + 8);
  v19 = *(v1 + qword_27D8527A0 + 16);
  v18 = *(v1 + qword_27D8527A0 + 24);
  *&v38 = *(v1 + qword_27D8527A0);
  *(&v38 + 1) = v17;
  *&v39 = v19;
  *(&v39 + 1) = v18;
  v20 = *(v1 + qword_27D8527B8);
  v21 = *(v1 + qword_27D8527C8);

  v22 = sub_22887F370();
  v23 = [v20 valueForKey_];

  if (v23)
  {
    sub_22887F800();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v37, 0, sizeof(v37));
  }

  v24 = swift_getObjectType();
  v21(v37);
  sub_2288595A8(v37);
  OptionalValueAnchor.init(identifier:value:)(&v38, v8, v14);
  *&v38 = v1;
  v25 = v30[0];
  v26 = *(v30[0] + 8);
  v27 = ObjectType;
  WitnessTable = swift_getWitnessTable();
  v26(v14, &v38, v27, WitnessTable, v24, v25);
  return (*(v12 + 8))(v14, v33);
}

void sub_228859130()
{
  if (!qword_2813CF3E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3E8);
    }
  }
}

uint64_t sub_228859190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *v3;
  v9 = *(v8 + 0x50);
  v10 = sub_22887F7D0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  *&v13 = v9;
  *(&v13 + 1) = *((v7 & v6) + 0x58);
  v35 = *(v8 + 96);
  v40[1] = v35;
  v40[0] = v13;
  v14 = type metadata accessor for OptionalValueAnchor();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  if (a2 && *(a2 + 16))
  {
    result = sub_228819E24(*MEMORY[0x277CCA2F0]);
    if (v19)
    {
      sub_2287E66B0(*(a2 + 56) + 32 * result, &v37);
      sub_22880A460(&v37, v40);
      v20 = *(v3 + qword_27D8527B0 + 8);
      v34 = *(v3 + qword_27D8527B0);
      v32 = v20;
      v33 = swift_getObjectType();
      v21 = *(v3 + qword_27D8527A0);
      v22 = *(v3 + qword_27D8527A0 + 8);
      v31 = ObjectType;
      v23 = *(v3 + qword_27D8527A0 + 16);
      v24 = *(v3 + qword_27D8527A0 + 24);
      *&v37 = v21;
      *(&v37 + 1) = v22;
      v38 = v23;
      v39 = v24;
      v30 = *(v3 + qword_27D8527C8);
      sub_2287E66B0(v40, v36);

      v30(v36);
      sub_2288595A8(v36);
      OptionalValueAnchor.init(identifier:value:)(&v37, v12, v18);
      *&v37 = v3;
      v25 = v31;
      v26 = v32;
      v27 = *(v32 + 8);
      WitnessTable = swift_getWitnessTable();
      v27(v18, &v37, v25, WitnessTable, v33, v26);
      (*(v15 + 8))(v18, v14);
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }
  }

  return result;
}

uint64_t sub_2288594C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288595A8(uint64_t a1)
{
  sub_228859604();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228859604()
{
  if (!qword_2813CF1A0)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF1A0);
    }
  }
}

unint64_t sub_228859658()
{
  result = qword_27D8519B0;
  if (!qword_27D8519B0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8519B0);
  }

  return result;
}

uint64_t POSIXSignalInputSignal.__allocating_init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  POSIXSignalInputSignal.init(context:observer:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_228859734(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + 48 * (v9 | (v8 << 6)));
    v12 = v10[1];
    v11 = v10[2];
    v14[0] = *v10;
    v14[1] = v12;
    v14[2] = v11;
    sub_2287F56D8(v14, &v13);
    sub_228877314(&v13, v14);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228859858(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_22887764C(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_228859938(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2288774FC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void static InputSignalIdentifier.posixSignal.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228886160;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.posixSignal.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228886160;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t POSIXSignalInputSignal.Anchor.init(signalTimestamps:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t POSIXSignalInputSignal.Anchor.relevantTimestamps(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_22885BD6C(v3, v2);

  return v4;
}

BOOL POSIXSignalInputSignal.Anchor.hasDifference(from:for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;

  v6 = sub_22885BD6C(v5, v4);

  if (v3)
  {

    v8 = sub_22885BD6C(v7, v4);
  }

  else
  {
    v8 = sub_228808E1C(MEMORY[0x277D84F90]);
  }

  v9 = sub_2288178F4(v6, v8);

  return (v9 & 1) == 0;
}

uint64_t POSIXSignalInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *v3;
  v7 = (*v3 + 64);
  v8 = 1 << *(*v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *v7;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_4:
  if (v10)
  {
    v14 = v10;
    goto LABEL_10;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v14 = v7[v15];
    ++v12;
    if (v14)
    {
      v12 = v15;
LABEL_10:
      v10 = (v14 - 1) & v14;
      if (*(v5 + 16))
      {
        v16 = __clz(__rbit64(v14)) | (v12 << 6);
        v17 = *(*(v6 + 56) + 8 * v16);
        v18 = *(*(v6 + 48) + 4 * v16);
        v19 = sub_228819D5C(v18);
        if (v20)
        {
          v21 = *(v5 + 56);
          if (*(v21 + 8 * v19) < v17)
          {
            v17 = *(v21 + 8 * v19);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_22882FB04(0, *(v13 + 2) + 1, 1, v13);
          }

          v23 = *(v13 + 2);
          v22 = *(v13 + 3);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v26 = sub_22882FB04((v22 > 1), v23 + 1, 1, v13);
            v24 = v23 + 1;
            v13 = v26;
          }

          *(v13 + 2) = v24;
          v25 = &v13[16 * v23];
          *(v25 + 8) = v18;
          *(v25 + 5) = v17;
        }
      }

      goto LABEL_4;
    }
  }

  v27 = sub_228808E1C(MEMORY[0x277D84F90]);
  v28 = *(v13 + 2);
  if (v28)
  {
    v29 = 0;
    v30 = v13 + 40;
    while (1)
    {
      if (v29 >= *(v13 + 2))
      {
        goto LABEL_36;
      }

      v31 = *(v30 - 2);
      v32 = *v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_228819D5C(v31);
      v36 = v27[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_37;
      }

      v40 = v35;
      if (v27[3] < v39)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v44 = v34;
      sub_228852A0C();
      v34 = v44;
      if (v40)
      {
LABEL_21:
        *(v27[7] + 8 * v34) = v32;
        goto LABEL_22;
      }

LABEL_30:
      v27[(v34 >> 6) + 8] |= 1 << v34;
      *(v27[6] + 4 * v34) = v31;
      *(v27[7] + 8 * v34) = v32;
      v42 = v27[2];
      v38 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v38)
      {
        goto LABEL_38;
      }

      v27[2] = v43;
LABEL_22:
      ++v29;
      v30 += 2;
      if (v28 == v29)
      {
        goto LABEL_34;
      }
    }

    sub_22884FB34(v39, isUniquelyReferenced_nonNull_native);
    v34 = sub_228819D5C(v31);
    if ((v40 & 1) != (v41 & 1))
    {
      goto LABEL_39;
    }

LABEL_29:
    if (v40)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_34:

  *a2 = v27;
  return result;
}

uint64_t sub_228859F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002288897C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22887FBF0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_228859FAC(uint64_t a1)
{
  v2 = sub_22885BF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228859FE8(uint64_t a1)
{
  v2 = sub_22885BF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t POSIXSignalInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_22885BFD0(0, &qword_27D8527D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22885BF1C();

  sub_22887FCF0();
  v10[1] = v8;
  sub_22885BF70();
  sub_22885C034(&qword_27D8527E8);
  sub_22887FB50();

  return (*(v5 + 8))(v7, v4);
}

uint64_t POSIXSignalInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22885BFD0(0, &qword_27D8527F0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22885BF1C();
  sub_22887FCE0();
  if (!v2)
  {
    sub_22885BF70();
    sub_22885C034(&qword_27D8527F8);
    sub_22887FAE0();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void POSIXSignalInputSignal.Configuration.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228886160;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t POSIXSignalInputSignal.Configuration.includedSignals.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t POSIXSignalInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A73C(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_22885A4C0()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A73C(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_22885A510()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A73C(v3, v1);
  return sub_22887FCD0();
}

uint64_t POSIXSignalInputSignal.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_22885A5C0(uint64_t a1, void *a2)
{
  v55 = a2;
  v53 = sub_22887F240();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22887F270();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22887F180();
  MEMORY[0x28223BE20](v49);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v45 = v58;
  v46 = (v7 + 8);
  v44 = (v3 + 8);
  v43 = (v5 + 8);
  v54 = a1;

  v16 = 0;
  *&v17 = 67109120;
  v42 = v17;
  v47 = v14;
  v48 = v9;
  v18 = v50;
  while (v13)
  {
    v29 = v55;
LABEL_14:
    v31 = *(*(v54 + 48) + ((v16 << 8) | (4 * __clz(__rbit64(v13)))));
    v32 = *(v56 + 72);
    ObjectType = swift_getObjectType();
    (*(v32 + 40))(ObjectType, v32);
    v34 = sub_22887F160();
    v35 = sub_22887F6B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = v42;
      *(v36 + 4) = v31;
      _os_log_impl(&dword_2287E4000, v34, v35, "Beginning observation for %d", v36, 8u);
      MEMORY[0x22AAC1440](v36, -1, -1);
    }

    (*v46)(v9, v49);
    v19 = sub_22887F190();
    v20 = signal(v31, v19);
    if (v20)
    {
      v21 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v29[1];
      sub_228849FE4(v21, v31, isUniquelyReferenced_nonNull_native);
      v29[1] = aBlock[0];
    }

    else
    {
      v37 = sub_228819D5C(v31);
      if (v38)
      {
        v39 = v37;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v41 = v29[1];
        aBlock[0] = v41;
        if (!v40)
        {
          sub_228853F8C();
          v41 = aBlock[0];
        }

        sub_228849610(v39, v41);
        v29[1] = v41;
      }
    }

    v13 &= v13 - 1;
    sub_2287E76D0(0, &qword_2813CF4E0);
    v23 = sub_22887F750();
    swift_unknownObjectRetain();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *v29;
    sub_228849EC0(v23, v31, v24);
    *v29 = aBlock[0];
    swift_getObjectType();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v31;
    v58[2] = sub_22885C72C;
    v58[3] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v58[0] = sub_2287E72C0;
    v58[1] = &block_descriptor_10;
    v27 = _Block_copy(aBlock);

    sub_2287FAA6C();
    v28 = v52;
    sub_2287FA980();
    sub_22887F760();
    _Block_release(v27);
    (*v44)(v28, v53);
    (*v43)(v18, v51);

    sub_22887F790();
    result = swift_unknownObjectRelease();
    v14 = v47;
    v9 = v48;
  }

  v29 = v55;
  while (1)
  {
    v30 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v30 >= v14)
    {
    }

    v13 = *(v10 + 8 * v30);
    ++v16;
    if (v13)
    {
      v16 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22885AB78(uint64_t a1, Swift::Int32 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    POSIXSignalInputSignal.received(signal:)(a2);
  }

  return result;
}

Swift::Void __swiftcall POSIXSignalInputSignal.received(signal:)(Swift::Int32 signal)
{
  v3 = *v1;
  v4 = v1[10];
  os_unfair_lock_lock((v4 + 40));
  sub_22885B008((v4 + 16), signal, v1, &v12);
  os_unfair_lock_unlock((v4 + 40));
  v5 = v12;
  if (v12)
  {
    v6 = v1[7];
    ObjectType = swift_getObjectType();
    v12 = v5;
    v11 = v1;
    v8 = *(v6 + 8);
    v10 = sub_22885C4D4(&qword_2813D02B0, v9, type metadata accessor for POSIXSignalInputSignal);
    v8(&v12, &v11, v3, v10, ObjectType, v6);
  }
}

uint64_t POSIXSignalInputSignal.beginObservation(from:configurations:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = v3[10];
  os_unfair_lock_lock((v6 + 40));
  sub_22885AEEC((v6 + 16));
  os_unfair_lock_unlock((v6 + 40));
  v19[0] = MEMORY[0x277D84FA0];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + 32;
    do
    {
      v9 += 8;

      v7 = sub_228859858(v10);
      --v8;
    }

    while (v8);
  }

  MEMORY[0x28223BE20](v7);
  os_unfair_lock_lock((v6 + 40));
  sub_22885C0BC((v6 + 16), v19);
  os_unfair_lock_unlock((v6 + 40));

  v11 = v19[0];
  v12 = v3[7];
  ObjectType = swift_getObjectType();
  v18 = v3;
  v19[0] = v11;
  v14 = *(v12 + 8);
  v16 = sub_22885C4D4(&qword_2813D02B0, v15, type metadata accessor for POSIXSignalInputSignal);
  v14(v19, &v18, v5, v16, ObjectType, v12);
}

Swift::Void __swiftcall POSIXSignalInputSignal.stopObservation()()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 40));
  sub_22885AEEC((v1 + 16));

  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_22885AEEC(void *a1)
{
  v2 = sub_228809534(MEMORY[0x277D84F90]);

  *a1 = v2;
  v3 = a1[1];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = signal(*(*(v3 + 48) + 4 * (v11 | (v10 << 6))), *(*(v3 + 56) + 8 * (v11 | (v10 << 6)))))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v12 = sub_228809654(MEMORY[0x277D84F90]);

      a1[1] = v12;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22885B008@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_22887F180();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16) && (result = sub_228819D5C(a2), (v14 & 1) != 0))
  {
    Current = CFAbsoluteTimeGetCurrent();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a1[2];
    a1[2] = 0x8000000000000000;
    sub_228849784(a2, isUniquelyReferenced_nonNull_native, Current);
    v17 = v25;

    a1[2] = v17;
    v18 = *(a3 + 72);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(ObjectType, v18);
    v20 = sub_22887F160();
    v21 = sub_22887F6B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v24 = v4;
      v23 = v22;
      *v22 = 67109376;
      *(v22 + 4) = a2;
      *(v22 + 8) = 2048;
      *(v22 + 10) = Current;
      _os_log_impl(&dword_2287E4000, v20, v21, "Caught signal %d at %f", v22, 0x12u);
      MEMORY[0x22AAC1440](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    *a4 = a1[2];
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *POSIXSignalInputSignal.init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v18 = sub_22887F6F0();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22887F6E0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22887F270();
  MEMORY[0x28223BE20](v9 - 8);
  v4[2] = 0xD000000000000016;
  v4[3] = 0x8000000228886160;
  v4[4] = 0;
  v4[5] = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = sub_228809534(MEMORY[0x277D84F90]);
  v12 = sub_228809654(v10);
  v13 = MEMORY[0x277D84F98];

  sub_22885C10C();
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v4[10] = v14;
  sub_2287E76D0(0, &qword_2813CF500);
  sub_22887F260();
  v23 = v10;
  sub_22885C4D4(&qword_2813CF510, 255, MEMORY[0x277D85230]);
  sub_22885C16C();
  sub_22885C4D4(&qword_2813CF580, 255, sub_22885C16C);
  sub_22887F820();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v18);
  v4[11] = sub_22887F710();
  v15 = v20;
  v4[8] = v19;
  v4[9] = v15;
  v16 = v22;
  v4[6] = v21;
  v4[7] = v16;
  return v4;
}

uint64_t POSIXSignalInputSignal.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t POSIXSignalInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22885B5E4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

void sub_22885B67C()
{
  v1 = *(*v0 + 80);
  os_unfair_lock_lock((v1 + 40));
  sub_22885AEEC((v1 + 16));

  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_22885B6D8()
{
  v1 = *v0;
  if (*(*v0 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = *(v1 + 16);
  }

  return v2;
}

unint64_t sub_22885B728(unint64_t result, int a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_22885B76C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22885B7B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22887F060();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22887F0C0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_22885B8A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22887F060();
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

unint64_t sub_22885B960(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_22885B9B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22885BA08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_22885BA54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = (a7[7] + 48 * result);
  v9 = a6[1];
  *v8 = *a6;
  v8[1] = v9;
  v8[2] = a6[2];
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

unint64_t sub_22885BAB4(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

unint64_t sub_22885BAF8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_22885BB40(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22885BBD0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22885BBD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v17 = *(*(a3 + 48) + 4 * v16);
      result = MEMORY[0x22AAC0BB0](*(a4 + 40), v17, 4);
      v18 = -1 << *(a4 + 32);
      v19 = result & ~v18;
      if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a4 + 48) + 4 * v19) != v17)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_2288692DC(v23, a2, v5, a3);
        }
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_2288692DC(v23, a2, v5, a3);
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22885BD6C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](v9);
    bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_22885BBD0(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_22885BB40(v13, v7, a1, a2);
  MEMORY[0x22AAC1440](v13, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_22885BF1C()
{
  result = qword_27D8527D8;
  if (!qword_27D8527D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8527D8);
  }

  return result;
}

void sub_22885BF70()
{
  if (!qword_27D8527E0)
  {
    v0 = sub_22887F320();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8527E0);
    }
  }
}

void sub_22885BFD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22885BF1C();
    v7 = a3(a1, &type metadata for POSIXSignalInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22885C034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22885BF70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22885C0BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22885A5C0(*(v2 + 24), a1);
  *a2 = a1[2];
}

void sub_22885C10C()
{
  if (!qword_2813CF448)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF448);
    }
  }
}

void sub_22885C16C()
{
  if (!qword_2813CF590)
  {
    sub_22887F6E0();
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF590);
    }
  }
}

unint64_t sub_22885C1C8()
{
  result = qword_27D852800;
  if (!qword_27D852800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852800);
  }

  return result;
}

unint64_t sub_22885C21C(void *a1)
{
  a1[1] = sub_22885C254();
  a1[2] = sub_22885C2A8();
  result = sub_22885C2FC();
  a1[3] = result;
  return result;
}

unint64_t sub_22885C254()
{
  result = qword_27D852810;
  if (!qword_27D852810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852810);
  }

  return result;
}

unint64_t sub_22885C2A8()
{
  result = qword_27D852818;
  if (!qword_27D852818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852818);
  }

  return result;
}

unint64_t sub_22885C2FC()
{
  result = qword_27D852820;
  if (!qword_27D852820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852820);
  }

  return result;
}

unint64_t sub_22885C350(uint64_t a1)
{
  result = sub_22885C378();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22885C378()
{
  result = qword_27D852828;
  if (!qword_27D852828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852828);
  }

  return result;
}

unint64_t sub_22885C3D0()
{
  result = qword_27D852830;
  if (!qword_27D852830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852830);
  }

  return result;
}

unint64_t sub_22885C428()
{
  result = qword_27D852838;
  if (!qword_27D852838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852838);
  }

  return result;
}

uint64_t sub_22885C47C(uint64_t a1, uint64_t a2)
{
  result = sub_22885C4D4(qword_2813D02B8, a2, type metadata accessor for POSIXSignalInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22885C4D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22885C57C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22885C5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22885C628()
{
  result = qword_27D852840;
  if (!qword_27D852840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852840);
  }

  return result;
}

unint64_t sub_22885C680()
{
  result = qword_27D852848;
  if (!qword_27D852848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852848);
  }

  return result;
}

unint64_t sub_22885C6D8()
{
  result = qword_27D852850;
  if (!qword_27D852850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852850);
  }

  return result;
}

uint64_t MockContext.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MockContext.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthOrchestration11MockContext_logger;
  v4 = sub_22887F180();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MockContext.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_22887F170();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t MockContext.init(identifier:)(uint64_t a1, uint64_t a2)
{
  sub_22887F170();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MockContext.Description.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MockContext.Description.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22885C930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22887FBF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22885C9C0(uint64_t a1)
{
  v2 = sub_22885CB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22885C9FC(uint64_t a1)
{
  v2 = sub_22885CB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockContext.Description.encode(to:)(void *a1)
{
  sub_22885CD5C(0, &qword_27D852858, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22885CB84();
  sub_22887FCF0();
  sub_22887FB20();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22885CB84()
{
  result = qword_27D852860;
  if (!qword_27D852860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852860);
  }

  return result;
}

uint64_t MockContext.Description.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22885CD5C(0, &qword_27D852868, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22885CB84();
  sub_22887FCE0();
  if (!v2)
  {
    v10 = sub_22887FAB0();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22885CD5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22885CB84();
    v7 = a3(a1, &type metadata for MockContext.Description.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22885CDD8(void *a1)
{
  sub_22885CD5C(0, &qword_27D852858, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22885CB84();
  sub_22887FCF0();
  sub_22887FB20();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MockContext.contextDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t static MockContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t MockContext.description.getter()
{
  sub_22887F8A0();

  strcpy(v2, "<MockContext: ");
  HIBYTE(v2[1]) = -18;
  MEMORY[0x22AAC0340](*(v0 + 16), *(v0 + 24));
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return v2[0];
}

uint64_t MockContext.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthOrchestration11MockContext_logger;
  v2 = sub_22887F180();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockContext.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthOrchestration11MockContext_logger;
  v2 = sub_22887F180();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22885D0F4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_22885D100@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthOrchestration11MockContext_logger;
  v4 = sub_22887F180();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_22885D178()
{
  v1 = *v0;
  sub_22887F8A0();

  strcpy(v3, "<MockContext: ");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x22AAC0340](*(v1 + 16), *(v1 + 24));
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_22885D200(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t (*MockContextProvider.startHandler.getter())(uint64_t, uint64_t)
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_22885D2CC;
}

uint64_t MockContextProvider.startHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_22885E1B4(a1, a2);
}

void (*MockContextProvider.startHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_22885EBB8;
  v4[4] = v8;
  return sub_22885D3E0;
}

void sub_22885D3E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_22885E278;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_22885EBB4;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

uint64_t (*MockContextProvider.stopHandler.getter())()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_22885E2A8;
}

uint64_t sub_22885D5F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);

  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 32));

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t MockContextProvider.stopHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_22885E2B0(a1, a2);
}

void (*MockContextProvider.stopHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_22885EBB0;
  v4[4] = v8;
  return sub_22885D784;
}

void sub_22885D784(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_2287FED74;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_22885EBD4;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

void *(*MockContextProvider.contextHandler.getter())()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_22885E374;
}

uint64_t sub_22885D99C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);

  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 32));

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_22885DA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  type metadata accessor for MockContext();
  v5 = swift_allocObject();

  result = sub_22887F170();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = v5;
  return result;
}

uint64_t sub_22885DA8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  a7(a6, v11);
}

uint64_t MockContextProvider.contextHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_22885E38C(a1, a2);
}

void (*MockContextProvider.contextHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_22885EBBC;
  v4[4] = v8;
  return sub_22885DC20;
}

void sub_22885DC20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_22885E450;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_228827F0C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_22885EB98;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

uint64_t MockContextProvider.start(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 32));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 32));

  v8[0] = a1;
  v8[1] = a2;
  v6(v8);
}

Swift::Void __swiftcall MockContextProvider.stop()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 32));

  v2(v3);
}

uint64_t MockContextProvider.context(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(v1 + 32);

  os_unfair_lock_lock((v5 + 32));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 32));

  v9[0] = v3;
  v9[1] = v4;
  v6(&v8, v9);

  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t MockContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MockContextProvider.init()();
  return v0;
}

void *MockContextProvider.init()()
{
  sub_22885E528(0, &qword_27D852870, sub_22885E468);
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = nullsub_1;
  *(v1 + 24) = 0;
  v0[2] = v1;
  sub_22885E528(0, &qword_27D852888, sub_2288233C4);
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 16) = nullsub_1;
  *(v2 + 24) = 0;
  v0[3] = v2;
  sub_22885E528(0, &qword_27D852890, sub_22885E594);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 16) = sub_22885DA18;
  *(v3 + 24) = 0;
  v0[4] = v3;
  return v0;
}

uint64_t MockContextProvider.deinit()
{

  return v0;
}

uint64_t MockContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22885E134()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 32));

  v2(v3);
}

uint64_t sub_22885E1B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

uint64_t sub_22885E2B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

uint64_t sub_22885E38C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 32);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

unint64_t sub_22885E468()
{
  result = qword_27D852878;
  if (!qword_27D852878)
  {
    sub_22885E4C8();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D852878);
  }

  return result;
}

unint64_t sub_22885E4C8()
{
  result = qword_27D852880;
  if (!qword_27D852880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D852880);
  }

  return result;
}

void sub_22885E528(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_22887F910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22885E594()
{
  result = qword_27D852898;
  if (!qword_27D852898)
  {
    type metadata accessor for MockContext();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D852898);
  }

  return result;
}

uint64_t type metadata accessor for MockContext()
{
  result = qword_27D8528C8;
  if (!qword_27D8528C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22885E63C(uint64_t a1)
{
  *(a1 + 8) = sub_22885E66C();
  result = sub_22885E6C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22885E66C()
{
  result = qword_27D8528A0;
  if (!qword_27D8528A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8528A0);
  }

  return result;
}