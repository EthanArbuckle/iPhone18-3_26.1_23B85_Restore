uint64_t sub_1BA2F49FC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

HealthExperienceUI::DataTypeDetailConfiguration::VerticalGroupComponent __swiftcall DataTypeDetailConfiguration.VerticalGroupComponent.init(identifier:childComponents:)(Swift::String identifier, Swift::OpaquePointer childComponents)
{
  *v2 = identifier;
  *(v2 + 16) = childComponents;
  result.identifier = identifier;
  result.childComponents = childComponents;
  return result;
}

uint64_t DataTypeDetailChildComponentMutating.replaceComponent(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 8))(a4, a5);
  v11 = 0;
  v12 = *(v10 + 16);
  while (1)
  {
    v13 = v12;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    if (v11 == v12)
    {
      goto LABEL_5;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = (v11 + 1);
    *&v46 = v11;
    sub_1B9F0A534(v10 + 32 + 40 * v11, &v46 + 8);
    v14 = v46;
    v15 = v47;
    v16 = v48;
LABEL_5:
    v49[0] = v14;
    v49[1] = v15;
    v7 = v16;
    v49[2] = v16;
    if (!v16)
    {

      return v7 != 0;
    }

    v38 = v14;
    sub_1B9F1134C((v49 + 8), v43);
    sub_1B9F0A534(v43, v42);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA2F68FC(0, &qword_1EDC60ED0);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v39, &v46);
      v17 = *(&v47 + 1);
      v18 = v48;
      __swift_mutable_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      if ((*(v18 + 32))(a1, a2, a3, v17, v18))
      {

        v28 = *(&v47 + 1);
        v29 = *(&v48 + 1);
        v30 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
        *(&v40 + 1) = v28;
        *&v41 = v29;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
        (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
        v5 = (*(a5 + 24))(v42, a4);
        v13 = v32;
        v6 = *v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v6;
        if (result)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      sub_1BA0955CC(&v39);
    }

    v19 = v44;
    v20 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v21 = (*(v20 + 24))(v19, v20);
    v6 = v22;
    if (v21 == a1 && v22 == a2)
    {

LABEL_18:

      sub_1B9F374E8(a3, &v39, &qword_1EDC66C78, &unk_1EDC66C80);
      if (*(&v40 + 1))
      {
        sub_1B9F1134C(&v39, &v46);
        v5 = (*(a5 + 24))(&v39, a4);
        v13 = v24;
        v6 = *v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v6;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      }

      sub_1B9F43A50(&v39, &qword_1EDC66C78, &unk_1EDC66C80);
      v27 = (*(a5 + 24))(&v39, a4);
      sub_1BA0F0A1C(v38, &v46);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      v27(&v39, 0);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(v43);
      return v7 != 0;
    }

    v5 = sub_1BA4A8338();

    if (v5)
    {
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    v11 = v13;
  }

  __break(1u);
LABEL_32:
  v6 = sub_1BA2F67AC(v6);
  *v13 = v6;
LABEL_20:
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < v6[2])
  {
    __swift_assign_boxed_opaque_existential_1(&v6[5 * v38 + 4], &v46);
    v26 = &v39;
LABEL_28:
    (v5)(v26, 0);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    goto LABEL_29;
  }

  __break(1u);
LABEL_35:
  result = sub_1BA2F67AC(v6);
  v6 = result;
  *v13 = result;
LABEL_25:
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < v6[2])
  {
    v34 = &v6[5 * v38];
    __swift_destroy_boxed_opaque_existential_1((v34 + 4));
    sub_1B9F1134C(&v39, (v34 + 4));
    v26 = v42;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B9F0A534(a1, a7);
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  sub_1BA4A2488();
  swift_allocObject();
  v14 = a2;
  *(a7 + 56) = sub_1BA4A2468();
  sub_1B9F374E8(a4, &v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
  if (v19)
  {

    sub_1B9F43A50(a4, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B9F1134C(&v18, &v20);
  }

  else
  {
    v15 = sub_1BA4A22B8();
    v16 = sub_1BA4A22A8();
    v21 = v15;
    v22 = MEMORY[0x1E69A3CF8];
    *&v20 = v16;
    sub_1B9F43A50(a4, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v19)
    {
      sub_1B9F43A50(&v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    }
  }

  result = sub_1B9F1134C(&v20, a7 + 64);
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t DataTypeDetailConfiguration.childComponents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DataTypeDetailConfiguration.makeDataSource(context:)(uint64_t a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B9F0A534(v4, v18);
      v6 = v19;
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v8 = (*(v7 + 32))(a1, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v18);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      ObjectType = swift_getObjectType();
      v11 = nullsub_1(v8, ObjectType);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v12 = swift_getObjectType();
      v13 = nullsub_1(v11, v12);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1B9F1E00C(0, *(v5 + 16) + 1, 1, v5);
        v21 = v5;
      }

      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1B9F1E00C(v15 > 1, v16 + 1, 1, v5);
        swift_unknownObjectRelease();
        v21 = v5;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_1BA1BA008(v16, v13, &v21, v12, AssociatedConformanceWitness);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v5);
}

uint64_t sub_1BA2F5458(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1BA2F54B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = 0;
  v9 = *(v4 + 16);
  v30 = (v4 + 16);
  v10 = v9[2];
  v31 = a4 & 1;
  while (1)
  {
    v11 = v10;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v8 != v10)
    {
      if (v8 >= v9[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v11 = v8 + 1;
      *&v41 = v8;
      sub_1B9F0A534(&v9[5 * v8 + 4], &v41 + 8);
      v12 = v41;
      v13 = v42;
      v14 = v43;
    }

    v44[0] = v12;
    v44[1] = v13;
    v5 = v14;
    v44[2] = v14;
    if (!v14)
    {
      return v5 != 0;
    }

    v33 = v12;
    sub_1B9F1134C((v44 + 8), v38);
    sub_1B9F0A534(v38, v37);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA2F68FC(0, &qword_1EDC60ED0);
    if (swift_dynamicCast())
    {
      break;
    }

    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    sub_1BA0955CC(&v34);
LABEL_10:
    v17 = v39;
    v18 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    if ((*(v18 + 24))(v17, v18) == a2 && v19 == a3)
    {

LABEL_17:
      v22 = v33;
      if (a4)
      {
        v22 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_31;
        }
      }

      if (v9[2] >= v22)
      {
        if ((v22 & 0x8000000000000000) == 0)
        {
          sub_1B9F0A534(a1, &v41);
          sub_1BA0F135C(v22, v22, &v41);
LABEL_26:
          __swift_destroy_boxed_opaque_existential_1(v38);
          return v5 != 0;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = sub_1BA4A8338();

    if (v21)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v8 = v11;
  }

  sub_1BA0956E8(&v34, &v41);
  LOBYTE(v34) = v31;
  v15 = *(&v42 + 1);
  v16 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  if (((*(v16 + 40))(a1, a2, a3, &v34, v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_10;
  }

  v23 = *(&v42 + 1);
  v24 = *(&v43 + 1);
  v25 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  *(&v35 + 1) = v23;
  *&v36 = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_32:
  result = sub_1BA2F67AC(v9);
  v9 = result;
LABEL_23:
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < v9[2])
  {
    v28 = &v9[5 * v33];
    __swift_destroy_boxed_opaque_existential_1((v28 + 4));
    sub_1B9F1134C(&v34, (v28 + 4));
    *v30 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2F5814(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = 0;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v33 = *v4 + 32;
  v32 = a4 & 1;
  while (1)
  {
    v11 = v10;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v8 != v10)
    {
      if (v8 >= v9[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = v8 + 1;
      *&v43 = v8;
      sub_1B9F0A534(v33 + 40 * v8, &v43 + 8);
      v12 = v43;
      v13 = v44;
      v14 = v45;
    }

    v46[0] = v12;
    v46[1] = v13;
    v5 = v14;
    v46[2] = v14;
    if (!v14)
    {
      return v5 != 0;
    }

    v35 = v12;
    sub_1B9F1134C((v46 + 8), v40);
    sub_1B9F0A534(v40, v39);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA2F68FC(0, &qword_1EDC60ED0);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v36, &v43);
      LOBYTE(v36) = v32;
      v16 = *(&v44 + 1);
      v15 = v45;
      __swift_mutable_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
      if ((*(v15 + 40))(a1, a2, a3, &v36, v16, v15))
      {
        v24 = *(&v44 + 1);
        v25 = *(&v45 + 1);
        v26 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        *(&v37 + 1) = v24;
        *&v38 = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
        (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
        result = swift_isUniquelyReferenced_nonNull_native();
        v4 = v31;
        *v31 = v9;
        if ((result & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      sub_1BA0955CC(&v36);
    }

    v17 = v41;
    v18 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v19 = (*(v18 + 24))(v17, v18);
    v4 = v20;
    if (v19 == a2 && v20 == a3)
    {
      break;
    }

    v22 = sub_1BA4A8338();

    if (v22)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    v8 = v11;
  }

LABEL_17:
  v23 = v35;
  if ((a4 & 1) == 0)
  {
LABEL_21:
    v4 = v31;
    goto LABEL_22;
  }

  v23 = v35 + 1;
  v4 = v31;
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  if (v9[2] < v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    sub_1B9F0A534(a1, &v43);
    sub_1BA0F135C(v23, v23, &v43);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v5 != 0;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1BA2F67AC(v9);
  v9 = result;
  *v4 = result;
LABEL_26:
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < v9[2])
  {
    v29 = &v9[5 * v35];
    __swift_destroy_boxed_opaque_existential_1((v29 + 4));
    sub_1B9F1134C(&v36, (v29 + 4));
    *v4 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailChildComponentMutating.insertComponent(_:at:direction:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v40 = *a4;
  v35 = *(a6 + 8);
  v11 = v35(a5, a6);
  v12 = 0;
  v13 = *(v11 + 16);
  while (1)
  {
    v14 = v13;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    if (v12 != v13)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v14 = v12 + 1;
      *&v49 = v12;
      sub_1B9F0A534(v11 + 32 + 40 * v12, &v49 + 8);
      v15 = v49;
      v16 = v50;
      v17 = v51;
    }

    v52[0] = v15;
    v52[1] = v16;
    v8 = v17;
    v52[2] = v17;
    if (!v17)
    {

      return v8 != 0;
    }

    v41 = v15;
    sub_1B9F1134C((v52 + 8), v46);
    sub_1B9F0A534(v46, v45);
    sub_1B9F0D950(0, &unk_1EDC66C80);
    sub_1BA2F68FC(0, &qword_1EDC60ED0);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v42, &v49);
      LOBYTE(v42) = v40;
      v18 = *(&v50 + 1);
      v19 = v51;
      __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      if ((*(v19 + 40))(a1, a2, a3, &v42, v18, v19))
      {

        v28 = *(&v50 + 1);
        v29 = *(&v51 + 1);
        v30 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        *(&v43 + 1) = v28;
        *&v44 = v29;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
        (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
        v6 = (*(a6 + 24))(v45, a5);
        v14 = v32;
        v7 = *v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v7;
        if ((result & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      sub_1BA0955CC(&v42);
    }

    v20 = v47;
    v21 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v22 = (*(v21 + 24))(v20, v21);
    v7 = v23;
    if (v22 == a2 && v23 == a3)
    {
      break;
    }

    v6 = sub_1BA4A8338();

    if (v6)
    {
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    v12 = v14;
  }

LABEL_18:

  v14 = v41;
  v6 = a6;
  v7 = v36;
  if (v40)
  {
    v35(a5, a6);

    v14 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_32;
    }
  }

  v25 = (*(a6 + 24))(&v42, a5, a6);
  if (*(*v26 + 16) < v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v27 = v25;
    sub_1B9F0A534(a1, &v49);
    sub_1BA0F135C(v14, v14, &v49);
    v27(&v42, 0);
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1BA2F67AC(v7);
  v7 = result;
  *v14 = result;
LABEL_24:
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v41 < v7[2])
  {
    v34 = &v7[5 * v41];
    __swift_destroy_boxed_opaque_existential_1((v34 + 4));
    sub_1B9F1134C(&v42, (v34 + 4));
    (v6)(v45, 0);
    __swift_destroy_boxed_opaque_existential_1(&v49);
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v46);
    return v8 != 0;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailConfiguration.Context.healthExperienceStore.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t DataTypeDetailConfiguration.Context.pinnedContentManagerProvider.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t DataTypeDetailConfiguration.Context.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 64);

  return sub_1B9F1134C(a1, v1 + 64);
}

void *DataTypeDetailConfiguration.Context.chartContext.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void *DataTypeDetailConfiguration.Context.restorationUserActivity.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailConfiguration.HorizontalGroupComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for MultiColumnDataSource(0);
  v14 = a1;
  v4 = sub_1BA2F4458(sub_1BA2F6B98, v13, v3);
  v5 = MultiColumnDataSource.__allocating_init(_:)(v4);
  v12[2] = a1;
  v6 = sub_1BA2F4458(sub_1BA2F6888, v12, v3);
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  v7 = CompoundSectionedDataSource.init(_:)(v6);
  sub_1BA2F68A4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 1;
  *(inited + 56) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 64) = 2;
  *(inited + 40) = v7;
  *(inited + 48) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for MutableArrayDataSourceWithLayout;
  *(inited + 88) = &protocol witness table for MutableArrayDataSource;
  v9 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4();

  swift_arrayDestroy();
  type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();
  v10 = sub_1B9F1D348(v9, v7, &protocol witness table for CompoundSectionedDataSource, &protocol witness table for CompoundSectionedDataSource);

  return v10;
}

uint64_t sub_1BA2F648C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 32))(a2, v5, v6);
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedConformanceWitness();
  *a3 = v7;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.childComponents.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.makeDataSource(context:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[2] = a1;
  v3 = sub_1BA24A478(sub_1BA2F6958, v5, v2);
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v3);
}

uint64_t sub_1BA2F66A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[2] = a1;
  v3 = sub_1BA24A478(sub_1BA2F6BC4, v5, v2);
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v3);
}

uint64_t DataTypeDetailConfiguration.MutationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA2F68A4()
{
  if (!qword_1EDC5DB98)
  {
    sub_1B9F1ABA4();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DB98);
    }
  }
}

uint64_t sub_1BA2F68FC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA2F69B4()
{
  result = qword_1EBBF0410;
  if (!qword_1EBBF0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0410);
  }

  return result;
}

uint64_t sub_1BA2F6A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BA2F6A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CategoryViewController.typeGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup;
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32);
  v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_1BA2F6D60()
{
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 16);
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 categoryID];

  return HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(v2);
}

uint64_t sub_1BA2F6DD4()
{
  v0 = sub_1B9F3B7C8();
  sub_1BA2F9758(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v2 = sub_1BA4A4438();
  v3 = MEMORY[0x1E69DC130];
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v4 = sub_1BA0C3AC4();
  *(inited + 48) = &type metadata for TraitRootNavigationMode;
  *(inited + 56) = v4;
  sub_1B9F3BC30(inited);
  return v0;
}

void sub_1BA2F6E90(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA2F6EF8()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA2F6F4C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1BA2F700C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA2F70BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA2F7174(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2F71E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA2F7238(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

char *CategoryViewController.__allocating_init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA2F93F4(a1, a2, a3, a4);

  return v10;
}

char *CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BA2F93F4(a1, a2, a3, a4);

  return v5;
}

id CategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CategoryViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  type metadata accessor for CategoryGradientView();
  *v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[1] = &protocol witness table for CategoryGradientView;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA2F7534()
{
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  sub_1BA2F7CC0();
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B9FD0;
    *(v4 + 32) = 0xD000000000000016;
    *(v4 + 40) = 0x80000001BA4D09D0;
    v5 = HKDisplayCategoryIdentifierToString();
    if (v5)
    {
      v6 = v5;
      v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
    }

    *(v4 + 48) = v7;
    *(v4 + 56) = v9;
    strcpy((v4 + 64), "CollectionView");
    *(v4 + 79) = -18;
    v10 = sub_1BA4A6AE8();

    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v12.receiver = v0;
    v12.super_class = type metadata accessor for CategoryViewController();
    return objc_msgSendSuper2(&v12, sel_viewDidLoad);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA2F773C(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v4);
  sub_1BA4A71E8();
  LOBYTE(v12[0]) = 3;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v5 = type metadata accessor for CategoryViewController();
  v13.receiver = v1;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a1 & 1);
  result = [v1 collectionView];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    sub_1BA17A850();
    v9 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v9, v12);
    v10 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v11 = [v2 traitCollection];
    (*(v10 + 16))();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA2F7968()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CategoryViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 contentOffset];
  v4 = v3;

  v5 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v4 > 0.0)
  {
    v13 = -v4;
  }

  else
  {
    v13 = -0.0;
  }

  [v11 bounds];
  v15 = v14;

  [v6 setFrame_];
}

void sub_1BA2F7B18()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for DataTypeNoDataAvailableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_beginAccess();

  v5 = sub_1BA4A6758();

  [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  sub_1B9FF515C();

  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    sub_1B9FF5190();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA2F7CC0()
{
  v1 = v0;
  sub_1BA142B40();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_navigationBarStyle];
  if (v9)
  {
    v17 = *(v9 + qword_1EDC6A560);
    v10 = MEMORY[0x1E695BF98];
    sub_1BA2F9FCC(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
    sub_1BA2F9F88(&qword_1EDC6B730, &qword_1EDC6B720, v10);

    v17 = sub_1BA4A4F98();
    v11 = MEMORY[0x1E695BED0];
    sub_1BA2F9FCC(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1B9F0CDE8(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1BA2F9F88(&qword_1EDC6B740, &qword_1EDC6B738, v11);
    sub_1BA4A4FE8();
    sub_1BA2FA06C(&qword_1EBBEC7C0, sub_1BA142B40);
    v12 = sub_1BA4A4F98();

    (*(v4 + 8))(v7, v3);
    v13 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
    v14 = sub_1BA25A190(v12, 0);
    v15 = [v1 navigationItem];
    [v15 setTitleView_];
  }
}

void sub_1BA2F7FC0()
{
  v1 = v0;
  v2 = sub_1BA4A35F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3678();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 title];
  if (v11)
  {
    v12 = v11;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E69A2C60], v6);
  v13 = sub_1BA4A35B8();

  (*(v7 + 8))(v10, v6);
  v14 = [v13 userInfo];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BA4A6628();

    (*(v3 + 104))(v5, *MEMORY[0x1E69A2B98], v2);
    v17 = sub_1BA4A35E8();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    v30 = v17;
    v31 = v19;
    sub_1BA4A7D58();
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8];
    v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup];
    v31 = v20;
    v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32];
    v32 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 16];
    v33 = v21;
    v22 = HKTypeGroup.displayCategory.getter();
    v23 = [v22 categoryID];

    v35 = MEMORY[0x1E69E6530];
    *&v34 = v23;
    sub_1B9F46920(&v34, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v16;
    sub_1B9FF1AE4(v29, v36, isUniquelyReferenced_nonNull_native);
    sub_1B9FDC768(v36);
    if (v28)
    {
      v25 = sub_1BA4A6618();
    }

    else
    {
      v25 = 0;
    }

    [v13 setUserInfo_];
  }

  else
  {
    [v13 setUserInfo_];
  }

  v26 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_providedHealthStore] profileIdentifier];
  sub_1BA4A7098();

  [v1 setUserActivity_];
}

uint64_t sub_1BA2F8384(void (**a1)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v89 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v92 = (&v89 - v11);
  sub_1BA2F9758(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v89 - v13;
  v15 = sub_1BA4A3678();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v89 - v25;
  v96 = a1;
  v27 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v28 = v15;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B9F0DE60(v14, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA2F9758);
    sub_1BA4A3E48();
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v106[0] = v32;
      *v31 = 136446210;
      *&v114[0] = ObjectType;
      swift_getMetatypeMetadata();
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, v106);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s] user activity passed in does not have a valid activity type", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    return (*(v100 + 8))(v7, v99);
  }

  else
  {
    (*(v16 + 32))(v26, v14, v15);
    v37 = *(v16 + 16);
    v37(v22, v26, v15);
    v38 = (*(v16 + 88))(v22, v15);
    if (v38 == *MEMORY[0x1E69A2C08] || v38 == *MEMORY[0x1E69A2C00])
    {
      v90 = v26;
      v61 = v95;
      v62 = UIViewController.resolvedHealthStore.getter();
      if (v62)
      {
        v63 = v62;
        UIViewController.resolvedHealthExperienceStore.getter(v113);
        v64 = v63;
        v65 = [v64 profileIdentifier];
        LOBYTE(v106[0]) = 15;
        LOBYTE(v63) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v65, v106);

        sub_1B9F0A534(v61 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager, v112);
        sub_1B9F0A534(v113, v106);
        *(&v107 + 1) = v64;
        LOBYTE(v108) = v63;
        sub_1BA4A2488();
        swift_allocObject();
        v66 = v64;
        *(&v108 + 1) = sub_1BA4A2468();
        sub_1BA10F7B4(v112, &v101);
        if (v102)
        {

          sub_1B9F0DE60(v112, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          __swift_destroy_boxed_opaque_existential_1(v113);
          sub_1B9F1134C(&v101, &v103);
          v67 = v90;
          v68 = v96;
        }

        else
        {
          v84 = sub_1BA4A22B8();
          v85 = sub_1BA4A22A8();
          v104 = v84;
          v105 = MEMORY[0x1E69A3CF8];
          *&v103 = v85;
          sub_1B9F0DE60(v112, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          __swift_destroy_boxed_opaque_existential_1(v113);
          v67 = v90;
          v68 = v96;
          if (v102)
          {
            sub_1B9F0DE60(&v101, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          }
        }

        sub_1B9F1134C(&v103, v109);
        v111 = 0;
        v114[4] = v109[0];
        v114[5] = v109[1];
        v114[0] = v106[0];
        v114[1] = v106[1];
        v114[2] = v107;
        v114[3] = v108;
        v115 = 0;
        v114[6] = v110;
        v86 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(v68, v114);
        v87 = [v61 navigationController];
        if (v87)
        {
          v88 = v87;
          [v87 pushViewController:v86 animated:0];
        }

        [v86 restoreUserActivityState_];

        sub_1BA114E30(v114);
        return (*(v16 + 8))(v67, v28);
      }

      else
      {
        v69 = v92;
        sub_1BA4A3DD8();
        v70 = v96;
        v71 = sub_1BA4A3E88();
        v72 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v96 = v16;
          v75 = v74;
          *&v106[0] = v74;
          *v73 = 136446466;
          *&v114[0] = ObjectType;
          swift_getMetatypeMetadata();
          v76 = sub_1BA4A6808();
          v78 = sub_1B9F0B82C(v76, v77, v106);

          *(v73 + 4) = v78;
          *(v73 + 12) = 2080;
          v79 = [v70 activityType];
          v80 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v82 = v81;

          v83 = sub_1B9F0B82C(v80, v82, v106);

          *(v73 + 14) = v83;
          _os_log_impl(&dword_1B9F07000, v71, v72, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v75, -1, -1);
          MEMORY[0x1BFAF43A0](v73, -1, -1);

          (*(v100 + 8))(v92, v99);
          return (v96[1])(v90, v28);
        }

        else
        {

          (*(v100 + 8))(v69, v99);
          return (*(v16 + 8))(v90, v15);
        }
      }
    }

    else
    {
      v39 = v97;
      sub_1BA4A3DD8();
      v40 = v94;
      v37(v94, v26, v28);
      v41 = sub_1BA4A3E88();
      LODWORD(v95) = sub_1BA4A6F98();
      if (os_log_type_enabled(v41, v95))
      {
        v42 = swift_slowAlloc();
        v92 = v41;
        v43 = v42;
        v93 = swift_slowAlloc();
        *&v106[0] = v93;
        *v43 = 136446466;
        *&v114[0] = ObjectType;
        swift_getMetatypeMetadata();
        v44 = sub_1BA4A6808();
        v46 = sub_1B9F0B82C(v44, v45, v106);
        v96 = v16;
        v47 = v40;
        v48 = v28;
        v49 = v46;

        *(v43 + 4) = v49;
        v90 = v26;
        v50 = v48;
        *(v43 + 12) = 2080;
        v37(v91, v47, v48);
        v51 = sub_1BA4A6808();
        v52 = v22;
        v54 = v53;
        v55 = v96[1];
        v55(v47, v50);
        v56 = sub_1B9F0B82C(v51, v54, v106);
        v22 = v52;

        *(v43 + 14) = v56;
        v57 = v92;
        _os_log_impl(&dword_1B9F07000, v92, v95, "[%{public}s]: no restoration configured for %s", v43, 0x16u);
        v58 = v93;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v43, -1, -1);

        (*(v100 + 8))(v97, v99);
        v59 = v90;
        v28 = v50;
        v60 = v50;
      }

      else
      {

        v55 = *(v16 + 8);
        v55(v40, v28);
        (*(v100 + 8))(v39, v99);
        v59 = v26;
        v60 = v28;
      }

      v55(v59, v60);
      return (v55)(v22, v28);
    }
  }
}

id CategoryViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA2F91C8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_healthExperienceStore);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider);
}

id CategoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA2F93F4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  type metadata accessor for CategoryGradientView();
  *v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14[1] = &protocol witness table for CategoryGradientView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber) = 0;
  v15 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v11;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v13;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_providedHealthStore) = a2;
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_healthExperienceStore);
  sub_1B9F0A534(a4, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager);
  v32 = v11;
  *&v34 = v9;
  *(&v34 + 1) = v8;
  v35 = v11;
  v16 = v10;
  v17 = a3;
  v36 = v16;
  v37 = v12;
  v38 = v13;
  v18 = a2;

  v19 = HKTypeGroup.displayCategory.getter();
  sub_1B9F0A534(v17, v33);
  type metadata accessor for CategoryViewControllerDataSource(0);
  swift_allocObject();
  v20 = v18;
  v21 = sub_1BA21FD1C(v19, v20, v33);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_categoryViewDataSource) = v21;
  v22 = [v20 profileIdentifier];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v23 = sub_1BA4A1B68();
  if ([v22 type] == 1)
  {

    v24 = 0;
  }

  else
  {
    type metadata accessor for HealthKitProfileInformationDataSource();
    swift_allocObject();
    v24 = sub_1BA2B8F0C(v23, v22, 0, 0, 0, 0);
  }

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_navigationBarStyle) = v24;
  *&v34 = v9;
  *(&v34 + 1) = v8;
  v35 = v32;
  v36 = v16;
  v37 = v12;
  v38 = v13;
  v25 = HKTypeGroup.displayCategory.getter();

  v26 = [v25 color];

  if (!v26)
  {
    v26 = [objc_opt_self() clearColor];
  }

  v36 = &type metadata for CategoryGradientColorProvider;
  v37 = &protocol witness table for CategoryGradientColorProvider;
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F10B50();
  swift_allocObject();
  v27 = sub_1BA4A4DF8();
  *&v34 = v26;
  *(&v34 + 1) = v27;
  sub_1B9F1134C(&v34, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider);

  v29 = CompoundDataSourceCollectionViewController.init(dataSource:)(v28);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v29;
}

void sub_1BA2F9758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *_s18HealthExperienceUI22CategoryViewControllerC04makedeF012userActivity11healthStore0jbK020pinnedContentManagerACSgSo06NSUserI0C_So08HKHealthK0C0A8Platform0abK0_pAN06PinnedM8Managing_ptFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A35F8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69A2B98], v12, v14);
  sub_1BA2FA06C(&qword_1EDC6ACD8, MEMORY[0x1E69A2BC0]);
  sub_1BA4A70C8();
  (*(v13 + 8))(v16, v12);
  if (v38[3])
  {
    if (swift_dynamicCast())
    {
      v17 = [objc_opt_self() categoryWithID_];
      if (v17)
      {
        v18 = v17;
        static HKTypeGroup.typeGroup(for:)(v38);
        sub_1B9F0A534(a3, v37);
        sub_1B9F0A534(a4, v36);
        v19 = objc_allocWithZone(type metadata accessor for CategoryViewController());
        v20 = a2;
        v21 = sub_1BA2F93F4(v38, v20, v37, v36);

        return v21;
      }
    }
  }

  else
  {
    sub_1B9F0DE60(v38, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F216C8);
  }

  sub_1BA4A3DD8();
  v23 = a1;
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38[0] = v27;
    *v26 = 136446210;
    v28 = v23;
    v29 = [v28 description];
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v8;
    v32 = v31;

    v33 = sub_1B9F0B82C(v30, v32, v38);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_1B9F07000, v24, v25, "Couldn't unpack the type group from the sending NSUserActivity. sender = %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(v9 + 8))(v11, v35);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_1BA2F9ED4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA2F9F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BA2F9F88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F9FCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2F9FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA2F9758(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA2FA06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA2FA100(uint64_t a1)
{
  sub_1B9FF522C();
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v2, v3);

  v4 = sub_1B9F119F8();
  if (v4 && (v12[0] = v4, v12[1] = v5, sub_1B9F0D9AC(0, qword_1EDC681A8), sub_1B9F0D9AC(0, qword_1EDC64E28), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      sub_1B9F1134C(&v9, v12);
      v6 = v13;
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v7 + 16))(a1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return sub_1BA2FA864(&v9);
}

unint64_t sub_1BA2FA238@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = v2;
  v66 = a1;
  v5 = sub_1BA4A4428();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - v8;
  sub_1B9F12538();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v11 + 16))(v13, v3 + v14, v10);
  v15 = sub_1BA4A4578();
  (*(v11 + 8))(v13, v10);
  v16 = *(v15 + 16);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (v16)
  {
    v19 = 0;
    v20 = v15 + 40;
    v59 = v16 - 1;
    v21 = MEMORY[0x1E69E7CC0];
    v60 = v15 + 40;
    v61 = a2;
    while (1)
    {
      v22 = (v20 + 16 * v19);
      v23 = v19;
      while (1)
      {
        if (v23 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v24 = *(v3 + v17);
        if (*(v24 + 16))
        {
          break;
        }

LABEL_4:
        ++v23;
        v22 += 2;
        if (v16 == v23)
        {
          a2 = v61;
          goto LABEL_18;
        }
      }

      v25 = *(v22 - 1);
      v26 = *v22;

      v27 = sub_1B9F24A34(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = (*(v24 + 56) + 48 * v27);
      v30 = *v29;
      v57 = v29[1];
      v58 = v30;
      v32 = v29[2];
      v31 = v29[3];
      v33 = v29[4];
      v53 = v29[5];
      v54 = v33;

      v56 = v32;

      v55 = v31;
      v34 = v53;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F21540(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v20 = v60;
      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_1B9F21540((v35 > 1), v36 + 1, 1, v21);
        v21 = result;
      }

      v19 = v23 + 1;
      *(v21 + 16) = v36 + 1;
      v37 = (v21 + 48 * v36);
      v38 = v57;
      v37[4] = v58;
      v37[5] = v38;
      v39 = v55;
      v37[6] = v56;
      v37[7] = v39;
      v37[8] = v54;
      v37[9] = v34;
      v40 = v59 == v23;
      a2 = v61;
      if (v40)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_4;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_18:

  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result >= *(v21 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v41 = v21 + 48 * result;
  v43 = *(v41 + 32);
  v42 = *(v41 + 40);

  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (!v42)
  {
    v42 = 0xE000000000000000;
  }

  v45 = v63;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v47 = v64;
  v46 = v65;
  v48 = v62;
  (*(v64 + 16))(v62, v45, v65);
  v49 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v44, v42, 0, 0, 0, 0, v48, 0, 0);
  v51 = v50;
  (*(v47 + 8))(v45, v46);
  a2[3] = v49;
  result = sub_1BA011754();
  a2[4] = result;
  *a2 = v51;
  return result;
}

uint64_t sub_1BA2FA71C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2FA864(uint64_t a1)
{
  sub_1B9F14FAC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CloudSyncFlow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BA2FA944(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA2FA9B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t sub_1BA2FAA50(uint64_t a1)
{
  sub_1BA011090();
  v140 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v136 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v135 = &v126 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v126 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v126 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v126 - v15;
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  v142 = v16;
  v143 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v126 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v126 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v127 = &v126 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v128 = &v126 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126 - v33;
  v35 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v126 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v126 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v126 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v126 - v48;
  v50 = a1;
  sub_1BA2FC0F4(a1, &v126 - v48, MEMORY[0x1E69A3190]);
  v51 = v49;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BA4A3E68();
      v79 = sub_1BA4A3E88();
      v80 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1B9F07000, v79, v80, "Executing flow iCloud Settings", v81, 2u);
        MEMORY[0x1BFAF43A0](v81, -1, -1);
      }

      (*(v143 + 8))(v25, v142);
      if (qword_1EBBE8798 != -1)
      {
        swift_once();
      }

      v82 = __swift_project_value_buffer(v140, qword_1EBBF0460);
      v83 = v137;
LABEL_62:
      sub_1BA2FC0F4(v82, v83, sub_1BA011090);
      v118 = sub_1BA4A15D8();
      v119 = *(v118 - 8);
      if ((*(v119 + 48))(v83, 1, v118) == 1)
      {
        sub_1BA2FC15C(v83, sub_1BA011090);
      }

      else
      {
        sub_1BA4A1538();
        (*(v119 + 8))(v83, v118);
      }

      v107 = v141;
      v120 = v141 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_68;
      }

      v108 = *(v120 + 8);
LABEL_67:
      ObjectType = swift_getObjectType();
      (*(v108 + 16))(v107, ObjectType, v108);
      swift_unknownObjectRelease();
LABEL_68:
      v97 = MEMORY[0x1E69A3190];
      v98 = v51;
      return sub_1BA2FC15C(v98, v97);
    }

    v54 = v49;
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BA2FC0F4(v49, v40, MEMORY[0x1E69A3190]);
      if (*v40 == 1)
      {
        v73 = v133;
        sub_1BA4A3E68();
        v74 = sub_1BA4A3E88();
        v75 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_1B9F07000, v74, v75, "Executing flow iCloud needs update", v76, 2u);
          MEMORY[0x1BFAF43A0](v76, -1, -1);
        }

        (*(v143 + 8))(v73, v142);
        v77 = v135;
        if (qword_1EBBE87B0 != -1)
        {
          swift_once();
        }

        v78 = qword_1EBBF04A8;
      }

      else
      {
        v99 = v134;
        sub_1BA4A3E68();
        v100 = sub_1BA4A3E88();
        v101 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_1B9F07000, v100, v101, "Executing flow iCloud Settings", v102, 2u);
          MEMORY[0x1BFAF43A0](v102, -1, -1);
        }

        (*(v143 + 8))(v99, v142);
        v77 = v136;
        if (qword_1EBBE8798 != -1)
        {
          swift_once();
        }

        v78 = qword_1EBBF0460;
      }

      v103 = __swift_project_value_buffer(v140, v78);
      sub_1BA2FC0F4(v103, v77, sub_1BA011090);
      v104 = sub_1BA4A15D8();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v77, 1, v104) == 1)
      {
        sub_1BA2FC15C(v77, sub_1BA011090);
      }

      else
      {
        sub_1BA4A1538();
        (*(v105 + 8))(v77, v104);
      }

      v106 = OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
      v107 = v141;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_68;
      }

      v108 = *(v107 + v106 + 8);
      goto LABEL_67;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA2FC0F4(v49, v43, MEMORY[0x1E69A3190]);
      v53 = *v43;
      if (*v43)
      {
        if (v53 != 1)
        {
          v54 = v49;
          if (v53 == 2)
          {
            v55 = v128;
            sub_1BA4A3E68();
            v56 = sub_1BA4A3E88();
            v57 = sub_1BA4A6FC8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_1B9F07000, v56, v57, "Executing flow software update", v58, 2u);
              MEMORY[0x1BFAF43A0](v58, -1, -1);
            }

            (*(v143 + 8))(v55, v142);
            v59 = v131;
            if (qword_1EBBE87A0 != -1)
            {
              swift_once();
            }

            v60 = __swift_project_value_buffer(v140, qword_1EBBF0478);
            sub_1BA2FC0F4(v60, v59, sub_1BA011090);
            v61 = sub_1BA4A15D8();
            v62 = *(v61 - 8);
            if ((*(v62 + 48))(v59, 1, v61) == 1)
            {
              sub_1BA2FC15C(v59, sub_1BA011090);
            }

            else
            {
              sub_1BA4A1538();
              (*(v62 + 8))(v59, v61);
            }

            v122 = v141;
            v123 = v141 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v124 = *(v123 + 8);
              v125 = swift_getObjectType();
              (*(v124 + 16))(v122, v125, v124);
              swift_unknownObjectRelease();
            }

            goto LABEL_40;
          }

LABEL_15:
          v63 = v138;
          sub_1BA4A3E68();
          sub_1BA2FC0F4(v50, v37, MEMORY[0x1E69A3190]);
          v64 = sub_1BA4A3E88();
          v65 = sub_1BA4A6FB8();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v144[0] = v67;
            *v66 = 136446210;
            v68 = MEMORY[0x1E69A3190];
            sub_1BA2FC0F4(v37, v46, MEMORY[0x1E69A3190]);
            v69 = sub_1BA4A6808();
            v71 = v70;
            sub_1BA2FC15C(v37, v68);
            v72 = sub_1B9F0B82C(v69, v71, v144);

            *(v66 + 4) = v72;
            _os_log_impl(&dword_1B9F07000, v64, v65, "Unexpected cloud sync state received: %{public}s", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1BFAF43A0](v67, -1, -1);
            MEMORY[0x1BFAF43A0](v66, -1, -1);
          }

          else
          {

            sub_1BA2FC15C(v37, MEMORY[0x1E69A3190]);
          }

          (*(v143 + 8))(v63, v142);
LABEL_40:
          v97 = MEMORY[0x1E69A3190];
          v98 = v54;
          return sub_1BA2FC15C(v98, v97);
        }

        v109 = v129;
        sub_1BA4A3E68();
        v110 = sub_1BA4A3E88();
        v111 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_1B9F07000, v110, v111, "Executing flow iCloud login UI", v112, 2u);
          MEMORY[0x1BFAF43A0](v112, -1, -1);
        }

        (*(v143 + 8))(v109, v142);
        v83 = v132;
        if (qword_1EBBE87A8 != -1)
        {
          swift_once();
        }

        v113 = qword_1EBBF0490;
      }

      else
      {
        v114 = v127;
        sub_1BA4A3E68();
        v115 = sub_1BA4A3E88();
        v116 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_1B9F07000, v115, v116, "Executing flow iCloud storage UI", v117, 2u);
          MEMORY[0x1BFAF43A0](v117, -1, -1);
        }

        (*(v143 + 8))(v114, v142);
        v83 = v130;
        if (qword_1EBBE87B8 != -1)
        {
          swift_once();
        }

        v113 = qword_1EBBF04C0;
      }

      v82 = __swift_project_value_buffer(v140, v113);
      goto LABEL_62;
    }

    v54 = v49;
    sub_1BA2FC0F4(v49, v46, MEMORY[0x1E69A3190]);
    v84 = sub_1BA4A1728();
    (*(*(v84 - 8) + 8))(v46, v84);
  }

  sub_1BA2FC15C(v54, MEMORY[0x1E69A3190]);
  sub_1BA4A3E68();
  v85 = sub_1BA4A3E88();
  v86 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_1B9F07000, v85, v86, "Executing flow learn more", v87, 2u);
    MEMORY[0x1BFAF43A0](v87, -1, -1);
  }

  (*(v143 + 8))(v34, v142);
  if (qword_1EBBE87C0 != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v140, qword_1EBBF04D8);
  v89 = v139;
  sub_1BA2FC0F4(v88, v139, sub_1BA011090);
  v90 = sub_1BA4A15D8();
  v91 = *(v90 - 8);
  if ((*(v91 + 48))(v89, 1, v90) == 1)
  {
    sub_1BA2FC15C(v89, sub_1BA011090);
  }

  else
  {
    sub_1BA4A1538();
    (*(v91 + 8))(v89, v90);
  }

  v92 = v141;
  v93 = v141 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v95 = *(v93 + 8);
    v96 = swift_getObjectType();
    (*(v95 + 16))(v92, v96, v95);
    return swift_unknownObjectRelease();
  }

  return result;
}

id CloudSyncFlow.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncFlow();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloudSyncFlow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncFlow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2FBBF8()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0460);
  __swift_project_value_buffer(v1, qword_1EBBF0460);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4FCC00);
  sub_1BA4A15C8();
}

uint64_t sub_1BA2FBCF4()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0478);
  __swift_project_value_buffer(v1, qword_1EBBF0478);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalGeneralSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4FCB90);
  sub_1BA4A15C8();
}

uint64_t sub_1BA2FBDF0()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0490);
  __swift_project_value_buffer(v1, qword_1EBBF0490);
  v2 = [objc_opt_self() internalSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A15C8();
}

uint64_t sub_1BA2FBE98()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04A8);
  __swift_project_value_buffer(v1, qword_1EBBF04A8);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000001ELL, 0x80000001BA4FCBE0);
  sub_1BA4A15C8();
}

uint64_t sub_1BA2FBF94()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04C0);
  __swift_project_value_buffer(v1, qword_1EBBF04C0);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA4FCBB0);
  sub_1BA4A15C8();
}

uint64_t sub_1BA2FC090()
{
  sub_1BA011090();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04D8);
  __swift_project_value_buffer(v1, qword_1EBBF04D8);
  return sub_1BA4A15C8();
}

uint64_t sub_1BA2FC0F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA2FC15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PDFDebugContainer.init(renderable:color:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B9F25598(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PDFDebugContainer.render(context:document:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  (*(v10 + 24))(a2, v9, v10);
  v12 = v11;
  v14 = v13;
  v52.origin.x = PDFBuilder.Document.drawingContext.getter();
  MinX = CGRectGetMinX(v52);
  MinY = CGRectGetMinY(*(a2 + 168));
  v17 = [a1 CGContext];
  UIGraphicsPushContext(v17);

  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = v3[5];
  v21 = [v20 CGColor];
  CGContextSetStrokeColorWithColor(v19, v21);

  v22 = [a1 CGContext];
  v53.origin.x = MinX;
  v53.origin.y = MinY;
  v53.size.width = v12;
  v53.size.height = v14;
  CGContextClipToRect(v22, v53);

  v23 = [a1 CGContext];
  v54.origin.x = MinX;
  v54.origin.y = MinY;
  v54.size.width = v12;
  v54.size.height = v14;
  CGContextStrokeRectWithWidth(v23, v54, 2.0);

  v24 = [a1 CGContext];
  v25 = [v20 colorWithAlphaComponent_];
  v26 = [v25 CGColor];

  CGContextSetFillColorWithColor(v24, v26);
  v27 = [a1 CGContext];
  sub_1BA2FC848();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  *(v28 + 32) = MinX;
  *(v28 + 40) = MinY;
  *(v28 + 48) = v12;
  *(v28 + 56) = v14;
  sub_1BA4A6EF8();

  v29 = [a1 CGContext];
  CGContextRestoreGState(v29);

  UIGraphicsPopContext();
  sub_1BA4A3DD8();
  sub_1BA2FC8A0(v3, v51);
  v46 = v8;
  v30 = sub_1BA4A3E88();
  v31 = sub_1BA4A6F98();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136446722;
    *(v32 + 4) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4D0B60, &v50);
    v45 = v6;
    *(v32 + 12) = 2080;
    sub_1B9F0A534(v51, v48);
    v34 = v47;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v48);
    v35 = sub_1BA4A85D8();
    v37 = v36;
    sub_1BA2FC8D8(v51);
    v38 = sub_1B9F0B82C(v35, v37, &v50);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2080;
    *v48 = MinX;
    *&v48[1] = MinY;
    *&v48[2] = v12;
    v49 = *&v14;
    type metadata accessor for CGRect(0);
    v39 = sub_1BA4A6808();
    v41 = sub_1B9F0B82C(v39, v40, &v50);

    *(v32 + 24) = v41;
    _os_log_impl(&dword_1B9F07000, v30, v31, "[%{public}s] [%s] %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    MEMORY[0x1BFAF43A0](v32, -1, -1);

    (*(v34 + 8))(v46, v45);
  }

  else
  {

    sub_1BA2FC8D8(v51);
    (*(v47 + 8))(v46, v6);
  }

  v42 = v3[3];
  v43 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v42);
  return (*(v43 + 16))(a1, a2, v42, v43);
}

void sub_1BA2FC848()
{
  if (!qword_1EDC5DB90)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DB90);
    }
  }
}

uint64_t PDFDebugContainer.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t PDFDebugContainer.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1BA2FC9C4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1BA2FCA20(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1BA2FCA7C(uint64_t a1, int a2)
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

uint64_t sub_1BA2FCAC4(uint64_t result, int a2, int a3)
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

double sub_1BA2FCB20@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NSBundle.getPluginAppDelegateClass()();
  v37[0] = v7;
  v37[1] = v8;
  v34 = v8;
  sub_1B9F0D9AC(0, qword_1EDC681A8);
  v9 = sub_1B9F0D9AC(0, &qword_1EBBE92D8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v35, a1);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA30AB74(v35, &qword_1EBBE92D0, &qword_1EBBE92D8, &protocol descriptor for PluginDetailViewDebugActionProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v9;
      v33 = v12;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v37);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *&v35[0] = v7;
      *(&v35[0] + 1) = v34;
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v37);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      *&v35[0] = v32;
      sub_1BA30A6D0(0, &qword_1EBBF0620, &qword_1EBBE92D8);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v37);

      *(v14 + 24) = v26;
      v27 = v33;
      _os_log_impl(&dword_1B9F07000, v33, v31, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1BA2FCEE4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NSBundle.getPluginAppDelegateClass()();
  v37[0] = v7;
  v37[1] = v8;
  v34 = v8;
  sub_1B9F0D9AC(0, qword_1EDC681A8);
  v9 = sub_1B9F0D9AC(0, &qword_1EDC65730);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v35, a1);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA30AB74(v35, &qword_1EBBF0610, &qword_1EDC65730, &protocol descriptor for PluginDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v9;
      v33 = v12;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v37);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *&v35[0] = v7;
      *(&v35[0] + 1) = v34;
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v37);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      *&v35[0] = v32;
      sub_1BA30A6D0(0, &qword_1EBBF0618, &qword_1EDC65730);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v37);

      *(v14 + 24) = v26;
      v27 = v33;
      _os_log_impl(&dword_1B9F07000, v33, v31, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FD2A8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSBundle.getPluginAppDelegateClass()();
  v7 = v6;
  v8 = v5;
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  result = v8;
  if (!v9 || !v8)
  {
    sub_1BA4A3E08();
    v11 = v0;
    swift_unknownObjectRetain();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v29 = v13;
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v32);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v8;
      v31 = v7;
      sub_1B9F0D9AC(0, qword_1EDC681A8);
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v32);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      v30 = sub_1B9F0D9AC(0, &qword_1EBBF0600);
      sub_1BA30A6D0(0, &qword_1EBBF0608, &qword_1EBBF0600);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v32);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_1B9F07000, v12, v29, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v27 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FD600@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NSBundle.getPluginAppDelegateClass()();
  v37[0] = v7;
  v37[1] = v8;
  v34 = v8;
  sub_1B9F0D9AC(0, qword_1EDC681A8);
  v9 = sub_1B9F0D9AC(0, &qword_1EBBF05E8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v35, a1);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA30AB74(v35, &qword_1EBBF05F0, &qword_1EBBF05E8, &protocol descriptor for PluginCategoryViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v9;
      v33 = v12;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v37);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *&v35[0] = v7;
      *(&v35[0] + 1) = v34;
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v37);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      *&v35[0] = v32;
      sub_1BA30A6D0(0, &qword_1EBBF05F8, &qword_1EBBF05E8);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v37);

      *(v14 + 24) = v26;
      v27 = v33;
      _os_log_impl(&dword_1B9F07000, v33, v31, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FD9C4()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSBundle.getPluginAppDelegateClass()();
  v7 = v6;
  v8 = v5;
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  result = v8;
  if (!v9 || !v8)
  {
    sub_1BA4A3E08();
    v11 = v0;
    swift_unknownObjectRetain();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v29 = v13;
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v32);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v8;
      v31 = v7;
      sub_1B9F0D9AC(0, qword_1EDC681A8);
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v32);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      v30 = sub_1B9F0D9AC(0, &qword_1EBBED790);
      sub_1BA30A6D0(0, &qword_1EBBF05C0, &qword_1EBBED790);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v32);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_1B9F07000, v12, v29, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v27 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FDD1C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NSBundle.getPluginAppDelegateClass()();
  v37[0] = v7;
  v37[1] = v8;
  v34 = v8;
  sub_1B9F0D9AC(0, qword_1EDC681A8);
  v9 = sub_1B9F0D9AC(0, &qword_1EBBEAA28);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v35, a1);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA30AB74(v35, &qword_1EBBEAA20, &qword_1EBBEAA28, &protocol descriptor for PluginAlertDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v9;
      v33 = v12;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v37);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *&v35[0] = v7;
      *(&v35[0] + 1) = v34;
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v37);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      *&v35[0] = v32;
      sub_1BA30A6D0(0, &qword_1EBBF0628, &qword_1EBBEAA28);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v37);

      *(v14 + 24) = v26;
      v27 = v33;
      _os_log_impl(&dword_1B9F07000, v33, v31, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FE0E0()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSBundle.getPluginAppDelegateClass()();
  v7 = v6;
  v8 = v5;
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  result = v8;
  if (!v9 || !v8)
  {
    sub_1BA4A3E08();
    v11 = v0;
    swift_unknownObjectRetain();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v29 = v13;
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v32);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v8;
      v31 = v7;
      sub_1B9F0D9AC(0, qword_1EDC681A8);
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v32);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      v30 = sub_1B9F0D9AC(0, &qword_1EDC603E0);
      sub_1BA30A6D0(0, &qword_1EDC603D8, &qword_1EDC603E0);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v32);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_1B9F07000, v12, v29, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v27 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FE438@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NSBundle.getPluginAppDelegateClass()();
  v37[0] = v7;
  v37[1] = v8;
  v34 = v8;
  sub_1B9F0D9AC(0, qword_1EDC681A8);
  v9 = sub_1B9F0D9AC(0, &qword_1EBBF05D0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v35, a1);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA30AB74(v35, &qword_1EBBF05D8, &qword_1EBBF05D0, &protocol descriptor for PluginMeasureDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v9;
      v33 = v12;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v14 = 136446722;
      v15 = [v11 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_1B9F0B82C(v17, v19, v37);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *&v35[0] = v7;
      *(&v35[0] + 1) = v34;
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v37);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      *&v35[0] = v32;
      sub_1BA30A6D0(0, &qword_1EBBF05E0, &qword_1EBBF05D0);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v37);

      *(v14 + 24) = v26;
      v27 = v33;
      _os_log_impl(&dword_1B9F07000, v33, v31, "[%{public}s]: %{public}s cannot be cast to %{public}s", v14, 0x20u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FE7FC()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDC84BB8);
  v3 = *(v2 + qword_1EDC84BB8);
  v4 = *(*v2 + 512);
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v2 + *(*v2 + 520));
  v7 = *(v2 + qword_1EDC64EB0);
  v8 = *(v2 + qword_1EDC64EB0 + 8);
  v9 = *(v2 + qword_1EDC64EB0 + 16);

  v10 = v3;
  v11 = sub_1BA1E433C(v10, v5, v6, v7, v8, v9);

  sub_1BA0E7F10(v11, 1);

  LOBYTE(v5) = *(v1 + *(*v1 + 520));
  v12 = *(v1 + qword_1EDC64EB0);
  v13 = *(v1 + qword_1EDC64EB0 + 8);
  LOBYTE(v8) = *(v1 + qword_1EDC64EB0 + 16);

  v15 = sub_1BA1E45B0(v14, v5, v12, v13, v8);

  sub_1BA0E7F10(v15, 1);
}

uint64_t sub_1BA2FE964()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF04F8 = result;
  unk_1EBBF0500 = v1;
  return result;
}

uint64_t sub_1BA2FEA18()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0508 = result;
  unk_1EBBF0510 = v1;
  return result;
}

uint64_t sub_1BA2FEAC4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0518 = result;
  unk_1EBBF0520 = v1;
  return result;
}

uint64_t sub_1BA2FEB84()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0528 = result;
  unk_1EBBF0530 = v1;
  return result;
}

uint64_t sub_1BA2FEC44()
{
  v1 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_id;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore);

  sub_1BA30A8C0(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);

  sub_1BA30A978(*(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig), *(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 8));
  sub_1B9FAB600(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2FED78()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA30A858(v0, v3, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v3, type metadata accessor for SummarySharingSelectionFlow);
    }

    sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B8B60;
    v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v7 = sub_1BA4A6758();
    v8 = [v6 initWithKey:v7 ascending:1];

    *(v5 + 32) = v8;
    v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v10 = sub_1BA4A6758();
    v11 = [v9 initWithKey:v10 ascending:0];

    *(v5 + 40) = v11;
    v12 = (v5 + 48);
  }

  else
  {
    sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B7510;
    v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v14 = sub_1BA4A6758();
    v15 = [v13 initWithKey:v14 ascending:0];

    *(v5 + 32) = v15;
    v12 = (v5 + 40);
  }

  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

  *v12 = v18;
  return v5;
}

uint64_t sub_1BA2FF03C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v143 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v143);
  MEMORY[0x1EEE9AC00](v8);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1[5];
  v144 = a3;
  v145 = a2;
  v17 = *(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes);
  v132 = v12;
  v133 = v15;
  if (v17 == 1)
  {
    v135 = &v124 - v9;
    v136 = v10;
    v130 = a4;
    v18 = MEMORY[0x1E69E7CC0];
    *&v151 = MEMORY[0x1E69E7CC0];
    v125 = *(v13 + 16);
    v128 = v11;
    v129 = v16;
    v127 = v14;
    v131 = v13;
    if (v125)
    {
      v19 = v13 + 32;

      v20 = MEMORY[0x1E69E7CC0];
      v21 = v125;
      do
      {
        sub_1B9F0A534(v19, &v148);
        sub_1B9F1134C(&v148, &v153);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        sub_1BA4A27B8();
        if ((swift_dynamicCast() & 1) != 0 && v147[0])
        {
          MEMORY[0x1BFAF1510]();
          if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v20 = v151;
        }

        v19 += 40;
        --v21;
      }

      while (v21);
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *&v153 = v18;
    v126 = v20;
    if (v20 >> 62)
    {
      goto LABEL_130;
    }

    v37 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
    v38 = v145;
    v40 = v135;
    v39 = v136;
    v142 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow;
    if (v37)
    {
      v41 = 0;
      v140 = v126 & 0xFFFFFFFFFFFFFF8;
      v141 = v126 & 0xC000000000000001;
      v138 = v126 + 32;
      v134 = xmmword_1BA4B5460;
      v139 = v37;
      do
      {
        if (v141)
        {
          v50 = MEMORY[0x1BFAF2860](v41, v126);
        }

        else
        {
          if (v41 >= *(v140 + 16))
          {
            goto LABEL_127;
          }

          v50 = *(v138 + 8 * v41);
        }

        v51 = v50;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v37 = sub_1BA4A7CC8();
          goto LABEL_24;
        }

        sub_1BA30A858(v144 + v142, v40, type metadata accessor for SummarySharingSelectionFlow);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v53 = *(v38 + 3);
          ObjectType = swift_getObjectType();
          v55 = (*(v53 + 8))(ObjectType, v53);
          swift_unknownObjectRelease();
        }

        else
        {
          v55 = 0;
        }

        sub_1BA30A858(v40, v39, type metadata accessor for SummarySharingSelectionFlow);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v137 = v55;
            sub_1BA30A78C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = v134;
            *(inited + 32) = sub_1BA4A2178();
            *(inited + 40) = v43;
            *(inited + 48) = sub_1BA4A1FD8();
            *(inited + 56) = v44;
            v45 = sub_1B9F12EB8(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            v46 = sub_1BA4A2768();
            v47 = sub_1BA10C350(v45, v46);

            sub_1BA30A8C0(v40, type metadata accessor for SummarySharingSelectionFlow);
            v48 = *(v47 + 16);

            v49 = v139;
            if (!v48)
            {
              goto LABEL_80;
            }

            goto LABEL_27;
          }

          if (!v55)
          {

            sub_1BA30A8C0(v40, type metadata accessor for SummarySharingSelectionFlow);
            sub_1BA30A8C0(v39, type metadata accessor for SummarySharingSelectionFlow);
            v49 = v139;
            continue;
          }

          v57 = [v51 uniqueIdentifier];
          v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v60 = v59;

          swift_beginAccess();
          v61 = *(v55 + 32);
          if (*(v61 + 16))
          {
            sub_1BA4A8488();

            sub_1BA4A68C8();
            v62 = sub_1BA4A84D8();
            v63 = -1 << *(v61 + 32);
            v64 = v62 & ~v63;
            if ((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
            {
              v65 = ~v63;
              while (1)
              {
                v66 = (*(v61 + 48) + 16 * v64);
                v67 = *v66 == v58 && v66[1] == v60;
                if (v67 || (sub_1BA4A8338() & 1) != 0)
                {
                  break;
                }

                v64 = (v64 + 1) & v65;
                if (((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              LODWORD(v137) = 1;
            }

            else
            {
LABEL_48:
              LODWORD(v137) = 0;
            }
          }

          else
          {
            LODWORD(v137) = 0;
          }

          v73 = [v51 uniqueIdentifier];
          v74 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v76 = v75;

          swift_beginAccess();
          v77 = *(v55 + 40);
          if (!*(v77 + 16))
          {

LABEL_79:

            v40 = v135;
            sub_1BA30A8C0(v135, type metadata accessor for SummarySharingSelectionFlow);
            v39 = v136;
            sub_1BA30A8C0(v136, type metadata accessor for SummarySharingSelectionFlow);
            v38 = v145;
            v49 = v139;
            if ((v137 & 1) == 0)
            {
LABEL_80:

              continue;
            }

            goto LABEL_27;
          }

          sub_1BA4A8488();

          sub_1BA4A68C8();
          v78 = sub_1BA4A84D8();
          v79 = -1 << *(v77 + 32);
          v80 = v78 & ~v79;
          if (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
LABEL_77:

            goto LABEL_79;
          }

          v81 = ~v79;
          while (1)
          {
            v82 = (*(v77 + 48) + 16 * v80);
            v83 = *v82 == v74 && v82[1] == v76;
            if (v83 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v40 = v135;
          sub_1BA30A8C0(v135, type metadata accessor for SummarySharingSelectionFlow);
          v39 = v136;
          v84 = v136;
        }

        else
        {
          v68 = *v39;
          v69 = sub_1BA4A2768();
          v70 = v68 >> 6;
          if (v68 >> 6 > 1)
          {
            if (v70 == 3)
            {
              if (v68 == 192)
              {
                v71 = sub_1BA4A2228();
              }

              else if (v68 == 193)
              {
                v71 = sub_1BA4A2268();
              }

              else
              {
                v71 = sub_1BA4A2218();
              }
            }

            else if (v68 > 129)
            {
              if (v68 == 130)
              {
                v71 = sub_1BA4A2238();
              }

              else
              {
                v71 = sub_1BA4A2278();
              }
            }

            else if (v68 == 128)
            {
              v71 = sub_1BA4A2248();
            }

            else
            {
              v71 = sub_1BA4A2258();
            }
          }

          else if (v70)
          {
            if ((v68 & 0x3F) != 0)
            {
              if ((v68 & 0x3F) == 1)
              {
                v71 = sub_1BA4A21C8();
              }

              else
              {
                v71 = sub_1BA4A21A8();
              }
            }

            else
            {
              v71 = sub_1BA4A21B8();
            }
          }

          else if (v68 > 1)
          {
            if (v68 == 2)
            {
              v71 = sub_1BA4A1FC8();
            }

            else
            {
              v71 = sub_1BA4A1F98();
            }
          }

          else if (v68)
          {
            v71 = sub_1BA4A1FA8();
          }

          else
          {
            v71 = sub_1BA4A1FD8();
          }

          v85 = v71;
          v86 = v72;
          if (!*(v69 + 16) || (sub_1BA4A8488(), sub_1BA4A68C8(), v87 = sub_1BA4A84D8(), v88 = -1 << *(v69 + 32), v89 = v87 & ~v88, ((*(v69 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0))
          {
LABEL_103:

            v40 = v135;
            sub_1BA30A8C0(v135, type metadata accessor for SummarySharingSelectionFlow);
            v38 = v145;
            v39 = v136;
            v49 = v139;

            continue;
          }

          v90 = ~v88;
          while (1)
          {
            v91 = (*(v69 + 48) + 16 * v89);
            v92 = *v91 == v85 && v91[1] == v86;
            if (v92 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v89 = (v89 + 1) & v90;
            if (((*(v69 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          v40 = v135;
          v39 = v136;
          v84 = v135;
        }

        v49 = v139;
        sub_1BA30A8C0(v84, type metadata accessor for SummarySharingSelectionFlow);
        v38 = v145;
LABEL_27:
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
      }

      while (v41 != v49);
    }

    v93 = v153;
    if ((v153 & 0x8000000000000000) != 0 || (v153 & 0x4000000000000000) != 0)
    {
      v94 = sub_1BA4A7CC8();
      if (v94)
      {
LABEL_110:
        v95 = 0;
        v143 = v93 & 0xC000000000000001;
        v96 = MEMORY[0x1E69E7CC0];
        v141 = v94;
        while (1)
        {
          if (v143)
          {
            v97 = MEMORY[0x1BFAF2860](v95, v93);
          }

          else
          {
            if (v95 >= *(v93 + 16))
            {
              goto LABEL_129;
            }

            v97 = *(v93 + 8 * v95 + 32);
          }

          v98 = v97;
          v99 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_128;
          }

          *(&v149 + 1) = sub_1BA4A27B8();
          v150 = sub_1B9F15730();
          *&v148 = v98;
          v100 = v98;
          sub_1BA3013D0(&v148, v38, &v153);

          __swift_destroy_boxed_opaque_existential_1(&v148);
          if (v154)
          {
            sub_1B9F1134C(&v153, &v148);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v146[0] = v96;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v96 = sub_1B9F281E8(0, v96[2] + 1, 1, v96);
              v146[0] = v96;
            }

            v103 = v96[2];
            v102 = v96[3];
            if (v103 >= v102 >> 1)
            {
              v96 = sub_1B9F281E8((v102 > 1), v103 + 1, 1, v96);
              v146[0] = v96;
            }

            v104 = *(&v149 + 1);
            v105 = v150;
            v106 = __swift_mutable_project_boxed_opaque_existential_1(&v148, *(&v149 + 1));
            v107 = MEMORY[0x1EEE9AC00](v106);
            v109 = &v124 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v110 + 16))(v109, v107);
            sub_1B9F1C4F4(v103, v109, v146, v104, v105);
            __swift_destroy_boxed_opaque_existential_1(&v148);
            v38 = v145;
            v94 = v141;
          }

          else
          {
            sub_1BA30AB74(&v153, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
          }

          ++v95;
          if (v99 == v94)
          {
            goto LABEL_133;
          }
        }
      }
    }

    else
    {
      v94 = *(v153 + 16);
      if (v94)
      {
        goto LABEL_110;
      }
    }

    v96 = MEMORY[0x1E69E7CC0];
LABEL_133:

    if (v96[2])
    {

      v114 = Array<A>.identifierToIndexDict()(v96);

      v115 = v130;
      v116 = v128;
      *v130 = v132;
      v115[1] = v116;
      v115[2] = v96;
LABEL_145:
      v123 = v133;
      v115[3] = v114;
      v115[4] = v123;
      v115[5] = v129;
      return result;
    }

    if (!v125)
    {
      v150 = 0;
      v148 = 0u;
      v149 = 0u;
LABEL_139:
      sub_1BA30A59C(&v148, &v153, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
      if (v154)
      {
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        sub_1BA4A27B8();
        if (swift_dynamicCast())
        {
          v117 = v146[0];
          v118 = sub_1BA4A2648();

LABEL_144:
          v119 = MEMORY[0x1E69A3310];
          sub_1BA309A30(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_1BA4B5480;
          *(v120 + 56) = &type metadata for SummarySharingIconWithNameItem;
          *(v120 + 64) = sub_1BA14D884();
          v121 = swift_allocObject();
          *(v120 + 32) = v121;
          sub_1BA38B994(v144 + v142, v118, (v121 + 16));

          v114 = Array<A>.identifierToIndexDict()(v120);

          sub_1BA30AB74(&v148, &qword_1EDC6AD40, &qword_1EDC6AD50, v119, MEMORY[0x1E69E6720]);

          v115 = v130;
          v122 = v128;
          *v130 = v132;
          v115[1] = v122;
          v115[2] = v120;
          goto LABEL_145;
        }
      }

      else
      {
        sub_1BA30AB74(&v153, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
      }

      v118 = 0;
      goto LABEL_144;
    }

    if (*(v131 + 16))
    {
      sub_1B9F0A534(v131 + 32, &v148);
      goto LABEL_139;
    }

    __break(1u);
  }

  else
  {
    v22 = *(v13 + 16);
    if (v22)
    {
      v130 = a4;
      v23 = v13 + 32;
      v128 = v11;

      v131 = v13;

      v127 = v14;

      v129 = v16;

      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B9F0A534(v23, &v148);
        sub_1BA3013D0(&v148, a2, &v151);
        __swift_destroy_boxed_opaque_existential_1(&v148);
        if (v152)
        {
          sub_1B9F1134C(&v151, &v153);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v147[0] = v24;
          if ((v25 & 1) == 0)
          {
            v24 = sub_1B9F281E8(0, v24[2] + 1, 1, v24);
            v147[0] = v24;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            v24 = sub_1B9F281E8((v26 > 1), v27 + 1, 1, v24);
            v147[0] = v24;
          }

          v28 = v154;
          v29 = v155;
          v30 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v154);
          v31 = MEMORY[0x1EEE9AC00](v30);
          v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v34 + 16))(v33, v31);
          sub_1B9F1C4F4(v27, v33, v147, v28, v29);
          __swift_destroy_boxed_opaque_existential_1(&v153);
          a2 = v145;
        }

        else
        {
          sub_1BA30AB74(&v151, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
        }

        v23 += 40;
        --v22;
      }

      while (v22);

      v35 = v129;
      a4 = v130;
      v36 = v128;
    }

    else
    {
      v36 = v11;

      v35 = v16;
      v24 = MEMORY[0x1E69E7CC0];
    }

    v111 = Array<A>.identifierToIndexDict()(v24);

    v113 = v133;
    *a4 = v132;
    a4[1] = v36;
    a4[2] = v24;
    a4[3] = v111;
    a4[4] = v113;
    a4[5] = v35;
  }

  return result;
}

void sub_1BA3000F8(void *a1@<X0>, _BYTE *a2@<X2>, void *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  *a3 = *a1;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;

  sub_1BA300180(a3, a2);
  sub_1BA30072C(a3, a2);
}

uint64_t sub_1BA300180(void *a1, _BYTE *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  if (*(v8 + 16))
  {
    sub_1B9F0A534(v8 + 32, v49);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
  }

  sub_1BA30A59C(v49, v48, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
  if (!v48[3])
  {
    sub_1BA30AB74(v48, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1B9F0D9AC(0, &qword_1EBBF05A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_11;
  }

  v9 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
LABEL_11:
    sub_1BA30AB74(&v43, &qword_1EBBF05B0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  v10 = v4;
  v11 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v12 = *(v11 + 8);
  v13 = v11;
  v4 = v10;
  v14 = v12(v9, v13);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (v14)
  {
    v15 = a1[1];
    v17 = a1[2];
    v16 = a1[3];
    v18 = a1[4];
    v19 = a1[5];
    *&v43 = *a1;
    *(&v43 + 1) = v15;
    *&v44 = v17;
    *(&v44 + 1) = v16;
    v45 = v18;
    v46 = v19;

    sub_1BA3026E4(v14, &v43, a2, v48);

    sub_1B9F0A534(v48, &v43);
    sub_1BA0F1330(0, 0, &v43);
    v20 = Array<A>.identifierToIndexDict()(a1[2]);

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1BA30AB74(v49, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);

    a1[3] = v20;
    return result;
  }

LABEL_12:
  sub_1BA4A3D88();
  sub_1BA30A59C(v49, &v43, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v24 = 136315394;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v47);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = MEMORY[0x1E69E6720];
    sub_1BA30A59C(&v43, v48, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
    v29 = MEMORY[0x1E69A3310];
    v41 = v7;
    sub_1BA309A30(0, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], v28);
    v30 = sub_1BA4A6808();
    v40 = v4;
    v32 = v31;
    sub_1BA30AB74(&v43, &qword_1EDC6AD40, &qword_1EDC6AD50, v29, v28);
    v33 = sub_1B9F0B82C(v30, v32, &v47);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] Unable to determine category for section, omitting header item: %s", v24, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);

    (*(v5 + 8))(v41, v40);
    v35 = v29;
    v36 = v28;
  }

  else
  {

    v37 = MEMORY[0x1E69A3310];
    v38 = MEMORY[0x1E69E6720];
    sub_1BA30AB74(&v43, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
    (*(v5 + 8))(v7, v4);
    v35 = v37;
    v36 = v38;
  }

  return sub_1BA30AB74(v49, &qword_1EDC6AD40, &qword_1EDC6AD50, v35, v36);
}

void sub_1BA30072C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = v11[2];
  if (!v12)
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    goto LABEL_17;
  }

  sub_1B9F0A534(&v11[5 * v12 - 1], &v58);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1B9F0D9AC(0, &qword_1EBBF05A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    goto LABEL_17;
  }

  v56 = a2;
  v13 = *(&v62 + 1);
  if (!*(&v62 + 1))
  {
LABEL_17:
    sub_1BA30AB74(&v61, &qword_1EBBF05B0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, MEMORY[0x1E69E6720]);
    goto LABEL_18;
  }

  v54 = a1;
  v55 = v10;
  v14 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
  v15 = (*(v14 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  if (v15)
  {
    v16 = v55;
    sub_1BA30A858(&v56[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow], v55, type metadata accessor for SummarySharingSelectionFlow);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return;
    }

    if (v56[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes] != 1)
    {

      sub_1BA30A8C0(v16, type metadata accessor for SummarySharingSelectionFlow);
      return;
    }

    if (qword_1EBBE87D0 != -1)
    {
      swift_once();
    }

    sub_1BA309A30(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B5480;
    v18 = [v15 displayName];
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B9F1BE20();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    v22 = sub_1BA4A67D8();
    v24 = v23;
    v25 = objc_opt_self();
    v53 = [v25 secondarySystemBackgroundColor];
    v26 = swift_allocObject();
    v27 = v56;
    v26[2] = v57;
    v26[3] = v15;
    v26[4] = v27;
    v57 = v15;

    v56 = [v25 linkColor];
    *&v61 = 0x6D6574496B6E694CLL;
    *(&v61 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v22, v24);
    v28 = *(&v61 + 1);
    v52 = v61;
    v29 = v11[2];
    if (v29)
    {
      sub_1B9F0A534(&v11[5 * v29 - 1], &v61);
      sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
      v30 = swift_dynamicCast();
      v31 = v54;
      if (v30)
      {
        if (*(&v59 + 1))
        {
          sub_1B9F1134C(&v58, &v61);
          __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          v32 = sub_1BA4A2E58();
          v34 = v33;
          *&v58 = type metadata accessor for SummarySharingIconWithNameCell();
          sub_1BA309B50(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
          if (v32 == sub_1BA4A6808() && v34 == v35)
          {

            v31 = v54;
          }

          else
          {
            v48 = sub_1BA4A8338();

            v31 = v54;
            if ((v48 & 1) == 0)
            {
LABEL_36:
              __swift_destroy_boxed_opaque_existential_1(&v61);
              goto LABEL_26;
            }
          }

          if (v11[2])
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v11[2];
              if (v49)
              {
LABEL_35:
                v50 = v49 - 1;
                __swift_destroy_boxed_opaque_existential_1(&v11[5 * v49 - 1]);
                v11[2] = v50;
                *(v31 + 16) = v11;
                v51 = Array<A>.identifierToIndexDict()(v11);

                *(v31 + 24) = v51;
                goto LABEL_36;
              }

LABEL_39:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          v11 = sub_1BA2F67D4(v11);
          v49 = v11[2];
          if (v49)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
      }
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v31 = v54;
    }

    sub_1BA30AB74(&v58, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B9F281E8(0, v11[2] + 1, 1, v11);
    }

    v44 = v11[2];
    v43 = v11[3];
    if (v44 >= v43 >> 1)
    {
      v11 = sub_1B9F281E8((v43 > 1), v44 + 1, 1, v11);
    }

    *(&v62 + 1) = &type metadata for LinkButtonItem;
    v63 = sub_1BA1724E4();
    v45 = swift_allocObject();
    *&v61 = v45;
    v45[2] = v52;
    v45[3] = v28;
    v45[4] = v22;
    v45[5] = v24;
    v46 = v53;
    v45[6] = v56;
    v45[7] = v46;
    v45[8] = sub_1BA309A9C;
    v45[9] = v26;
    v11[2] = v44 + 1;
    sub_1B9F1134C(&v61, &v11[5 * v44 + 4]);
    *(v31 + 16) = v11;
    v47 = Array<A>.identifierToIndexDict()(v11);

    *(v31 + 24) = v47;
    sub_1BA30A8C0(v55, type metadata accessor for SummarySharingSelectionFlow);
    return;
  }

LABEL_18:
  sub_1BA4A3D88();
  v36 = sub_1BA4A3E88();
  v37 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v61 = v39;
    *v38 = 136315138;
    v40 = sub_1BA4A85D8();
    v42 = sub_1B9F0B82C(v40, v41, &v61);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1B9F07000, v36, v37, "[%s] Unable to determine category for section, omitting footer item", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    MEMORY[0x1BFAF43A0](v38, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA300FB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA301094()
{
  sub_1BA300FB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA301134()
{
  result = sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA30123C(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EDC6CB90);
  sub_1BA30A858(v6, v4, type metadata accessor for ListLayoutConfiguration);
  v7 = *(v2 + 88);
  v8 = sub_1BA4A47D8();
  v9 = *(v8 - 8);
  (*(v9 + 8))(&v4[v7], v8);
  (*(v9 + 104))(&v4[v7], *MEMORY[0x1E69DC288], v8);
  *(v4 + 8) = 0x4034000000000000;
  v10 = ListLayoutConfiguration.layout(for:)(v5);
  sub_1BA30A8C0(v4, type metadata accessor for ListLayoutConfiguration);
  return v10;
}

void sub_1BA3013D0(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v177[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v170 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v166 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v150 - v11;
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v168 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v150 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v167 = &v150 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v150 - v20;
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v177);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (!swift_dynamicCast())
  {
    sub_1B9F0A534(a1, a3);
    return;
  }

  v163 = v24;
  v169 = v176;
  v25 = sub_1BA4A2758();
  v26 = v25;
  v164 = a3;
  v157 = v7;
  v160 = v12;
  v159 = v5;
  v161 = v21;
  v158 = v8;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1E69E7CD0];
    v177[0] = MEMORY[0x1E69E7CD0];
    sub_1BA4A7C88();
    v28 = sub_1BA4A7CF8();
    if (v28)
    {
      v29 = v28;
      sub_1B9F0ADF8(0, &qword_1EDC6E920);
      v30 = v29;
      v172 = 0x80000001BA4E9230;
      v162 = 0x80000001BA4E9260;
      v156 = 0x80000001BA4E92A0;
      v155 = 0x80000001BA4E92D0;
      v154 = 0x80000001BA4E9310;
      v153 = 0x80000001BA4E9340;
      v152 = 0x80000001BA4E9480;
      v151 = 0x80000001BA4E94B0;
      v31 = -1;
      v32 = 1;
      while (1)
      {
        v175 = v30;
        swift_dynamicCast();
        v33 = [v176 identifier];
        v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v36 = v35;

        v37 = v34 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v36;
        if (v37 || (sub_1BA4A8338() & 1) != 0)
        {
          break;
        }

        v38 = v34 == 0xD000000000000029 && v172 == v36;
        if (v38 || (sub_1BA4A8338() & 1) != 0 || v34 == 0xD000000000000031 && v162 == v36)
        {
          break;
        }

        v50 = sub_1BA4A8338();
        v51 = v34 == 0xD00000000000002ALL && v156 == v36;
        v52 = v51;
        if ((v50 & 1) != 0 || v52 || (sub_1BA4A8338() & 1) != 0 || v34 == 0xD000000000000033 && v155 == v36)
        {
          break;
        }

        if ((sub_1BA4A8338() & 1) != 0 || v34 == 0xD00000000000002DLL && v154 == v36)
        {
          break;
        }

        v53 = sub_1BA4A8338();
        v54 = v34 == 0xD000000000000033 && v153 == v36;
        v55 = v54;
        if ((v53 & 1) != 0 || v55 || (sub_1BA4A8338() & 1) != 0 || v34 == 0xD000000000000027 && v152 == v36)
        {
          break;
        }

        v56 = sub_1BA4A8338();
        v57 = v34 == 0xD000000000000029 && v151 == v36;
        v58 = v57;
        if ((v56 & 1) != 0 || v58)
        {
          break;
        }

        v59 = sub_1BA4A8338();

        if (v59)
        {
          goto LABEL_18;
        }

LABEL_31:
        v30 = sub_1BA4A7CF8();
        if (!v30)
        {
          goto LABEL_69;
        }
      }

LABEL_18:
      v39 = v176;
      if (*(v27 + 24) <= *(v27 + 16))
      {
        sub_1BA305B7C();
      }

      v27 = v177[0];
      v40 = sub_1BA4A7788();
      v41 = v27 + 56;
      v42 = -1 << *(v27 + 32);
      v43 = v40 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v27 + 56 + 8 * (v43 >> 6))) != 0)
      {
        v45 = __clz(__rbit64((-1 << v43) & ~*(v27 + 56 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        do
        {
          if (++v44 == v47 && (v46 & 1) != 0)
          {
            __break(1u);
            goto LABEL_106;
          }

          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v41 + 8 * v44);
        }

        while (v49 == -1);
        v45 = __clz(__rbit64(~v49)) + (v44 << 6);
      }

      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      *(*(v27 + 48) + 8 * v45) = v39;
      ++*(v27 + 16);
      goto LABEL_31;
    }

LABEL_69:
  }

  else
  {
    v60 = *(v25 + 32);
    v61 = ((1 << v60) + 63) >> 6;
    if ((v60 & 0x3Fu) > 0xD)
    {
      goto LABEL_116;
    }

    while (1)
    {
      v172 = v61;
      v162 = &v150;
      MEMORY[0x1EEE9AC00](v25);
      v63 = &v150 - ((v62 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v63, v62);
      v64 = 0;
      v65 = 0;
      v66 = 1 << *(v26 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v61 = v67 & *(v26 + 56);
      v68 = (v66 + 63) >> 6;
      while (v61)
      {
        v69 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
LABEL_81:
        v72 = v69 | (v65 << 6);
        v73 = *(*(v26 + 48) + 8 * v72);
        v74 = HKObjectType.isHealthSharingAlert.getter();

        if (v74)
        {
          *&v63[(v72 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v72;
          if (__OFADD__(v64++, 1))
          {
            __break(1u);
LABEL_85:
            v27 = sub_1BA30795C(v63, v172, v64, v26);
            goto LABEL_86;
          }
        }
      }

      v70 = v65;
      while (1)
      {
        v65 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v65 >= v68)
        {
          goto LABEL_85;
        }

        v71 = *(v26 + 56 + 8 * v65);
        ++v70;
        if (v71)
        {
          v69 = __clz(__rbit64(v71));
          v61 = (v71 - 1) & v71;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_116:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v149 = swift_slowAlloc();
    v27 = sub_1BA306E34(v149, v61, v26, sub_1BA3026B4);

    MEMORY[0x1BFAF43A0](v149, -1, -1);
  }

LABEL_86:
  v31 = v171;
  v76 = v169;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v77 = sub_1BA4A7CC8();
  }

  else
  {
    v77 = *(v27 + 16);
  }

  if (v77)
  {
    v78 = v164;
    *(v164 + 32) = 0;
    *v78 = 0u;
    v78[1] = 0u;

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v27 = v164;
  if (Strong)
  {
    v80 = *(v31 + 24);
    ObjectType = swift_getObjectType();
    v82 = (*(v80 + 8))(ObjectType, v80);
    swift_unknownObjectRelease();
    v83 = [v76 uniqueIdentifier];
    v84 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v86 = v85;

    swift_beginAccess();
    v87 = *(v82 + 32);

    v88 = sub_1BA3D30B0(v84, v86, v87);
  }

  else
  {
    v88 = 0;
  }

  v89 = v163;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v90 = *(v31 + 24);
    v91 = swift_getObjectType();
    v92 = (*(v90 + 8))(v91, v90);
    swift_unknownObjectRelease();
    v93 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
    swift_beginAccess();
    sub_1BA30A858(v92 + v93, v89, sub_1BA17294C);
  }

  else
  {
    v94 = type metadata accessor for SummarySharingSelectionFlow(0);
    (*(*(v94 - 8) + 56))(v89, 1, 1, v94);
  }

  if (!FeedItem.pluginInfo.getter())
  {
    sub_1BA30A8C0(v89, sub_1BA17294C);
LABEL_105:

    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    return;
  }

  v95 = sub_1BA4A3AD8();

  v96 = sub_1BA2FD9C4();
  if (!v96)
  {
    sub_1BA30A8C0(v163, sub_1BA17294C);

    v76 = v95;
    goto LABEL_105;
  }

  v98 = v96;
  v32 = v97;
  v99 = swift_unknownObjectWeakLoadStrong();
  LODWORD(v154) = v88;
  v162 = v95;
  v172 = v98;
  if (v99)
  {
    v100 = *(v31 + 24);
    v101 = swift_getObjectType();
    v102 = (*(v100 + 8))(v101, v100);
    swift_unknownObjectRelease();
    v103 = [v76 uniqueIdentifier];
    v104 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v106 = v105;

    swift_beginAccess();
    v107 = *(v102 + 16);

    if (*(v107 + 16))
    {
      v108 = sub_1B9F24A34(v104, v106);
      v110 = v109;

      if (v110)
      {
        v111 = v170;
        sub_1BA30A858(*(v107 + 56) + *(v170 + 72) * v108, v161, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);

        v112 = 0;
        goto LABEL_109;
      }
    }

    else
    {
LABEL_106:
    }
  }

  v112 = 1;
  v111 = v170;
LABEL_109:
  v113 = *(v111 + 56);
  v114 = v161;
  v115 = v158;
  v156 = v111 + 56;
  v155 = v113;
  v113(v161, v112, 1, v158);
  v116 = v167;
  sub_1BA30A858(v114, v167, sub_1BA1728B8);
  v117 = *(v111 + 48);
  v118 = v115;
  v170 = v111 + 48;
  v119 = v117(v116, 1, v115);
  sub_1BA30A8C0(v116, sub_1BA1728B8);
  if (v119 == 1)
  {
    v120 = swift_getObjectType();
    v121 = v165;
    (*(v32 + 40))(v169, v163, v120, v32);
    sub_1BA30A8C0(v114, sub_1BA1728B8);
    sub_1BA309BDC(v121, v114, sub_1BA1728B8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v122 = *(v31 + 24);
      v123 = swift_getObjectType();
      (*(v122 + 8))(v123, v122);
      swift_unknownObjectRelease();
      v124 = [v169 uniqueIdentifier];
      v125 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v127 = v126;

      v128 = v165;
      sub_1BA30A858(v114, v165, sub_1BA1728B8);
      swift_beginAccess();
      v129 = v127;
      v31 = v171;
      sub_1B9FEF480(v128, v125, v129);
      swift_endAccess();
    }
  }

  v130 = v168;
  sub_1BA30A858(v114, v168, sub_1BA1728B8);
  v131 = v118;
  if (v117(v130, 1, v118) == 1)
  {

    swift_unknownObjectRelease();
    sub_1BA30A8C0(v114, sub_1BA1728B8);
    sub_1BA30A8C0(v163, sub_1BA17294C);
    sub_1BA30A8C0(v130, sub_1BA1728B8);
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0;
  }

  else
  {
    v171 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
    v132 = v160;
    sub_1BA309BDC(v130, v160, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    sub_1BA30A858(v132, v166, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v170 = swift_unknownObjectWeakLoadStrong();
    v168 = *(v31 + 24);
    v173 = type metadata accessor for SummarySharingSelectableDataTypeCell();
    sub_1BA309B50(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
    v133 = sub_1BA4A6808();
    v135 = v134;
    v136 = v157;
    *(v157 + 5) = 0;
    swift_unknownObjectWeakInit();
    v137 = *(v159 + 40);
    v155(v136 + v137, 1, 1, v118);
    *v136 = v133;
    *(v136 + 8) = v135;
    v173 = 0xD000000000000025;
    v174 = 0x80000001BA4E3640;
    v138 = v169;
    v139 = [v138 uniqueIdentifier];
    v140 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v142 = v141;

    MEMORY[0x1BFAF1350](v140, v142);

    v143 = v174;
    *(v136 + 16) = v173;
    *(v136 + 24) = v143;
    v144 = [v138 uniqueIdentifier];
    v145 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v147 = v146;

    *(v136 + 56) = v145;
    *(v136 + 64) = v147;
    sub_1BA30A8C0(v136 + v137, sub_1BA1728B8);
    sub_1BA309BDC(v166, v136 + v137, v171);
    v155(v136 + v137, 0, 1, v131);
    *(v136 + 49) = v154 & 1;
    *(v136 + 40) = v168;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v136 + 48) = 1;
    *(v27 + 24) = v159;
    *(v27 + 32) = sub_1B9F254C0(&unk_1EBBE9B38, type metadata accessor for SummarySharingSelectableDataTypeItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    sub_1BA309BDC(v136, boxed_opaque_existential_1, type metadata accessor for SummarySharingSelectableDataTypeItem);

    swift_unknownObjectRelease();
    sub_1BA30A8C0(v160, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    sub_1BA30A8C0(v114, sub_1BA1728B8);
    sub_1BA30A8C0(v163, sub_1BA17294C);
  }
}

void sub_1BA3026E4(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v91 - v13;
  v15 = a2[1];
  *&v92 = *a2;
  *(&v92 + 1) = v15;
  v16 = a2[3];
  *&v93 = a2[2];
  *(&v93 + 1) = v16;
  v17 = a2[5];
  *&v94 = a2[4];
  *(&v94 + 1) = v17;
  v97 = a1;
  v18 = [a1 displayName];
  v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v21 = v20;

  v22 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow;
  sub_1BA30A858(&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow], v14, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v26 = *v14;
    if (v26 >> 6)
    {
      if (v26 >> 6 == 1)
      {
        LOBYTE(v110) = v26 & 0x3F;
        v27 = sub_1BA2867D8();
      }

      else
      {
        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        v27 = sub_1BA4A1318();
      }

LABEL_27:
      v78 = v27;
      v79 = v28;
      if (a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton] == 1)
      {
        v110 = v92;
        v111 = v93;
        v112 = v94;
        a4[3] = &type metadata for CollectionViewHeaderWithLinkItem;
        a4[4] = sub_1BA09A7A4();
        v80 = swift_allocObject();
        *a4 = v80;
        sub_1BA3041A0(v78, v79, &v110, a3, v80 + 16);

        return;
      }

      a4[3] = &type metadata for CollectionViewHeaderItem;
      a4[4] = sub_1BA0473B0();
      v70 = swift_allocObject();
      *a4 = v70;
      *&v110 = type metadata accessor for CollectionViewHeaderCell();
      sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
      *(v70 + 16) = sub_1BA4A6808();
      *(v70 + 24) = v81;
      *(v70 + 32) = v78;
      *(v70 + 40) = v79;
      *(v70 + 48) = j___s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0;
      *(v70 + 56) = 0;
      *(v70 + 64) = 1;
      *(v70 + 72) = 1;
      *(v70 + 144) = 0;
      *(v70 + 80) = 0u;
      *(v70 + 96) = 0u;
      *(v70 + 112) = 0u;
      *(v70 + 121) = 0u;
      *&v110 = v78;
      *(&v110 + 1) = v79;
      *&v105 = 32;
      *(&v105 + 1) = 0xE100000000000000;
      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1B9F252FC();
      v82 = MEMORY[0x1E69E6158];
      v83 = sub_1BA4A7B58();
      v85 = v84;
      sub_1BA30A78C(0, &qword_1EDC6E330, v82, MEMORY[0x1E69E6F90]);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1BA4B5480;
      *(v86 + 32) = v83;
      *(v86 + 40) = v85;

      v87 = sub_1BA4A6AE8();

      v77 = HKUIJoinStringsForAutomationIdentifier();

      if (!v77)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_30:

      v88 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v90 = v89;

      *(v70 + 152) = v88;
      *(v70 + 160) = v90;
      return;
    }

LABEL_23:
    LOBYTE(v110) = v26;
    v27 = sub_1BA286570();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BA30A8C0(v14, type metadata accessor for SummarySharingSelectionFlow);
  }

  v95 = a4;
  v24 = *&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader + 8];
  v91 = v19;
  if (v24)
  {
    a4 = v21;
    v19 = *&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader];
    v25 = v24;
  }

  else
  {

    a4 = v21;
    v25 = v21;
  }

  v29 = a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes];

  if ((v29 & 1) == 0)
  {

    if (a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton] == 1)
    {
      v110 = v92;
      v111 = v93;
      v112 = v94;
      v52 = v95;
      v95[3] = &type metadata for CollectionViewHeaderWithLinkItem;
      v52[4] = sub_1BA09A7A4();
      v53 = swift_allocObject();
      *v52 = v53;
      sub_1BA3041A0(v19, v25, &v110, a3, v53 + 16);

      return;
    }

    v69 = v95;
    v95[3] = &type metadata for CollectionViewHeaderItem;
    v69[4] = sub_1BA0473B0();
    v70 = swift_allocObject();
    *v69 = v70;
    *&v110 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v70 + 16) = sub_1BA4A6808();
    *(v70 + 24) = v71;
    *(v70 + 32) = v19;
    *(v70 + 40) = v25;
    *(v70 + 48) = j___s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0;
    *(v70 + 56) = 0;
    *(v70 + 64) = 1;
    *(v70 + 72) = 1;
    *(v70 + 144) = 0;
    *(v70 + 80) = 0u;
    *(v70 + 96) = 0u;
    *(v70 + 112) = 0u;
    *(v70 + 121) = 0u;
    *&v110 = v19;
    *(&v110 + 1) = v25;
    *&v105 = 32;
    *(&v105 + 1) = 0xE100000000000000;
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_1B9F252FC();
    v72 = MEMORY[0x1E69E6158];
    v73 = sub_1BA4A7B58();
    v75 = v74;
    sub_1BA30A78C(0, &qword_1EDC6E330, v72, MEMORY[0x1E69E6F90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BA4B5480;
    *(v76 + 32) = v73;
    *(v76 + 40) = v75;

    a3 = sub_1BA4A6AE8();

    v77 = HKUIJoinStringsForAutomationIdentifier();

    if (v77)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_23;
  }

  v30 = v97;
  v31 = [v97 largeListIcon];
  if (!v31)
  {
    v31 = [v30 listIcon];
  }

  v32 = v31;
  v33 = v31;
  v34 = [v30 color];
  LOBYTE(v105) = 1;
  LOBYTE(v103) = 1;
  LOBYTE(v100) = 1;
  *&v110 = v32;
  *(&v110 + 1) = v34;
  *&v111 = 0;
  BYTE8(v111) = 1;
  v112 = 0uLL;
  LOBYTE(v113) = 1;
  *(&v113 + 1) = 0;
  v114 = 1;
  sub_1BA30A858(&a3[v22], v10, type metadata accessor for SummarySharingSelectionFlow);
  v35 = a4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA30A8C0(v10, type metadata accessor for SummarySharingSelectionFlow);
    v107 = v112;
    v108 = v113;
    v109 = v114;
    v105 = v110;
    v106 = v111;
    v36 = v95;
    v95[3] = &type metadata for CollectionViewHeaderItem;
    v36[4] = sub_1BA0473B0();
    v37 = swift_allocObject();
    *v36 = v37;
    v100 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA1725A0(&v110, &v103);
    sub_1BA1725A0(&v110, &v103);
    sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v37 + 16) = sub_1BA4A6808();
    *(v37 + 24) = v38;
    v39 = v91;
    *(v37 + 32) = v91;
    *(v37 + 40) = a4;
    v40 = v105;
    *(v37 + 88) = v106;
    v41 = v108;
    *(v37 + 104) = v107;
    *(v37 + 120) = v41;
    *(v37 + 48) = sub_1BA09AE24;
    *(v37 + 56) = 0;
    *(v37 + 64) = 1;
    *(v37 + 136) = v109;
    *(v37 + 72) = v40;
    *(v37 + 144) = 0;
    v103 = v39;
    v104 = a4;
    v100 = 32;
    v101 = 0xE100000000000000;
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_1B9F252FC();

    v42 = MEMORY[0x1E69E6158];
    v43 = sub_1BA4A7B58();
    v45 = v44;
    sub_1BA30A78C(0, &qword_1EDC6E330, v42, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BA4B5480;
    *(v46 + 32) = v43;
    *(v46 + 40) = v45;

    v47 = sub_1BA4A6AE8();

    v48 = HKUIJoinStringsForAutomationIdentifier();

    if (v48)
    {

      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v51 = v50;

      sub_1BA1725FC(&v110);

      *(v37 + 152) = v49;
      *(v37 + 160) = v51;
      sub_1BA1725FC(&v110);
      return;
    }

    goto LABEL_32;
  }

  *(&v94 + 1) = v33;
  sub_1BA30A8C0(v10, type metadata accessor for SummarySharingSelectionFlow);
  v107 = v112;
  v108 = v113;
  v109 = v114;
  v105 = v110;
  v106 = v111;
  sub_1BA1725A0(&v110, &v103);
  v54 = v95;
  if (qword_1EBBE87C8 != -1)
  {
    swift_once();
  }

  v55 = qword_1EBBF04F8;
  v56 = unk_1EBBF0500;
  v57 = swift_allocObject();
  v58 = v97;
  v57[2] = v96;
  v57[3] = v58;
  v57[4] = a3;
  v54[3] = &type metadata for CollectionViewHeaderWithLinkItem;
  v54[4] = sub_1BA09A7A4();
  v59 = swift_allocObject();
  *v54 = v59;
  v100 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA1725A0(&v110, &v103);
  sub_1BA309B50(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v60 = v58;

  v61 = sub_1BA4A6808();
  v63 = v62;
  *&v102[23] = v106;
  *&v102[39] = v107;
  *&v102[55] = v108;
  v102[71] = v109;
  *&v102[7] = v105;
  v103 = 0;
  v104 = 0xE000000000000000;

  sub_1BA4A7DF8();

  v103 = 0xD000000000000013;
  v104 = 0x80000001BA4E76C0;
  v64 = v91;
  MEMORY[0x1BFAF1350](v91, v35);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v55, v56);

  sub_1BA1725FC(&v110);
  sub_1BA1725FC(&v110);

  v65 = v103;
  v66 = v104;
  *(v59 + 16) = v61;
  *(v59 + 24) = v63;
  *(v59 + 32) = v65;
  *(v59 + 40) = v66;
  *(v59 + 48) = v64;
  *(v59 + 56) = v35;
  v67 = *v102;
  *(v59 + 97) = *&v102[16];
  v68 = *&v102[48];
  *(v59 + 113) = *&v102[32];
  *(v59 + 129) = v68;
  *(v59 + 64) = sub_1BA09AE24;
  *(v59 + 72) = 0;
  *(v59 + 80) = 1;
  *(v59 + 145) = *&v102[64];
  *(v59 + 81) = v67;
  *(v59 + 160) = 0;
  *(v59 + 168) = v55;
  *(v59 + 176) = v56;
  *(v59 + 184) = 1;
  *(v59 + 192) = sub_1BA309A9C;
  *(v59 + 200) = v57;
  *(v59 + 208) = 0;
  *(v59 + 216) = 0;
}

void sub_1BA303368(void *a1, void *a2, uint64_t a3)
{
  v89 = sub_1BA4A3EA8();
  v6 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v87 = (&v82 - v16);
  if (!a2 || ((swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) ? (v18 = a2) : (v18 = 0), !v17))
  {
    sub_1BA4A3D88();
    v38 = a2;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v90 = v42;
      *v41 = 136315394;
      v43 = sub_1BA4A85D8();
      v45 = sub_1B9F0B82C(v43, v44, &v90);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v95 = a2;
      sub_1BA096EEC();
      v46 = v38;
      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, &v90);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1B9F07000, v39, v40, "[%s] Parent view controller %s does not conform to SummarySharingSelectedDataTypesDelegate", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v6 + 8))(v8, v89);
    return;
  }

  v19 = v17;
  v84 = v18;
  sub_1B9F0A534(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore, &v95);
  ObjectType = swift_getObjectType();
  v89 = v9;
  v21 = *(v19 + 8);
  v83 = a2;
  v82 = v19;
  v22 = v21(ObjectType, v19);
  sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  v86 = xmmword_1BA4B5470;
  *(v23 + 16) = xmmword_1BA4B5470;
  *(v23 + 32) = a1;
  v24 = v87;
  sub_1BA30A858(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, v87, type metadata accessor for SummarySharingSelectionFlow);
  v25 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v26 = a1;
  v27 = [v25 init];
  v28 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(&v95, &v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = v23;
  sub_1BA30A858(v24, &v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow], type metadata accessor for SummarySharingSelectionFlow);
  v29 = &v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = 0;
  v88 = v28;
  *&v28[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v22;
  v30 = swift_allocObject();
  *(v30 + 16) = v86;
  sub_1B9F0A534(&v95, v94);
  sub_1BA30A858(v24, v14, type metadata accessor for SummarySharingSelectionFlow);
  v90 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v93, 0, sizeof(v93));
  v91 = 0u;
  v92 = 0u;
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  *&v86 = v22;

  LOBYTE(v81) = 1;
  v85 = v27;
  *(v30 + 32) = sub_1BA3094BC(v94, v27, MEMORY[0x1E69E7CC0], 0, v23, v14, MEMORY[0x1E69E7CC0], 0, 0, &v90, v81);
  sub_1BA30A858(v24, v11, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v11, type metadata accessor for SummarySharingSelectionFlow);
    }

    v32 = objc_opt_self();
    v33 = [v32 categoryWithID_];
    v34 = v33;
    if (v33)
    {
      v90 = v33;
      MEMORY[0x1EEE9AC00](v33);
      v81 = &v90;
      v35 = v34;
      v36 = sub_1BA0117F8(sub_1BA30AC8C, &v79, v23);

      if (v36)
      {
        MEMORY[0x1EEE9AC00](v37);
        *(&v82 - 6) = &v95;
        *(&v82 - 5) = v85;
        LOBYTE(v79) = 0;
        v80 = v23;
        v81 = v87;
        v30 = sub_1BA24F180(sub_1BA1E5264, (&v82 - 8), &unk_1F37FD0B8);

        goto LABEL_20;
      }
    }

    v50 = [v32 categoryWithID_];
    v51 = v50;
    if (v50)
    {
      v90 = v50;
      MEMORY[0x1EEE9AC00](v50);
      v81 = &v90;
      v52 = v51;
      v53 = sub_1BA0117F8(sub_1BA309ACC, &v79, v23);

      if (v53)
      {
        MEMORY[0x1EEE9AC00](v54);
        *(&v82 - 6) = &v95;
        *(&v82 - 5) = v85;
        LOBYTE(v79) = 0;
        v80 = v23;
        v81 = v87;
        v30 = sub_1BA24F180(sub_1BA1E5238, (&v82 - 8), &unk_1F37FD0E0);

        goto LABEL_20;
      }
    }

    sub_1BA30A78C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    *(inited + 32) = sub_1BA4A2178();
    *(inited + 40) = v56;
    v57 = sub_1BA4A2168();
    *(inited + 48) = v57;
    *(inited + 56) = v58;
    MEMORY[0x1EEE9AC00](v57);
    *(&v82 - 6) = &v95;
    *(&v82 - 5) = v85;
    LOBYTE(v79) = 0;
    v80 = v23;
    v81 = v87;
    v30 = sub_1BA24A670(sub_1BA1E51F0, (&v82 - 8), inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

LABEL_20:
  *(v88 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources) = v30;

  v60 = sub_1B9FE98D4(v59);

  v90 = v60;
  sub_1B9FE20B8(MEMORY[0x1E69E7CC0]);
  v61 = v90;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  v62 = CompoundSectionedDataSource.init(_:)(v61);
  v63 = CompoundDataSourceCollectionViewController.init(dataSource:)(v62);
  v90 = *(v86 + 48);
  v64 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v64);
  v65 = v63;
  v90 = sub_1BA4A4F98();
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1BA10E0DC;
  *(v67 + 24) = v66;
  v68 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v68);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA30A728(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v69 = *&v65[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
  if (v69 >> 62)
  {
    goto LABEL_34;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v70)
  {
    v71 = 0;
    v89 = v69 & 0xC000000000000001;
    v88 = v69 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v89)
      {
        v72 = MEMORY[0x1BFAF2860](v71, v69);
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v71 >= *(v88 + 16))
        {
          __break(1u);
LABEL_34:
          v70 = sub_1BA4A7CC8();
          goto LABEL_22;
        }

        v72 = *(v69 + 8 * v71 + 32);

        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_31;
        }
      }

      *(*(v72 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v74 = swift_allocObject();
      *(v74 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v74 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      v75 = v65;
      sub_1BA29AAC4(v74);
      sub_1BA2FE7FC();

      ++v71;
    }

    while (v73 != v70);
  }

  sub_1BA30A8C0(v87, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  v76 = &v65[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
  swift_beginAccess();
  *(v76 + 1) = v82;
  v77 = v84;
  swift_unknownObjectWeakAssign();
  v78 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v77 presentViewController:v78 animated:1 completion:0];
}

void sub_1BA304108()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();

  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162EA0(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v2, v3);

  sub_1B9FF51C4();
  sub_1B9FF51F8();
  sub_1B9FF522C();
  sub_1B9FF5260();
  sub_1B9FF5294();
}

uint64_t sub_1BA3041A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a4;
  v76 = a5;
  v77 = a2;
  v75 = a1;
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v73 - v16;
  sub_1BA17256C(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v79 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v73 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v73 - v26;
  v28 = a3[2];
  v101 = a3[1];
  v102 = v28;
  v100 = *a3;
  v103[0] = v101;
  v80 = v101 + 32;
  v29 = *(v101 + 16);
  v88 = (v30 + 56);
  v86 = (v7 + 56);
  v87 = (v30 + 48);
  v85 = (v7 + 48);

  v31 = 0;
  v82 = v29;
  v83 = v11;
  while (1)
  {
    while (1)
    {
      if (v31 == v29)
      {
        *&v97 = 0;
        v32 = v29;
        v95 = 0u;
        v96 = 0u;
      }

      else
      {
        if (v31 >= v29)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        sub_1B9F0A534(v80 + 40 * v31, &v95);
        v33 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v33)
        {
          goto LABEL_27;
        }
      }

      v89 = v32;
      v92[0] = v95;
      v92[1] = v96;
      v93 = v97;
      if (*(&v96 + 1))
      {
        sub_1B9F1134C(v92, v91);
        sub_1B9F0A534(v91, &v90);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        v34 = swift_dynamicCast();
        (*v86)(v14, v34 ^ 1u, 1, v6);
        __swift_destroy_boxed_opaque_existential_1(v91);
        v35 = *v88;
        (*v88)(v14, 0, 1, v18);
      }

      else
      {
        v35 = *v88;
        (*v88)(v14, 1, 1, v18);
      }

      v36 = *v87;
      if ((*v87)(v14, 1, v18) == 1)
      {
        sub_1BA30A8C0(v14, sub_1BA172538);
        v37 = 1;
        goto LABEL_14;
      }

      sub_1BA309BDC(v14, v24, sub_1BA17256C);
      if ((*v85)(v24, 1, v6) != 1)
      {
        break;
      }

      sub_1BA30A8C0(v24, sub_1BA17256C);
      v31 = v89;
    }

    sub_1BA309BDC(v24, v84, sub_1BA17256C);
    v37 = 0;
LABEL_14:
    v38 = v84;
    v35(v84, v37, 1, v18);
    v39 = v38;
    v40 = v83;
    sub_1BA309BDC(v39, v83, sub_1BA172538);
    v41 = v36(v40, 1, v18);
    v42 = v85;
    if (v41 == 1)
    {
      (*v86)(v27, 1, 1, v6);
      v43 = *v42;
      goto LABEL_18;
    }

    v44 = v14;
    v45 = v18;
    v46 = v24;
    v47 = v6;
    v48 = v78;
    sub_1BA309BDC(v40, v78, sub_1BA17256C);
    v49 = v79;
    sub_1BA30A858(v48, v79, sub_1BA17256C);
    v43 = *v42;
    result = (v43)(v49, 1, v47);
    if (result == 1)
    {
      break;
    }

    sub_1BA309BDC(v49, v27, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA30A8C0(v48, sub_1BA17256C);
    (*v86)(v27, 0, 1, v47);
    v6 = v47;
    v24 = v46;
    v18 = v45;
    v14 = v44;
LABEL_18:
    v29 = v82;
    if (v43(v27, 1, v6) == 1)
    {
      sub_1BA30AB74(v103, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
      if (qword_1EBBE87E0 == -1)
      {
LABEL_24:
        v53 = &qword_1EBBF0528;
LABEL_25:
        v55 = v76;
        v54 = v77;
        v56 = v53[1];
        v89 = *v53;

        *&v95 = 0;
        *(&v95 + 1) = 0xE000000000000000;
        sub_1BA4A7DF8();
        v57 = v73[1];
        v58 = sub_1BA4A85D8();
        v60 = v59;

        *&v95 = v58;
        *(&v95 + 1) = v60;
        MEMORY[0x1BFAF1350](95, 0xE100000000000000);
        v61 = v74;
        v62 = sub_1BA4A1748();
        MEMORY[0x1BFAF1350](v62);

        MEMORY[0x1BFAF1350](0x497265646165485FLL, 0xEB000000006D6574);
        v63 = v95;
        v64 = *(v61 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 48);
        v97 = *(v61 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 32);
        v98 = v64;
        v99 = *(v61 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 64);
        v65 = *(v61 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 16);
        v95 = *(v61 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig);
        v96 = v65;
        v66 = swift_allocObject();
        *(v66 + 16) = v61;
        *(v66 + 24) = v57;
        v67 = v101;
        *(v66 + 32) = v100;
        *(v66 + 48) = v67;
        *(v66 + 64) = v102;
        *(v66 + 80) = v57;
        v91[0] = type metadata accessor for CollectionViewHeaderWithLinkCell();
        sub_1BA309C54(&v95, v92);

        sub_1BA0F7D24(&v100, v92);
        sub_1BA309B50(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
        v68 = sub_1BA4A6808();
        *&v94[39] = v97;
        *&v94[23] = v96;
        *&v94[55] = v98;
        v94[71] = v99;
        *&v94[7] = v95;
        *v55 = v68;
        *(v55 + 8) = v69;
        *(v55 + 16) = v63;
        *(v55 + 32) = v75;
        *(v55 + 40) = v54;
        v70 = *v94;
        *(v55 + 81) = *&v94[16];
        v71 = *&v94[48];
        *(v55 + 97) = *&v94[32];
        *(v55 + 113) = v71;
        *(v55 + 48) = sub_1BA09AE24;
        *(v55 + 56) = 0;
        *(v55 + 64) = 1;
        *(v55 + 129) = *&v94[64];
        *(v55 + 65) = v70;
        v72 = v89;
        *(v55 + 144) = 0;
        *(v55 + 152) = v72;
        *(v55 + 160) = v56;
        *(v55 + 168) = 1;
        *(v55 + 176) = sub_1BA309C44;
        *(v55 + 184) = v66;
        *(v55 + 192) = 0;
        *(v55 + 200) = 0;
      }

LABEL_28:
      swift_once();
      goto LABEL_24;
    }

    v51 = v81;
    sub_1BA309BDC(v27, v81, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v52 = *(v51 + 49);
    sub_1BA30A8C0(v51, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v31 = v89;
    if ((v52 & 1) == 0)
    {
      sub_1BA30AB74(v103, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
      if (qword_1EBBE87D8 != -1)
      {
        swift_once();
      }

      v53 = &qword_1EBBF0518;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA304AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    sub_1BA309D18(a4, v13, &unk_1F38163D0, sub_1BA30A590, &unk_1F38163F8, sub_1BA30AC84);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3D88();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Attempting to toggle data type selection without a context to apply changes", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1BA304D58()
{
  v1 = v0;
  v35 = sub_1BA4A1C68();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE88, MEMORY[0x1E69A3C08], sub_1BA30AA8C, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BA30AA8C();
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BA3050BC()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA0E790C();
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BA305310()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE50, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA30AB40, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = *(v6 + 56);
    v31 = v0;
    v32 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v10;
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = *(v6 + 48);
      v34 = *(v3 + 72);
      sub_1BA309BDC(v21 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA4A8488();
      if (*(v5 + 8))
      {
        v33 = v13;
        sub_1BA4A84A8();
        v13 = v33;
        sub_1BA4A68C8();
      }

      else
      {
        sub_1BA4A84A8();
      }

      result = sub_1BA4A84D8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1BA309BDC(v5, *(v8 + 48) + v16 * v34, type metadata accessor for SummarySharingSelectableDataTypeItem);
      ++*(v8 + 16);
    }

    v18 = v9;
    result = v32;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v32[v9];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v32, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v29;
    }

    v1 = v31;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

unint64_t sub_1BA30569C()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA30ABD0(0, &qword_1EBBEBE48, sub_1BA0251E0);
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1BA306CAC(*(*(v2 + 48) + (v11 | (v5 << 6))), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BA305818()
{
  v1 = v0;
  v35 = sub_1BA4A3A28();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE58, MEMORY[0x1E69A3910], sub_1BA08FE28, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BA08FE28();
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BA305B7C()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA0E75E0();
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1BA4A7788();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BA305D98()
{
  v1 = v0;
  v35 = sub_1BA4A1E88();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE80, MEMORY[0x1E69A3C80], sub_1BA30AA58, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BA30AA58();
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BA3060FC()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA30AAC0(0, &qword_1EDC5E060, MEMORY[0x1E69A3DD0], sub_1BA30AA24, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1BA4A7788();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BA30635C()
{
  v1 = v0;
  v35 = sub_1BA4A15D8();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE78, MEMORY[0x1E6968FB0], sub_1BA30A9F0, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BA30A9F0();
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BA3066C0()
{
  v1 = v0;
  v35 = sub_1BA4A3B48();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1BA30AAC0(0, &qword_1EDC6B478, MEMORY[0x1E69A3E18], sub_1BA091A20, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BA091A20();
      result = sub_1BA4A6698();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BA306A24()
{
  v1 = v0;
  v2 = *v0;
  sub_1BA30AAC0(0, &qword_1EBBEBE60, type metadata accessor for _HKDataTypeCode, sub_1BA30A9BC, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D78();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BA4A8488();
      MEMORY[0x1BFAF2ED0](v16);
      result = sub_1BA4A84D8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1BA306CAC(unsigned __int8 a1, uint64_t a2)
{
  sub_1BA4A8488();
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      v4 = 0x80504u >> (8 * (a1 + 64));
    }

    else
    {
      LOBYTE(v4) = a1 ^ 0x80;
    }
  }

  else if (a1 >> 6)
  {
    LOBYTE(v4) = a1 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v4) = a1;
  }

  MEMORY[0x1BFAF2ED0](v4);
  sub_1BA4A84D8();
  result = sub_1BA4A7C68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1BA306DB0(uint64_t a1, uint64_t a2)
{
  sub_1BA4A7788();
  result = sub_1BA4A7C68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1BA306E34(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BA308200(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BA306EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1BA30ABD0(0, &qword_1EBBF0630, sub_1BA30AC30);
  result = sub_1BA4A7D98();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1BA4A8488();
    MEMORY[0x1BFAF2ED0](v16);
    result = sub_1BA4A84D8();
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
    *(*(v9 + 48) + v20) = v16;
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

uint64_t sub_1BA3070E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BA4A3A28();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EBBEBE58, MEMORY[0x1E69A3910], sub_1BA08FE28, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BA08FE28();
    result = sub_1BA4A6698();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA307414(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1BA0E790C();
  result = sub_1BA4A7D98();
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
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
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

uint64_t sub_1BA30762C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BA4A1E88();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EBBEBE80, MEMORY[0x1E69A3C80], sub_1BA30AA58, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BA30AA58();
    result = sub_1BA4A6698();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA30795C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1BA0E75E0();
  result = sub_1BA4A7D98();
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
    result = sub_1BA4A7788();
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

uint64_t sub_1BA307B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1BA30AAC0(0, &qword_1EDC5E060, MEMORY[0x1E69A3DD0], sub_1BA30AA24, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
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
    result = sub_1BA4A7788();
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

uint64_t sub_1BA307D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BA4A3B48();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EDC6B478, MEMORY[0x1E69A3E18], sub_1BA091A20, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BA091A20();
    result = sub_1BA4A6698();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA308104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA30A858(a1, v6, sub_1BA17256C);
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_1BA309BDC(v6, a2, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  __break(1u);
  return result;
}

void sub_1BA308200(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1BA30795C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

size_t sub_1BA30836C(uint64_t *a1)
{
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v67 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - v8;
  sub_1BA17256C(0);
  v89 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v67 - v17;
  v76 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v18 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v18 + 80);
  v83 = MEMORY[0x1E69E7CC0];
  v68 = (v69 + 32) & ~v69;
  v82 = MEMORY[0x1E69E7CC0] + v68;
  v20 = *a1;
  v85 = a1[1];
  v21 = a1[2];
  v23 = a1[4];
  v22 = a1[5];
  v87 = a1[3];
  v88 = v23;
  v71 = v22;
  v70 = a1[6];
  v96 = v20;
  v24 = *(v20 + 16);
  sub_1BA30A59C(&v96, &v93, &qword_1EDC5E710, MEMORY[0x1E69E62F8]);
  v84 = v20 + 32;
  v25 = (v11 + 56);
  v26 = (v11 + 48);
  v75 = (v18 + 56);
  v77 = v18;
  v74 = (v18 + 48);
  v86 = v21;

  v28 = 0;
  v29 = 0;
  v73 = v9;
  while (2)
  {
    v81 = v28;
    v30 = v29 >= v24;
    if (v29 == v24)
    {
LABEL_3:
      v95 = 0;
      v29 = v24;
      v93 = 0u;
      v94 = 0u;
      goto LABEL_6;
    }

    while (1)
    {
      if (v30)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      result = sub_1B9F0A534(v84 + 40 * v29, &v93);
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_44;
      }

LABEL_6:
      v91[0] = v93;
      v91[1] = v94;
      v92 = v95;
      if (*(&v94 + 1))
      {
        sub_1B9F1134C(v91, v90);
        v85(v90);
        __swift_destroy_boxed_opaque_existential_1(v90);
        v32 = *v25;
        v33 = v6;
        v34 = 0;
      }

      else
      {
        v32 = *v25;
        v33 = v6;
        v34 = 1;
      }

      v35 = v89;
      v32(v33, v34, 1, v89);
      v36 = *v26;
      if ((*v26)(v6, 1, v35) == 1)
      {
        sub_1BA30A8C0(v6, sub_1BA172538);
        v37 = 1;
        v38 = v9;
        goto LABEL_15;
      }

      sub_1BA309BDC(v6, v15, sub_1BA17256C);
      if (v87(v15))
      {
        break;
      }

      result = sub_1BA30A8C0(v15, sub_1BA17256C);
      v30 = v29 >= v24;
      if (v29 == v24)
      {
        goto LABEL_3;
      }
    }

    v38 = v9;
    sub_1BA309BDC(v15, v9, sub_1BA17256C);
    v37 = 0;
LABEL_15:
    v39 = v38;
    v40 = v89;
    v32(v39, v37, 1, v89);
    v41 = v79;
    sub_1BA309BDC(v73, v79, sub_1BA172538);
    v42 = v36(v41, 1, v40);
    v43 = 1;
    if (v42 != 1)
    {
      v44 = v72;
      sub_1BA309BDC(v79, v72, sub_1BA17256C);
      v71(v44);
      sub_1BA30A8C0(v44, sub_1BA17256C);
      v43 = 0;
    }

    v45 = v78;
    v46 = v76;
    (*v75)(v78, v43, 1, v76);
    v47 = (*v74)(v45, 1, v46);
    v48 = v81;
    if (v47 != 1)
    {
      result = sub_1BA309BDC(v45, v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v48)
      {
        v49 = v83;
        v31 = __OFSUB__(v48, 1);
        v28 = v48 - 1;
        if (!v31)
        {
          goto LABEL_38;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v50 = v83[3];
      if (((v50 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v51 = v50 & 0xFFFFFFFFFFFFFFFELL;
      if (v51 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v51;
      }

      sub_1BA30A728(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
      v53 = *(v77 + 72);
      v54 = v68;
      v82 = v52;
      v49 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v49);
      if (!v53)
      {
        goto LABEL_47;
      }

      v55 = result - v54;
      v56 = v54;
      if (result - v54 == 0x8000000000000000 && v53 == -1)
      {
        goto LABEL_48;
      }

      v57 = v55 / v53;
      v49[2] = v82;
      v49[3] = 2 * (v55 / v53);
      v58 = v49 + v54;
      v59 = v83[3] >> 1;
      v60 = v59 * v53;
      if (!v83[2])
      {
LABEL_37:
        v82 = v58 + v60;
        v62 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v59;

        v31 = __OFSUB__(v62, 1);
        v28 = v62 - 1;
        if (!v31)
        {
LABEL_38:
          v63 = v82;
          result = sub_1BA309BDC(v80, v82, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v82 = v63 + *(v77 + 72);
          v83 = v49;
          continue;
        }

        goto LABEL_45;
      }

      if (v49 < v83 || v58 >= v83 + v56 + v60)
      {
        v61 = v83[3] >> 1;
        v81 = v57;
        v82 = v58;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v49 == v83)
        {
LABEL_36:
          v83[2] = 0;
          goto LABEL_37;
        }

        v61 = v83[3] >> 1;
        v81 = v57;
        v82 = v58;
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v61;
      v58 = v82;
      v57 = v81;
      goto LABEL_36;
    }

    break;
  }

  sub_1BA30AB74(&v96, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);

  sub_1BA30A8C0(v45, sub_1BA17256C);
  result = v83;
  v64 = v83[3];
  if (v64 < 2)
  {
    return result;
  }

  v65 = v64 >> 1;
  v31 = __OFSUB__(v65, v48);
  v66 = v65 - v48;
  if (!v31)
  {
    v83[2] = v66;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1BA308C88(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(a1, v8);
  a2(v10);
  return sub_1BA30A8C0(v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

char *sub_1BA308D5C(unint64_t a1)
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v40 = MEMORY[0x1BFAED110]();
  v5 = MEMORY[0x1E69E6F90];
  sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  sub_1BA30A728(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v7 = sub_1BA4A1C68();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v41 = xmmword_1BA4B5480;
  *(v10 + 16) = xmmword_1BA4B5480;
  v11 = v10 + v9;
  v12 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E69A3B68], v7);
  sub_1BA4A21D8();
  v13 = sub_1BA4A0FA8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1BA30A78C(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v5);
  v14 = swift_allocObject();
  *(v14 + 16) = v41;
  *(v14 + 32) = sub_1BA4A1D78();
  v15 = sub_1BA4A25F8();

  sub_1BA30A8C0(v4, sub_1BA170230);
  *(v6 + 32) = v15;
  v43 = v6;

  sub_1B9F33948(v16);
  if (!a1)
  {
LABEL_16:
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v36 = sub_1BA4A6AE8();

    v37 = [objc_opt_self() andPredicateWithSubpredicates_];

    v38 = v40;
    [v40 setPredicate_];

    return v38;
  }

  if (a1 >> 62)
  {
    v17 = sub_1BA4A7CC8();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_13:
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    sub_1BA309A30(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BA4B5460;
    v34 = MEMORY[0x1E69E6158];
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1B9F1BE20();
    *(v33 + 32) = 0xD000000000000012;
    *(v33 + 40) = 0x80000001BA4FCD80;
    sub_1BA30A78C(0, &qword_1EDC6B670, v34, MEMORY[0x1E69E62F8]);
    *(v33 + 96) = v35;
    *(v33 + 104) = sub_1BA30A7DC();
    *(v33 + 72) = v18;
    sub_1BA4A6EE8();
    MEMORY[0x1BFAF1510]();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    goto LABEL_16;
  }

  v42 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F1C360(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v18 = v42;
    v21 = a1;
    v22 = a1 & 0xC000000000000001;
    v23 = v12;
    do
    {
      if (v22)
      {
        v24 = MEMORY[0x1BFAF2860](v20, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = [v24 categoryName];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      v42 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B9F1C360((v30 > 1), v31 + 1, 1);
        v18 = v42;
      }

      ++v20;
      *(v18 + 16) = v31 + 1;
      v32 = v18 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v21 = v23;
    }

    while (v17 != v20);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA3092F0(void *a1, uint64_t a2, char a3, uint64_t (*a4)(void, void), uint64_t a5, char a6)
{
  sub_1BA30A61C();
  v12 = swift_allocObject();
  v13 = v12 + qword_1EDC64EB0;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = a6;
  *(v12 + qword_1EDC84BB8) = a1;
  *(v12 + *(*v12 + 512)) = a2;
  *(v12 + *(*v12 + 520)) = a3;
  sub_1B9F17BE8(a4, a5, a6);
  v14 = a1;

  v15 = sub_1BA1E433C(v14, a2, a3, a4, a5, a6);

  sub_1B9F18460(a4, a5, a6);
  v16 = *&v14[qword_1EDC84AD0];
  v17 = *&v14[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v16, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v18 = MutableArrayDataSource.init(arrangedSections:identifier:)(v15, 0x534464657070614DLL, 0xE90000000000003CLL);
  v19 = *(v18 + qword_1EDC84BB8);
  v20 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v19 + v20) registerObserver_];
  return v18;
}

uint64_t sub_1BA3094BC(uint64_t a1, void *a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v52 = a5;
  v48 = a4;
  v51 = a11;
  v49 = a9;
  v50 = a8;
  v55 = *v11;
  v54 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v54);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47[-v18];

  sub_1B9F0A534(a1, v56);
  v53 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA30A858(a6, v19, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource.Configuration(0);
  v20 = swift_allocObject();
  v21 = a2;
  sub_1BA4A1788();
  *(v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v56, v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore);
  *(v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthStore) = v21;
  v22 = a1;
  *(v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes) = v48;
  sub_1BA309BDC(v19, v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  v23 = (v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader);
  v24 = v49;
  *v23 = v50;
  v23[1] = v24;
  v25 = v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig;
  *(v25 + 64) = *(a10 + 64);
  v26 = *(a10 + 48);
  *(v25 + 32) = *(a10 + 32);
  *(v25 + 48) = v26;
  v27 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v27;
  *(v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton) = v51;
  *(v20 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v11 + qword_1EBBF0538) = v20;

  v28 = sub_1BA308D5C(v52);

  sub_1BA2FED78();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = sub_1BA4A6AE8();

  [v28 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v30 = sub_1BA4A1B68();
  sub_1BA30A858(a6, v16, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v16, type metadata accessor for SummarySharingSelectionFlow);
    }

    v32 = v28;
    v33 = sub_1BA4A6758();
  }

  else
  {
    v34 = v28;
    v33 = 0;
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v28 managedObjectContext:v30 sectionNameKeyPath:v33 cacheName:0];

  sub_1BA30AAC0(0, qword_1EDC61B00, MEMORY[0x1E69A3DD0], sub_1B9F15730, type metadata accessor for FetchedResultsControllerDataSource);
  v37 = objc_allocWithZone(v36);
  v38 = v35;
  v39 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v38);
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + 24) = 0;
  swift_unknownObjectWeakAssign();
  v41 = swift_allocObject();
  v42 = v55;
  *(v41 + 16) = v20;
  *(v41 + 24) = v42;

  v43 = sub_1BA3092F0(v39, v40, 0, sub_1BA3099E4, v41, 1);
  v44 = swift_allocObject();
  *(v44 + 16) = v20;
  *(v44 + 24) = v42;

  v45 = sub_1BA2718A0(v43, sub_1BA309A28, v44, 1);

  sub_1BA30A8C0(a6, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v45;
}

uint64_t sub_1BA3099E4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v5;
  v12 = v6;
  return sub_1BA2FF03C(v10, v7, v4, a3);
}

void sub_1BA309A30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA309B50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA309BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA309C54(uint64_t a1, uint64_t a2)
{
  sub_1BA30A78C(0, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA309D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v59[1] = a5;
  v62 = a4;
  v61 = a3;
  v64 = a2;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v70 = v59 - v17;
  sub_1BA17256C(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v66 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = v59 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v59 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v59 - v27;
  v29 = *(a1 + 16);
  v67 = v29 + 32;
  v30 = *(v29 + 16);
  v72 = (v8 + 56);
  v75 = (v31 + 56);
  v74 = (v31 + 48);
  v71 = (v8 + 48);
  v63 = v29;

  v33 = 0;
  v69 = v12;
  while (1)
  {
    if (v33 == v30)
    {
      v82 = 0;
      v33 = v30;
      v80 = 0u;
      v81 = 0u;
      goto LABEL_7;
    }

    if (v33 >= v30)
    {
      break;
    }

    result = sub_1B9F0A534(v67 + 40 * v33, &v80);
    if (__OFADD__(v33++, 1))
    {
      goto LABEL_24;
    }

LABEL_7:
    v78[0] = v80;
    v78[1] = v81;
    v79 = v82;
    if (*(&v81 + 1))
    {
      sub_1B9F1134C(v78, v77);
      sub_1B9F0A534(v77, v76);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50);
      v35 = swift_dynamicCast();
      (*v72)(v15, v35 ^ 1u, 1, v7);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v36 = *v75;
      (*v75)(v15, 0, 1, v19);
    }

    else
    {
      v36 = *v75;
      (*v75)(v15, 1, 1, v19);
    }

    v37 = *v74;
    if ((*v74)(v15, 1, v19) == 1)
    {
      v73 = v33;
      sub_1BA30A8C0(v15, sub_1BA172538);
      v38 = 1;
      goto LABEL_14;
    }

    sub_1BA309BDC(v15, v25, sub_1BA17256C);
    if ((*v71)(v25, 1, v7) == 1)
    {
      result = sub_1BA30A8C0(v25, sub_1BA17256C);
    }

    else
    {
      v73 = v33;
      sub_1BA309BDC(v25, v70, sub_1BA17256C);
      v38 = 0;
LABEL_14:
      v39 = v70;
      v36(v70, v38, 1, v19);
      v40 = v39;
      v41 = v69;
      sub_1BA309BDC(v40, v69, sub_1BA172538);
      v42 = v37(v41, 1, v19);
      v43 = v71;
      if (v42 == 1)
      {
        (*v72)(v28, 1, 1, v7);
        v44 = *v43;
      }

      else
      {
        v45 = v30;
        v46 = v15;
        v47 = v19;
        v48 = v25;
        v49 = v65;
        sub_1BA309BDC(v41, v65, sub_1BA17256C);
        v50 = v66;
        sub_1BA30A858(v49, v66, sub_1BA17256C);
        v44 = *v43;
        result = (v44)(v50, 1, v7);
        if (result == 1)
        {
          goto LABEL_25;
        }

        sub_1BA309BDC(v50, v28, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA30A8C0(v49, sub_1BA17256C);
        (*v72)(v28, 0, 1, v7);
        v25 = v48;
        v19 = v47;
        v15 = v46;
        v30 = v45;
      }

      v33 = v73;
      if (v44(v28, 1, v7) == 1)
      {
        v56 = swift_allocObject();
        v56[2] = sub_1BA2777A8;
        v56[3] = 0;
        v57 = v63;
        v56[4] = v63;
        v56[5] = sub_1BA2777D4;
        v56[6] = 0;
        v56[7] = sub_1BA3080A0;
        v56[8] = 0;
        v56[9] = sub_1BA308104;
        v56[10] = 0;
        *&v80 = v57;
        *(&v80 + 1) = sub_1BA2777D4;
        *&v81 = 0;
        *(&v81 + 1) = sub_1BA3080A0;
        v82 = 0;
        v83 = v62;
        v84 = v56;

        v58 = sub_1BA30836C(&v80);
        sub_1BA0E17CC(v58);
        goto LABEL_22;
      }

      v51 = v68;
      sub_1BA309BDC(v28, v68, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v52 = *(v51 + 49);
      result = sub_1BA30A8C0(v51, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if ((v52 & 1) == 0)
      {
        v53 = swift_allocObject();
        v53[2] = sub_1BA2776D8;
        v53[3] = 0;
        v54 = v63;
        v53[4] = v63;
        v53[5] = sub_1BA2777D4;
        v53[6] = 0;
        v53[7] = sub_1BA3080A0;
        v53[8] = 0;
        v53[9] = sub_1BA308104;
        v53[10] = 0;
        *&v80 = v54;
        *(&v80 + 1) = sub_1BA2777D4;
        *&v81 = 0;
        *(&v81 + 1) = sub_1BA3080A0;
        v82 = 0;
        v83 = v60;
        v84 = v53;

        v55 = sub_1BA30836C(&v80);
        sub_1BA0E159C(v55);
LABEL_22:
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BA30A59C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BA309A30(0, a3, &qword_1EDC6AD50, MEMORY[0x1E69A3310], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA30A61C()
{
  if (!qword_1EBBF05B8)
  {
    sub_1BA30AAC0(255, qword_1EDC61B00, MEMORY[0x1E69A3DD0], sub_1B9F15730, type metadata accessor for FetchedResultsControllerDataSource);
    type metadata accessor for SummarySharingSelectionContextDelegate();
    v0 = type metadata accessor for MappedDataSourceWithContext();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF05B8);
    }
  }
}

uint64_t sub_1BA30A6D0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA30A728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA30A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA30A7DC()
{
  result = qword_1EBBF05C8;
  if (!qword_1EBBF05C8)
  {
    sub_1BA30A78C(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF05C8);
  }

  return result;
}