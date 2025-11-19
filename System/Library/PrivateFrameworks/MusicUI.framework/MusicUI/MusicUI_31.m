uint64_t sub_2169AD8B4(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC80);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC88);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC90);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for RecentSearchLockup();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC98);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for RecentSearchLockup);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for RecentSearchLockup);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABEC88);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABEC90);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B7C();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC98);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for RecentSearchLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for RecentSearchLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABEC80);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AE3D8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECA0);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECA8);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SearchLandingBrickLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SearchLandingBrickLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SearchLandingBrickLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABECA0);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABECA8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B64();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SearchLandingBrickLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SearchLandingBrickLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SearchLandingBrickLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SearchLandingBrickLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CAB9B38);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SearchLandingBrickLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AEEFC(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB8);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECC0);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECC8);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = _s6LockupVMa();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD0);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, _s6LockupVMa);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, _s6LockupVMa);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABECC0);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABECC8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B4C();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD0);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, _s6LockupVMa);
        sub_216788110(v91);
        sub_2169BBB3C(v85, _s6LockupVMa);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, _s6LockupVMa);
        sub_216788110(v91);
        sub_2169BBB3C(v85, _s6LockupVMa);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABECB8);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, _s6LockupVMa);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AFA20(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD8);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECE0);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECE8);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialCardLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialCardLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialCardLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABECE0);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABECE8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B34();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialCardLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialCardLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialCardLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialCardLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABECD8);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialCardLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B0544(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF8);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED00);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED08);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup();
  v12 = *(FriendsPageLockup - 8);
  MEMORY[0x28223BE20](FriendsPageLockup);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = FriendsPageLockup;
  v79 = v12;
  if (v23)
  {
    v24 = *(FriendsPageLockup + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED00);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED08);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B1C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABECF8);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B1068(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED18);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED20);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED28);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 24);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED30);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED20);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED28);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 24), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B04();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED30);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED18);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B1B8C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED38);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED40);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED48);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialProfileHorizontalLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialProfileHorizontalLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialProfileHorizontalLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED40);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED48);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AEC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialProfileHorizontalLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialProfileHorizontalLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialProfileHorizontalLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialProfileHorizontalLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED38);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialProfileHorizontalLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B26B0(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED58);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED60);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED68);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SquareLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 68);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED70);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SquareLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SquareLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED60);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED68);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 68), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AD4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED70);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SquareLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SquareLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SquareLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SquareLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED58);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SquareLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B31D4(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED78);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED80);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for TextListComponentModel();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for TextListComponentModel);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for TextListComponentModel);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABED78);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABED80);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15ABC();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for TextListComponentModel);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for TextListComponentModel);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CAB9868);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169B3CF8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED98);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for TopSearchLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TopSearchLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TopSearchLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED98);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDA0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AA4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for TopSearchLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TopSearchLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for TopSearchLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TopSearchLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED90);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for TopSearchLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B481C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for TrackLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEDB8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDC0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15A8C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for TrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for TrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEDB0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for TrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B5340(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for VerticalVideoLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for VerticalVideoLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for VerticalVideoLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEDD8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDE0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15A74();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for VerticalVideoLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for VerticalVideoLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for VerticalVideoLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for VerticalVideoLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEDD0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for VerticalVideoLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

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
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

void sub_2169B5E64()
{
  OUTLINED_FUNCTION_22_3();
  v49 = v4;
  v50 = v3;
  v47 = type metadata accessor for SocialProfileHorizontalLockupSection();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v46 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ListSection();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  v48 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 22)
  {
    OUTLINED_FUNCTION_25_24();
    OUTLINED_FUNCTION_39();
    sub_2169BBB94();
    v36 = *&v18[*(v14 + 32)];
    sub_21700DF14();
    v37 = sub_2169B63B0(v50, v36, sub_2169BBA4C, sub_2169B9D2C);
    if (v0)
    {
      v26 = type metadata accessor for ListSection;
      v27 = v18;
      goto LABEL_18;
    }

    v43 = v37;

    OUTLINED_FUNCTION_25_24();
    sub_2169BBB94();
    v44 = *(v14 + 32);

    *(v1 + v44) = v43;
    sub_2169BBAE8();
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for ListSection;
LABEL_23:
    v35 = v39;
    v34 = v1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 49)
  {
    OUTLINED_FUNCTION_27_23();
    sub_2169BBB94();
    v24 = v47;
    v25 = *(v2 + *(v47 + 24));
    sub_21700DF14();
    sub_2169B63B0(v50, v25, sub_2169BBBE8, sub_2169B9570);
    if (v0)
    {
      v26 = type metadata accessor for SocialProfileHorizontalLockupSection;
      v27 = v2;
LABEL_18:
      sub_2169BBB3C(v27, v26);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_76_8();
    OUTLINED_FUNCTION_27_23();
    v1 = v46;
    sub_2169BBB94();
    v38 = *(v24 + 24);

    *(v1 + v38) = v14;
    OUTLINED_FUNCTION_59_10();
    sub_2169BBAE8();
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for SocialProfileHorizontalLockupSection;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 33)
  {
    if (EnumCaseMultiPayload != 45)
    {
      if (EnumCaseMultiPayload == 29)
      {
        v23 = OUTLINED_FUNCTION_94_8(EnumCaseMultiPayload, v22, sub_2169BBA18, sub_2169B9FC0);

        if (!v0)
        {
          *v49 = v23;
LABEL_14:
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        }

        goto LABEL_25;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_88_6(v33, 131);
      v34 = OUTLINED_FUNCTION_50_13();
LABEL_24:
      sub_2169BBB3C(v34, v35);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_91();
    sub_2169BBB94();
    v28 = sub_21700DF14();
    v30 = OUTLINED_FUNCTION_94_8(v28, v29, sub_2169BBAB4, sub_2169B9804);
    if (!v0)
    {
      v40 = v30;

      OUTLINED_FUNCTION_26_25();
      v41 = v45;
      sub_2169BBB94();
      v42 = *(v8 + 24);

      *(v41 + v42) = v40;
      OUTLINED_FUNCTION_63_7();
      sub_2169BBAE8();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_61_9();
      v34 = v41;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_61_9();
    sub_2169BBB3C(v13, v31);
LABEL_19:

    goto LABEL_25;
  }

  v32 = OUTLINED_FUNCTION_94_8(EnumCaseMultiPayload, v22, sub_2169BBA80, sub_2169B9A98);

  if (!v0)
  {
    *v49 = v32;
    goto LABEL_14;
  }

LABEL_25:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_2169B63B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t))
{
  v10[2] = a1;
  sub_21700DF14();
  v7 = a4(a3, v10, a2);
  if (*(v7 + 16) == *(a2 + 16))
  {

    sub_2169BB698();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_88_6(v8, 132);
  }

  return v7;
}

void sub_2169B6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v24;
  a20 = v25;
  v149 = v21;
  v150 = v26;
  v152 = v20;
  v153 = v27;
  v28 = type metadata accessor for SocialProfileHorizontalLockupSection();
  v29 = OUTLINED_FUNCTION_1_77(v28, &a14);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v32);
  v33 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  v34 = OUTLINED_FUNCTION_1_77(v33, &a17);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v36);
  v37 = type metadata accessor for ContentDescriptor();
  v38 = OUTLINED_FUNCTION_36(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  v148 = v39;
  OUTLINED_FUNCTION_4_1();
  v151 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v147 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v146 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  v144 = v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  v143 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v142 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v145 = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v141 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v140 = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v139 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v137 = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  v136 = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  v135 = v63;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v134 = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v138 = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v133 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v73);
  v75 = v130 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB58);
  OUTLINED_FUNCTION_36(v79);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v80);
  v82 = v130 - v81;
  v84 = (v130 + *(v83 + 56) - v81);
  sub_2169BBAE8();
  sub_2169BBAE8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8) + 48);
      if (OUTLINED_FUNCTION_74_10() != 1)
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_49_16();
      sub_2169BBB94();
      v86 = OUTLINED_FUNCTION_89_10();
      sub_216BDD7B8(v86);
      OUTLINED_FUNCTION_87_9();
      goto LABEL_84;
    case 3u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 3)
      {
        goto LABEL_98;
      }

      v102 = OUTLINED_FUNCTION_20_26();
      sub_216BDD78C(v102);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 4u:
      if (OUTLINED_FUNCTION_74_10() != 4)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 4;
      goto LABEL_102;
    case 6u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 57)
      {
        v128 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
        v129 = v22;
        goto LABEL_106;
      }

      v153 = v82;
      v105 = *v84;
      v106 = v130[2];
      sub_2169BBB94();
      v107 = v132;
      v108 = MEMORY[0x277D84F90];
      if (*(v106 + v132[8]))
      {
        v108 = *(v106 + v132[8]);
      }

      v154 = v108;
      sub_21700DF14();
      sub_216BDD760(v105);
      v109 = v131;
      sub_216683A80(v106, v131, &qword_27CAB6D58);
      v110 = OUTLINED_FUNCTION_105_6(v107[5]);
      sub_216788294(v110, v111);
      v112 = OUTLINED_FUNCTION_105_6(v107[6]);
      sub_216683A80(v112, v113, v114);
      v115 = OUTLINED_FUNCTION_105_6(v107[7]);
      OUTLINED_FUNCTION_109_5(v115, v116);
      v117 = OUTLINED_FUNCTION_105_6(v107[9]);
      OUTLINED_FUNCTION_109_5(v117, v118);
      OUTLINED_FUNCTION_16_31();
      sub_2169BBB3C(v106, v119);
      *(v109 + v107[8]) = v154;
      sub_2169BBB94();
      goto LABEL_96;
    case 7u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 7)
      {
        goto LABEL_98;
      }

      v120 = OUTLINED_FUNCTION_20_26();
      sub_216BDD734(v120);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 8u:
      if (OUTLINED_FUNCTION_74_10() != 8)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 9;
      goto LABEL_102;
    case 9u:
      if (OUTLINED_FUNCTION_74_10() != 9)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 10;
      goto LABEL_102;
    case 0xAu:
      if (OUTLINED_FUNCTION_74_10() != 10)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 11;
      goto LABEL_102;
    case 0xBu:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 11)
      {
        goto LABEL_98;
      }

      v121 = OUTLINED_FUNCTION_20_26();
      sub_216BDD708(v121);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0xDu:
      if (OUTLINED_FUNCTION_74_10() != 13)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 14;
      goto LABEL_102;
    case 0xEu:
      if (OUTLINED_FUNCTION_74_10() != 14)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 15;
      goto LABEL_102;
    case 0xFu:
      v153 = v82;
      OUTLINED_FUNCTION_8();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 15)
      {
        goto LABEL_98;
      }

      v100 = OUTLINED_FUNCTION_20_26();
      sub_216BDD6DC(v100);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x10u:
      OUTLINED_FUNCTION_46_17();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 16)
      {
        goto LABEL_98;
      }

      v98 = OUTLINED_FUNCTION_20_26();
      sub_216BDD6B0(v98);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x11u:
      if (OUTLINED_FUNCTION_74_10() != 17)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 18;
      goto LABEL_102;
    case 0x13u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 19)
      {
        goto LABEL_98;
      }

      v104 = OUTLINED_FUNCTION_20_26();
      sub_216BDD684(v104);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x18u:
      if (OUTLINED_FUNCTION_74_10() != 24)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 22;
      goto LABEL_102;
    case 0x1Au:
      OUTLINED_FUNCTION_46_17();
      v23 = v138;
      sub_2169BBAE8();
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0) + 48);
      if (OUTLINED_FUNCTION_74_10() == 26)
      {
        OUTLINED_FUNCTION_49_16();
        sub_2169BBB94();
        v122 = OUTLINED_FUNCTION_89_10();
        sub_216BDD658(v122);
        OUTLINED_FUNCTION_87_9();
LABEL_84:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(&v75[v85], v123);
        goto LABEL_97;
      }

LABEL_85:
      sub_2169BBB3C(v23 + v85, type metadata accessor for ContentDescriptor);
LABEL_98:

      v82 = v153;
      goto LABEL_99;
    case 0x1Bu:
      if (OUTLINED_FUNCTION_74_10() != 27)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 25;
      goto LABEL_102;
    case 0x1Cu:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 28)
      {
        goto LABEL_98;
      }

      v93 = OUTLINED_FUNCTION_20_26();
      sub_216BDD62C(v93);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x1Eu:
      OUTLINED_FUNCTION_46_17();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 30)
      {
        goto LABEL_98;
      }

      v99 = OUTLINED_FUNCTION_20_26();
      sub_216BDD600(v99);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x1Fu:
      if (OUTLINED_FUNCTION_74_10() != 31)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 61;
      goto LABEL_102;
    case 0x20u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 32)
      {
        goto LABEL_98;
      }

      v94 = OUTLINED_FUNCTION_20_26();
      sub_216BDD5D4(v94);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x21u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 33)
      {
        goto LABEL_98;
      }

      v97 = OUTLINED_FUNCTION_20_26();
      sub_216BDD5A8(v97);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x22u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 34)
      {
        goto LABEL_98;
      }

      v95 = OUTLINED_FUNCTION_20_26();
      sub_216BDD57C(v95);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x23u:
      if (OUTLINED_FUNCTION_74_10() != 35)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 33;
      goto LABEL_102;
    case 0x24u:
      if (OUTLINED_FUNCTION_74_10() != 36)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 34;
      goto LABEL_102;
    case 0x25u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 37)
      {
        goto LABEL_98;
      }

      v125 = OUTLINED_FUNCTION_20_26();
      sub_216BDD550(v125);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x26u:
      if (OUTLINED_FUNCTION_74_10() != 38)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 42;
      goto LABEL_102;
    case 0x27u:
      if (OUTLINED_FUNCTION_74_10() != 39)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 43;
      goto LABEL_102;
    case 0x28u:
      if (OUTLINED_FUNCTION_74_10() != 40)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 44;
      goto LABEL_102;
    case 0x29u:
      if (OUTLINED_FUNCTION_74_10() != 41)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 45;
      goto LABEL_102;
    case 0x2Au:
      if (OUTLINED_FUNCTION_74_10() != 42)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 46;
      goto LABEL_102;
    case 0x2Bu:
      if (OUTLINED_FUNCTION_74_10() != 43)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 47;
      goto LABEL_102;
    case 0x2Cu:
      if (OUTLINED_FUNCTION_74_10() != 44)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 38;
      goto LABEL_102;
    case 0x2Du:
      if (OUTLINED_FUNCTION_74_10() != 45)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 41;
      goto LABEL_102;
    case 0x30u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 48)
      {
        goto LABEL_98;
      }

      v126 = OUTLINED_FUNCTION_20_26();
      sub_216BDD474(v126);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x31u:
      v90 = v145;
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() == 49)
      {
        v153 = v82;
        v91 = v130[0];
        sub_2169BBB94();
        OUTLINED_FUNCTION_107();
        sub_2169BBB94();
        OUTLINED_FUNCTION_59_10();
        OUTLINED_FUNCTION_78_9();
        v92 = sub_21700DF14();
        sub_216BDD474(v92);
        sub_2169BBB3C(v84, type metadata accessor for SocialProfileHorizontalLockupSection);
        sub_2169BBB3C(v91, type metadata accessor for SocialProfileHorizontalLockupSection);
        sub_2169BBB94();
LABEL_96:
        swift_storeEnumTagMultiPayload();
LABEL_97:
        sub_2169BBB3C(v153, type metadata accessor for SectionContent);
      }

      else
      {
        v128 = type metadata accessor for SocialProfileHorizontalLockupSection;
        v129 = v90;
LABEL_106:
        sub_2169BBB3C(v129, v128);
LABEL_99:
        sub_2169BB698();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_88_6(v127, 128);
        sub_216697664(v82, &qword_27CABEB58);
      }

LABEL_103:
      OUTLINED_FUNCTION_21_4();
      return;
    case 0x32u:
      if (OUTLINED_FUNCTION_74_10() != 50)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 49;
      goto LABEL_102;
    case 0x34u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 52)
      {
        goto LABEL_98;
      }

      v89 = OUTLINED_FUNCTION_20_26();
      sub_216BDD524(v89);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x35u:
      if (OUTLINED_FUNCTION_74_10() != 53)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 53;
      goto LABEL_102;
    case 0x37u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 55)
      {
        goto LABEL_98;
      }

      v96 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4F8(v96);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x38u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 56)
      {
        goto LABEL_98;
      }

      v101 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4CC(v101);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x39u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 57)
      {
        goto LABEL_98;
      }

      v124 = OUTLINED_FUNCTION_20_26();
      sub_216BDD760(v124);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x3Au:
      if (OUTLINED_FUNCTION_74_10() != 58)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 57;
      goto LABEL_102;
    case 0x3Bu:
      if (OUTLINED_FUNCTION_74_10() != 59)
      {
        goto LABEL_99;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v88 = 58;
LABEL_102:
      OUTLINED_FUNCTION_88_6(v87, v88);
      sub_2169BBB3C(v84, type metadata accessor for SectionContent);
      sub_2169BBB3C(v82, type metadata accessor for SectionContent);
      goto LABEL_103;
    case 0x3Du:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 61)
      {
        goto LABEL_98;
      }

      v103 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4A0(v103);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    default:
      goto LABEL_99;
  }
}

void sub_2169B75E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v24;
  a20 = v25;
  v203 = v26;
  v204 = v21;
  v206 = v20;
  v201 = v27;
  v202 = v28;
  v207 = v29;
  v200 = v30;
  v31 = type metadata accessor for SearchResultsListSection();
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v34);
  v35 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  v36 = OUTLINED_FUNCTION_1_77(v35, &a16);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v38);
  v39 = type metadata accessor for ContentDescriptor();
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v42);
  v205 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v199 = v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  v198 = v46;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  v197 = v48;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  v196 = v50;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_4();
  v195 = v52;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_4();
  v194 = v54;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  v193 = v56;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  v192 = v58;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_4();
  v191 = v60;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_4();
  v190 = v62;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  v188[10] = v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  v188[9] = v66;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_4();
  v188[8] = v68;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_4();
  v189 = v70;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_102_7();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v78);
  v80 = v188 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0);
  OUTLINED_FUNCTION_36(v81);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_106_1();
  v84 = *(v83 + 56);
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  *(v23 + v84) = v207;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8);
      if (v207 != 1)
      {
        OUTLINED_FUNCTION_5_54();
        v168 = &v80[v167];
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_14_33();
      OUTLINED_FUNCTION_107();
      sub_2169BBB94();
      type metadata accessor for AlbumTrackLockup();
      OUTLINED_FUNCTION_65_7();
      sub_2169BB7B4(v85, v86);
      OUTLINED_FUNCTION_95_8();
      if (v21)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    case 3u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v125 != 3)
      {
        goto LABEL_123;
      }

      type metadata accessor for AppsWithAccessComponentModel();
      sub_2169BB7B4(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 4u:
      OUTLINED_FUNCTION_36_18();
      if (v114 != 4)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 68;
      goto LABEL_116;
    case 6u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v138 != 56)
      {
        OUTLINED_FUNCTION_16_31();
        v170 = v20;
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_63_7();
      v139 = v188[4];
      sub_2169BBB94();
      v140 = v188[5];
      type metadata accessor for TrackLockup();
      OUTLINED_FUNCTION_24_24();
      sub_2169BB7B4(v141, v142);
      sub_21700DF14();
      v143 = v204;
      sub_2169B8B1C();
      if (v143)
      {
        OUTLINED_FUNCTION_16_31();
        sub_2169BBB3C(v139, v145);
        goto LABEL_109;
      }

      v174 = v144;

      v175 = v188[0];
      sub_216683A80(v139, v188[0], &qword_27CAB6D58);
      v176 = OUTLINED_FUNCTION_98_8(v140[5]);
      sub_216788294(v176, v177);
      v178 = OUTLINED_FUNCTION_98_8(v140[6]);
      sub_216683A80(v178, v179, v180);
      v181 = OUTLINED_FUNCTION_98_8(v140[7]);
      OUTLINED_FUNCTION_109_5(v181, v182);
      v183 = OUTLINED_FUNCTION_98_8(v140[9]);
      OUTLINED_FUNCTION_109_5(v183, v184);
      OUTLINED_FUNCTION_16_31();
      sub_2169BBB3C(v139, v185);
      *(v175 + v140[8]) = v174;
      sub_2169BBB94();
      OUTLINED_FUNCTION_90_7();
      goto LABEL_130;
    case 7u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v146 != 8)
      {
        goto LABEL_123;
      }

      type metadata accessor for BubbleLockup();
      OUTLINED_FUNCTION_56_12();
      sub_2169BB7B4(v147, v148);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 8u:
      OUTLINED_FUNCTION_36_18();
      if (v117 != 9)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 73;
      goto LABEL_116;
    case 9u:
      OUTLINED_FUNCTION_36_18();
      if (v126 != 10)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 74;
      goto LABEL_116;
    case 0xAu:
      OUTLINED_FUNCTION_36_18();
      if (v127 != 11)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 75;
      goto LABEL_116;
    case 0xBu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v151 != 12)
      {
        goto LABEL_123;
      }

      type metadata accessor for FlowcaseLockup();
      sub_2169BB7B4(qword_280E43620, type metadata accessor for FlowcaseLockup);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0xDu:
      OUTLINED_FUNCTION_36_18();
      if (v150 != 14)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 78;
      goto LABEL_116;
    case 0xEu:
      OUTLINED_FUNCTION_36_18();
      if (v105 != 15)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 79;
      goto LABEL_116;
    case 0xFu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v118 != 16)
      {
        goto LABEL_123;
      }

      type metadata accessor for HorizontalLockup();
      OUTLINED_FUNCTION_60_9();
      sub_2169BB7B4(v119, v120);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x10u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v110 != 17)
      {
        goto LABEL_123;
      }

      type metadata accessor for HorizontalPosterLockup();
      sub_2169BB7B4(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x11u:
      OUTLINED_FUNCTION_36_18();
      if (v100 != 18)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 82;
      goto LABEL_116;
    case 0x13u:
      OUTLINED_FUNCTION_0_103();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v129 != 20)
      {
        goto LABEL_123;
      }

      type metadata accessor for LinkComponentModel();
      sub_2169BB7B4(&qword_280E3EC50, type metadata accessor for LinkComponentModel);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x15u:
      OUTLINED_FUNCTION_0_103();
      v130 = v199;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v131 == 55)
      {
        OUTLINED_FUNCTION_51_7();
        v132 = v188[3];
        sub_2169BBB94();
        OUTLINED_FUNCTION_57_12();
        OUTLINED_FUNCTION_107();
        sub_2169BBAE8();
        type metadata accessor for TopSearchLockup();
        OUTLINED_FUNCTION_58_12();
        sub_2169BB7B4(v133, v134);
        sub_21700DF14();
        v135 = v204;
        sub_2169B8B1C();
        if (v135)
        {
          sub_2169BBB3C(v132, type metadata accessor for SearchResultsListSection);
        }

        else
        {
          v173 = v136;
          sub_2169BBB3C(v132, type metadata accessor for SearchResultsListSection);

          *(v22 + 32) = v173;
          OUTLINED_FUNCTION_57_12();
          sub_2169BBAE8();
          OUTLINED_FUNCTION_90_7();
          swift_storeEnumTagMultiPayload();
        }

        sub_2169BBB3C(v22, type metadata accessor for SearchResultsListSection);
        goto LABEL_131;
      }

      v169 = type metadata accessor for SearchResultsListSection;
      v170 = v130;
LABEL_120:
      sub_2169BBB3C(v170, v169);
      goto LABEL_124;
    case 0x18u:
      OUTLINED_FUNCTION_36_18();
      if (v157 != 22)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 86;
      goto LABEL_116;
    case 0x1Au:
      OUTLINED_FUNCTION_0_103();
      v152 = v189;
      sub_2169BBAE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0);
      if (v207 == 24)
      {
        OUTLINED_FUNCTION_14_33();
        OUTLINED_FUNCTION_107();
        sub_2169BBB94();
        type metadata accessor for PlaylistTrackLockup();
        OUTLINED_FUNCTION_55_13();
        sub_2169BB7B4(v153, v154);
        OUTLINED_FUNCTION_95_8();
        if (v21)
        {
LABEL_96:
          OUTLINED_FUNCTION_5_54();
          sub_2169BBB3C(v22, v155);
LABEL_109:
        }

        else
        {
LABEL_4:
          v88 = v87;

          *v200 = v88;
          OUTLINED_FUNCTION_14_33();
          sub_2169BBB94();
          OUTLINED_FUNCTION_90_7();
LABEL_130:
          swift_storeEnumTagMultiPayload();
        }

LABEL_131:
        v186 = OUTLINED_FUNCTION_50_13();
        sub_2169BBB3C(v186, v187);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        v168 = v152 + v171;
LABEL_122:
        sub_2169BBB3C(v168, v166);
LABEL_123:

LABEL_124:
        sub_2169BB698();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_88_6(v172, 129);
        sub_216697664(v23, &qword_27CABEDF0);
      }

      OUTLINED_FUNCTION_21_4();
      return;
    case 0x1Bu:
      OUTLINED_FUNCTION_36_18();
      if (v98 != 25)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 89;
      goto LABEL_116;
    case 0x1Cu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v111 != 26)
      {
        goto LABEL_123;
      }

      type metadata accessor for PosterLockup();
      OUTLINED_FUNCTION_62_7();
      sub_2169BB7B4(v112, v113);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x1Eu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v161 != 28)
      {
        goto LABEL_123;
      }

      type metadata accessor for SearchLandingBrickLockup();
      sub_2169BB7B4(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x1Fu:
      OUTLINED_FUNCTION_36_18();
      if (v99 != 61)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 125;
      goto LABEL_116;
    case 0x20u:
      OUTLINED_FUNCTION_0_103();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v109 != 30)
      {
        goto LABEL_123;
      }

      _s6LockupVMa();
      sub_2169BB7B4(&qword_280E439E8, _s6LockupVMa);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x21u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v102 != 31)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialCardLockup();
      OUTLINED_FUNCTION_63_8();
      sub_2169BB7B4(v103, v104);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x22u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v121 != 32)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialOnboardingFindFriendsPageLockup();
      sub_2169BB7B4(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x23u:
      OUTLINED_FUNCTION_36_18();
      if (v101 != 33)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 97;
      goto LABEL_116;
    case 0x24u:
      OUTLINED_FUNCTION_36_18();
      if (v163 != 34)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 98;
      goto LABEL_116;
    case 0x25u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v162 != 35)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialOnboardingSharedPlaylistLockup();
      sub_2169BB7B4(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
      OUTLINED_FUNCTION_17_35();
      if (v21)
      {
        goto LABEL_109;
      }

      goto LABEL_129;
    case 0x26u:
      OUTLINED_FUNCTION_36_18();
      if (v107 != 42)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 106;
      goto LABEL_116;
    case 0x27u:
      OUTLINED_FUNCTION_36_18();
      if (v115 != 43)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 107;
      goto LABEL_116;
    case 0x28u:
      OUTLINED_FUNCTION_36_18();
      if (v137 != 44)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 108;
      goto LABEL_116;
    case 0x29u:
      OUTLINED_FUNCTION_36_18();
      if (v116 != 45)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 109;
      goto LABEL_116;
    case 0x2Au:
      OUTLINED_FUNCTION_36_18();
      if (v165 != 46)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 110;
      goto LABEL_116;
    case 0x2Bu:
      OUTLINED_FUNCTION_36_18();
      if (v106 != 47)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 111;
      goto LABEL_116;
    case 0x2Cu:
      OUTLINED_FUNCTION_36_18();
      if (v156 != 38)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 102;
      goto LABEL_116;
    case 0x2Du:
      OUTLINED_FUNCTION_36_18();
      if (v164 != 41)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 105;
      goto LABEL_116;
    case 0x30u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v96 != 39)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialProfileHorizontalLockup();
      sub_2169BB7B4(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x32u:
      OUTLINED_FUNCTION_36_18();
      if (v149 != 49)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 113;
      goto LABEL_116;
    case 0x34u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v93 != 51)
      {
        goto LABEL_123;
      }

      type metadata accessor for SquareLockup();
      OUTLINED_FUNCTION_64_11();
      sub_2169BB7B4(v94, v95);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x35u:
      OUTLINED_FUNCTION_36_18();
      if (v92 != 53)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 117;
      goto LABEL_116;
    case 0x37u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v108 != 54)
      {
        goto LABEL_123;
      }

      type metadata accessor for TextListComponentModel();
      sub_2169BB7B4(&qword_280E38AD0, type metadata accessor for TextListComponentModel);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x38u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v122 != 55)
      {
        goto LABEL_123;
      }

      type metadata accessor for TopSearchLockup();
      OUTLINED_FUNCTION_58_12();
      sub_2169BB7B4(v123, v124);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x39u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v158 != 56)
      {
        goto LABEL_123;
      }

      type metadata accessor for TrackLockup();
      OUTLINED_FUNCTION_24_24();
      sub_2169BB7B4(v159, v160);
      OUTLINED_FUNCTION_17_35();
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x3Au:
      OUTLINED_FUNCTION_36_18();
      if (v89 != 57)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 121;
      goto LABEL_116;
    case 0x3Bu:
      OUTLINED_FUNCTION_36_18();
      if (v97 != 58)
      {
        goto LABEL_124;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_12();
      v91 = 122;
LABEL_116:
      OUTLINED_FUNCTION_88_6(v90, v91);
      goto LABEL_131;
    case 0x3Du:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v128 != 60)
      {
        goto LABEL_123;
      }

      type metadata accessor for VerticalVideoLockup();
      sub_2169BB7B4(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
      OUTLINED_FUNCTION_17_35();
      if (v21)
      {
        goto LABEL_109;
      }

LABEL_129:
      OUTLINED_FUNCTION_76_8();
      OUTLINED_FUNCTION_21_29();
      goto LABEL_130;
    default:
      goto LABEL_124;
  }
}

void sub_2169B8B1C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v72 = v3;
  v5 = v4;
  v61 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v69 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v9);
  OUTLINED_FUNCTION_16();
  v65 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v14);
  v58 = v0;
  if (v5)
  {
    *&v75[0] = v5;
    sub_21700DF14();
    OUTLINED_FUNCTION_86_9();
    swift_getTupleTypeMetadata2();
    sub_21700E894();
    v70 = v54;
    v74[0] = sub_21700E384();
    MEMORY[0x28223BE20](v74[0]);
    OUTLINED_FUNCTION_6_5();
    sub_21700E984();
    OUTLINED_FUNCTION_86_9();
    sub_21700E3F4();
    swift_getWitnessTable();
    v15 = v58;
    sub_21700E794();
    v58 = v15;

    v16 = v77;
  }

  else
  {
    OUTLINED_FUNCTION_86_9();
    swift_getTupleTypeMetadata2();
    sub_21700E894();
    v16 = sub_21700E384();
  }

  OUTLINED_FUNCTION_6_5();
  sub_21700E894();
  *&v75[0] = v72;
  v17 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item();
  sub_21700E984();
  swift_getWitnessTable();
  sub_21700EC44();
  v20 = v77;
  v19 = v78;
  v21 = v63;
  if (v77 == v78)
  {
LABEL_5:

LABEL_6:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  if (v78 < v77)
  {
    goto LABEL_25;
  }

  v70 = (v17 - 8);
  v67 = v65 + 32;
  v66 = v65 + 16;
  v65 += 8;
  v59 = v69 + 8;
  *&v18 = 136315394;
  v55 = v18;
  v22 = v71;
  v69 = v78;
  v54[1] = v16;
  while (v20 < v19)
  {
    sub_21700E994();
    (*(*(v17 - 8) + 16))(v75, &v77, v17);
    if (v76)
    {
      v23 = v75[0];
      v73 = v75[0];
      sub_21700DF14();
      sub_21700F364();
      sub_21700E404();
      sub_216788110(v74);
      if (__swift_getEnumTagSinglePayload(v22, 1, v2) == 1)
      {
        OUTLINED_FUNCTION_72_10();
        v24(v22, v61);
        if (qword_27CAB5B70 != -1)
        {
          swift_once();
        }

        v25 = sub_217007CA4();
        __swift_project_value_buffer(v25, qword_27CABEB28);
        swift_bridgeObjectRetain_n();
        sub_21700DF14();
        v26 = sub_217007C84();
        v27 = sub_21700ED84();

        v62 = v27;
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v74[0] = v57;
          *v28 = v55;
          v29 = sub_2166A85FC(v23, *(&v23 + 1), v74);

          *(v28 + 4) = v29;
          *(v28 + 12) = 2080;
          v56 = v26;
          sub_21700DF14();

          v30 = sub_21700E394();
          v32 = v31;

          v33 = sub_2166A85FC(v30, v32, v74);
          v21 = v63;

          *(v28 + 14) = v33;
          v34 = v56;
          _os_log_impl(&dword_216679000, v56, v62, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v28, 0x16u);
          v35 = v57;
          swift_arrayDestroy();
          MEMORY[0x21CEA1440](v35, -1, -1);
          MEMORY[0x21CEA1440](v28, -1, -1);

          v36 = OUTLINED_FUNCTION_68_10();
          v37(v36);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v48 = OUTLINED_FUNCTION_68_10();
          v49(v48);
          v21 = v63;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_72_10();
      v42 = v60;
      v43(v60, v22, v2);
      OUTLINED_FUNCTION_72_10();
      v44(v68, v42, v2);
      OUTLINED_FUNCTION_6_5();
      sub_21700E984();
      sub_21700E8F4();
      OUTLINED_FUNCTION_72_10();
      v45(v42, v2);
    }

    else
    {
      sub_2166A0F18(v75, v74);
      sub_2167B7D58(v74, &v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
      if (!swift_dynamicCast())
      {

        __swift_storeEnumTagSinglePayload(v21, 1, 1, v2);
        OUTLINED_FUNCTION_72_10();
        v50(v21, v61);
        sub_2169BB698();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_88_6(v51, 129);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        v52 = OUTLINED_FUNCTION_68_10();
        v53(v52);
        goto LABEL_6;
      }

      __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
      OUTLINED_FUNCTION_72_10();
      v38 = v64;
      v39(v64, v21, v2);
      OUTLINED_FUNCTION_72_10();
      v40(v68, v38, v2);
      OUTLINED_FUNCTION_6_5();
      sub_21700E984();
      sub_21700E8F4();
      OUTLINED_FUNCTION_72_10();
      v41(v38, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
    }

    v46 = OUTLINED_FUNCTION_68_10();
    v47(v46);
LABEL_20:
    ++v20;
    v19 = v69;
    v22 = v71;
    if (v69 == v20)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_2169B9498()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABEB28);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

void sub_2169B9570(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for SocialProfileHorizontalLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v19(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileHorizontalLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9B18();
        v13 = v21;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v18 = v15 + 1;
        v17[1] = v15;
        sub_216AB9B18();
        v16 = v18;
        v13 = v21;
      }

      ++v10;
      *(v13 + 16) = v16;
      v18 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileHorizontalLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9804(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for SocialProfileFollowRequestLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v19(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileFollowRequestLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9B70();
        v13 = v21;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v18 = v15 + 1;
        v17[1] = v15;
        sub_216AB9B70();
        v16 = v18;
        v13 = v21;
      }

      ++v10;
      *(v13 + 16) = v16;
      v18 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileFollowRequestLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9A98(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for SocialCardLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v19(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialCardLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9BC8();
        v13 = v21;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v18 = v15 + 1;
        v17[1] = v15;
        sub_216AB9BC8();
        v16 = v18;
        v13 = v21;
      }

      ++v10;
      *(v13 + 16) = v16;
      v18 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialCardLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9D2C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for ListLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v19(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for ListLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9C20();
        v13 = v21;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v18 = v15 + 1;
        v17[1] = v15;
        sub_216AB9C20();
        v16 = v18;
        v13 = v21;
      }

      ++v10;
      *(v13 + 16) = v16;
      v18 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for ListLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9FC0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for RecentSearchLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v17[2] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v19(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for RecentSearchLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9C78();
        v13 = v21;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v18 = v15 + 1;
        v17[1] = v15;
        sub_216AB9C78();
        v16 = v18;
        v13 = v21;
      }

      ++v10;
      *(v13 + 16) = v16;
      v18 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for RecentSearchLockup);
      ++v10;
    }
  }

  __break(1u);
}

uint64_t sub_2169BA254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700F164();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_21700D314();
  (*(*(a3 - 8) + 16))(v7, a2, a3);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, a3);
  sub_21700E3F4();
  return sub_21700E414();
}

void sub_2169BA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v300 = v23;
  v301 = v20;
  v306 = v24;
  v26 = v25;
  v299 = v27;
  v28 = type metadata accessor for SongTrackLockupCollection(0);
  v29 = OUTLINED_FUNCTION_36(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v295 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF8);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = OUTLINED_FUNCTION_8_0(&v264 - v33);
  v35 = type metadata accessor for PlaylistTrackLockupCollection(v34);
  v36 = OUTLINED_FUNCTION_36(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v297 = v37;
  v38 = OUTLINED_FUNCTION_4_1();
  v39 = type metadata accessor for ContentDescriptor(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE00);
  OUTLINED_FUNCTION_36(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  v48 = OUTLINED_FUNCTION_8_0(&v264 - v47);
  v292 = type metadata accessor for AlbumTrackLockupCollection(v48);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  v296 = v50;
  v51 = OUTLINED_FUNCTION_4_1();
  v291 = type metadata accessor for SuperHeroLockup(v51);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08);
  OUTLINED_FUNCTION_36(v54);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  v289 = &v264 - v56;
  v57 = OUTLINED_FUNCTION_4_1();
  v290 = type metadata accessor for SuperHeroLockupCollection(v57);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  v293 = v59;
  v60 = OUTLINED_FUNCTION_4_1();
  v286 = type metadata accessor for SquareLockupCollection(v60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  v294 = v62;
  v63 = OUTLINED_FUNCTION_4_1();
  v64 = type metadata accessor for SocialCardLockupCollection(v63);
  v65 = OUTLINED_FUNCTION_36(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  v287 = v66;
  v67 = OUTLINED_FUNCTION_4_1();
  v68 = type metadata accessor for HorizontalLockupCollection(v67);
  v69 = OUTLINED_FUNCTION_1_77(v68, &a18);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  v288 = v70;
  v71 = OUTLINED_FUNCTION_4_1();
  v72 = type metadata accessor for PosterLockupCollection(v71);
  v73 = OUTLINED_FUNCTION_36(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v285 = v74;
  OUTLINED_FUNCTION_4_1();
  v298 = type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47_1();
  v85 = OUTLINED_FUNCTION_8_0(v84);
  type metadata accessor for CircleLockupCollection(v85);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_7();
  v89 = (v88 - v87);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE10);
  OUTLINED_FUNCTION_36(v90);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v91);
  v93 = &v264 - v92;
  v94 = type metadata accessor for Section.Content.OneOf_InnerContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v96);
  v98 = &v264 - v97;
  sub_216683A80(v26, v93, &qword_27CABEE10);
  if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
  {

    sub_216697664(v93, &qword_27CABEE10);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE18);
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    *v100 = xmmword_217030F50;
    *(v100 + 16) = v99;
    swift_willThrow();
    OUTLINED_FUNCTION_3_72();
    v102 = v26;
LABEL_35:
    sub_2169BBB3C(v102, v101);
    goto LABEL_36;
  }

  v264 = v26;
  sub_2169BBB94();
  OUTLINED_FUNCTION_8();
  sub_2169BBAE8();
  v103 = v98;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_63_7();
      v118 = v285;
      sub_2169BBB94();
      OUTLINED_FUNCTION_82_9();
      type metadata accessor for PosterLockup();
      OUTLINED_FUNCTION_62_7();
      sub_2169BB7B4(v170, v171);
      OUTLINED_FUNCTION_110_5();
      v172 = sub_21700DF14();
      v173 = OUTLINED_FUNCTION_77_9(v172);
      if (v20)
      {

        v174 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v174, v175);
        v137 = type metadata accessor for PosterLockupCollection;
        goto LABEL_30;
      }

      if (!v173)
      {
        goto LABEL_62;
      }

      v228 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v228, v229);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v98, v230);
      OUTLINED_FUNCTION_30_23(&v301);
      goto LABEL_53;
    case 2u:
      OUTLINED_FUNCTION_63_7();
      v118 = v288;
      sub_2169BBB94();
      OUTLINED_FUNCTION_41_14();
      OUTLINED_FUNCTION_79_12(v138 | v139);
      type metadata accessor for HorizontalLockup();
      OUTLINED_FUNCTION_60_9();
      sub_2169BB7B4(v140, v141);
      OUTLINED_FUNCTION_110_5();
      v142 = sub_21700DF14();
      v143 = OUTLINED_FUNCTION_77_9(v142);
      if (v20)
      {

        v144 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v144, v145);
        v137 = type metadata accessor for HorizontalLockupCollection;
        goto LABEL_30;
      }

      if (v143)
      {

        v203 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v203, v204);
        OUTLINED_FUNCTION_111_5();
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v98, v205);
        OUTLINED_FUNCTION_30_23(&v303);
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_59;
    case 3u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBB94();
      v146 = type metadata accessor for SocialCardLockup();
      OUTLINED_FUNCTION_63_8();
      v149 = sub_2169BB7B4(v147, v148);
      v150 = sub_21700DF14();
      v151 = v149;
      v152 = v301;
      v154 = sub_216F76E04(v150, v153, v146, v151);
      if (v152)
      {

        v155 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v155, v156);
        v116 = OUTLINED_FUNCTION_53_13();
        goto LABEL_34;
      }

      v206 = v154;
      if (v154)
      {

        v207 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v207, v208);
        v209 = OUTLINED_FUNCTION_53_13();
        sub_2169BBB3C(v209, v210);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v98, v211);
        *v271 = v206;
        swift_storeEnumTagMultiPayload();
        goto LABEL_54;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    case 4u:
      OUTLINED_FUNCTION_63_7();
      v118 = v294;
      sub_2169BBB94();
      v119 = *v118;
      OUTLINED_FUNCTION_41_14();
      if (v123)
      {
        v124 = v121;
      }

      else
      {
        v124 = 0;
      }

      v125 = v120 | v122;
      sub_21700DF14();
      sub_21700DF14();
      v126 = v124;
      v127 = v301;
      v128 = sub_216BA9FB0(v126, v125 & 1);
      if (v127)
      {

        swift_bridgeObjectRelease_n();
        v135 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v135, v136);
        v137 = type metadata accessor for SquareLockupCollection;
        goto LABEL_30;
      }

      v129 = v128;
      OUTLINED_FUNCTION_41_14();
      if (v123)
      {
        v133 = v131;
      }

      else
      {
        v133 = 0;
      }

      v134 = sub_216BA9FE0(v133, (v130 | v132) & 1);
      v302 = v300;
      v303 = v306;
      LOBYTE(v304) = v129 & 1;
      BYTE1(v304) = v134 & 1;
      v249 = type metadata accessor for SquareLockup();
      OUTLINED_FUNCTION_64_11();
      v252 = sub_2169BB7B4(v250, v251);
      if (!sub_216F76E04(v119, &v302, v249, v252))
      {
        goto LABEL_67;
      }

      v261 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v261, v262);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v103, v263);
      OUTLINED_FUNCTION_30_23(&v300);
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_63_7();
      v176 = v293;
      sub_2169BBB94();
      v178 = v289;
      v177 = v290;
      sub_216683A80(v176 + *(v290 + 20), v289, &qword_27CABEE08);
      if (__swift_getEnumTagSinglePayload(v178, 1, v291) == 1)
      {

        sub_216697664(v178, &qword_27CABEE08);
        sub_2167880BC();
        OUTLINED_FUNCTION_12();
        *v179 = xmmword_217030F40;
        *(v179 + 16) = v177;
        swift_willThrow();
        v180 = OUTLINED_FUNCTION_1_91();
LABEL_33:
        sub_2169BBB3C(v180, v181);
        OUTLINED_FUNCTION_67_8();
        v116 = v176;
        goto LABEL_34;
      }

      sub_216697664(v178, &qword_27CABEE08);
      sub_216FD45D8(v284);
      v202 = v301;
      sub_216B0C214(v300, v306, v283);
      v180 = v264;
      if (v202)
      {
        v181 = type metadata accessor for Section.Content;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_72();
      sub_2169BBB3C(v245, v246);
      OUTLINED_FUNCTION_67_8();
      sub_2169BBB3C(v176, v247);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v103, v248);
      swift_storeEnumTagMultiPayload();
LABEL_54:
      OUTLINED_FUNCTION_63_7();
      sub_2169BBB94();
LABEL_36:
      OUTLINED_FUNCTION_21_4();
      return;
    case 6u:
      OUTLINED_FUNCTION_63_7();
      v157 = v296;
      sub_2169BBB94();
      v182 = (v157 + *(v292 + 28));
      v183 = *v182;
      v184 = v182[1];
      v185 = *v157;
      v302 = v300;
      v303 = v306;
      v304 = v183;
      v305 = v184;
      v186 = type metadata accessor for AlbumTrackLockup();
      OUTLINED_FUNCTION_65_7();
      v189 = sub_2169BB7B4(v187, v188);
      swift_bridgeObjectRetain_n();
      sub_21700DF14();
      v190 = sub_21700DF14();
      v191 = v301;
      v192 = sub_216F76E04(v190, &v302, v186, v189);
      if (v191)
      {

        v193 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v193, v194);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v103, v195);
        v169 = type metadata accessor for AlbumTrackLockupCollection;
        goto LABEL_27;
      }

      v301 = v103;
      if (!v192)
      {
        goto LABEL_63;
      }

      *v276 = v192;
      v231 = v277;
      sub_216CE0794(v185, v277);
      v232 = type metadata accessor for AlbumTrackLockup(0);
      if (__swift_getEnumTagSinglePayload(v231, 1, v232) == 1)
      {
        goto LABEL_66;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8);

      v233 = v281;
      sub_216F61D00();
      sub_2169BBB3C(v231, type metadata accessor for AlbumTrackLockup);
      OUTLINED_FUNCTION_66_10();
      v234 = v279;
      sub_2169BBAE8();
      sub_21689C518(v234, v235, v236, v237, v238, v239, v240, v241, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      OUTLINED_FUNCTION_15_32();
      sub_2169BBB3C(v233, v257);
      v258 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v258, v259);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v301, v260);
      sub_2169BBB3C(v157, type metadata accessor for AlbumTrackLockupCollection);
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
    case 7u:
      OUTLINED_FUNCTION_63_7();
      v157 = v297;
      sub_2169BBB94();
      v158 = *v157;
      OUTLINED_FUNCTION_82_9();
      v159 = type metadata accessor for PlaylistTrackLockup();
      OUTLINED_FUNCTION_55_13();
      sub_2169BB7B4(v160, v161);
      OUTLINED_FUNCTION_110_5();
      v162 = sub_21700DF14();
      v163 = v20;
      v164 = v301;
      v165 = sub_216F76E04(v162, &v302, v159, v163);
      if (v164)
      {

        v166 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v166, v167);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v103, v168);
        v169 = type metadata accessor for PlaylistTrackLockupCollection;
LABEL_27:
        v101 = v169;
        v102 = v157;
        goto LABEL_35;
      }

      if (!v165)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      *v275 = v165;
      v212 = v282;
      sub_216CE07C0(v158, v282);
      v213 = type metadata accessor for PlaylistTrackLockup(0);
      if (__swift_getEnumTagSinglePayload(v212, 1, v213) == 1)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0);
      v214 = v280;
      sub_216F5081C(v280);
      sub_2169BBB3C(v212, type metadata accessor for PlaylistTrackLockup);
      OUTLINED_FUNCTION_66_10();
      v215 = v278;
      sub_2169BBAE8();
      sub_21689C518(v215, v216, v217, v218, v219, v220, v221, v222, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      OUTLINED_FUNCTION_15_32();
      sub_2169BBB3C(v214, v253);
      v254 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v254, v255);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v103, v256);
      sub_2169BBB3C(v157, type metadata accessor for PlaylistTrackLockupCollection);
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
    case 8u:
      OUTLINED_FUNCTION_63_7();
      v118 = v295;
      sub_2169BBB94();
      OUTLINED_FUNCTION_82_9();
      type metadata accessor for TrackLockup();
      OUTLINED_FUNCTION_24_24();
      sub_2169BB7B4(v196, v197);
      OUTLINED_FUNCTION_110_5();
      v198 = sub_21700DF14();
      v199 = OUTLINED_FUNCTION_77_9(v198);
      if (v20)
      {

        v200 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v200, v201);
        v137 = type metadata accessor for SongTrackLockupCollection;
LABEL_30:
        v117 = v137;
        v116 = v118;
        goto LABEL_34;
      }

      if (!v199)
      {
        goto LABEL_64;
      }

      v242 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v242, v243);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v98, v244);
      OUTLINED_FUNCTION_30_23(&v305);
      goto LABEL_53;
    default:
      OUTLINED_FUNCTION_63_7();
      sub_2169BBB94();
      OUTLINED_FUNCTION_41_14();
      v106 = *v89;
      OUTLINED_FUNCTION_79_12(v104 | v105);
      v107 = type metadata accessor for BubbleLockup();
      OUTLINED_FUNCTION_56_12();
      v110 = sub_2169BB7B4(v108, v109);
      sub_21700DF14();
      sub_21700DF14();
      v111 = v110;
      v112 = v301;
      v113 = sub_216F76E04(v106, &v302, v107, v111);
      if (v112)
      {

        v114 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v114, v115);
        v116 = OUTLINED_FUNCTION_54_14();
LABEL_34:
        sub_2169BBB3C(v116, v117);
        OUTLINED_FUNCTION_4_55();
        v102 = v103;
        goto LABEL_35;
      }

      if (!v113)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      v223 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v223, v224);
      v225 = OUTLINED_FUNCTION_54_14();
      sub_2169BBB3C(v225, v226);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v103, v227);
      OUTLINED_FUNCTION_30_23(&v304);
LABEL_53:
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
  }
}

unint64_t sub_2169BB698()
{
  result = qword_27CABEB60;
  if (!qword_27CABEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEB60);
  }

  return result;
}

uint64_t sub_2169BB6EC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BB740()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BB7B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2169BB7FC()
{
  result = qword_280E2C7F8[0];
  if (!qword_280E2C7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2C7F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SectionContent.SectionContentError(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 != 1)
  {
    if ((a2 + 254) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 254) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 255;
    return (v5 + 1);
  }

LABEL_17:
  if (*a1 >= 0xC0u)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SectionContent.SectionContentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 1)
  {
    v6 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = -64;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169BB9A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0x3Fu) + 2;
  }
}

_BYTE *sub_2169BB9D0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x3F | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 62) & 0x3F | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t sub_2169BBAE8()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BBB3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169BBB94()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_79_12@<X0>(char a1@<W8>)
{
  *(v3 - 120) = *(v3 - 136);
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
  *(v3 - 96) = a1 & 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_88_6@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_94_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t))
{
  v7 = *(v5 - 88);

  return sub_2169B63B0(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_109_5(uint64_t a1, uint64_t a2)
{

  return sub_216683A80(a1, a2, v2);
}

uint64_t sub_2169BBE0C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - v4;
  v6 = type metadata accessor for NoticeAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if (*a1 == 3)
  {
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
    __swift_storeEnumTagSinglePayload(v8, 6, 11, v13);
    sub_21700D234();
    v22[3] = v6;
    v22[4] = sub_2169BC150(&qword_27CAB8E08, type metadata accessor for NoticeAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2169BC198(v8, boxed_opaque_existential_1);
    v15 = v20;
    (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v20);
    sub_21700D5E4();

    (*(v3 + 8))(v5, v15);
    sub_2169BC1FC(v8);
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_21700D2A4();
  return (*(*(v17 - 8) + 104))(v21, v16, v17);
}

uint64_t sub_2169BC150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169BC198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169BC1FC(uint64_t a1)
{
  v2 = type metadata accessor for NoticeAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2169BC258()
{
  OUTLINED_FUNCTION_49();
  v90 = v1;
  v88 = v2;
  v95 = v3;
  v4 = type metadata accessor for SongContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v86 = v7;
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v85 = v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v92 = v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  v91 = type metadata accessor for MusicVideoContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v84 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v25 = v24;
  OUTLINED_FUNCTION_4_1();
  v26 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  (*(v28 + 16))(v31 - v30, v90, v26);
  v33 = OUTLINED_FUNCTION_113();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277CD8368])
  {
    v36 = OUTLINED_FUNCTION_113();
    v37(v36);
    v39 = v85;
    v38 = v86;
    v40 = v32;
    v41 = v87;
    (*(v86 + 32))(v85, v40, v87);
    OUTLINED_FUNCTION_96_5();
    v42(v0, v39, v41);
    OUTLINED_FUNCTION_1_92();
    sub_2169C3618(v88, v0 + v43, v44);
    v45 = (v0 + v4[6]);
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v46, v47);
    *v45 = sub_217008CF4();
    v45[1] = v48;
    v49 = (v0 + v4[7]);
    type metadata accessor for PlaybackPresenter();
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v50, v51);
    *v49 = sub_217008CF4();
    v49[1] = v52;
    v53 = v4[8];
    *(v0 + v53) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_31();
    sub_2169C3618(v0, v13, v54);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v55, v56);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v57, v58);
    sub_217009554();
    sub_216681B04(v16, v92, &qword_27CABB0F0);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    sub_216697664(v16, &qword_27CABB0F0);
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v0, v59);
    (*(v38 + 8))(v39, v41);
  }

  else
  {
    v90 = v16;
    v87 = v4;
    v60 = v91;
    v61 = v92;
    if (v35 == *MEMORY[0x277CD8350])
    {
      v62 = OUTLINED_FUNCTION_113();
      v63(v62);
      v64 = v84;
      (*(v22 + 32))(v25, v32, v84);
      (*(v22 + 16))(v20, v25, v64);
      OUTLINED_FUNCTION_1_92();
      sub_2169C3618(v88, v20 + v65, v66);
      v67 = *(v60 + 24);
      *(v20 + v67) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
      OUTLINED_FUNCTION_50_14();
      OUTLINED_FUNCTION_76_9();
      type metadata accessor for MenuBuilder();
      OUTLINED_FUNCTION_0_104();
      sub_2169C3570(v68, v69);
      *v22 = OUTLINED_FUNCTION_89_11();
      *(v22 + 8) = v70;
      OUTLINED_FUNCTION_76_9();
      type metadata accessor for PlaybackPresenter();
      OUTLINED_FUNCTION_2_69();
      sub_2169C3570(v71, v72);
      v73 = OUTLINED_FUNCTION_89_11();
      OUTLINED_FUNCTION_11_40(v73, v74);
      sub_2169C3618(v20, v13, v75);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_56();
      sub_2169C3570(v76, v77);
      OUTLINED_FUNCTION_3_73();
      sub_2169C3570(v78, v79);
      v80 = v90;
      sub_217009554();
      sub_216681B04(v80, v61, &qword_27CABB0F0);
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      OUTLINED_FUNCTION_53_14();
      OUTLINED_FUNCTION_14_34();
      sub_2169C3678(v20, v81);
      (*(v22 + 8))(v25, v64);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v82 = OUTLINED_FUNCTION_113();
      v83(v82);
    }
  }

  OUTLINED_FUNCTION_26();
}

void sub_2169BCA3C()
{
  OUTLINED_FUNCTION_49();
  v137 = v1;
  v131 = v2;
  v132 = v3;
  v130 = v4;
  v142 = v5;
  v138 = type metadata accessor for SongContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v7);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v128 = v9;
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v127 = v10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v139 = v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v135 = v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v136 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for MenuContext(v17);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v123 - v23;
  v133 = type metadata accessor for MusicVideoContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v34 = v33;
  OUTLINED_FUNCTION_4_1();
  v35 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_96_5();
  v37(v0, v137, v35);
  v38 = OUTLINED_FUNCTION_26_22();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277CD8540])
  {
    v41 = OUTLINED_FUNCTION_26_22();
    v42(v41);
    v125 = v31;
    v43 = *(v31 + 32);
    v123 = v34;
    v124 = v29;
    v43(v34, v0, v29);
    (*(v31 + 16))(v28, v34, v29);
    v44 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_88(v24, v45, v46, v44);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v47 = v133;
    v48 = v28 + *(v133 + 20);
    sub_216681B04(v24, v48, &qword_27CAB6A00);
    v49 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v21, v50, v51);
    v52 = (v48 + v49[6]);
    v53 = v131;
    v54 = v132;
    *v52 = v130;
    v52[1] = v54;
    *(v48 + v49[7]) = v53;
    v55 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v55, v56, &qword_27CAB6DB0);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v143, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v21, v57);
    sub_216697664(v24, &qword_27CAB6A00);
    OUTLINED_FUNCTION_82_10(v49[9]);
    v58 = *(v47 + 24);
    *(v28 + v58) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_95_9();
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v59, v60);
    qword_217016C00 = OUTLINED_FUNCTION_89_11();
    *"MusicUI" = v61;
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for PlaybackPresenter();
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v62, v63);
    v64 = OUTLINED_FUNCTION_89_11();
    OUTLINED_FUNCTION_11_40(v64, v65);
    sub_2169C3618(v28, v135, v66);
    OUTLINED_FUNCTION_100_8();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v67, v68);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v69, v70);
    OUTLINED_FUNCTION_7_4();
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v71, v72, v73);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    OUTLINED_FUNCTION_112_6();
    sub_217009554();
    v74 = OUTLINED_FUNCTION_82_1();
    sub_216697664(v74, v75);
    OUTLINED_FUNCTION_14_34();
    sub_2169C3678(v28, v76);
    OUTLINED_FUNCTION_67();
    v78 = v123;
    v79 = v124;
  }

  else
  {
    v80 = v138;
    if (v40 != *MEMORY[0x277CD8548])
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v121 = OUTLINED_FUNCTION_26_22();
      v122(v121);
      goto LABEL_7;
    }

    v81 = OUTLINED_FUNCTION_26_22();
    v82(v81);
    v83 = OUTLINED_FUNCTION_92_0();
    v84(v83);
    v85 = v126;
    OUTLINED_FUNCTION_42_6();
    v86();
    v87 = type metadata accessor for ContentDescriptor();
    v88 = v24;
    OUTLINED_FUNCTION_88(v24, v89, v90, v87);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v91 = v80;
    v92 = v85 + *(v80 + 20);
    v93 = OUTLINED_FUNCTION_45();
    sub_216681B04(v93, v94, v95);
    v96 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v21, v97, v98);
    v99 = (v92 + v96[6]);
    v100 = v131;
    v101 = v132;
    *v99 = v130;
    v99[1] = v101;
    *(v92 + v96[7]) = v100;
    v102 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v102, v103, &qword_27CAB6DB0);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v143, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v21, v104);
    sub_216697664(v88, &qword_27CAB6A00);
    OUTLINED_FUNCTION_82_10(v96[9]);
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v105, v106);
    *v101 = OUTLINED_FUNCTION_89_11();
    v101[1] = v107;
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for PlaybackPresenter();
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v108, v109);
    *v101 = OUTLINED_FUNCTION_89_11();
    v101[1] = v110;
    v111 = *(v91 + 32);
    *(v85 + v111) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_95_9();
    OUTLINED_FUNCTION_13_31();
    sub_2169C3618(v85, v135, v112);
    OUTLINED_FUNCTION_101_5();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v113, v114);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v115, v116);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v117, v118, v119);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    OUTLINED_FUNCTION_112_6();
    sub_217009554();
    OUTLINED_FUNCTION_54_15();
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v85, v120);
    v78 = v127;
    v77 = *(v128 + 8);
    v79 = v129;
  }

  v77(v78, v79);
LABEL_7:
  OUTLINED_FUNCTION_26();
}

void sub_2169BD438()
{
  OUTLINED_FUNCTION_49();
  v142 = v1;
  v143 = v2;
  v134 = v4;
  v135 = v3;
  v136 = v5;
  v144 = v6;
  v148 = v7;
  v137 = type metadata accessor for SongContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v9);
  v133 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v132 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v12);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v147 = v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v140 = v16;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v141 = v18;
  v19 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for MenuContext(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v128 - v25;
  v138 = type metadata accessor for MusicVideoContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v36 = v35;
  OUTLINED_FUNCTION_4_1();
  v37 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  (*(v39 + 16))(v0, v142, v37);
  v41 = OUTLINED_FUNCTION_26_22();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277CD8540])
  {
    v44 = OUTLINED_FUNCTION_26_22();
    v45(v44);
    v130 = v33;
    v46 = *(v33 + 32);
    v128 = v36;
    v129 = v31;
    v46(v36, v0, v31);
    (*(v33 + 16))(v30, v36, v31);
    v47 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_88(v26, v48, v49, v47);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v51 + 16))(v23, v143);
    sub_216681B04(v144, v23 + v50, &qword_27CAB74B8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v52 = v138;
    v53 = v30 + *(v138 + 20);
    v54 = OUTLINED_FUNCTION_92_0();
    sub_216681B04(v54, v55, v56);
    v57 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v23, v58, v59);
    v60 = (v53 + v57[6]);
    v61 = v134;
    *v60 = v135;
    v60[1] = v61;
    *(v53 + v57[7]) = v136;
    v62 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v62, v63, &qword_27CAB6DB0);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v149, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v23, v64);
    sub_216697664(v26, &qword_27CAB6A00);
    OUTLINED_FUNCTION_82_10(v57[9]);
    v65 = *(v52 + 24);
    *(v30 + v65) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v66 = (v30 + *(v52 + 28));
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v67, v68);
    *v66 = OUTLINED_FUNCTION_89_11();
    v66[1] = v69;
    type metadata accessor for PlaybackPresenter();
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v70, v71);
    v72 = OUTLINED_FUNCTION_89_11();
    OUTLINED_FUNCTION_11_40(v72, v73);
    sub_2169C3618(v30, v140, v74);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v75, v76);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v77, v78);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v79, v80, v81);
    OUTLINED_FUNCTION_112_6();
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    v82 = OUTLINED_FUNCTION_82_1();
    sub_216697664(v82, v83);
    OUTLINED_FUNCTION_14_34();
    sub_2169C3678(v30, v84);
    OUTLINED_FUNCTION_67();
    v86 = v128;
    v87 = v129;
  }

  else
  {
    v89 = v143;
    v88 = v144;
    if (v43 != *MEMORY[0x277CD8548])
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v126 = OUTLINED_FUNCTION_26_22();
      v127(v126);
      goto LABEL_7;
    }

    v90 = OUTLINED_FUNCTION_26_22();
    v91(v90);
    OUTLINED_FUNCTION_94_0();
    v92 = OUTLINED_FUNCTION_40_14();
    v93(v92);
    OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_48_15();
    v94();
    v95 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_88(v26, v96, v97, v95);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v99 + 16))(v23, v89);
    sub_216681B04(v88, v23 + v98, &qword_27CAB74B8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v100 = v137;
    v101 = v31 + *(v137 + 20);
    sub_216681B04(v26, v101, &qword_27CAB6A00);
    v102 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v23, v103, v104);
    v105 = (v101 + v102[6]);
    v106 = v134;
    *v105 = v135;
    v105[1] = v106;
    *(v101 + v102[7]) = v136;
    v107 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v107, v108, &qword_27CAB6DB0);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v149, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v23, v109);
    sub_216697664(v26, &qword_27CAB6A00);
    OUTLINED_FUNCTION_82_10(v102[9]);
    OUTLINED_FUNCTION_76_9();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v110, v111);
    *v106 = OUTLINED_FUNCTION_89_11();
    v106[1] = v112;
    OUTLINED_FUNCTION_76_9();
    type metadata accessor for PlaybackPresenter();
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v113, v114);
    *v106 = OUTLINED_FUNCTION_89_11();
    v106[1] = v115;
    v116 = *(v100 + 32);
    *(v31 + v116) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_50_14();
    OUTLINED_FUNCTION_13_31();
    sub_2169C3618(v31, v140, v117);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v118, v119);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v120, v121);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v122, v123, v124);
    OUTLINED_FUNCTION_112_6();
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    OUTLINED_FUNCTION_54_15();
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v31, v125);
    OUTLINED_FUNCTION_67();
    v86 = v131;
    v87 = v133;
  }

  v85(v86, v87);
LABEL_7:
  OUTLINED_FUNCTION_26();
}

void sub_2169BDF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v804 = v23;
  v805 = v24;
  v807 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE88);
  OUTLINED_FUNCTION_1_77(v26, &v810);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE90);
  OUTLINED_FUNCTION_1_77(v29, &v807);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE98);
  OUTLINED_FUNCTION_1_77(v32, &v809);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v808[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v36);
  v37 = type metadata accessor for GenreContextMenu();
  v38 = OUTLINED_FUNCTION_1_77(v37, &v806);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  v40 = sub_21700C254();
  v41 = OUTLINED_FUNCTION_0(v40, &v792);
  v774[2] = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v43);
  v44 = type metadata accessor for UploadedVideoContextMenu();
  v45 = OUTLINED_FUNCTION_1_77(v44, &v744);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v46);
  v47 = sub_2170070F4();
  v48 = OUTLINED_FUNCTION_0(v47, &v739);
  v728 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEA8);
  OUTLINED_FUNCTION_1_77(v51, &v740);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEB0);
  OUTLINED_FUNCTION_1_77(v54, &v755);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v56);
  v57 = type metadata accessor for UploadedAudioContextMenu();
  v58 = OUTLINED_FUNCTION_1_77(v57, &v741);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v59);
  v60 = sub_217007064();
  v61 = OUTLINED_FUNCTION_0(v60, &v746);
  v729 = v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v63);
  v64 = type metadata accessor for TVShowContextMenu();
  v65 = OUTLINED_FUNCTION_1_77(v64, &v752);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v66);
  v67 = sub_217007264();
  v68 = OUTLINED_FUNCTION_0(v67, v747);
  v732 = v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEB8);
  OUTLINED_FUNCTION_1_77(v71, &v753);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEC0);
  OUTLINED_FUNCTION_1_77(v74, &v749);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEC8);
  OUTLINED_FUNCTION_1_77(v77, &v754);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEED0);
  OUTLINED_FUNCTION_1_77(v80, v774);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v82);
  v83 = type metadata accessor for TVEpisodeContextMenu();
  v84 = OUTLINED_FUNCTION_1_77(v83, &v750);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v85);
  v86 = sub_2170073D4();
  v87 = OUTLINED_FUNCTION_0(v86, v756);
  v733 = v88;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v89);
  v90 = type metadata accessor for StationContextMenu();
  v91 = OUTLINED_FUNCTION_1_77(v90, v763);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v92);
  v93 = sub_21700C644();
  v94 = OUTLINED_FUNCTION_0(v93, v757);
  v736 = v95;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEED8);
  OUTLINED_FUNCTION_1_77(v97, &v762);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE0);
  OUTLINED_FUNCTION_1_77(v100, &v771);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v102);
  v103 = type metadata accessor for SocialProfileContextMenu();
  v104 = OUTLINED_FUNCTION_1_77(v103, &v760);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_105();
  v108 = OUTLINED_FUNCTION_8_0(v107);
  v109 = type metadata accessor for SocialProfileDescriptor(v108);
  v110 = OUTLINED_FUNCTION_1_77(v109, v758);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0);
  OUTLINED_FUNCTION_1_77(v112, &v761);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v114);
  v115 = sub_217006FE4();
  v116 = OUTLINED_FUNCTION_0(v115, &v764);
  v751[1] = v117;
  v118 = MEMORY[0x28223BE20](v116);
  v741 = &v726 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_8_0(&v726 - v120);
  v121 = type metadata accessor for SongContextMenu();
  v122 = OUTLINED_FUNCTION_1_77(v121, &v767);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v123);
  v124 = sub_21700C084();
  v125 = OUTLINED_FUNCTION_0(v124, &v759);
  v738 = v126;
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF8);
  OUTLINED_FUNCTION_1_77(v128, &v772);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF00);
  OUTLINED_FUNCTION_1_77(v131, &v768);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF08);
  OUTLINED_FUNCTION_1_77(v134, v766);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF10);
  OUTLINED_FUNCTION_1_77(v137, &v769);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF18);
  OUTLINED_FUNCTION_1_77(v140, v773);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v142);
  v797 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF20);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v144);
  v145 = type metadata accessor for RecordLabelContextMenu();
  v146 = OUTLINED_FUNCTION_1_77(v145, &v765);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v147);
  v148 = sub_21700BEA4();
  v149 = OUTLINED_FUNCTION_0(v148, v775);
  v749 = v150;
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v151);
  v152 = type metadata accessor for RadioShowContextMenu();
  v153 = OUTLINED_FUNCTION_1_77(v152, v779);
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v154);
  v155 = sub_21700C994();
  v156 = OUTLINED_FUNCTION_0(v155, &v776);
  v757[1] = v157;
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF28);
  OUTLINED_FUNCTION_1_77(v159, &v777);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v161);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF30);
  OUTLINED_FUNCTION_1_77(v162, &v790);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v164);
  v165 = type metadata accessor for PlaylistContextMenu();
  v166 = OUTLINED_FUNCTION_1_77(v165, v778);
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v167);
  v168 = sub_21700C924();
  v169 = OUTLINED_FUNCTION_0(v168, v781);
  v763[6] = v170;
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v171);
  v172 = type metadata accessor for MusicVideoContextMenu();
  v173 = OUTLINED_FUNCTION_1_77(v172, &v785);
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v174);
  v175 = sub_21700BA44();
  v176 = OUTLINED_FUNCTION_0(v175, &v782);
  v763[4] = v177;
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v178);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF38);
  OUTLINED_FUNCTION_1_77(v179, &v786);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF40);
  OUTLINED_FUNCTION_1_77(v182, &v783);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF48);
  OUTLINED_FUNCTION_1_77(v185, &v787);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v187);
  v796 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v189);
  v190 = type metadata accessor for MusicMovieContextMenu();
  v191 = OUTLINED_FUNCTION_1_77(v190, &v784);
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v192);
  v193 = sub_217006B84();
  v194 = OUTLINED_FUNCTION_0(v193, &v791);
  v765 = v195;
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v196);
  v197 = type metadata accessor for CuratorContextMenu();
  v198 = OUTLINED_FUNCTION_1_77(v197, &v803);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v199);
  v200 = sub_21700C554();
  v201 = OUTLINED_FUNCTION_0(v200, &v798);
  v775[2] = v202;
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v203);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF58);
  OUTLINED_FUNCTION_1_77(v204, &v799);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v206);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF60);
  OUTLINED_FUNCTION_1_77(v207, &a17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v209);
  v210 = type metadata accessor for CreditArtistContextMenu();
  v211 = OUTLINED_FUNCTION_1_77(v210, &v800);
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v212);
  v213 = sub_217006E94();
  v214 = OUTLINED_FUNCTION_0(v213, &v805);
  v776 = v215;
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v216);
  v802 = type metadata accessor for ArtistContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v218);
  v219 = sub_21700C384();
  v220 = OUTLINED_FUNCTION_0(v219, &a11);
  v786 = v221;
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v222);
  v803 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_105();
  v806 = v224;
  v800 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_105();
  v799 = v226;
  v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_105();
  v793 = v228;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF80);
  OUTLINED_FUNCTION_1_77(v229, &a14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v231);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF88);
  OUTLINED_FUNCTION_1_77(v232, &a12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v233);
  v235 = &v726 - v234;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF90);
  OUTLINED_FUNCTION_1_77(v236, &a16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v237);
  v239 = &v726 - v238;
  v795 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v241);
  v801 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEFA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v243);
  v808[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEFA8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_105();
  v798 = v245;
  OUTLINED_FUNCTION_4_1();
  v246 = type metadata accessor for AlbumContextMenu();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_7();
  v250 = v249 - v248;
  v251 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v253 = v252;
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_6_0();
  v256 = v255;
  OUTLINED_FUNCTION_4_1();
  v257 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v259 = v258;
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  (*(v259 + 16))(v20, v804, v257);
  v261 = (*(v259 + 88))(v20, v257);
  if (v261 != *MEMORY[0x277D2A400])
  {
    v804 = v239;
    v296 = v789;
    v297 = v802;
    v298 = v805;
    if (v261 == *MEMORY[0x277D2A418])
    {
      v299 = OUTLINED_FUNCTION_21_30();
      v300(v299);
      OUTLINED_FUNCTION_41_15();
      v301 = v788;
      v302(v788, v20, v296);
      OUTLINED_FUNCTION_106_2();
      v303 = v787;
      v305(v787 + v304, v301, v296);
      OUTLINED_FUNCTION_1_92();
      sub_2169C3618(v298, v303 + v306, v307);
      type metadata accessor for MenuBuilder();
      OUTLINED_FUNCTION_0_104();
      sub_2169C3570(v308, v309);
      *v303 = OUTLINED_FUNCTION_89_11();
      v303[1] = v310;
      v311 = *(v297 + 20);
      *(v303 + v311) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
      swift_storeEnumTagMultiPayload();
      sub_2169C3618(v303, v235, type metadata accessor for ArtistContextMenu);
      OUTLINED_FUNCTION_94_9();
      OUTLINED_FUNCTION_61_10();
      sub_2169C3570(v312, v313);
      OUTLINED_FUNCTION_60_10();
      sub_2169C3570(v314, v315);
      v316 = v804;
      OUTLINED_FUNCTION_88_7();
      sub_217009554();
      OUTLINED_FUNCTION_36_19(v316, &a13);
      OUTLINED_FUNCTION_93_9();
      sub_2169C2AD0();
      sub_2169C2BBC();
      OUTLINED_FUNCTION_83_10();
      OUTLINED_FUNCTION_47_19();
      OUTLINED_FUNCTION_54_15();
      v317 = v793;
      OUTLINED_FUNCTION_48_15();
      sub_216681B04(v318, v319, v320);
      OUTLINED_FUNCTION_122_5();
      sub_2169C2A44();
      sub_2169C2CA8();
      OUTLINED_FUNCTION_22_32();
      OUTLINED_FUNCTION_103_8();
      OUTLINED_FUNCTION_57_13();
      sub_216681B04(v298, v799, &qword_27CABEFA0);
      OUTLINED_FUNCTION_100_8();
      sub_2169C29B8();
      sub_2169C2F0C();
      OUTLINED_FUNCTION_24_25();
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_25_25(v317);
      OUTLINED_FUNCTION_44_16();
      sub_2169C292C();
      sub_2169C34E4();
      OUTLINED_FUNCTION_19_31();
      v321 = OUTLINED_FUNCTION_82_1();
      sub_216697664(v321, v322);
      sub_2169C3678(v303, type metadata accessor for ArtistContextMenu);
      v323 = *(v257 + 8);
      v324 = v788;
      v325 = &a11;
LABEL_5:
      v323(v324, *(v325 - 32));
      goto LABEL_12;
    }

    if (v261 != *MEMORY[0x277D2A438])
    {
      if (v261 == *MEMORY[0x277D2A3C8])
      {
        v330 = OUTLINED_FUNCTION_21_30();
        v331(v330);
        OUTLINED_FUNCTION_39_15();
        v332 = v780;
        OUTLINED_FUNCTION_64_0();
        v333();
        OUTLINED_FUNCTION_96_5();
        v334 = v777;
        v335(v777, v332, v20);
        v336 = v779[0];
        OUTLINED_FUNCTION_1_92();
        sub_2169C3618(v298, v334 + v337, v338);
        v339 = (v334 + *(v336 + 24));
        type metadata accessor for MenuBuilder();
        OUTLINED_FUNCTION_0_104();
        sub_2169C3570(v340, v341);
        *v339 = OUTLINED_FUNCTION_89_11();
        v339[1] = v342;
        v343 = *(v336 + 28);
        *(v334 + v343) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
        OUTLINED_FUNCTION_109_6();
        OUTLINED_FUNCTION_64_12();
        sub_2169C3618(v344, v345, v346);
        OUTLINED_FUNCTION_93_9();
        OUTLINED_FUNCTION_63_9();
        sub_2169C3570(v347, v348);
        OUTLINED_FUNCTION_62_8();
        sub_2169C3570(v349, v350);
        OUTLINED_FUNCTION_46_18();
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_107_8();
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v351, v352, v353);
        OUTLINED_FUNCTION_94_9();
        sub_2169C2AD0();
        sub_2169C2BBC();
        OUTLINED_FUNCTION_83_10();
        OUTLINED_FUNCTION_47_19();
        OUTLINED_FUNCTION_49_17();
        v354 = v793;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v355, v356, v357);
        OUTLINED_FUNCTION_122_5();
        sub_2169C2A44();
        sub_2169C2CA8();
        OUTLINED_FUNCTION_22_32();
        OUTLINED_FUNCTION_103_8();
        OUTLINED_FUNCTION_57_13();
        OUTLINED_FUNCTION_81_6();
        OUTLINED_FUNCTION_100_8();
        sub_2169C29B8();
        sub_2169C2F0C();
        OUTLINED_FUNCTION_56_13();
        OUTLINED_FUNCTION_49_17();
        OUTLINED_FUNCTION_25_25(v354);
        OUTLINED_FUNCTION_44_16();
        sub_2169C292C();
        sub_2169C34E4();
        OUTLINED_FUNCTION_19_31();
        v358 = OUTLINED_FUNCTION_45();
        sub_216697664(v358, v359);
        sub_2169C3678(v334, type metadata accessor for CreditArtistContextMenu);
        (*(v235 + 1))(v780, v781[0]);
        goto LABEL_12;
      }

      if (v261 == *MEMORY[0x277D2A428])
      {
        v360 = OUTLINED_FUNCTION_21_30();
        v361(v360);
        OUTLINED_FUNCTION_39_15();
        OUTLINED_FUNCTION_64_0();
        v362();
        v363 = v779[3];
        v364 = v775[3];
        OUTLINED_FUNCTION_86_0();
        v365();
        OUTLINED_FUNCTION_1_92();
        sub_2169C3618(v298, v364 + v366, v367);
        type metadata accessor for MenuBuilder();
        OUTLINED_FUNCTION_0_104();
        sub_2169C3570(v368, v369);
        *v364 = OUTLINED_FUNCTION_89_11();
        v364[1] = v370;
        v371 = *(v363 + 20);
        *(v364 + v371) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
        OUTLINED_FUNCTION_109_6();
        OUTLINED_FUNCTION_124_5(v364, type metadata accessor for CuratorContextMenu, &v801);
        OUTLINED_FUNCTION_94_9();
        OUTLINED_FUNCTION_63_9();
        sub_2169C3570(v372, v373);
        OUTLINED_FUNCTION_62_8();
        sub_2169C3570(v374, v375);
        OUTLINED_FUNCTION_46_18();
        OUTLINED_FUNCTION_108_7();
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v376, v377, v378);
        OUTLINED_FUNCTION_94_9();
        sub_2169C2AD0();
        sub_2169C2BBC();
        OUTLINED_FUNCTION_83_10();
        OUTLINED_FUNCTION_47_19();
        OUTLINED_FUNCTION_49_17();
        v379 = v793;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v380, v381, v382);
        OUTLINED_FUNCTION_122_5();
        sub_2169C2A44();
        sub_2169C2CA8();
        OUTLINED_FUNCTION_22_32();
        OUTLINED_FUNCTION_103_8();
        OUTLINED_FUNCTION_57_13();
        OUTLINED_FUNCTION_81_6();
        OUTLINED_FUNCTION_100_8();
        sub_2169C29B8();
        sub_2169C2F0C();
        OUTLINED_FUNCTION_56_13();
        OUTLINED_FUNCTION_49_17();
        OUTLINED_FUNCTION_25_25(v379);
        OUTLINED_FUNCTION_44_16();
        sub_2169C292C();
        sub_2169C34E4();
        OUTLINED_FUNCTION_19_31();
        v383 = OUTLINED_FUNCTION_45();
        sub_216697664(v383, v384);
        sub_2169C3678(v364, type metadata accessor for CuratorContextMenu);
        (*(v235 + 1))(v778[0], v778[1]);
        goto LABEL_12;
      }

      if (v261 != *MEMORY[0x277D2A388])
      {
        if (v261 == *MEMORY[0x277D2A408])
        {
          v385 = OUTLINED_FUNCTION_21_30();
          v386(v385);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v387();
          v388 = v781[1];
          v389 = v775[0];
          OUTLINED_FUNCTION_48_15();
          v390();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, v389 + v391, v392);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v393, v394);
          *v389 = OUTLINED_FUNCTION_89_11();
          v389[1] = v395;
          v396 = *(v388 + 20);
          *(v389 + v396) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_95_9();
          OUTLINED_FUNCTION_124_5(v389, type metadata accessor for GenreContextMenu, v808);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_68_11();
          sub_2169C3570(v397, v398);
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_42_6();
          sub_217009554();
          OUTLINED_FUNCTION_102_8();
          OUTLINED_FUNCTION_93_9();
          sub_2169C2870();
          OUTLINED_FUNCTION_92_6();
          sub_216697664(v257, &qword_27CABEE98);
          OUTLINED_FUNCTION_25_25(v239);
          swift_storeEnumTagMultiPayload();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v399 = OUTLINED_FUNCTION_45();
          sub_216697664(v399, v400);
          sub_2169C3678(v389, type metadata accessor for GenreContextMenu);
          (*(v235 + 1))(v246, v775[1]);
          goto LABEL_12;
        }

        v239 = v805;
        if (v261 == *MEMORY[0x277D2A3B0])
        {
          v401 = OUTLINED_FUNCTION_21_30();
          v402(v401);
          v403 = v765;
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_64_0();
          v404();
          v405 = v767;
          v406 = v766[0];
          OUTLINED_FUNCTION_42_6();
          v407();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, v406 + v408, v409);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v410, v411);
          v412 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_125_4(v412, v413);
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v414, v415);
          *(v406 + 16) = OUTLINED_FUNCTION_89_11();
          *(v406 + 24) = v416;
          v417 = *(v405 + 24);
          *(v406 + v417) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_50_14();
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v418, v419, v420);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_74_11();
          sub_2169C3570(v421, v422);
          OUTLINED_FUNCTION_4_56();
          sub_2169C3570(v423, v424);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_59_11();
          sub_216681B04(v425, v426, v427);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_87_10();
          sub_217009554();
          OUTLINED_FUNCTION_54_15();
          v428 = v793;
          OUTLINED_FUNCTION_59_11();
          sub_216681B04(v429, v430, v431);
          swift_storeEnumTagMultiPayload();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_81_6();
          OUTLINED_FUNCTION_100_8();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_56_13();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v428);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v432 = OUTLINED_FUNCTION_45();
          sub_216697664(v432, v433);
          OUTLINED_FUNCTION_99_9();
          (*(v403 + 8))(v773[2], v774[0]);
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A3B8])
        {
          v434 = OUTLINED_FUNCTION_21_30();
          v435(v434);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v436();
          OUTLINED_FUNCTION_96_5();
          v437 = v763[5];
          OUTLINED_FUNCTION_48_15();
          v438();
          v439 = v770;
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, v437 + v440, v441);
          v442 = *(v439 + 24);
          *(v437 + v442) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_95_9();
          OUTLINED_FUNCTION_97_7();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v443, v444);
          *v259 = OUTLINED_FUNCTION_89_11();
          *(v259 + 8) = v445;
          OUTLINED_FUNCTION_97_7();
          type metadata accessor for PlaybackPresenter();
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v446, v447);
          v448 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_11_40(v448, v449);
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v450, v451, v452);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_74_11();
          sub_2169C3570(v453, v454);
          OUTLINED_FUNCTION_4_56();
          sub_2169C3570(v455, v456);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_80_8(v297);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_54_15();
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8();
          v457 = OUTLINED_FUNCTION_45();
          sub_216697664(v457, v458);
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_100_8();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v257);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_14_34();
          sub_2169C3678(v437, v459);
          (*(v235 + 1))(v246, v766[1]);
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A440])
        {
          v460 = OUTLINED_FUNCTION_21_30();
          v461(v460);
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v462();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_48_15();
          v463();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, &v235[v464], v465);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v466, v467);
          v468 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_115_6(v468, v469);
          OUTLINED_FUNCTION_76_9();
          v470 = type metadata accessor for PlaybackPresenter();
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v471, v472);
          v473 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_114_6(v473, v474);
          *&v235[v470] = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_50_14();
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v475, v476, v477);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_70_8();
          sub_2169C3570(v478, v479);
          OUTLINED_FUNCTION_69_11();
          sub_2169C3570(v480, v481);
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_80_8(v251);
          OUTLINED_FUNCTION_94_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8();
          v482 = OUTLINED_FUNCTION_45();
          sub_216697664(v482, v483);
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_100_8();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v257);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_99_9();
          OUTLINED_FUNCTION_67();
          v485 = v246;
          v486 = v781;
LABEL_22:
          v484(v485, *(v486 - 32));
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A450])
        {
          v487 = OUTLINED_FUNCTION_21_30();
          v488(v487);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_64_0();
          v489();
          OUTLINED_FUNCTION_96_5();
          v490 = v758[0];
          OUTLINED_FUNCTION_86_0();
          v491();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, v490 + v492, v493);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v494, v495);
          v496 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_115_6(v496, v497);
          v498 = type metadata accessor for PlaybackPresenter();
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v499, v500);
          v501 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_114_6(v501, v502);
          *(v490 + v498) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_109_6();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v503, v504, v505);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_70_8();
          sub_2169C3570(v506, v507);
          OUTLINED_FUNCTION_69_11();
          sub_2169C3570(v508, v509);
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_80_8(v251);
          OUTLINED_FUNCTION_94_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8();
          v510 = OUTLINED_FUNCTION_45();
          sub_216697664(v510, v511);
          OUTLINED_FUNCTION_35_21(v298);
          OUTLINED_FUNCTION_100_8();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v257);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          sub_2169C3678(v490, type metadata accessor for RadioShowContextMenu);
          (*(v235 + 1))(v761, v762);
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A3C0])
        {
          v512 = OUTLINED_FUNCTION_21_30();
          v513(v512);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v514();
          OUTLINED_FUNCTION_96_5();
          v515 = v750;
          OUTLINED_FUNCTION_48_15();
          v516();
          v517 = v753;
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v239, v515 + v518, v519);
          v520 = (v515 + *(v517 + 24));
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v521, v522);
          *v520 = OUTLINED_FUNCTION_89_11();
          v520[1] = v523;
          v524 = *(v517 + 28);
          *(v515 + v524) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v525, v526, v527);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_65_8();
          sub_2169C3570(v528, v529);
          OUTLINED_FUNCTION_3_73();
          sub_2169C3570(v530, v531);
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_35_21(v257);
          OUTLINED_FUNCTION_93_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          v533 = *(v532 - 256);
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_35_21(v533);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          v534 = OUTLINED_FUNCTION_45();
          sub_216697664(v534, v535);
          OUTLINED_FUNCTION_35_21(v251);
          OUTLINED_FUNCTION_101_5();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_25_25(v257);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          sub_2169C3678(v515, type metadata accessor for RecordLabelContextMenu);
          (*(v235 + 1))(v246, v758[1]);
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A3D0])
        {
          v536 = OUTLINED_FUNCTION_21_30();
          v537(v536);
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_64_0();
          v538();
          v539 = v741;
          OUTLINED_FUNCTION_42_6();
          v540();
          v541 = v743;
          sub_216B14DE0(v539, v743);
          if (__swift_getEnumTagSinglePayload(v541, 1, v742) == 1)
          {
            sub_216697664(v541, &qword_27CABEEE8);
            v542 = 1;
            v543 = v806;
            v544 = v745;
          }

          else
          {
            OUTLINED_FUNCTION_64_12();
            sub_2169C35B8(v572, v573, v574);
            v544 = v745;
            v575 = v737;
            sub_2169C3618(v259, v737 + *(v745 + 36), type metadata accessor for SocialProfileDescriptor);
            OUTLINED_FUNCTION_1_92();
            sub_2169C3618(v298, v575 + v576, v577);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            sub_2169C3570(v578, v579);
            *v575 = OUTLINED_FUNCTION_89_11();
            v575[1] = v580;
            type metadata accessor for SocialGraphController();
            sub_2169C3570(&qword_280E39AC8, type metadata accessor for SocialGraphController);
            v575[2] = OUTLINED_FUNCTION_89_11();
            v575[3] = v581;
            type metadata accessor for UserSocialProfileCoordinator();
            sub_2169C3570(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
            v575[4] = OUTLINED_FUNCTION_89_11();
            v575[5] = v582;
            v583 = *(v544 + 28);
            *(v575 + v583) = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
            swift_storeEnumTagMultiPayload();
            v584 = *(v544 + 32);
            v809 = 0;
            sub_21700AEA4();
            sub_2169C3678(v259, type metadata accessor for SocialProfileDescriptor);
            *(v575 + v584) = v810;
            sub_2169C35B8(v575, v748, type metadata accessor for SocialProfileContextMenu);
            v542 = 0;
            v543 = v806;
          }

          v585 = v748;
          __swift_storeEnumTagSinglePayload(v748, v542, 1, v544);
          sub_216681B04(v585, v746, &qword_27CABEEF0);
          OUTLINED_FUNCTION_93_9();
          sub_2169C31CC();
          OUTLINED_FUNCTION_73_8();
          sub_2169C3570(v586, v587);
          OUTLINED_FUNCTION_58_13();
          sub_217009554();
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v588, v589, v590);
          OUTLINED_FUNCTION_94_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v591, v592);
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v593, v594, v595);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v596, v597);
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v598, v599, v600);
          OUTLINED_FUNCTION_101_5();
          sub_2169C29B8();
          sub_2169C2F0C();
          v601 = v798;
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v602, v603);
          sub_216681B04(v601, v543, &qword_27CABEFA8);
          swift_storeEnumTagMultiPayload();
          sub_2169C292C();
          sub_2169C34E4();
          sub_217009554();
          v604 = OUTLINED_FUNCTION_7_4();
          sub_216697664(v604, v605);
          sub_216697664(v585, &qword_27CABEEF0);
          OUTLINED_FUNCTION_67();
          v485 = v751[0];
          v486 = &v764;
          goto LABEL_22;
        }

        if (v261 == *MEMORY[0x277D2A3F8])
        {
          v545 = OUTLINED_FUNCTION_21_30();
          v546(v545);
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v547();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_48_15();
          v548();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v298, &v235[v549], v550);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v551, v552);
          v553 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_115_6(v553, v554);
          OUTLINED_FUNCTION_76_9();
          v555 = type metadata accessor for PlaybackPresenter();
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v556, v557);
          v558 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_114_6(v558, v559);
          *&v235[v555] = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_50_14();
          OUTLINED_FUNCTION_13_31();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v560, v561, v562);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_65_8();
          sub_2169C3570(v563, v564);
          OUTLINED_FUNCTION_3_73();
          sub_2169C3570(v565, v566);
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_35_21(v257);
          OUTLINED_FUNCTION_93_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          v568 = *(v567 - 256);
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_35_21(v568);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          v569 = OUTLINED_FUNCTION_45();
          sub_216697664(v569, v570);
          OUTLINED_FUNCTION_35_21(v251);
          OUTLINED_FUNCTION_101_5();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_25_25(v257);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_15_33();
          sub_2169C3678(v235, v571);
          (*(v298 + 8))(v246, v744);
          goto LABEL_12;
        }

        if (v261 == *MEMORY[0x277D2A430])
        {
          v606 = OUTLINED_FUNCTION_21_30();
          v607(v606);
          OUTLINED_FUNCTION_41_15();
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_64_0();
          v608();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_59_11();
          v609();
          OUTLINED_FUNCTION_1_92();
          OUTLINED_FUNCTION_111_6(v610, v611);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v612, v613);
          v614 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_115_6(v614, v615);
          OUTLINED_FUNCTION_76_9();
          v616 = type metadata accessor for PlaybackPresenter();
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v617, v618);
          v619 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_114_6(v619, v620);
          *&v235[v616] = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_50_14();
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v621, v622, v623);
          OUTLINED_FUNCTION_94_9();
          sub_2169C31CC();
          OUTLINED_FUNCTION_73_8();
          sub_2169C3570(v624, v625);
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_36_19(v298, &v770);
          OUTLINED_FUNCTION_94_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_31_26(v297);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_18_28();
          sub_216697664(v297, &qword_27CABEF18);
          OUTLINED_FUNCTION_30_24();
          OUTLINED_FUNCTION_91_10();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_24_25();
          OUTLINED_FUNCTION_90_8();
          OUTLINED_FUNCTION_25_25(&qword_27CABEF18);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v626 = OUTLINED_FUNCTION_82_1();
          sub_216697664(v626, v627);
          OUTLINED_FUNCTION_99_9();
          v324 = OUTLINED_FUNCTION_104_6();
          v325 = v757;
          goto LABEL_5;
        }

        if (v261 == *MEMORY[0x277D2A458])
        {
          v628 = OUTLINED_FUNCTION_21_30();
          v629(v628);
          OUTLINED_FUNCTION_41_15();
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_64_0();
          v630();
          v631 = v734;
          OUTLINED_FUNCTION_106_2();
          v633 = OUTLINED_FUNCTION_43_20(v632);
          v634(v633);
          OUTLINED_FUNCTION_1_92();
          OUTLINED_FUNCTION_111_6(v635, v636);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          sub_2169C3570(v637, v638);
          v639 = OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_125_4(v639, v640);
          OUTLINED_FUNCTION_2_69();
          sub_2169C3570(v641, v642);
          *(v235 + 2) = OUTLINED_FUNCTION_89_11();
          *(v235 + 3) = v643;
          v644 = *(v631 + 24);
          *&v235[v644] = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
          OUTLINED_FUNCTION_50_14();
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v645, v646, v647);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_72_11();
          sub_2169C3570(v648, v649);
          OUTLINED_FUNCTION_71_11();
          sub_2169C3570(v650, v651);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_34_19();
          OUTLINED_FUNCTION_79_13();
          swift_storeEnumTagMultiPayload();
          sub_2169C330C();
          sub_2169C33F8();
          OUTLINED_FUNCTION_23_27();
          OUTLINED_FUNCTION_54_15();
          OUTLINED_FUNCTION_31_26(v298);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_18_28();
          OUTLINED_FUNCTION_98_9();
          OUTLINED_FUNCTION_30_24();
          OUTLINED_FUNCTION_91_10();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_24_25();
          OUTLINED_FUNCTION_90_8();
          OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v652 = OUTLINED_FUNCTION_82_1();
          sub_216697664(v652, v653);
          OUTLINED_FUNCTION_99_9();
          v324 = OUTLINED_FUNCTION_104_6();
          v325 = v756;
          goto LABEL_5;
        }

        if (v261 != *MEMORY[0x277D2A448])
        {
          if (v261 == *MEMORY[0x277D2A420])
          {
            v654 = OUTLINED_FUNCTION_21_30();
            v655(v654);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v656();
            v657 = v735;
            OUTLINED_FUNCTION_106_2();
            v659 = OUTLINED_FUNCTION_43_20(v658);
            v660(v659);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v661, v662);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            sub_2169C3570(v663, v664);
            *v235 = OUTLINED_FUNCTION_89_11();
            *(v235 + 1) = v665;
            v666 = *(v657 + 20);
            *&v235[v666] = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
            OUTLINED_FUNCTION_50_14();
            v667 = OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_124_5(v667, v668, v751);
            OUTLINED_FUNCTION_94_9();
            OUTLINED_FUNCTION_72_11();
            sub_2169C3570(v669, v670);
            OUTLINED_FUNCTION_71_11();
            sub_2169C3570(v671, v672);
            OUTLINED_FUNCTION_94_0();
            OUTLINED_FUNCTION_108_7();
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v298);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v673 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v673, v674);
            OUTLINED_FUNCTION_99_9();
            v324 = OUTLINED_FUNCTION_104_6();
            v325 = v747;
            goto LABEL_5;
          }

          if (v261 == *MEMORY[0x277D2A3D8])
          {
            v675 = OUTLINED_FUNCTION_21_30();
            v676(v675);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v677();
            v678 = v730;
            OUTLINED_FUNCTION_106_2();
            v680 = OUTLINED_FUNCTION_43_20(v679);
            v681(v680);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v682, v683);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            sub_2169C3570(v684, v685);
            v686 = OUTLINED_FUNCTION_89_11();
            OUTLINED_FUNCTION_125_4(v686, v687);
            OUTLINED_FUNCTION_2_69();
            sub_2169C3570(v688, v689);
            *(v235 + 2) = OUTLINED_FUNCTION_89_11();
            *(v235 + 3) = v690;
            v691 = *(v678 + 24);
            *&v235[v691] = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
            OUTLINED_FUNCTION_50_14();
            OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_64_12();
            sub_2169C3618(v692, v693, v694);
            OUTLINED_FUNCTION_93_9();
            OUTLINED_FUNCTION_67_9();
            sub_2169C3570(v695, v696);
            OUTLINED_FUNCTION_66_11();
            sub_2169C3570(v697, v698);
            OUTLINED_FUNCTION_94_0();
            OUTLINED_FUNCTION_7_4();
            OUTLINED_FUNCTION_107_8();
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v298);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v699 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v699, v700);
            OUTLINED_FUNCTION_99_9();
            v324 = OUTLINED_FUNCTION_104_6();
            v325 = &v746;
            goto LABEL_5;
          }

          if (v261 == *MEMORY[0x277D2A3E0])
          {
            v701 = OUTLINED_FUNCTION_21_30();
            v702(v701);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v703();
            v704 = v731;
            OUTLINED_FUNCTION_106_2();
            v706 = OUTLINED_FUNCTION_43_20(v705);
            v707(v706);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v708, v709);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            sub_2169C3570(v710, v711);
            v712 = OUTLINED_FUNCTION_89_11();
            OUTLINED_FUNCTION_125_4(v712, v713);
            OUTLINED_FUNCTION_2_69();
            sub_2169C3570(v714, v715);
            *(v235 + 2) = OUTLINED_FUNCTION_89_11();
            *(v235 + 3) = v716;
            v717 = *(v704 + 24);
            *&v235[v717] = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
            OUTLINED_FUNCTION_50_14();
            v718 = OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_124_5(v718, v719, &v742);
            OUTLINED_FUNCTION_94_9();
            OUTLINED_FUNCTION_67_9();
            sub_2169C3570(v720, v721);
            OUTLINED_FUNCTION_66_11();
            sub_2169C3570(v722, v723);
            OUTLINED_FUNCTION_94_0();
            OUTLINED_FUNCTION_108_7();
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v298);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v724 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v724, v725);
            OUTLINED_FUNCTION_99_9();
            v324 = OUTLINED_FUNCTION_104_6();
            v325 = &v739;
            goto LABEL_5;
          }

          if (v261 != *MEMORY[0x277D2A410])
          {
            OUTLINED_FUNCTION_94_9();
            sub_2169C2870();
            OUTLINED_FUNCTION_46_18();
            sub_217009554();
            sub_216681B04(v298, v806, &qword_27CABEEA0);
            swift_storeEnumTagMultiPayload();
            sub_2169C292C();
            sub_2169C34E4();
            sub_217009554();
            sub_216697664(v298, &qword_27CABEEA0);
            (*(v259 + 8))(v20, v257);
            goto LABEL_12;
          }
        }
      }
    }

    (*(v259 + 8))(v20, v257);
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_68_11();
    sub_2169C3570(v326, v327);
    OUTLINED_FUNCTION_58_13();
    sub_217009554();
    OUTLINED_FUNCTION_102_8();
    OUTLINED_FUNCTION_93_9();
    sub_2169C2870();
    OUTLINED_FUNCTION_92_6();
    sub_216697664(v257, &qword_27CABEE98);
    OUTLINED_FUNCTION_25_25(v239);
    swift_storeEnumTagMultiPayload();
    sub_2169C292C();
    sub_2169C34E4();
    OUTLINED_FUNCTION_19_31();
    v328 = OUTLINED_FUNCTION_45();
    sub_216697664(v328, v329);
    goto LABEL_12;
  }

  v262 = OUTLINED_FUNCTION_21_30();
  v263(v262);
  v264 = *(v253 + 32);
  v726 = v256;
  v265 = v20;
  v266 = v251;
  v727 = v251;
  v264(v256, v265, v251);
  v267 = v253;
  (*(v253 + 16))(v250, v256, v266);
  OUTLINED_FUNCTION_1_92();
  sub_2169C3618(v805, v250 + v268, v269);
  v270 = (v250 + v246[6]);
  type metadata accessor for MenuBuilder();
  OUTLINED_FUNCTION_0_104();
  sub_2169C3570(v271, v272);
  *v270 = OUTLINED_FUNCTION_89_11();
  v270[1] = v273;
  v274 = (v250 + v246[7]);
  type metadata accessor for PlaybackPresenter();
  OUTLINED_FUNCTION_2_69();
  sub_2169C3570(v275, v276);
  *v274 = OUTLINED_FUNCTION_89_11();
  v274[1] = v277;
  v278 = v246[8];
  *(v250 + v278) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  sub_2169C3618(v250, v235, type metadata accessor for AlbumContextMenu);
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_61_10();
  sub_2169C3570(v279, v280);
  OUTLINED_FUNCTION_60_10();
  sub_2169C3570(v281, v282);
  sub_217009554();
  OUTLINED_FUNCTION_36_19(v239, &a13);
  OUTLINED_FUNCTION_93_9();
  sub_2169C2AD0();
  sub_2169C2BBC();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_47_19();
  v283 = OUTLINED_FUNCTION_45();
  sub_216697664(v283, v284);
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v285, v286, v287);
  OUTLINED_FUNCTION_122_5();
  sub_2169C2A44();
  sub_2169C2CA8();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_103_8();
  OUTLINED_FUNCTION_49_17();
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v288, v289, v290);
  OUTLINED_FUNCTION_100_8();
  sub_2169C29B8();
  sub_2169C2F0C();
  sub_217009554();
  OUTLINED_FUNCTION_53_14();
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v291, v292, v293);
  swift_storeEnumTagMultiPayload();
  sub_2169C292C();
  sub_2169C34E4();
  sub_217009554();
  v294 = OUTLINED_FUNCTION_45();
  sub_216697664(v294, v295);
  sub_2169C3678(v250, type metadata accessor for AlbumContextMenu);
  (*(v267 + 8))(v726, v727);
LABEL_12:
  OUTLINED_FUNCTION_26();
}