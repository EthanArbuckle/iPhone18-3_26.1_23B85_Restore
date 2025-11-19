void _LNMetadataProviderDirect.entityIdentifiers(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();

  v1 = v0;
  OUTLINED_FUNCTION_7_6();
  sub_197697F58();
}

id sub_1976A2928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = sub_19774EF50();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  a5(v7, v9);

  sub_19774F110();
  OUTLINED_FUNCTION_73_0();

  return 0;
}

id _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)()
{
  OUTLINED_FUNCTION_53_1();
  v4 = v1;
  OUTLINED_FUNCTION_30_2();

  v5 = OUTLINED_FUNCTION_66_0();
  return sub_19769AF6C(v5, v6, v3, v2, v0);
}

id sub_1976A2AC0@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA8, &unk_19775DF90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  result = sub_1976731F8(1, (v19 - v9));
  if (!v3)
  {
    v13 = type metadata accessor for LNBundleRecord();
    if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
    {
      result = sub_197665DE0(v10, &qword_1EAF3FEA8, &unk_19775DF90);
      if (a2)
      {
        v14 = sub_19774EF50();
        v16 = v15;
        v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        result = sub_1976A4DDC(v14, v16, 9004, 0);
        v18 = 0;
        *a2 = result;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = *&v10[*(v13 + 32)];
      result = sub_1976A79B4(v10, type metadata accessor for LNBundleRecord);
    }

    *a3 = v18;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v5 = v1;

  v6 = OUTLINED_FUNCTION_12_4();
  v8 = sub_19769B540(v6, v7, countAndFlagsBits, object);
  if (!v2 && !v9)
  {
    v10 = sub_19774EF50();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD20, &qword_19775DCB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A780;
    v14 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_19774EF50();
    *(inited + 40) = v15;
    sub_19774F5B0();
    MEMORY[0x19A8E4C40](0xD000000000000037, 0x8000000197761830);
    MEMORY[0x19A8E4C40](countAndFlagsBits, object);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v16 = sub_19774EE40();
    objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v10, v12, 9004, v16);
    v8 = OUTLINED_FUNCTION_49_1();
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void _LNMetadataProviderDirect.examplePhrases(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_19764A2F4();
}

uint64_t sub_1976A2F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  sub_19765F4F4(v26);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_0Tm(v26, v27);
  if (qword_1EAF3EE18 != -1)
  {
    swift_once();
  }

  *&v23 = a2;
  *(&v23 + 1) = a3;
  v11 = sub_1976B7FC0();
  v13 = v12;
  v15 = v14;
  v24 = v9;
  v25 = v10;
  __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_1976C2388(v11, v13, v15, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(v26);
  sub_19764C774(&v23, v26);
  v16 = sub_19765FA68(v26);
  result = __swift_destroy_boxed_opaque_existential_0(v26);
  if (!v4)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v26[0] = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v19 = 48;
      do
      {
        v20 = *(v16 + v19);
        sub_19774F650();
        v21 = *(v26[0] + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v19 += 24;
        --v18;
      }

      while (v18);

      v22 = v26[0];
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    *a4 = v22;
  }

  return result;
}

void _LNMetadataProviderDirect.suggestionPhrases(forQueries:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_12_4();
  sub_19769BB84();
}

uint64_t sub_1976A31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  result = sub_1976664D4(a2);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = result;
    if (qword_1EAF3F428 != -1)
    {
LABEL_31:
      swift_once();
    }

    v9 = sub_19774ED60();
    __swift_project_value_buffer(v9, qword_1EAF43E18);

    v10 = sub_19774ED40();
    v11 = sub_19774F2A0();
    v50 = a3;
    v51 = isUniquelyReferenced_nonNull_native;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 134218242;
      *(v12 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

      *(v12 + 12) = 2080;
      v14 = *(isUniquelyReferenced_nonNull_native + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v48 = v13;
        v49 = v11;
        v52 = v10;
        v54 = MEMORY[0x1E69E7CC0];
        sub_19764AD60(0, v14, 0);
        v15 = v54;
        v16 = (isUniquelyReferenced_nonNull_native + 40);
        do
        {
          v17 = *v16;
          v18 = *(v16 - 1);
          v19 = v17;
          v20 = [v19 phrase];
          v21 = [v20 key];

          v22 = sub_19774EF50();
          v24 = v23;

          v26 = *(v54 + 16);
          v25 = *(v54 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_19764AD60((v25 > 1), v26 + 1, 1);
          }

          *(v54 + 16) = v26 + 1;
          v27 = v54 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          v16 += 2;
          --v14;
        }

        while (v14);
        isUniquelyReferenced_nonNull_native = v51;
        v10 = v52;
        v11 = v49;
        v13 = v48;
      }

      v28 = MEMORY[0x19A8E4D60](v15, MEMORY[0x1E69E6158]);
      v30 = v29;

      a3 = sub_19768ED3C(v28, v30, &v55);

      *(v12 + 14) = a3;
      _os_log_impl(&dword_19763D000, v10, v11, "retrieved - suggestionPhrases - count - %ld with template keys - %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8E67F0](v13, -1, -1);
      MEMORY[0x19A8E67F0](v12, -1, -1);
    }

    else
    {
    }

    v31 = 0;
    v32 = MEMORY[0x1E69E7CC8];
    v53 = *(isUniquelyReferenced_nonNull_native + 16);
    for (i = (isUniquelyReferenced_nonNull_native + 40); ; i += 2)
    {
      if (v53 == v31)
      {

        *v50 = v32;
        return result;
      }

      if (v31 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v34 = *i;
      a3 = *(i - 1);
      v35 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v32;
      v36 = sub_19768F430();
      if (__OFADD__(v32[2], (v37 & 1) == 0))
      {
        goto LABEL_29;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE98, &unk_19775DF80);
      if ((sub_19774F6F0() & 1) == 0)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = sub_197648238(0, &qword_1EAF3FE00, 0x1E69AC6E8);
      v32 = v55;
      v40 = sub_19768F430();
      if ((v39 & 1) != (v41 & 1))
      {
        result = sub_19774F8A0();
        __break(1u);
        return result;
      }

      v38 = v40;
      if ((v39 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      v46 = (v32[7] + 8 * v38);
      v47 = v35;
      MEMORY[0x19A8E4D30]();
      if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19774F140();
      }

      sub_19774F170();

      ++v31;
      isUniquelyReferenced_nonNull_native = v51;
    }

    v32 = v55;
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_21:
    v32[(v38 >> 6) + 8] |= 1 << v38;
    *(v32[6] + 8 * v38) = a3;
    *(v32[7] + 8 * v38) = MEMORY[0x1E69E7CC0];
    v42 = v32[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_30;
    }

    v32[2] = v44;
    v45 = a3;
    goto LABEL_23;
  }

  return result;
}

id _LNMetadataProviderDirect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _LNMetadataProviderDirect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1976A3850(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 72;
  v3 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  v26 = a1 + 72;
  while (2)
  {
    for (i = (v2 + 48 * v1); ; i += 6)
    {
      if (v4 == v1)
      {
        return v3;
      }

      if (v1 >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v1, 1))
      {
        goto LABEL_19;
      }

      v27 = v1 + 1;
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 4);

      v11 = sub_19774EF20();
      v12 = [objc_opt_self() protocolOrNilWithIdentifier_];

      if (v12)
      {
        break;
      }

      ++v1;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_19768F47C();
    if (__OFADD__(v3[2], (v14 & 1) == 0))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF60, &unk_19775E150);
    if ((sub_19774F6F0() & 1) == 0)
    {
      goto LABEL_12;
    }

    v17 = sub_19768F47C();
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
LABEL_12:
      if (v16)
      {
        v19 = (v3[7] + 16 * v15);
        v20 = v19[1];
        *v19 = v7;
        v19[1] = v6;

LABEL_16:
        v2 = v26;
        v1 = v27;
        continue;
      }

      v3[(v15 >> 6) + 8] |= 1 << v15;
      *(v3[6] + 8 * v15) = v12;
      v21 = (v3[7] + 16 * v15);
      *v21 = v7;
      v21[1] = v6;

      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        v3[2] = v24;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    break;
  }

  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

void sub_1976A3AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (**a6)(void, void, void))
{
  v15 = 0;
  v16 = 0;
  v11 = a5;

  sub_19769602C(v11, v11, a1, a2, &v16, &v15, a3, a4);
  v12 = v15;
  if (v16)
  {
    sub_197648238(0, &qword_1ED696EF8, off_1E74AF338);
    v13 = sub_19774F110();
    if (v12)
    {
LABEL_3:
      v14 = sub_19774E9E0();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  (a6)[2](a6, v13, v14);

  _Block_release(a6);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forBundleIdentifier:localeIdentifier:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = v5;

  v12 = OUTLINED_FUNCTION_66_0();
  v16 = sub_19769602C(v12, v13, a1, a2, v14, v15, a3, a4);
  v24 = OUTLINED_FUNCTION_75_1(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, 0, 0);
  a5(v24);
}

void sub_1976A3D70(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v11 = 0;
  v12 = 0;
  v7 = a3;

  sub_1976969FC(v7, v7, a1, a2, &v11, &v12);
  v8 = v11;
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
    v9 = sub_19774EE20();
    if (v8)
    {
LABEL_3:
      v10 = sub_19774E9E0();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  (a4)[2](a4, v9, v10);

  _Block_release(a4);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:completion:)()
{
  OUTLINED_FUNCTION_53_1();
  v4 = v1;
  OUTLINED_FUNCTION_30_2();

  v5 = OUTLINED_FUNCTION_66_0();
  sub_1976969FC(v5, v6, v3, v2, v7, v8);
  v17 = OUTLINED_FUNCTION_75_1(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, 0, 0);
  v0(v17);
}

void sub_1976A3F3C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t *a5)
{
  v8 = sub_197648648(a2, a3, *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection));
  if (v5)
  {

LABEL_3:
    v9 = sub_19774EC60();
    sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69AC0C8], v9);
    v12 = *a4;
    *a4 = v10;

    return;
  }

  v13 = v8;
  if (!v8)
  {
    goto LABEL_3;
  }

  v36 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE80, &qword_19775DF68);
  v14 = sub_19774F740();
  v15 = 0;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v37 = v14 + 64;
  v38 = v14;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_14:
      v24 = v21 | (v15 << 6);
      v25 = v13;
      v26 = (*(v13 + 48) + 16 * v24);
      v27 = v26[1];
      v39 = *v26;
      v28 = *(*(v13 + 56) + 8 * v24);

      v29 = sub_19765213C(1000, v28);

      v14 = v38;
      *(v37 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = (v38[6] + 16 * v24);
      *v30 = v39;
      v30[1] = v27;
      *(v38[7] + 8 * v24) = v29;
      v31 = v38[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v38[2] = v33;
      v13 = v25;
      if (!v19)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        v34 = v14;

        v35 = *v36;
        *v36 = v34;

        return;
      }

      v23 = *(v16 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void _LNMetadataProviderDirect.properties(forIdentifiers:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_12_4();
  sub_19769BB84();
}

uint64_t sub_1976A42AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v5 = sub_19774EBF0();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LNAppShortcutParameterRecord();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE70, &unk_19775AAB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v51 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  v22 = v67;
  v23 = sub_19766F900(a2);
  if (v22)
  {

    v24 = sub_19774EC60();
    sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AC0C8], v24);
    return swift_willThrow();
  }

  else
  {
    v57 = v5;
    v66 = v14;
    v67 = v20;
    v61 = v18;
    v65 = *(v23 + 16);
    if (v65)
    {
      v56 = v8;
      v51[1] = 0;
      v27 = 0;
      v64 = v23 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v60 = (v52 + 16);
      v28 = MEMORY[0x1E69E7CC8];
      v53 = v9;
      v54 = (v52 + 8);
      v29 = v61;
      v30 = v58;
      v55 = v12;
      v63 = v23;
      while (v27 < *(v23 + 16))
      {
        v31 = v67;
        v32 = *(v66 + 72);
        sub_1976476C8();
        sub_1976476C8();
        if (__swift_getEnumTagSinglePayload(v29, 1, v9) == 1)
        {
          sub_197665DE0(v31, &qword_1EAF3FE70, &unk_19775AAB8);
          sub_197665DE0(v29, &qword_1EAF3FE70, &unk_19775AAB8);
        }

        else
        {
          sub_1976A7908();
          v33 = v56;
          v34 = v57;
          v59 = *v60;
          v59(v56, v12);
          v62 = *&v12[*(v9 + 36)];
          swift_isUniquelyReferenced_nonNull_native();
          v68 = v28;
          v35 = sub_19768F4C8();
          if (__OFADD__(v28[2], (v36 & 1) == 0))
          {
            goto LABEL_24;
          }

          v37 = v35;
          v38 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE78, &qword_19775DF60);
          if (sub_19774F6F0())
          {
            v39 = v33;
            v40 = sub_19768F4C8();
            v42 = v34;
            if ((v38 & 1) != (v41 & 1))
            {
              goto LABEL_26;
            }

            v37 = v40;
          }

          else
          {
            v42 = v34;
            v39 = v33;
          }

          v29 = v61;
          v28 = v68;
          if (v38)
          {
            v43 = v68[7];
            v44 = *(v43 + 8 * v37);
            *(v43 + 8 * v37) = v62;
            v45 = v42;

            (*v54)(v39, v45);
            v12 = v55;
            sub_1976A79B4(v55, type metadata accessor for LNAppShortcutParameterRecord);
            sub_197665DE0(v67, &qword_1EAF3FE70, &unk_19775AAB8);
          }

          else
          {
            v68[(v37 >> 6) + 8] |= 1 << v37;
            v46 = v52;
            v47 = v42;
            (v59)(v28[6] + *(v52 + 72) * v37, v39, v42);
            *(v28[7] + 8 * v37) = v62;
            (*(v46 + 8))(v39, v47);
            v12 = v55;
            sub_1976A79B4(v55, type metadata accessor for LNAppShortcutParameterRecord);
            sub_197665DE0(v67, &qword_1EAF3FE70, &unk_19775AAB8);
            v48 = v28[2];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_25;
            }

            v28[2] = v50;
            v29 = v61;
          }

          v30 = v58;
          v9 = v53;
        }

        v23 = v63;
        if (v65 == ++v27)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_19774F8A0();
      __break(1u);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC8];
      v30 = v58;
LABEL_21:
      *v30 = v28;
    }
  }

  return result;
}

uint64_t sub_1976A4A08()
{
  OUTLINED_FUNCTION_18_0();
  v0 = sub_19774EC60();
  sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
  OUTLINED_FUNCTION_79_0();
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E69AC0C0], v0);
  swift_willThrow();
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1976A4B84(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_19774EF50();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1976A4C3C;

  return _LNMetadataProviderDirect.diagnoseBundleIdentifier(_:)();
}

uint64_t sub_1976A4C3C()
{
  v2 = v0;
  OUTLINED_FUNCTION_12_1();
  v4 = v3;
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_19774E9E0();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = sub_19774EF20();

    v10 = 0;
    v12 = v11;
  }

  v13 = v4[3];
  v13[2](v13, v11, v10);

  _Block_release(v13);
  OUTLINED_FUNCTION_17();

  return v14();
}

id sub_1976A4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_19774EF20();

  if (a4)
  {
    v8 = sub_19774EE20();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_1976A4E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_19774EF20();

  v8 = sub_19774EB10();
  v9 = [v4 initWithBundleIdentifier:v7 installIdentifier:v8];

  sub_197652DCC(a3, a4);
  return v9;
}

id sub_1976A4F18()
{
  sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
  v1 = sub_19774EE20();

  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);
  v2 = sub_19774EE20();

  v3 = [v0 initWithActions:v1 systemProtocolDefaults:v2];

  return v3;
}

uint64_t sub_1976A5018(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1976A7DA0;

  return v7();
}

uint64_t sub_1976A5100(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1976A51E8;

  return v8();
}

uint64_t sub_1976A51E8()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1976A52C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FDE8, &qword_19775DEE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1976476C8();
  v13 = sub_19774F1C0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_197665DE0(v12, &qword_1EAF3FDE8, &qword_19775DEE0);
  }

  else
  {
    sub_19774F1B0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_19774F1A0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19774EFD0() + 32;
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

      sub_197665DE0(a3, &qword_1EAF3FDE8, &qword_19775DEE0);

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

  sub_197665DE0(a3, &qword_1EAF3FDE8, &qword_19775DEE0);
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

uint64_t sub_1976A55A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1976A569C;

  return v7(a1);
}

uint64_t sub_1976A569C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1976A5794()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1976A57DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1976A585C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for LNActionRecord(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for LNActionRecord();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

char *sub_1976A5930(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

void *sub_1976A5958(void *a1, int64_t a2, char a3)
{
  result = sub_1976A59F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1976A5978(void *a1, int64_t a2, char a3)
{
  result = sub_1976A5B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1976A5998(size_t a1, int64_t a2, char a3)
{
  result = sub_1976A5C60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1976A59B8(char *a1, int64_t a2, char a3)
{
  result = sub_1976A5E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1976A59D8(char *a1, int64_t a2, char a3)
{
  result = sub_1976A5F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1976A59F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1976A5B30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF10, &qword_19775E130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF18, &qword_19775E138);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1976A5C60(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF00, &unk_19775E120);
  v10 = *(type metadata accessor for LNActionRecord() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LNActionRecord() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1976A585C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1976A5E14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEE8, &qword_19775E108);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

char *sub_1976A5F2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF0, &qword_19775DBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1976A602C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF70, &unk_19775E160);
  v38 = a2;
  result = sub_19774F750();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_19766417C(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_19774F930();
    sub_19774EFF0();
    result = sub_19774F950();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1976A62D0(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_19774F500())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_19774F4C0();
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    sub_197665D90(&qword_1EAF3F7A0, &unk_1ED696D80, 0x1E69AC858);
    sub_19774F210();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_197651EE4();
      return;
    }

    while (1)
    {
      v18 = sub_1976A6B28(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_19774F530())
      {
        sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1976A6508(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v70 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_52;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_19774F4C0();
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    sub_197665D90(&qword_1EAF3F7A0, &unk_1ED696D80, 0x1E69AC858);
    sub_19774F210();
    v5 = v65;
    v6 = v66;
    v7 = v67;
    v8 = v68;
    v9 = v69;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v7 = v11;
    v8 = 0;
  }

  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v51 = v7;
  v14 = (v7 + 64) >> 6;
  v57 = (v4 + 56);
  v64 = v9;
  v53 = v6;
  v54 = v14;
  if (v5 < 0)
  {
LABEL_17:
    v19 = sub_19774F530();
    if (!v19)
    {
      goto LABEL_51;
    }

    v58 = v19;
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    swift_dynamicCast();
    v2 = v59;
    v15 = v8;
    v56 = v9;
    if (!v59)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (v9)
    {
LABEL_14:
      v3 = ((v16 - 1) & v16);
      v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      v18 = v2;
      v15 = v17;
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_55;
        }

        if (v17 >= v14)
        {
          break;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v3 = 0;
    }

    v60 = v5;
    v61 = v6;
    v62 = v51;
    v63 = v15;
    v56 = v3;
    v64 = v3;
    if (!v2)
    {
      goto LABEL_51;
    }
  }

  v20 = *(v4 + 40);
  v21 = v2;
  v22 = sub_19774F3F0();
  v55 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v22 & v55;
    v6 = (v22 & v55) >> 6;
    v14 = 1 << (v22 & v55);
    if ((v14 & v57[v6]) == 0)
    {

      v8 = v15;
      v9 = v56;
      v6 = v53;
      v14 = v54;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    v3 = *(*(v4 + 48) + 8 * v8);
    v2 = sub_19774F400();

    if (v2)
    {
      break;
    }

    v22 = v8 + 1;
  }

  v24 = *(v4 + 32);
  v48 = ((1 << v24) + 63) >> 6;
  v2 = 8 * v48;
  v3 = v54;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v49 = &v47;
    MEMORY[0x1EEE9AC00](v23);
    v25 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v57, v2);
    v47 = 0;
    v26 = *&v25[8 * v6] & ~v14;
    v27 = *(v4 + 16);
    v55 = v25;
    *&v25[8 * v6] = v26;
    v28 = v27 - 1;
    v29 = v53;
    v6 = v56;
    v52 = v5;
    while (1)
    {
      v50 = v28;
LABEL_29:
      if (v5 < 0)
      {
        v34 = sub_19774F530();
        if (!v34)
        {
          goto LABEL_50;
        }

        v58 = v34;
        swift_dynamicCast();
        v32 = v59;
        if (!v59)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      if (!v6)
      {
        break;
      }

LABEL_35:
      v31 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v32 = *(*(v5 + 48) + ((v15 << 9) | (8 * v31)));
      v33 = v32;
LABEL_36:
      v60 = v5;
      v61 = v29;
      v62 = v51;
      v63 = v15;
      v64 = v6;
      if (!v32)
      {
LABEL_50:
        v4 = sub_1976A6F74(v55, v48, v50, v4);
        goto LABEL_51;
      }

LABEL_40:
      v56 = v6;
      v35 = *(v4 + 40);
      v2 = v32;
      v36 = sub_19774F3F0();
      v37 = v4;
      v8 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v8;
        v39 = (v36 & v8) >> 6;
        v40 = 1 << (v36 & v8);
        if ((v40 & v57[v39]) == 0)
        {

          v4 = v37;
          v5 = v52;
          v29 = v53;
          v3 = v54;
          v6 = v56;
          goto LABEL_29;
        }

        v14 = *(*(v37 + 48) + 8 * v38);
        v2 = sub_19774F400();

        v36 = v38 + 1;
      }

      while ((v2 & 1) == 0);

      v3 = v54;
      v41 = *(v55 + 8 * v39);
      *(v55 + 8 * v39) = v41 & ~v40;
      v42 = (v41 & v40) == 0;
      v4 = v37;
      v5 = v52;
      v29 = v53;
      v6 = v56;
      if (v42)
      {
        goto LABEL_29;
      }

      v28 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
        __break(1u);
      }

      if (v50 == 1)
      {

        v4 = MEMORY[0x1E69E7CD0];
        goto LABEL_51;
      }
    }

    while (1)
    {
      v30 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v30 >= v3)
      {
        v32 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v29 + 8 * v30);
      ++v15;
      if (v6)
      {
        v15 = v30;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = swift_slowAlloc();
  v46 = sub_1976A6EEC(v45, v48, v57, v48, v4, v8, &v60);

  MEMORY[0x19A8E67F0](v45, -1, -1);
  v4 = v46;
LABEL_51:
  sub_197651EE4();
LABEL_52:
  v43 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1976A6B28(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    v9 = *(v4 + 40);
    v10 = sub_19774F3F0();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_19774F400();

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19766553C();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v12);
        sub_1976A72BC(v12);
        *v2 = v19;
        return v8;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = sub_19774F540();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1976A7160();

  return v8;
}

void sub_1976A6CA8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_19774F530())
      {
        goto LABEL_25;
      }

      sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
      swift_dynamicCast();
      v13 = v30;
      if (!v30)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1976A6F74(a1, a2, v27, a3);
      return;
    }

LABEL_15:
    v16 = *(a3 + 40);
    v17 = sub_19774F3F0();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
      v22 = *(*(a3 + 48) + 8 * v19);
      v23 = sub_19774F400();

      v17 = v19 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = a1[v20];
    a1[v20] = v24 & ~v21;
    v25 = (v24 & v21) == 0;
    v5 = a5;
    if (v25)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_27;
    }

    if (v27 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1976A6EEC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1976A6CA8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1976A6F74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F798, &qword_19775A908);
  result = sub_19774F590();
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
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_19774F3F0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1976A7160()
{
  v1 = *v0;

  v2 = sub_19774F500();
  v3 = swift_unknownObjectRetain();
  v4 = sub_197664948(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_19774F3F0();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = sub_19774F400();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_1976A72BC(v8);
      if (sub_19774F400())
      {
        *v13 = v14;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1976A72BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_19774F490();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_19774F3F0();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1976A7450(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19774EF50();

  return v3;
}

uint64_t sub_1976A7518()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1976A51E8;
  v6 = OUTLINED_FUNCTION_33_3();

  return v7(v6, v3, v4);
}

uint64_t sub_1976A75C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1976A7DA0;
  v7 = OUTLINED_FUNCTION_33_3();

  return v8(v7, v3, v5, v4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1976A76C0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_52_1(v7);
  *v8 = v9;
  v8[1] = sub_1976A7DA0;

  return sub_1976A5100(a1, v3, v4, v6);
}

uint64_t sub_1976A7784()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_34_3(v4);

  return v7(v6);
}

uint64_t sub_1976A7818()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_34_3(v4);

  return v7(v6);
}

uint64_t sub_1976A78AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_79_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1976A7908()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_34_0();
  v6(v5);
  return v0;
}

uint64_t sub_1976A79B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1976A7A0C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1976A7A50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1976A7AD4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_34_0();
  v6(v5);
  return v0;
}

void *sub_1976A7B2C(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976A7C84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19768F2FC() & 1;
}

unint64_t sub_1976A7CC8()
{
  result = qword_1ED6972C8;
  if (!qword_1ED6972C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF3FF30, &unk_19775A950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6972C8);
  }

  return result;
}

uint64_t sub_1976A7D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_20_3(uint64_t a1, uint64_t a2)
{

  return sub_1976A4DDC(a1, a2, 9006, 0);
}

void OUTLINED_FUNCTION_29_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x19A8E67F0);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_61_1()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

void OUTLINED_FUNCTION_70_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_72_0()
{
  *(v1 - 112) = v0;

  return v0;
}

void OUTLINED_FUNCTION_84_0()
{
}

id OUTLINED_FUNCTION_85_0()
{
  *(v1 - 104) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_86_1()
{
  v2 = *(v0 - 104);
}

BOOL OUTLINED_FUNCTION_89_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return sub_19774ED70();
}

uint64_t sub_1976A7FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1976A8050(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_1976A80A0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_1976A80D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_19765D63C(a1, &v12 - v8);
  v10 = sub_19774EAD0();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_19774EA60();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (a2)
  {
    a2 = sub_19774E9E0();
  }

  (*(a3 + 16))(a3, v11, a2);
}

uint64_t sub_1976A81FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_19774EA90();
    v12 = sub_19774EAD0();
    v13 = 0;
  }

  else
  {
    v12 = sub_19774EAD0();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_19765D558(v9);
}

void sub_1976A82FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v7[5] = a1;
  v11[4] = sub_1976A8E24;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1976A7FD0;
  v11[3] = &block_descriptor_18_2;
  v8 = _Block_copy(v11);

  v9 = v3;
  v10 = a1;

  [v9 getConnectionInterfaceWithOptions:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_1976A83FC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, void *a5, void *a6)
{
  v12 = sub_19774EBF0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v20 = [a5 queue];
    v21 = swift_allocObject();
    *(v21 + 16) = "appintent:fetch entity url";
    *(v21 + 24) = 26;
    *(v21 + 32) = 2;
    *(v21 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNFetchEntityURLOperation());
    v22 = a6;

    v23 = sub_1976A86B4(v15, a1, 1, v20, sub_197669C04, v21, v22, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v24);
    a3(v19, a2);
    sub_19765D558(v19);
  }
}

id sub_1976A86B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = &v10[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_entity] = a7;
  *v16 = a8;
  *(v16 + 1) = a9;
  v17 = a7;

  v18 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_24_1;
  v19 = _Block_copy(aBlock);

  v24.receiver = v10;
  v24.super_class = type metadata accessor for LNFetchEntityURLOperation();
  v20 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v18, a2, a3, a4, v19);
  _Block_release(v19);

  swift_unknownObjectRelease();

  v21 = sub_19774EBF0();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_1976A8854()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LNFetchEntityURLOperation();
  objc_msgSendSuper2(&v8, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_entity];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_1976A8E00;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1976A81FC;
  v7[3] = &block_descriptor_12;
  v4 = _Block_copy(v7);
  v5 = v2;
  v6 = v0;

  [v1 fetchEntityURL:v5 completionHandler:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_1976A89D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  if (v6)
  {
    v8 = v5[1];

    v6(a1, a2);
    sub_197672948(v6);
    v9 = *v5;
    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_197672948(v9);
  }

  if (a2)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LNFetchEntityURLOperation();
  objc_msgSendSuper2(&v12, sel_finishWithError_, v11);
}

void sub_1976A8A9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = &v1[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  v9 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  if (v9)
  {
    v10 = v8[1];
    v11 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);

    v9(v7, a1);
    sub_197672948(v9);
    sub_19765D558(v7);
    v12 = *v8;
    v13 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_197672948(v12);
  }

  if (a1)
  {
    v14 = sub_19774E9E0();
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for LNFetchEntityURLOperation();
  v16.receiver = v2;
  v16.super_class = v15;
  objc_msgSendSuper2(&v16, sel_finishWithError_, v14);
}

id sub_1976A8D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNFetchEntityURLOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1976A8E68@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1976A8E74@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1976A8EBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = sub_197652CC0();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1976A8F14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1976A8F40@<X0>(uint64_t *a1@<X8>)
{
  result = j__swift_bridgeObjectRetain(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_1976A8F90())()
{
  OUTLINED_FUNCTION_27();
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_1976A900C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976A8FE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1976A903C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976A8FF4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1976A9080(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1976A90DC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*sub_1976A913C())()
{
  OUTLINED_FUNCTION_27();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1976A91A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1976A9200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19775A780;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v0 + 64) = &off_1F0BBB748;
  *(v0 + 32) = 42;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  return 0;
}

uint64_t sub_1976A92E4()
{
  v0 = sub_19774F380();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_0();
  v5 = v4 - v3;
  v6 = sub_19774EDA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_8_0();
  v8 = sub_19774F350();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_0();
  sub_19764665C();
  sub_1976466A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC8, qword_19775E1E0);
  sub_1976466F8();
  sub_19774F470();
  sub_19774ED90();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  return sub_19774F3A0();
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_1EAF3FFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EAF3FFD0);
    }
  }
}

uint64_t sub_1976A956C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  sub_197649C34();
  sub_1976A9860(0x454C424154, 0xE500000000000000, v6, a1);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v6);
}

uint64_t sub_1976A9860(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  *&v27 = 0x20504F5244;
  *(&v27 + 1) = 0xE500000000000000;
  MEMORY[0x19A8E4C40](a1, a2);
  v9 = v27;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v9;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  if (a4)
  {
    v11 = xmmword_19775E3C0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = &off_1F0BBB748;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0uLL;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v13;
  *(inited + 72) = v11;
  *(inited + 88) = v12;
  sub_19764E1F4(a3, inited + 112);
  v14 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_197647660(inited + i, &v27, &qword_1EAF3FFE0, &qword_19775E430);
    v24[0] = v27;
    v24[1] = v28;
    v25 = v29;
    if (*(&v28 + 1))
    {
      sub_19764C774(v24, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v14[2] + 1, 1, v14, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v14 = v18;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        sub_19764F2F8(v16 > 1, v17 + 1, 1, v14, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v14 = v19;
      }

      v14[2] = v17 + 1;
      sub_19764C774(v26, &v14[5 * v17 + 4]);
    }

    else
    {
      sub_19764CAE4(v24, &qword_1EAF3FFE0, &qword_19775E430);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v14, &v27);

  v20 = *(&v28 + 1);
  v21 = v29;
  __swift_project_boxed_opaque_existential_0Tm(&v27, *(&v28 + 1));
  v22 = sub_1976C73F8(v20, v21);
  __swift_destroy_boxed_opaque_existential_0(&v27);
  return v22;
}

void sub_1976A9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v58 = v55;
  v60 = v59;
  v102 = v61;
  v103 = v62;
  v64 = v63;
  type metadata accessor for TableBuilder();
  v65 = swift_allocObject();
  *(v65 + 16) = MEMORY[0x1E69E7CC0];
  v66 = (v65 + 16);
  v60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v68 = *(v55 + 16);
  v69 = *(v58 + 24);
  v70 = *(v58 + 32);
  v71 = *(v58 + 40);
  v72 = *(v58 + 56);
  v73 = *(v58 + 64);
  swift_bridgeObjectRetain_n();

  if (v71)
  {

    v68 = v70;
    v69 = v71;
  }

  sub_19764E750(v68, v69, v73 & 1, &a21);

  if (v64)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  sub_1976A9EAC(0x454C424154, 0xE500000000000000, &a21, v74, v102 & 1, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a21);
  swift_beginAccess();
  v75 = *v66;

  sub_197649FEC(v76, &a21);

  v77 = __swift_project_boxed_opaque_existential_0Tm(&a21, *(&a22 + 1));
  v78 = OUTLINED_FUNCTION_167(v77);
  v80 = v79;
  v82 = v81;
  __swift_destroy_boxed_opaque_existential_0(&a21);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 96) = v83;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v78;
  *(inited + 80) = v80;
  *(inited + 88) = v82;
  if (v103)
  {
    v84 = xmmword_19775E3D0;
    v85 = MEMORY[0x1E69E7CC0];
    v86 = &off_1F0BBB748;
  }

  else
  {
    *&v84 = OUTLINED_FUNCTION_72_1();
  }

  *(inited + 136) = v83;
  *(inited + 144) = v86;
  *(inited + 112) = v84;
  v87 = 32;
  *(inited + 128) = v85;
  v88 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_197647660(inited + v87, &a21, &qword_1EAF3FFE0, &qword_19775E430);
    a11 = a21;
    a12 = a22;
    a13 = a23;
    if (*(&a22 + 1))
    {
      sub_19764C774(&a11, &a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = v88[2];
        v92 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v92, v93, v94, v88, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v88 = v95;
      }

      v90 = v88[2];
      v89 = v88[3];
      if (v90 >= v89 >> 1)
      {
        v96 = OUTLINED_FUNCTION_16_5(v89);
        sub_19764F2F8(v96, v97, v98, v88, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v88 = v99;
      }

      v88[2] = v90 + 1;
      sub_19764C774(&a14, &v88[5 * v90 + 4]);
    }

    else
    {
      sub_19764CAE4(&a11, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v87 += 40;
  }

  while (v87 != 152);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v88, &a21);

  __swift_project_boxed_opaque_existential_0Tm(&a21, *(&a22 + 1));
  v100 = OUTLINED_FUNCTION_22_1();
  sub_1976C73F8(v100, v101);
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_0(&a21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976A9EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E3E0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v15;
  if (v13 == 2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v17 = 0x455551494E55;
    if (a4)
    {
      v17 = 0x5241524F504D4554;
    }

    v18 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v18 = 0xE600000000000000;
    }

    v21 = &off_1F0BBB748;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v15;
  }

  *(inited + 72) = v17;
  *(inited + 80) = v18;
  *(inited + 88) = v19;
  *(inited + 96) = v20;
  *(inited + 136) = v15;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 104) = v21;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = v16;
  if (a5)
  {
    v22 = xmmword_19775E3F0;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = &off_1F0BBB748;
  }

  else
  {
    *&v22 = OUTLINED_FUNCTION_72_1();
  }

  *(inited + 176) = v15;
  *(inited + 184) = v24;
  *(inited + 152) = v22;
  *(inited + 168) = v23;
  sub_19764E1F4(a3, inited + 192);

  v25 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    OUTLINED_FUNCTION_63_1();
    v31 = sub_197647660(v27, v28, v29, v30);
    OUTLINED_FUNCTION_100(v31, v32, v33, v34, v35, v36, v37, v38, v55, *(&v55 + 1), v56, v57, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66);
    if (v39)
    {
      OUTLINED_FUNCTION_84_1(&v55, &v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v44, v45, v46, v47, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v25 = v48;
      }

      OUTLINED_FUNCTION_119();
      if (v40)
      {
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v49, v50, v51, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v25 = v53;
      }

      *(v25 + 16) = v6;
      sub_19764C774(&v60, v25 + 40 * v13 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v41, v42, v43);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(a6);
}

void sub_1976AA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v97 = v22;
  v98 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_143();
  v119[3] = type metadata accessor for Expression();
  v119[4] = &off_1F0BBB748;
  v119[0] = v34;
  v119[1] = v32;
  v119[2] = v30;
  v35 = *(a21 + 40);

  v36 = v35(v24, a21);
  v38 = v37;
  if (v26)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v40 = &off_1F0BBB748;
  }

  else
  {
    v39 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v39, v40);
  OUTLINED_FUNCTION_172(*(a21 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v41 + 16))();
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v42 = OUTLINED_FUNCTION_99();
  v43 = OUTLINED_FUNCTION_57_2(v42, xmmword_19775E400);
  sub_19764E1F4(v43, &v42[2]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v42[6].n128_u64[1] = &off_1F0BBB748;
  v42[4].n128_u64[1] = v36;
  v42[5].n128_u64[0] = v38;
  v45.n128_f64[0] = OUTLINED_FUNCTION_68_1(v44, MEMORY[0x1E69E7CC0]);
  v42[11].n128_u64[0] = v46;
  v42[11].n128_u64[1] = v47;
  OUTLINED_FUNCTION_67_1(v48, v45);
  sub_197647660(&v118, &v114, &qword_1EAF3FFE0, &qword_19775E430);
  if (v115)
  {
    v49 = OUTLINED_FUNCTION_84_1(&v114, &v100);
    sub_19764C59C(v49, v26);

    sub_1976B314C(&v100, &v42[14].n128_i64[1]);
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_19764C59C(v28, v26);
  }

  sub_197647660(&v117, &v114, &qword_1EAF3FFE0, &qword_19775E430);
  if (v115)
  {
    sub_19764C774(&v114, &v100);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&v100, v50, 0xE700000000000000, v51);
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v52 = sub_197647660(v116, &v114, &qword_1EAF3FFE8, &qword_19775E438);
  if (v115)
  {
    OUTLINED_FUNCTION_164(v52, v53, v54, v55, v56, v57, v58, v59, v96, v97, v98, v99, v100, *(&v100 + 1), v101, v102, v103, v104, v105, v106, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114);
    sub_1976B2DB8(&v100, v26 + 40, &v42[19].n128_i64[1]);

    sub_19764CAE4(&v100, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v60 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v61, v62, v63, v64);
    OUTLINED_FUNCTION_125();
    if (v65)
    {
      OUTLINED_FUNCTION_84_1(&v109, &v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v80, v81, v82, v83, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v84;
      }

      OUTLINED_FUNCTION_119();
      if (v75)
      {
        v85 = OUTLINED_FUNCTION_16_5(v74);
        sub_19764F2F8(v85, v86, v87, v60, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v66;
      }

      OUTLINED_FUNCTION_165(v66, v67, v68, v69, v70, v71, v72, v73, v96, v97, v98, v99, v100);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v76, v77, v78);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v79);
  swift_setDeallocating();
  v88 = OUTLINED_FUNCTION_110();
  sub_19764D558(v88, v89);
  OUTLINED_FUNCTION_45_3(&v114);

  sub_19764CAE4(v116, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v90, v91, v92);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v93, v94, v95);
  __swift_destroy_boxed_opaque_existential_0(v119);
  sub_1976AAAEC(&v114);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v114);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976AA578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E400;
  sub_19764E1F4(a1, inited + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v23 = v22;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v22;
  if (v20 == 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v25 = 0x8000000197761CA0;
    v24 = 0x205952414D495250;
    if (a4)
    {
      v24 = 0xD000000000000019;
    }

    else
    {
      v25 = 0xEB0000000059454BLL;
    }

    v28 = &off_1F0BBB748;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v22;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = v28;
  v29 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v31 = 0xE800000000000000;
    v30 = 0x4C4C554E20544F4ELL;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v22;
    v34 = &off_1F0BBB748;
  }

  *(inited + 152) = v30;
  *(inited + 160) = v31;
  *(inited + 168) = v32;
  *(inited + 176) = v33;
  *(inited + 184) = v34;
  if (a6)
  {
    v35 = xmmword_19775E410;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = &off_1F0BBB748;
    v38 = v22;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0uLL;
  }

  *(inited + 216) = v38;
  *(inited + 224) = v37;
  *(inited + 192) = v35;
  *(inited + 208) = v36;
  sub_197647660(a7, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);

    sub_1976B314C(__dst, (inited + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(inited + 264) = 0;
    *(inited + 248) = 0u;
    *(inited + 232) = 0u;
  }

  sub_197647660(a8, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    sub_1976B5330(__dst, 0x544C5541464544, 0xE700000000000000, (inited + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  sub_197647660(a10, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (inited + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    *(inited + 344) = 0;
    *(inited + 312) = 0u;
    *(inited + 328) = 0u;
  }

  if (a12 == 3)
  {
    *(inited + 384) = 0;
    *(inited + 352) = 0u;
    *(inited + 368) = 0u;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_19775A850;
    *(v39 + 32) = 0x4554414C4C4F43;
    *(v39 + 40) = 0xE700000000000000;
    *(v39 + 48) = v29;
    *(v39 + 56) = v23;
    *(v39 + 96) = &type metadata for Collation;
    *(v39 + 104) = &off_1F0BBBBC0;
    *(v39 + 64) = &off_1F0BBB748;
    *(v39 + 72) = a11;
    *(v39 + 80) = a12;
    sub_1976B35AC(a11, a12);
    sub_197649FEC(v39, (inited + 352));
    swift_setDeallocating();
    sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  }

  v40 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_197647660(inited + i, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v49[0] = __src[0];
    v49[1] = __src[1];
    v50 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v49, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v40[2] + 1, 1, v40, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v40 = v44;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        sub_19764F2F8(v42 > 1, v43 + 1, 1, v40, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v40 = v45;
      }

      v40[2] = v43 + 1;
      sub_19764C774(__dst, &v40[5 * v43 + 4]);
    }

    else
    {
      sub_19764CAE4(v49, &qword_1EAF3FFE0, &qword_19775E430);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v40, a9);
}

uint64_t sub_1976AAAEC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  v4 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v7)
  {

    v6 = v8;
    v5 = v7;
  }

  sub_19764E750(v6, v5, v10 & 1, (inited + 72));

  *(inited + 136) = v3;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v4;
  sub_19764E1F4(a1, inited + 152);
  sub_197649FEC(inited, v16);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_0Tm(v16, v17);
  v13 = sub_1976C73F8(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

void sub_1976AACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v95 = v22;
  v96 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_143();
  v117[3] = type metadata accessor for Expression();
  v117[4] = &off_1F0BBB748;
  v117[0] = v36;
  v117[1] = v34;
  v117[2] = v32;
  v37 = *(a21 + 40);

  v38 = v37(v24, a21);
  v40 = v39;
  v116[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v116[4] = &off_1F0BBB748;
  v116[0] = v30;
  v116[1] = v28;
  v116[2] = v26;
  OUTLINED_FUNCTION_172(*(a21 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v41 + 16))();
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v42 = OUTLINED_FUNCTION_99();
  v43 = OUTLINED_FUNCTION_57_2(v42, xmmword_19775E400);
  sub_19764E1F4(v43, &v42[2]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v42[6].n128_u64[1] = &off_1F0BBB748;
  v42[4].n128_u64[1] = v38;
  v42[5].n128_u64[0] = v40;
  v45.n128_f64[0] = OUTLINED_FUNCTION_68_1(v44, MEMORY[0x1E69E7CC0]);
  v42[11].n128_u64[0] = v46;
  v42[11].n128_u64[1] = &off_1F0BBB748;
  OUTLINED_FUNCTION_67_1(v47, v45);
  sub_197647660(v116, &v112, &qword_1EAF3FFE0, &qword_19775E430);
  if (v113)
  {
    OUTLINED_FUNCTION_84_1(&v112, &v98);

    sub_1976B314C(&v98, &v42[14].n128_i64[1]);
    __swift_destroy_boxed_opaque_existential_0(&v98);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(&v115, &v112, &qword_1EAF3FFE0, &qword_19775E430);
  if (v113)
  {
    sub_19764C774(&v112, &v98);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&v98, v48, 0xE700000000000000, v49);
    __swift_destroy_boxed_opaque_existential_0(&v98);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v50 = sub_197647660(v114, &v112, &qword_1EAF3FFE8, &qword_19775E438);
  if (v113)
  {
    OUTLINED_FUNCTION_164(v50, v51, v52, v53, v54, v55, v56, v57, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, v109, v110, v111, v112);
    sub_1976B2DB8(&v98, v26 + 40, &v42[19].n128_i64[1]);

    sub_19764CAE4(&v98, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v58 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v59, v60, v61, v62);
    OUTLINED_FUNCTION_125();
    if (v63)
    {
      OUTLINED_FUNCTION_84_1(&v107, &v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v78, v79, v80, v81, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v58 = v82;
      }

      OUTLINED_FUNCTION_119();
      if (v73)
      {
        v83 = OUTLINED_FUNCTION_16_5(v72);
        sub_19764F2F8(v83, v84, v85, v58, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v58 = v64;
      }

      OUTLINED_FUNCTION_165(v64, v65, v66, v67, v68, v69, v70, v71, v94, v95, v96, v97, v98);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v74, v75, v76);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v77);
  swift_setDeallocating();
  v86 = OUTLINED_FUNCTION_110();
  sub_19764D558(v86, v87);
  OUTLINED_FUNCTION_45_3(&v112);

  sub_19764CAE4(v114, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v88, v89, v90);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v91, v92, v93);
  __swift_destroy_boxed_opaque_existential_0(v117);
  sub_1976AAAEC(&v112);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v112);
  OUTLINED_FUNCTION_43();
}

void sub_1976AB0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v23 = v22;
  v85 = v24;
  v86 = v25;
  v27 = v26;
  v84 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_143();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0(v35);
  v87 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v39);
  v97[3] = OUTLINED_FUNCTION_135();
  v97[4] = &off_1F0BBB748;
  v97[0] = v34;
  v97[1] = v32;
  v97[2] = v30;
  v40 = *(a21 + 40);

  v41 = v40(v23, a21);
  v88 = v42;
  v89 = v41;
  if (v27)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v44 = &off_1F0BBB748;
    v45 = v84;
    v46 = v85;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
  }

  v96[0] = v45;
  v96[1] = v27;
  v96[2] = v46;
  v96[3] = v43;
  v96[4] = v44;
  (*(v87 + 16))(v21, v86, v35);
  OUTLINED_FUNCTION_113(v21);
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v48, v49);
    (*(v87 + 8))(v21, v35);
    *&v50 = OUTLINED_FUNCTION_87_1();
    v95[0] = v50;
    v95[1] = v50;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(a21 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v51 + 32))();
    v52 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v52, v53);
  }

  memset(v94, 0, sizeof(v94));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v54 = OUTLINED_FUNCTION_99();
  v55 = OUTLINED_FUNCTION_57_2(v54, xmmword_19775E400);
  sub_19764E1F4(v55, v54 + 32);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v54 + 104) = &off_1F0BBB748;
  *(v54 + 72) = v89;
  *(v54 + 80) = v88;
  v57.n128_f64[0] = OUTLINED_FUNCTION_68_1(v56, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_152(v57);
  sub_197647660(v96, v93, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&v93[1] + 1))
  {
    sub_19764C774(v93, v90);

    sub_1976B314C(v90, (v54 + 232));
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(v95, v93, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&v93[1] + 1))
  {
    sub_19764C774(v93, v90);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(v90, v58, 0xE700000000000000, v59);
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  sub_197647660(v94, v93, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&v93[1] + 1))
  {
    memcpy(v90, v93, sizeof(v90));
    sub_1976B2DB8(v90, &v90[2] + 8, (v54 + 312));

    sub_19764CAE4(v90, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v60 = MEMORY[0x1E69E7CC0];
  v61 = 32;
  *(v54 + 384) = 0;
  *(v54 + 352) = 0u;
  *(v54 + 368) = 0u;
  do
  {
    sub_197647660(v54 + v61, v93, &qword_1EAF3FFE0, &qword_19775E430);
    v91[0] = v93[0];
    v91[1] = v93[1];
    v92 = *&v93[2];
    if (*(&v93[1] + 1))
    {
      OUTLINED_FUNCTION_84_1(v91, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v67, v68, v69, v70, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v71;
      }

      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v72 = OUTLINED_FUNCTION_16_5(v62);
        sub_19764F2F8(v72, v73, v74, v60, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v75;
      }

      v60[2] = v63 + 1;
      sub_19764C774(v90, &v60[5 * v63 + 4]);
    }

    else
    {
      OUTLINED_FUNCTION_75();
      sub_19764CAE4(v64, v65, v66);
    }

    v61 += 40;
  }

  while (v61 != 392);
  swift_setDeallocating();
  v76 = OUTLINED_FUNCTION_110();
  sub_19764D558(v76, v77);
  OUTLINED_FUNCTION_45_3(v93);

  sub_19764CAE4(v94, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v78, v79, v80);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v81, v82, v83);
  __swift_destroy_boxed_opaque_existential_0(v97);
  sub_1976AAAEC(v93);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v93);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976AB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45)
{
  OUTLINED_FUNCTION_42();
  a19 = v46;
  a20 = v47;
  OUTLINED_FUNCTION_131();
  a14 = v48;
  a15 = v45;
  v50 = v49;
  a10 = v51;
  a11 = v52;
  a12 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = *(v46 + 16);
  OUTLINED_FUNCTION_143();
  v61 = sub_19774F420();
  OUTLINED_FUNCTION_0(v61);
  a9 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &a9 - v66;
  *(v46 - 112) = OUTLINED_FUNCTION_94_0();
  *(v46 - 104) = &off_1F0BBB748;
  *(v46 - 136) = v59;
  *(v46 - 128) = v57;
  *(v46 - 120) = v55;
  v68 = *(v60 + 40);

  v69 = v60;
  v70 = v68(v50, v60);
  v72 = a10;
  v71 = a11;
  a13 = v70;
  v74 = v73;
  *(v46 - 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v46 - 144) = &off_1F0BBB748;
  *(v46 - 176) = a12;
  *(v46 - 168) = v72;
  *(v46 - 160) = v71;
  v75 = a9;
  (*(a9 + 16))(v67, a14, v61);
  OUTLINED_FUNCTION_113(v67);
  if (v76)
  {
    v77 = *(v75 + 8);

    v77(v67, v61);
    *&v78 = OUTLINED_FUNCTION_87_1();
    a44 = v78;
    a45 = v78;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(v69 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v79 + 32))();
  }

  a42 = 0u;
  a43 = 0u;
  a40 = 0u;
  a41 = 0u;
  a39 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v80 = OUTLINED_FUNCTION_99();
  v81 = OUTLINED_FUNCTION_57_2(v80, xmmword_19775E400);
  sub_19764E1F4(v81, v80 + 32);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v80 + 104) = &off_1F0BBB748;
  *(v80 + 72) = a13;
  *(v80 + 80) = v74;
  v83.n128_f64[0] = OUTLINED_FUNCTION_68_1(v82, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_152(v83);
  sub_197647660(v46 - 176, &a31, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&a32 + 1))
  {
    sub_19764C774(&a31, &a17);

    sub_1976B314C(&a17, (v80 + 232));
    __swift_destroy_boxed_opaque_existential_0(&a17);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(v46 - 224, &a31, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&a32 + 1))
  {
    sub_19764C774(&a31, &a17);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&a17, v84, 0xE700000000000000, v85);
    __swift_destroy_boxed_opaque_existential_0(&a17);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  sub_197647660(&a39, &a31, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&a32 + 1))
  {
    memcpy(&a17, &a31, 0x50uLL);
    sub_1976B2DB8(&a17, &a22, (v80 + 312));

    sub_19764CAE4(&a17, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v86 = MEMORY[0x1E69E7CC0];
  v87 = 32;
  *(v80 + 384) = 0;
  *(v80 + 352) = 0u;
  *(v80 + 368) = 0u;
  do
  {
    sub_197647660(v80 + v87, &a31, &qword_1EAF3FFE0, &qword_19775E430);
    a27 = a31;
    a28 = a32;
    a29 = a33;
    if (*(&a32 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a27, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v93, v94, v95, v96, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v86 = v97;
      }

      v89 = *(v86 + 16);
      v88 = *(v86 + 24);
      if (v89 >= v88 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v88);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v98, v99, v100, v101, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v86 = v102;
      }

      *(v86 + 16) = v89 + 1;
      sub_19764C774(&a17, v86 + 40 * v89 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_75();
      sub_19764CAE4(v90, v91, v92);
    }

    v87 += 40;
  }

  while (v87 != 392);
  swift_setDeallocating();
  v103 = OUTLINED_FUNCTION_110();
  sub_19764D558(v103, v104);
  OUTLINED_FUNCTION_45_3(&a31);

  sub_19764CAE4(&a39, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v105, v106, v107);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v108, v109, v110);
  __swift_destroy_boxed_opaque_existential_0((v46 - 136));
  sub_1976AAAEC(&a31);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(&a31);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976ABB18()
{
  OUTLINED_FUNCTION_42();
  v160 = v1;
  v161 = v2;
  OUTLINED_FUNCTION_131();
  v144 = v0;
  v149 = v3;
  v124 = v4;
  v6 = v5;
  HIDWORD(v129) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v134 = v1[3];
  v119 = v1[2];
  v14 = v1[6];
  v139 = v1[4];
  v15 = v1[5];
  OUTLINED_FUNCTION_50_2();
  v16 = type metadata accessor for Expression();
  *(v1 - 14) = v16;
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v17 = *(v14 + 40);

  v18 = OUTLINED_FUNCTION_22_1();
  v19 = v17(v18);
  v21 = v20;
  if (v6)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v23 = &off_1F0BBB748;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v22, v23);
  *&v24 = OUTLINED_FUNCTION_87_1();
  v188 = v24;
  v189 = v24;
  sub_19764E1F4(v124, v182);
  v186 = v16;
  v187 = &off_1F0BBB748;
  v25 = v134;
  v183 = v119;
  v184 = v134;
  v185 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v26 = OUTLINED_FUNCTION_99();
  v27 = OUTLINED_FUNCTION_57_2(v26, xmmword_19775E400);
  sub_19764E1F4(v27, v26 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  *(v26 + 104) = &off_1F0BBB748;
  *(v26 + 88) = MEMORY[0x1E69E7CC0];
  *(v26 + 96) = v28;
  *(v26 + 176) = v28;
  *(v26 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_89_1();
  *(v26 + 72) = v19;
  *(v26 + 80) = v21;
  *(v26 + 112) = v30;
  *(v26 + 128) = v30;
  if ((v129 & 0x100000000) != 0)
  {
    v30 = xmmword_19775E410;
    v29 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v29, v30);
  v37 = OUTLINED_FUNCTION_170(v31, v32, &qword_1EAF3FFE0, &qword_19775E430, v33, v34, v35, v36, v119, v124, v129, v134, v139, v144, v149, v154, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
  if (v175)
  {
    OUTLINED_FUNCTION_122(v37, v38, v39, v40, v41, v42, v43, v44, v120, v125, v130, v135, v140, v145, v150, v155, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    v45 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v45, v46);

    OUTLINED_FUNCTION_97(v47, v48, v49, v50, v51, v52, v53, v54);
    v55 = __swift_destroy_boxed_opaque_existential_0(&v159);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    v61 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v61, v62);
  }

  v63 = OUTLINED_FUNCTION_175(v55, v56, &qword_1EAF3FFE0, &qword_19775E430, v57, v58, v59, v60, v120, v125, v130, v135, v140, v145, v150, v155, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
  if (v175)
  {
    OUTLINED_FUNCTION_122(v63, v64, v65, v66, v67, v68, v69, v70, v121, v126, v131, v136, v141, v146, v151, v156, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v71, v72, v122, v127, v132, v137, v142, v147, v152, v157);
    v73 = __swift_destroy_boxed_opaque_existential_0(&v159);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v79 = OUTLINED_FUNCTION_168(v73, v74, &qword_1EAF3FFE8, &qword_19775E438, v75, v76, v77, v78, v121, v126, v131, v136, v141, v146, v151, v156, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182[0]);
  if (v175)
  {
    v87 = OUTLINED_FUNCTION_61_2(v79, v80, v81, v82, v83, v84, v85, v86, v123, v128, v133, v138, v143, v148, v153, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    OUTLINED_FUNCTION_96(v87, v88, v89, v90, v91, v92, v93, v94);

    sub_19764CAE4(&v159, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v95 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  *(v26 + 352) = 0u;
  *(v26 + 368) = 0u;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v96, v97, v98, v99);
    OUTLINED_FUNCTION_42_3();
    if (v100)
    {
      OUTLINED_FUNCTION_84_1(&v168, &v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v107, v108, v109, v110, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v95 = v111;
      }

      OUTLINED_FUNCTION_118();
      if (v102)
      {
        OUTLINED_FUNCTION_47_1(v101);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v112, v113, v114, v115, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v95 = v116;
      }

      *(v95 + 16) = v26 + 312;
      OUTLINED_FUNCTION_137(v95 + 40 * v25, v123, v128, v133, v138, v143, v148, v153, v158, v159);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v103, v104, v105);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v106);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v173);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v182, &qword_1EAF3FFE8, &qword_19775E438);
  v117 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v117, v118, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v1 - 17);
  sub_1976AAAEC(&v173);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v173);
  OUTLINED_FUNCTION_43();
}

void sub_1976ABF54()
{
  OUTLINED_FUNCTION_42();
  v156 = v1;
  v157 = v2;
  OUTLINED_FUNCTION_131();
  v145 = v0;
  v130 = v3;
  v135 = v4;
  v115 = v5;
  v125 = v6;
  HIDWORD(v140) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1[3];
  v120 = v1[2];
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[4];
  OUTLINED_FUNCTION_50_2();
  v18 = type metadata accessor for Expression();
  *(v1 - 14) = v18;
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v19 = *(v16 + 40);

  v20 = v16;
  v21 = v115;
  v22 = v19(v15, v20);
  v24 = v23;
  *(v1 - 19) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v1 - 18) = &off_1F0BBB748;
  *(v1 - 22) = v125;
  *(v1 - 21) = v115;
  *(v1 - 20) = v130;
  *&v25 = OUTLINED_FUNCTION_87_1();
  v184 = v25;
  v185 = v25;
  sub_19764E1F4(v135, v178);
  v182 = v18;
  v183 = &off_1F0BBB748;
  v179 = v120;
  v180 = v14;
  v181 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v26 = OUTLINED_FUNCTION_99();
  v27 = OUTLINED_FUNCTION_57_2(v26, xmmword_19775E400);
  sub_19764E1F4(v27, v26 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  *(v26 + 104) = &off_1F0BBB748;
  *(v26 + 88) = MEMORY[0x1E69E7CC0];
  *(v26 + 96) = v28;
  *(v26 + 176) = v28;
  *(v26 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_89_1();
  *(v26 + 72) = v22;
  *(v26 + 80) = v24;
  *(v26 + 112) = v30;
  *(v26 + 128) = v30;
  if ((v140 & 0x100000000) != 0)
  {
    v30 = xmmword_19775E410;
    v29 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v29, v30);
  v37 = OUTLINED_FUNCTION_170(v31, v32, &qword_1EAF3FFE0, &qword_19775E430, v33, v34, v35, v36, v115, v120, v125, v130, v135, v140, v145, v150, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
  if (v171)
  {
    OUTLINED_FUNCTION_122(v37, v38, v39, v40, v41, v42, v43, v44, v116, v121, v126, v131, v136, v141, v146, v151, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);

    OUTLINED_FUNCTION_97(v45, v46, v47, v48, v49, v50, v51, v52);
    v53 = __swift_destroy_boxed_opaque_existential_0(&v155);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  v59 = OUTLINED_FUNCTION_175(v53, v54, &qword_1EAF3FFE0, &qword_19775E430, v55, v56, v57, v58, v116, v121, v126, v131, v136, v141, v146, v151, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
  if (v171)
  {
    OUTLINED_FUNCTION_122(v59, v60, v61, v62, v63, v64, v65, v66, v117, v122, v127, v132, v137, v142, v147, v152, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v67, v68, v118, v123, v128, v133, v138, v143, v148, v153);
    v69 = __swift_destroy_boxed_opaque_existential_0(&v155);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v75 = OUTLINED_FUNCTION_168(v69, v70, &qword_1EAF3FFE8, &qword_19775E438, v71, v72, v73, v74, v117, v122, v127, v132, v137, v142, v147, v152, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v178[0]);
  if (v171)
  {
    v83 = OUTLINED_FUNCTION_61_2(v75, v76, v77, v78, v79, v80, v81, v82, v119, v124, v129, v134, v139, v144, v149, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
    OUTLINED_FUNCTION_96(v83, v84, v85, v86, v87, v88, v89, v90);

    sub_19764CAE4(&v155, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v91 = MEMORY[0x1E69E7CC0];
  v92 = 32;
  *(v26 + 384) = 0;
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v93, v94, v95, v96);
    OUTLINED_FUNCTION_42_3();
    if (v97)
    {
      OUTLINED_FUNCTION_84_1(&v164, &v155);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v103, v104, v105, v106, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v91 = v107;
      }

      OUTLINED_FUNCTION_118();
      if (v99)
      {
        OUTLINED_FUNCTION_47_1(v98);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v108, v109, v110, v111, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v91 = v112;
      }

      *(v91 + 16) = v26 + 312;
      OUTLINED_FUNCTION_137(v91 + v21 * v14, v119, v124, v129, v134, v139, v144, v149, v154, v155);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v100, v101, v102);
    }

    v92 += 40;
  }

  while (v92 != 392);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v169);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v178, &qword_1EAF3FFE8, &qword_19775E438);
  v113 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v113, v114, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v1 - 17);
  sub_1976AAAEC(&v169);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v169);
  OUTLINED_FUNCTION_43();
}

void sub_1976AC378()
{
  OUTLINED_FUNCTION_42();
  v155 = v1;
  v156 = v2;
  OUTLINED_FUNCTION_131();
  v144 = v0;
  v124 = v3;
  v5 = v4;
  v7 = v6;
  HIDWORD(v129) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[5];
  v139 = v1[4];
  v134 = v1[3];
  v119 = v1[2];
  v16 = v1[6];
  OUTLINED_FUNCTION_123();
  *(v1 - 14) = OUTLINED_FUNCTION_92_0();
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v17 = *(v16 + 40);

  v18 = OUTLINED_FUNCTION_22_1();
  v19 = v17(v18);
  v21 = v20;
  if (v5)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v23 = &off_1F0BBB748;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v22, v23);
  *&v24 = OUTLINED_FUNCTION_87_1();
  v183 = v24;
  v184 = v24;
  sub_19764E1F4(v124, v177);
  OUTLINED_FUNCTION_50_2();
  v181 = type metadata accessor for Expression();
  v182 = &off_1F0BBB748;
  v178 = v119;
  v179 = v134;
  v180 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v25 = OUTLINED_FUNCTION_99();
  v26 = OUTLINED_FUNCTION_57_2(v25, xmmword_19775E400);
  sub_19764E1F4(v26, v25 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  v28 = 0;
  *(v25 + 104) = &off_1F0BBB748;
  *(v25 + 88) = MEMORY[0x1E69E7CC0];
  *(v25 + 96) = v29;
  *(v25 + 72) = v19;
  *(v25 + 80) = v21;
  *(v25 + 112) = v27;
  *(v25 + 128) = v27;
  *(v25 + 144) = v27;
  *(v25 + 160) = v27;
  *(v25 + 176) = v27;
  if ((v129 & 0x100000000) != 0)
  {
    v27 = xmmword_19775E410;
    v28 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v28, v27);
  v36 = OUTLINED_FUNCTION_170(v30, v31, &qword_1EAF3FFE0, &qword_19775E430, v32, v33, v34, v35, v114, v119, v124, v129, v134, v139, v144, v149, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    OUTLINED_FUNCTION_122(v36, v37, v38, v39, v40, v41, v42, v43, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_19764C59C(v7, v5);

    OUTLINED_FUNCTION_97(v44, v45, v46, v47, v48, v49, v50, v51);
    v52 = __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_19764C59C(v7, v5);
  }

  v58 = OUTLINED_FUNCTION_175(v52, v53, &qword_1EAF3FFE0, &qword_19775E430, v54, v55, v56, v57, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    OUTLINED_FUNCTION_122(v58, v59, v60, v61, v62, v63, v64, v65, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v66, v67, v117, v122, v127, v132, v137, v142, v147, v152);
    v68 = __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v74 = OUTLINED_FUNCTION_168(v68, v69, &qword_1EAF3FFE8, &qword_19775E438, v70, v71, v72, v73, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v177[0]);
  if (v170)
  {
    v82 = OUTLINED_FUNCTION_61_2(v74, v75, v76, v77, v78, v79, v80, v81, v118, v123, v128, v133, v138, v143, v148, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    OUTLINED_FUNCTION_96(v82, v83, v84, v85, v86, v87, v88, v89);

    sub_19764CAE4(&v154, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v90 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v91, v92, v93, v94);
    OUTLINED_FUNCTION_42_3();
    if (v95)
    {
      OUTLINED_FUNCTION_84_1(&v163, &v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v102, v103, v104, v105, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v90 = v106;
      }

      v97 = *(v90 + 16);
      v96 = *(v90 + 24);
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v96);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v107, v108, v109, v110, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v90 = v111;
      }

      *(v90 + 16) = v97 + 1;
      OUTLINED_FUNCTION_137(v90 + 40 * v97, v118, v123, v128, v133, v138, v143, v148, v153, v154);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v98, v99, v100);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v101);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v168);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v177, &qword_1EAF3FFE8, &qword_19775E438);
  v112 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v112, v113, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v1 - 17);
  sub_1976AAAEC(&v168);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v168);
  OUTLINED_FUNCTION_43();
}

void sub_1976AC7CC()
{
  OUTLINED_FUNCTION_42();
  v155 = v1;
  v156 = v2;
  OUTLINED_FUNCTION_131();
  v144 = v0;
  v134 = v3;
  v119 = v4;
  v124 = v5;
  v7 = v6;
  HIDWORD(v139) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[3];
  v129 = v1[2];
  v16 = v1[5];
  v17 = v1[6];
  v18 = v1[4];
  OUTLINED_FUNCTION_123();
  *(v1 - 14) = OUTLINED_FUNCTION_92_0();
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v19 = *(v17 + 40);

  v20 = OUTLINED_FUNCTION_22_1();
  v21 = v19(v20);
  v23 = v22;
  *(v1 - 19) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v1 - 18) = &off_1F0BBB748;
  *(v1 - 22) = v119;
  *(v1 - 21) = v7;
  *(v1 - 20) = v124;
  *&v24 = OUTLINED_FUNCTION_87_1();
  v183 = v24;
  v184 = v24;
  sub_19764E1F4(v134, v177);
  OUTLINED_FUNCTION_50_2();
  v181 = type metadata accessor for Expression();
  v182 = &off_1F0BBB748;
  v178 = v129;
  v179 = v15;
  v180 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v25 = OUTLINED_FUNCTION_99();
  v26 = OUTLINED_FUNCTION_57_2(v25, xmmword_19775E400);
  sub_19764E1F4(v26, v25 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  v28 = 0;
  *(v25 + 104) = &off_1F0BBB748;
  *(v25 + 88) = MEMORY[0x1E69E7CC0];
  *(v25 + 96) = v29;
  *(v25 + 72) = v21;
  *(v25 + 80) = v23;
  *(v25 + 112) = v27;
  *(v25 + 128) = v27;
  *(v25 + 144) = v27;
  *(v25 + 160) = v27;
  *(v25 + 176) = v27;
  if ((v139 & 0x100000000) != 0)
  {
    v27 = xmmword_19775E410;
    v28 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v28, v27);
  v36 = OUTLINED_FUNCTION_170(v30, v31, &qword_1EAF3FFE0, &qword_19775E430, v32, v33, v34, v35, v114, v119, v124, v129, v134, v139, v144, v149, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    OUTLINED_FUNCTION_122(v36, v37, v38, v39, v40, v41, v42, v43, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);

    OUTLINED_FUNCTION_97(v44, v45, v46, v47, v48, v49, v50, v51);
    v52 = __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  v58 = OUTLINED_FUNCTION_175(v52, v53, &qword_1EAF3FFE0, &qword_19775E430, v54, v55, v56, v57, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    OUTLINED_FUNCTION_122(v58, v59, v60, v61, v62, v63, v64, v65, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v66, v67, v117, v122, v127, v132, v137, v142, v147, v152);
    v68 = __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v74 = OUTLINED_FUNCTION_168(v68, v69, &qword_1EAF3FFE8, &qword_19775E438, v70, v71, v72, v73, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v177[0]);
  if (v170)
  {
    v82 = OUTLINED_FUNCTION_61_2(v74, v75, v76, v77, v78, v79, v80, v81, v118, v123, v128, v133, v138, v143, v148, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    OUTLINED_FUNCTION_96(v82, v83, v84, v85, v86, v87, v88, v89);

    sub_19764CAE4(&v154, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v90 = MEMORY[0x1E69E7CC0];
  v91 = 32;
  *(v25 + 384) = 0;
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v92, v93, v94, v95);
    OUTLINED_FUNCTION_42_3();
    if (v96)
    {
      OUTLINED_FUNCTION_84_1(&v163, &v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v102, v103, v104, v105, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v90 = v106;
      }

      OUTLINED_FUNCTION_118();
      if (v98)
      {
        OUTLINED_FUNCTION_47_1(v97);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v107, v108, v109, v110, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v90 = v111;
      }

      *(v90 + 16) = v25 + 312;
      OUTLINED_FUNCTION_137(v90 + &off_1F0BBB748 * v15, v118, v123, v128, v133, v138, v143, v148, v153, v154);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v99, v100, v101);
    }

    v91 += 40;
  }

  while (v91 != 392);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v168);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v177, &qword_1EAF3FFE8, &qword_19775E438);
  v112 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v112, v113, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v1 - 17);
  sub_1976AAAEC(&v168);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v168);
  OUTLINED_FUNCTION_43();
}

void sub_1976ACBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v66 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_50_2();
  v74[3] = type metadata accessor for Expression();
  v74[4] = &off_1F0BBB748;
  v74[0] = v33;
  v74[1] = v31;
  v74[2] = v29;
  v34 = *(a23 + 40);

  v35 = v34(a22, a23);
  v37 = v36;
  if (v25)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v39 = &off_1F0BBB748;
  }

  else
  {
    v38 = OUTLINED_FUNCTION_0_20();
  }

  v40 = v27;
  OUTLINED_FUNCTION_69_1(v38, v39);
  OUTLINED_FUNCTION_172(*(a23 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v41 + 16))();
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v42 = OUTLINED_FUNCTION_99();
  v43 = OUTLINED_FUNCTION_57_2(v42, xmmword_19775E400);
  sub_19764E1F4(v43, v42 + 32);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v42 + 104) = &off_1F0BBB748;
  *(v42 + 72) = v35;
  *(v42 + 80) = v37;
  v45 = MEMORY[0x1E69E7CC0];
  *(v42 + 88) = MEMORY[0x1E69E7CC0];
  *(v42 + 96) = v44;
  *(v42 + 112) = 0u;
  *(v42 + 128) = 0u;
  *(v42 + 176) = v44;
  *(v42 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_104();
  *(v42 + 160) = v46;
  *(v42 + 168) = v45;
  *(v42 + 192) = v47;
  *(v42 + 208) = v47;
  *(v42 + 224) = 0;
  sub_197647660(&v73, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    v48 = OUTLINED_FUNCTION_84_1(__src, __dst);
    sub_19764C59C(v48, v25);

    sub_1976B314C(__dst, (v42 + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_145();
    sub_19764C59C(v40, v25);
  }

  sub_197647660(v72, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(__dst, v49, 0xE700000000000000, (v42 + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(v42 + 304) = 0;
    *(v42 + 272) = 0u;
    *(v42 + 288) = 0u;
  }

  sub_197647660(v71, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (v42 + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v51 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v51[3].n128_u64[0] = v45;
  v51[3].n128_u64[1] = v44;
  v51[6].n128_u64[0] = &type metadata for Collation;
  v51[6].n128_u64[1] = &off_1F0BBBBC0;
  v51[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v66;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v66, a21);
  v52 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v42 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v42 + v52, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v68[0] = __src[0];
    v68[1] = __src[1];
    v69 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v68, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = v45[2];
        v56 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v56, v57, v58, v45, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v45 = v59;
      }

      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        v60 = OUTLINED_FUNCTION_16_5(v53);
        sub_19764F2F8(v60, v61, v62, v45, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v45 = v63;
      }

      v45[2] = v54 + 1;
      sub_19764C774(__dst, &v45[5 * v54 + 4]);
    }

    else
    {
      sub_19764CAE4(v68, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v52 += 40;
  }

  while (v52 != 392);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v45, __src);

  sub_19764CAE4(v71, &qword_1EAF3FFE8, &qword_19775E438);
  sub_19764CAE4(v72, &qword_1EAF3FFE0, &qword_19775E430);
  v64 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v64, v65, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v74);
  sub_1976AAAEC(__src);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(__src);
  OUTLINED_FUNCTION_43();
}

void sub_1976AD0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v64 = v23;
  v63 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_50_2();
  v72[3] = type metadata accessor for Expression();
  v72[4] = &off_1F0BBB748;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v30;
  v35 = *(a23 + 40);

  v36 = v35(a22, a23);
  v38 = v37;
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v71[4] = &off_1F0BBB748;
  v71[0] = v63;
  v71[1] = v28;
  v71[2] = v26;
  OUTLINED_FUNCTION_172(*(a23 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v39 + 16))();
  memset(v69, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v40 = OUTLINED_FUNCTION_99();
  v41 = OUTLINED_FUNCTION_57_2(v40, xmmword_19775E400);
  sub_19764E1F4(v41, v40 + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v40 + 104) = &off_1F0BBB748;
  *(v40 + 72) = v36;
  *(v40 + 80) = v38;
  v43 = MEMORY[0x1E69E7CC0];
  *(v40 + 88) = MEMORY[0x1E69E7CC0];
  *(v40 + 96) = v42;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 176) = v42;
  *(v40 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_104();
  *(v40 + 160) = v44;
  *(v40 + 168) = v43;
  *(v40 + 192) = v45;
  *(v40 + 208) = v45;
  *(v40 + 224) = 0;
  sub_197647660(v71, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);

    sub_1976B314C(__dst, (v40 + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_145();
  }

  sub_197647660(v70, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(__dst, v46, 0xE700000000000000, (v40 + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(v40 + 304) = 0;
    *(v40 + 272) = 0u;
    *(v40 + 288) = 0u;
  }

  sub_197647660(v69, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (v40 + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v48 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v48[3].n128_u64[0] = v43;
  v48[3].n128_u64[1] = v42;
  v48[6].n128_u64[0] = &type metadata for Collation;
  v48[6].n128_u64[1] = &off_1F0BBBBC0;
  v48[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v64;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v64, a21);
  v49 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v40 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v40 + v49, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v66[0] = __src[0];
    v66[1] = __src[1];
    v67 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v66, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = v43[2];
        v53 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v53, v54, v55, v43, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v43 = v56;
      }

      v51 = v43[2];
      v50 = v43[3];
      if (v51 >= v50 >> 1)
      {
        v57 = OUTLINED_FUNCTION_16_5(v50);
        sub_19764F2F8(v57, v58, v59, v43, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v43 = v60;
      }

      v43[2] = v51 + 1;
      sub_19764C774(__dst, &v43[5 * v51 + 4]);
    }

    else
    {
      sub_19764CAE4(v66, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v49 += 40;
  }

  while (v49 != 392);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v43, __src);

  sub_19764CAE4(v69, &qword_1EAF3FFE8, &qword_19775E438);
  sub_19764CAE4(v70, &qword_1EAF3FFE0, &qword_19775E430);
  v61 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v61, v62, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v72);
  sub_1976AAAEC(__src);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(__src);
  OUTLINED_FUNCTION_43();
}

void sub_1976AD5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v95 = v23;
  v90 = v24;
  v91 = v25;
  v89 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_50_2();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0(v35);
  v92 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v88 - v40;
  v102[3] = type metadata accessor for Expression();
  v102[4] = &off_1F0BBB748;
  v102[0] = v34;
  v102[1] = v32;
  v102[2] = v30;
  v42 = *(a23 + 40);

  v88 = a23;
  v43 = v42(a22, a23);
  v44 = v89;
  v93 = v45;
  v94 = v43;
  if (v89)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v47 = &off_1F0BBB748;
    v48 = v28;
    v49 = v44;
    v50 = v44;
    v51 = v90;
  }

  else
  {
    v48 = v28;
    v49 = 0;
    v28 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
  }

  v101[0] = v28;
  v101[1] = v50;
  v101[2] = v51;
  v101[3] = v46;
  v101[4] = v47;
  v52 = v92;
  (*(v92 + 16))(v41, v91, v35);
  OUTLINED_FUNCTION_113(v41);
  if (v53)
  {
    sub_19764C59C(v48, v49);
    (*(v52 + 8))(v41, v35);
    *&v54 = OUTLINED_FUNCTION_87_1();
    v100[0] = v54;
    v100[1] = v54;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(v88 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v55 + 32))();
    sub_19764C59C(v48, v49);
  }

  memset(v99, 0, sizeof(v99));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v56 = OUTLINED_FUNCTION_99();
  v57 = OUTLINED_FUNCTION_57_2(v56, xmmword_19775E400);
  sub_19764E1F4(v57, v56 + 32);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v56 + 104) = &off_1F0BBB748;
  v59 = v93;
  *(v56 + 72) = v94;
  *(v56 + 80) = v59;
  v60 = MEMORY[0x1E69E7CC0];
  *(v56 + 88) = MEMORY[0x1E69E7CC0];
  *(v56 + 96) = v58;
  *(v56 + 112) = 0u;
  *(v56 + 128) = 0u;
  *(v56 + 144) = 0u;
  *(v56 + 160) = 0u;
  *(v56 + 176) = 0u;
  *(v56 + 192) = 0u;
  *(v56 + 208) = 0u;
  *(v56 + 224) = 0;
  sub_197647660(v101, v98, &qword_1EAF3FFE0, &qword_19775E430);
  if (v98[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_171();
    sub_1976B314C(v96, (v56 + 232));
    __swift_destroy_boxed_opaque_existential_0(v96);
  }

  else
  {
    *(v56 + 264) = 0;
    *(v56 + 248) = 0u;
    *(v56 + 232) = 0u;
    OUTLINED_FUNCTION_171();
  }

  sub_197647660(v100, v98, &qword_1EAF3FFE0, &qword_19775E430);
  if (v98[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(v96, v61, 0xE700000000000000, (v56 + 272));
    __swift_destroy_boxed_opaque_existential_0(v96);
  }

  else
  {
    *(v56 + 304) = 0;
    *(v56 + 272) = 0u;
    *(v56 + 288) = 0u;
  }

  sub_197647660(v99, v98, &qword_1EAF3FFE8, &qword_19775E438);
  if (v98[1].n128_u64[1])
  {
    memcpy(v96, v98, sizeof(v96));
    sub_1976B2DB8(v96, &v96[2] + 8, (v56 + 312));
    sub_19764CAE4(v96, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v63 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v63[3].n128_u64[0] = v60;
  v63[3].n128_u64[1] = v58;
  v63[6].n128_u64[0] = &type metadata for Collation;
  v63[6].n128_u64[1] = &off_1F0BBBBC0;
  v63[4].n128_u64[0] = &off_1F0BBB748;
  v64 = v95;
  inited[4].n128_u64[1] = v95;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v64, a21);
  v65 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v56 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    OUTLINED_FUNCTION_127();
    sub_197647660(v66, v67, v68, v69);
    OUTLINED_FUNCTION_149(v98[1], v98[0]);
    if (v70)
    {
      sub_19764C774(v97, v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = v60[2];
        v74 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v74, v75, v76, v60, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v77;
      }

      v72 = v60[2];
      v71 = v60[3];
      if (v72 >= v71 >> 1)
      {
        v78 = OUTLINED_FUNCTION_47_1(v71);
        sub_19764F2F8(v78, v72 + 1, 1, v60, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v60 = v79;
      }

      v60[2] = v72 + 1;
      sub_19764C774(v96, &v60[5 * v72 + 4]);
    }

    else
    {
      OUTLINED_FUNCTION_80_1(v97);
    }

    v65 += 40;
  }

  while (v65 != 392);
  swift_setDeallocating();
  v80 = OUTLINED_FUNCTION_91();
  sub_19764D558(v80, v81);
  OUTLINED_FUNCTION_88_1(v60, v98);

  sub_19764CAE4(v99, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v82, v83, v84);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v85, v86, v87);
  __swift_destroy_boxed_opaque_existential_0(v102);
  sub_1976AAAEC(v98);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v98);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976ADBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v79 = v24;
  v78 = v25;
  v73 = v27;
  v74 = v26;
  v75 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_50_2();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0(v35);
  v72 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v39);
  v86[3] = OUTLINED_FUNCTION_135();
  v86[4] = &off_1F0BBB748;
  v86[0] = v34;
  v86[1] = v32;
  v86[2] = v30;
  v40 = *(a23 + 40);

  v76 = v40(a22, a23);
  v77 = v41;
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v85[4] = &off_1F0BBB748;
  v85[0] = v74;
  v85[1] = v75;
  v85[2] = v73;
  (*(v72 + 16))(v23, v78, v35);
  OUTLINED_FUNCTION_113(v23);
  if (v42)
  {
    v43 = *(v72 + 8);

    v43(v23, v35);
    *&v44 = OUTLINED_FUNCTION_87_1();
    v84[0] = v44;
    v84[1] = v44;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(a23 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v45 + 32))();
  }

  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v46 = OUTLINED_FUNCTION_99();
  v47 = OUTLINED_FUNCTION_57_2(v46, xmmword_19775E400);
  sub_19764E1F4(v47, v46 + 32);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v46 + 104) = &off_1F0BBB748;
  *(v46 + 72) = v76;
  *(v46 + 80) = v77;
  v49 = MEMORY[0x1E69E7CC0];
  *(v46 + 88) = MEMORY[0x1E69E7CC0];
  *(v46 + 96) = v48;
  *(v46 + 112) = 0u;
  *(v46 + 128) = 0u;
  *(v46 + 144) = 0u;
  *(v46 + 160) = 0u;
  *(v46 + 176) = 0u;
  *(v46 + 192) = 0u;
  *(v46 + 208) = 0u;
  *(v46 + 224) = 0;
  sub_197647660(v85, v82, &qword_1EAF3FFE0, &qword_19775E430);
  if (v82[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_171();
    sub_1976B314C(v80, (v46 + 232));
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    *(v46 + 264) = 0;
    *(v46 + 248) = 0u;
    *(v46 + 232) = 0u;
    OUTLINED_FUNCTION_171();
  }

  sub_197647660(v84, v82, &qword_1EAF3FFE0, &qword_19775E430);
  if (v82[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(v80, v50, 0xE700000000000000, (v46 + 272));
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    *(v46 + 304) = 0;
    *(v46 + 272) = 0u;
    *(v46 + 288) = 0u;
  }

  sub_197647660(v83, v82, &qword_1EAF3FFE8, &qword_19775E438);
  if (v82[1].n128_u64[1])
  {
    memcpy(v80, v82, sizeof(v80));
    sub_1976B2DB8(v80, &v80[2] + 8, (v46 + 312));
    sub_19764CAE4(v80, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v52 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v52[3].n128_u64[0] = v49;
  v52[3].n128_u64[1] = v48;
  v52[6].n128_u64[0] = &type metadata for Collation;
  v52[6].n128_u64[1] = &off_1F0BBBBC0;
  v52[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v79;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v79, a21);
  v53 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v46 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v46 + v53, v82, &qword_1EAF3FFE0, &qword_19775E430);
    OUTLINED_FUNCTION_149(v82[1], v82[0]);
    if (v54)
    {
      sub_19764C774(v81, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = v49[2];
        v58 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v58, v59, v60, v49, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v49 = v61;
      }

      v56 = v49[2];
      v55 = v49[3];
      if (v56 >= v55 >> 1)
      {
        v62 = OUTLINED_FUNCTION_47_1(v55);
        sub_19764F2F8(v62, v56 + 1, 1, v49, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v49 = v63;
      }

      v49[2] = v56 + 1;
      sub_19764C774(v80, &v49[5 * v56 + 4]);
    }

    else
    {
      sub_19764CAE4(v81, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v53 += 40;
  }

  while (v53 != 392);
  swift_setDeallocating();
  v64 = OUTLINED_FUNCTION_91();
  sub_19764D558(v64, v65);
  OUTLINED_FUNCTION_88_1(v49, v82);

  sub_19764CAE4(v83, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v66, v67, v68);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v69, v70, v71);
  __swift_destroy_boxed_opaque_existential_0(v86);
  sub_1976AAAEC(v82);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v82);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976AE184(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v7)
  {

    v6 = v8;
    v5 = v7;
  }

  sub_19764E750(v6, v5, v10 & 1, (inited + 72));

  *(inited + 136) = v4;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 128) = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(inited + 176) = v4;
  *(inited + 184) = &off_1F0BBB748;
  v14 = OUTLINED_FUNCTION_108();
  *(inited + 152) = sub_1976497AC(v14, v15);
  *(inited + 160) = v16;
  *(inited + 168) = v11;
  OUTLINED_FUNCTION_88_1(inited, v18);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  OUTLINED_FUNCTION_29_3(v18);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v18);
}

void sub_1976AE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  sub_1976AE62C(v63, &a16);
  if (v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = 2;
  }

  sub_1976A9EAC(0x5845444E49, 0xE500000000000000, &a16, v65, v59, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a16);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = 20047;
  *(inited + 80) = 0xE200000000000000;
  v67 = MEMORY[0x1E69E7CC0];
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v66;
  v69 = v55[2];
  v68 = v55[3];
  v71 = v55[4];
  v70 = v55[5];
  v72 = v55[7];
  swift_bridgeObjectRetain_n();

  if (v70)
  {
  }

  *(inited + 136) = v66;
  *(inited + 144) = &off_1F0BBB748;
  v73 = OUTLINED_FUNCTION_108();
  v75 = sub_1976497AC(v73, v74);
  v77 = v76;

  *(inited + 112) = v75;
  *(inited + 120) = v77;
  *(inited + 128) = v67;
  sub_197649FEC(v63, &a16);
  v78 = __swift_project_boxed_opaque_existential_0Tm(&a16, *(&a17 + 1));
  v79 = OUTLINED_FUNCTION_167(v78);
  v81 = v80;
  v83 = v82;
  __swift_destroy_boxed_opaque_existential_0(&a16);
  v84 = 32;
  *(inited + 176) = v66;
  *(inited + 184) = &off_1F0BBB748;
  *(inited + 152) = v79;
  *(inited + 160) = v81;
  *(inited + 168) = v83;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v85, v86, v87, v88);
    a9 = a16;
    a10 = a17;
    a11 = a18;
    if (*(&a17 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a9, &a12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v94, v95, v96, v97, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v98;
      }

      v90 = *(v67 + 16);
      v89 = *(v67 + 24);
      if (v90 >= v89 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v89);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v99, v100, v101, v102, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v103;
      }

      *(v67 + 16) = v90 + 1;
      sub_19764C774(&a12, v67 + 40 * v90 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v91, v92, v93);
    }

    v84 += 40;
  }

  while (v84 != 192);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(&a16);

  OUTLINED_FUNCTION_29_3(&a16);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&a16);
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976AE62C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19775A7E0;
  *(v5 + 32) = 0x7865646E69;
  *(v5 + 40) = 0xE500000000000000;
  v7 = v2[2];
  v6 = v2[3];
  v45 = v2[6];
  v46 = v2[7];

  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = 28271;
  *(v5 + 72) = 0xE200000000000000;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v9, 0);
    v10 = v47;
    v11 = a1 + 32;
    do
    {
      sub_19764E1F4(v11, v50);
      v12 = v51;
      v13 = v52;
      __swift_project_boxed_opaque_existential_0Tm(v50, v51);
      v14 = (*(v13 + 8))(v12, v13);
      v16 = v15;

      __swift_destroy_boxed_opaque_existential_0(v50);
      v18 = *(v47 + 16);
      v17 = *(v47 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_19764AD60((v17 > 1), v18 + 1, 1);
      }

      *(v47 + 16) = v18 + 1;
      v19 = v47 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  v50[0] = v5;
  sub_1976B5DF8(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  sub_1976A7CC8();
  sub_19774EEB0();

  v20 = sub_19774EFC0();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  v50[0] = v20;
  v50[1] = v22;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v50[2] = 0;
  v51 = v23;

  v24 = 0;
  v25 = 0xE000000000000000;
  while (1)
  {
    v26 = sub_19774F040();
    if (!v27)
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    v30 = v26 == 34 && v27 == 0xE100000000000000;
    if (v30 || (sub_19774F7E0() & 1) != 0)
    {
    }

    else
    {
      result = sub_19774F7E0();
      if (result)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      if (v28 == 97 && v29 == 0xE100000000000000)
      {
        goto LABEL_26;
      }

      if ((sub_19774F7E0() & 1) == 0)
      {
        if (v28 == 122 && v29 == 0xE100000000000000)
        {
          goto LABEL_39;
        }

LABEL_26:
        if ((sub_19774F7E0() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      result = sub_19774F7E0();
      if (result)
      {
        goto LABEL_45;
      }

      if (v28 == 48 && v29 == 0xE100000000000000)
      {
        goto LABEL_37;
      }

      if (sub_19774F7E0())
      {
        goto LABEL_38;
      }

      if (v28 != 57 || v29 != 0xE100000000000000)
      {
LABEL_37:
        if (sub_19774F7E0())
        {
LABEL_38:
          v48 = v24;
          v49 = v25;

          v36 = 95;
          v37 = 0xE100000000000000;
          goto LABEL_40;
        }
      }

LABEL_39:
      v48 = v24;
      v49 = v25;

      v36 = v28;
      v37 = v29;
LABEL_40:
      MEMORY[0x19A8E4C40](v36, v37);

      v24 = v48;
      v25 = v49;
    }
  }

  v38 = sub_1976497AC(34, 0xE100000000000000);
  v40 = v39;

  if (v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 56) = v42;
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = sub_1976497AC(34, 0xE100000000000000);
    *(inited + 40) = v43;
    v44 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v42;
    *(inited + 104) = &off_1F0BBB748;
    *(inited + 72) = v38;
    *(inited + 80) = v40;
    *(inited + 88) = v44;
    sub_197649FEC(inited, a2);
    swift_setDeallocating();
    return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    a2[3] = result;
    a2[4] = &off_1F0BBB748;
    *a2 = v38;
    a2[1] = v40;
    a2[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1976AEAEC(uint64_t a1, uint64_t a2)
{
  sub_1976AE62C(a1, v4);
  sub_1976A963C(0x5845444E49, 0xE500000000000000, v4, a2);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v4);
}

void sub_1976AEB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v95 = v58;
  v96 = v59;
  v94 = v60;
  v62 = v61;
  v64 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v67 = *(v55 + 16);
  v66 = *(v55 + 24);
  v68 = *(v55 + 32);
  v69 = *(v55 + 40);
  v70 = *(v55 + 56);
  v71 = *(v55 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v67 = v68;
    v66 = v69;
  }

  sub_19764E750(v67, v66, v71 & 1, &a21);

  if (v62)
  {
    v72 = 1;
  }

  else
  {
    v72 = 2;
  }

  sub_1976A9EAC(v95, v96, &a21, v72, v94 & 1, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a21);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = 21313;
  *(inited + 80) = 0xE200000000000000;
  v74 = MEMORY[0x1E69E7CC0];
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v73;
  v75 = v64[3];
  v76 = v64[4];
  __swift_project_boxed_opaque_existential_0Tm(v64, v75);
  *(inited + 136) = v75;
  *(inited + 144) = *(v76 + 8);
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_19_4();
  (*(v77 + 16))();
  for (i = 32; i != 152; i += 40)
  {
    OUTLINED_FUNCTION_127();
    sub_197647660(v79, v80, v81, v82);
    a13 = a21;
    a14 = a22;
    a15 = a23;
    if (*(&a22 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a13, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_132(v84, v85, v86, v87, &qword_1EAF3F750, &qword_19775A960);
        v74 = v88;
      }

      OUTLINED_FUNCTION_116();
      if (v83)
      {
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_132(v89, v90, v91, v92, &qword_1EAF3F750, &qword_19775A960);
        v74 = v93;
      }

      *(v74 + 16) = v67;
      sub_19764C774(&a17, v74 + 40 * v68 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_80_1(&a13);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(&a21);

  OUTLINED_FUNCTION_29_3(&a21);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&a21);
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976AEE10(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v5)
  {

    v4 = v6;
    v3 = v5;
  }

  sub_19764E750(v4, v3, v8 & 1, v10);

  sub_1976A963C(1464158550, 0xE400000000000000, v10, a1 & 1);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v10);
}

uint64_t sub_1976B01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_151();
  v34 = v12;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_31_2(v13, v14, v15);
  v16 = *(a9 + 40);

  v16(a8, a9);
  OUTLINED_FUNCTION_103();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    OUTLINED_FUNCTION_144();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_9_6(v17, v18);
  OUTLINED_FUNCTION_115();
  sub_19764C59C(v10, v9);
  v19 = type metadata accessor for Expression();
  OUTLINED_FUNCTION_58_2(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v19, &off_1F0BBB748, v32, v33, v34, SHIWORD(v34), v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]);

  sub_19764CAE4(v35, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_80_1(v45);
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_1976B033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_51_2();
  v34 = v12;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_31_2(v13, v14, v15);
  v16 = *(a9 + 40);

  v17 = OUTLINED_FUNCTION_56_2();
  v16(v17, a9);
  OUTLINED_FUNCTION_103();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v50 = &off_1F0BBB748;
  v46 = v11;
  v47 = v10;
  v48 = v9;
  OUTLINED_FUNCTION_115();
  v18 = OUTLINED_FUNCTION_94_0();

  OUTLINED_FUNCTION_58_2(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v18, &off_1F0BBB748, v32, v33, v34, SHIWORD(v34), v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]);

  sub_19764CAE4(v35, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_80_1(v45);
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_1976B1DA4()
{
  OUTLINED_FUNCTION_140();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_129(inited, xmmword_19775A780);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v2;
  inited[2].n128_u64[1] = v1;
  inited[3].n128_u64[0] = v0;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v4, v5);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

uint64_t sub_1976B1E60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_129(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v13, v14);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

uint64_t sub_1976B1F70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_129(inited, xmmword_19775A7E0);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  OUTLINED_FUNCTION_50_2();
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;
  inited[8].n128_u64[1] = type metadata accessor for Expression();
  inited[9].n128_u64[0] = &off_1F0BBB748;
  inited[7].n128_u64[0] = a7;
  inited[7].n128_u64[1] = a8;
  inited[8].n128_u64[0] = a9;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v16, v17);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

void sub_1976B20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58)
{
  OUTLINED_FUNCTION_76_1();
  v75 = v58;
  v76 = v59;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_129(inited, xmmword_19775A860);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v71;
  inited[2].n128_u64[1] = v69;
  inited[3].n128_u64[0] = v67;
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v65;
  inited[5].n128_u64[0] = v63;
  inited[5].n128_u64[1] = v61;
  inited[8].n128_u64[1] = type metadata accessor for Expression();
  inited[9].n128_u64[0] = &off_1F0BBB748;
  inited[7].n128_u64[0] = v75;
  inited[7].n128_u64[1] = v76;
  inited[8].n128_u64[0] = a55;
  inited[11].n128_u64[0] = type metadata accessor for Expression();
  inited[11].n128_u64[1] = &off_1F0BBB748;
  inited[9].n128_u64[1] = a56;
  inited[10].n128_u64[0] = a57;
  inited[10].n128_u64[1] = a58;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v73, v74);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  OUTLINED_FUNCTION_70_1();
}

uint64_t sub_1976B225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1976B5258(a1, a2, a3, v8);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_0();
  sub_1976B3258();
  v4 = *(*(v3 + 16) + 16);
  OUTLINED_FUNCTION_63_1();
  sub_1976B3328(v5);
  OUTLINED_FUNCTION_130();
  sub_19764C774(v8, v6 + 32);
  *(v3 + 16) = v3 + 16;
  return swift_endAccess();
}

uint64_t sub_1976B232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v12[4] = &off_1F0BBB748;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;

  sub_1976B5330(v12, 0x4B43454843, 0xE500000000000000, v13);
  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_0();
  sub_1976B3258();
  v8 = *(*(v4 + 16) + 16);
  OUTLINED_FUNCTION_63_1();
  sub_1976B3328(v9);
  OUTLINED_FUNCTION_130();
  sub_19764C774(v13, v10 + 32);
  *(v4 + 16) = v4 + 16;
  return swift_endAccess();
}

uint64_t sub_1976B2458()
{
  v0 = sub_19774F780();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1976B24A4(char a1)
{
  result = 0x4F49544341204F4ELL;
  switch(a1)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    case 4:
      result = 0x45444143534143;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1976B2570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1976B2458();
  *a2 = result;
  return result;
}

uint64_t sub_1976B25A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976B24A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976B25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, char a9)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v12 = type metadata accessor for Expression();

  sub_1976B3748(v15, a4, v14, a8, a9, v9, v12, v12, &off_1F0BBB748, &off_1F0BBB748);
}

uint64_t sub_1976B26C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, char a9)
{
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  OUTLINED_FUNCTION_134();
  v12 = OUTLINED_FUNCTION_92_0();
  v13 = OUTLINED_FUNCTION_94_0();

  sub_1976B3748(v16, a4, v15, a8, a9, v9, v12, v13, &off_1F0BBB748, &off_1F0BBB748);
}

void sub_1976B27BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, char a27)
{
  OUTLINED_FUNCTION_42();
  v57 = v27;
  v56 = v28;
  v55 = v29;
  v31 = v30;
  v33 = v32;
  v54 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_129(inited, xmmword_19775A850);
  v42 = type metadata accessor for Expression();
  inited[3].n128_u64[1] = v42;
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v40;
  inited[2].n128_u64[1] = v38;
  inited[3].n128_u64[0] = v36;
  v43 = type metadata accessor for Expression();
  inited[6].n128_u64[0] = v43;
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v54;
  inited[5].n128_u64[0] = v33;
  inited[5].n128_u64[1] = v31;

  OUTLINED_FUNCTION_112(v64);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  sub_19764E1F4(v55, v62);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_19775A850;
  *(v44 + 32) = v56;
  *(v44 + 40) = a21;
  *(v44 + 48) = a22;
  *(v44 + 56) = v42;
  *(v44 + 64) = &off_1F0BBB748;
  *(v44 + 96) = v43;
  *(v44 + 104) = &off_1F0BBB748;
  *(v44 + 72) = a23;
  *(v44 + 80) = a24;
  *(v44 + 88) = a25;

  OUTLINED_FUNCTION_112(v63);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  sub_197647660(v62, v58, &qword_1EAF3FFF0, &qword_19775E440);
  v45 = v65;
  v46 = v66;
  v47 = __swift_project_boxed_opaque_existential_0Tm(v64, v65);
  v48 = v60;
  v49 = v61;
  v50 = __swift_project_boxed_opaque_existential_0Tm(v59, v60);
  sub_1976B3748(v47, v58, v50, a26, a27, v57, v45, v48, v46, v49);
  OUTLINED_FUNCTION_48_2();
  sub_19764CAE4(v51, v52, v53);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v58);
  OUTLINED_FUNCTION_43();
}

void sub_1976B2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned __int8 a32, char a33)
{
  OUTLINED_FUNCTION_42();
  v68 = v33;
  v65 = v34;
  v67 = v35;
  v37 = v36;
  v39 = v38;
  v64 = v40;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;

  v66 = OUTLINED_FUNCTION_94_0();
  *(inited + 56) = v66;
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v46;
  *(inited + 40) = v44;
  *(inited + 48) = v42;

  v48 = type metadata accessor for Expression();
  *(inited + 96) = v48;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v64;
  *(inited + 80) = v39;
  *(inited + 88) = v37;

  v49 = type metadata accessor for Expression();
  *(inited + 136) = v49;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = v67;
  *(inited + 120) = v65;
  *(inited + 128) = a21;
  OUTLINED_FUNCTION_112(v75);
  swift_setDeallocating();
  v50 = OUTLINED_FUNCTION_91();
  sub_19764D558(v50, v51);
  sub_19764E1F4(a22, v73);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_19775A7E0;

  *(v52 + 32) = a23;
  *(v52 + 40) = a24;
  *(v52 + 56) = v66;
  *(v52 + 64) = &off_1F0BBB748;
  *(v52 + 48) = a25;

  *(v52 + 96) = v48;
  *(v52 + 104) = &off_1F0BBB748;
  *(v52 + 72) = a26;
  *(v52 + 80) = a27;
  *(v52 + 88) = a28;

  *(v52 + 136) = v49;
  *(v52 + 144) = &off_1F0BBB748;
  *(v52 + 112) = a29;
  *(v52 + 120) = a30;
  *(v52 + 128) = a31;
  OUTLINED_FUNCTION_112(v74);
  swift_setDeallocating();
  v53 = OUTLINED_FUNCTION_91();
  sub_19764D558(v53, v54);
  sub_197647660(v73, v69, &qword_1EAF3FFF0, &qword_19775E440);
  v55 = v76;
  v56 = v77;
  v57 = __swift_project_boxed_opaque_existential_0Tm(v75, v76);
  v58 = v71;
  v59 = v72;
  v60 = __swift_project_boxed_opaque_existential_0Tm(v70, v71);
  sub_1976B3748(v57, v69, v60, a32, a33, v68, v55, v58, v56, v59);
  OUTLINED_FUNCTION_48_2();
  sub_19764CAE4(v61, v62, v63);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_destroy_boxed_opaque_existential_0(v69);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976B2DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_19764E1F4(a1, v15);
  sub_19764E1F4(a2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x434E455245464552;
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v6;
  v7 = v15[4];
  __swift_project_boxed_opaque_existential_0Tm(v15, v15[3]);
  sub_1976BABD8(0, v7, (inited + 72));
  v8 = v17;
  v9 = v18;
  v10 = __swift_project_boxed_opaque_existential_0Tm(v16, v17);
  v11 = sub_1976B5D38(v10, 0, 0xE000000000000000, v8, v9);
  *(inited + 136) = v6;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  *(inited + 128) = v13;
  sub_197649FEC(inited, a3);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  return sub_19764CAE4(v15, &qword_1EAF3FFF0, &qword_19775E440);
}

uint64_t sub_1976B2F34()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1976B2F54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1976B2FC4(char a1)
{
  sub_19774F930();
  MEMORY[0x19A8E5570](a1 & 1);
  return sub_19774F950();
}

uint64_t sub_1976B3028()
{
  v1 = *v0;
  sub_19774F930();
  sub_1976B2F9C(v3, v1);
  return sub_19774F950();
}

uint64_t sub_1976B306C()
{
  v0 = OUTLINED_FUNCTION_108();
  sub_1976497AC(v0, v1);

  return OUTLINED_FUNCTION_91();
}

uint64_t sub_1976B30C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197649FEC(a3, v9);
  v5 = v10;
  v6 = v11;
  v7 = __swift_project_boxed_opaque_existential_0Tm(v9, v10);
  sub_1976B5D38(v7, a1, a2, v5, v6);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v9);
}

uint64_t sub_1976B314C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4B43454843;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  sub_19764E1F4(a1, inited + 72);
  sub_197649FEC(inited, a2);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

void sub_1976B3258()
{
  OUTLINED_FUNCTION_140();
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19764F2F8(0, v5[2] + 1, 1, v5, v4, v3, v2, v0);
    *v1 = v7;
  }
}

void sub_1976B3328(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    v3 = OUTLINED_FUNCTION_47_1(v2);
    sub_19764F2F8(v3, v4, 1, v5, v6, v7, v8, v9);
    *v1 = v10;
  }
}

void sub_1976B33B0()
{
  OUTLINED_FUNCTION_126();
  if (v5)
  {
    OUTLINED_FUNCTION_14();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_107();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40018, &qword_19775E6D0);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_178(v9);
    OUTLINED_FUNCTION_148(v10 / 80);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = (v3 + 32);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[80 * v2] <= v11)
    {
      memmove(v11, v12, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1976B349C()
{
  OUTLINED_FUNCTION_126();
  if (v3)
  {
    OUTLINED_FUNCTION_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_107();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40020, &qword_19775E5E8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

char *sub_1976B3584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

uint64_t sub_1976B35AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1976B35C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27[3] = a13;
  v27[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a13 - 8) + 16))(boxed_opaque_existential_1, a1, a13);
  sub_1976AA578(v27, a2, a3, a4, a5, a6, a7, a8, v26, a9, a10, a11);
  swift_beginAccess();
  sub_1976B3258();
  v22 = *(*(a12 + 16) + 16);
  sub_1976B3328(v22);
  v23 = *(a12 + 16);
  *(v23 + 16) = v22 + 1;
  sub_19764C774(v26, v23 + 40 * v22 + 32);
  *(a12 + 16) = v23;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1976B3748(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a4;
  v53[3] = a7;
  v53[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v52[3] = a8;
  v52[4] = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a8 - 8) + 16))(v20, a3, a8);
  sub_19764E1F4(a2, v50);
  sub_19764E1F4(v52, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  sub_1976B5330(v53, 0x204E474945524F46, 0xEB0000000059454BLL, (inited + 32));
  sub_197647660(v50, &v46, &qword_1EAF3FFF0, &qword_19775E440);
  sub_1976B2DB8(&v46, v49, (inited + 72));
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(&v46);
  if (v18 == 5)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    *&v46 = 0x5441445055204E4FLL;
    *(&v46 + 1) = 0xEA00000000002045;
    v27 = sub_1976B24A4(a4);
    MEMORY[0x19A8E4C40](v27);

    v23 = *(&v46 + 1);
    v22 = v46;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    v26 = &off_1F0BBB748;
    v24 = MEMORY[0x1E69E7CC0];
  }

  *(inited + 112) = v22;
  *(inited + 120) = v23;
  *(inited + 128) = v24;
  *(inited + 136) = v25;
  *(inited + 144) = v26;
  if (a5 == 5)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    *&v46 = 0x54454C4544204E4FLL;
    *(&v46 + 1) = 0xEA00000000002045;
    v33 = sub_1976B24A4(a5);
    MEMORY[0x19A8E4C40](v33);

    v29 = *(&v46 + 1);
    v28 = v46;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    v32 = &off_1F0BBB748;
    v30 = MEMORY[0x1E69E7CC0];
  }

  *(inited + 152) = v28;
  *(inited + 160) = v29;
  v34 = 32;
  *(inited + 168) = v30;
  *(inited + 176) = v31;
  *(inited + 184) = v32;
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_197647660(inited + v34, &v46, &qword_1EAF3FFE0, &qword_19775E430);
    v43[0] = v46;
    v43[1] = v47;
    v44 = v48;
    if (*(&v47 + 1))
    {
      sub_19764C774(v43, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v35[2] + 1, 1, v35, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v35 = v38;
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        sub_19764F2F8(v36 > 1, v37 + 1, 1, v35, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v35 = v39;
      }

      v35[2] = v37 + 1;
      sub_19764C774(v45, &v35[5 * v37 + 4]);
    }

    else
    {
      sub_19764CAE4(v43, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v34 += 40;
  }

  while (v34 != 192);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v35, &v46);

  swift_beginAccess();
  sub_1976B3258();
  v40 = *(*(a6 + 16) + 16);
  sub_1976B3328(v40);
  v41 = *(a6 + 16);
  *(v41 + 16) = v40 + 1;
  sub_19764C774(&v46, v41 + 40 * v40 + 32);
  *(a6 + 16) = v41;
  swift_endAccess();
  sub_19764CAE4(v50, &qword_1EAF3FFF0, &qword_19775E440);
  __swift_destroy_boxed_opaque_existential_0(v53);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

unint64_t sub_1976B3C30()
{
  result = qword_1EAF40008;
  if (!qword_1EAF40008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40008);
  }

  return result;
}

unint64_t sub_1976B3C88()
{
  result = qword_1EAF40010;
  if (!qword_1EAF40010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40010);
  }

  return result;
}

uint64_t sub_1976B3CDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1976B3D64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1976B3E3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1976B3EC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_21_4()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_19764CAE4(v2 - 152, v0, v1);
}

uint64_t OUTLINED_FUNCTION_29_3(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);

  return sub_1976C73F8(v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_19764CAE4(&a31, v31, v32);
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_1976B35C0(v31 - 112, v30, v29, a17 & 1, 0, 0, v31 - 152, &a29, &a19, 0, 3uLL, a15, a13, a14);
}

void OUTLINED_FUNCTION_60_1()
{
  v1 = v0[3];
  v4 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
}

void *OUTLINED_FUNCTION_61_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_19764CAE4(a1, v1, v2);
}

void OUTLINED_FUNCTION_89_1()
{
  v1[18] = 0;
  v1[19] = 0x4C4C554E20544F4ELL;
  v1[20] = 0xE800000000000000;
  v1[21] = v0;
}

uint64_t OUTLINED_FUNCTION_92_0()
{

  return type metadata accessor for Expression();
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return type metadata accessor for Expression();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_19764C59C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v33 + 8);
  a32 = v34;
  a33 = v36;

  return __swift_allocate_boxed_opaque_existential_1(&a29);
}

uint64_t *OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(v35 + 8);
  a34 = v36;
  a35 = v38;

  return __swift_allocate_boxed_opaque_existential_1(&a31);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_19764C59C(v1, v0);
}

void OUTLINED_FUNCTION_112(uint64_t *a1@<X8>)
{

  sub_197649FEC(v1, a1);
}

uint64_t OUTLINED_FUNCTION_114()
{

  return sub_19764C59C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_117()
{
}

uint64_t OUTLINED_FUNCTION_120()
{
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_19764C774(&a33, &a17);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_19774F420();
}

__n128 OUTLINED_FUNCTION_125()
{
  result = v0[1];
  v2 = *v0;
  return result;
}

void OUTLINED_FUNCTION_132(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{

  sub_19764F2F8(a1, a2, a3, a4, a5, a6, v6, v7);
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1976B35C0(a1, a2, a3, a4, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_135()
{

  return type metadata accessor for Expression();
}

uint64_t OUTLINED_FUNCTION_137@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_19764C774(&a10, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_138()
{
}

double OUTLINED_FUNCTION_141()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

double OUTLINED_FUNCTION_145()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

void OUTLINED_FUNCTION_149(__n128 a1, __n128 a2)
{
  v2[10] = a2;
  v2[11] = a1;
  v2[12].n128_u64[0] = v2[22].n128_u64[0];
  v3 = v2[11].n128_u64[1];
}

void OUTLINED_FUNCTION_152(__n128 a1)
{
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
  v1[12] = a1;
  v1[13] = a1;
  v1[14].n128_u64[0] = 0;
}

void *OUTLINED_FUNCTION_164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(v13 + 16) = v16;

  return sub_19764C774(&a13, v13 + v15 * v14 + 32);
}

uint64_t OUTLINED_FUNCTION_166()
{
  v2 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1)
{

  return sub_1976B5D38(a1, 0, 0xE000000000000000, v1, v2);
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_197647660(&a43, &a33, a3, a4);
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1976B5330(va, a1, 0xE700000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_197647660(v33 - 176, &a33, a3, a4);
}

uint64_t OUTLINED_FUNCTION_171()
{
}

uint64_t *OUTLINED_FUNCTION_172@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = v1;
  *(v2 - 184) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 216));
}

uint64_t OUTLINED_FUNCTION_173()
{
  v2 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_174()
{
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_197647660(v33 - 224, &a33, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_176@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 200) = v1;
  *(v2 - 192) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 224));
}

uint64_t OUTLINED_FUNCTION_177()
{
}

uint64_t OUTLINED_FUNCTION_179()
{

  return sub_19764D558(v0, v1);
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_19764E1F4(a8, va);
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_19764C774((v0 + 320), v0 + 80);
}

uint64_t sub_1976B49C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v1, 0);
    v3 = (a1 + 32);
    sub_1976B4C2C();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_19774F080();
      v10 = v9;

      MEMORY[0x19A8E4C40](v8, v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19764AD60((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  sub_1976A7CC8();
  v14 = sub_19774EEB0();

  return v14;
}

uint64_t sub_1976B4B5C(uint64_t a1)
{
  v1 = sub_1976B49C8(a1);
  MEMORY[0x19A8E4C40](v1);

  MEMORY[0x19A8E4C40](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1976B4BD0(uint64_t result, uint64_t a2)
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

unint64_t sub_1976B4C2C()
{
  result = qword_1EAF40048;
  if (!qword_1EAF40048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40048);
  }

  return result;
}

uint64_t sub_1976B4C80(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1976B4E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4CA0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1976B4F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1976B4CC0(void *a1, int64_t a2, char a3)
{
  result = sub_1976B5030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4CE0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1976B5148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1976B4D00(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1976B4118(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE88, &qword_19775DF70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B4E18(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40060, &qword_19775E6D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1976B4114((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40068, &unk_19775E6E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B4F28(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40018, &qword_19775E6D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_1976B3584((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1976B5030(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40028, &qword_19775E5F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1976B4118(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40030, &qword_19775E5F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B5148(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40050, &qword_19775E6B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1976B4114((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40058, &unk_19775E6C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B5258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a2;
  v18 = a3;

  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  v6 = v17;
  v7 = v18;
  sub_197649FEC(a1, &v17);
  v8 = v19;
  v9 = v20;
  v10 = __swift_project_boxed_opaque_existential_0Tm(&v17, v19);
  v11 = sub_1976B5B74(v10, v6, v7, v8, v9);
  v13 = v12;
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_0(&v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  a4[3] = result;
  a4[4] = &off_1F0BBB748;
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v15;
  return result;
}

uint64_t sub_1976B5330@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v9 = sub_1976B5B74(v8, a2, a3, v6, v7);
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  a4[3] = result;
  a4[4] = &off_1F0BBB748;
  *a4 = v9;
  a4[1] = v11;
  a4[2] = v13;
  return result;
}

uint64_t sub_1976B53EC(void *a1, uint64_t a2)
{

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  v5 = *(v4 + 8);
  v6 = v5(v3, v4);
  v8 = v7;

  MEMORY[0x19A8E4C40](v6, v8);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v5(v3, v4);

  return nullsub_1(a2);
}

uint64_t sub_1976B551C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  sub_19764E1F4(a1, inited + 32);
  sub_19764E1F4(a2, inited + 72);
  v11 = sub_1976B55F4(inited, a3, a4, a5);
  swift_setDeallocating();
  sub_19764F1B0();
  return v11;
}

uint64_t sub_1976B55F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Expression();
  v19 = 32;
  v20 = 0xE100000000000000;
  MEMORY[0x19A8E4C40](a3, a4);
  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  sub_197649FEC(a1, &v19);

  v9 = v22;
  v10 = v23;
  __swift_project_boxed_opaque_existential_0Tm(&v19, v22);
  v18[0] = (v10[1])(v9, v10);
  v18[1] = v11;
  v18[2] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_19764B5C8(&qword_1EAF3F410, &qword_1EAF3FFC0, &qword_19775E1D8);
  sub_19764B658(v18, v8, v13, WitnessTable, v15);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  v16 = v24;
  if (a2)
  {
    v22 = v8;
    v23 = &off_1F0BBB748;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v16 = sub_1976B53EC(&v19, 0);
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  return v16;
}

uint64_t sub_1976B57AC(uint64_t a1)
{
  sub_19765079C(a1, &v7);
  if (v8)
  {
    sub_19764C774(&v7, v9);
    sub_19764E1F4(v9, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      v6[0] = 10104;
      v6[1] = 0xE200000000000000;
      v1 = sub_1976B49C8(v5);
      MEMORY[0x19A8E4C40](v1);

      MEMORY[0x19A8E4C40](39, 0xE100000000000000);

      v2 = 10104;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_19764C774(&v7, v6);
        sub_19774F6E0();
        v2 = 0;
        __swift_destroy_boxed_opaque_existential_0(v6);
        v3 = v9;
        goto LABEL_9;
      }

      v2 = sub_1976497AC(39, 0xE100000000000000);
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
    v3 = &v7;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v3);
    return v2;
  }

  sub_1976B5CD0(&v7);
  return 1280070990;
}

uint64_t sub_1976B5940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15[-v9 - 8];
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_19764E1F4(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
  swift_dynamicCast();
  (*(a3 + 48))(v10, a2, a3);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_1976B5B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19765079C(a1, v6);
  if (v6[3])
  {
    sub_1976B5940(v6, a2, a3);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1976B5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v17 = a2;

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_0Tm(v18, v19);
  v12 = *(a5 + 8);
  v13 = v12(a4, a5);
  v15 = v14;

  MEMORY[0x19A8E4C40](v13, v15);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v12(v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v18);
  return v17;
}

uint64_t sub_1976B5CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1976B5D3C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62B0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_67_2();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  OUTLINED_FUNCTION_133_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1976B5DF8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62C8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_67_2();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_133_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1976B5E98(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62E0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_67_2();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_133_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1976B5F64(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_1976B5FE8(a4);
  v9 = sub_1976B551C(a1, a2, a3, v7, v8);

  return v9;
}

uint64_t sub_1976B5FE8(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1976B60DC(void *a1, char a2)
{
  v3 = sub_1976B5FE8(a2);
  v4 = sub_1976B53EC(a1, v3);

  return v4;
}

void sub_1976B642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _UNKNOWN **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _UNKNOWN **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_41_3();
  a49 = v52;
  a50 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = a51;
  v67 = a52;
  a36 = __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
  a37 = &off_1F0BBB748;
  a33 = v65;
  a34 = v63;
  a35 = v61;
  a31 = a36;
  a32 = &off_1F0BBB748;
  a28 = v59;
  a29 = v57;
  a30 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v71 = OUTLINED_FUNCTION_73_2(inited, xmmword_19775A850);
  sub_19764E1F4(v71, &inited[2]);
  sub_19764E1F4(&a28, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  a9 = v72;
  a10 = v73;

  MEMORY[0x19A8E4C40](v66, v67);
  OUTLINED_FUNCTION_71_2();
  sub_197649FEC(inited, &a9);

  v74 = OUTLINED_FUNCTION_1_20(&a9);
  v75(v74);
  OUTLINED_FUNCTION_15_6();
  __swift_destroy_boxed_opaque_existential_0(&a9);
  v76 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_103_0(v76, v77, v78, v79, v80);
  OUTLINED_FUNCTION_19_5();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a28);
  OUTLINED_FUNCTION_14_6(&a33);
  OUTLINED_FUNCTION_40_3();
}

void sub_1976B65C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _UNKNOWN **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _UNKNOWN **a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_101_0();
  a47 = v52;
  a48 = v53;
  v55 = v54;
  OUTLINED_FUNCTION_4_7();
  a37 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
  a38 = &off_1F0BBB748;
  a34 = v51;
  a35 = v50;
  a36 = v49;
  a32 = MEMORY[0x1E69E6158];
  a33 = &off_1F0BBA860;
  a29 = v48;
  a30 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v59 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v59, &inited[2]);
  sub_19764E1F4(&a29, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_21_5(v60);

  v61 = OUTLINED_FUNCTION_1_20(&a10);
  v62(v61);
  OUTLINED_FUNCTION_15_6();
  __swift_destroy_boxed_opaque_existential_0(&a10);
  v63 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_103_0(v63, v64, v65, v66, v67);
  OUTLINED_FUNCTION_19_5();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a29);
  OUTLINED_FUNCTION_14_6(&a34);
  OUTLINED_FUNCTION_100_0();
}

void sub_1976B6728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _UNKNOWN **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _UNKNOWN **a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_101_0();
  a47 = v48;
  a48 = v49;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  a37 = MEMORY[0x1E69E6158];
  a38 = &off_1F0BBA860;
  a34 = v56;
  a35 = v57;
  a32 = __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  a33 = &off_1F0BBB748;
  a29 = v55;
  a30 = v53;
  a31 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v61, &inited[2]);
  sub_19764E1F4(&a29, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_21_5(v62);

  v63 = OUTLINED_FUNCTION_1_20(&a10);
  v64(v63);
  OUTLINED_FUNCTION_15_6();
  __swift_destroy_boxed_opaque_existential_0(&a10);
  v65 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_103_0(v65, v66, v67, v68, v69);
  OUTLINED_FUNCTION_19_5();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a29);
  OUTLINED_FUNCTION_14_6(&a34);
  OUTLINED_FUNCTION_100_0();
}

uint64_t sub_1976B6EB4()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_46(v0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_92_1();
  v11();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_55_3();

  v20 = OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30[0]);
  sub_1976B5F64(v20, v21, v22, v23);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  return OUTLINED_FUNCTION_5_9(v30);
}

uint64_t sub_1976B6F5C()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_46(v0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_92_1();
  v11();
  sub_19774F420();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_55_3();

  v20 = OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30[0]);
  sub_1976B5F64(v20, v21, v22, v23);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  return OUTLINED_FUNCTION_5_9(v30);
}

uint64_t sub_1976B700C()
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_125_0();

  sub_1976B60DC(v1, 1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v1);
}

uint64_t sub_1976B706C()
{
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for Expression();
  OUTLINED_FUNCTION_124_0();

  sub_1976B60DC(v1, 1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v1);
}

uint64_t sub_1976B77D4()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_46(v0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_92_1();
  v11();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_55_3();

  v20 = OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30[0]);
  sub_1976B5F64(v20, v21, v22, v23);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  return OUTLINED_FUNCTION_5_9(v30);
}

uint64_t sub_1976B787C()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4]);
  OUTLINED_FUNCTION_46(v0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_92_1();
  v11();
  sub_19774F420();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_55_3();

  v20 = OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30[0]);
  sub_1976B5F64(v20, v21, v22, v23);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  return OUTLINED_FUNCTION_5_9(v30);
}

uint64_t sub_1976B799C()
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_125_0();

  sub_1976B60DC(v1, 12);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v1);
}

void sub_1976B7A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void), uint64_t (*a26)(uint64_t), uint64_t (*a27)(uint64_t), void (*a28)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_117_0();
  v29 = v28;
  OUTLINED_FUNCTION_4_7();
  v30 = a25();
  v39 = a26(v30);
  v32 = v31;
  v34 = v33;

  v35 = OUTLINED_FUNCTION_44_3();
  v36 = a27(v35);
  a28(v39, v32, v34, v36, v37, v38, v29);

  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_1976B7B5C()
{
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for Expression();
  OUTLINED_FUNCTION_124_0();

  sub_1976B60DC(v1, 12);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v1);
}

void sub_1976B8670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _UNKNOWN **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_101_0();
  a47 = v52;
  a48 = v53;
  OUTLINED_FUNCTION_68_2(v54, v55, v56, v57, v58, v59);
  OUTLINED_FUNCTION_46(v48);
  (*(v60 + 16))();
  OUTLINED_FUNCTION_72_2();
  a32 = type metadata accessor for Expression();
  a33 = &off_1F0BBB748;
  a29 = v51;
  a30 = v50;
  a31 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v62, &inited[2]);
  sub_19764E1F4(&a29, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_11_6();

  v63 = OUTLINED_FUNCTION_91();
  MEMORY[0x19A8E4C40](v63);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31_3(v64);

  v65 = OUTLINED_FUNCTION_3_11(&a10);
  v66(v65);
  OUTLINED_FUNCTION_18_6();
  v67 = __swift_destroy_boxed_opaque_existential_0(&a10);
  OUTLINED_FUNCTION_16_6(v67, v68, v69, v70, v71, &qword_1EAF3FFF8, &qword_19775E448);
  OUTLINED_FUNCTION_29_4();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a29);
  __swift_destroy_boxed_opaque_existential_0(&a34);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_100_0();
}

uint64_t sub_1976B87E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  OUTLINED_FUNCTION_91_1();
  v15 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_76_2();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  OUTLINED_FUNCTION_61();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v23, a1, v15);
  if (__swift_getEnumTagSinglePayload(v23, 1, a5) == 1)
  {
    (*(v17 + 8))(v23, v15);
    v31 = OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_119_0();
    v80 = v31;
    v81 = &off_1F0BBB748;
    OUTLINED_FUNCTION_49_3();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_48_3();
    swift_getWitnessTable();
    sub_1976C7578(v11, v31, WitnessTable, a6, v79);
    v77 = v31;
    v78 = &off_1F0BBB748;
    OUTLINED_FUNCTION_111_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    v34 = OUTLINED_FUNCTION_73_2(inited, xmmword_19775A850);
    sub_19764E1F4(v34, &inited[2]);
    sub_19764E1F4(v76, &inited[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v72 = v35;
    v73 = v36;

    MEMORY[0x19A8E4C40](a10, a11);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(inited, v37);

    v38 = v75;
    __swift_project_boxed_opaque_existential_0Tm(&v72, v74);
    OUTLINED_FUNCTION_34(v38);
    v39 = OUTLINED_FUNCTION_110();
    v40(v39);
    __swift_destroy_boxed_opaque_existential_0(&v72);
    OUTLINED_FUNCTION_33();
    sub_19764BD90(v41, v42, v43, v44, v45, v46, v47);

    swift_setDeallocating();
    sub_19764F1B0();
  }

  else
  {
    v67 = v25;
    (*(v25 + 32))(v30, v23, a5);
    v48 = *(a6 + 8);
    v80 = a5;
    v81 = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
    (*(v25 + 16))(boxed_opaque_existential_1, v30, a5);
    v77 = OUTLINED_FUNCTION_94_0();
    v78 = &off_1F0BBB748;
    OUTLINED_FUNCTION_111_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v50 = swift_initStackObject();
    v51 = OUTLINED_FUNCTION_73_2(v50, xmmword_19775A850);
    sub_19764E1F4(v51, &v50[2]);
    sub_19764E1F4(v76, &v50[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v72 = v52;
    v73 = v53;

    MEMORY[0x19A8E4C40](v68, a9);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(v50, v54);

    v55 = v75;
    __swift_project_boxed_opaque_existential_0Tm(&v72, v74);
    OUTLINED_FUNCTION_34(v55);
    v56 = OUTLINED_FUNCTION_110();
    v57(v56);
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_33();
    sub_19764BD90(v58, v59, v60, v61, v62, v63, v64);

    swift_setDeallocating();
    sub_19764F1B0();
    (*(v67 + 8))(v30, a5);
  }

  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v79);
  return OUTLINED_FUNCTION_110();
}

void sub_1976B929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _UNKNOWN **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_101_0();
  a47 = v52;
  a48 = v53;
  OUTLINED_FUNCTION_68_2(v54, v55, v56, v57, v58, v59);
  OUTLINED_FUNCTION_46(v48);
  (*(v60 + 16))();
  OUTLINED_FUNCTION_128();
  a32 = OUTLINED_FUNCTION_92_0();
  a33 = &off_1F0BBB748;
  a29 = v51;
  a30 = v50;
  a31 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v62, &inited[2]);
  sub_19764E1F4(&a29, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_11_6();

  v63 = OUTLINED_FUNCTION_91();
  MEMORY[0x19A8E4C40](v63);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31_3(v64);

  v65 = OUTLINED_FUNCTION_3_11(&a10);
  v66(v65);
  OUTLINED_FUNCTION_18_6();
  v67 = __swift_destroy_boxed_opaque_existential_0(&a10);
  OUTLINED_FUNCTION_16_6(v67, v68, v69, v70, v71, &qword_1EAF40000, &unk_19775E450);
  OUTLINED_FUNCTION_29_4();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a29);
  __swift_destroy_boxed_opaque_existential_0(&a34);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_100_0();
}

uint64_t sub_1976B9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_120_0();

  MEMORY[0x19A8E4C40](0xD000000000000010, 0x8000000197761CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v10 = *(a6 + 56);
  OUTLINED_FUNCTION_72_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v10(a5, a6);
  v13 = *(sub_19774EEC0() + 36);
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v10(a5, a6);

  sub_1976B5D3C(inited);
  return a2;
}

void sub_1976B9808()
{
  OUTLINED_FUNCTION_41_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_120_0();

  MEMORY[0x19A8E4C40](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x19A8E4C40](v7, v5);
  MEMORY[0x19A8E4C40](1059077152, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  v9 = *(v1 + 56);
  OUTLINED_FUNCTION_77_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_110_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));

  v12 = OUTLINED_FUNCTION_91();
  v9(v12);

  sub_1976B5D3C(inited);
  sub_1976B5D3C(v3);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_19775A780;
  v14 = *(sub_19774F260() + 36);
  *(v13 + 56) = AssociatedTypeWitness;
  *(v13 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  v15 = OUTLINED_FUNCTION_91();
  v9(v15);
  sub_1976B5D3C(v13);
  OUTLINED_FUNCTION_40_3();
}

uint64_t sub_1976B9A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  MEMORY[0x19A8E4C40](a10, a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  v13 = *(a6 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v14 = OUTLINED_FUNCTION_110_0();
  v13(v14);

  sub_1976B5D3C(inited);
  return a2;
}

uint64_t sub_1976B9BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_19764CAC4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v15 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_19764CAC4((v9 > 1), v8 + 1, 1);
        v2 = v15;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
      v14 = &off_1F0BBB748;
      *&v11 = v6;
      *(&v11 + 1) = v5;
      v12 = v7;
      *(v2 + 16) = v8 + 1;
      sub_19764C774(&v11, v2 + 40 * v8 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1976B9CDC(uint64_t a1)
{
  sub_1976B9BC0(a1);
  OUTLINED_FUNCTION_11_6();
  v1 = OUTLINED_FUNCTION_110_0();
  MEMORY[0x19A8E4C40](v1);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31_3(v2);

  v3 = OUTLINED_FUNCTION_3_11(v10);
  v4(v3);
  OUTLINED_FUNCTION_18_6();
  v5 = __swift_destroy_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_16_6(v5, v6, v7, v8, v9, &qword_1EAF3FFF8, &qword_19775E448);
  OUTLINED_FUNCTION_15_6();

  OUTLINED_FUNCTION_75();
}

void sub_1976BA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _UNKNOWN **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _UNKNOWN **a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_101_0();
  a47 = v50;
  a48 = v51;
  OUTLINED_FUNCTION_112_0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  a37 = MEMORY[0x1E69E6370];
  a38 = &off_1F0BBA890;
  LOBYTE(a34) = v58;
  a32 = __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
  a33 = &off_1F0BBB748;
  a29 = v57;
  a30 = v55;
  a31 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v62, &inited[2]);
  sub_19764E1F4(&a29, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_11_6();

  MEMORY[0x19A8E4C40](v49, v48);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_21_5(v63);

  v64 = OUTLINED_FUNCTION_1_20(&a10);
  v65(v64);
  OUTLINED_FUNCTION_15_6();
  __swift_destroy_boxed_opaque_existential_0(&a10);
  v66 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_103_0(v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_19_5();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a29);
  OUTLINED_FUNCTION_14_6(&a34);
  OUTLINED_FUNCTION_100_0();
}

uint64_t OUTLINED_FUNCTION_19_5()
{
}

void OUTLINED_FUNCTION_21_5(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_197649FEC(v1, va);
}

uint64_t OUTLINED_FUNCTION_29_4()
{
}

uint64_t *OUTLINED_FUNCTION_30_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v15;
  a10 = v14;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

void OUTLINED_FUNCTION_32_4()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_62_1()
{
}