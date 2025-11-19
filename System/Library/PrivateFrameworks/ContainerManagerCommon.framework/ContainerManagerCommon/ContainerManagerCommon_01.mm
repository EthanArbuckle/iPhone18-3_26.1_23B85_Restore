uint64_t sub_1DF2E1660(uint64_t a1)
{
  v1 = a1;
  sub_1DF2D2724(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (swift_dynamicCast())
  {
    v2 = v49;
    v3 = sub_1DF2E11E0(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = 1 << *(v49 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v49 + 64);
    v8 = (v5 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        if (!v7)
        {
          if (v8 <= v4 + 1)
          {
            v11 = v4 + 1;
          }

          else
          {
            v11 = v8;
          }

          v4 = v11 - 1;
          while (1)
          {
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v10 >= v8)
            {
              v7 = 0;
              v45 = 0u;
              v46 = 0u;
              v44 = 0u;
              goto LABEL_15;
            }

            v7 = *(v2 + 64 + 8 * v10);
            ++v9;
            if (v7)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          type metadata accessor for container_part_t();
          result = sub_1DF3B103C();
          __break(1u);
          return result;
        }

        v10 = v4;
LABEL_14:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v10 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1DF2D2724(*(v2 + 56) + 32 * v13, v43);
        *&v44 = v15;
        *(&v44 + 1) = v16;
        sub_1DF2DD320(v43, &v45);

        v4 = v10;
LABEL_15:
        v47 = v44;
        v48[0] = v45;
        v48[1] = v46;
        if (!*(&v44 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(v1);

          if (v3[2])
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        sub_1DF2DD320(v48, &v44);
        v17 = sub_1DF3B0DBC();

        v18 = MCMGetContainerPartForName(v17);

        if (v18 != 7)
        {
          sub_1DF2D2724(&v44, v43);
          v19 = sub_1DF2E1348(v43);
          if (v19)
          {
            break;
          }
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0(&v44);
      }

      v39 = v19;
      v40 = v20;
      v41 = v21;
      v42 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v43[0] = v3;
      v23 = sub_1DF2DFEF4(v18, sub_1DF2CFB3C);
      v25 = v3[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (v3[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v34 = v23;
      sub_1DF2E0760();
      v23 = v34;
      v1 = v42;
      v3 = *&v43[0];
      if (v29)
      {
LABEL_26:
        v31 = (v3[7] + 24 * v23);
        v32 = *v31;
        v33 = v31[2];
        *v31 = v39;
        v31[1] = v40;
        v31[2] = v41;

        goto LABEL_17;
      }

LABEL_29:
      v3[(v23 >> 6) + 8] |= 1 << v23;
      *(v3[6] + 8 * v23) = v18;
      v35 = (v3[7] + 24 * v23);
      *v35 = v39;
      v35[1] = v40;
      v35[2] = v41;
      __swift_destroy_boxed_opaque_existential_0(&v44);
      v36 = v3[2];
      v27 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v27)
      {
        goto LABEL_38;
      }

      v3[2] = v37;
    }

    sub_1DF2DFF6C(v28, isUniquelyReferenced_nonNull_native);
    v23 = sub_1DF2DFEF4(v18, sub_1DF2CFB3C);
    if ((v29 & 1) != (v30 & 1))
    {
      goto LABEL_39;
    }

LABEL_25:
    v1 = v42;
    v3 = *&v43[0];
    if (v29)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  __swift_destroy_boxed_opaque_existential_0(v1);
LABEL_34:
  v3 = 0;
LABEL_35:
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v3;
}

uint64_t sub_1DF2E19F8(uint64_t a1)
{
  v1 = a1;
  sub_1DF2D2724(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (swift_dynamicCast())
  {
    v2 = v45;
    v3 = sub_1DF2E10DC(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = 1 << *(v45 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v45 + 64);
    v8 = (v5 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        if (!v7)
        {
          if (v8 <= v4 + 1)
          {
            v11 = v4 + 1;
          }

          else
          {
            v11 = v8;
          }

          v4 = v11 - 1;
          while (1)
          {
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v10 >= v8)
            {
              v7 = 0;
              v41 = 0u;
              v42 = 0u;
              v40 = 0u;
              goto LABEL_15;
            }

            v7 = *(v2 + 64 + 8 * v10);
            ++v9;
            if (v7)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          result = sub_1DF3B103C();
          __break(1u);
          return result;
        }

        v10 = v4;
LABEL_14:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v10 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1DF2D2724(*(v2 + 56) + 32 * v13, v39);
        *&v40 = v15;
        *(&v40 + 1) = v16;
        sub_1DF2DD320(v39, &v41);

        v4 = v10;
LABEL_15:
        v43 = v40;
        v44[0] = v41;
        v44[1] = v42;
        v17 = *(&v40 + 1);
        if (!*(&v40 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(v1);

          if (v3[2])
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v18 = v43;
        sub_1DF2DD320(v44, &v40);
        v19 = sub_1DF2E1660(&v40);
        if (v19)
        {
          break;
        }
      }

      v37 = v1;
      v38 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = v3;
      v21 = sub_1DF2D6BE4(v18, v17);
      v23 = v3[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_35;
      }

      v27 = v22;
      if (v3[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v32 = v21;
        sub_1DF2E08DC();
        v21 = v32;
        if ((v27 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_25:
        v29 = v21;

        v3 = v40;
        v30 = *(v40 + 56);
        v31 = *(v30 + 8 * v29);
        *(v30 + 8 * v29) = v38;

        v1 = v37;
      }

      else
      {
        sub_1DF2E0228(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1DF2D6BE4(v18, v17);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }

LABEL_24:
        if (v27)
        {
          goto LABEL_25;
        }

LABEL_27:
        v3 = v40;
        *(v40 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v33 = (v3[6] + 16 * v21);
        *v33 = v18;
        v33[1] = v17;
        *(v3[7] + 8 * v21) = v38;
        v34 = v3[2];
        v25 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v25)
        {
          goto LABEL_36;
        }

        v3[2] = v35;
        v1 = v37;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v1);
LABEL_32:
  v3 = 0;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v3;
}

unint64_t type metadata accessor for MCMEntitlementAccess()
{
  result = qword_1ECE34F00[0];
  if (!qword_1ECE34F00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE34F00);
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

uint64_t sub_1DF2E1D98(uint64_t *a1, int a2)
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

uint64_t sub_1DF2E1DE0(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF2E1E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF2E1F08(uint64_t a1)
{
  v3 = sub_1DF2E62A8(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
  if (v1)
  {
    return v3 & 1;
  }

  if (*(a1 + 8))
  {
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  sub_1DF2E6460(v4, v5, 1, &_s16AmbiguousPersonaVN, &off_1F5A5A500);

  sub_1DF2E6460(*(a1 + 16), *(a1 + 24), 2, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  sub_1DF2E6460(*(a1 + 32), *(a1 + 40), 3, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  sub_1DF2E65D8(*(a1 + 48), 4, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 52), 5, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 56), 6, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 60) & 1, 7, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 61) & 1, 8, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E6460(*(a1 + 64), *(a1 + 72), 9, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  result = sub_1DF2E65D8(*(a1 + 80), 10, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  v7 = *(a1 + 88);
  if (!(v7 >> 31))
  {
    sub_1DF2E65D8(v7, 11, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
    sub_1DF2E637C(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
    v3 = sub_1DF2E6428(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF2E22B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s16AmbiguousPersonaVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s16AmbiguousPersonaVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id sub_1DF2E23E0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DF2E2484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCMAnalyticsDatabaseWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t variable initialization expression of MCMAnalytics.queue()
{
  v10 = sub_1DF3B0EDC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DF3B0ECC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DF3B0D8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DF2D7818(0, &qword_1EE172C78, 0x1E69E9610);
  sub_1DF3B0D7C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&unk_1EE172C80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF2E4B24(&qword_1EE172C90, &unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF3B0F2C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  return sub_1DF3B0EFC();
}

id sub_1DF2E2730()
{
  v0 = sub_1DF3B0D0C();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DF3B0D3C();
  v41 = *(v46 - 8);
  v3 = *(v41 + 64);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v39 - v6;
  v45 = sub_1DF3B0CEC();
  v53 = *(v45 - 8);
  v7 = *(v53 + 64);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - v10;
  v50 = sub_1DF3B0EDC();
  v11 = *(v50 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF3B0ECC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1DF3B0D8C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v49 = OBJC_IVAR___MCMAnalytics_queue;
  v48 = sub_1DF2D7818(0, &qword_1EE172C78, 0x1E69E9610);
  sub_1DF3B0D7C();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&unk_1EE172C80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF2E4B24(&qword_1EE172C90, &unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF3B0F2C();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8090], v50);
  v19 = v51;
  *&v19[v49] = sub_1DF3B0EFC();
  v20 = containermanager_copy_global_configuration();
  v21 = &selRef_deleteCommand;
  if ([v20 isInternalImage])
  {
    v22 = [v20 managedPathRegistry];
    v23 = [v22 containermanagerLibrary];

    v50 = v23;
    v24 = [v23 url];
    v25 = v39;
    sub_1DF3B0CCC();

    v26 = v47;
    sub_1DF3B0CBC();
    v27 = *(v53 + 8);
    v28 = v45;
    v53 += 8;
    v27(v25, v45);
    v29 = sub_1DF3B0CDC();
    v30 = v52;
    MEMORY[0x1E12D26F0](v29);
    type metadata accessor for MCMAnalyticsDatabase();
    v31 = v40;
    v32 = v41;
    v33 = v46;
    (*(v41 + 16))(v40, v30, v46);
    v34 = sub_1DF2DACBC(v31);
    v35 = type metadata accessor for MCMAnalyticsDatabaseWrapper();
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped] = v34;
    v54.receiver = v36;
    v54.super_class = v35;

    v37 = objc_msgSendSuper2(&v54, sel_init);
    v21 = &selRef_deleteCommand;

    swift_unknownObjectRelease();

    (*(v32 + 8))(v52, v33);
    v27(v26, v28);
    *&v19[OBJC_IVAR___MCMAnalytics_db] = v37;
  }

  else
  {
    swift_unknownObjectRelease();
    *&v19[OBJC_IVAR___MCMAnalytics_db] = 0;
  }

  v55.receiver = v19;
  v55.super_class = MCMAnalytics;
  return objc_msgSendSuper2(&v55, v21[169]);
}

id sub_1DF2E2EE8()
{
  result = [objc_allocWithZone(MCMAnalytics) init];
  qword_1EE172DF8 = result;
  return result;
}

uint64_t sub_1DF2E2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9, uint64_t a10)
{
  v99 = a8;
  v100 = a5;
  v137[45] = *MEMORY[0x1E69E9840];
  v17 = sub_1DF3B0D0C();
  v103 = *(v17 - 8);
  v18 = v103[8];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v84 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v84 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v84 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v92 = &v84 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v97 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - v31;
  result = MCMPersonasAreSupported();
  if (!result)
  {
    goto LABEL_37;
  }

  v94 = a1;
  v87 = a7;
  v88 = a4;
  v89 = a6;
  v90 = v10;
  v34 = sub_1DF2DABBC();
  v35 = v103[2];
  v101 = v34;
  v102 = v35;
  v91 = v103 + 2;
  (v35)(v32);

  v36 = sub_1DF3B0CFC();
  v37 = sub_1DF3B0E9C();

  v38 = os_log_type_enabled(v36, v37);
  v85 = a2;
  v86 = a3;
  if (v38)
  {
    v39 = a2;
    v40 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v115 = v84;
    *v40 = 136315138;
    v137[0] = v94;
    v137[1] = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31030, &qword_1DF3BE0B0);
    v41 = sub_1DF3B0DDC();
    v43 = sub_1DF2D1250(v41, v42, v115);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_1DF2C3000, v36, v37, "Ambiguous persona with identifier: [%s]", v40, 0xCu);
    v44 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x1E12D4520](v44, -1, -1);
    MEMORY[0x1E12D4520](v40, -1, -1);
  }

  v45 = v103[1];
  v45(v32, v17);
  v46 = v17;
  memset(v137, 0, 348);
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  *&v115[4] = 0u;
  *v115 = 2;
  v47 = kpersona_info();
  v49 = v97;
  v48 = v98;
  if (v47)
  {
    v102(v97, v101, v17);
    v50 = sub_1DF3B0CFC();
    v51 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DF2C3000, v50, v51, "Unable to fetch current persona info", v52, 2u);
      MEMORY[0x1E12D4520](v52, -1, -1);
    }

    v45(v49, v46);
    LODWORD(v103) = 0;
  }

  else
  {
    LODWORD(v103) = *&v115[8];
  }

  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  if (voucher_get_current_persona_proximate_info())
  {
    v102(v48, v101, v46);
    v53 = sub_1DF3B0CFC();
    v54 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DF2C3000, v53, v54, "Unable to fetch current persona proximate", v55, 2u);
      MEMORY[0x1E12D4520](v55, -1, -1);
    }

    v56 = v48;
LABEL_17:
    v45(v56, v46);
    LODWORD(v98) = 0;
    goto LABEL_18;
  }

  memcpy(v114, v137, 0x15CuLL);
  v114[0] = 2;
  if (kpersona_info())
  {
    v102(v92, v101, v46);
    v57 = sub_1DF3B0CFC();
    v58 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67109120;
      swift_beginAccess();
      *(v59 + 4) = DWORD1(v108);
      _os_log_impl(&dword_1DF2C3000, v57, v58, "Unable to fetch current persona proximate info; personaid = %u", v59, 8u);
      MEMORY[0x1E12D4520](v59, -1, -1);
    }

    v56 = v92;
    goto LABEL_17;
  }

  LODWORD(v98) = v114[2];
LABEL_18:
  v104 = v110;
  v105 = v111;
  v106 = v112;
  if (voucher_get_current_persona_originator_info())
  {
    v60 = v96;
    v102(v96, v101, v46);
    v61 = v60;
    v62 = sub_1DF3B0CFC();
    v63 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DF2C3000, v62, v63, "Unable to fetch current persona originator", v64, 2u);
      MEMORY[0x1E12D4520](v64, -1, -1);
    }

    v45(v61, v46);
    v65 = 0;
    v66 = 0;
    v67 = 0xE000000000000000;
    goto LABEL_33;
  }

  memcpy(v114, v137, 0x15CuLL);
  v114[0] = 2;
  if (kpersona_info())
  {
    v102(v93, v101, v46);
    v68 = sub_1DF3B0CFC();
    v69 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 67109120;
      swift_beginAccess();
      *(v70 + 4) = DWORD1(v105);
      _os_log_impl(&dword_1DF2C3000, v68, v69, "Unable to fetch current persona originator info; personaid = %u", v70, 8u);
      MEMORY[0x1E12D4520](v70, -1, -1);
    }

    v45(v93, v46);
    v65 = 0;
  }

  else
  {
    v65 = v114[2];
  }

  v113 = 0;
  swift_beginAccess();
  if (container_audit_token_copy_executable_name_with_pid() || !v113)
  {
    v102(v95, v101, v46);
    v71 = sub_1DF3B0CFC();
    v72 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109120;
      *(v73 + 4) = DWORD2(v104);
      _os_log_impl(&dword_1DF2C3000, v71, v72, "Unable to fetch originator procpath, pid = %d", v73, 8u);
      MEMORY[0x1E12D4520](v73, -1, -1);
    }

    v45(v95, v46);
    v66 = 0;
    v67 = 0xE000000000000000;
    v74 = v113;
    if (!v113)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v66 = sub_1DF3B0E2C();
    v67 = v83;
    v74 = v113;
    if (!v113)
    {
      goto LABEL_33;
    }
  }

  MEMORY[0x1E12D4520](v74, -1, -1);
LABEL_33:
  v75 = v85;

  v76 = v88;

  v77 = v89;

  sub_1DF2DDDF4(v94, v75, v86, v76, v100, v77, v98, v103, v114, v87, v99 & 1, a9 & 1, v66, v67, v65, a10);
  v78 = v90;
  v79 = [v90 queue];
  v80 = *&v78[OBJC_IVAR___MCMAnalytics_db];
  if (v80)
  {
    v81 = *(v80 + OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped);
  }

  else
  {
    v81 = 0;
  }

  sub_1DF2E3998(v79, v81);

  result = sub_1DF2E49DC(v114);
LABEL_37:
  v82 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF2E3998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = sub_1DF3B0D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DF3B0D8C();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v3[3];
  *(v14 + 48) = v3[2];
  *(v14 + 64) = v15;
  v16 = v3[5];
  *(v14 + 80) = v3[4];
  *(v14 + 96) = v16;
  v17 = v3[1];
  *(v14 + 16) = *v3;
  *(v14 + 32) = v17;
  *(v14 + 112) = a2;
  aBlock[4] = sub_1DF2E4BC8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E4998;
  aBlock[3] = &block_descriptor_17;
  v18 = _Block_copy(aBlock);
  sub_1DF2E4C34(v3, v23);

  sub_1DF3B0D6C();
  v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&qword_1ECE31038, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF2E4B24(&qword_1ECE31048, &qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF3B0F2C();
  MEMORY[0x1E12D2890](0, v13, v9, v18);
  _Block_release(v18);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v21);
}

uint64_t sub_1DF2E3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a2;
  v26 = a1;
  v6 = sub_1DF3B0D5C();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DF3B0D8C();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 16) = a3;
  *(v18 + 24) = v19;
  (*(v15 + 32))(v18 + v17, &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1DF2E4A30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E4998;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);

  sub_1DF3B0D6C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&qword_1ECE31038, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF2E4B24(&qword_1ECE31048, &qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF3B0F2C();
  MEMORY[0x1E12D2890](0, v14, v9, v20);
  _Block_release(v20);
  (*(v25 + 8))(v9, v6);
  (*(v10 + 8))(v14, v24);
}

void sub_1DF2E4154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = sub_1DF3B0D0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DF2DABBC();
  v49 = v14;
  (*(v14 + 16))(v17, v18, v13);
  v19 = *(v6 + 16);
  v51 = v3;
  v52 = v19;
  v19(v12, v3, a1);
  v20 = sub_1DF3B0CFC();
  v48 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v20, v48))
  {
    v21 = swift_slowAlloc();
    v44 = v21;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v21 = 136315138;
    v52(v10, v12, a1);
    v45 = v20;
    v22 = v10;
    v23 = a2;
    v24 = *(v6 + 8);
    v24(v12, a1);
    v25 = *(v23 + 8);
    v26 = sub_1DF3B0FFC();
    v46 = v13;
    v27 = v6;
    v28 = v26;
    v30 = v29;
    v24(v22, a1);
    a2 = v23;
    v10 = v22;
    v31 = v28;
    v6 = v27;
    v32 = sub_1DF2D1250(v31, v30, aBlock);

    v33 = v44;
    v34 = v45;
    *(v44 + 1) = v32;
    v35 = v33;
    _os_log_impl(&dword_1DF2C3000, v34, v48, "Submitting CA event %s", v33, 0xCu);
    v36 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1E12D4520](v36, -1, -1);
    MEMORY[0x1E12D4520](v35, -1, -1);

    (*(v49 + 8))(v17, v46);
  }

  else
  {
    (*(v6 + 8))(v12, a1);

    (*(v49 + 8))(v17, v13);
  }

  v37 = v51;
  (*(a2 + 16))(a1, a2);
  v38 = a2;
  v39 = sub_1DF3B0DBC();

  v52(v10, v37, a1);
  v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = v38;
  (*(v6 + 32))(v41 + v40, v10, a1);
  aBlock[4] = sub_1DF2E4B78;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E48F0;
  aBlock[3] = &block_descriptor_6;
  v42 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v42);
}

uint64_t sub_1DF2E45C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34[-v10];
  v12 = sub_1DF3B0D0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1DF2DABBC();
  v18 = *(v13 + 16);
  v39 = v12;
  v18(v16, v17, v12);
  v19 = v6[2];
  v40 = a1;
  v19(v11, a1, a2);
  v20 = sub_1DF3B0CFC();
  v21 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = a3;
    v23 = v22;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v23 = 136315138;
    v35 = v21;
    v24 = v37;
    v19(v37, v11, a2);
    v25 = v6[1];
    v25(v11, a2);
    v26 = *(v38 + 8);
    v27 = sub_1DF3B0FFC();
    v29 = v28;
    v25(v24, a2);
    v30 = sub_1DF2D1250(v27, v29, &v41);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1DF2C3000, v20, v35, "Responding CA event %s", v23, 0xCu);
    v31 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1E12D4520](v31, -1, -1);
    v32 = v23;
    a3 = v38;
    MEMORY[0x1E12D4520](v32, -1, -1);
  }

  else
  {
    (v6[1])(v11, a2);
  }

  (*(v13 + 8))(v16, v39);
  return (*(a3 + 24))(a2, a3);
}

id sub_1DF2E48F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1DF2D7818(0, &unk_1ECE310B0, 0x1E69E58C0);
    v5 = sub_1DF3B0D9C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1DF2E4998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DF2E4ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF2E4B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DF2E4BC8()
{
  v1 = *(v0 + 112);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v2 = sub_1DF2DE100();
  return (*(v2 + 40))(v1, &_s21AmbiguousPersonaEventVN, v2);
}

uint64_t sub_1DF2E4CA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DF3B100C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461657263 && a2 == 0xE600000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819045746 && a2 == 0xE400000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F666E692D746573 && a2 == 0xE800000000000000 || (sub_1DF3B100C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726961706572 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DF3B100C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DF2E4F48(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x6F666E692D746573;
      }

      if (a1 == 7)
      {
        return 0x726961706572;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 1819045746;
    }

    else
    {
      return 0x6563616C706572;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x70756B6F6F6CLL;
      }

      if (a1 == 1)
      {
        return 0x657461657263;
      }

LABEL_18:
      type metadata accessor for MCMOperationType(0);
      result = sub_1DF3B101C();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x6574656C6564;
    }

    else
    {
      return 0x7465736572;
    }
  }
}

unint64_t sub_1DF2E5098()
{
  result = qword_1ECE310D0;
  if (!qword_1ECE310D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE310D8, &qword_1DF3BE128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310D0);
  }

  return result;
}

void sub_1DF2E510C(sqlite3 *a1)
{
  v3 = (nullsub_1)();
  sub_1DF2E5164(v3);
  if (!v1)
  {
    v4 = nullsub_1(a1);
    sub_1DF2E5518(v4);
    sub_1DF2E5D6C(a1);
  }
}

void sub_1DF2E5164(uint64_t a1)
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  errmsg[0] = 0;
  v7 = off_1F5A59F88;
  v8 = off_1F5A59F88();
  off_1F5A59F80();
  v9 = sub_1DF3B0DFC();

  LODWORD(a1) = sqlite3_exec(v8, (v9 + 32), 0, 0, errmsg);

  v10 = errmsg[0];
  if (a1)
  {
    v31 = v7;
    if (errmsg[0])
    {
      v11 = sub_1DF3B0E2C();
      v13 = v12;
    }

    else
    {
      v13 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E75;
    }

    v14 = sub_1DF2DABBC();
    (*(v3 + 16))(v6, v14, v2);

    v15 = sub_1DF3B0CFC();
    v16 = sub_1DF3B0EAC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v11;
      v19 = v18;
      v34 = v18;
      *v17 = 136315394;
      v32 = &_s8SettingsVN;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE310F0, &qword_1DF3BE2A0);
      v20 = sub_1DF3B0DDC();
      v22 = sub_1DF2D1250(v20, v21, &v34);
      v30 = v2;
      v23 = v22;

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      v24 = sub_1DF2D1250(v29, v13, &v34);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1DF2C3000, v15, v16, "Failed to execute statement [%s], error = %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v19, -1, -1);
      MEMORY[0x1E12D4520](v17, -1, -1);

      (*(v3 + 8))(v6, v30);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v25 = v31();
    v26 = sqlite3_extended_errcode(v25);
    sub_1DF2E66D4();
    swift_allocError();
    *v27 = v26;
    *(v27 + 4) = 6;
    swift_willThrow();
    v10 = errmsg[0];
  }

  sqlite3_free(v10);
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1DF2E5518(uint64_t a1)
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  errmsg[0] = 0;
  v7 = off_1F5A5A4F0;
  v8 = off_1F5A5A4F0();
  off_1F5A5A4E8[0]();
  v9 = sub_1DF3B0DFC();

  LODWORD(a1) = sqlite3_exec(v8, (v9 + 32), 0, 0, errmsg);

  v10 = errmsg[0];
  if (a1)
  {
    v31 = v7;
    if (errmsg[0])
    {
      v11 = sub_1DF3B0E2C();
      v13 = v12;
    }

    else
    {
      v13 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E75;
    }

    v14 = sub_1DF2DABBC();
    (*(v3 + 16))(v6, v14, v2);

    v15 = sub_1DF3B0CFC();
    v16 = sub_1DF3B0EAC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v11;
      v19 = v18;
      v34 = v18;
      *v17 = 136315394;
      v32 = &_s22AmbiguousPersonaSchemaVN;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE310E8, &qword_1DF3BE298);
      v20 = sub_1DF3B0DDC();
      v22 = sub_1DF2D1250(v20, v21, &v34);
      v30 = v2;
      v23 = v22;

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      v24 = sub_1DF2D1250(v29, v13, &v34);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1DF2C3000, v15, v16, "Failed to execute statement [%s], error = %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v19, -1, -1);
      MEMORY[0x1E12D4520](v17, -1, -1);

      (*(v3 + 8))(v6, v30);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v25 = v31();
    v26 = sqlite3_extended_errcode(v25);
    sub_1DF2E66D4();
    swift_allocError();
    *v27 = v26;
    *(v27 + 4) = 6;
    swift_willThrow();
    v10 = errmsg[0];
  }

  sqlite3_free(v10);
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1DF2E58CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  errmsg[1] = *MEMORY[0x1E69E9840];
  v44 = *(a1 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF3B0D0C();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  errmsg[0] = 0;
  v13 = *(a2 + 8);
  v45 = *(v13 + 16);
  v43 = v13 + 16;
  v14 = v45(a1, v13);
  (*(v13 + 8))(a1, v13);
  v15 = sub_1DF3B0DFC();

  LODWORD(v14) = sqlite3_exec(v14, (v15 + 32), 0, 0, errmsg);

  v16 = errmsg[0];
  if (v14)
  {
    if (errmsg[0])
    {
      v41 = sub_1DF3B0E2C();
      v18 = v17;
    }

    else
    {
      v18 = 0xE700000000000000;
      v41 = 0x6E776F6E6B6E75;
    }

    v20 = v46;
    v19 = v47;
    v21 = v12;
    v22 = sub_1DF2DABBC();
    (*(v20 + 16))(v12, v22, v19);
    v23 = v44;
    (*(v44 + 16))(v8, v3, a1);

    v42 = v21;
    v24 = sub_1DF3B0CFC();
    LODWORD(v21) = sub_1DF3B0EAC();

    v40 = v21;
    v25 = v21;
    v26 = v24;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v39[1] = v3;
      v28 = v27;
      v39[0] = swift_slowAlloc();
      v49 = v39[0];
      *v28 = 136315394;
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      v29 = sub_1DF3B0DDC();
      v31 = v30;
      (*(v23 + 8))(v8, a1);
      v32 = sub_1DF2D1250(v29, v31, &v49);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_1DF2D1250(v41, v18, &v49);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1DF2C3000, v26, v40, "Failed to execute statement [%s], error = %s", v28, 0x16u);
      v34 = v39[0];
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v34, -1, -1);
      MEMORY[0x1E12D4520](v28, -1, -1);

      (*(v46 + 8))(v42, v47);
    }

    else
    {

      (*(v20 + 8))(v42, v47);
      (*(v23 + 8))(v8, a1);
    }

    v35 = v45(a1, v13);
    v36 = sqlite3_extended_errcode(v35);
    sub_1DF2E66D4();
    swift_allocError();
    *v37 = v36;
    *(v37 + 4) = 6;
    swift_willThrow();
    v16 = errmsg[0];
  }

  sqlite3_free(v16);
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF2E5D6C(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  ppStmt[0] = 0;
  v3 = off_1F5A5A578();
  sub_1DF2E61BC(v3, v4, a1, ppStmt);
  if (v1)
  {
  }

  else
  {

    if (ppStmt[0])
    {
      off_1F5A5A568(a1, ppStmt[0], &v8);
      result = v8;
    }

    else
    {
      sub_1DF2E66D4();
      swift_allocError();
      *v7 = 1;
      *(v7 + 4) = 0;
      result = swift_willThrow();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF2E5E9C(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v7 = (*(*(a3 + 8) + 8))(a2);
  sub_1DF2E61BC(v7, v8, a1, v12);
  if (v3)
  {
  }

  else
  {

    if (v12[0])
    {
      result = (*(a3 + 56))(a1, v12[0], a2, a3);
    }

    else
    {
      sub_1DF2E66D4();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 0;
      result = swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF2E5FF0()
{
  result = off_1F5A5A548(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
  if (!v0)
  {
    v2 = off_1F5A5A540[0]();
    result = sqlite3_finalize(v2);
    if (result)
    {
      v3 = off_1F5A5A580();
      v4 = sqlite3_extended_errcode(v3);
      sub_1DF2E66D4();
      swift_allocError();
      *v5 = v4;
      *(v5 + 4) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1DF2E60F0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v2)
  {
    v6 = (*(a2 + 16))(a1, a2);
    result = sqlite3_finalize(v6);
    if (result)
    {
      v7 = (*(*(a2 + 8) + 16))(a1);
      v8 = sqlite3_extended_errcode(v7);
      sub_1DF2E66D4();
      swift_allocError();
      *v9 = v8;
      *(v9 + 4) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1DF2E61BC(uint64_t a1, uint64_t a2, sqlite3 *db, sqlite3_stmt **ppStmt)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DF3B0F8C();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }

    return sub_1DF3B0F8C();
  }

  *zSql = a1;
  v10 = a2 & 0xFFFFFFFFFFFFFFLL;
  v5 = zSql;
LABEL_6:
  result = sqlite3_prepare_v3(db, v5, -1, 0, ppStmt, 0);
  if (result)
  {
    v7 = sqlite3_extended_errcode(db);
    sub_1DF2E66D4();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E62A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (sqlite3_reset(v5))
  {
    v6 = 4;
  }

  else
  {
    v7 = (v4)(a1, a2);
    result = sqlite3_clear_bindings(v7);
    if (!result)
    {
      return result;
    }

    v6 = 5;
  }

  v9 = (*(*(a2 + 8) + 16))(a1);
  v10 = sqlite3_extended_errcode(v9);
  sub_1DF2E66D4();
  swift_allocError();
  *v11 = v10;
  *(v11 + 4) = v6;
  return swift_willThrow();
}

uint64_t sub_1DF2E637C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  result = sqlite3_step(v4);
  if (result != 101)
  {
    v6 = (*(*(a2 + 8) + 16))(a1);
    v7 = sqlite3_extended_errcode(v6);
    sub_1DF2E66D4();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E6460(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = *(a5 + 8);
    v16 = (*(v7 + 16))(a4, v7);
    result = sqlite3_bind_null(v16, a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v7 = *(a5 + 8);
  v8 = (*(v7 + 16))(a4, v7);
  if (qword_1ECE352A8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECE35430;
  v10 = sub_1DF3B0DFC();
  v11 = sqlite3_bind_text(v8, a3, (v10 + 32), -1, v9);

  if (v11)
  {
LABEL_5:
    v13 = (*(*(v7 + 8) + 16))(a4);
    v14 = sqlite3_extended_errcode(v13);
    sub_1DF2E66D4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E65D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = *(a4 + 8);
    v10 = (*(v7 + 16))(a3, v7);
    result = sqlite3_bind_null(v10, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = a1;
  v7 = *(a4 + 8);
  v8 = (*(v7 + 16))(a3, v7);
  result = sqlite3_bind_int(v8, a2, v6);
  if (result)
  {
LABEL_5:
    v11 = (*(*(v7 + 8) + 16))(a3);
    v12 = sqlite3_extended_errcode(v11);
    sub_1DF2E66D4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DF2E66D4()
{
  result = qword_1ECE310E0;
  if (!qword_1ECE310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310E0);
  }

  return result;
}

uint64_t _s14descr1F5A59CC1C10StatementsV14StatementErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 5))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 4);
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

uint64_t _s14descr1F5A59CC1C10StatementsV14StatementErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 4) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF2E67DC(char *zSql)
{
  v2 = *(v1 + 16);
  result = sqlite3_prepare_v3(v2, zSql, -1, 0, *(v1 + 24), 0);
  if (result)
  {
    v4 = sqlite3_extended_errcode(v2);
    sub_1DF2E66D4();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t MCMGetContainerPartForName(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = -1;
  v3 = gContainerPartNames;
  do
  {
    v4 = *v3++;
    v5 = [v4 isEqualToString:a1];
    v6 = v2 + 1;
    if (v5)
    {
      break;
    }
  }

  while (v2++ != 5);
  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF2EB2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if (a11)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1DF2EB2F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DF2EB2F4);
  }

  objc_terminate();
}

void sub_1DF2F8D9C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void _containermanagerd_main(int a1, char *const *a2, uint64_t a3)
{
  v137 = *MEMORY[0x1E69E9840];
  v108 = 91;
  [MEMORY[0x1E696ABC0] _setFileNameLocalizationEnabled:0];
  objc_setExceptionPreprocessor(_containermanagerd_exception_preprocessor);
  _CFPrefsSetDirectModeEnabled();
  v92 = MCMSharedFastWorkloop();
  v93 = MCMSharedSlowWorkloop();
  v94 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.listener", 0, v92);
  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MCMRuntimeState);
  [(MCMRuntimeState *)v6 restore];
  v96 = v6;
  [(MCMRuntimeState *)v6 reset];
  v7 = +[MCMPOSIXUser currentPOSIXUser];
  v97 = v7;
  if (v7)
  {
    if (_containermanagerd_posix_user_has_home_dir(v7, "current", &v108))
    {
      getpid();
      v8 = memorystatus_control();
      if (v8)
      {
        v9 = container_log_handle_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v44 = strerror(v8);
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v44;
          _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Error elevating inactive jetsam priority: %{public}s", &buf, 0xCu);
        }
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v129 = 0x3032000000;
        v130 = __Block_byref_object_copy__1060;
        v131 = __Block_byref_object_dispose__1061;
        v132 = 0;
        v10 = dispatch_get_global_queue(17, 0);
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);
        v12 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v11;

        v13 = dispatch_time(0, 240000000000);
        dispatch_source_set_timer(*(*(&buf + 1) + 40), v13, 0xFFFFFFFFFFFFFFFFLL, 0x4A817C800uLL);
        v14 = *(*(&buf + 1) + 40);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___containermanagerd_main_block_invoke;
        handler[3] = &unk_1E86AFAD0;
        handler[4] = &buf;
        dispatch_source_set_event_handler(v14, handler);
        dispatch_activate(*(*(&buf + 1) + 40));
        _Block_object_dispose(&buf, 8);
      }

      v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      v99 = @"normal";
      v100 = @"fixed";
      v15 = @"root";
      v103 = @"no";
      v104 = @"_installd";
      v16 = MEMORY[0x1E69E98E0];
      v101 = @"global";
      v102 = @"global";
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v17 = getopt_long_only(a1, a2, "r:u:b:B:s:S:c:", &_containermanagerd_main_opts, 0);
            if (v17 != 99)
            {
              break;
            }

            if (os_variant_has_internal_content())
            {
              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v98 = v18 = v98;
              goto LABEL_31;
            }
          }

          if (v17 <= 106)
          {
            break;
          }

          if (v17 > 114)
          {
            if (v17 == 115)
            {
              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v102 = v18 = v102;
            }

            else
            {
              if (v17 != 117)
              {
                goto LABEL_43;
              }

              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v100 = v18 = v100;
            }
          }

          else if (v17 == 107)
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v103 = v18 = v103;
          }

          else
          {
            if (v17 != 114)
            {
              goto LABEL_43;
            }

            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v99 = v18 = v99;
          }

LABEL_31:
        }

        if (v17 <= 82)
        {
          if (v17 != 66)
          {
            if (v17 != -1)
            {
LABEL_43:
              v108 = 148;
              _containermanagerd_usage();
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v21 = 0;
              v27 = 0;
              goto LABEL_44;
            }

            v19 = [MCMStaticConfiguration alloc];
            v20 = +[MCMStaticConfiguration defaultPlistDirectoryURL];
            v21 = [(MCMStaticConfiguration *)v19 initFromPlistAtPathOrName:v98 defaultPlistDirectoryURL:v20];

            v22 = container_log_handle_for_category();
            v23 = os_signpost_id_make_with_pointer(v22, v21);

            v24 = container_log_handle_for_category();
            v25 = v24;
            if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
            {
              LODWORD(buf) = 138477827;
              *(&buf + 4) = v98;
              _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "LoadConfiguration", " path=%{private, signpost.description:attribute}@ ", &buf, 0xCu);
            }

            v106 = 0;
            v26 = [v21 loadWithError:&v106];
            v27 = v106;
            v28 = container_log_handle_for_category();
            v29 = v28;
            if (v23 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
            {
              v30 = [v21 sourceFileURL];
              v31 = [v30 path];
              LODWORD(buf) = 138477827;
              *(&buf + 4) = v31;
              _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v29, OS_SIGNPOST_INTERVAL_END, v23, "LoadConfiguration", " path=%{private, signpost.description:attribute}@ ", &buf, 0xCu);
            }

            if ((v26 & 1) == 0)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              has_home_dir = 0;
              v108 = [v27 type];
              goto LABEL_45;
            }

            if ([(__CFString *)v99 isEqualToString:@"privileged"])
            {
              if (!geteuid())
              {
                v32 = 0;
                goto LABEL_62;
              }

              v45 = *MEMORY[0x1E69E9848];
              v46 = getprogname();
              fprintf(v45, "ERROR: %s must be run as root when in privileged mode\n", v46);
LABEL_58:
              v33 = 0;
              v34 = 0;
LABEL_59:
              v35 = 0;
LABEL_44:
              has_home_dir = 0;
LABEL_45:

              objc_autoreleasePoolPop(context);
              if (has_home_dir)
              {
                v37 = v92;
                v38 = v93;
                v39 = v94;
                v126[0] = 0;
                v126[1] = v126;
                v126[2] = 0x3032000000;
                v126[3] = __Block_byref_object_copy__1060;
                v126[4] = __Block_byref_object_dispose__1061;
                v127 = 0;
                v40 = objc_autoreleasePoolPush();
                if (_os_feature_enabled_impl())
                {
                  v41 = containermanager_copy_global_configuration();
                  if ([v41 runmode])
                  {
                  }

                  else
                  {
                    v42 = containermanager_copy_global_configuration();
                    v43 = [v42 isInternalImage];

                    if (v43 && _containermanagerd_setup_log_replication_onceToken != -1)
                    {
                      dispatch_once(&_containermanagerd_setup_log_replication_onceToken, &__block_literal_global_1063);
                    }
                  }
                }

                v63 = +[MCMUserIdentitySharedCache sharedInstance];
                v64 = container_log_handle_for_category();
                v65 = os_signpost_id_make_with_pointer(v64, &_containermanagerd_start_xpc_userListener);

                v66 = containermanager_copy_global_configuration();
                v67 = [v66 runmode] == 3;

                if (!v67)
                {
                  aBlock = 0;
                  p_aBlock = &aBlock;
                  v111 = 0x3032000000;
                  v112 = __Block_byref_object_copy__1060;
                  v113 = __Block_byref_object_dispose__1061;
                  v114 = os_transaction_create();
                  *&buf = MEMORY[0x1E69E9820];
                  *(&buf + 1) = 3221225472;
                  v129 = ___containermanagerd_start_xpc_block_invoke;
                  v130 = &unk_1E86AFAF8;
                  v83 = v39;
                  v131 = v83;
                  v132 = v37;
                  v136 = v65;
                  v84 = v63;
                  v133 = v84;
                  v134 = v126;
                  v135 = &aBlock;
                  v85 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &buf);
                  dispatch_async(v83, v85);
                  v86 = containermanager_copy_global_configuration();
                  v105 = [v86 runmode] == 4;

                  if (!v105)
                  {
                    v124[0] = 0;
                    v124[1] = v124;
                    v124[2] = 0x3032000000;
                    v124[3] = __Block_byref_object_copy__1060;
                    v124[4] = __Block_byref_object_dispose__1061;
                    v125 = os_transaction_create();
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = ___containermanagerd_start_xpc_block_invoke_2;
                    block[3] = &unk_1E86AFB20;
                    v123 = v65;
                    v119 = v84;
                    v121 = v126;
                    v87 = v83;
                    v120 = v87;
                    v122 = v124;
                    v88 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
                    dispatch_async(v87, v88);

                    _Block_object_dispose(v124, 8);
                  }

                  _Block_object_dispose(&aBlock, 8);
                }

                aBlock = MEMORY[0x1E69E9820];
                p_aBlock = 3221225472;
                v111 = ___containermanagerd_start_xpc_block_invoke_3;
                v112 = &unk_1E86AFB70;
                v68 = v39;
                v113 = v68;
                v117 = v126;
                v69 = v37;
                v114 = v69;
                v70 = v38;
                v115 = v70;
                v71 = v63;
                v116 = v71;
                v72 = _Block_copy(&aBlock);
                v73 = containermanager_copy_global_configuration();
                v74 = [v73 runmode] == 0;

                if (v74)
                {
                  v75 = v72[2](v72, "com.apple.containermanagerd.system");
                  v76 = _containermanagerd_start_xpc_systemListener;
                  _containermanagerd_start_xpc_systemListener = v75;
                }

                v77 = containermanager_copy_global_configuration();
                v78 = [v77 runmode] == 0;

                if (!v78)
                {
                  v79 = v72[2](v72, "com.apple.containermanagerd");
                  v80 = _containermanagerd_start_xpc_userListener;
                  _containermanagerd_start_xpc_userListener = v79;
                }

                objc_autoreleasePoolPop(v40);
                CFRunLoopRun();
                _Block_object_dispose(v126, 8);
              }

LABEL_74:
              _containermanagerd_start_xpc_with_permanent_error(v94, v108);
            }

            if ([(__CFString *)v99 isEqualToString:@"agent"])
            {
              if (![v97 isRoleUser] || (objc_msgSend(v97, "hasUseableHomeDirectory") & 1) != 0 || (objc_msgSend(v97, "isRoot") & 1) != 0)
              {
                v32 = 2;
LABEL_62:
                if (([(__CFString *)v100 isEqualToString:@"none"]& 1) != 0)
                {
                  v47 = 0;
                }

                else if (([(__CFString *)v100 isEqualToString:@"current"]& 1) != 0)
                {
                  v47 = 1;
                }

                else
                {
                  if (([(__CFString *)v100 isEqualToString:@"fixed"]& 1) == 0)
                  {
                    v54 = *MEMORY[0x1E69E9848];
                    v55 = v100;
                    fprintf(v54, "ERROR: Unrecognized user container mode: [%s]\n", [(__CFString *)v100 UTF8String]);
                    _containermanagerd_usage();
                    goto LABEL_58;
                  }

                  v47 = 2;
                }

                if (([(__CFString *)v101 isEqualToString:@"none"]& 1) != 0)
                {
                  v48 = 0;
                }

                else if (([(__CFString *)v101 isEqualToString:@"global"]& 1) != 0)
                {
                  v48 = 1;
                }

                else if (([(__CFString *)v101 isEqualToString:@"per-user"]& 1) != 0)
                {
                  v48 = 2;
                }

                else
                {
                  if (([(__CFString *)v101 isEqualToString:@"proxy"]& 1) == 0)
                  {
                    v81 = *MEMORY[0x1E69E9848];
                    v82 = v101;
                    fprintf(v81, "ERROR: Unrecognized bundle container mode: [%s]\n", [(__CFString *)v101 UTF8String]);
                    _containermanagerd_usage();
                    goto LABEL_58;
                  }

                  v48 = 3;
                }

                if (v104)
                {
                  v49 = [MCMPOSIXUser posixUserWithName:v104];
                }

                else
                {
                  v49 = v97;
                }

                v34 = v49;
                if (!v49)
                {
                  v34 = v97;
                  v51 = container_log_handle_for_category();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v104;
                    _os_log_error_impl(&dword_1DF2C3000, v51, OS_LOG_TYPE_ERROR, "Cannot find user [%{public}@] specified for bundle container owner, continuing without bundle container support", &buf, 0xCu);
                  }

                  v48 = 0;
                }

                if (([(__CFString *)v102 isEqualToString:@"none"]& 1) != 0)
                {
                  v52 = 0;
                }

                else if (([(__CFString *)v102 isEqualToString:@"global"]& 1) != 0)
                {
                  v52 = 1;
                }

                else if (([(__CFString *)v102 isEqualToString:@"per-user"]& 1) != 0)
                {
                  v52 = 2;
                }

                else
                {
                  if (([(__CFString *)v102 isEqualToString:@"proxy"]& 1) == 0)
                  {
                    v89 = *MEMORY[0x1E69E9848];
                    v90 = v102;
                    fprintf(v89, "ERROR: Unrecognized system container mode: [%s]\n", [(__CFString *)v102 UTF8String]);
                    _containermanagerd_usage();
                    v33 = 0;
                    goto LABEL_59;
                  }

                  v52 = 3;
                }

                if (v15)
                {
                  v53 = [MCMPOSIXUser posixUserWithName:v15];
                }

                else
                {
                  v53 = v97;
                }

                v33 = v53;
                if (!v53)
                {
                  v33 = v97;
                  v59 = container_log_handle_for_category();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v15;
                    _os_log_error_impl(&dword_1DF2C3000, v59, OS_LOG_TYPE_ERROR, "Cannot find user [%{public}@] specified for system container owner, continuing without system container support", &buf, 0xCu);
                  }

                  v52 = 0;
                }

                if (v103)
                {
                  v60 = [(__CFString *)v103 isEqualToString:@"yes"];
                }

                else
                {
                  v60 = 0;
                }

                LOBYTE(v91) = v60;
                v35 = [[MCMGlobalConfiguration alloc] initWithStaticConfig:v21 runMode:v32 userContainerMode:v47 bundleContainerMode:v48 bundleContainerOwner:v34 systemContainerMode:v52 systemContainerOwner:v33 kernelUpcallEnabled:v91, v92, v93, v94, context];
                v61 = _gGlobalConfiguration;
                _gGlobalConfiguration = v35;

                v62 = [v21 defaultUser];
                has_home_dir = _containermanagerd_posix_user_has_home_dir(v62, "default", &v108);

                goto LABEL_45;
              }

              v56 = container_log_handle_for_category();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v97;
                _os_log_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_DEFAULT, "Starting up in PROXY mode because current user %@ does not have a home directory.", &buf, 0xCu);
              }
            }

            else if (([(__CFString *)v99 isEqualToString:@"proxy"]& 1) == 0)
            {
              if (([(__CFString *)v99 isEqualToString:@"sync"]& 1) != 0)
              {
                v32 = 4;
              }

              else
              {
                if (([(__CFString *)v99 isEqualToString:@"normal"]& 1) == 0)
                {
                  v57 = *MEMORY[0x1E69E9848];
                  v58 = v99;
                  fprintf(v57, "ERROR: Unrecognized run mode: [%s]\n", [(__CFString *)v99 UTF8String]);
                  _containermanagerd_usage();
                  goto LABEL_58;
                }

                v32 = 1;
              }

              goto LABEL_62;
            }

            v32 = 3;
            goto LABEL_62;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];

          v104 = v18;
          if (([(__CFString *)v18 isEqualToString:@"-"]& 1) != 0)
          {
            v104 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          if (v17 != 83)
          {
            if (v17 != 98)
            {
              goto LABEL_43;
            }

            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v101 = v18 = v101;
            goto LABEL_31;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];

          v15 = v18;
          if (([(__CFString *)v18 isEqualToString:@"-"]& 1) != 0)
          {
            v15 = 0;
            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = geteuid();
      _os_log_fault_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_FAULT, "Could not get user details for current uid: %u", &buf, 8u);
    }
  }

  objc_autoreleasePoolPop(context);
  goto LABEL_74;
}

void sub_1DF2FD274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t _containermanagerd_posix_user_has_home_dir(void *a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v24 = 0;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v5 unvalidatedHomeDirectoryURL];
  v23 = 0;
  v8 = [v6 itemAtURL:v7 followSymlinks:1 exists:&v24 + 1 isDirectory:&v24 error:&v23];
  v9 = v23;

  if (v8)
  {
    if (HIBYTE(v24) != 1 || (v24 & 1) == 0)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 unvalidatedHomeDirectoryURL];
        v22 = [v21 path];
        *buf = 136315394;
        v26 = a2;
        v27 = 2112;
        v28 = v22;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "%s user home directory [%@] not found or not a directory.", buf, 0x16u);
      }

      v13 = 102;
      goto LABEL_11;
    }

    v10 = [v5 homeDirectoryURL];

    if (v10)
    {
      v11 = 1;
      goto LABEL_13;
    }

    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 unvalidatedHomeDirectoryURL];
      v17 = [v16 path];
      *buf = 136315394;
      v26 = a2;
      v27 = 2112;
      v28 = v17;
      v18 = "Could not realpath %s home directory [%@]";
      v19 = v12;
      v20 = 22;
LABEL_17:
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    }
  }

  else
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 unvalidatedHomeDirectoryURL];
      v17 = [v16 path];
      *buf = 136315650;
      v26 = a2;
      v27 = 2112;
      v28 = v17;
      v29 = 2114;
      v30 = v9;
      v18 = "Failed to check for existence of %s user home directory [%@]: %{public}@";
      v19 = v12;
      v20 = 32;
      goto LABEL_17;
    }
  }

  v13 = 103;
LABEL_11:

  v11 = 0;
  if (a3)
  {
    *a3 = v13;
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __Block_byref_object_copy__1060(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__1061(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void ___containermanagerd_main_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  getpid();
  v2 = memorystatus_control();
  if (v2)
  {
    v3 = v2;
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = strerror(v3);
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "Error de-elevating inactive jetsam priority: %{public}s", &v8, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t _containermanagerd_usage()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getprogname();
  printf("usage:\n%s <options>\n", v0);
  puts("\tOptions:\n");
  printf("\t\t[--runmode <%s|%s|%s|%s|%s>]\n", [@"privileged" UTF8String], objc_msgSend(@"normal", "UTF8String"), objc_msgSend(@"agent", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"), objc_msgSend(@"sync", "UTF8String"));
  printf("\t\t\tSets the daemon run mode. Default is [%s].\n\n", [@"normal" UTF8String]);
  printf("\t\t[--user-container-mode <%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"current", "UTF8String"), objc_msgSend(@"fixed", "UTF8String"));
  printf("\t\t\tSets the user container mode. Default is [%s].\n\n", [@"fixed" UTF8String]);
  printf("\t\t[--bundle-container-mode <%s|%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"global", "UTF8String"), objc_msgSend(@"per-user", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"));
  printf("\t\t\tSets the bundle container mode. Default is [%s].\n\n", [@"global" UTF8String]);
  puts("\t\t[--bundle-container-owner <username>]");
  v1 = [@"_installd" UTF8String];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = "<current user>";
  }

  printf("\t\t\tSets the bundle container owner when mode is global. Default is [%s].\n\n", v2);
  printf("\t\t[--system-container-mode <%s|%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"global", "UTF8String"), objc_msgSend(@"per-user", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"));
  printf("\t\t\tSets the system container mode. Default is [%s].\n\n", [@"global" UTF8String]);
  puts("\t\t[--system-container-owner <username>]");
  v3 = [@"root" UTF8String];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "<current user>";
  }

  printf("\t\t\tSets the system container owner when mode is global. Default is [%s].\n\n", v4);
  result = printf("\t\t[--kernel-upcall <%s|%s>]\n", [@"no" UTF8String], objc_msgSend(@"yes", "UTF8String"));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void ___containermanagerd_start_xpc_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v65 = v2;
  v6 = v4;
  v7 = container_log_handle_for_category();
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StartingUp", "", buf, 2u);
  }

  v9 = objc_autoreleasePoolPush();
  if (setiopolicy_np(9, 0, 1))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v62 = *__error();
      *buf = 67109120;
      *&buf[4] = v62;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Unable to set low disk space io policy: %{darwin.errno}d", buf, 8u);
    }
  }

  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "MobileContainerManager-725.40.12~15";
    *&buf[12] = 2082;
    *&buf[14] = "Oct 23 2025";
    *&buf[22] = 2082;
    v74 = "06:43:23";
    _os_log_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEFAULT, "containermanagerd (%{public}s) built at %{public}s %{public}s started", buf, 0x20u);
  }

  v12 = _CFCopySystemVersionDictionary();
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    if (v14)
    {
      v15 = [v13 objectForKeyedSubscript:@"ReleaseType"];
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEFAULT, "Current build version (%@ / %@)", buf, 0x16u);
      }
    }

    else
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not get current build string", buf, 2u);
      }
    }
  }

  else
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not get current build info", buf, 2u);
    }
  }

  v17 = containermanager_copy_global_configuration();
  v18 = [v17 kernelUpcallEnabled];

  if (v18)
  {
    v19 = v5;
    v20 = objc_opt_class();
    v21 = v19;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __conmanupcall_block_invoke;
    v74 = &unk_1E86B1200;
    v76 = &v69;
    v77 = v20;
    v75 = v21;
    v22 = conmanupcall_onceToken;
    v23 = v21;
    if (v22 != -1)
    {
      dispatch_once(&conmanupcall_onceToken, buf);
    }

    v24 = *(v70 + 24);

    _Block_object_dispose(&v69, 8);
    if ((v24 & 1) == 0)
    {
      _os_crash();
      __break(1u);
      return;
    }
  }

  v25 = containermanager_copy_global_configuration();
  v26 = [v25 libraryRepair];
  v69 = 0;
  v27 = [v26 createPathsIfNecessaryWithError:&v69];
  v28 = v69;

  if ((v27 & 1) == 0)
  {
    v40 = container_log_handle_for_category();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed creating working directories: %{public}@", buf, 0xCu);
    }

    v41 = 0;
    goto LABEL_44;
  }

  v29 = containermanager_copy_global_configuration();
  v30 = [v29 dispositionForContainerClass:2];

  if (v30 == 1)
  {
    v31 = v5;
    v32 = [v6 defaultUserIdentity];
    v33 = [v6 libraryRepairForUserIdentity:v32];
    v68 = v28;
    v34 = [v33 createPathsIfNecessaryWithError:&v68];
    v35 = v68;

    if ((v34 & 1) == 0)
    {
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v35;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed creating working directories: %{public}@", buf, 0xCu);
      }

      v41 = 0;
      v28 = v35;
      v5 = v31;
      goto LABEL_44;
    }

    v28 = v35;
    v5 = v31;
  }

  v36 = containermanager_copy_global_configuration();
  v37 = [v36 dispositionForContainerClass:2];

  if (v37 == 1)
  {
    v67 = v28;
    v38 = [MCMCodeSigningMapping codeSignMappingWithError:&v67];
    v39 = v67;

    if (!v38)
    {
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v39;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to connect codesign mapping database: %{public}@", buf, 0xCu);
      }

      v41 = 0;
      v28 = v39;
      goto LABEL_44;
    }

    v64 = v5;
    objc_storeStrong(&gCodeSigningMapping, v38);
    v28 = v39;
  }

  else
  {
    v64 = v5;
    v38 = 0;
  }

  v42 = [MCMContainerCache alloc];
  v43 = [v38 childParentMapCache];
  v44 = objc_opt_class();
  v66 = 0;
  v45 = [(MCMContainerCache *)v42 initWithUserIdentityCache:v6 childParentMapCache:v43 classCacheClass:v44 cacheEntryClass:objc_opt_class() error:&v66];
  v40 = v66;

  if (v45)
  {
    v46 = gContainerCache;
    gContainerCache = v45;
    v63 = v45;

    v47 = [MCMSystemChangeMonitor alloc];
    *buf = gContainerCache;
    v48 = v6;
    v49 = v9;
    v50 = containermanager_copy_global_configuration();
    v51 = [v50 classPathCache];
    *&buf[8] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:2];
    v53 = [(MCMSystemChangeMonitor *)v47 initWithQueue:v65 flushables:v52];
    v54 = gMCMChangeMonitor;
    gMCMChangeMonitor = v53;

    v9 = v49;
    v6 = v48;
    [v48 addUserIdentityCacheObserver:gMCMChangeMonitor];

    v41 = 1;
  }

  else
  {
    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Failed to connect container cache database: %{public}@", buf, 0xCu);
    }

    v41 = 0;
  }

  v5 = v64;
LABEL_44:

  objc_autoreleasePoolPop(v9);
  if ((v41 & 1) == 0)
  {
    v56 = [[MCMError alloc] initWithErrorType:91];
    v57 = *(*(a1 + 56) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = v56;

    _containermanagerd_self_destruct(*(a1 + 32));
  }

  v59 = *(*(a1 + 64) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = 0;

  v61 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_start_xpc_block_invoke_2(uint64_t a1)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v89 = +[MCMClientConnection sharedClientConnection];
  v5 = v3;
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 managedPathRegistry];
  v8 = [v7 containermanagerLibrary];

  v9 = containermanager_copy_global_configuration();
  LODWORD(v7) = [v9 runmode];

  v88 = v2;
  if (v7)
  {
    v10 = [v5 defaultUserIdentity];
    v11 = [v5 managedUserPathRegistryForUserIdentity:v10];
    v12 = [v11 containermanagerUserLibrary];

    v8 = v12;
  }

  v13 = a1;
  v14 = [v8 url];
  v15 = [v14 URLByAppendingPathComponent:@"boot.txt" isDirectory:0];

  v16 = v15;
  *&out_token = 0;
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:container_internal_get_first_boot_uuid() length:0];
  v18 = +[MCMFileManager defaultManager];
  *v94 = 0;
  v90 = v16;
  v19 = [v18 readDataFromURL:v16 options:2 error:v94];
  v20 = *v94;

  v21 = container_log_handle_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v103 = v90;
    v104 = 2112;
    v105 = v17;
    v106 = 2112;
    v107 = v19;
    v108 = 2112;
    v109 = v20;
    _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "First boot check with [%@]; uuid = [%@], marker = [%@], error = %@", buf, 0x2Au);
  }

  if (v19)
  {
    v22 = [v17 isEqualToData:v19] ^ 1;
  }

  else
  {
    v22 = 1;
  }

  v23 = v89;

  v87 = v22;
  if (v22)
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, "containermanagerd performing first boot initialization", buf, 2u);
    }

    v25 = container_log_handle_for_category();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FirstBootSetup", "", buf, 2u);
    }

    [v89 rebootContainerManagerSetup];
    v26 = container_log_handle_for_category();
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FirstBootSetup", "", buf, 2u);
    }

    v27 = v90;
    *&out_token = 0;
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:container_internal_get_first_boot_uuid() length:0];
    v29 = +[MCMFileManager defaultManager];
    v30 = [v29 dataWritingOptionsForFileAtURL:v27];

    v31 = +[MCMFileManager defaultManager];
    *v94 = 0;
    v32 = [v31 writeData:v28 toURL:v27 options:v30 mode:384 error:v94];
    v33 = *v94;

    v34 = container_log_handle_for_category();
    v35 = v34;
    if (v32)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v103 = v27;
        v104 = 2112;
        v105 = v28;
        _os_log_debug_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_DEBUG, "First boot set complete with [%@]; uuid = [%@]", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = v27;
      v104 = 2112;
      v105 = v33;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Could not write boot marker at [%@]; error = %@", buf, 0x16u);
    }

    v23 = v89;
  }

  v36 = container_log_handle_for_category();
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BootSetup", "", buf, 2u);
  }

  [v23 containerManagerSetup];
  v37 = containermanager_copy_global_configuration();
  v38 = [v37 dispositionForContainerClass:2];

  v39 = v22;
  v40 = v88;
  v41 = v4;
  v42 = v13;
  if (v38 != 1)
  {
    goto LABEL_41;
  }

  v86 = v41;
  v43 = [gContainerCache userIdentityCache];
  v44 = [v43 userIdentityForPersonalPersona];
  if (v44)
  {
    v45 = v44;
    v83 = v43;
    v84 = v5;
    v85 = v42;
    v46 = [MCMClientIdentity privilegedClientIdentityWithUserIdentity:v44 kernel:1];
    v47 = +[MCMUserIdentitySharedCache sharedInstance];
    v48 = [MCMContainerFactory alloc];
    v82 = v46;
    v92 = [(MCMContainerFactory *)v48 initWithContainerCache:gContainerCache clientIdentity:v46 userIdentityCache:v47];
    v49 = containermanager_copy_global_configuration();
    v50 = [v49 staticConfig];
    v51 = [v50 configForContainerClass:2];

    v112 = 0u;
    v113 = 0u;
    out_token = 0u;
    v111 = 0u;
    v52 = +[MCMEntitlementBypassList sharedBypassList];
    v53 = [v52 wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet];

    obj = v53;
    v54 = [v53 countByEnumeratingWithState:&out_token objects:buf count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v111;
      do
      {
        v57 = 0;
        do
        {
          if (*v111 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&out_token + 1) + 8 * v57);
          v99 = 1;
          v59 = [MCMContainerIdentity containerIdentityWithUserIdentity:v45 identifier:v58 containerConfig:v51 platform:dyld_get_active_platform() userIdentityCache:v47 error:&v99];
          if (v59)
          {
            v93 = 0;
            v60 = [(MCMContainerFactory *)v92 containerForContainerIdentity:v59 createIfNecessary:1 error:&v93];
            v61 = v93;
            v62 = v61;
            if (!v60)
            {
              v99 = [v61 type];
            }
          }

          if (v99 != 1)
          {
            v63 = container_log_handle_for_category();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *v94 = 138543618;
              *&v94[4] = v58;
              v95 = 2048;
              v96 = v99;
              _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "_create_well_known_containers: Failed for bundleID '%{public}@' with error: %llu", v94, 0x16u);
            }
          }

          ++v57;
        }

        while (v55 != v57);
        v55 = [obj countByEnumeratingWithState:&out_token objects:buf count:16];
      }

      while (v55);
    }

    v5 = v84;
    v42 = v85;
    v40 = v88;
    v23 = v89;
    v41 = v86;
    v39 = v87;
LABEL_41:
    v64 = containermanager_copy_global_configuration();
    v65 = [v64 dispositionForContainerClass:13];

    if (v65 == 1)
    {
      v99 = "systemgroup.com.apple.installcoordinationd";
      v100 = "/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.installcoordinationd";
      v101 = 0;
      v66 = sandbox_set_user_state_item_with_persona();
      if (v66)
      {
        v67 = v66;
        v68 = container_log_handle_for_category();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v94 = 136315650;
          *&v94[4] = v99;
          v95 = 2080;
          v96 = v100;
          v97 = 1024;
          v98 = v67;
          _os_log_error_impl(&dword_1DF2C3000, v68, OS_LOG_TYPE_ERROR, "Failed to set systemgroup mapping for identifier %s, path: %s : %d", v94, 0x1Cu);
        }
      }
    }

    goto LABEL_49;
  }

  v69 = container_log_handle_for_category();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v69, OS_LOG_TYPE_ERROR, "_create_well_known_containers: Unable to find user identity!", buf, 2u);
  }

LABEL_49:
  v70 = container_log_handle_for_category();
  if (os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BootSetup", "", buf, 2u);
  }

  LODWORD(out_token) = 0;
  v71 = *MEMORY[0x1E69B1A70];
  v72 = notify_register_dispatch(*MEMORY[0x1E69B1A70], &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_179);
  if (v72)
  {
    v73 = v72;
    v74 = container_log_handle_for_category();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v103 = v71;
      v104 = 1024;
      LODWORD(v105) = v73;
      _os_log_error_impl(&dword_1DF2C3000, v74, OS_LOG_TYPE_ERROR, "notify_register_dispatch for notification %s failed; returned %u\n", buf, 0x12u);
    }
  }

  _containermanagerd_keybagd_notification_callback();
  if (v39)
  {
    v75 = container_log_handle_for_category();
    if (os_signpost_enabled(v75))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v75, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FirstBootCleanup", "", buf, 2u);
    }

    [v23 rebootContainerManagerCleanupWithCompletion:&__block_literal_global_182];
  }

  v76 = container_log_handle_for_category();
  if (os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v76, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BootCleanup", "", buf, 2u);
  }

  [v23 containerManagerCleanupWithCompletion:&__block_literal_global_185];
  objc_autoreleasePoolPop(v41);
  v77 = container_log_handle_for_category();
  v78 = v77;
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v78, OS_SIGNPOST_INTERVAL_END, v40, "StartingUp", "", buf, 2u);
  }

  v79 = *(*(v42 + 56) + 8);
  v80 = *(v79 + 40);
  *(v79 + 40) = 0;

  v81 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *___containermanagerd_start_xpc_block_invoke_3(uint64_t a1, char *name)
{
  v19 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service(name, *(a1 + 32), 1uLL);
  if (!mach_service)
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "unable to start xpc service!", buf, 2u);
    }

    exit(100);
  }

  v4 = mach_service;
  __xpc_connection_set_logging();
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___containermanagerd_start_xpc_block_invoke_149;
  handler[3] = &unk_1E86AFB48;
  v17 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_resume(v4);

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

void _containermanagerd_start_xpc_with_permanent_error(void *a1, uint64_t a2)
{
  v3 = a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___containermanagerd_start_xpc_with_permanent_error_block_invoke;
  v10[3] = &unk_1E86AFC08;
  v10[5] = a2;
  v4 = v3;
  v10[4] = v4;
  v5 = _Block_copy(v10);
  v6 = v5[2](v5, "com.apple.containermanagerd.system");
  v7 = _containermanagerd_start_xpc_with_permanent_error_systemListener;
  _containermanagerd_start_xpc_with_permanent_error_systemListener = v6;

  v8 = v5[2](v5, "com.apple.containermanagerd");
  v9 = _containermanagerd_start_xpc_with_permanent_error_userListener;
  _containermanagerd_start_xpc_with_permanent_error_userListener = v8;

  _containermanagerd_self_destruct(v4);
  dispatch_main();
}

_xpc_connection_s *___containermanagerd_start_xpc_with_permanent_error_block_invoke(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [[MCMError alloc] initWithErrorType:*(a1 + 40)];
  mach_service = xpc_connection_create_mach_service(a2, *(a1 + 32), 1uLL);
  if (mach_service)
  {
    __xpc_connection_set_logging();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___containermanagerd_start_xpc_with_permanent_error_block_invoke_2;
    handler[3] = &unk_1E86AFBB8;
    v9 = *(a1 + 32);
    v10 = v4;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
  }

  v6 = *MEMORY[0x1E69E9840];

  return mach_service;
}

void _containermanagerd_self_destruct(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___containermanagerd_self_destruct_block_invoke;
  v5[3] = &unk_1E86B0E08;
  v6 = v1;
  v2 = _containermanagerd_self_destruct_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_containermanagerd_self_destruct_onceToken, v5);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_self_destruct_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__1060;
  v6[4] = __Block_byref_object_dispose__1061;
  v7 = os_transaction_create();
  v2 = dispatch_time(0, 2000000000);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___containermanagerd_self_destruct_block_invoke_2;
  v5[3] = &unk_1E86AFAD0;
  v5[4] = v6;
  dispatch_after(v2, v3, v5);
  _Block_object_dispose(v6, 8);

  v4 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_self_destruct_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_ERROR, "Exiting when clean.", v6, 2u);
  }

  xpc_transaction_exit_clean();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_start_xpc_with_permanent_error_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  _containermanagerd_listener_handler_for_permanent_error(v3, a2, v4);
}

void _containermanagerd_listener_handler_for_permanent_error(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (MEMORY[0x1E12D4840](v6) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_set_target_queue(v6, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___containermanagerd_listener_handler_for_permanent_error_block_invoke;
    handler[3] = &unk_1E86AFBB8;
    v8 = v6;
    v11 = v8;
    v12 = v7;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_resume(v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_listener_handler_for_permanent_error_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1E12D4840]() != MEMORY[0x1E69E9E98])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = v4;
    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      [v7 libsystemError];
      container_xpc_encode_error();
      xpc_dictionary_set_value(reply, "ReplyErrorExtended", v9);
      uint64 = xpc_dictionary_get_uint64(v6, "Command");
      v27 = 0u;
      v28 = 0u;
      xpc_dictionary_get_audit_token();
      v16 = container_audit_token_copy_codesign_identifier();
      euid = container_audit_token_get_euid();
      memset(buf, 0, 32);
      pid = container_audit_token_get_pid();
      v12 = geteuid();
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [v7 type];
        [v7 type];
        *buf = 67110914;
        *&buf[4] = v12;
        *&buf[8] = 2082;
        *&buf[10] = " EXITING AFTER REPLYING TO:";
        *&buf[18] = 2048;
        *&buf[20] = uint64;
        *&buf[28] = 2080;
        *&buf[30] = v16;
        v19 = 1024;
        v20 = euid;
        v21 = 1024;
        v22 = pid;
        v23 = 2048;
        v24 = v15;
        v25 = 2080;
        error_description = container_get_error_description();
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "[%u]%{public}s command=%llu, client=%s(uid: %u, pid: %d), error=%llu (%s)", buf, 0x46u);
      }

      xpc_connection_send_message(v5, reply);
      xpc_connection_send_barrier(v5, &__block_literal_global_200);
    }

    else
    {
      xpc_connection_cancel(v5);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_connection_handler_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MCMCommandDispatcher);
  v1 = _containermanagerd_connection_handler_dispatcher;
  _containermanagerd_connection_handler_dispatcher = v0;

  v4 = _containermanagerd_connection_handler_dispatcher;
  has_internal_content = os_variant_has_internal_content();
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  if (has_internal_content)
  {
    [v4 registerCommandClass:objc_opt_class()];
  }

  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  if (has_internal_content)
  {
    [v4 registerCommandClass:objc_opt_class()];
  }

  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  [v4 registerCommandClass:objc_opt_class()];
  v3 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_perform_launch_tasks_block_invoke_183()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = container_log_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v0, OS_LOG_TYPE_DEBUG, "containermanagerd cleanup complete", buf, 2u);
  }

  v1 = container_log_handle_for_category();
  if (os_signpost_enabled(v1))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BootCleanup", "", v3, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_perform_launch_tasks_block_invoke_180()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = container_log_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v0, OS_LOG_TYPE_DEBUG, "containermanagerd first boot cleanup complete", buf, 2u);
  }

  v1 = container_log_handle_for_category();
  if (os_signpost_enabled(v1))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FirstBootCleanup", "", v3, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void ___containermanagerd_setup_log_replication_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.containermanagerd.volume-notification", v0);

  v1 = MCMSharedFastWorkloop();
  v2 = containermanager_copy_global_configuration();
  v3 = [v2 defaultUser];
  [v3 UID];
  container_log_replication_prune_for_uid();

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var" isDirectory:1 relativeToURL:0];
  v5 = [[MCMLogReplicator alloc] initWithWorkloop:v1];
  v6 = _containermanagerd_setup_log_replication_logReplicator;
  _containermanagerd_setup_log_replication_logReplicator = v5;

  v7 = [[MCMVolumeChangeMonitor alloc] initWithWorkloop:v10 mountPointURL:v4];
  v8 = gMCMVolumeMonitor;
  gMCMVolumeMonitor = v7;

  [gMCMVolumeMonitor addVolumeChangeObserver:_containermanagerd_setup_log_replication_logReplicator];
  [gMCMVolumeMonitor start];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _containermanagerd_exception_preprocessor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v2 = [v1 reason];
    [v2 UTF8String];
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void sub_1DF302320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF30302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1135(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__1136(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

uint64_t _fix_permissions_on_path(const char *a1, const char *a2, char *a3, int *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = 0;
  memset(&v50, 0, sizeof(v50));
  v45 = 0;
  v44 = 0;
  if (a2)
  {
    v8 = strlen(a2);
    if (strncmp(a1, a2, v8))
    {
      v45 = 62;
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v48 = a1;
        *&v48[8] = 2080;
        v49[0] = a2;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Path [%s] does not have accepted path prefix [%s] when trying to fix permissions", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_44;
    }
  }

  if (lstat(a1, &v50))
  {
    v45 = *__error();
    v11 = strdup(a1);
    v44 = v11;
    v12 = rindex(v11, 47);
    v13 = container_log_handle_for_category();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v12 || v11 == v12)
    {
      if (v14)
      {
        v23 = *__error();
        v24 = __error();
        v25 = strerror(*v24);
        *buf = 136315650;
        *v48 = a1;
        *&v48[8] = 1024;
        LODWORD(v49[0]) = v23;
        WORD2(v49[0]) = 2080;
        *(v49 + 6) = v25;
        v19 = "Failed to stat [%s] when trying to fix permissions, could not recover: (%d) %s";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v14)
    {
      v38 = *__error();
      v39 = __error();
      v40 = strerror(*v39);
      *buf = 136315650;
      *v48 = a1;
      *&v48[8] = 1024;
      LODWORD(v49[0]) = v38;
      WORD2(v49[0]) = 2080;
      *(v49 + 6) = v40;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to stat [%s] when trying to fix permissions, attempting to recover: (%d) %s", buf, 0x1Cu);
    }

    *v12 = 0;
    if (!_fix_permissions_on_path(v11, a2, &v46, &v45))
    {
      v10 = 0;
      goto LABEL_42;
    }

    if (lstat(a1, &v50))
    {
      v15 = *__error();
      v45 = v15;
      if (v15 != 13 && v15 != 1)
      {
        v13 = container_log_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v41 = *__error();
          v42 = __error();
          v43 = strerror(*v42);
          *buf = 136315650;
          *v48 = a1;
          *&v48[8] = 1024;
          LODWORD(v49[0]) = v41;
          WORD2(v49[0]) = 2080;
          *(v49 + 6) = v43;
          _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to stat [%s] when trying to fix permissions, but no longer a permission error: (%d) %s", buf, 0x1Cu);
        }

        v10 = 1;
        goto LABEL_41;
      }

      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315650;
        *v48 = a1;
        *&v48[8] = 1024;
        LODWORD(v49[0]) = v16;
        WORD2(v49[0]) = 2080;
        *(v49 + 6) = v18;
        v19 = "Failed to stat [%s] when trying to fix permissions, gave up: (%d) %s";
LABEL_39:
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v19, buf, 0x1Cu);
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v50.st_flags & 6) == 0)
  {
LABEL_28:
    v27 = v50.st_mode & 0xF000;
    if (v27 == 40960 || v27 == 0x4000)
    {
      v29 = 448;
    }

    else
    {
      v29 = 384;
    }

    if ((v50.st_mode & 0x1C0) == v29)
    {
      v10 = 1;
      goto LABEL_42;
    }

    v30 = v50.st_mode & 0xFE3F;
    v31 = v29 | v30;
    if (!lchmod(a1, v29 | v30))
    {
      v10 = 1;
      v46 = 1;
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v48 = v50.st_mode;
        *&v48[4] = 1024;
        *&v48[6] = v31;
        LOWORD(v49[0]) = 2080;
        *(v49 + 2) = a1;
        _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "lchmod u+rw(x) (0%o → 0%o) on [%s]", buf, 0x18u);
      }

      goto LABEL_41;
    }

    v45 = *__error();
    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    *buf = 136315650;
    *v48 = a1;
    *&v48[8] = 1024;
    LODWORD(v49[0]) = v32;
    WORD2(v49[0]) = 2080;
    *(v49 + 6) = v34;
    v19 = "lchmod() for [%s] failed during permissions repair: (%d) %s";
    goto LABEL_39;
  }

  if (!lchflags(a1, v50.st_flags & 0xFFFFFFF9))
  {
    v46 = 1;
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v48 = a1;
      _os_log_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEFAULT, "Unset UF_IMMUTABLE | UF_APPEND on [%s]", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v45 = *__error();
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315650;
    *v48 = a1;
    *&v48[8] = 1024;
    LODWORD(v49[0]) = v20;
    WORD2(v49[0]) = 2080;
    *(v49 + 6) = v22;
    v19 = "Failed to lchflags [%s]: (%d) %s";
    goto LABEL_39;
  }

LABEL_40:
  v10 = 0;
LABEL_41:

LABEL_42:
  if (v11)
  {
    free(v11);
    memset_s(&v44, 8uLL, 0, 8uLL);
  }

LABEL_44:
  if (a4 && (v10 & 1) == 0)
  {
    *a4 = v45;
  }

  v35 = v10 ^ 1;
  if (!a3)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    *a3 = v46;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1DF30E110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _removefile_error_callback(_removefile_state *a1, const char *a2, _DWORD *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  dst = 0;
  if (!removefile_state_get(a1, 5u, &dst))
  {
    if (dst == 2)
    {
      goto LABEL_15;
    }

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = dst;
      v15 = strerror(dst);
      v27.st_dev = 136315650;
      *&v27.st_mode = a2;
      WORD2(v27.st_ino) = 1024;
      *(&v27.st_ino + 6) = v14;
      HIWORD(v27.st_uid) = 2080;
      *&v27.st_gid = v15;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "removefile hit error for [%s]: (%d) %s", &v27, 0x1Cu);
    }

    if ((v7, dst != 13) && dst != 1 || (v19 = 0, _fix_permissions_on_path(a2, 0, &v19, 0), (v19 & 1) == 0))
    {
LABEL_15:
      result = 0;
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    memset(&v27, 0, sizeof(v27));
    if (lstat(a2, &v27))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315650;
      v22 = a2;
      v23 = 1024;
      v24 = v16;
      v25 = 2080;
      v26 = v18;
      v13 = "lstat of [%s] failed when trying to figure out why unlink failed: (%d) %s";
    }

    else
    {
      if ((v27.st_mode & 0xF000) == 0x4000)
      {
        dst = 35;
        result = 2;
        if (!a3)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      result = unlink(a2);
      if (!result)
      {
        goto LABEL_18;
      }

      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 136315650;
      v22 = a2;
      v23 = 1024;
      v24 = v10;
      v25 = 2080;
      v26 = v12;
      v13 = "unlink of [%s] failed: (%d) %s";
    }

    _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, v13, buf, 0x1Cu);
    goto LABEL_14;
  }

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v27.st_dev = 136315138;
    *&v27.st_mode = a2;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "removefile hit error for [%s] but we failed to get the error number", &v27, 0xCu);
  }

  result = 0;
  dst = 2;
  if (a3)
  {
LABEL_16:
    if (!*a3)
    {
      *a3 = dst;
    }
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __containermanager_copy_default_file_manager_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  gMCMDefaultFileManager = objc_alloc_init(MCMFileManager);
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

void containermanager_set_global_configuration(id obj)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  objc_storeStrong(&_gGlobalConfiguration, obj);
}

void sub_1DF321CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2545(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__2546(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF3270F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF32A23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3288(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__3289(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF32C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DF32FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3962(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__3963(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF330EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DF334698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3348A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF334E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4357(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__4358(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF33630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3367D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3369D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF336CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_1DF337D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3380C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3383C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1DF338B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF338D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF338F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33AAAC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1DF33AAB8);
}

void sub_1DF33E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33F4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33FF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF340474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _moveSystemContainerIntoPlace(void *a1, uint64_t a2, void *a3, void *a4)
{
  v110 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 lastPathComponent];
  v79 = [v7 URLByDeletingLastPathComponent];
  v11 = [v79 URLByAppendingPathExtension:@"failed"];
  v83 = [v11 URLByAppendingPathComponent:v10 isDirectory:1];

  v94 = 1;
  v12 = containermanager_copy_global_configuration();
  v13 = [v12 staticConfig];
  v14 = [v13 configForContainerClass:a2];

  v15 = v14;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v80 = v10;
  v17 = [MCMContainerIdentity containerIdentityWithUserIdentity:v9 identifier:v10 containerConfig:v14 platform:0 userIdentityCache:v16 error:&v94];

  v18 = v17;
  if (v17)
  {
    v19 = [v8 containerFactory];
    v93 = 0;
    v20 = [v19 containerForContainerIdentity:v18 createIfNecessary:1 error:&v93];
    v21 = v93;

    v78 = v20;
    if (v20)
    {
      v22 = [v20 metadataMinimal];
      v23 = +[MCMFileManager defaultManager];
      log = v22;
      v24 = [v22 containerPath];
      v85 = [v24 containerRootURL];

      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [v7 path];
        v67 = v66 = v18;
        [v85 path];
        v69 = v68 = v15;
        *buf = 138412802;
        v98 = v80;
        v99 = 2112;
        v100 = v67;
        v101 = 2112;
        v102 = v69;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Restoring container for %@ at %@ to %@", buf, 0x20u);

        v15 = v68;
        v18 = v66;
      }

      v92 = 0;
      v26 = [v23 urlsForItemsInDirectoryAtURL:v7 error:&v92];
      v27 = v92;
      v76 = v26;
      if (v26 && !v21)
      {
        v73 = v9;
        v74 = v8;
        v75 = v7;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        obj = v26;
        v86 = [obj countByEnumeratingWithState:&v106 objects:v105 count:16];
        v71 = v18;
        v72 = v15;
        if (!v86)
        {
          v28 = v27;
          goto LABEL_39;
        }

        v84 = *v107;
        v82 = v23;
        v28 = v27;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
        while (1)
        {
          for (i = 0; i != v86; ++i)
          {
            if (*v107 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v106 + 1) + 8 * i);
            v32 = [v31 lastPathComponent];
            v33 = [v85 URLByAppendingPathComponent:v32 isDirectory:0];
            v91 = v28;
            v34 = [v23 removeItemAtURL:v33 error:&v91];
            v35 = v91;

            v87 = v33;
            if (v34)
            {
              v36 = [p_superclass + 409 defaultManager];
              v90 = v35;
              v37 = [v36 moveItemAtURL:v31 toURL:v33 error:&v90];
              v28 = v90;

              if (v37)
              {
                goto LABEL_28;
              }

              v38 = container_log_handle_for_category();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = [v31 path];
                v40 = [v87 path];
                *buf = 138413058;
                v98 = v80;
                v99 = 2112;
                v100 = v39;
                v101 = 2112;
                v102 = v40;
                v103 = 2112;
                v104 = v28;
                _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to move file in restored system container %@:%@ to destination %@: %@", buf, 0x2Au);
              }
            }

            else
            {
              v38 = container_log_handle_for_category();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v98 = v80;
                v99 = 2112;
                v100 = v87;
                v101 = 2112;
                v102 = v35;
                _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to remove destination %@:%@: %@", buf, 0x20u);
              }

              v28 = v35;
            }

            v88 = v31;
            v41 = v83;
            v42 = v32;
            v43 = [p_superclass + 409 defaultManager];
            v96 = 0;
            v44 = [v43 createDirectoryAtURL:v41 withIntermediateDirectories:1 mode:511 error:&v96];
            v45 = v96;

            if ((v44 & 1) == 0)
            {
              v46 = container_log_handle_for_category();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v98 = v83;
                v99 = 2112;
                v100 = v45;
                _os_log_error_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_ERROR, "Failed to create %@: %@", buf, 0x16u);
              }
            }

            v47 = v32;
            v48 = v28;
            v49 = [v41 URLByAppendingPathComponent:v42 isDirectory:0];
            v50 = [p_superclass + 409 defaultManager];
            v95 = v45;
            v51 = [v50 moveItemAtURL:v88 toURL:v49 error:&v95];
            v52 = v95;

            if ((v51 & 1) == 0)
            {
              v53 = container_log_handle_for_category();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v98 = v88;
                v99 = 2112;
                v100 = v49;
                v101 = 2112;
                v102 = v52;
                _os_log_error_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: %@", buf, 0x20u);
              }
            }

            v23 = v82;
            v21 = 0;
            v28 = v48;
            p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
            v32 = v47;
LABEL_28:
          }

          v86 = [obj countByEnumeratingWithState:&v106 objects:v105 count:16];
          if (!v86)
          {
LABEL_39:
            v27 = v28;

            v56 = objc_alloc_init(MCMResultPromise);
            v59 = [MCMCommandProcessRestoredContainer alloc];
            v60 = [log containerIdentity];
            v8 = v74;
            v61 = [(MCMCommandProcessRestoredContainer *)v59 initWithConcreteContainerIdentity:v60 context:v74 resultPromise:v56];

            [(MCMCommandProcessRestoredContainer *)v61 execute];
            v62 = [(MCMResultPromise *)v56 result];
            v63 = [v62 error];

            v7 = v75;
            v9 = v73;
            if (v63)
            {
              v64 = container_log_handle_for_category();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v89 = [(MCMResultPromise *)v56 result];
                v70 = [v89 error];
                *buf = 138412546;
                v98 = v80;
                v99 = 2112;
                v100 = v70;
                _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "Error processing restored system container %@: %@", buf, 0x16u);
              }
            }

            v18 = v71;
            v15 = v72;
            goto LABEL_44;
          }
        }
      }

      v56 = container_log_handle_for_category();
      if (os_log_type_enabled(&v56->super, OS_LOG_TYPE_ERROR))
      {
        [v7 path];
        v58 = v57 = v18;
        *buf = 138412802;
        v98 = v80;
        v99 = 2112;
        v100 = v58;
        v101 = 2112;
        v102 = v27;
        _os_log_error_impl(&dword_1DF2C3000, &v56->super, OS_LOG_TYPE_ERROR, "Failed to enumerate contents of restored system container %@ at %@: %@", buf, 0x20u);

        v18 = v57;
      }

LABEL_44:
    }

    else
    {
      log = container_log_handle_for_category();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v98 = v80;
        v99 = 2112;
        v100 = v21;
        _os_log_error_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_ERROR, "Failed to create system container %@: %@", buf, 0x16u);
      }
    }

    v55 = v79;
  }

  else
  {
    v54 = container_log_handle_for_category();
    v78 = v54;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v98 = v10;
      v99 = 2048;
      v100 = v94;
      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to create container identity %@: %llu", buf, 0x16u);
    }

    v21 = 0;
    v55 = v79;
  }

  v65 = *MEMORY[0x1E69E9840];
}

void sub_1DF343AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5095(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__5096(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF34474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF346600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5365(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__5366(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void *_MCMVolumeChangeMonitorCallback(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *MEMORY[0x1E69E9840];

    return [a1 _callbackWithVolume:a2 notificationType:a3 margs:a4];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  return a1;
}

uint64_t __Block_byref_object_copy__7315(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__7316(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__7847(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__7848(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void __MCMContainerSchemaDefinitionForClass_block_invoke()
{
  v85[1] = *MEMORY[0x1E69E9840];
  v83 = @"script";
  v54 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v81[0] = v54;
  v51 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v81[1] = v51;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v82[0] = v48;
  v45 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v80[0] = v45;
  v43 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v80[1] = v43;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v82[1] = v41;
  v39 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v79[0] = v39;
  v37 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v79[1] = v37;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v82[2] = v36;
  v35 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v78[0] = v35;
  v34 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Documents"];
  v78[1] = v34;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v82[3] = v0;
  v1 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v77[0] = v1;
  v2 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"SystemData"];
  v77[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v82[4] = v3;
  v4 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v76[0] = v4;
  v5 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"tmp"];
  v76[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v82[5] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:6];
  v84 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v85[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
  v10 = MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition = v9;

  v73 = @"script";
  v55 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v71[0] = v55;
  v52 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v71[1] = v52;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v72[0] = v49;
  v46 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v70[0] = v46;
  v44 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v70[1] = v44;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  v72[1] = v42;
  v40 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v69[0] = v40;
  v38 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v69[1] = v38;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  v72[2] = v11;
  v12 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v68[0] = v12;
  v13 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Documents"];
  v68[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v72[3] = v14;
  v15 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v67[0] = v15;
  v16 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"tmp"];
  v67[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v72[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:5];
  v74 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v75 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v21 = MCMContainerSchemaDefinitionForClass_systemSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_systemSchemaDefinition = v20;

  v64 = @"script";
  v56 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v62[0] = v56;
  v53 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v62[1] = v53;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v63[0] = v50;
  v47 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v61[0] = v47;
  v22 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v61[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v63[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v65 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v66[0] = v25;
  v59 = @"script";
  v26 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v57[0] = v26;
  v27 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v57[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v58 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v60 = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v66[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v32 = MCMContainerSchemaDefinitionForClass_groupSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_groupSchemaDefinition = v31;

  v33 = *MEMORY[0x1E69E9840];
}

id MCMSharedBackgroundQueue()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMSharedBackgroundQueue_onceToken != -1)
  {
    dispatch_once(&MCMSharedBackgroundQueue_onceToken, &__block_literal_global_8631);
  }

  v0 = MCMSharedBackgroundQueue_queue;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __MCMSharedBackgroundQueue_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.containermanagerd.background", attr);
  v2 = MCMSharedBackgroundQueue_queue;
  MCMSharedBackgroundQueue_queue = v1;

  v3 = *MEMORY[0x1E69E9840];
}

id MCMSharedDeathrowQueue()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMSharedDeathrowQueue_onceToken != -1)
  {
    dispatch_once(&MCMSharedDeathrowQueue_onceToken, &__block_literal_global_3);
  }

  v0 = MCMSharedDeathrowQueue_queue;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __MCMSharedDeathrowQueue_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.deathrow", v3);
  v1 = MCMSharedDeathrowQueue_queue;
  MCMSharedDeathrowQueue_queue = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id MCMSharedFastWorkloop()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMSharedFastWorkloop_onceToken != -1)
  {
    dispatch_once(&MCMSharedFastWorkloop_onceToken, &__block_literal_global_6);
  }

  v0 = MCMSharedFastWorkloop_fastWorkloop;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t __MCMSharedFastWorkloop_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  MCMSharedFastWorkloop_fastWorkloop = dispatch_workloop_create("com.apple.containermanagerd.fast");
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

id MCMSharedSlowWorkloop()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMSharedSlowWorkloop_onceToken != -1)
  {
    dispatch_once(&MCMSharedSlowWorkloop_onceToken, &__block_literal_global_9);
  }

  v0 = MCMSharedSlowWorkloop_slowWorkloop;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t __MCMSharedSlowWorkloop_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  MCMSharedSlowWorkloop_slowWorkloop = dispatch_workloop_create("com.apple.containermanagerd.slow");
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

id MCMDataProtectionQueue()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MCMDataProtectionQueue_onceToken != -1)
  {
    dispatch_once(&MCMDataProtectionQueue_onceToken, &__block_literal_global_12);
  }

  v0 = MCMDataProtectionQueue_dataProtQueue;
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __MCMDataProtectionQueue_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.dataprot", v3);
  v1 = MCMDataProtectionQueue_dataProtQueue;
  MCMDataProtectionQueue_dataProtQueue = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __MCMLockStateQueue_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.lockstate", v3);
  v1 = MCMLockStateQueue_lockStateQueue;
  MCMLockStateQueue_lockStateQueue = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1DF3628CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9003(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__9004(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF364A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9195(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__9196(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

id MCMValidateObject(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1DF36801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3689C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, char a24)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9329(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__9330(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

uint64_t MCMPersonasAreSupported()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MCMPersonasAreSupported_onceToken != -1)
  {
    dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
  }

  result = MCMPersonasAreSupported_staticPersonasSupported;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void *__MCMPersonasAreSupported_block_invoke()
{
  v53 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  multiuser_flags.val[0] = 0;
  v1 = MEMORY[0x1E12D3930]();
  multiuser_config_flags = host_get_multiuser_config_flags(v1, multiuser_flags.val);
  v3 = multiuser_flags.val[0];
  v4 = os_variant_uses_ephemeral_storage();
  is_system_session = xpc_is_system_session();
  v6 = MGGetBoolAnswer();
  v7 = v6;
  if (multiuser_config_flags)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 < 0;
  }

  v9 = !v8;
  v10 = !v8 && v0 != 0;
  MCMPersonasAreSupported_staticPersonasSupported = v10 & (v4 ^ 1) & (v6 ^ 1) & (is_system_session ^ 1);
  memset(&v52, 0, sizeof(v52));
  container_codesign_get_self_audit_token();
  __s = 0;
  vproc_swap_string();
  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (MCMPersonasAreSupported_staticPersonasSupported)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v13 = "!hasUserManager ";
    if (v0)
    {
      v13 = "";
    }

    v26 = v13;
    v27 = v12;
    if (v9)
    {
      v14 = "";
    }

    else
    {
      v14 = "configuredForMultiUser ";
    }

    if (v7)
    {
      v15 = "inDiagnosticsMode ";
    }

    else
    {
      v15 = "";
    }

    if (v4)
    {
      v16 = "usesEphemeralStorage ";
    }

    else
    {
      v16 = "";
    }

    v17 = "isSystemSession";
    if ((is_system_session & 1) == 0)
    {
      v17 = "";
    }

    v25 = v17;
    v18 = getpid();
    v19 = getuid();
    multiuser_flags = v52;
    v20 = audit_token_to_pid(&multiuser_flags);
    multiuser_flags = v52;
    v21 = audit_token_to_auid(&multiuser_flags);
    multiuser_flags = v52;
    v22 = audit_token_to_asid(&multiuser_flags);
    multiuser_flags.val[0] = 136318466;
    *&multiuser_flags.val[1] = v27;
    LOWORD(multiuser_flags.val[3]) = 2080;
    *(&multiuser_flags.val[3] + 2) = v26;
    HIWORD(multiuser_flags.val[5]) = 2080;
    *&multiuser_flags.val[6] = v14;
    v30 = 2080;
    v31 = v15;
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = "";
    v36 = 2080;
    v37 = "";
    v38 = 2080;
    v39 = v25;
    v40 = 1024;
    v41 = v18;
    v42 = 1024;
    v43 = v19;
    v44 = 1024;
    v45 = v20;
    v46 = 1024;
    v47 = v21;
    v48 = 1024;
    v49 = v22;
    v50 = 2082;
    v51 = __s;
    _os_log_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEFAULT, "Personas are supported (static): %s (%s%s%s%s%s%s%s) {pid: %d, uid: %u, apid: %d, auid: %u, asid: %d, session: %{public}s}", &multiuser_flags, 0x7Au);
  }

  result = __s;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__9797(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__9798(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void __MCMProcessXPCEvent_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v2 = objc_opt_new();
  v3 = [[MCMClientFactory alloc] initWithUserIdentityCache:*(a1 + 32) clientCodeSignInfoCache:v6 clientIdentityCache:v2];
  v4 = MCMProcessXPCEvent_clientFactory;
  MCMProcessXPCEvent_clientFactory = v3;

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__10026(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__10027(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF370020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11821(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__11822(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF380200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3848FC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1DF384920);
  }

  JUMPOUT(0x1DF384938);
}

void sub_1DF385A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12529(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__12530(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF38B748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id (*a20)(uint64_t a1), void *a21, id a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id (*a32)(uint64_t a1), void *a33, void *a34)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v36 = objc_begin_catch(exception_object);
      a30 = MEMORY[0x1E69E9820];
      a31 = 3221225472;
      a32 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232;
      a33 = &unk_1E86B0B98;
      v37 = v36;
      a34 = v37;
      v38 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232(&a30);

      v39 = containermanager_copy_global_configuration();
      v40 = [v39 isInternalImage];

      if (v40)
      {
        MCMCrashOnException(v37);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
      v38 = v35;
    }

    a23 = v38;
    v41 = [v34 _sqliteExec:@"ROLLBACK;" error:&a23];
    v42 = a23;

    if ((v41 & 1) == 0)
    {
      a18 = MEMORY[0x1E69E9820];
      a19 = 3221225472;
      a20 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238;
      a21 = &unk_1E86B0B98;
      a22 = v42;
      __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238(&a18);
      objc_claimAutoreleasedReturnValue();
      JUMPOUT(0x1DF38B6ACLL);
    }

    JUMPOUT(0x1DF38B6B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF38D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id (*a24)(uint64_t a1), void *a25, void *a26)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      a22 = MEMORY[0x1E69E9820];
      a23 = 3221225472;
      a24 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183;
      a25 = &unk_1E86B0B98;
      v28 = v27;
      a26 = v28;
      __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183(&a22);
      objc_claimAutoreleasedReturnValue();

      v29 = containermanager_copy_global_configuration();
      v30 = [v29 isInternalImage];

      if (v30)
      {
        MCMCrashOnException(v28);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1DF38D0CCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF3949A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12874(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__12875(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF396CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF39BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF39DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13434(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__13435(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF39DED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF39E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void __MCMRunTransactionalTask_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 32) + 16))();
  v1 = *MEMORY[0x1E69E9840];

  JUMPOUT(0x1E12D4890);
}

void __MCMRunTransactionalTaskWithDelay_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 32) + 16))();
  v1 = *MEMORY[0x1E69E9840];

  JUMPOUT(0x1E12D4890);
}

void MCMCrashOnException(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 name];

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD60]) initWithString:@"** INTERNAL ERROR: Uncaught Exception **\n"];
  [v4 appendString:@"Exception: "];
  if (v3)
  {
    [v4 appendString:@"<"];
    [v4 appendString:v3];
    [v4 appendString:@"> "];
  }

  v5 = [v1 name];

  if (v5)
  {
    v6 = [v1 name];
    [v4 appendString:v6];

    [v4 appendString:@": "];
  }

  v7 = [v1 reason];

  if (v7)
  {
    v8 = [v1 reason];
    [v4 appendString:v8];
  }

  [v4 appendString:@"\nStack:\n"];
  v9 = [v1 callStackSymbols];
  v10 = [v9 componentsJoinedByString:@"\n"];
  [v4 appendString:v10];

  if (MCMCrashOnException_onceToken != -1)
  {
    dispatch_once(&MCMCrashOnException_onceToken, &__block_literal_global_13696);
  }

  pthread_mutex_lock(&MCMCrashOnException_crashLock);
  if (v4)
  {
    qword_1ECE34358 = strdup([v4 UTF8String]);
  }

  abort();
}

uint64_t __MCMCrashOnException_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return pthread_mutex_init(&MCMCrashOnException_crashLock, 0);
}

uint64_t __Block_byref_object_copy__14291(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__14292(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF3AB424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14647(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__14648(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void sub_1DF3AEFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14908(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __Block_byref_object_dispose__14909(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
}

void __conmanupcall_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  sp = 0;
  v2 = bootstrap_check_in(*MEMORY[0x1E69E99F8], "com.apple.containermanagerd.upcall", &sp);
  if (v2)
  {
    v3 = v2;
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 136315138;
      v15 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "bootstrap_check_in: %s", buf, 0xCu);
    }
  }

  else
  {
    gMCMKernMessageProcessorClass = a1[6];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = a1[4];
    if (v6)
    {
      v7 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.upcall", v4, v6);
    }

    else
    {
      v7 = dispatch_queue_create("com.apple.containermanagerd.upcall", v4);
    }

    v8 = conmanupcall_upcallQueue;
    conmanupcall_upcallQueue = v7;

    v9 = dispatch_mach_create();
    v10 = conmanupcall_channel;
    conmanupcall_channel = v9;

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Starting kernel upcall mach channel", buf, 2u);
    }

    dispatch_mach_connect();
    *(*(a1[5] + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void (*container_manager_kern_server_routine(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 322514900)
  {
    result = _Xget_process_containers;
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sb_packbuff_free_cold_1(uint64_t *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_1DF2C3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed: vm_deallocate(%p, %zu)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}