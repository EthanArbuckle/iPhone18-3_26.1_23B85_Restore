uint64_t sub_1AB220D74(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  if (!v7)
  {
    return a1;
  }

  v58 = a3;
  v9 = 0;
  v10 = a2 + 32;
  do
  {
    v11 = v10 + 48 * v9;
    for (i = v9; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      sub_1AB054B5C(v11, v56);
      if (v57 == 4)
      {
        break;
      }

      sub_1AB0508F0(v56);
      v11 += 48;
      if (v9 == v7)
      {
        return a1;
      }
    }

    v53 = v10;
    v54 = a1;
    v13 = v5;
    v14 = a4;
    v16 = v56[0];
    v15 = v56[1];

    v17 = *(v14 + 32);
    v18 = objc_opt_self();

    v19 = [v18 valueWithNewObjectInContext_];
    v20 = v58;
    v55 = v16;
    if (!v19)
    {
      v35 = sub_1AB014DB4(v16, v15);
      v37 = v36;
      v38 = v15;

      a4 = v14;
      v5 = v13;
      a1 = v54;
      if (v37)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *v20;
        v56[0] = *v20;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AB1D8CF4();
          v40 = v56[0];
        }

        sub_1AB19037C(v35, v40);
        *v20 = v40;
      }

      goto LABEL_26;
    }

    v21 = v19;
    v52 = v14;
    v5 = v13;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v20;
    v24 = v22;
    v56[0] = *v23;
    v25 = v56[0];
    v26 = sub_1AB014DB4(v16, v15);
    v28 = *(v25 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_34;
    }

    v32 = v27;
    if (*(v25 + 24) < v31)
    {
      sub_1AB1D3614(v31, v24);
      v33 = v55;
      v26 = sub_1AB014DB4(v55, v15);
      a1 = v54;
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_36;
      }

LABEL_20:
      v41 = v56[0];
      if (v32)
      {
        goto LABEL_21;
      }

LABEL_23:
      v41[(v26 >> 6) + 8] |= 1 << v26;
      v45 = (v41[6] + 16 * v26);
      *v45 = v33;
      v45[1] = v15;
      *(v41[7] + 8 * v26) = v21;
      v46 = v41[2];
      v30 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v30)
      {
        v38 = v15;
        v41[2] = v47;
        goto LABEL_25;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_1AB461FC4();
      __break(1u);
      return result;
    }

    a1 = v54;
    if (v24)
    {
      v33 = v55;
      goto LABEL_20;
    }

    v44 = v26;
    sub_1AB1D8CF4();
    v26 = v44;
    v33 = v55;
    v41 = v56[0];
    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v42 = v41[7];
    v43 = *(v42 + 8 * v26);
    *(v42 + 8 * v26) = v21;
    v38 = v15;

LABEL_25:
    *v58 = v41;
    a4 = v52;
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1AB020904(0, *(a1 + 2) + 1, 1, a1);
    }

    v10 = v53;
    v49 = *(a1 + 2);
    v48 = *(a1 + 3);
    if (v49 >= v48 >> 1)
    {
      a1 = sub_1AB020904((v48 > 1), v49 + 1, 1, a1);
    }

    *(a1 + 2) = v49 + 1;
    v50 = &a1[16 * v49];
    *(v50 + 4) = v55;
    *(v50 + 5) = v38;
  }

  while (v9 != v7);
  return a1;
}

uint64_t sub_1AB2210E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v49 = a1 + 32;
  while (2)
  {
    v4 = v49 + 48 * v2;
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      sub_1AB054B5C(v4, &v62);
      if (v65 == 1 || v65 == 3)
      {
        break;
      }

      if (v65 == 2)
      {
        v17 = v62;
        v18 = v63;
        v19 = swift_allocObject();
        *(v19 + 16) = v64;
        *(&v60 + 1) = &type metadata for JSLegacyCalculatedValue;
        v61 = &off_1F2002F80;
        *&v59 = sub_1AB223FF8;
        *(&v59 + 1) = v19;
        sub_1AB0149B0(&v59, &v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v3;
        v21 = __swift_mutable_project_boxed_opaque_existential_1(&v56, v58);
        v48[1] = v48;
        v22 = MEMORY[0x1EEE9AC00](v21);
        v24 = (v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v25 + 16))(v24, v22);
        v54 = &type metadata for JSLegacyCalculatedValue;
        v55 = &off_1F2002F80;
        v53 = *v24;
        v27 = sub_1AB014DB4(v17, v18);
        v28 = v3[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (!__OFADD__(v28, v29))
        {
          v31 = v26;
          if (v3[3] < v30)
          {
            sub_1AB1D3334(v30, isUniquelyReferenced_nonNull_native);
            v32 = sub_1AB014DB4(v17, v18);
            if ((v31 & 1) != (v33 & 1))
            {
LABEL_36:
              result = sub_1AB461FC4();
              __break(1u);
              return result;
            }

            v27 = v32;
            v3 = v66;
            if ((v31 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_22:
            v34 = v3[7] + 40 * v27;
            __swift_destroy_boxed_opaque_existential_1Tm(v34);
            sub_1AB0149B0(&v53, v34);
LABEL_26:
            __swift_destroy_boxed_opaque_existential_1Tm(&v56);

            goto LABEL_27;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v3 = v66;
            if (v26)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1AB1D8B4C();
            v3 = v66;
            if (v31)
            {
              goto LABEL_22;
            }
          }

LABEL_24:
          v35 = __swift_mutable_project_boxed_opaque_existential_1(&v53, v54);
          v36 = MEMORY[0x1EEE9AC00](v35);
          v38 = (v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v39 + 16))(v38, v36);
          v51 = &type metadata for JSLegacyCalculatedValue;
          v52 = &off_1F2002F80;
          v50 = *v38;
          v3[(v27 >> 6) + 8] |= 1 << v27;
          v40 = (v3[6] + 16 * v27);
          *v40 = v17;
          v40[1] = v18;
          sub_1AB0149B0(&v50, v3[7] + 40 * v27);
          v41 = v3[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (!v42)
          {
            v3[2] = v43;

            __swift_destroy_boxed_opaque_existential_1Tm(&v53);
            goto LABEL_26;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      sub_1AB0508F0(&v62);
      v4 += 48;
      if (v2 == v1)
      {
        return v3;
      }
    }

    v7 = v63;
    v8 = v62;
    *&v53 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A68);
    if (!swift_dynamicCast())
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_1AB014AC0(&v59, &qword_1EB438160);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1AB4615D4();

      v56 = 39;
      v57 = 0xE100000000000000;
      MEMORY[0x1AC59BA20](v8, v7);

      MEMORY[0x1AC59BA20](0xD00000000000002BLL, 0x80000001AB504910);
      v45 = v56;
      v46 = v57;
      sub_1AB0C3EF0();
      swift_allocError();
      LOBYTE(v56) = 1;
      LOBYTE(v50) = 1;
      *v47 = v45;
      *(v47 + 8) = v46;
      *(v47 + 16) = 0;
      *(v47 + 24) = 1;
      *(v47 + 32) = 0;
      *(v47 + 40) = 1;
      *(v47 + 48) = 0u;
      *(v47 + 64) = 0u;
      *(v47 + 80) = 0u;
      *(v47 + 96) = 0;
      swift_willThrow();

      return v3;
    }

    sub_1AB0149B0(&v59, &v62);
    sub_1AB01494C(&v62, &v59);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    v10 = *(&v60 + 1);
    v11 = v61;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
    v13 = MEMORY[0x1EEE9AC00](v12);
    v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15, v13);
    sub_1AB220408(v15, v8, v7, v9, &v56, v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);

    v3 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
LABEL_27:
    if (v2 != v1)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_1AB221758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1AB054B5C(v2, &v13);
      *&v12[9] = *&v14[9];
      v11 = v13;
      *v12 = *v14;
      if (v14[24] == 5 || v14[24] == 2)
      {
        break;
      }

      if (v14[24] == 1)
      {
        v5 = *(&v11 + 1);
        v4 = v11;
        swift_unknownObjectRelease();
LABEL_10:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1AB020904(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_1AB020904((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v8 = &v3[16 * v7];
        *(v8 + 4) = v4;
        *(v8 + 5) = v5;
        goto LABEL_4;
      }

      sub_1AB0508F0(&v11);
LABEL_4:
      v2 += 48;
      if (!--v1)
      {
        goto LABEL_16;
      }
    }

    v5 = *(&v11 + 1);
    v4 = v11;

    goto LABEL_10;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v9 = sub_1AB1BF140(v3);

  return v9;
}

uint64_t sub_1AB2218A0()
{

  v1 = sub_1AB1BF140(v0);

  v3 = sub_1AB1BF140(v2);

  v4 = sub_1AB21E4A4(v3, v1);

  if (!*(v4 + 16))
  {
LABEL_7:
  }

  if (qword_1EB432418 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v31 = v41;
  v32 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1AB4D4720;
  v5 = MEMORY[0x1E69E7CC0];
  v38 = sub_1AB0168A8(0, 405, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB504630;
  v6._countAndFlagsBits = 0xD000000000000092;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = sub_1AB1AFEFC(*(v4 + 16), 0);
    v9 = sub_1AB1AF80C(&v34, v8 + 4, v7, v4);

    sub_1AB0309A4();
    if (v9 != v7)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v5;
  }

  *&v34 = v8;
  sub_1AB21DA6C(&v34);

  v11 = v34;
  v12 = *(v34 + 16);
  if (v12)
  {
    v37[0] = v5;
    sub_1AB03BD38(0, v12, 0);
    v13 = v37[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      *&v34 = 39;
      *(&v34 + 1) = 0xE100000000000000;

      MEMORY[0x1AC59BA20](v15, v16);
      MEMORY[0x1AC59BA20](39, 0xE100000000000000);

      v17 = v34;
      v37[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
        v13 = v37[0];
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 16 * v19 + 32) = v17;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v34 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  v37[3] = MEMORY[0x1E69E6158];
  v37[0] = v20;
  v37[1] = v22;
  sub_1AB014A58(v37, v33, &unk_1EB437E60);
  v34 = 0u;
  v35 = 0u;
  sub_1AB0169C4(v33, &v34);
  LOBYTE(v36) = 0;
  v23 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = v34;
  v28 = v35;
  v26[64] = v36;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v38 = v23;
  sub_1AB014AC0(v37, &unk_1EB437E60);
  v29._countAndFlagsBits = 0xD000000000000102;
  v29._object = 0x80000001AB5046D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v30 + 32) = v38;
  Logger.warning(_:)(v30, v32, v31);

  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_1AB221D48(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;

  v8 = MEMORY[0x1E69E7CC0];
  v137 = sub_1AB220D74(MEMORY[0x1E69E7CC0], a1, a3, v4);
  v134 = 0;
  v9 = v4;

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      sub_1AB054B5C(v11, v140);
      sub_1AB054B5C(v140, v138);
      if (v139 == 5)
      {
        v12 = v138[0];
        v13 = v138[1];

        v14 = [objc_opt_self() valueWithNewObjectInContext_];
        if (!v14)
        {
          goto LABEL_98;
        }

        v15 = v14;
        v16 = sub_1AB460514();
        [a2 setValue:v15 forProperty:v16];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB020904(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1AB020904((v17 > 1), v18 + 1, 1, v8);
        }

        sub_1AB0508F0(v140);
        *(v8 + 2) = v18 + 1;
        v19 = &v8[16 * v18];
        *(v19 + 4) = v12;
        *(v19 + 5) = v13;
      }

      else
      {
        sub_1AB0508F0(v140);
        sub_1AB0508F0(v138);
      }

      v11 += 48;
      --v10;
    }

    while (v10);
  }

  v132 = v9;
  v20 = *(v9 + 32);
  v140[0] = v8;

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  v22 = sub_1AB461F94();
  v23 = objc_opt_self();
  v24 = [v23 valueWithObject:v22 inContext:v21];
  swift_unknownObjectRelease();
  if (!v24)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = v24;
  v26 = sub_1AB460514();
  [a2 setValue:v25 forProperty:v26];

  v140[0] = v137;

  v131 = v23;
  v27 = [v23 valueWithObject:sub_1AB461F94() inContext:v21];
  swift_unknownObjectRelease();

  sub_1AB1CE244(v27, 0xD000000000000014, 0x80000001AB5045D0);
  v28 = *(v137 + 16);
  if (!v28 && !*(v8 + 2))
  {
  }

  v29 = [v21 globalObject];
  if (!v29)
  {
    goto LABEL_101;
  }

  v30 = v29;
  v31 = sub_1AB460514();
  v32 = [v30 valueForProperty_];

  if (!v32)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v33 = [v32 toBool];
  if (v33)
  {
    goto LABEL_87;
  }

  v127 = v21;
  v136 = a2;
  if (qword_1EB435CE0 != -1)
  {
    goto LABEL_95;
  }

LABEL_19:
  v34 = qword_1EB46C2E8;
  os_unfair_lock_lock((qword_1EB46C2E8 + 56));
  sub_1AB21BB14((v34 + 16));
  v133 = v134;
  os_unfair_lock_unlock((v34 + 56));

  v36 = sub_1AB1BF140(v35);

  v38 = sub_1AB1BF140(v37);

  v39 = sub_1AB211B0C(v38, v36);
  v40 = 0;
  v41 = v39 + 56;
  v128 = v39;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 56);
  v45 = (v42 + 63) >> 6;
  v46 = MEMORY[0x1E69E7CC8];
  v134 = v28;
  while (1)
  {
    while (1)
    {
      if (v44)
      {
        v47 = v132;
        goto LABEL_29;
      }

      v47 = v132;
      do
      {
        v48 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
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
          swift_once();
          goto LABEL_19;
        }

        if (v48 >= v45)
        {

          v85 = a3;
          if (v28)
          {
            v86 = 0;
            v87 = (v137 + 40);
            while (1)
            {
              if (v86 >= *(v137 + 16))
              {
                goto LABEL_91;
              }

              v92 = *(v87 - 1);
              v93 = *v87;
              v94 = v46[2];

              if (v94)
              {
                v95 = sub_1AB014DB4(v92, v93);
                if (v96)
                {
                  break;
                }
              }

              v106 = sub_1AB014DB4(v92, v93);
              v108 = v107;

              if ((v108 & 1) == 0)
              {
                goto LABEL_60;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = *v85;
              v140[0] = *v85;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1AB1D8CF4();
                v89 = v140[0];
              }

              sub_1AB19037C(v106, v89);
LABEL_59:
              *v85 = v89;
LABEL_60:
              ++v86;
              v87 += 2;
              if (v28 == v86)
              {
                goto LABEL_78;
              }
            }

            v97 = *(v46[7] + 8 * v95);
            v28 = swift_isUniquelyReferenced_nonNull_native();
            v140[0] = *v85;
            v98 = v140[0];
            v99 = sub_1AB014DB4(v92, v93);
            v101 = *(v98 + 16);
            v102 = (v100 & 1) == 0;
            v74 = __OFADD__(v101, v102);
            v103 = v101 + v102;
            if (v74)
            {
              goto LABEL_93;
            }

            v104 = v100;
            if (*(v98 + 24) >= v103)
            {
              if ((v28 & 1) == 0)
              {
                v113 = v99;
                sub_1AB1D8CF4();
                v99 = v113;
                v28 = v134;
                if ((v104 & 1) == 0)
                {
                  goto LABEL_74;
                }

                goto LABEL_57;
              }
            }

            else
            {
              sub_1AB1D3614(v103, v28);
              v99 = sub_1AB014DB4(v92, v93);
              if ((v104 & 1) != (v105 & 1))
              {
                goto LABEL_103;
              }
            }

            v28 = v134;
            if ((v104 & 1) == 0)
            {
LABEL_74:
              v89 = v140[0];
              *(v140[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
              v110 = (v89[6] + 16 * v99);
              *v110 = v92;
              v110[1] = v93;
              *(v89[7] + 8 * v99) = v97;
              v111 = v89[2];
              v74 = __OFADD__(v111, 1);
              v112 = v111 + 1;
              if (v74)
              {
                goto LABEL_94;
              }

              v89[2] = v112;
              goto LABEL_58;
            }

LABEL_57:
            v88 = v99;

            v89 = v140[0];
            v90 = *(v140[0] + 56);
            v91 = *(v90 + 8 * v88);
            *(v90 + 8 * v88) = v97;

LABEL_58:
            v85 = a3;
            goto LABEL_59;
          }

LABEL_78:
          v114 = *(v8 + 2);
          if (!v114)
          {
LABEL_86:

LABEL_87:
            sub_1AB2218A0();
          }

          v115 = 0;
          v116 = (v8 + 40);
          v28 = v127;
          while (v115 < *(v8 + 2))
          {
            v121 = *(v116 - 1);
            v120 = *v116;
            v122 = v46[2];

            if (v122 && (v123 = sub_1AB014DB4(v121, v120), (v124 & 1) != 0))
            {
              v117 = *(v46[7] + 8 * v123);
            }

            else
            {
              v117 = [v131 valueWithNewObjectInContext_];
              if (!v117)
              {
                goto LABEL_99;
              }
            }

            ++v115;
            v118 = v117;
            v119 = sub_1AB460514();

            [v136 setValue:v118 forProperty:v119];

            v116 += 2;
            if (v114 == v115)
            {
              goto LABEL_86;
            }
          }

          goto LABEL_92;
        }

        v44 = *(v41 + 8 * v48);
        ++v40;
      }

      while (!v44);
      v40 = v48;
LABEL_29:
      v49 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v50 = (*(v128 + 48) + ((v40 << 10) | (16 * v49)));
      v51 = *v50;
      v52 = v50[1];
      v53 = *(v47 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_37:

      sub_1AB428538("JetEngine/JSLazyProvider.swift", 30, 2, 62, v51, v52);

      v63 = v133;
LABEL_38:
      v64 = [v131 valueWithNewObjectInContext_];
      v133 = v63;
      if (v64)
      {
        v126 = v64;
        goto LABEL_44;
      }

      v65 = sub_1AB014DB4(v51, v52);
      v67 = v66;

      v28 = v134;
      if (v67)
      {
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v46;
        if (!v68)
        {
          sub_1AB1D8CF4();
          v46 = v140[0];
        }

        sub_1AB19037C(v65, v46);
      }
    }

    v55 = Strong;
    v129 = v51;
    v56 = *(v53 + OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies);
    v57 = *(v56 + 16);

    if (!v57)
    {

      v51 = v129;
      goto LABEL_37;
    }

    v51 = v129;
    v58 = sub_1AB014DB4(v129, v52);
    if ((v59 & 1) == 0)
    {

      goto LABEL_37;
    }

    v60 = *(*(v56 + 56) + 16 * v58);

    v60(v140);
    v61 = v142;
    v126 = v141;
    __swift_project_boxed_opaque_existential_1Tm(v140, v141);
    v62 = (*(v61 + 16))(v55, v126, v61);
    if (v133)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v140);

      sub_1AB428538("JetEngine/JSLazyProvider.swift", 30, 2, 68, v129, v52);

      v51 = v129;

      v63 = 0;
      goto LABEL_38;
    }

    v133 = 0;
    v126 = v62;

    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v51 = v129;
LABEL_44:
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v46;
    v130 = v51;
    v70 = sub_1AB014DB4(v51, v52);
    v72 = v46[2];
    v73 = (v71 & 1) == 0;
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (v74)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v76 = v71;
    if (v46[3] < v75)
    {
      break;
    }

    if (v69)
    {
LABEL_49:
      if (v76)
      {
        goto LABEL_50;
      }

LABEL_53:
      v46 = v140[0];
      *(v140[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v82 = (v46[6] + 16 * v70);
      *v82 = v130;
      v82[1] = v52;
      *(v46[7] + 8 * v70) = v126;
      v83 = v46[2];
      v74 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v74)
      {
        goto LABEL_97;
      }

      v46[2] = v84;
      v28 = v134;
    }

    else
    {
      v81 = v70;
      sub_1AB1D8CF4();
      v70 = v81;
      if ((v76 & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_50:
      v78 = v70;

      v46 = v140[0];
      v79 = *(v140[0] + 56);
      v80 = *(v79 + 8 * v78);
      *(v79 + 8 * v78) = v126;

      v28 = v134;
    }
  }

  sub_1AB1D3614(v75, v69);
  v70 = sub_1AB014DB4(v130, v52);
  if ((v76 & 1) == (v77 & 1))
  {
    goto LABEL_49;
  }

LABEL_103:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void sub_1AB2228A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = *v5;
  v5[25] = 0;
  v5[26] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v5[5] = MEMORY[0x1E69E7CC0];
  v40 = a3;
  sub_1AB014A58(a3, (v5 + 6), &qword_1EB4389B0);
  type metadata accessor for RunLoopWorkerThread();
  v9 = swift_allocObject();
  v9[5] = 0;
  v9[6] = 0;
  v9[2] = 0xD00000000000001BLL;
  v9[3] = 0x80000001AB504040;
  v9[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v9[7] = v8;
  v5[3] = v9;

  sub_1AB048280(a2, 0);

  v10 = v5[3];
  v11 = swift_allocObject();
  v11[2] = 0x747865746E6F63;
  v11[3] = 0xE700000000000000;
  v11[4] = a4;
  v12 = *(v10 + 32);
  v13 = a4;

  [v12 lock];
  v14 = CFRunLoopGetCurrent();
  v15 = *(v10 + 40);
  if (v14)
  {
    v16 = v14;
    if (v15)
    {
      type metadata accessor for CFRunLoop(0);
      sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
      v17 = v15;
      v18 = sub_1AB45FC14();

      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      [v12 unlock];
      sub_1AB04C638(v13, v38);

      v19 = v38[0];
      goto LABEL_10;
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

LABEL_8:
  [v12 unlock];
  v20 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389B8);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = sub_1AB04C634;
  v22[4] = v11;
  v22[5] = v20;

  v23 = v20;
  sub_1AB0484A4(sub_1AB04C5B8, v22);

  sub_1AB461254();
  os_unfair_lock_lock((v21 + 24));
  v24 = *(v21 + 16);
  v19 = v24;
  os_unfair_lock_unlock((v21 + 24));
  if (!v24)
  {

    __break(1u);
    return;
  }

LABEL_10:
  v5[4] = v19;
  v25 = type metadata accessor for NoOpIntentCache();
  v26 = swift_allocObject();
  v5[24] = v25;
  v5[21] = v26;
  v27 = sub_1AB050708(a1);
  v28 = type metadata accessor for JSLazyProvider();
  v29 = objc_allocWithZone(v28);
  swift_unknownObjectWeakInit();
  *&v29[OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies] = v27;
  swift_unknownObjectWeakAssign();
  v39.receiver = v29;
  v39.super_class = v28;
  v5[2] = objc_msgSendSuper2(&v39, sel_init);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v30 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v30 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_19:
    v5[20] = 0;
    goto LABEL_21;
  }

  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998)
  {
    goto LABEL_19;
  }

  type metadata accessor for TracingSupport();
  v32 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C8);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v32 + 16) = v33;
  v5[20] = v32;
  v34 = v5[4];
  sub_1AB050AB8(a1, v38);
  sub_1AB049B10(v34, v38);
  sub_1AB014AC0(v38, &qword_1EB4389D0);
LABEL_21:
  sub_1AB051D70(a1);
  sub_1AB014AC0(v40, &qword_1EB4389B0);
  if (v37)
  {
  }
}

JSValue sub_1AB222E2C@<X0>(Swift::Bool a1@<W0>, JSValue *a2@<X8>)
{
  v5 = *(type metadata accessor for JSSource() - 8);
  v9.value.super.isa = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9.is_nil = a1;
  result.super.isa = JSSource.evaluate(against:in:)(v9, v6).super.isa;
  if (!v8)
  {
    a2->super.isa = result.super.isa;
  }

  return result;
}

uint64_t sub_1AB222F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB21AE44(a1, v6, v7, v8, v4, v5);
}

unint64_t sub_1AB22302C()
{
  result = qword_1EB438A00;
  if (!qword_1EB438A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438A00);
  }

  return result;
}

uint64_t dispatch thunk of JSStack.__allocating_init(with:)(uint64_t a1)
{
  v6 = (*(v1 + 144) + **(v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB2231A8;

  return v6(a1);
}

uint64_t sub_1AB2231A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine19SentryConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
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
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1AB223388(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_1AB2233D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB223460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB22349C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB2234E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AB223544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AB223598(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroy_183Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

BOOL sub_1AB2237FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a2;
  v19[2] = a3;
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1AB45FFD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB45FF84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB435468 != -1)
  {
    swift_once();
  }

  v11 = sub_1AB45FFC4();
  __swift_project_value_buffer(v11, qword_1EB435470);
  v12 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v13 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v12, v13, v16, "jsStackDeserialization", v14, v15, 2u);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (qword_1EB435548 != -1)
  {
    swift_once();
  }

  v22 = 0;
  v23[0] = 0;
  v20 = 0;
  v21 = 0;
  v17 = sub_1AB460514();
  JESignpostArgumentsFromString(v17, v23, &v22, &v21, &v20);

  return JESignpostEmitTrace();
}

uint64_t objectdestroy_159Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroy_167Tm()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroy_173Tm()
{
  v1 = *(type metadata accessor for MonotonicTimeReference() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);

  if ((*(v0 + 32) & 1) == 0)
  {
    MEMORY[0x1AC59F150](v0 + 24);
  }

  v4 = (v2 + 33) & ~v2;
  v5 = sub_1AB45F9B4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((((((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_1AB223E4C(uint64_t a1)
{
  v3 = *(type metadata accessor for MonotonicTimeReference() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1AB21894C(a1, *(v1 + 16), v1 + 24, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_176Tm()
{

  if ((*(v0 + 32) & 1) == 0)
  {
    MEMORY[0x1AC59F150](v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_308Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

unint64_t sub_1AB224078()
{
  result = sub_1AB224104();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PageIntentInstrumentation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AB224104()
{
  result = qword_1EB433B28;
  if (!qword_1EB433B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB433B28);
  }

  return result;
}

uint64_t sub_1AB2242C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB224F5C();
  sub_1AB462274();
  v8[15] = 0;
  sub_1AB461BB4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1AB461B44();
  v8[13] = 2;
  sub_1AB461B44();
  v8[12] = 3;
  sub_1AB461B54();
  v8[11] = 4;
  sub_1AB461B54();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB2244B0()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB2245A0()
{
  sub_1AB460684();
}

uint64_t sub_1AB22467C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB224768@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB225130();
  *a1 = result;
  return result;
}

void sub_1AB224798(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE90000000000006BLL;
  v6 = 0x6E696C5F706C6568;
  v7 = 0xE700000000000000;
  v8 = 0x64656C646E6168;
  if (v2 != 3)
  {
    v8 = 0x69746568746E7973;
    v7 = 0xE900000000000063;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7470697263736564;
    v3 = 0xEB000000006E6F69;
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

uint64_t sub_1AB224844()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6E696C5F706C6568;
  v4 = 0x64656C646E6168;
  if (v1 != 3)
  {
    v4 = 0x69746568746E7973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470697263736564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB2248EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB225130();
  *a1 = result;
  return result;
}

uint64_t sub_1AB224914(uint64_t a1)
{
  v2 = sub_1AB224F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB224950(uint64_t a1)
{
  v2 = sub_1AB224F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AB22498C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB224C38(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AB2249F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AB224A50(v5, v7) & 1;
}

uint64_t sub_1AB224A50(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }

LABEL_27:
    v13 = *(a1 + 49);
    v14 = *(a2 + 49);
    if (v13 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v11 != 2 && ((v11 ^ v10) & 1) == 0)
  {
    goto LABEL_27;
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AB224B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB224BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB224C38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB224F5C();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = sub_1AB461A84();
  v26 = v10;
  LOBYTE(v31[0]) = 1;
  v11 = sub_1AB461A14();
  v25 = v12;
  v23 = v11;
  LOBYTE(v31[0]) = 2;
  v22 = sub_1AB461A14();
  v24 = v13;
  LOBYTE(v31[0]) = 3;
  v34 = sub_1AB461A24();
  v35 = 4;
  v14 = sub_1AB461A24();
  (*(v6 + 8))(v8, v5);
  v16 = v25;
  v15 = v26;
  *&v27 = v9;
  *(&v27 + 1) = v26;
  v17 = v23;
  *&v28 = v23;
  *(&v28 + 1) = v25;
  v18 = v24;
  *&v29 = v22;
  *(&v29 + 1) = v24;
  LOBYTE(v30) = v34;
  HIBYTE(v30) = v14;
  sub_1AB224FB0(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31[0] = v9;
  v31[1] = v15;
  v31[2] = v17;
  v31[3] = v16;
  v31[4] = v22;
  v31[5] = v18;
  v32 = v34;
  v33 = v14;
  result = sub_1AB224FE8(v31);
  v20 = v28;
  *a2 = v27;
  *(a2 + 16) = v20;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_1AB224F5C()
{
  result = qword_1EB4325B8;
  if (!qword_1EB4325B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325B8);
  }

  return result;
}

unint64_t sub_1AB22502C()
{
  result = qword_1EB438A98;
  if (!qword_1EB438A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438A98);
  }

  return result;
}

unint64_t sub_1AB225084()
{
  result = qword_1EB4325A8;
  if (!qword_1EB4325A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325A8);
  }

  return result;
}

unint64_t sub_1AB2250DC()
{
  result = qword_1EB4325B0;
  if (!qword_1EB4325B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325B0);
  }

  return result;
}

uint64_t sub_1AB225130()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AB22517C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AD0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB225A74;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_39;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A7C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_42;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1AB22532C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AC0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB225A5C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_27_0;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A64;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_30;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t AppleServicesFetcher.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 session];
  a2[3] = &type metadata for URLSessionPreconnecter;
  a2[4] = &protocol witness table for URLSessionPreconnecter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C300);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a2 = v4;
  a2[1] = result;
  a2[5] = a1;
  return result;
}

uint64_t AppleServicesFetcher.fetch(contentsOf:)(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB225584, 0, 0);
}

uint64_t sub_1AB225584()
{
  v1 = [*(v0[22] + 40) dataTaskPromiseWithRequest_];
  v0[23] = v1;
  v0[24] = sub_1AB09CC94(v1);

  return MEMORY[0x1EEE6DFA0](sub_1AB225610, 0, 0);
}

uint64_t sub_1AB225610()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB2256CC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB09CF00(v2);
  sub_1AB09D0D8(v2);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB2256CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB225860;
  }

  else
  {

    *(v1 + 208) = *(v1 + 160);
    v3 = sub_1AB2257F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2257F8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_1AB225860()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AppleServicesFetcher.preconnect(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1AB225930(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AB0B20F4;

  return AppleServicesFetcher.fetch(contentsOf:)(v3);
}

uint64_t sub_1AB2259C8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

id sub_1AB225AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v11 = objc_opt_self();
  result = [v11 valueWithNewObjectInContext_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = result;
  __dst[0] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v14 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = sub_1AB460514();
  v17 = &unk_1E794B000;
  [v13 setValue:v15 forProperty:v16];

  v18 = *(a3 + 16);
  v39 = v11;
  if (v18)
  {
    v19 = sub_1AB1AFEFC(v18, 0);
    v41 = sub_1AB1AF80C(__dst, v19 + 4, v18, a3);

    result = sub_1AB0309A4();
    if (v41 == v18)
    {
      v17 = &unk_1E794B000;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_21;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_7:
  __dst[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  v20 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = sub_1AB460514();
  [v13 v17[386]];

  v23 = *(a4 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v37 = v13;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1AB461754();
    v25 = (a4 + 32);
    v40 = v23 - 1;
    while (1)
    {
      v42 = v6;
      memcpy(__dst, v25, 0x158uLL);
      memcpy(v44, v25, sizeof(v44));
      sub_1AB0B724C(__dst, v43);
      v43[0] = sub_1AB0B5B34();
      v26 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
      swift_unknownObjectRelease();
      if (v26)
      {
        v27 = sub_1AB016760(0, &qword_1ED4D1B98);
        v44[3] = v27;
        v28 = a1;
        v29 = &protocol witness table for JSValue;
        v30 = v26;
      }

      else
      {
        v30 = [v11 valueWithUndefinedInContext_];
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
        v44[3] = v27;
        v28 = a1;
        v29 = sub_1AB0547A8();
      }

      v44[4] = v29;
      v44[0] = v30;
      __swift_project_boxed_opaque_existential_1Tm(v44, v27);
      v31 = v29[2];
      v32 = v26;
      v33 = v28;
      v31(v28, v27, v29);
      v6 = v42;
      sub_1AB0B7368(__dst);

      if (v42)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      if (!v40)
      {
        break;
      }

      --v40;
      v25 += 344;
      a1 = v33;
      v11 = v39;
    }

    v24 = v46;
    v13 = v37;
    a1 = v33;
    v11 = v39;
    v17 = &unk_1E794B000;
  }

  __dst[0] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED8);
  v34 = [v11 valueWithObject:sub_1AB461F94() inContext:a1];
  result = swift_unknownObjectRelease();
  if (v34)
  {

    v35 = v34;
    v36 = sub_1AB460514();
    [v13 v17[386]];

    result = sub_1AB016760(0, &qword_1ED4D1B98);
    a5[3] = result;
    a5[4] = &protocol witness table for JSValue;
    *a5 = v13;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1AB226024(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v79[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v79[0] = a1;
    v4 = *(a1 + 16);
    v65 = a1;

    v67 = v4;
    if (v4)
    {
      v5 = 0;
      v6 = v65 + 32;
      v7 = v3 + 56;
      v64 = v3;
      v63 = (v3 + 56);
      v62 = v65 + 32;
      while (1)
      {
        v8 = *(v6 + 8 * v5);
        v66 = v5 + 1;
        sub_1AB4620A4();
        v9 = 1 << *(v8 + 32);
        v10 = v9 < 64 ? ~(-1 << v9) : -1;
        v11 = v10 & *(v8 + 64);
        v12 = (v9 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v68 = 0;
        v14 = 0;
        while (v11)
        {
LABEL_16:
          v16 = __clz(__rbit64(v11)) | (v14 << 6);
          v17 = *(*(v8 + 48) + 16 * v16 + 8);
          v18 = *(v8 + 56) + 24 * v16;
          v19 = *v18;
          v3 = *(v18 + 8);
          v7 = *(v18 + 16);

          sub_1AB163984(v19, v3, v7);
          if (!v17)
          {
            goto LABEL_19;
          }

          v71 = v76;
          v72 = v77;
          v73 = v78;
          v70 = v75;
          v69 = v74;
          sub_1AB460684();

          if (v7)
          {
            MEMORY[0x1AC59D3F0](1);
            sub_1AB4612D4();
          }

          else
          {
            MEMORY[0x1AC59D3F0](0);
            sub_1AB460684();
          }

          v11 &= v11 - 1;
          sub_1AB163994(v19, v3, v7);
          v2 = &v69;
          v68 ^= sub_1AB462104();
        }

        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v15 >= v12)
          {
            break;
          }

          v11 = *(v8 + 64 + 8 * v15);
          ++v14;
          if (v11)
          {
            v14 = v15;
            goto LABEL_16;
          }
        }

LABEL_19:

        MEMORY[0x1AC59D3F0](v68);
        v20 = sub_1AB462104();
        v3 = v64;
        v21 = -1 << *(v64 + 32);
        v2 = v20 & ~v21;
        v11 = v2 >> 6;
        v7 = v63;
        v12 = 1 << v2;
        if (((1 << v2) & v63[v2 >> 6]) != 0)
        {
          break;
        }

LABEL_4:

        v5 = v66;
        v6 = v62;
        if (v66 == v67)
        {
          goto LABEL_58;
        }
      }

      v22 = ~v21;
      while (1)
      {

        sub_1AB172D0C(v23, v8);
        v25 = v24;

        if (v25)
        {
          break;
        }

        v2 = (v2 + 1) & v22;
        v11 = v2 >> 6;
        v12 = 1 << v2;
        if (((1 << v2) & v63[v2 >> 6]) == 0)
        {
          goto LABEL_4;
        }
      }

      v14 = v65;
      v79[1] = v66;

      v27 = *(v64 + 32);
      v57 = ((1 << v27) + 63) >> 6;
      v13 = 8 * v57;
      if ((v27 & 0x3Fu) > 0xD)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v58 = &v56;
        MEMORY[0x1EEE9AC00](v26);
        v29 = &v56 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v29, v7, v28);
        v30 = *&v29[8 * v11] & ~v12;
        v60 = v29;
        *&v29[8 * v11] = v30;
        v31 = *(v3 + 16) - 1;
        v2 = *(v14 + 16);
        v32 = v66;
        v61 = v2;
LABEL_27:
        v59 = v31;
        if (v32 == v2)
        {
LABEL_57:
          v3 = sub_1AB227B14(v60, v57, v59, v3);
          goto LABEL_58;
        }

        v33 = v32;
        v66 = v32;
        while ((v32 & 0x8000000000000000) == 0)
        {
          if (v33 >= *(v14 + 16))
          {
            goto LABEL_63;
          }

          v12 = *(v62 + 8 * v33);
          v67 = v33 + 1;
          sub_1AB4620A4();
          v3 = v12 + 64;
          v34 = 1 << *(v12 + 32);
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          else
          {
            v35 = -1;
          }

          v14 = v35 & *(v12 + 64);
          v11 = (v34 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v68 = 0;
          v7 = 0;
          while (1)
          {
            if (!v14)
            {
              while (1)
              {
                v36 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
                  break;
                }

                if (v36 >= v11)
                {
                  goto LABEL_47;
                }

                v14 = *(v3 + 8 * v36);
                ++v7;
                if (v14)
                {
                  v7 = v36;
                  goto LABEL_44;
                }
              }

              __break(1u);
              goto LABEL_61;
            }

LABEL_44:
            v37 = __clz(__rbit64(v14)) | (v7 << 6);
            v38 = *(*(v12 + 48) + 16 * v37 + 8);
            v39 = *(v12 + 56) + 24 * v37;
            v41 = *v39;
            v40 = *(v39 + 8);
            v42 = *(v39 + 16);

            sub_1AB163984(v41, v40, v42);
            if (!v38)
            {
              break;
            }

            v71 = v76;
            v72 = v77;
            v73 = v78;
            v70 = v75;
            v69 = v74;
            sub_1AB460684();

            if (v42)
            {
              MEMORY[0x1AC59D3F0](1);
              sub_1AB4612D4();
            }

            else
            {
              MEMORY[0x1AC59D3F0](0);
              sub_1AB460684();
            }

            v14 &= v14 - 1;
            sub_1AB163994(v41, v40, v42);
            v2 = &v69;
            v68 ^= sub_1AB462104();
          }

LABEL_47:

          MEMORY[0x1AC59D3F0](v68);
          v43 = sub_1AB462104();
          v3 = v64;
          v44 = -1 << *(v64 + 32);
          v45 = v43 & ~v44;
          v11 = v45 >> 6;
          v7 = v63;
          v46 = 1 << v45;
          if (((1 << v45) & v63[v45 >> 6]) != 0)
          {
            v47 = ~v44;
            while (1)
            {

              sub_1AB172D0C(v48, v12);
              v50 = v49;

              if (v50)
              {
                break;
              }

              v45 = (v45 + 1) & v47;
              v11 = v45 >> 6;
              v46 = 1 << v45;
              if (((1 << v45) & *(v7 + 8 * (v45 >> 6))) == 0)
              {
                goto LABEL_29;
              }
            }

            v14 = v65;
            v2 = v61;
            v33 = v67;

            v51 = v60[v11];
            v60[v11] = v51 & ~v46;
            if ((v51 & v46) != 0)
            {
              v31 = v59 - 1;
              if (__OFSUB__(v59, 1))
              {
                __break(1u);
              }

              v32 = v33;
              if (v59 == 1)
              {

                v3 = MEMORY[0x1E69E7CD0];
                goto LABEL_58;
              }

              goto LABEL_27;
            }
          }

          else
          {
LABEL_29:

            v14 = v65;
            v2 = v61;
            v33 = v67;
          }

          v32 = v66;
          if (v33 == v2)
          {
            goto LABEL_57;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v53 = v13;

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v54 = swift_slowAlloc();
      memcpy(v54, v7, v53);
      v55 = sub_1AB2273EC(v54, v57, v3, v2, v79);

      MEMORY[0x1AC59F020](v54, -1, -1);

      return v55;
    }

    else
    {
LABEL_58:
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t sub_1AB226810(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1AB4620A4();

    sub_1AB460684();
    v23 = sub_1AB462104();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1AB461DA4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1AB227E38(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1AB4620A4();

            sub_1AB460684();
            v41 = sub_1AB462104();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1AB461DA4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1AB227704(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1AC59F020](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1AB0309A4();
    return v5;
  }

  result = MEMORY[0x1AC59F020](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AB226D80(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        sub_1AB4620A4();
        MEMORY[0x1AC59D3F0](v5);
        v19 = sub_1AB462104();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_1AB22793C(v39, v14, v6, v2, v49);

      MEMORY[0x1AC59F020](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v47 << 9) | (8 * v29)));
      sub_1AB4620A4();
      v2 = &v48;
      MEMORY[0x1AC59D3F0](v5);
      v30 = sub_1AB462104();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1AB22805C(v14, v42, v44, v6);
LABEL_43:
    sub_1AB0309A4();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1AB227208(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1AB0347AC(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1AB4620A4();

        sub_1AB460684();
        v16 = sub_1AB462104();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1AB461DA4() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

unint64_t sub_1AB2273EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v37 = result;
  v38 = a3 + 56;
LABEL_2:
  v36 = v8;
  while (1)
  {
    v9 = v5[1];
    v10 = *(*v5 + 16);
    if (v9 == v10)
    {

      return sub_1AB227B14(v37, a2, v36, v6);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *(*v5 + 8 * v9 + 32);
    v5[1] = v9 + 1;
    sub_1AB4620A4();
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v42 = v11;
    result = swift_bridgeObjectRetain_n();
    v41 = 0;
    v17 = 0;
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v18);
          ++v17;
          if (v15)
          {
            v17 = v18;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_17:
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = *(*(v42 + 48) + 16 * v19 + 8);
      v21 = *(v42 + 56) + 24 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);

      sub_1AB163984(v22, v23, v24);
      if (!v20)
      {
        break;
      }

      sub_1AB460684();

      if (v24)
      {
        MEMORY[0x1AC59D3F0](1);
        sub_1AB4612D4();
      }

      else
      {
        MEMORY[0x1AC59D3F0](0);
        sub_1AB460684();
      }

      v15 &= v15 - 1;
      sub_1AB163994(v22, v23, v24);
      result = sub_1AB462104();
      v41 ^= result;
    }

LABEL_20:

    MEMORY[0x1AC59D3F0](v41);
    v25 = sub_1AB462104();
    v6 = a3;
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v38 + 8 * (v27 >> 6))) == 0)
    {
LABEL_3:

      v5 = a5;
      continue;
    }

    v30 = ~v26;
    while (1)
    {

      sub_1AB172D0C(v31, v42);
      v33 = v32;

      if (v33)
      {
        break;
      }

      v27 = (v27 + 1) & v30;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v38 + 8 * (v27 >> 6))) == 0)
      {
        goto LABEL_3;
      }
    }

    v5 = a5;

    v34 = v37[v28];
    v37[v28] = v34 & ~v29;
    if ((v34 & v29) != 0)
    {
      v8 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_32;
      }

      if (v36 == 1)
      {
        return MEMORY[0x1E69E7CD0];
      }

      goto LABEL_2;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AB227704(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1AB227E38(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1AB4620A4();

        sub_1AB460684();
        v19 = sub_1AB462104();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1AB461DA4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1AB22793C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_1AB4620A4();
    MEMORY[0x1AC59D3F0](v17);
    result = sub_1AB462104();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1AB22805C(v7, a2, v9, a3);
}

unint64_t sub_1AB227B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AF0);
  result = sub_1AB4615A4();
  v9 = a2;
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
    v11 = a1;
  }

  else
  {
    v11 = a1;
    v12 = *a1;
  }

  v13 = 0;
  v33 = v4;
  v34 = result + 56;
  v31 = v11;
  v32 = a2;
  v35 = result;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v36 = (v12 - 1) & v12;
    v37 = v5;
LABEL_17:
    v17 = *(*(v4 + 48) + 8 * (v14 | (v13 << 6)));
    sub_1AB4620A4();
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v38 = v17;
    result = swift_bridgeObjectRetain_n();
    v39 = 0;
    v23 = 0;
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            goto LABEL_31;
          }

          v21 = *(v18 + 8 * v24);
          ++v23;
          if (v21)
          {
            v23 = v24;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_28:
      v25 = __clz(__rbit64(v21)) | (v23 << 6);
      v26 = *(*(v38 + 48) + 16 * v25 + 8);
      v27 = *(v38 + 56) + 24 * v25;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);

      sub_1AB163984(v29, v28, v30);
      if (!v26)
      {
        break;
      }

      sub_1AB460684();

      if (v30)
      {
        MEMORY[0x1AC59D3F0](1);
        sub_1AB4612D4();
      }

      else
      {
        MEMORY[0x1AC59D3F0](0);
        sub_1AB460684();
      }

      v21 &= v21 - 1;
      sub_1AB163994(v29, v28, v30);
      result = sub_1AB462104();
      v39 ^= result;
    }

LABEL_31:

    MEMORY[0x1AC59D3F0](v39);
    sub_1AB462104();
    v10 = v35;
    result = sub_1AB461514();
    *(v34 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v35 + 48) + 8 * result) = v38;
    ++*(v35 + 16);
    v5 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_36;
    }

    v9 = v32;
    v4 = v33;
    v11 = v31;
    v12 = v36;
    if (v37 == 1)
    {
      goto LABEL_6;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_6;
    }

    v16 = v11[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v36 = (v16 - 1) & v16;
      v37 = v5;
      goto LABEL_17;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1AB227E38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437628);
  result = sub_1AB4615A4();
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
    sub_1AB4620A4();

    sub_1AB460684();
    result = sub_1AB462104();
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

uint64_t sub_1AB22805C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE8);
  result = sub_1AB4615A4();
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
    sub_1AB4620A4();
    MEMORY[0x1AC59D3F0](v16);
    result = sub_1AB462104();
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

uint64_t sub_1AB228264(unint64_t a1, uint64_t a2)
{
  v73 = a2;
  v2 = a1 >> 62;
  if (*(a2 + 40))
  {
    if (!v2)
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_87;
    }

LABEL_84:
    v3 = sub_1AB4618F4();
    if (v3)
    {
LABEL_4:
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC8];
      v75 = v3;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1AC59C990](v4, a1);
          v7 = __OFADD__(v4, 1);
          v8 = v4 + 1;
          if (v7)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v6 = *(a1 + 32 + 8 * v4);
          v7 = __OFADD__(v4, 1);
          v8 = v4 + 1;
          if (v7)
          {
            goto LABEL_81;
          }
        }

        v78 = v6;
        v9 = [v6 allItems];
        sub_1AB016760(0, &qword_1EB438AD8);
        v10 = sub_1AB460954();

        if (v10 >> 62)
        {
          break;
        }

        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v80 = v8;
        if (v11)
        {
          goto LABEL_14;
        }

LABEL_5:

        v4 = v80;
        if (v80 == v75)
        {
          goto LABEL_71;
        }
      }

      v11 = sub_1AB4618F4();
      v80 = v8;
      if (!v11)
      {
        goto LABEL_5;
      }

LABEL_14:
      v12 = 0;
      v84 = v10;
      v86 = v10 & 0xC000000000000001;
      v82 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v86)
        {
          v13 = MEMORY[0x1AC59C990](v12, v10);
        }

        else
        {
          if (v12 >= *(v82 + 16))
          {
            goto LABEL_76;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_73;
        }

        v16 = [v13 bundleIdentifier];
        if (v16)
        {
          break;
        }

LABEL_16:
        ++v12;
        if (v15 == v11)
        {
          goto LABEL_5;
        }
      }

      v17 = v11;
      v18 = v16;
      v19 = sub_1AB460544();
      v21 = v20;

      v22 = [v14 itemDictionary];
      v23 = sub_1AB4602F4();

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
      *&v89 = v23;
      sub_1AB014B78(&v89, v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_1AB014DB4(v19, v21);
      v27 = v5[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_74;
      }

      v30 = v25;
      if (v5[3] < v29)
      {
        sub_1AB01AF68(v29, isUniquelyReferenced_nonNull_native);
        v31 = sub_1AB014DB4(v19, v21);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_89;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:

        v33 = (v5[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        sub_1AB014B78(v88, v33);

LABEL_34:
        v11 = v17;
        v10 = v84;
        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_1AB0676CC();
        if (v30)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      v5[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v5[6] + 16 * v26);
      *v34 = v19;
      v34[1] = v21;
      sub_1AB014B78(v88, (v5[7] + 32 * v26));

      v35 = v5[2];
      v7 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v7)
      {
        goto LABEL_79;
      }

      v5[2] = v36;
      goto LABEL_34;
    }

    goto LABEL_87;
  }

  if (!v2)
  {
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_39;
    }

LABEL_87:

    v5 = MEMORY[0x1E69E7CC8];
    goto LABEL_88;
  }

  v37 = sub_1AB4618F4();
  if (!v37)
  {
    goto LABEL_87;
  }

LABEL_39:
  v38 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v74 = v37;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1AC59C990](v38, a1);
    }

    else
    {
      if (v38 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v39 = *(a1 + 32 + 8 * v38);
    }

    v79 = v39;
    v7 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v7)
    {
      goto LABEL_80;
    }

    v41 = [v39 allItems];
    sub_1AB016760(0, &qword_1EB438AD8);
    v42 = sub_1AB460954();

    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v40;
      if (v43)
      {
        break;
      }

      goto LABEL_40;
    }

    v43 = sub_1AB4618F4();
    v77 = v40;
    if (v43)
    {
      break;
    }

LABEL_40:

    v38 = v77;
    if (v77 == v74)
    {
LABEL_71:

LABEL_88:

      v70 = sub_1AB1BF140(v69);

      sub_1AB168904(v73);

      sub_1AB226810(v71, v70);

      return v5;
    }
  }

  v44 = 0;
  v85 = v42;
  v87 = v42 & 0xC000000000000001;
  v81 = v42 & 0xFFFFFFFFFFFFFF8;
  v83 = v43;
  while (1)
  {
    if (v87)
    {
      v45 = MEMORY[0x1AC59C990](v44, v42);
    }

    else
    {
      if (v44 >= *(v81 + 16))
      {
        goto LABEL_77;
      }

      v45 = *(v42 + 8 * v44 + 32);
    }

    v46 = v45;
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
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
      goto LABEL_84;
    }

    v48 = [v45 iTunesStoreIdentifier];
    if (v48)
    {
      break;
    }

LABEL_50:
    ++v44;
    if (v47 == v43)
    {
      goto LABEL_40;
    }
  }

  v49 = v48;
  v50 = [v48 stringValue];
  v51 = sub_1AB460544();
  v53 = v52;

  v54 = [v46 itemDictionary];
  v55 = sub_1AB4602F4();

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
  *&v89 = v55;
  sub_1AB014B78(&v89, v88);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v58 = sub_1AB014DB4(v51, v53);
  v59 = v5[2];
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    goto LABEL_75;
  }

  v62 = v57;
  if (v5[3] >= v61)
  {
    if (v56)
    {
      if (v57)
      {
        goto LABEL_64;
      }
    }

    else
    {
      sub_1AB0676CC();
      if (v62)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    v5[(v58 >> 6) + 8] |= 1 << v58;
    v66 = (v5[6] + 16 * v58);
    *v66 = v51;
    v66[1] = v53;
    sub_1AB014B78(v88, (v5[7] + 32 * v58));

    v67 = v5[2];
    v7 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v7)
    {
      goto LABEL_78;
    }

    v5[2] = v68;
    goto LABEL_68;
  }

  sub_1AB01AF68(v61, v56);
  v63 = sub_1AB014DB4(v51, v53);
  if ((v62 & 1) == (v64 & 1))
  {
    v58 = v63;
    if ((v62 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_64:

    v65 = (v5[7] + 32 * v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    sub_1AB014B78(v88, v65);

LABEL_68:
    v43 = v83;
    v42 = v85;
    goto LABEL_50;
  }

LABEL_89:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void *static ObjectGraphBuilder.buildBlock()()
{
  v0 = sub_1AB014B20();
  v2 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v2;
  return result;
}

void *static ObjectGraphBuilder.buildPartialBlock(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB016620(a1, inited + 32);
  v3 = sub_1AB014B20();
  v5 = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v3);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v5;
  return result;
}

void *static ObjectGraphBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v2 = sub_1AB014B20();
    v4 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v2);
    sub_1AB014B88(MEMORY[0x1E69E7CC0]);
    type metadata accessor for BaseObjectGraph();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0xE000000000000000;
    v1[2] = v4;
  }

  return v1;
}

__n128 ImpressionsTracking.AppearanceJournal.__allocating_init(elementID:metricsFields:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0;
  *(v4 + 144) = 1;
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  result = *(a1 + 32);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(v4 + 72) = a2;
  *(v4 + 80) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AB228D48(uint64_t a1, void *a2, int a3, uint64_t *a4)
{
  v5 = v4;
  LODWORD(v56) = a3;
  v55 = a2;
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4[1];
  v51 = *a4;
  v13 = a4[5];
  v52 = a4[4];
  v14 = a4[7];
  v53 = a4[6];
  v15 = a4[9];
  v54 = a4[8];
  (*(v9 + 16))(v11, a1, v8);
  LOBYTE(v58) = 0;
  sub_1AB45F964();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = v58;
  swift_beginAccess();
  v19 = *(v5 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 80) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1AB0796F4(0, *(v19 + 2) + 1, 1, v19);
    *(v5 + 80) = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1AB0796F4((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v23 = &v19[32 * v22];
  v23[32] = v18;
  *(v23 + 5) = v17;
  *(v23 + 6) = v51;
  *(v23 + 7) = v12;
  *(v5 + 80) = v19;
  swift_endAccess();
  *(v5 + 88) = v52;
  *(v5 + 96) = v13;

  *(v5 + 104) = v53;
  *(v5 + 112) = v14;

  *(v5 + 120) = v54;
  *(v5 + 128) = v15;

  *(v5 + 136) = v55;
  *(v5 + 144) = v56 & 1;
  if (qword_1ED4D0208 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED4D3E68;
  v56 = unk_1ED4D3E70;
  v55 = __swift_project_boxed_opaque_existential_1Tm(qword_1ED4D3E50, qword_1ED4D3E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  v63 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v26._countAndFlagsBits = 0x206D657449;
  v26._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  swift_beginAccess();
  v28 = *(v5 + 16);
  v27 = *(v5 + 24);
  v30 = *(v5 + 32);
  v29 = *(v5 + 40);
  v31 = *(v5 + 48);
  v32 = *(v5 + 56);
  v33 = *(v5 + 64);
  v62 = &type metadata for ImpressionMetrics.ID;
  v34 = swift_allocObject();
  v61[0] = v34;
  v34[2] = v28;
  v34[3] = v27;
  v34[4] = v30;
  v34[5] = v29;
  v34[6] = v31;
  v34[7] = v32;
  v34[8] = v33;
  sub_1AB01522C(v61, v57);
  v58 = 0u;
  v59 = 0u;

  sub_1AB0169C4(v57, &v58);
  v60 = 0;
  v35 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    v63 = v35;
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v38 = &v35[40 * v37];
  v39 = v58;
  v40 = v59;
  v38[64] = v60;
  *(v38 + 2) = v39;
  *(v38 + 3) = v40;
  v63 = v35;
  sub_1AB0167A8(v61);
  v41._countAndFlagsBits = 0x6572616570706120;
  v41._object = 0xEF20687469772064;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  v42 = *(v5 + 72);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v61[0] = v42;
  sub_1AB01522C(v61, v57);
  v58 = 0u;
  v59 = 0u;

  sub_1AB0169C4(v57, &v58);
  v60 = 1;
  v43 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
    v63 = v43;
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[40 * v45];
  v47 = v58;
  v48 = v59;
  v46[64] = v60;
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  v63 = v43;
  sub_1AB0167A8(v61);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v25 + 32) = v63;
  Logger.info(_:)(v25, v24, v56);
}

uint64_t sub_1AB2292C0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  (*(v7 + 16))(v9, a1, v6);
  LOBYTE(v50) = 1;
  sub_1AB45F964();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = v50;
  swift_beginAccess();
  v15 = v3[10];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[10] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1AB0796F4(0, *(v15 + 2) + 1, 1, v15);
    v3[10] = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1AB0796F4((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[32 * v18];
  v19[32] = v14;
  *(v19 + 5) = v13;
  *(v19 + 6) = v11;
  *(v19 + 7) = v10;
  v3[10] = v15;
  swift_endAccess();
  if (qword_1ED4D0208 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED4D3E68;
  v48 = unk_1ED4D3E70;
  v47 = __swift_project_boxed_opaque_existential_1Tm(qword_1ED4D3E50, qword_1ED4D3E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AB4D4720;
  v55 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v22._countAndFlagsBits = 0x206D657449;
  v22._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  swift_beginAccess();
  v24 = v3[2];
  v23 = v3[3];
  v26 = v3[4];
  v25 = v3[5];
  v27 = v3[6];
  v28 = v3[7];
  v29 = v3[8];
  v54 = &type metadata for ImpressionMetrics.ID;
  v30 = swift_allocObject();
  v53[0] = v30;
  v30[2] = v24;
  v30[3] = v23;
  v30[4] = v26;
  v30[5] = v25;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v29;
  sub_1AB01522C(v53, v49);
  v50 = 0u;
  v51 = 0u;

  sub_1AB0169C4(v49, &v50);
  v52 = 0;
  v31 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    v55 = v31;
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = v50;
  v36 = v51;
  v34[64] = v52;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v55 = v31;
  sub_1AB0167A8(v53);
  v37._object = 0x80000001AB504C60;
  v37._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v3[9];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v53[0] = v38;
  sub_1AB01522C(v53, v49);
  v50 = 0u;
  v51 = 0u;

  sub_1AB0169C4(v49, &v50);
  v52 = 1;
  v39 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
    v55 = v39;
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[40 * v41];
  v43 = v50;
  v44 = v51;
  v42[64] = v52;
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v55 = v39;
  sub_1AB0167A8(v53);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v21 + 32) = v55;
  Logger.info(_:)(v21, v20, v48);
}

uint64_t ImpressionsTracking.AppearanceJournal.isAppeared.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 32 * v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t ImpressionsTracking.AppearanceJournal.Time.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t ImpressionsTracking.AppearanceJournal.Time.init(eventType:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v12 = xmmword_1EB43D5E8;
  v18 = v11;
  sub_1AB45F964();
  v14 = v13;
  v15 = *(v7 + 8);
  v15(a2, v6);
  v15(v10, v6);
  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v12;
}

uint64_t ImpressionsTracking.AppearanceJournal.init(elementID:metricsFields:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  *(v2 + 72) = a2;
  *(v2 + 80) = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t ImpressionsTracking.AppearanceJournal.elementID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 64);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v4;
}

uint64_t ImpressionsTracking.AppearanceJournal.trackAppearance(on:)(uint64_t a1)
{
  if (qword_1EB435E28 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = xmmword_1EB43D5E8;
  v4 = qword_1EB43D5F8;
  v5 = byte_1EB43D600;
  v6 = *algn_1EB43D601;
  v7 = *(&xmmword_1EB43D608 + 9);
  *v8 = unk_1EB43D621;
  *&v8[15] = *(&xmmword_1EB43D628 + 1);
  return sub_1AB228D48(a1, qword_1EB43D5F8, byte_1EB43D600 & 1, &v3);
}

uint64_t ImpressionsTracking.AppearanceJournal.trackDisappearance(on:)(uint64_t a1)
{
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v8[2] = xmmword_1EB43D608;
  v8[3] = unk_1EB43D618;
  v8[4] = xmmword_1EB43D628;
  v8[0] = xmmword_1EB43D5E8;
  v8[1] = *&qword_1EB43D5F8;
  v5 = xmmword_1EB43D608;
  v6 = unk_1EB43D618;
  v7 = xmmword_1EB43D628;
  v3 = xmmword_1EB43D5E8;
  v4 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v8, v9);
  sub_1AB2292C0(a1, &v3);
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[0] = v3;
  v9[1] = v4;
  return sub_1AB079CF0(v9);
}

uint64_t ImpressionsTracking.AppearanceJournal.deinit()
{

  return v0;
}

uint64_t ImpressionsTracking.AppearanceJournal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AB229D68()
{
  result = qword_1EB438AF8;
  if (!qword_1EB438AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438AF8);
  }

  return result;
}

__n128 ClosureAction.init(actionMetrics:body:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t ClosureAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 ClosureAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1AB229EA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_1AB229FD8;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ClosureAction.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClosureAction.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1AB229F9C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1AB22A018()
{
  if (qword_1EB435660 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000071;
  v5[1] = 0x80000001AB504C80;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  sub_1AB0169C4(v5, v2 + 32);
  *(v2 + 64) = 0;
  *(v1 + 32) = v2;
  v5[0] = v0;
  v4 = 0;
  OSLogger.log(contentsOf:withLevel:)(v1, &v4);
}

uint64_t dispatch thunk of NetFetcher.fetch(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return v11(a1, a2, a3, a4);
}

unint64_t NetworkReachabilityError.errorDescription.getter()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t NetworkReachabilityError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB22A370()
{
  result = qword_1EB438B00;
  if (!qword_1EB438B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B00);
  }

  return result;
}

unint64_t sub_1AB22A3C8()
{
  result = qword_1EB438B08;
  if (!qword_1EB438B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B08);
  }

  return result;
}

unint64_t sub_1AB22A41C()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

double sub_1AB22A48C()
{
  *&result = 172;
  qword_1EB435568 = 172;
  dword_1EB435570 = 1;
  return result;
}

double sub_1AB22A4FC@<D0>(void *a1@<X0>, _DWORD *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  v4 = *a2;
  result = *a3;
  *a4 = *a3;
  *(a4 + 8) = v4;
  return result;
}

double sub_1AB22A564()
{
  *&result = 0x64000000ACLL;
  qword_1EB438B10 = 0x64000000ACLL;
  return result;
}

double static ImpulseSignpost.metricsEventPosted.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EB435CF0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EB438B10;
  *a1 = qword_1EB438B10;
  return result;
}

uint64_t DeepLinkRoute.init(scheme:host:path:query:handler:)@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, void *a3@<X8>, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1AB461614();
  v15 = sub_1AB322C10(v13, v14);
  if (v9)
  {
  }

  else
  {
    v31 = a3;
    v17 = v15;
    v18 = v16;

    v19 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v23 = sub_1AB0C5760(v17, v18, 0);
    v21 = sub_1AB461614();
    v24 = sub_1AB322C10(v21, v22);
    v26 = v25;

    v27 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v28 = sub_1AB0C5760(v24, v26, 0);
    PathExpression.init(pattern:)(a1, a2, a4, &v32);
    v29 = v32;
    result = QueryExpression.init(pattern:)(a5, a6, a7, &v32);
    v30 = v32;
    *v31 = v23;
    v31[1] = v28;
    v31[2] = v29;
    v31[3] = v30;
    v31[4] = a8;
    v31[5] = a9;
  }

  return result;
}

JetEngine::DeResolutionNumberRule __swiftcall DeResolutionNumberRule.init(fieldName:magnitude:significantDigits:)(Swift::String fieldName, Swift::Double magnitude, Swift::Double significantDigits)
{
  *v3 = fieldName;
  *(v3 + 16) = magnitude;
  *(v3 + 24) = significantDigits;
  result.fieldName = fieldName;
  result.significantDigits = significantDigits;
  result.magnitude = magnitude;
  return result;
}

Swift::Double __swiftcall DeResolutionNumberRule.apply(to:)(Swift::Double to)
{
  v3 = *(v1 + 16);
  result = NAN;
  if (v3 > 0.0 && *(v1 + 24) >= 0.0)
  {
    v5 = __exp10(*(v1 + 24));
    return v5 * trunc(to / v3 / v5);
  }

  return result;
}

BOOL static DeResolutionNumberRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1AB461DA4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL sub_1AB22A8B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1AB461DA4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_1AB22A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB22A95C, 0, 0);
}

uint64_t sub_1AB22A95C()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB22A9EC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1AB027460;

  return v7(a1);
}

uint64_t sub_1AB22AAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return sub_1AB22A93C(a1, v6, a3);
}

uint64_t sub_1AB22AB84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return sub_1AB22A9EC(a1, v6, a3);
}

uint64_t sub_1AB22AD98(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 168) - 8) + 32))(v2 + *(*v2 + 184), a1);
  return v2;
}

uint64_t sub_1AB22AF18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *a1;
  return (*(*(v4 + 176) + 32))(&v6, a2, a3, *(v4 + 168));
}

uint64_t sub_1AB22AFA0(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *a1;
  return (*(*(v3 + 176) + 40))(&v5, a2, *(v3 + 168));
}

uint64_t sub_1AB22B028(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *a1;
  return (*(*(v3 + 176) + 48))(&v5, a2, *(v3 + 168));
}

uint64_t sub_1AB22B198(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 184), v2, v3);
  return sub_1AB4605E4();
}

uint64_t sub_1AB22B2D4()
{
  (*(*(*(*v0 + 168) - 8) + 8))(v0 + *(*v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t AnyStateStore.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteStateStoreBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_1AB22AD98(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t AnyStateStore.currentState<A>(at:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *a1;
  return (*(*v5 + 112))(&v7, a3, a4);
}

uint64_t AnyStateStore.updateState(at:to:)(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t AnyStateStore.removeState(at:recursively:)(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 128))(&v4);
}

uint64_t sub_1AB22B764()
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

uint64_t sub_1AB22B7F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AB22B84C()
{
  sub_1AB4615D4();

  v0 = sub_1AB461614();
  MEMORY[0x1AC59BA20](v0);

  sub_1AB461884();
  __break(1u);
}

uint64_t OpenCodingKey.stringValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1AB461C44();
  }

  return a1;
}

uint64_t OpenCodingKey.intValue.getter(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      sub_1AB179C90(result, a2, 1);
      v9 = sub_1AB22BE3C(v28, a2, 10);
      v27 = v29;
      sub_1AB179CA0(v28, a2, 1);
LABEL_65:
      if (v27)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v30[0] = result;
      v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          v8 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            v19 = v30 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v9 = 0;
          v24 = v30;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v4)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          v13 = v30 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AB461714();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v8 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (result)
            {
              v16 = (result + 1);
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_63;
                }

                v18 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_63;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v22 = *result - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              v23 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v9 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_63;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          v27 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

uint64_t OpenCodingKey.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_1AB22C3BC();
    return sub_1AB461484();
  }
}

uint64_t sub_1AB22BCF0()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1AB461C44();
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_1AB22BD58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_1AB22BD8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1AB22BD98()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_1AB22C3BC();
    return sub_1AB461484();
  }
}

uint64_t sub_1AB22BE00(uint64_t a1)
{
  v2 = sub_1AB179C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1AB22BE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_1AB4607D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AB45005C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AB461714();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t sub_1AB22C3BC()
{
  result = qword_1EB435758;
  if (!qword_1EB435758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435758);
  }

  return result;
}

unint64_t sub_1AB22C414()
{
  result = qword_1EB4332D0;
  if (!qword_1EB4332D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4332D0);
  }

  return result;
}

unint64_t sub_1AB22C46C()
{
  result = qword_1EB4332D8;
  if (!qword_1EB4332D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4332D8);
  }

  return result;
}

uint64_t sub_1AB22C4DC()
{
  v1 = 0x647574696E67616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E646C656966;
  }
}

uint64_t sub_1AB22C53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB22CFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB22C564(uint64_t a1)
{
  v2 = sub_1AB22CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB22C5A0(uint64_t a1)
{
  v2 = sub_1AB22CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB22C5DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB22CCF8();
  sub_1AB462224();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v15 = sub_1AB461A84();
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B28);
    v17 = 1;
    sub_1AB22CD4C();
    sub_1AB461A54();
    if (v20)
    {
      v10 = 1048576.0;
    }

    else if (v19)
    {
      v10 = 1048576.0;
    }

    else
    {
      v10 = v18;
    }

    v17 = 2;
    sub_1AB461A54();
    (*(v6 + 8))(v8, v5);
    if (v20)
    {
      v12 = 2.0;
    }

    else
    {
      v12 = v18;
      if (v19)
      {
        v12 = 2.0;
      }
    }

    v13 = v16;
    *a2 = v15;
    *(a2 + 8) = v13;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB22C864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  JSONObject.subscript.getter(0x6D614E646C656966, 0xE900000000000065, v25);
  sub_1AB01EC0C(v25, v22);
  v4 = v23;
  if (!v23)
  {
    sub_1AB066D84(v25);
    sub_1AB18977C(v22);
    goto LABEL_8;
  }

  v5 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  sub_1AB066D84(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (!v8)
  {
LABEL_8:
    sub_1AB163664();
    swift_allocError();
    *v15 = xmmword_1AB4DFAF0;
    *(v15 + 16) = 0x20000001F1FFFF38uLL;
    *(v15 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  JSONObject.subscript.getter(0x647574696E67616DLL, 0xE900000000000065, v25);
  sub_1AB01EC0C(v25, v22);
  v9 = v23;
  if (v23)
  {
    v10 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v11 = (*(v10 + 80))(v9, v10);
    v13 = v12;
    sub_1AB066D84(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (v13)
    {
      v14 = 0x4130000000000000;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    sub_1AB066D84(v25);
    sub_1AB18977C(v22);
    v14 = 0x4130000000000000;
  }

  JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB504F10, v25);
  sub_1AB01EC0C(v25, v22);
  v17 = v23;
  if (v23)
  {
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v19 = (*(v18 + 80))(v17, v18);
    v21 = v20;
    sub_1AB066D84(a1);
    sub_1AB066D84(v25);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB066D84(v25);
    result = sub_1AB18977C(v22);
  }

  v19 = 0x4000000000000000;
LABEL_15:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v19;
  return result;
}

uint64_t sub_1AB22CAFC(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (!*(v9 + 16))
  {
  }

  v10 = sub_1AB014DB4(v3, v4);
  if ((v11 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v9 + 56) + 32 * v10, v20);

  sub_1AB083ACC();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v21;
    [v21 doubleValue];
    v15 = v14;
    v16 = NAN;
    if (v6 > 0.0 && v5 >= 0.0)
    {
      v17 = __exp10(v5);
      v16 = v17 * trunc(v15 / v6 / v17);
    }

    v20[3] = MEMORY[0x1E69E63B0];
    *v20 = v16;
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v20, v3, v4, v18, v19);

    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return result;
}

unint64_t sub_1AB22CCF8()
{
  result = qword_1EB438B20;
  if (!qword_1EB438B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B20);
  }

  return result;
}

unint64_t sub_1AB22CD4C()
{
  result = qword_1EB438B30;
  if (!qword_1EB438B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438B28);
    sub_1AB22CDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B30);
  }

  return result;
}

unint64_t sub_1AB22CDD0()
{
  result = qword_1EB438B38;
  if (!qword_1EB438B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B38);
  }

  return result;
}

BOOL sub_1AB22CE4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  result = 0;
  if (v6 || (sub_1AB461DA4()) && v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1AB22CED0()
{
  result = qword_1EB438B40;
  if (!qword_1EB438B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B40);
  }

  return result;
}

unint64_t sub_1AB22CF28()
{
  result = qword_1EB438B48;
  if (!qword_1EB438B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B48);
  }

  return result;
}

unint64_t sub_1AB22CF80()
{
  result = qword_1EB438B50;
  if (!qword_1EB438B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B50);
  }

  return result;
}

uint64_t sub_1AB22CFD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AB504F10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t sub_1AB22D114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB22D15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB22D1BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB22E1A4();
  sub_1AB462274();
  v8[15] = 0;
  sub_1AB461BB4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1AB461BB4();
  v8[13] = 2;
  sub_1AB461B74();
  v8[12] = 3;
  sub_1AB461B74();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB22D384(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB22E030();
  sub_1AB462274();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B60);
  sub_1AB22E0D8(&qword_1EB4323D0, sub_1AB22E150);
  sub_1AB461BF4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AB22D51C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB22D5D8()
{
  sub_1AB460684();
}

uint64_t sub_1AB22D680()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB22D738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB22E428();
  *a1 = result;
  return result;
}

void sub_1AB22D768(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656D616E656C6966;
  v4 = 0xE600000000000000;
  v5 = 0x6F6E656E696CLL;
  if (*v1 != 2)
  {
    v5 = 0x6F6E6C6F63;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F6974636E7566;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AB22D7E0()
{
  v1 = 0x656D616E656C6966;
  v2 = 0x6F6E656E696CLL;
  if (*v0 != 2)
  {
    v2 = 0x6F6E6C6F63;
  }

  if (*v0)
  {
    v1 = 0x6E6F6974636E7566;
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

uint64_t sub_1AB22D854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB22E428();
  *a1 = result;
  return result;
}

uint64_t sub_1AB22D87C(uint64_t a1)
{
  v2 = sub_1AB22E1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB22D8B8(uint64_t a1)
{
  v2 = sub_1AB22E1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AB22D8F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AB22DBD8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_1AB22D958(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1AB22DB18(v5, v7);
}

uint64_t sub_1AB22D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656D617266 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB22DA4C(uint64_t a1)
{
  v2 = sub_1AB22E030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB22DA88(uint64_t a1)
{
  v2 = sub_1AB22E030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AB22DAC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB22DE7C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1AB22DB18(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t sub_1AB22DBD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB22E1A4();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = 0;
  v9 = sub_1AB461A84();
  v25 = v10;
  v30 = 1;
  v23 = sub_1AB461A84();
  v24 = v11;
  v29 = 2;
  v12 = sub_1AB461A44();
  HIDWORD(v21) = v13;
  v22 = v12;
  v28 = 3;
  v14 = sub_1AB461A44();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v8, v5);
  v27 = BYTE4(v21) & 1;
  v26 = v16 & 1;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v25;
  *a2 = v9;
  *(a2 + 8) = v19;
  v20 = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  *(a2 + 48) = v17;
  *(a2 + 56) = v26;
  return result;
}

void *sub_1AB22DE7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB22E030();
  sub_1AB462224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438B60);
    sub_1AB22E0D8(&qword_1EB438B68, sub_1AB22E084);
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_1AB22E030()
{
  result = qword_1EB432808;
  if (!qword_1EB432808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432808);
  }

  return result;
}

unint64_t sub_1AB22E084()
{
  result = qword_1EB438B70;
  if (!qword_1EB438B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B70);
  }

  return result;
}

uint64_t sub_1AB22E0D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438B60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB22E150()
{
  result = qword_1EB432810;
  if (!qword_1EB432810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432810);
  }

  return result;
}

unint64_t sub_1AB22E1A4()
{
  result = qword_1EB432828[0];
  if (!qword_1EB432828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB432828);
  }

  return result;
}

unint64_t sub_1AB22E21C()
{
  result = qword_1EB438B90;
  if (!qword_1EB438B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B90);
  }

  return result;
}

unint64_t sub_1AB22E274()
{
  result = qword_1EB438B98;
  if (!qword_1EB438B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438B98);
  }

  return result;
}

unint64_t sub_1AB22E2CC()
{
  result = qword_1EB432818;
  if (!qword_1EB432818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432818);
  }

  return result;
}

unint64_t sub_1AB22E324()
{
  result = qword_1EB432820;
  if (!qword_1EB432820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432820);
  }

  return result;
}

unint64_t sub_1AB22E37C()
{
  result = qword_1EB4327F8;
  if (!qword_1EB4327F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4327F8);
  }

  return result;
}

unint64_t sub_1AB22E3D4()
{
  result = qword_1EB432800;
  if (!qword_1EB432800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432800);
  }

  return result;
}

uint64_t sub_1AB22E428()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t JetPackError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

unint64_t JetPackError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v3;
  v4 = "significantDigits";
  v5 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000020;
    v4 = "JetPackError.daemonKillSwitch";
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (!v1)
  {
    v4 = "hedAssetNotFound";
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v4 | 0x8000000000000000;
  v7 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB1BA43C(inited + 32);
  return v7;
}

uint64_t JetPackError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB22E66C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1AB22E6EC(uint64_t a1)
{
  v2 = sub_1AB22E820();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB22E728(uint64_t a1)
{
  v2 = sub_1AB22E820();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1AB22E768()
{
  result = qword_1EB438BA0;
  if (!qword_1EB438BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BA0);
  }

  return result;
}

unint64_t sub_1AB22E7BC()
{
  result = qword_1EB438BA8;
  if (!qword_1EB438BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BA8);
  }

  return result;
}

unint64_t sub_1AB22E820()
{
  result = qword_1EB438BB0;
  if (!qword_1EB438BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BB0);
  }

  return result;
}

JetEngine::Account_optional __swiftcall AccountProvider.account(forUserID:)(Swift::String forUserID)
{
  v4 = v3;
  v8 = v1;
  v9 = v2;
  requirementFailure(_:file:line:)(sub_1AB22EBE0, &v7, "JetEngine/AccountProvider.swift", 31, 2, 80);
  *v4 = 0;
  result.value.base.super.isa = v5;
  result.is_nil = v6;
  return result;
}

void sub_1AB22E900()
{
  sub_1AB4615D4();

  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000002CLL, 0x80000001AB504FF0);
  sub_1AB461884();
  __break(1u);
}

void AccountProvider.onActiveAccountChange.getter()
{
  sub_1AB4615D4();

  swift_getDynamicType();
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000002CLL, 0x80000001AB504FF0);
  sub_1AB461884();
  __break(1u);
}

uint64_t AccountProviderActiveAccountChange.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB22EB34()
{
  sub_1AB4615D4();

  swift_getDynamicType();
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB505020);
  return 60;
}

unint64_t sub_1AB22EBF0()
{
  result = qword_1EB438BB8;
  if (!qword_1EB438BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BB8);
  }

  return result;
}

void sub_1AB22EC6C(void *a1@<X8>)
{
  v3 = *v1;
  v4[2] = &v5;
  v5 = v3;
  requirementFailure(_:file:line:)(sub_1AB22EDB0, v4, "JetEngine/AccountProvider.swift", 31, 2, 80);
  *a1 = 0;
}

uint64_t sub_1AB22ECF8()
{
  sub_1AB4615D4();

  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB505020);
  return 60;
}

id sub_1AB22EDB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = qword_1EB434698;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v6 name:qword_1EB4346A0 object:0];

  v7 = [v3 defaultCenter];
  v8 = qword_1EB434680;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  [v7 removeObserver:v9 name:qword_1EB434688 object:0];

  v11.receiver = v9;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t dispatch thunk of NetRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1AB22F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FF0);
  v15[4] = &protocol witness table for PreferenceKey<A>;
  v15[0] = a2;
  v15[1] = a3;
  sub_1AB014A58(a1, v8, &qword_1EB4395E0);
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AB19C1DC(v8);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(v10 + 32))(boxed_opaque_existential_0, v8, v9);
  }

  off_1F1FF50F0(&v13, v15);
  return sub_1AB19C1DC(a1);
}

double EventSequenceFieldProvider.init(forInterval:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  EventSequenceFieldProvider.init(forEvents:forInterval:)(0, v7, a2);
  result = *&v7[1];
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a1 = v7[0];
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t EventSequenceFieldProvider.init(forEvents:forInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 16) = v4;

  sub_1AB4615D4();

  strcpy(v10, "EventSequence_");
  HIBYTE(v10[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BD0);
  sub_1AB22F4A0();
  sub_1AB461384();
  v5 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v5);

  MEMORY[0x1AC59BA20](0x6576457473616C5FLL, 0xEE00656D6954746ELL);
  v6 = v10[1];
  *(a2 + 24) = v10[0];
  *(a2 + 32) = v6;
  sub_1AB4615D4();

  strcpy(v10, "EventSequence_");
  HIBYTE(v10[1]) = -18;
  sub_1AB461384();

  v7 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v7);

  result = MEMORY[0x1AC59BA20](0x636E65757165735FLL, 0xEF7265626D754E65);
  v9 = v10[1];
  *(a2 + 40) = v10[0];
  *(a2 + 48) = v9;
  return result;
}

unint64_t sub_1AB22F4A0()
{
  result = qword_1EB438BD8;
  if (!qword_1EB438BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BD8);
  }

  return result;
}

uint64_t sub_1AB22F504(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-v6];
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v2[1];
  v20 = *v2;
  v21 = v12;
  v22 = v2[2];
  v23 = *(v2 + 6);
  if (v20 && (sub_1AB05CF1C(a1, a2, v20) & 1) == 0)
  {
    return 0;
  }

  sub_1AB45F994();
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  sub_1AB17A5B4(*(&v21 + 1), v22, v7);
  v13 = sub_1AB17ADE8(*(&v22 + 1), v23);
  v14 = v21;
  MEMORY[0x1EEE9AC00](v13);
  *&v18[-32] = v7;
  *&v18[-24] = v11;
  *&v18[-16] = &v20;
  *&v18[-8] = v15;
  os_unfair_lock_lock(v14 + 4);
  sub_1AB22FCFC(&v19);
  os_unfair_lock_unlock(v14 + 4);
  v16 = v19;
  sub_1AB19C1DC(v7);
  (*(v9 + 8))(v11, v8);
  return v16;
}

uint64_t sub_1AB22F728@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v26 = a4;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1AB45F9B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(a1, v11, &qword_1EB4395E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1AB19C1DC(v11);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1AB45F8F4();
    v17 = v16;
    (*(v13 + 8))(v15, v12);
    if (*(a2 + 8) <= v17 * 1000.0)
    {
LABEL_7:
      v18 = 1;
      goto LABEL_8;
    }
  }

  v18 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  (*(v13 + 16))(v8);
  (*(v13 + 56))(v8, 0, 1, v12);

  sub_1AB22F090(v8, v19, v20);
  v32 = *(a2 + 40);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FE0);
  v31 = &protocol witness table for PreferenceKey<A>;
  v29 = *(a2 + 40);
  v28[3] = MEMORY[0x1E69E6530];
  v28[0] = v18;
  v21 = off_1F1FF50F0;
  sub_1AB014A58(&v32, v27, &qword_1EB436FE0);
  type metadata accessor for LocalPreferences();
  result = v21(v28, &v29);
  v23 = v26;
  *v26 = v18;
  *(v23 + 8) = 0;
  return result;
}

uint64_t EventSequenceFieldProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v19 = v1[6];
  v20 = v1[5];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  if (!*(v10 + 16))
  {
  }

  v11 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v12 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v10 + 56) + 32 * v11, v21);

  result = swift_dynamicCast();
  if (result)
  {
    v21[0] = v3;
    v21[1] = v4;
    v21[2] = v5;
    v22 = v6;
    v23 = v7;
    v24 = v20;
    v25 = v19;
    v14 = sub_1AB22F504(v26, v27);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v22 = MEMORY[0x1E69E6530];
      v21[0] = v14;
      v17 = a1[3];
      v18 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 16))(v21, 0xD000000000000012, 0x80000001AB505100, v17, v18);
      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }
  }

  return result;
}

uint64_t sub_1AB22FC58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AB22FCA0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AB22FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v6 = v30;
  v7 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  v28 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v9._object = 0x80000001AB505180;
  v9._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = (a1 + *(type metadata accessor for JetPackAsset(0) + 28));
  v11 = *v10;
  v12 = v10[1];
  v27[3] = MEMORY[0x1E69E6158];
  v27[0] = v11;
  v27[1] = v12;
  sub_1AB01522C(v27, v23);
  v24 = 0u;
  v25 = 0u;

  sub_1AB0169C4(v23, &v24);
  v26 = 0;
  v13 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v28 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v24;
  v18 = v25;
  v16[64] = v26;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v28 = v13;
  sub_1AB014AC0(v27, &unk_1EB437E60);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v8 + 32) = v28;
  Logger.debug(_:)(v8, v6, v7);

  v20 = __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v21 = *(v3 + 16);
  MEMORY[0x1EEE9AC00](v20);

  os_unfair_lock_lock(v21 + 6);
  sub_1AB230D54(&v21[4]);
  os_unfair_lock_unlock(v21 + 6);

  return sub_1AB1A87A8(a1, a2);
}

uint64_t sub_1AB22FFBC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for JetPackAsset(0);
  v7 = (a2 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1AB1A87A8(a2, v5);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  return sub_1AB1CE34C(v5, v8, v9);
}

uint64_t sub_1AB2300C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v27 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB505150;
  v10._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v26[3] = MEMORY[0x1E69E6158];
  v26[0] = a1;
  v26[1] = a2;
  sub_1AB01522C(v26, v22);
  v23 = 0u;
  v24 = 0u;

  sub_1AB0169C4(v22, &v23);
  v25 = 0;
  v11 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
    v27 = v11;
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v23;
  v16 = v24;
  v14[64] = v25;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v27 = v11;
  sub_1AB014AC0(v26, &unk_1EB437E60);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v9 + 32) = v27;
  Logger.debug(_:)(v9, v7, v8);

  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v19 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v18);

  os_unfair_lock_lock((v19 + 24));
  sub_1AB230D38((v19 + 16), a3);
  os_unfair_lock_unlock((v19 + 24));
}

uint64_t sub_1AB23034C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1AB014DB4(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for JetPackAsset(0);
    v11 = *(v10 - 8);
    sub_1AB1A87A8(v9 + *(v11 + 72) * v8, a4);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for JetPackAsset(0);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1AB230468(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = sub_1AB014DB4(*(a2 + *(v7 + 28)), *(a2 + *(v7 + 28) + 8));
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v16 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB1D8D08();
      v12 = v16;
    }

    v13 = *(v7 - 8);
    sub_1AB065B84(*(v12 + 56) + *(v13 + 72) * v10, v6);
    sub_1AB19052C(v10, v12);
    *a1 = v12;
    (*(v13 + 56))(v6, 0, 1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  return sub_1AB014AC0(v6, &qword_1EB437E40);
}

size_t sub_1AB230630()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1AB1B00FC(v2[2], 0);
  v5 = *(type metadata accessor for JetPackAsset(0) - 8);
  sub_1AB1AFABC(&v9, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  v7 = v6;

  sub_1AB0309A4();
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v1 + 24));

  return v4;
}

uint64_t sub_1AB230748()
{
  v1 = v0;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v9 = MEMORY[0x1E69E6158];
  strcpy(v8, "Emptying cache");
  v8[15] = -18;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4(v8, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 24));

  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1AB2308E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return v6(a1);
}

uint64_t sub_1AB2309FC(uint64_t a1, uint64_t a2)
{
  sub_1AB22FD1C(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1AB230A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB2300C4(a2, a3, a1);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1AB230AD8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  *(swift_task_alloc() + 16) = a1;

  os_unfair_lock_lock((v3 + 24));
  sub_1AB230D1C((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1AB230BA4()
{
  sub_1AB230748();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB230C08()
{
  v1 = sub_1AB230630();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB230C6C(uint64_t a1, int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB2308E0(a1, a2);
}

id JSWeakReference.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  if (![a1 isObject])
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  result = [a1 context];
  if (result)
  {
    *(v2 + 16) = result;
    JSContextGetGroup([result JSGlobalContextRef]);
    [a1 JSValueRef];
    result = JSWeakCreate();
    if (result)
    {
      v4 = result;

      *(v2 + 24) = v4;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id JSWeakReference.init(_:)(void *a1)
{
  if (![a1 isObject])
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  result = [a1 context];
  if (result)
  {
    *(v1 + 16) = result;
    JSContextGetGroup([result JSGlobalContextRef]);
    [a1 JSValueRef];
    result = JSWeakCreate();
    if (result)
    {
      v4 = result;

      *(v1 + 24) = v4;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t JSWeakReference.deinit()
{
  JSContextGetGroup([*(v0 + 16) JSGlobalContextRef]);
  JSWeakRelease();

  return v0;
}

uint64_t JSWeakReference.__deallocating_deinit()
{
  JSContextGetGroup([*(v0 + 16) JSGlobalContextRef]);
  JSWeakRelease();

  return swift_deallocClassInstance();
}

id JSWeakReference.referent.getter()
{
  result = JSWeakGetObject();
  if (result)
  {
    return [objc_opt_self() valueWithJSValueRef:result inContext:*(v0 + 16)];
  }

  return result;
}

id sub_1AB231024()
{
  v1 = *v0;
  result = JSWeakGetObject();
  if (result)
  {
    return [objc_opt_self() valueWithJSValueRef:result inContext:*(v1 + 16)];
  }

  return result;
}

uint64_t sub_1AB2310D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AB232DAC(a3, v25 - v10);
  v12 = sub_1AB460BE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AB057E84(v11);
  }

  else
  {
    sub_1AB460BD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AB460AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AB460614() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BE8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1AB057E84(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AB057E84(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BE8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AB2313A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AB232DAC(a3, v25 - v10);
  v12 = sub_1AB460BE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AB057E84(v11);
  }

  else
  {
    sub_1AB460BD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AB460AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AB460614() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1AB057E84(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AB057E84(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AB231664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AB232DAC(a3, v25 - v10);
  v12 = sub_1AB460BE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AB057E84(v11);
  }

  else
  {
    sub_1AB460BD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AB460AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AB460614() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BE0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1AB057E84(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AB057E84(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BE0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id LocalizedStringTable.init(targetBundle:languageCodes:)@<X0>(void *a1@<X0>, Swift::OpaquePointer a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AB45FAA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LocalizedStringTable();
  *(a3 + v10[5]) = a1;
  v11 = (a3 + v10[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1;
  v13 = NSBundle.preferredLocalization(fromLanguageCodes:)(a2);

  v14 = [v12 localizations];

  v15 = sub_1AB460954();
  v24 = v13;
  v23 = &v24;
  LOBYTE(v14) = sub_1AB0A1064(sub_1AB232BD4, v22, v15);

  if (v14)
  {
    *(a3 + v10[7]) = v13;

    sub_1AB45F9F4();
  }

  else
  {

    sub_1AB45FA54();
    v16 = sub_1AB45FA04();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = (a3 + v10[7]);
    *v19 = v16;
    v19[1] = v18;
    sub_1AB45FA54();
  }

  type metadata accessor for LocalizedStringsCache();
  v20 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v20 + 16) = result;
  *(a3 + v10[8]) = v20;
  return result;
}

id LocalizedStringTable.init(targetBundle:table:languageCodes:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Swift::OpaquePointer a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AB45FAA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for LocalizedStringTable();
  *(a5 + v14[5]) = a1;
  v15 = (a5 + v14[6]);
  *v15 = a2;
  v15[1] = a3;
  v16 = a1;
  v17 = NSBundle.preferredLocalization(fromLanguageCodes:)(a4);

  v18 = [v16 localizations];

  v19 = sub_1AB460954();
  v28 = v17;
  v27 = &v28;
  LOBYTE(v18) = sub_1AB0A1064(sub_1AB2331B0, v26, v19);

  if (v18)
  {
    *(a5 + v14[7]) = v17;

    sub_1AB45F9F4();
  }

  else
  {

    sub_1AB45FA54();
    v20 = sub_1AB45FA04();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v23 = (a5 + v14[7]);
    *v23 = v20;
    v23[1] = v22;
    sub_1AB45FA54();
  }

  type metadata accessor for LocalizedStringsCache();
  v24 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v24 + 16) = result;
  *(a5 + v14[8]) = v24;
  return result;
}

id LocalizedStringTable.bundle.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocalizedStringTable() + 20));

  return v1;
}

uint64_t LocalizedStringTable.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45FAA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::String_optional __swiftcall LocalizedStringTable.localizedString(forKey:in:)(Swift::String forKey, Swift::String_optional in)
{
  object = in.value._object;
  countAndFlagsBits = in.value._countAndFlagsBits;
  v5 = forKey._object;
  v6 = forKey._countAndFlagsBits;
  v7 = *(v2 + *(type metadata accessor for LocalizedStringTable() + 32));
  v8 = *(v7 + 16);
  v9 = type metadata accessor for LocalizedStringsCache.Key();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
  *v11 = v6;
  v11[1] = v5;
  v12 = &v10[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
  *v12 = countAndFlagsBits;
  v12[1] = object;
  v28.receiver = v10;
  v28.super_class = v9;

  v13 = objc_msgSendSuper2(&v28, sel_init);
  v14 = [v8 objectForKey_];

  if (v14)
  {
    v15 = v14[2];
    v16 = v14[3];
  }

  else
  {
    v15 = sub_1AB2E6B1C(v6, v5, countAndFlagsBits, object);
    v16 = v17;
    v18 = *(v7 + 16);
    type metadata accessor for LocalizedStringsCache.Value();
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    v20 = objc_allocWithZone(v9);
    v21 = &v20[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
    *v21 = v6;
    v21[1] = v5;
    v22 = &v20[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
    *v22 = countAndFlagsBits;
    v22[1] = object;
    v27.receiver = v20;
    v27.super_class = v9;

    v23 = objc_msgSendSuper2(&v27, sel_init);
    [v18 setObject:v19 forKey:{v23, v27.receiver, v27.super_class, v28.receiver, v28.super_class}];
  }

  v24 = v15;
  v25 = v16;
  result.value._object = v25;
  result.value._countAndFlagsBits = v24;
  return result;
}

Swift::String_optional __swiftcall LocalizedStringTable.localizedString(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v4 = type metadata accessor for LocalizedStringTable();
  v5 = (v1 + *(v4 + 24));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v1 + *(v4 + 32));
  v9 = *(v8 + 16);
  v10 = type metadata accessor for LocalizedStringsCache.Key();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
  *v12 = countAndFlagsBits;
  v12[1] = object;
  v13 = &v11[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
  *v13 = v7;
  v13[1] = v6;
  v29.receiver = v11;
  v29.super_class = v10;

  v14 = objc_msgSendSuper2(&v29, sel_init);
  v15 = [v9 objectForKey_];

  if (v15)
  {
    v16 = v15[2];
    v17 = v15[3];
  }

  else
  {
    v16 = sub_1AB2E6B1C(countAndFlagsBits, object, v7, v6);
    v17 = v18;
    v19 = *(v8 + 16);
    type metadata accessor for LocalizedStringsCache.Value();
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v17;
    v21 = objc_allocWithZone(v10);
    v22 = &v21[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
    *v22 = countAndFlagsBits;
    v22[1] = object;
    v23 = &v21[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
    *v23 = v7;
    v23[1] = v6;
    v28.receiver = v21;
    v28.super_class = v10;

    v24 = objc_msgSendSuper2(&v28, sel_init);
    [v19 setObject:v20 forKey:{v24, v28.receiver, v28.super_class, v29.receiver, v29.super_class}];
  }

  v25 = v16;
  v26 = v17;
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_1AB232230()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v3 = (v1 + *(type metadata accessor for LocalizedStringTable() + 28));
  v4 = v3[1];
  *(v2 + 32) = *v3;
  *(v2 + 40) = v4;
  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t LocalizedStringTable.fetchStrings(withLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for LocalizedStringTable();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2323F4, 0, 0);
}

uint64_t sub_1AB2323F4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = (v1 + *(v0[12] + 28));
  if (*v4 == v2 && v4[1] == v3)
  {
LABEL_7:
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[13];
    v8 = v0[14];
    v10 = sub_1AB460BE4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1AB232BF0(v1, v7);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    sub_1AB0A9AEC(v7, v12 + v11);
    v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v13 = v2;
    v13[1] = v3;

    v14 = sub_1AB231664(0, 0, v6, &unk_1AB4E0528, v12);
    v0[17] = v14;
    v15 = swift_task_alloc();
    v0[18] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BE0);
    *v15 = v0;
    v15[1] = sub_1AB232674;
    v17 = MEMORY[0x1E69E73E0];
    v18 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 6, v14, v16, v17, v18);
  }

  if (sub_1AB461DA4())
  {
    v3 = v0[10];
    v1 = v0[11];
    v2 = v0[9];
    goto LABEL_7;
  }

  v20 = v0[9];
  v19 = v0[10];
  sub_1AB17DB30();
  swift_allocError();
  *v21 = v20;
  *(v21 + 8) = v19;
  *(v21 + 16) = 1;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1AB232674()
{

  return MEMORY[0x1EEE6DFA0](sub_1AB23278C, 0, 0);
}

uint64_t sub_1AB23278C()
{
  v10 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 56))
  {

    return swift_willThrowTypedImpl();
  }

  else
  {
    if (v1)
    {
      v3 = *(v0 + 64);
      *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
      *(v0 + 16) = v1;
      v9[3] = &type metadata for FoundationValue;
      v9[4] = &off_1F1FFB5A8;
      v9[0] = swift_allocObject();
      sub_1AB014B78((v0 + 16), (v9[0] + 16));
      v3[3] = &type metadata for LocalizedStringsJSONObject;
      v3[4] = &off_1F20048D8;
      v4 = swift_allocObject();
      *v3 = v4;
      sub_1AB29F608(v9, v4 + 16);
    }

    else
    {
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      sub_1AB17DB30();
      swift_allocError();
      *v7 = v6;
      *(v7 + 8) = v5;
      *(v7 + 16) = 1;
      swift_willThrow();
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1AB232950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB232974, 0, 0);
}

uint64_t sub_1AB232974()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + *(type metadata accessor for LocalizedStringTable() + 20));
  v4 = sub_1AB460514();
  v5 = [v3 localizedStringsForTable:0 localization:v4];

  v6 = sub_1AB4602F4();
  *v2 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB232A4C(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB232A6C, 0, 0);
}

uint64_t sub_1AB232A6C()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v4 = (v2 + *(v1 + 28));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_1AB232B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return LocalizedStringTable.fetchStrings(withLanguage:)(a1, a2, a3);
}

uint64_t sub_1AB232BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringTable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB232C54(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalizedStringTable() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027460;

  return sub_1AB232950(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1AB232DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB232E1C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1AB232F10;

  return v5(v2 + 16);
}

uint64_t sub_1AB232F10()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1AB233040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB232E1C(a1, v4);
}

uint64_t sub_1AB2330F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB232E1C(a1, v4);
}

uint64_t JetPackSandboxExtensionFileStreamSource.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1AB18D714(v4, v5, v6, v7, v8);
}

uint64_t JetPackSandboxExtensionFileStreamSource.cacheKey.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t JetPackSandboxExtensionFileStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);

  v1 = sub_1AB460514();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1AB23337C();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;

  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

unint64_t sub_1AB23337C()
{
  result = qword_1EB438BF0;
  if (!qword_1EB438BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BF0);
  }

  return result;
}

uint64_t sub_1AB2333D4@<X0>(uint64_t a1@<X8>)
{
  sub_1AB45F634();
  v2 = sub_1AB45F764();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1AB233448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  v5 = sub_1AB45F764();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB233508, 0, 0);
}

uint64_t sub_1AB233508()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  sub_1AB45F634();
  v5 = sub_1AB45F644();
  v7 = v6;
  v0[37] = v5;
  v0[38] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 96);
  v0[39] = v8;
  v9 = *(v4 + 104);
  v0[40] = v9;
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_1AB233618;

  return (sub_1AB2E23F0)(v8, v9, v5, v7);
}

uint64_t sub_1AB233618()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB23375C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB23375C()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  sub_1AB4622E4();
  v3 = *(v0 + 40);
  v25 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v26 = sub_1AB0168A8(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB5051E0;
  v5._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  sub_1AB01522C(v0 + 136, v0 + 168);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1AB0169C4(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v7 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 56);
  v14 = *(v0 + 72);
  v12[64] = *(v0 + 88);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB0167A8(v0 + 136);
  v15._countAndFlagsBits = 0x4E656C6966202C20;
  v15._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 224) = v6;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  sub_1AB01522C(v0 + 200, v0 + 232);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1AB0169C4(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v7);
  }

  v18 = *(v0 + 336);
  *(v7 + 2) = v17 + 1;
  v19 = &v7[40 * v17];
  v20 = *(v0 + 96);
  v21 = *(v0 + 112);
  v19[64] = *(v0 + 128);
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  sub_1AB0167A8(v0 + 200);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v4 + 32) = v7;
  Logger.error(_:)(v4, v3, v25);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v23 = *(v0 + 8);

  return v23();
}