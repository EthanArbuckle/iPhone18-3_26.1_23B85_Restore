void sub_224D57F20(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_224DAF838();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_224DAF918();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_224DAF838();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v46 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v43 = v4;
    while (1)
    {
      v14 = MEMORY[0x22AA5DCC0](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = *(v6 + 40);
      v18 = sub_224DAF698();
      v19 = -1 << *(v6 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v12 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        a4(0);
        while (1)
        {
          v25 = *(*(v6 + 48) + 8 * v20);
          v26 = sub_224DAF6A8();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v12 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v8 = v46;
            v4 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v46;
        v4 = v43;
        if (v13 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v21) = v23 | v22;
        *(*(v6 + 48) + 8 * v20) = v16;
        v27 = *(v6 + 16);
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v28;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v6 + 40);
      v31 = *(v4 + 32 + 8 * v29);
      v32 = sub_224DAF698();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v12 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        a4(0);
        while (1)
        {
          v39 = *(*(v6 + 48) + 8 * v34);
          v40 = sub_224DAF6A8();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v12 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v35) = v37 | v36;
        *(*(v6 + 48) + 8 * v34) = v31;
        v41 = *(v6 + 16);
        v15 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_224D5823C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CE0, &qword_224DC1B68);
    v3 = sub_224DAF918();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_224DAEE18();
      sub_224DAFE68();
      v29 = v7;
      sub_224DAEE78();
      v9 = sub_224DAFEA8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_224DAEE18();
        v20 = v19;
        if (v18 == sub_224DAEE18() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_224DAFD88();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_224D58430(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x28223BE20](a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_224B449EC(sub_224D5C320, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_224B05554(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_224D585D8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = &v27;
    v28 = v5;
    MEMORY[0x28223BE20](v7);
    v29 = &v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v6);
    v30 = 0;
    v31 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v33[0] = *(*(v31 + 48) + 8 * v17);
      MEMORY[0x28223BE20](v8);
      *(&v27 - 2) = v33;
      v19 = v18;
      v20 = sub_224B449EC(sub_224D5C320, (&v27 - 4), v32);

      if (v20)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_224B05554(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_224D562BC(v25, v5, v2, v26);

  MEMORY[0x22AA5EED0](v25, -1, -1);
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_224D58898(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_224D585D8(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];

  sub_224DAF7E8();
  v4 = sub_224DAF878();
  if (v4)
  {
    v5 = v4;
    sub_224DAF538();
    v6 = v5;
    do
    {
      v23 = v6;
      v7 = swift_dynamicCast();
      v23 = v24;
      MEMORY[0x28223BE20](v7);
      v22[2] = &v23;
      v8 = sub_224B449EC(sub_224D5C320, v22, a2);
      v9 = v24;
      if (v8)
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_224ADEE2C(v10 + 1);
        }

        v3 = v25;
        v11 = *(v25 + 40);
        result = sub_224DAF698();
        v13 = v3 + 56;
        v14 = -1 << *(v3 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v13 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v3 + 48) + 8 * v17) = v9;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_224DAF878();
    }

    while (v6);
  }

  return v3;
}

void sub_224D58AEC(uint64_t a1, void (*a2)(void))
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365168);

  v5 = sub_224DAB228();
  v6 = sub_224DAF278();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    buf = v7;
    *v7 = 136446210;
    v8 = *(a1 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v23 = v6;
      v27 = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v8, 0);
      v9 = v27;
      v10 = a1 + 32;
      do
      {
        sub_224A3317C(v10, v26);
        __swift_project_boxed_opaque_existential_1(v26, v26[3]);
        v11 = sub_224DAE338();
        v12 = [v11 description];
        v13 = sub_224DAEE18();
        v15 = v14;

        __swift_destroy_boxed_opaque_existential_1(v26);
        v27 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_224A3DFD8((v16 > 1), v17 + 1, 1);
          v9 = v27;
        }

        *(v9 + 16) = v17 + 1;
        v18 = v9 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v10 += 40;
        --v8;
      }

      while (v8);
      v6 = v23;
    }

    v26[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v19 = sub_224DAEDA8();
    v21 = v20;

    v22 = sub_224A33F74(v19, v21, &v28);

    *(buf + 4) = v22;
    _os_log_impl(&dword_224A2F000, v5, v6, "[ReloadConfigurationRecommendations] Ignoring request (unsupported platform) for reload of configuration recommendations for extensions: %{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](buf, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_224D58DD8(uint64_t a1, int a2, uint64_t a3, unint64_t a4, char *a5, uint64_t *a6, uint64_t a7)
{
  v94 = a3;
  v92 = a2;
  v12 = sub_224DAB7B8();
  isa = v12[-1].isa;
  v14 = *(isa + 8);
  MEMORY[0x28223BE20](v12);
  v89 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DAB848();
  v88 = *(isUniquelyReferenced_nonNull_native - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v87 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v95 = a5;
  sub_224A3796C(&a5[v20], &aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v101)
  {
    sub_224A364AC(a6);
    sub_224A3311C(&aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    v28 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_224DAEE18();
    *(inited + 40) = v29;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000224DCFE80;
    v30 = sub_224D9FE14(inited);
    swift_setDeallocating();
    sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
    LOBYTE(aBlock) = 17;
    sub_224B67B98();
    sub_224B67BEC();
    v31 = a6;
    sub_224B67C40();
    v32 = sub_224DA93D8();
    sub_224D9F01C(v30);

    v33 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v34 = sub_224DAEDE8();
    v35 = sub_224DAECC8();

    v36 = [v33 initWithDomain:v34 code:v32 userInfo:v35];

    v37 = sub_224DA1CC8(MEMORY[0x277D84F90]);
    v38 = v36;
    sub_224D4C788(v37, v36, v31);

    return;
  }

  v85 = isa;
  sub_224A36F98(&aBlock, &v104);
  sub_224A364AC(a6);
  if (qword_281351708 != -1)
  {
LABEL_44:
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365168);

  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v90 = v19;
  v83[1] = a7;
  v83[0] = a6;
  v86 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&aBlock = v26;
    *v25 = 134349314;
    *(v25 + 4) = *(a1 + 16);

    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_224A33F74(v94, a4, &aBlock);
    _os_log_impl(&dword_224A2F000, v22, v23, "Fetching descriptors for %{public}ld extensions with reason: %{public}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  else
  {
  }

  v84 = isUniquelyReferenced_nonNull_native;
  v12 = dispatch_group_create();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D84F98];
  v93 = v39;
  *(v39 + 16) = MEMORY[0x277D84F98];
  a6 = (v39 + 16);
  v96 = swift_allocObject();
  *(v96 + 16) = v40;
  a7 = *(a1 + 16);
  if (!a7)
  {
LABEL_40:
    v73 = MEMORY[0x277D84F90];
    v74 = v95;
    v75 = *&v95[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v76 = swift_allocObject();
    v77 = v96;
    v76[2] = v74;
    v76[3] = v77;
    v76[4] = v93;
    v76[5] = sub_224D5BF20;
    v76[6] = v90;
    v102 = sub_224D5C2B8;
    v103 = v76;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v100 = sub_224A39F40;
    v101 = &block_descriptor_209;
    v78 = _Block_copy(&aBlock);

    v79 = v74;

    v80 = v87;
    sub_224DAB7E8();
    v98 = v73;
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v81 = v89;
    v82 = v86;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v78);

    (*(v85 + 1))(v81, v82);
    (*(v88 + 8))(v80, v84);

    __swift_destroy_boxed_opaque_existential_1(&v104);

    return;
  }

  a1 += 32;
  v91 = a4;
  while (1)
  {
    sub_224A3317C(a1, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v101);
    v44 = sub_224DAE338();
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    if ((sub_224DAD5D8() & 1) == 0)
    {
      dispatch_group_enter(v12);
      v41 = swift_allocObject();
      v41[2] = v93;
      v41[3] = v44;
      v41[4] = v96;
      v41[5] = v12;

      v42 = v44;
      v43 = v12;
      sub_224A365A0(&aBlock, v92 & 1, v94, a4, sub_224D5C2B0, v41);

      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v104, v105);
    sub_224DAD5A8();
    v45 = sub_224DACF78();

    if (*(v45 + 16))
    {
      v46 = sub_224A3E7EC(v44);
      if (v47)
      {
        v48 = *(*(v45 + 56) + 8 * v46);
      }
    }

    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v49 = sub_224DAD5F8();
    if (*(v49 + 16) && (v50 = sub_224A3E7EC(v44), (v51 & 1) != 0))
    {
      a4 = *(*(v49 + 56) + 8 * v50);
    }

    else
    {
      a4 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v52 = sub_224DAD608();
    if (*(v52 + 16) && (v53 = sub_224A3E7EC(v44), (v54 & 1) != 0))
    {
      isUniquelyReferenced_nonNull_native = *(*(v52 + 56) + 8 * v53);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    sub_224DAE9F8();
    v55 = v44;
    v19 = sub_224DAE9B8();
    swift_beginAccess();
    v56 = *a6;
    if ((*a6 & 0xC000000000000001) != 0)
    {
      if (v56 < 0)
      {
        v57 = *a6;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFFFFFFFF8;
      }

      v58 = sub_224DAF838();
      if (__OFADD__(v58, 1))
      {
        goto LABEL_42;
      }

      *a6 = sub_224D2CDB4(v57, v58 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *a6;
    v59 = v97;
    *a6 = 0x8000000000000000;
    v61 = sub_224A3E7EC(v55);
    v62 = v59[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    a4 = v60;
    if (v59[3] >= v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B27EA4();
      }

      goto LABEL_35;
    }

    sub_224B13F9C(v64, isUniquelyReferenced_nonNull_native);
    v65 = sub_224A3E7EC(v55);
    if ((a4 & 1) != (v66 & 1))
    {
      break;
    }

    v61 = v65;
LABEL_35:
    v67 = v97;
    if (a4)
    {
      v68 = v97[7];
      v69 = *(v68 + 8 * v61);
      *(v68 + 8 * v61) = v19;
    }

    else
    {
      v97[(v61 >> 6) + 8] |= 1 << v61;
      *(v67[6] + 8 * v61) = v55;
      *(v67[7] + 8 * v61) = v19;
      v70 = v67[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_43;
      }

      v67[2] = v72;
    }

    *a6 = v67;
    swift_endAccess();

    a4 = v91;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    a1 += 40;
    if (!--a7)
    {
      goto LABEL_40;
    }
  }

  sub_224DAF538();
  sub_224A3D418(v83[0]);
  sub_224DAFDD8();
  __break(1u);
}

id sub_224D599BC(void *a1, void *a2)
{
  v3 = [a1 nativeContainerBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_224DAEE18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = sub_224DAE348();
  if (v7)
  {
    if (v5 == v9 && v7 == v10)
    {

LABEL_17:

      return a1;
    }

    v12 = sub_224DAFD88();

    if (v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281365168);
  sub_224A3317C(a2, v39);
  v14 = a1;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136446722;
    v19 = [v14 extensionBundleIdentifier];
    v20 = sub_224DAEE18();
    v22 = v21;

    v23 = sub_224A33F74(v20, v22, &v38);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v24 = [v14 kind];
    v25 = sub_224DAEE18();
    v27 = v26;

    v28 = sub_224A33F74(v25, v27, &v38);

    *(v17 + 14) = v28;
    *(v17 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v29 = sub_224DAE348();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v32 = sub_224A33F74(v29, v31, &v38);

    *(v17 + 24) = v32;
    _os_log_impl(&dword_224A2F000, v15, v16, "Migrating descriptor nativeContainerBundleIdentifier: %{public}s:%{public}s to %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v18, -1, -1);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  [v14 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
  swift_dynamicCast();
  v34 = v38;
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_224DAE348();
  v36 = sub_224DAEDE8();

  [v34 setNativeContainerBundleIdentifier_];

  [v34 copy];
  sub_224DAF758();

  swift_unknownObjectRelease();
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  swift_dynamicCast();
  return v38;
}

unint64_t sub_224D59E14(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v12 = MEMORY[0x277D84F90];
  v3 = a1;
  result = sub_224DAE9C8();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    sub_224DAE9F8();
    sub_224DAE9E8();
    sub_224DAE9D8();
    v11 = sub_224DAE9B8();

    return v11;
  }

  result = sub_224DAF838();
  v6 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA5DCC0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      sub_224D599BC(v8, a2);
      MEMORY[0x22AA5D350]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_224D59FB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v17 = *(a1 + 16);
  v8 = [v17 extensionIdentity];
  v9 = sub_224DAF518();

  if (v9)
  {
    v10 = v17;
  }

  else
  {
    [v17 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v11 = v18;
    v12 = [v18 extensionIdentity];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_224DAE328();
    sub_224DA9FF8();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A838C0(v7, v12 + v15, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();

    v16 = *(a1 + 16);
    *(a1 + 16) = v11;

    *(a1 + 24) = 1;
  }
}

void sub_224D5A1FC(uint64_t a1)
{
  v17 = *(a1 + 16);
  v2 = [v17 intentRecommendationsContainer];
  if (v2 && (v3 = v2, v4 = [v2 _didAdjustRecommendationCount], v3, (v4 & 1) != 0) || objc_msgSend(v17, sel__didMigrateToRecommendationsContainer))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365168);
    v6 = v17;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      v11 = [v6 extensionBundleIdentifier];
      v12 = sub_224DAEE18();
      v14 = v13;

      v15 = sub_224A33F74(v12, v14, &v19);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_224A2F000, v7, v8, "Cached descriptor for %{public}s needed intent recommendation updating - resaving.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    [v6 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();

    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v16 = *(a1 + 16);
    *(a1 + 16) = v18;

    *(a1 + 24) = 1;
  }

  else
  {
  }
}

void sub_224D5A488(uint64_t a1, void *a2)
{
  v43 = *(a1 + 16);
  v4 = [v43 sdkVersion];
  v5 = sub_224DAEE18();
  v7 = v6;

  v8 = *MEMORY[0x277CFA1C0];
  if (v5 == sub_224DAEE18() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_224DAFD88();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = sub_224DAE248();
  v15 = v14;
  if (v13 == sub_224DAEE18() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_224DAFD88();

    if (v18)
    {
LABEL_13:

      return;
    }

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281365168);
    sub_224A3317C(a2, v45);
    v20 = v43;
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136446722;
      v25 = [v20 extensionBundleIdentifier];
      v26 = sub_224DAEE18();
      v28 = v27;

      v29 = sub_224A33F74(v26, v28, &v44);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2082;
      v30 = [v20 kind];
      v31 = sub_224DAEE18();
      v33 = v32;

      v34 = sub_224A33F74(v31, v33, &v44);

      *(v23 + 14) = v34;
      *(v23 + 22) = 2082;
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      v35 = sub_224DAE248();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1(v45);
      v38 = sub_224A33F74(v35, v37, &v44);

      *(v23 + 24) = v38;
      _os_log_impl(&dword_224A2F000, v21, v22, "Migrating descriptor sdkVersion: %{public}s:%{public}s to %{public}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    [v20 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v39 = v44;
    v40 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_224DAE248();
    v41 = sub_224DAEDE8();

    [v39 setSdkVersion_];

    v42 = *(a1 + 16);
    *(a1 + 16) = v39;

    *(a1 + 24) = 1;
  }
}

void sub_224D5A938(uint64_t a1, void *a2)
{
  v25 = *(a1 + 16);
  if ([v25 platform] || (v4 = a2[4], __swift_project_boxed_opaque_existential_1(a2, a2[3]), !sub_224DAE3A8()))
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365168);
    sub_224A3317C(a2, v27);
    v6 = v25;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136446722;
      v11 = [v6 extensionBundleIdentifier];
      v12 = sub_224DAEE18();
      v14 = v13;

      v15 = sub_224A33F74(v12, v14, &v26);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2082;
      v16 = [v6 kind];
      v17 = sub_224DAEE18();
      v19 = v18;

      v20 = sub_224A33F74(v17, v19, &v26);

      *(v9 + 14) = v20;
      *(v9 + 22) = 2050;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v21 = sub_224DAE3A8();
      __swift_destroy_boxed_opaque_existential_1(v27);
      *(v9 + 24) = v21;
      _os_log_impl(&dword_224A2F000, v7, v8, "Migrating descriptor platform: %{public}s:%{public}s to %{public}lu", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    [v6 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    v22 = v26;
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    [v22 setPlatform_];

    v24 = *(a1 + 16);
    *(a1 + 16) = v22;

    *(a1 + 24) = 1;
  }
}

void sub_224D5AC9C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 16) nativeContainerBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_224DAEE18();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = sub_224DAE348();
  if (!v8)
  {

    goto LABEL_12;
  }

  if (v6 != v10 || v8 != v11)
  {
    v13 = sub_224DAFD88();

    if (v13)
    {
      return;
    }

LABEL_12:
    v14 = *(a1 + 16);
    v15 = sub_224D599BC(v14, a2);

    v16 = *(a1 + 16);
    *(a1 + 16) = v15;

    *(a1 + 24) = 1;
    return;
  }
}

void sub_224D5ADE8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = *(a1 + 16);
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = v8;
  sub_224DAE308();
  v11 = sub_224DAE918();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {

    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
  }

  else
  {
    v13 = sub_224DAE8F8();
    (*(v12 + 8))(v7, v11);
    if ([v10 requestedDataProtection] == v13)
    {
    }

    else
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v14 = sub_224DAB258();
      __swift_project_value_buffer(v14, qword_281365168);
      v15 = v10;
      v16 = sub_224DAB228();
      v17 = sub_224DAF2A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v18 = 138543874;
        v20 = [v15 extensionIdentity];
        *(v18 + 4) = v20;
        *v19 = v20;
        *(v18 + 12) = 2082;
        v21 = [v15 kind];
        v22 = sub_224DAEE18();
        v24 = v23;

        v25 = sub_224A33F74(v22, v24, v34);

        *(v18 + 14) = v25;
        *(v18 + 22) = 2082;
        v33 = v13;
        type metadata accessor for CHSDataProtectionLevel(0);
        v26 = sub_224DAEE28();
        v28 = sub_224A33F74(v26, v27, v34);

        *(v18 + 24) = v28;
        _os_log_impl(&dword_224A2F000, v16, v17, "Migrating CHSWidgetDescriptor requestedDataProtection: %{public}@:%{public}s to %{public}s", v18, 0x20u);
        sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        v29 = v32;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v29, -1, -1);
        MEMORY[0x22AA5EED0](v18, -1, -1);
      }

      [v15 mutableCopy];
      sub_224DAF758();
      swift_unknownObjectRelease();
      sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
      swift_dynamicCast();
      v30 = v33;
      [v33 setRequestedDataProtection_];

      v31 = *(a1 + 16);
      *(a1 + 16) = v30;

      *(a1 + 24) = 1;
    }
  }
}

void *sub_224D5B1EC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C20, &qword_224DC1A30);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;
  v5 = a1;
  sub_224D59FB0(inited, a2);
  sub_224D5A1FC(inited);
  sub_224D5A488(inited, a2);
  sub_224D5A938(inited, a2);
  sub_224D5AC9C(inited, a2);
  sub_224D5ADE8(inited, a2);
  if (*(inited + 24) == 1)
  {
    v6 = *(inited + 16);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_224D5B2BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_224DAE918();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = v13;
  sub_224DAE308();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
    v16 = 2;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v16 = sub_224DAE8F8();
    (*(v9 + 8))(v12, v8);
  }

  if ([v15 requestedDataProtection] == v16)
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281365168);
    v18 = v15;
    v19 = sub_224DAB228();
    v20 = sub_224DAF2A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v21 = 138543874;
      v23 = [v18 extensionIdentity];
      *(v21 + 4) = v23;
      *v22 = v23;
      *(v21 + 12) = 2082;
      v24 = [v18 kind];
      v25 = sub_224DAEE18();
      v27 = v26;

      v28 = sub_224A33F74(v25, v27, v37);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2082;
      v36 = v16;
      type metadata accessor for CHSDataProtectionLevel(0);
      v29 = sub_224DAEE28();
      v31 = sub_224A33F74(v29, v30, v37);

      *(v21 + 24) = v31;
      _os_log_impl(&dword_224A2F000, v19, v20, "Migrating CHSControlDescriptor requestedDataProtection: %{public}@:%{public}s to %{public}s", v21, 0x20u);
      sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    [v18 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_27D6F5228, 0x277CFA2A0);
    swift_dynamicCast();
    v33 = v36;
    [v36 setRequestedDataProtection_];

    v34 = *(a1 + 16);
    *(a1 + 16) = v33;

    *(a1 + 24) = 1;
  }
}

void sub_224D5B724(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_224DAE918();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = v13;
  sub_224DAE308();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F46D8, &unk_224DB7630);
    v16 = 2;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v16 = sub_224DAE8F8();
    (*(v9 + 8))(v12, v8);
  }

  if ([v15 requestedDataProtection] == v16)
  {
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281365168);
    v18 = v15;
    v19 = sub_224DAB228();
    v20 = sub_224DAF2A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v21 = 138543618;
      v24 = [v18 extensionIdentity];
      *(v21 + 4) = v24;
      *v22 = v24;
      *(v21 + 12) = 2082;
      v31 = v16;
      type metadata accessor for CHSDataProtectionLevel(0);
      v25 = sub_224DAEE28();
      v27 = sub_224A33F74(v25, v26, &v32);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_224A2F000, v19, v20, "Migrating CHSSessionPlatterDescriptor requestedDataProtection: %{public}@ to %{public}s", v21, 0x16u);
      sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x22AA5EED0](v23, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    [v18 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_27D6F6C10, 0x277CFA2A8);
    swift_dynamicCast();
    v28 = v31;
    [v31 setRequestedDataProtection_];

    v29 = *(a1 + 16);
    *(a1 + 16) = v28;

    *(a1 + 24) = 1;
  }
}

void *sub_224D5BB24(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;
  v9 = a1;
  a5(inited, a2);
  if (*(inited + 24) == 1)
  {
    v10 = *(inited + 16);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_224D5BBE8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_224D4E3B4(a1, v2) & 1;
}

unint64_t sub_224D5BCA8()
{
  result = qword_281352E70;
  if (!qword_281352E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281352E70);
  }

  return result;
}

uint64_t objectdestroy_147Tm()
{
  v1 = sub_224DAD448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_164Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_167Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224D5C0D4()
{
  result = swift_beginAccess();
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_224D5C140(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_224DAF538();
  return sub_224DAF6A8() & 1;
}

uint64_t sub_224D5C198()
{
  v1 = *(*(sub_224DA9398() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_224D49098(v2);
}

unint64_t sub_224D5C220()
{
  result = qword_27D6F6CE8;
  if (!qword_27D6F6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6CE8);
  }

  return result;
}

void sub_224D5C348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for HostConfigurationPayload();
  if (v3 <= 0x3F)
  {
    sub_224AFCD10();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224D5C3F0(uint64_t a1)
{
  sub_224AFCD10();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_224DAF728();
    if (v4 <= 0x3F)
    {
      sub_224D5C4B8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_224D5C4B8()
{
  if (!qword_2813508A8)
  {
    type metadata accessor for CHSWidgetHostActivationState(255);
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813508A8);
    }
  }
}

BOOL sub_224D5C510(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v21 == v19 && v22 == v20)
  {
  }

  else
  {
    v5 = sub_224DAFD88();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for HostConfigurationPayload();
  v7 = *(v6 + 36);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = v8;
    v12 = sub_224DAF6A8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v6 + 40);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if ((v15 & 1) == 0)
  {
    if (*v14 != *v16)
    {
      v17 = 1;
    }

    return (v17 & 1) == 0;
  }

  return (v17 & 1) != 0;
}

BOOL sub_224D5C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_224D5C510(a1, a2);
}

uint64_t sub_224D5C6C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for HostConfigurationPayload();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v19, v4);
    v24 = 0x203A74736F68;
    v25 = 0xE600000000000000;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v21 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v21);

    v22 = v24;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v12 + 32))(v16, v19, v11);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x22AA5D210](0x3A64616F6C796170, 0xE900000000000020);
    sub_224DAFD48();
    v22 = v24;
    (*(v12 + 8))(v16, v11);
  }

  return v22;
}

uint64_t sub_224D5C9C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = v40 - v8;
  v9 = type metadata accessor for HostConfigurationPayload();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - v11;
  v40[0] = a3;
  v40[1] = a4;
  v13 = _s19ConfigurationChangeOMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v22 = *(v42 + 64);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v25 = v40 - v24;
  v26 = *(v23 + 48);
  v27 = *(v14 + 16);
  v27(v40 - v24, v47, v13);
  v27(&v25[v26], v48, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27(v20, v25, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v43;
      v35 = v44;
      (*(v43 + 32))(v12, &v25[v26], v44);
      v32 = sub_224D5C510(v20, v12);
      v37 = *(v36 + 8);
      v37(v12, v35);
      v37(v20, v35);
      goto LABEL_12;
    }

    v34 = v43;
    v33 = v44;
    goto LABEL_9;
  }

  v27(v18, v25, v13);
  v20 = v18;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = v45;
    v33 = v46;
LABEL_9:
    (*(v34 + 8))(v20, v33);
    v32 = 0;
    v14 = v42;
    v13 = TupleTypeMetadata2;
    goto LABEL_12;
  }

  v29 = v45;
  v28 = v46;
  v30 = v41;
  (*(v45 + 32))(v41, &v25[v26], v46);
  sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
  v48 = v20;
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v51 == v49 && v52 == v50)
  {
    v31 = *(v29 + 8);
    v31(v30, v28);

    v31(v48, v28);
    v32 = 1;
  }

  else
  {
    v32 = sub_224DAFD88();
    v38 = *(v29 + 8);
    v38(v30, v28);

    v38(v48, v28);
  }

LABEL_12:
  (*(v14 + 8))(v25, v13);
  return v32 & 1;
}

uint64_t sub_224D5CF3C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_224DAF798();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      sub_224DAF9B8();
      v12 = *(v23 + 16);
      sub_224DAF9F8();
      v1 = v21;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_224A3E204(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_224D5D150(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_224DAFA58();
    v5 = v4;
    v6 = sub_224DAFB38();
    v8 = v7;
    v9 = MEMORY[0x22AA5DE00](v3, v5, v6, v7);
    sub_224A3E204(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_224A3E204(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_224DAF798();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v12 = sub_224D6DBB8(v3, v5, v2 != 0, a1);
  sub_224A3E204(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_224D5D284(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_224DAF7D8();
    v5 = v4;
    v6 = sub_224DAF898();
    v8 = v7;
    v9 = MEMORY[0x22AA5DB70](v3, v5, v6, v7);
    sub_224A3E204(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_224A3E204(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_224DAF798();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_224A94D00(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_224A3E204(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_224D5D3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_224DAF798();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v17 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_224C16918(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = sub_224DAAF48();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    v14 = *(v4 + 48);
    v15 = sub_224DAB018();
    (*(*(v15 - 8) + 32))(a2 + v14, &v7[v12], v15);
    return (*(v17 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_224D5D590(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_224DAF798();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_224A73280(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_224D5D5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_224DAF798();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_224D6DD0C(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_224DAC918();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_224D5D6CC(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_224DAFA58();
    v7 = v6;
    v8 = sub_224DAFB38();
    v10 = v9;
    v11 = MEMORY[0x22AA5DE00](v5, v7, v8, v9);
    sub_224A3E204(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_224A3E204(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_224DAF798();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(&v15, v5, v7, v4 != 0, a1);
  sub_224A3E204(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_224D5D824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_224DAB798();
  __swift_allocate_value_buffer(v5, a2);
  *__swift_project_value_buffer(v5, a2) = a3;
  v6 = *MEMORY[0x277D85188];
  v7 = *(*(v5 - 8) + 104);

  return v7();
}

uint64_t sub_224D5D8B8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 328);
    v1 = sub_224DAC0E8();
    v4 = *(v2 + 80);
    *(v2 + 80) = v1;
  }

  return v1;
}

uint64_t sub_224D5D920()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 328);
    v1 = sub_224DAC0D8();
    v4 = *(v2 + 104);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_224D5D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v35 = a6;
  v36 = a8;
  v34 = a5;
  v37 = a2;
  v38 = a9;
  v13 = sub_224DAC268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAC198();
  (*(v14 + 16))(v16, a3, v13);
  sub_224A3317C(a7, v41);
  sub_224A3317C(a1, &v39);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v34;
  *(v21 + 16) = a4;
  *(v21 + 24) = v22;
  (*(v14 + 32))(v21 + v18, v16, v13);
  *(v21 + v19) = v35;
  sub_224A36F98(v41, v21 + v20);
  v23 = v17;
  sub_224A36F98(&v39, v21 + ((v20 + 47) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v24 = sub_224DAC1A8();
  v25 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v26 = sub_224DABDB8();
  v27 = *v25;
  v28 = *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v28 + 16));
  sub_224A7E188(v27, v26, &v39);
  os_unfair_lock_unlock(*(v28 + 16));

  if (v40)
  {
    sub_224A36F98(&v39, v41);
    sub_224A3317C(v41, &v39);
    v29 = swift_allocObject();
    sub_224A36F98(&v39, v29 + 16);
    *(v29 + 56) = v24;

    v30 = sub_224DAC1A8();

    result = __swift_destroy_boxed_opaque_existential_1(v41);
    v24 = v30;
  }

  else
  {
    result = sub_224A3311C(&v39, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v32 = MEMORY[0x277CF9950];
  v33 = v38;
  v38[3] = v23;
  v33[4] = v32;
  *v33 = v24;
  return result;
}

uint64_t sub_224D5DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v46 = a6;
  v47 = a4;
  v41 = a5;
  v45 = a3;
  v7 = sub_224DAB258();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v37 - v12;
  v14 = sub_224DA9878();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  v22 = sub_224DA9688();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v27 = *(a2 + 8);
  sub_224DAC3F8();
  v39 = v13;
  v40 = v23;
  v45 = v22;
  sub_224DA9808();
  v28 = *(v47 + 16);
  sub_224DA9768();
  v38 = *(v15 + 8);
  v38(v19, v14);
  v29 = v41;
  v30 = v41[3];
  v37[2] = v41[4];
  v41 = v30;
  v37[1] = __swift_project_boxed_opaque_existential_1(v29, v30);
  if (qword_281351810 != -1)
  {
    swift_once();
  }

  v31 = sub_224DAA528();
  __swift_project_value_buffer(v31, qword_281365180);
  v32 = v39;
  (*(v15 + 16))(v39, v21, v14);
  (*(v15 + 56))(v32, 0, 1, v14);
  v33 = MEMORY[0x277CC9578];
  sub_224A6018C(&qword_281351A30, MEMORY[0x277CC9578]);
  sub_224A6018C(&qword_281351A48, v33);
  sub_224DAA3E8();
  v34 = v40;
  sub_224A3311C(v32, &qword_27D6F32B0, &qword_224DB3EA0);
  v38(v21, v14);
  (*(v34 + 8))(v26, v45);
  v35 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  return sub_224DAE1F8();
}

uint64_t sub_224D5E224(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE1F8();
  return sub_224DAC188();
}

uint64_t sub_224D5E270()
{
  v0 = sub_224DAC268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    sub_224D5E390(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_224D5E390(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_224DAC218();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &qword_27D6F56C0, &unk_224DB3580);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_224DAA1F8();
  if (v14)
  {
  }

  else
  {
    v15 = sub_224DAC248();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v18 = *(v17 + 1);

    if (v18)
    {

      v19 = *__swift_project_boxed_opaque_existential_1((v2 + 152), *(v2 + 176));
      sub_224B567E4(a1);
    }
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224D5E5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D5E678(a1, a2);
  }

  else
  {
    v5 = sub_224DAE4F8();
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t sub_224D5E678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v324 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v307 = &v285 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v308 = *(v6 - 8);
  v7 = *(v308 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v291 = &v285 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v309 = &v285 - v10;
  v334 = sub_224DAB258();
  KeyPath = *(v334 - 8);
  v11 = *(KeyPath + 64);
  v12 = MEMORY[0x28223BE20](v334);
  v299 = &v285 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v289 = &v285 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v321 = &v285 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v320 = &v285 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v317 = &v285 - v21;
  MEMORY[0x28223BE20](v20);
  v301 = &v285 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v286 = *(v23 - 8);
  v24 = *(v286 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v295 = &v285 - v25;
  v296 = sub_224DA9428();
  v298 = *(v296 - 8);
  v26 = *(v298 + 64);
  MEMORY[0x28223BE20](v296);
  v287 = &v285 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAD158();
  v330 = *(v28 - 8);
  v331 = v28;
  v29 = *(v330 + 64);
  MEMORY[0x28223BE20](v28);
  v297 = &v285 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_224DAE4F8();
  v322 = *(v323 - 8);
  v31 = *(v322 + 64);
  MEMORY[0x28223BE20](v323);
  v339 = &v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_224DAE478();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v336 = &v285 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_224DAB728();
  v325 = *(v326 - 8);
  v36 = *(v325 + 64);
  v37 = MEMORY[0x28223BE20](v326);
  v333 = &v285 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v285 - v39;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v41 = *(*(v314 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v314);
  v305 = &v285 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v304 = &v285 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v303 = &v285 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v318 = &v285 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v310 = &v285 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v327 = &v285 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v285 - v54;
  v56 = sub_224DAC268();
  v57 = *(v56 - 8);
  v58 = v57[8];
  v59 = MEMORY[0x28223BE20](v56);
  v306 = &v285 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v288 = &v285 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v319 = &v285 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v316 = &v285 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v315 = &v285 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v328 = &v285 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = &v285 - v71;
  v73 = sub_224DABE18();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  v76 = MEMORY[0x28223BE20](v73);
  v300 = &v285 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  *&v329 = &v285 - v79;
  MEMORY[0x28223BE20](v78);
  v81 = &v285 - v80;
  v337 = v57[2];
  v338 = (v57 + 2);
  v337(v72, a1, v56);
  sub_224DABD88();
  v82 = *(v342 + 328);
  v341 = a1;
  v290 = v82;
  sub_224DAC178();
  if (!v344[0])
  {
    (*(v74 + 8))(v81, v73);
    return (*(v322 + 56))(v324, 1, 1, v323);
  }

  v302 = v81;
  v311 = v74;
  v312 = v73;
  v83 = v344[0];
  v84 = *(v342 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext);

  sub_224DADDE8();

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(v344, v344[3]);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v344);
  sub_224DABE58();
  v85 = sub_224DAC248();
  v86 = v57[1];
  v86(v72, v56);
  [v85 family];

  sub_224DAE488();
  sub_224DAB5F8();
  v293 = v83;
  sub_224DABE58();
  sub_224DAC258();
  v335 = v86;
  v336 = (v57 + 1);
  v86(v72, v56);
  sub_224DAB628();
  (*(v325 + 16))(v333, v40, v326);
  sub_224DAE4D8();
  v87 = v327;
  sub_224A3796C(v55, v327, &qword_27D6F5238, &qword_224DBB1E0);
  v89 = v330;
  v88 = v331;
  v90 = v330 + 48;
  v313 = *(v330 + 48);
  v91 = v313(v87, 1, v331);
  v332 = v56;
  v333 = v55;
  v294 = v40;
  v292 = v90;
  if (v91 == 1)
  {
    v92 = v56;
    sub_224A3311C(v87, &qword_27D6F5238, &qword_224DBB1E0);
    v93 = v301;
    (*(KeyPath + 16))(v301, v342 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v334);
    v337(v328, v341, v56);
    v94 = v311;
    v95 = *(v311 + 16);
    v96 = v302;
    v97 = v312;
    v95(v329, v302, v312);
    v98 = v300;
    v95(v300, v96, v97);
    swift_retain_n();
    v99 = sub_224DAB228();
    v100 = sub_224DAF288();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v344[0] = v102;
      *v101 = 136315650;
      sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
      v103 = v328;
      v104 = sub_224DAFD28();
      v106 = v105;
      v335(v103, v92);
      v107 = sub_224A33F74(v104, v106, v344);

      *(v101 + 4) = v107;
      *(v101 + 12) = 2080;
      sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0]);
      v108 = v329;
      v109 = sub_224DAFD28();
      v111 = v110;
      v112 = *(v311 + 8);
      v112(v108, v97);
      v113 = sub_224A33F74(v109, v111, v344);

      *(v101 + 14) = v113;
      *(v101 + 22) = 1024;
      v114 = sub_224DAC108();
      v115 = v300;
      v116 = sub_224D42370(v300, v114);
      v117 = v342;

      v112(v115, v312);
      *(v101 + 24) = v116;

      _os_log_impl(&dword_224A2F000, v99, v100, "Missing environment for: %s (%s) - store has timeline key - %{BOOL}d", v101, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v102, -1, -1);
      MEMORY[0x22AA5EED0](v101, -1, -1);

      v118 = v334;
      (*(KeyPath + 8))(v301, v334);
      v119 = v117;
    }

    else
    {
      v119 = v342;

      v131 = *(v94 + 8);
      v131(v98, v97);

      v131(v329, v97);
      v335(v328, v92);
      v118 = v334;
      (*(KeyPath + 8))(v93, v334);
    }

    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
    v132 = *(sub_224DAE588() - 8);
    v133 = *(v132 + 72);
    v134 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v135 = swift_allocObject();
    v329 = xmmword_224DB3100;
    *(v135 + 16) = xmmword_224DB3100;
    sub_224DAE578();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D60, &qword_224DC2168);
    v136 = *(sub_224DAE768() - 8);
    v137 = *(v136 + 72);
    v138 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    *(swift_allocObject() + 16) = v329;
    sub_224DAE758();
    sub_224DAE4B8();
    v139 = v333;
    v128 = KeyPath;
    v140 = v317;
    v141 = v310;
    v142 = v315;
  }

  else
  {
    v121 = v297;
    (*(v89 + 32))(v297, v87, v88);
    swift_getKeyPath();
    sub_224DAD038();
    sub_224DAE4B8();
    swift_getKeyPath();
    v122 = sub_224DAD0B8();
    v123 = v122;
    v124 = *(v122 + 16);
    if (v124)
    {
      v125 = sub_224B0CD70(*(v122 + 16), 0);
      v126 = *(sub_224DAE588() - 8);
      v127 = sub_224B2FE58(v344, (v125 + ((*(v126 + 80) + 32) & ~*(v126 + 80))), v124, v123);
      result = sub_224A3B7E4();
      v128 = KeyPath;
      v129 = v298;
      if (v127 != v124)
      {
        __break(1u);
        return result;
      }

      v118 = v334;
      v130 = v296;
    }

    else
    {

      v118 = v334;
      v128 = KeyPath;
      v130 = v296;
      v129 = v298;
    }

    sub_224DAE4B8();
    swift_getKeyPath();
    v143 = sub_224DAD128();
    sub_224D405BC(v143);

    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAD058();
    sub_224DAF548();
    sub_224DAE4B8();
    v144 = v295;
    sub_224DAD0D8();
    if ((*(v129 + 48))(v144, 1, v130) == 1)
    {
      (*(v330 + 8))(v121, v331);
      sub_224A3311C(v144, &qword_27D6F6D20, &unk_224DC1FE0);
    }

    else
    {
      v145 = v128;
      v146 = v287;
      (*(v129 + 32))(v287, v144, v130);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D68, &qword_224DC22D0);
      v147 = *(v286 + 72);
      v148 = (*(v286 + 80) + 32) & ~*(v286 + 80);
      v149 = swift_allocObject();
      *(v149 + 16) = xmmword_224DB3100;
      (*(v129 + 16))(v149 + v148, v146, v130);
      (*(v129 + 56))(v149 + v148, 0, 1, v130);
      sub_224DAE4B8();
      v150 = v146;
      v128 = v145;
      (*(v129 + 8))(v150, v130);
      (*(v330 + 8))(v121, v331);
    }

    v139 = v333;
    v140 = v317;
    v141 = v310;
    v142 = v315;
    v119 = v342;
  }

  v151 = *(v128 + 16);
  v327 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v152 = v119;
  *&v329 = v128 + 16;
  v328 = v151;
  (v151)(v140, v119 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v118);
  v153 = v332;
  v337(v142, v341, v332);
  sub_224A3796C(v139, v141, &qword_27D6F5238, &qword_224DBB1E0);
  v154 = sub_224DAB228();
  LODWORD(v310) = sub_224DAF278();
  if (os_log_type_enabled(v154, v310))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v343 = v156;
    *v155 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v157 = sub_224DAE4A8();
    if (v157)
    {
      v158 = v157;
      swift_endAccess();

      v159 = sub_224DAB528();
      v160 = MEMORY[0x22AA5D380](v158, v159);
      v162 = v161;
    }

    else
    {
      v160 = 7104878;
      swift_endAccess();

      v162 = 0xE300000000000000;
    }

    v165 = sub_224A33F74(v160, v162, &v343);

    *(v155 + 4) = v165;
    *(v155 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
    v166 = v315;
    v153 = v332;
    v167 = sub_224DAFD28();
    v169 = v168;
    v335(v166, v153);
    v170 = sub_224A33F74(v167, v169, &v343);

    *(v155 + 14) = v170;
    *(v155 + 22) = 2082;
    v171 = sub_224DAF708();
    v173 = v172;
    sub_224A3311C(v141, &qword_27D6F5238, &qword_224DBB1E0);
    v174 = sub_224A33F74(v171, v173, &v343);

    *(v155 + 24) = v174;
    _os_log_impl(&dword_224A2F000, v154, v310, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v155, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v156, -1, -1);
    MEMORY[0x22AA5EED0](v155, -1, -1);

    v163 = *(KeyPath + 8);
    v118 = v334;
    v163(v317, v334);
    v164 = v341;
    v152 = v342;
    v139 = v333;
  }

  else
  {

    sub_224A3311C(v141, &qword_27D6F5238, &qword_224DBB1E0);
    v335(v142, v153);
    v163 = *(v128 + 8);
    v163(v140, v118);
    v164 = v341;
  }

  v175 = v152;
  v176 = v320;
  (v328)(v320, v152 + v327, v118);
  v177 = v316;
  v178 = v164;
  v337(v316, v164, v153);
  v179 = v318;
  sub_224A3796C(v139, v318, &qword_27D6F5238, &qword_224DBB1E0);
  v180 = sub_224DAB228();
  LODWORD(v315) = sub_224DAF278();
  v181 = os_log_type_enabled(v180, v315);
  v317 = v163;
  if (v181)
  {
    v182 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v343 = v183;
    *v182 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v184 = sub_224DAE4A8();
    if (v184)
    {
      v185 = v184;
      swift_endAccess();

      v186 = sub_224DAE588();
      v187 = MEMORY[0x22AA5D380](v185, v186);
      v189 = v188;
    }

    else
    {
      v187 = 7104878;
      swift_endAccess();

      v189 = 0xE300000000000000;
    }

    v191 = v316;
    v192 = sub_224A33F74(v187, v189, &v343);

    *(v182 + 4) = v192;
    *(v182 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
    v193 = v191;
    v153 = v332;
    v194 = sub_224DAFD28();
    v196 = v195;
    v335(v193, v153);
    v197 = sub_224A33F74(v194, v196, &v343);

    *(v182 + 14) = v197;
    *(v182 + 22) = 2082;
    v198 = v318;
    v199 = sub_224DAF708();
    v201 = v200;
    sub_224A3311C(v198, &qword_27D6F5238, &qword_224DBB1E0);
    v202 = sub_224A33F74(v199, v201, &v343);

    *(v182 + 24) = v202;
    _os_log_impl(&dword_224A2F000, v180, v315, "Using rendering schemes(s): %{public}s for key: %{public}s, modifiers: %{public}s", v182, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v183, -1, -1);
    MEMORY[0x22AA5EED0](v182, -1, -1);

    v118 = v334;
    v163 = v317;
    (v317)(v320, v334);
    v190 = v341;
    v175 = v342;
    v139 = v333;
  }

  else
  {

    sub_224A3311C(v179, &qword_27D6F5238, &qword_224DBB1E0);
    v335(v177, v153);
    v163(v176, v118);
    v190 = v178;
  }

  v203 = v321;
  (v328)(v321, v175 + v327, v118);
  v204 = v319;
  v337(v319, v190, v153);
  v205 = v303;
  sub_224A3796C(v139, v303, &qword_27D6F5238, &qword_224DBB1E0);
  v206 = sub_224DAB228();
  v207 = sub_224DAF278();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v343 = v209;
    *v208 = 136315650;
    swift_getKeyPath();
    swift_beginAccess();
    v210 = sub_224DAE4A8();
    if (v210)
    {
      v211 = v210;
      swift_endAccess();

      v212 = sub_224DAE768();
      v213 = MEMORY[0x22AA5D380](v211, v212);
      v215 = v214;
    }

    else
    {
      v213 = 7104878;
      swift_endAccess();

      v215 = 0xE300000000000000;
    }

    v217 = v319;
    v218 = sub_224A33F74(v213, v215, &v343);

    *(v208 + 4) = v218;
    *(v208 + 12) = 2080;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
    v219 = v332;
    v220 = sub_224DAFD28();
    v222 = v221;
    v335(v217, v219);
    v223 = sub_224A33F74(v220, v222, &v343);

    *(v208 + 14) = v223;
    *(v208 + 22) = 2080;
    v224 = sub_224DAF708();
    v226 = v225;
    sub_224A3311C(v205, &qword_27D6F5238, &qword_224DBB1E0);
    v227 = sub_224A33F74(v224, v226, &v343);

    *(v208 + 24) = v227;
    _os_log_impl(&dword_224A2F000, v206, v207, "Using levelsOfDetail: %s for key: %s, modifiers: %s", v208, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v209, -1, -1);
    MEMORY[0x22AA5EED0](v208, -1, -1);

    v118 = v334;
    v216 = v317;
    (v317)(v321, v334);
    v139 = v333;
  }

  else
  {

    sub_224A3311C(v205, &qword_27D6F5238, &qword_224DBB1E0);
    v335(v204, v153);
    v216 = v163;
    v163(v203, v118);
  }

  swift_getKeyPath();
  v228 = v304;
  sub_224A3796C(v139, v304, &qword_27D6F5238, &qword_224DBB1E0);
  v229 = v331;
  v230 = v313(v228, 1, v331);
  v231 = v306;
  if (v230 == 1)
  {
    sub_224A3311C(v228, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD018();
    (*(v330 + 8))(v228, v229);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  v232 = v305;
  sub_224A3796C(v139, v305, &qword_27D6F5238, &qword_224DBB1E0);
  if (v313(v232, 1, v229) == 1)
  {
    sub_224A3311C(v232, &qword_27D6F5238, &qword_224DBB1E0);
    v233 = v332;
LABEL_42:
    v247 = v299;
    (v328)(v299, v342 + v327, v118);
    v337(v231, v341, v233);
    v248 = sub_224DAB228();
    v249 = v233;
    v250 = v118;
    v251 = sub_224DAF278();
    if (os_log_type_enabled(v248, v251))
    {
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v344[0] = v253;
      *v252 = 136446210;
      sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
      v254 = sub_224DAFD28();
      v256 = v255;
      v335(v231, v249);
      v257 = sub_224A33F74(v254, v256, v344);

      *(v252 + 4) = v257;
      __swift_destroy_boxed_opaque_existential_1(v253);
      MEMORY[0x22AA5EED0](v253, -1, -1);
      MEMORY[0x22AA5EED0](v252, -1, -1);

      (v317)(v247, v250);
    }

    else
    {

      v335(v231, v233);
      v216(v247, v250);
    }

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    v258 = *(sub_224DAB558() - 8);
    v259 = *(v258 + 72);
    v260 = (*(v258 + 80) + 32) & ~*(v258 + 80);
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    v344[0] = MEMORY[0x277D84F90];
    sub_224A6018C(&qword_281350ED8, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
    sub_224DAF788();
    v261 = v339;
    swift_beginAccess();
    goto LABEL_48;
  }

  v234 = sub_224DACFE8();
  (*(v330 + 8))(v232, v229);
  v233 = v332;
  if ((v234 & 1) == 0)
  {
    goto LABEL_42;
  }

  v235 = v289;
  (v328)(v289, v342 + v327, v118);
  v236 = v288;
  v337(v288, v341, v233);
  v237 = sub_224DAB228();
  v238 = v233;
  v239 = v118;
  v240 = sub_224DAF278();
  if (os_log_type_enabled(v237, v240))
  {
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v344[0] = v242;
    *v241 = 136446210;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
    v243 = sub_224DAFD28();
    v245 = v244;
    v335(v236, v238);
    v246 = sub_224A33F74(v243, v245, v344);

    *(v241 + 4) = v246;
    __swift_destroy_boxed_opaque_existential_1(v242);
    MEMORY[0x22AA5EED0](v242, -1, -1);
    MEMORY[0x22AA5EED0](v241, -1, -1);

    (v317)(v235, v239);
  }

  else
  {

    v335(v236, v233);
    v216(v235, v239);
  }

  KeyPath = swift_getKeyPath();
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v262 = *(sub_224DAB558() - 8);
  v263 = *(v262 + 72);
  v264 = (*(v262 + 80) + 32) & ~*(v262 + 80);
  *(swift_allocObject() + 16) = xmmword_224DB30F0;
  v344[0] = MEMORY[0x277D84F90];
  sub_224A6018C(&qword_281350ED8, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
  sub_224DAF788();
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_224DB3100;
  sub_224DAB548();
  v344[0] = v265;
  sub_224DAF788();
  v261 = v339;
  swift_beginAccess();
LABEL_48:
  sub_224DAE4B8();
  swift_endAccess();
  v266 = v322;
  v267 = v309;
  sub_224DAE7B8();
  v268 = sub_224DAE7C8();
  (*(*(v268 - 8) + 56))(v267, 0, 1, v268);
  v269 = v307;
  sub_224DAC218();
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v271 = *(v270 - 8);
  if ((*(v271 + 48))(v269, 1, v270) == 1)
  {
    sub_224A3311C(v269, &qword_27D6F56C0, &unk_224DB3580);
LABEL_52:
    v276 = 0;
    goto LABEL_53;
  }

  sub_224DAA1F8();
  v273 = v272;
  (*(v271 + 8))(v269, v270);
  if (!v273)
  {
    goto LABEL_52;
  }

  v274 = *(v342 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider + 32);
  __swift_project_boxed_opaque_existential_1((v342 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider), *(v342 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider + 24));
  v275 = v291;
  sub_224DAD4E8();

  sub_224A3311C(v267, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v275, v267, &qword_27D6F48C0, &qword_224DB8220);
  v276 = 1;
LABEL_53:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v277 = swift_allocObject();
  v342 = xmmword_224DB3100;
  *(v277 + 16) = xmmword_224DB3100;
  *(v277 + 32) = v276;
  swift_beginAccess();
  sub_224DAE4B8();
  swift_getKeyPath();
  v278 = swift_allocObject();
  *(v278 + 16) = v342;
  *(v278 + 32) = v276;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v279 = *(v308 + 72);
  v280 = (*(v308 + 80) + 32) & ~*(v308 + 80);
  v281 = swift_allocObject();
  *(v281 + 16) = v342;
  sub_224A3796C(v267, v281 + v280, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v282 = swift_allocObject();
  *(v282 + 16) = v342;
  *(v282 + 32) = v276;
  sub_224DAE4B8();
  swift_endAccess();

  sub_224A3311C(v267, &qword_27D6F48C0, &qword_224DB8220);
  (*(v325 + 8))(v294, v326);
  sub_224A3311C(v333, &qword_27D6F5238, &qword_224DBB1E0);
  (*(v311 + 8))(v302, v312);
  v283 = v324;
  v284 = v323;
  (*(v266 + 16))(v324, v261, v323);
  (*(v266 + 56))(v283, 0, 1, v284);
  return (*(v266 + 8))(v261, v284);
}

uint64_t sub_224D611B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D61208();
  }

  return result;
}

id sub_224D61208()
{
  v1 = sub_224DA9428();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v197 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v196 = &v186 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v204 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v207 = &v186 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v203 = &v186 - v14;
  MEMORY[0x28223BE20](v13);
  v214 = &v186 - v15;
  v253 = sub_224DAD158();
  v201 = *(v253 - 8);
  v16 = *(v201 + 64);
  v17 = MEMORY[0x28223BE20](v253);
  v206 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v238 = &v186 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v220 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v239 = &v186 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v229 = &v186 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v186 - v29;
  MEMORY[0x28223BE20](v28);
  v251 = &v186 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v228 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v227 = &v186 - v36;
  v37 = sub_224DAC268();
  v230 = *(v37 - 8);
  v38 = *(v230 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v247 = &v186 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v218 = &v186 - v42;
  MEMORY[0x28223BE20](v41);
  v249 = &v186 - v43;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v189 = *(v237 - 8);
  v44 = *(v189 + 64);
  v45 = MEMORY[0x28223BE20](v237);
  v208 = &v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v236 = &v186 - v48;
  MEMORY[0x28223BE20](v47);
  v187 = &v186 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v235 = &v186 - v55;
  v256 = MEMORY[0x277D84F98];
  v57 = v0[22];
  v56 = v0[23];
  v200 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 19, v57);
  (*(*(v56 + 8) + 32))(v255, 768, v57);
  if (!v255[5])
  {
    sub_224A3311C(v255, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_5:
    v58 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_6;
  }

  v58 = sub_224A86CAC();
  result = sub_224A699F0(v255);
  if (!v58)
  {
    goto LABEL_5;
  }

LABEL_6:
  v60 = v249;
  v61 = v236;
  v62 = v235;
  v63 = 0;
  v195 = 0;
  v188 = v58;
  v64 = v58 + 64;
  v65 = 1 << *(v58 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v58 + 64);
  v68 = (v65 + 63) >> 6;
  v209 = (v189 + 16);
  v212 = (v189 + 32);
  v226 = (v189 + 56);
  v225 = (v189 + 48);
  v211 = (v189 + 8);
  v224 = (v201 + 56);
  v199 = v201 + 16;
  v248 = (v201 + 48);
  v223 = (v201 + 32);
  v252 = (v2 + 56);
  v213 = (v2 + 48);
  v198 = (v2 + 32);
  v205 = (v201 + 8);
  v246 = (v230 + 16);
  v245 = (v230 + 8);
  v69 = MEMORY[0x277D84F90];
  v217 = v230 + 32;
  v222 = xmmword_224DB2780;
  v215 = MEMORY[0x277D84F90];
  v234 = v54;
  v191 = v58 + 64;
  v190 = v68;
  v216 = v30;
  v221 = v1;
  v219 = v37;
  while (1)
  {
    v250 = v69;
    if (!v67)
    {
      break;
    }

    v194 = v63;
    v70 = v63;
LABEL_20:
    v193 = (v67 - 1) & v67;
    v73 = __clz(__rbit64(v67)) | (v70 << 6);
    v74 = v188;
    v75 = v189;
    v76 = v187;
    v77 = v237;
    (*(v189 + 16))(v187, *(v188 + 48) + *(v189 + 72) * v73, v237);
    v78 = *(*(v74 + 56) + 8 * v73);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v80 = *(v79 + 48);
    v81 = *(v75 + 32);
    v54 = v234;
    v81(v234, v76, v77);
    *&v54[v80] = v78;
    (*(*(v79 - 8) + 56))(v54, 0, 1, v79);
    v82 = v78;
    v61 = v236;
    v62 = v235;
LABEL_21:
    sub_224A44E4C(v54, v62, &qword_27D6F4930, &unk_224DB8D00);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v83 - 8) + 48))(v62, 1, v83) == 1)
    {

      v182 = v200;
      v183 = *(v200 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext);

      sub_224DADDC8();

      v184 = *(v182 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock);

      os_unfair_lock_lock(v184 + 4);
      v185 = *(v182 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions);
      *(v182 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions) = v215;

      os_unfair_lock_unlock(v184 + 4);
    }

    v84 = *(v62 + *(v83 + 48));
    v210 = *v212;
    v210(v61, v62, v237);
    v192 = v84;
    v85 = [v84 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v86 = sub_224DAF008();

    v87 = v195;
    v88 = sub_224A7B5CC(v86);
    v195 = v87;

    v89 = v88;
    if (v88 >> 62)
    {
      result = sub_224DAF838();
      v89 = v88;
    }

    else
    {
      result = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = v250;
    if (result)
    {
      v90 = 0;
      v233 = v89 & 0xC000000000000001;
      v202 = v89 & 0xFFFFFFFFFFFFFF8;
      v232 = v89;
      v231 = result;
      while (1)
      {
        if (v233)
        {
          result = MEMORY[0x22AA5DCC0](v90);
        }

        else
        {
          if (v90 >= *(v202 + 16))
          {
            goto LABEL_99;
          }

          result = *(v89 + 8 * v90 + 32);
        }

        v91 = result;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        v250 = v69;
        v92 = [result widget];
        v93 = [v91 metrics];
        v94 = [v91 container];
        v243 = v90;
        v242 = (v90 + 1);
        if (v94)
        {
          v95 = v94;
          v244 = [v94 canAppearInSecureEnvironment];
        }

        else
        {
          v244 = 0;
        }

        v96 = v237;
        sub_224DAA1F8();
        v97 = v61;
        v98 = sub_224DAA048();

        if (v98)
        {
          v99 = v227;
          (*v209)(v227, v97, v96);
          v100 = 0;
        }

        else
        {
          v100 = 1;
          v99 = v227;
        }

        (*v226)(v99, v100, 1, v96);
        v101 = v93;
        v102 = v92;
        sub_224DAC228();
        v103 = v228;
        sub_224DAC218();
        if ((*v225)(v103, 1, v96) == 1)
        {
          sub_224A3311C(v103, &qword_27D6F56C0, &unk_224DB3580);
          v104 = v229;
        }

        else
        {
          v105 = v208;
          v210(v208, v103, v96);
          sub_224DAA1F8();
          v104 = v229;
          if (v106)
          {

            sub_224D670B0(v60, v255);
            sub_224A3317C(v255, &v254);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v215 = sub_224AD97A8(0, v215[2] + 1, 1, v215);
            }

            v108 = v215[2];
            v107 = v215[3];
            if (v108 >= v107 >> 1)
            {
              v215 = sub_224AD97A8((v107 > 1), v108 + 1, 1, v215);
            }

            __swift_destroy_boxed_opaque_existential_1(v255);
            (*v211)(v105, v96);
            v109 = v215;
            v215[2] = v108 + 1;
            sub_224A36F98(&v254, &v109[5 * v108 + 4]);
          }

          else
          {
            (*v211)(v105, v96);
          }
        }

        v110 = v256;
        v111 = *(v256 + 16);
        v112 = v224;
        v113 = v248;
        v241 = v101;
        v240 = v102;
        if (v111 && (v114 = sub_224A61E5C(v60), (v115 & 1) != 0))
        {
          (*(v201 + 16))(v251, *(v110 + 56) + *(v201 + 72) * v114, v253);
          v116 = 0;
        }

        else
        {
          v116 = 1;
        }

        v117 = *v112;
        v118 = v251;
        v119 = v253;
        (*v112)(v251, v116, 1, v253);
        v117(v30, 1, 1, v119);
        sub_224A3796C(v118, v104, &qword_27D6F5238, &qword_224DBB1E0);
        v120 = *v113;
        if ((*v113)(v104, 1, v119) == 1)
        {
          sub_224A3311C(v104, &qword_27D6F5238, &qword_224DBB1E0);
          v121 = v239;
          sub_224DAD148();
          v122 = v253;
          v117(v121, 0, 1, v253);
          sub_224C089E8(v121, v30);
          result = v120(v30, 1, v122);
          if (result == 1)
          {
            goto LABEL_112;
          }

          sub_224DACFF8();
          [v91 supportedColorSchemes];
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_103;
          }

          sub_224DAD098();
          v123 = [v91 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v124 = sub_224DAF008();

          v255[0] = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8);
          v125 = sub_224DAEF58();

          sub_224AE97C0(v125);

          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_115;
          }

          sub_224DAD0C8();
          [v91 supportsLowLuminance];
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_104;
          }

          sub_224DAD108();
          [v91 showsWidgetLabel];
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_113;
          }

          sub_224DAD028();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = v222;
          *(inited + 32) = [v91 displayProperties];
          sub_224AE995C(inited);
          swift_setDeallocating();
          v127 = *(inited + 16);
          swift_arrayDestroy();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_106;
          }

          sub_224DAD138();
          [v91 supportedProximities];
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_114;
          }

          sub_224DAD068();
          v128 = [v91 idealizedDateComponents];
          v129 = *v252;
          if (v128)
          {
            v130 = v128;
            v131 = 1;
            v132 = v204;
            v133 = v221;
            v129(v204, 1, 1, v221);
            sub_224A6018C(&qword_27D6F6D58, MEMORY[0x277CC8990]);
            sub_224DAFBE8();

            v134 = v133;
            v135 = v207;
            if ((*v213)(v132, 1, v134) != 1)
            {
              v136 = v91;
              v137 = v135;
              v138 = *v198;
              v139 = v197;
              (*v198)(v197, v204, v134);
              v138(v137, v139, v134);
              v135 = v137;
              v91 = v136;
              v131 = 0;
            }
          }

          else
          {
            v131 = 1;
            v134 = v221;
            v135 = v207;
          }

          v129(v135, v131, 1, v134);
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_107;
          }

          v165 = v91;
          sub_224DAD0E8();
        }

        else
        {
          v140 = v253;
          (*v223)(v238, v104, v253);
          v141 = v239;
          sub_224DAD148();
          v117(v141, 0, 1, v140);
          sub_224C089E8(v141, v30);
          sub_224DACFE8();
          result = v120(v30, 1, v140);
          if (result == 1)
          {
            goto LABEL_116;
          }

          sub_224DACFF8();
          sub_224DAD088();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_105;
          }

          sub_224DAD098();
          v142 = [v91 supportedColorSchemes];
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_118;
          }

          v144 = sub_224DAD078();
          if ((v142 & ~*v143) != 0)
          {
            *v143 |= v142;
          }

          v144(v255, 0);
          sub_224DAD0B8();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_108;
          }

          sub_224DAD0C8();
          v145 = [v91 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v146 = sub_224DAF008();

          v255[0] = v146;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8);
          v147 = sub_224DAEF58();

          v148 = sub_224AE97C0(v147);

          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_117;
          }

          v149 = sub_224DAD0A8();
          sub_224C70AB4(v148);
          v149(v255, 0);
          v150 = v238;
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v91 supportsLowLuminance];
          }

          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_110;
          }

          sub_224DAD108();
          if ((sub_224DAD018() & 1) == 0)
          {
            [v91 showsWidgetLabel];
          }

          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_119;
          }

          sub_224DAD028();
          sub_224DAD128();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_109;
          }

          sub_224DAD138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          v151 = swift_initStackObject();
          *(v151 + 16) = v222;
          *(v151 + 32) = [v91 displayProperties];
          v152 = sub_224AE995C(v151);
          swift_setDeallocating();
          v153 = *(v151 + 16);
          swift_arrayDestroy();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_101;
          }

          v154 = sub_224DAD118();
          sub_224C70AE0(v152);
          v154(v255, 0);
          sub_224DAD058();
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_111;
          }

          sub_224DAD068();
          v155 = [v91 idealizedDateComponents];
          v156 = *v252;
          if (v155)
          {
            v157 = v155;
            v158 = 1;
            v159 = v203;
            v160 = v221;
            v156(v203, 1, 1, v221);
            sub_224A6018C(&qword_27D6F6D58, MEMORY[0x277CC8990]);
            sub_224DAFBE8();

            v161 = v160;
            v162 = v159;
            v150 = v238;
            if ((*v213)(v162, 1, v160) != 1)
            {
              v163 = *v198;
              v164 = v196;
              (*v198)(v196, v203, v161);
              v163(v214, v164, v161);
              v158 = 0;
            }
          }

          else
          {
            v158 = 1;
            v161 = v221;
          }

          v156(v214, v158, 1, v161);
          result = v120(v30, 1, v253);
          if (result == 1)
          {
            goto LABEL_102;
          }

          v165 = v91;
          sub_224DAD0E8();
          (*v205)(v150, v253);
        }

        v166 = *v246;
        v167 = v218;
        v168 = v219;
        (*v246)(v218, v249, v219);
        v169 = v220;
        sub_224A3796C(v30, v220, &qword_27D6F5238, &qword_224DBB1E0);
        if (v120(v169, 1, v253) == 1)
        {
          sub_224A3311C(v169, &qword_27D6F5238, &qword_224DBB1E0);
          v170 = v167;
          v171 = v239;
          sub_224B0DC70(v170, v239);
          sub_224A3311C(v171, &qword_27D6F5238, &qword_224DBB1E0);
          v172 = *v245;
          (*v245)(v170, v168);
        }

        else
        {
          v173 = v206;
          (*v223)(v206, v169, v253);
          v174 = v256;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v255[0] = v174;
          sub_224B224C8(v173, v167, isUniquelyReferenced_nonNull_native);
          v176 = v167;
          v172 = *v245;
          (*v245)(v176, v168);
          v256 = v255[0];
        }

        v69 = v250;
        v177 = v241;
        v178 = v249;
        v166(v247);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_224AD93E4(0, v69[2] + 1, 1, v69);
        }

        v180 = v69[2];
        v179 = v69[3];
        if (v180 >= v179 >> 1)
        {
          v69 = sub_224AD93E4(v179 > 1, v180 + 1, 1, v69);
        }

        sub_224A3311C(v251, &qword_27D6F5238, &qword_224DBB1E0);
        v60 = v178;
        v172(v178, v168);
        v69[2] = v180 + 1;
        (*(v230 + 32))(v69 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v180, v247, v168);
        v30 = v216;
        result = sub_224A3311C(v216, &qword_27D6F5238, &qword_224DBB1E0);
        v90 = v243 + 1;
        v61 = v236;
        v54 = v234;
        v62 = v235;
        v89 = v232;
        if (v242 == v231)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_9:

    result = (*v211)(v61, v237);
    v63 = v194;
    v64 = v191;
    v68 = v190;
    v67 = v193;
  }

  if (v68 <= v63 + 1)
  {
    v71 = v63 + 1;
  }

  else
  {
    v71 = v68;
  }

  v72 = v71 - 1;
  while (1)
  {
    v70 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v70 >= v68)
    {
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v181 - 8) + 56))(v54, 1, 1, v181);
      v193 = 0;
      v194 = v72;
      goto LABEL_21;
    }

    v67 = *(v64 + 8 * v70);
    ++v63;
    if (v67)
    {
      v194 = v70;
      goto LABEL_20;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_224D631CC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(result + 328);
      v5 = v1 + 32;
      do
      {
        v6 = sub_224A3317C(v5, v7);
        MEMORY[0x28223BE20](v6);
        sub_224DAC128();
        __swift_destroy_boxed_opaque_existential_1(v7);
        v5 += 40;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_224D632B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v35 - v4;
  v46 = sub_224DAF3B8();
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = v35 - v11;
  v12 = sub_224DABE18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v43 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v35 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v41 = v13;
    v20 = *(v13 + 16);
    v48 = v17;
    v20();
    v21 = *(v19 + 328);
    v42 = a1;
    v22 = sub_224DAC168();
    if (v22 && (v40 = v9, v23 = sub_224A73210(v22), , v23))
    {
      sub_224DABE38();

      v39 = v8;
      __swift_project_boxed_opaque_existential_1(v51, v51[3]);
      v38 = sub_224DAD178();
      v50 = v38;
      sub_224DAF378();
      v35[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      v36 = sub_224DAF3D8();
      v49 = v36;
      v24 = sub_224DAF358();
      v25 = *(*(v24 - 8) + 56);
      v37 = v20;
      v26 = v45;
      v25(v45, 1, 1, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
      sub_224B67CF4();
      v27 = v47;
      sub_224DAB468();
      sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

      (*(v44 + 8))(v7, v46);

      __swift_destroy_boxed_opaque_existential_1(v51);
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = v43;
      (v37)(v43, v42, v12);
      v30 = v41;
      v31 = (*(v41 + 80) + 24) & ~*(v41 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      (*(v30 + 32))(v32 + v31, v29, v12);
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
      v33 = v39;
      v34 = sub_224DAB488();

      (*(v40 + 8))(v27, v33);
    }

    else
    {
      v34 = 0;
    }

    swift_beginAccess();
    sub_224B09B90(v34, v48);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224D63848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D638A8(a3);
  }

  return result;
}

uint64_t sub_224D638A8(uint64_t a1)
{
  v111 = sub_224DACB98();
  v109 = *(v111 - 8);
  v3 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_224DACB08();
  v106 = *(v107 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_224DACB28();
  v103 = *(v104 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v105 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACC88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB258();
  v128 = *(v14 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v14);
  v113 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAB728();
  v125 = *(v115 - 8);
  v17 = *(v125 + 8);
  MEMORY[0x28223BE20](v115);
  v119 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DAE4F8();
  v124 = *(v114 - 8);
  v19 = *(v124 + 8);
  MEMORY[0x28223BE20](v114);
  v118 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAC268();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v126 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  v116 = v1;
  v32 = *(v1 + 328);
  result = sub_224DAC168();
  if (result)
  {
    v99 = v13;
    v100 = v10;
    v101 = v9;
    v102 = a1;
    v34 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_224DBF6A0;
    *(v35 + 32) = swift_getKeyPath();
    *(v35 + 40) = swift_getKeyPath();
    result = swift_getKeyPath();
    LODWORD(v112) = 0;
    v37 = 0;
    v117 = v35;
    *(v35 + 48) = result;
    v127 = v34;
    v38 = *(v34 + 64);
    v120 = v34 + 64;
    v39 = 1 << *(v34 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v38;
    v94 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v42 = (v39 + 63) >> 6;
    v122 = v22 + 32;
    v123 = v22 + 16;
    v129 = (v22 + 8);
    v98 = (v125 + 8);
    v97 = (v124 + 8);
    v93 = (v128 + 16);
    v92 = (v128 + 8);
    *&v36 = 136446210;
    v91 = v36;
    v95 = v14;
    v43 = v22;
    v128 = v22;
    v124 = v29;
    v125 = v31;
    v121 = v42;
LABEL_5:
    v44 = v37;
    if (v41)
    {
      while (1)
      {
        v45 = v44;
LABEL_14:
        v47 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v48 = v47 | (v45 << 6);
        v49 = v126;
        v50 = v127;
        v51 = v21;
        v52 = v21;
        v53 = v43;
        (*(v43 + 16))(v126, *(v127 + 48) + *(v43 + 72) * v48, v51);
        v54 = *(*(v50 + 56) + 8 * v48);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v56 = *(v55 + 48);
        v57 = *(v53 + 32);
        v21 = v52;
        v29 = v124;
        v57(v124, v49, v21);
        *&v29[v56] = v54;
        (*(*(v55 - 8) + 56))(v29, 0, 1, v55);
        v58 = v54;
        v37 = v45;
        v31 = v125;
        v42 = v121;
LABEL_15:
        sub_224A44E4C(v29, v31, &qword_27D6F47F0, &unk_224DB7850);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        if ((*(*(v59 - 8) + 48))(v31, 1, v59) == 1)
        {
          break;
        }

        v60 = *&v31[*(v59 + 48)];
        sub_224DABE68();
        if (v131)
        {
          sub_224A36F98(&v130, v133);
          v96 = v133[4];
          __swift_project_boxed_opaque_existential_1(v133, v133[3]);
          sub_224DAEA78();
          sub_224DABE38();
          v96 = v132;
          __swift_project_boxed_opaque_existential_1(&v130, v131);
          sub_224DAD168();

          v62 = sub_224DAE4E8();

          (*v98)(v119, v115);
          (*v97)(v118, v114);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          if (v62)
          {
          }

          else
          {
            v63 = v95;
            (*v93)(v113, v116 + v94, v95);
            v64 = v60;
            v96 = sub_224DAB228();
            v65 = sub_224DAF2A8();
            v112 = v64;

            v90 = v65;
            v66 = v65;
            v67 = v96;
            if (os_log_type_enabled(v96, v66))
            {
              v68 = swift_slowAlloc();
              v89 = v68;
              v88 = swift_slowAlloc();
              *&v130 = v88;
              *v68 = v91;
              v69 = v126;
              sub_224DABE58();
              sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
              v70 = sub_224DAFD28();
              v72 = v71;
              v73 = v69;
              v31 = v125;
              (*v129)(v73, v21);
              v74 = sub_224A33F74(v70, v72, &v130);

              v75 = v89;
              *(v89 + 1) = v74;
              v76 = v96;
              _os_log_impl(&dword_224A2F000, v96, v90, "Reloading snapshot for %{public}s because environment no longer matches.", v75, 0xCu);
              v77 = v88;
              __swift_destroy_boxed_opaque_existential_1(v88);
              MEMORY[0x22AA5EED0](v77, -1, -1);
              MEMORY[0x22AA5EED0](v89, -1, -1);
            }

            else
            {
            }

            (*v92)(v113, v63);
            LODWORD(v112) = 1;
          }

          __swift_destroy_boxed_opaque_existential_1(v133);
          result = (*v129)(v31, v21);
          v43 = v128;
          goto LABEL_5;
        }

        sub_224A3311C(&v130, &unk_27D6F3CB0, &unk_224DB7860);
        result = (*v129)(v31, v21);
        v44 = v37;
        v43 = v128;
        if (!v41)
        {
          goto LABEL_7;
        }
      }

      v78 = v102;
      v79 = v101;
      v80 = v100;
      v81 = v99;
      if (v112)
      {
        (*(v103 + 104))(v105, *MEMORY[0x277CF9B50], v104);
        (*(v106 + 104))(v108, *MEMORY[0x277CF9B40], v107);
        (*(v109 + 104))(v110, *MEMORY[0x277CF9BA8], v111);
        sub_224DACC48();
        sub_224DACC38();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
        v82 = sub_224DABE18();
        v83 = *(v82 - 8);
        v84 = *(v83 + 72);
        v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_224DB3100;
        (*(v83 + 16))(v86 + v85, v78, v82);
        sub_224D68AC0(v86, v81);
        swift_setDeallocating();
        (*(v83 + 8))(v86 + v85, v82);
        swift_deallocClassInstance();
        return (*(v80 + 8))(v81, v79);
      }
    }

    else
    {
LABEL_7:
      if (v42 <= v44 + 1)
      {
        v46 = v44 + 1;
      }

      else
      {
        v46 = v42;
      }

      v37 = v46 - 1;
      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v45 >= v42)
        {
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v61 - 8) + 56))(v29, 1, 1, v61);
          v41 = 0;
          goto LABEL_15;
        }

        v41 = *(v120 + 8 * v45);
        ++v44;
        if (v41)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_224D646AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B3E430(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224D64740(unint64_t a1, uint64_t *a2)
{
  v115 = a1;
  v116 = a2;
  v2 = sub_224DAB258();
  v114 = *(v2 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DABE18();
  v97 = *(v109 - 8);
  v6 = *(v97 + 64);
  v7 = MEMORY[0x28223BE20](v109);
  v108 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v90 - v10;
  MEMORY[0x28223BE20](v9);
  v95 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v107 = v90 - v18;
  v19 = sub_224DACB98();
  v111 = *(v19 - 8);
  v20 = *(v111 + 64);
  MEMORY[0x28223BE20](v19);
  v112 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_224DACB08();
  v22 = *(v106 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_224DACB28();
  v25 = *(v102 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v102);
  v103 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_224DACC88();
  v105 = *(v118 - 8);
  v28 = *(v105 + 64);
  v29 = MEMORY[0x28223BE20](v118);
  v31 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v90 - v32;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v117 = result;
    v35 = *(result + 328);
    v36 = sub_224DAC148();
    v113 = v17;
    v37 = v19;
    v38 = v115;

    v119 = v5;
    v110 = v2;
    v39 = sub_224D6E1B8(v36, v38);
    v99 = v11;
    v40 = v114;
    v41 = v39;
    v90[1] = 0;

    (*(v25 + 104))(v103, *MEMORY[0x277CF9B50], v102);
    (*(v22 + 104))(v104, *MEMORY[0x277CF9B40], v106);
    (*(v111 + 16))(v112, v116, v37);
    sub_224DACC48();
    v106 = v33;
    result = sub_224DACC38();
    v43 = 0;
    v44 = *(v41 + 64);
    v92 = v41 + 64;
    v96 = v41;
    v45 = 1 << *(v41 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v44;
    v104 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v103 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters;
    v91 = (v45 + 63) >> 6;
    v111 = v97 + 32;
    v112 = (v97 + 16);
    v102 = (v40 + 16);
    v116 = (v97 + 8);
    v101 = (v40 + 8);
    v100 = (v105 + 16);
    v105 += 8;
    *&v42 = 136446210;
    v93 = v42;
    v48 = v109;
    v49 = v119;
    v94 = v31;
LABEL_7:
    v51 = v113;
    if (!v47)
    {
      if (v91 <= (v43 + 1))
      {
        v53 = v43 + 1;
      }

      else
      {
        v53 = v91;
      }

      while (1)
      {
        v52 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_29;
        }

        if (v52 >= v91)
        {
          v62 = v48;
          v115 = v53 - 1;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
          (*(*(v89 - 8) + 56))(v51, 1, 1, v89);
          v47 = 0;
          goto LABEL_16;
        }

        v47 = *(v92 + 8 * v52);
        ++v43;
        if (v47)
        {
          goto LABEL_15;
        }
      }
    }

    v52 = v43;
LABEL_15:
    v54 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v55 = v54 | (v52 << 6);
    v56 = v96;
    v57 = v97;
    v58 = v95;
    (*(v97 + 16))(v95, *(v96 + 48) + *(v97 + 72) * v55, v48);
    v115 = *(*(v56 + 56) + 8 * v55);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v60 = *(v59 + 48);
    v61 = *(v57 + 32);
    v51 = v113;
    v62 = v48;
    v61(v113, v58, v48);
    *(v51 + v60) = v115;
    (*(*(v59 - 8) + 56))(v51, 0, 1, v59);

    v115 = v52;
    v49 = v119;
    v31 = v94;
LABEL_16:
    v63 = v107;
    sub_224A44E4C(v51, v107, &qword_27D6F6D30, &qword_224DC2F60);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v65 = (*(*(v64 - 8) + 48))(v63, 1, v64);
    v66 = v108;
    if (v65 != 1)
    {
      v67 = *(v63 + *(v64 + 48));

      v68 = v99;
      v69 = v62;
      (*v111)(v99, v63, v62);
      v70 = v117;
      v71 = v110;
      (*v102)(v49, &v104[v117], v110);
      (*v112)(v66, v68, v69);
      v72 = sub_224DAB228();
      v73 = v66;
      v74 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v74))
      {
        v75 = v69;
        v76 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v120 = v98;
        *v76 = v93;
        sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0]);
        v77 = sub_224DAFD28();
        v79 = v78;
        v114 = *v116;
        (v114)(v73, v75);
        v70 = v117;
        v80 = sub_224A33F74(v77, v79, &v120);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_224A2F000, v72, v74, "Reloading snapshots for %{public}s due to external trigger.", v76, 0xCu);
        v81 = v98;
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x22AA5EED0](v81, -1, -1);
        MEMORY[0x22AA5EED0](v76, -1, -1);

        (*v101)(v119, v110);
      }

      else
      {

        v114 = *v116;
        (v114)(v73, v69);
        (*v101)(v49, v71);
      }

      (*v100)(v31, v106, v118);
      v82 = *&v103[v70];
      result = v82 + 32;
      v83 = -*(v82 + 16);
      v84 = -1;
      while (1)
      {
        if (v83 + v84 == -1)
        {
          v50 = *(v117 + 328);
          sub_224DAC138();
LABEL_6:
          (*v105)(v31, v118);
          v48 = v109;
          result = (v114)(v68, v109);
          v43 = v115;
          v49 = v119;
          goto LABEL_7;
        }

        if (++v84 >= *(v82 + 16))
        {
          break;
        }

        v85 = result + 40;
        sub_224A3317C(result, &v120);
        v86 = v121;
        v87 = v122;
        __swift_project_boxed_opaque_existential_1(&v120, v121);
        v88 = (*(v87 + 8))(v68, v31, v86, v87);
        __swift_destroy_boxed_opaque_existential_1(&v120);
        result = v85;
        if ((v88 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    (*v105)(v106, v118);
  }

  return result;
}

uint64_t sub_224D6531C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_224DAE918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-v7];
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = v9;
    v33 = v6;
    (*(v10 + 16))(v13, result + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v9);
    v31 = *(v2 + 16);
    v31(v8, v34, v1);
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v18 = 136446210;
      sub_224A6018C(&qword_281350C28, MEMORY[0x277CE3D70]);
      v28 = v17;
      v19 = sub_224DAFD28();
      v21 = v20;
      (*(v2 + 8))(v8, v1);
      v22 = sub_224A33F74(v19, v21, &v35);

      v23 = v29;
      *(v29 + 1) = v22;
      v24 = v23;
      _os_log_impl(&dword_224A2F000, v16, v28, "Protection Type changed to %{public}s", v23, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }

    (*(v10 + 8))(v13, v32);
    v26 = *(v15 + 328);
    v31(v33, v34, v1);
    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224D65690(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 328);
    MEMORY[0x28223BE20](result);
    sub_224DAC128();
  }

  return result;
}

uint64_t sub_224D6573C(uint64_t a1, void *a2)
{
  v75 = sub_224DAC268();
  v3 = *(v75 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v75);
  v74 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v72 = &v55 - v9;
  v58 = a2;
  v10 = *(a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService + 24);
  v11 = *(a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService), v10);
  (*(v11 + 32))(v79, 768, v10, v11);
  if (!v80)
  {
    return sub_224A3311C(v79, &qword_27D6F50E0, &qword_224DB41A0);
  }

  if (!*(v80 + 16))
  {
    return sub_224A699F0(v79);
  }

  v13 = sub_224B3DF0C(v12);

  sub_224A699F0(v79);
  v14 = v58[28];
  __swift_project_boxed_opaque_existential_1(v58 + 24, v58[27]);
  if (!sub_224DAD8C8())
  {
  }

  v79[0] = MEMORY[0x277D84FA0];
  v15 = v13;
  v61 = v13;
  if (v13 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v61)
  {
    v17 = 0;
    v60 = v15 & 0xC000000000000001;
    v57 = v15 & 0xFFFFFFFFFFFFFF8;
    v56 = v15 + 32;
    v70 = (v3 + 8);
    v71 = (v3 + 16);
    v18 = &off_27853F000;
    v19 = &off_27853F000;
    v20 = &selRef_pairingState;
    v21 = &selRef_pairingState;
    v59 = i;
    while (1)
    {
      if (v60)
      {
        v22 = v17;
        v23 = MEMORY[0x22AA5DCC0](v17, v15);
      }

      else
      {
        if (v17 >= *(v57 + 16))
        {
          goto LABEL_45;
        }

        v22 = v17;
        v23 = *(v56 + 8 * v17);
      }

      v78 = v23;
      v24 = __OFADD__(v22, 1);
      v3 = v22 + 1;
      if (v24)
      {
        break;
      }

      v63 = v3;
      v25 = sub_224DACF28();
      v3 = v25;
      v27 = v26;
      if (v25 >> 62)
      {
        v28 = sub_224DAF838();
        if (v27 != v28)
        {
LABEL_15:
          v69 = v3 & 0xC000000000000001;
          v65 = v3 + 32;
          v66 = v3 & 0xFFFFFFFFFFFFFF8;
          v64 = v3;
          v67 = v28;
          while (1)
          {
            if (v69)
            {
              v29 = MEMORY[0x22AA5DCC0](v27, v3);
            }

            else
            {
              if ((v27 & 0x8000000000000000) != 0)
              {
                goto LABEL_42;
              }

              if (v27 >= *(v66 + 16))
              {
                goto LABEL_43;
              }

              v29 = *(v65 + 8 * v27);
            }

            v30 = v29;
            v24 = __OFADD__(v27++, 1);
            if (v24)
            {
              break;
            }

            v31 = [v29 v18[311]];
            v32 = [v31 v19[327]];

            if (v32)
            {
              [v30 supportedFamilies];
              v33 = sub_224DAF4C8();
              v34 = v33;
              v35 = *(v33 + 16);
              if (v35)
              {
                v68 = v27;
                v36 = 32;
                v76 = v33;
                v77 = v30;
                do
                {
                  v37 = *(v34 + v36);
                  v38 = [v30 v20[222]];
                  v39 = [v30 v21[223]];

                  if (v39)
                  {
                    v40 = [v78 metricsSpecification];
                    v41 = [v40 metricsForFamily_];

                    if (v41)
                    {
                      v42 = v39;
                      v43 = v41;
                      v44 = v72;
                      sub_224DAC238();
                      v45 = v21;
                      v47 = v74;
                      v46 = v75;
                      (*v71)(v74, v44, v75);
                      v48 = v73;
                      v49 = v47;
                      v21 = v45;
                      v30 = v77;
                      sub_224ADCAF4(v73, v49);

                      v50 = *v70;
                      (*v70)(v48, v46);
                      v51 = v44;
                      v34 = v76;
                      v52 = v46;
                      v20 = &selRef_pairingState;
                      v50(v51, v52);
                    }

                    else
                    {
                    }
                  }

                  v36 += 8;
                  --v35;
                }

                while (v35);

                v18 = &off_27853F000;
                v19 = &off_27853F000;
                v3 = v64;
                v27 = v68;
              }

              else
              {
              }

              v28 = v67;
            }

            else
            {
            }

            if (v27 == v28)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26 != v28)
        {
          goto LABEL_15;
        }
      }

LABEL_7:

      v17 = v63;
      v15 = v61;
      if (v63 == v59)
      {

        v54 = v79[0];
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    i = sub_224DAF838();
  }

  v54 = MEMORY[0x277D84FA0];
LABEL_48:
  sub_224D65D3C(v54);
}

uint64_t sub_224D65D3C(void *a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v118 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB848();
  v117 = *(v8 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v8);
  v116 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAB878();
  v114 = *(v115 - 8);
  v11 = *(v114 + 64);
  v12 = MEMORY[0x28223BE20](v115);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v110 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = &v104 - v19;
  v131 = sub_224DABE18();
  v142 = *(v131 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x28223BE20](v131);
  v135 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_224DAB258();
  v22 = *(v138 - 8);
  v23 = *(v22 + 8);
  MEMORY[0x28223BE20](v138);
  v139 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_224DAC268();
  v137 = *(v122 - 8);
  v25 = v137[8];
  v26 = MEMORY[0x28223BE20](v122);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v134 = &v104 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v136 = &v104 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v143 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v130 = &v104 - v35;
  v36 = sub_224DA9878();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  result = MEMORY[0x28223BE20](v36);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2])
  {
    v111 = v28;
    v107 = v8;
    v108 = v5;
    v109 = v4;
    sub_224DA9868();
    if (qword_27D6F2D28 != -1)
    {
LABEL_30:
      swift_once();
    }

    v106 = sub_224DAB798();
    v42 = __swift_project_value_buffer(v106, qword_27D6F6D08);
    v43 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_keysToFetch;
    swift_beginAccess();
    v44 = a1;
    a1 = v2;
    v105 = sub_224D6A368(v44, (v2 + v43), v45, v42, 5);
    swift_endAccess();
    (*(v37 + 8))(v41, v36);
    v46 = *(v2 + v43);

    v48 = sub_224AD7304(v47);
    v37 = 0;
    v141 = 0;
    v51 = v48 + 56;
    v50 = *(v48 + 56);
    v133 = v48;
    v52 = 1 << *(v48 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & v50;
    v128 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
    v55 = (v52 + 63) >> 6;
    v144 = (v137 + 2);
    v132 = v137 + 4;
    v126 = (v22 + 16);
    v145 = v137 + 1;
    v125 = (v22 + 8);
    v124 = (v142 + 8);
    *&v49 = 136446210;
    v120 = v49;
    v56 = v122;
    v36 = v136;
    v129 = v48 + 56;
    v127 = v55;
    v121 = v2;
    while (v54)
    {
      v58 = v2;
LABEL_14:
      v60 = v137;
      v61 = v137[2];
      v62 = v130;
      (v61)(v130, *(v133 + 48) + v137[9] * (__clz(__rbit64(v54)) | (v37 << 6)), v56);
      v63 = v60[4];
      v64 = v143;
      v123 = v63;
      v63(v143, v62, v56);
      v66 = v138;
      v65 = v139;
      (*v126)(v139, v58 + v128, v138);
      v140 = v61;
      (v61)(v36, v64, v56);
      v67 = sub_224DAB228();
      v68 = v66;
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v67, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock[0] = v71;
        *v70 = v120;
        sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
        v72 = sub_224DAFD28();
        v74 = v73;
        v142 = *v145;
        (v142)(v36, v56);
        v75 = sub_224A33F74(v72, v74, aBlock);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_224A2F000, v67, v69, "Prefetching snapshots for %{public}s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        v76 = v71;
        v2 = v121;
        MEMORY[0x22AA5EED0](v76, -1, -1);
        v77 = v70;
        v78 = v135;
        MEMORY[0x22AA5EED0](v77, -1, -1);

        (*v125)(v139, v138);
        v79 = v141;
      }

      else
      {

        v142 = *v145;
        (v142)(v36, v56);
        (*v125)(v65, v68);
        v79 = v141;
        v2 = v58;
        v78 = v135;
      }

      v22 = v143;
      v80 = v140;
      (v140)(v134, v143, v56);
      sub_224DABD88();
      a1 = v2[41];
      v81 = sub_224DAD288();
      v41 = &v104;
      LOBYTE(v146) = 0;
      MEMORY[0x28223BE20](v81);
      *(&v104 - 4) = v78;
      *(&v104 - 3) = v22;
      *(&v104 - 2) = v2;
      *(&v104 - 1) = &v146;
      sub_224DAC128();
      v141 = v79;
      if (v146 == 1)
      {
        v82 = v2[12];
        sub_224DAB348();
        v83 = sub_224DAC248();
        a1 = [v83 extensionIdentity];

        v84 = a1 + *MEMORY[0x277CFA128];
        swift_beginAccess();
        v41 = *(v84 + 1);

        if (v41)
        {

          v85 = v111;
          v80();
          v86 = v119;
          sub_224DAC218();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v87 = *(v41 - 1);
          v88 = (*(v87 + 48))(v86, 1, v41);
          sub_224A3311C(v86, &qword_27D6F56C0, &unk_224DB3580);
          if (v88 == 1)
          {
            sub_224DAC248();
            sub_224DAC258();
            if (qword_27D6F2C98 != -1)
            {
              swift_once();
            }

            v89 = __swift_project_value_buffer(v41, qword_27D6F7198);
            v90 = v110;
            (*(v87 + 16))(v110, v89, v41);
            (*(v87 + 56))(v90, 0, 1, v41);
            v91 = v134;
            sub_224DAC228();
            v41 = v122;
            (v142)(v85, v122);
            v123(v85, v91, v41);
            v78 = v135;
            v22 = v143;
          }

          a1 = v2;
          v92 = sub_224D6C2F8();
          if (v92)
          {
            v41 = v92;
            a1 = *__swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
            sub_224B55AAC(v85, v41);
          }

          v57 = v85;
          v56 = v122;
          (v142)(v57, v122);
        }
      }

      v54 &= v54 - 1;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      (*v124)(v78, v131);
      (v142)(v22, v56);
      v36 = v136;
      v51 = v129;
      v55 = v127;
    }

    while (1)
    {
      v59 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v59 >= v55)
      {
        break;
      }

      v54 = *(v51 + 8 * v59);
      ++v37;
      if (v54)
      {
        v58 = v2;
        v37 = v59;
        goto LABEL_14;
      }
    }

    v145 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_prefetchQueue);
    v93 = v112;
    sub_224DAB858();
    v94 = v2;
    if (qword_27D6F2D20 != -1)
    {
      swift_once();
    }

    v95 = __swift_project_value_buffer(v106, qword_27D6F6CF0);
    v96 = v113;
    MEMORY[0x22AA59C40](v93, v95);
    v144 = *(v114 + 8);
    v97 = v115;
    v144(v93, v115);
    v98 = swift_allocObject();
    v99 = v105;
    *(v98 + 16) = v94;
    *(v98 + 24) = v99;
    aBlock[4] = sub_224D6DDCC;
    aBlock[5] = v98;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_57;
    v100 = _Block_copy(aBlock);

    v101 = v116;
    sub_224DAB7E8();
    v146 = MEMORY[0x277D84F90];
    sub_224A6018C(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v102 = v118;
    v103 = v109;
    sub_224DAF788();
    MEMORY[0x22AA5D6A0](v96, v101, v102, v100);
    _Block_release(v100);
    (*(v108 + 8))(v102, v103);
    (*(v117 + 8))(v101, v107);
    v144(v96, v97);
  }

  return result;
}

uint64_t *sub_224D66CEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_224DAF838();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v4;
    }

    while (v6 != v3);
  }

  v7 = v1[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + 5);
  v8 = v1[10];

  v9 = v1[11];

  v10 = v1[12];

  v11 = v1[13];

  __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  __swift_destroy_boxed_opaque_existential_1(v1 + 19);
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + 29);
  v12 = v1[34];

  v13 = v1[35];

  __swift_destroy_boxed_opaque_existential_1(v1 + 36);
  v14 = v1[41];

  __swift_destroy_boxed_opaque_existential_1(v1 + 42);
  v15 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v16 = sub_224DAB258();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext);

  v18 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock);

  v19 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions);

  v20 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService));

  v21 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_keysToFetch);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver));
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider));
  return v1;
}

uint64_t sub_224D66F3C()
{
  sub_224D66CEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224D66F9C()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224D670B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, a1, v6);
  sub_224DABD88();
  v16 = *(v3 + 328);
  sub_224DAD288();
  v24 = 0;
  v20 = v15;
  v21 = a1;
  v22 = v3;
  v23 = &v24;
  sub_224DAC128();
  if (v24 == 1)
  {
    v17 = *(v3 + 96);
    sub_224DAB348();
    sub_224D67F90(a1);
  }

  sub_224A36F98(&v25, a2);
  return (*(v12 + 8))(v15, v11);
}

void sub_224D672A4(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v113 = a5;
  v112 = a4;
  v100 = sub_224DACB98();
  v98 = *(v100 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_224DACB08();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_224DACB28();
  v91 = *(v92 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v94 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_224DACC88();
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v111 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v79[-v18];
  v19 = sub_224DAE918();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v79[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v24 = &v79[-v23];
  v108 = sub_224DAC268();
  v106 = *(v108 - 8);
  v25 = *(v106 + 64);
  v26 = MEMORY[0x28223BE20](v108);
  v28 = &v79[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v105 = &v79[-v29];
  v89 = sub_224DABE18();
  v104 = *(v89 - 8);
  v30 = *(v104 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v79[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_224DAB258();
  v32 = *(v103 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v103);
  v107 = &v79[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD3D8();
  if (v118)
  {

    *v113 = 0;
    return;
  }

  v85 = v28;
  v87 = v24;
  v86 = a1;
  v36 = v103;
  (*(v32 + 16))(v107, v112 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v103);
  v37 = v88;
  v38 = a2;
  v39 = v89;
  (*(v104 + 16))(v88, a2, v89);
  v40 = *(v106 + 16);
  v41 = a3;
  v42 = v108;
  v83 = v106 + 16;
  v82 = v40;
  v40(v105, a3, v108);
  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();
  v45 = os_log_type_enabled(v43, v44);
  v84 = v38;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v117[0] = v81;
    *v46 = 136446466;
    sub_224A6018C(&qword_281350E70, MEMORY[0x277CF98E0]);
    v80 = v44;
    v47 = sub_224DAFD28();
    v48 = v37;
    v50 = v49;
    (*(v104 + 8))(v48, v39);
    v51 = sub_224A33F74(v47, v50, v117);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
    v52 = v105;
    v53 = sub_224DAFD28();
    v55 = v54;
    (*(v106 + 8))(v52, v42);
    v56 = sub_224A33F74(v53, v55, v117);

    *(v46 + 14) = v56;
    _os_log_impl(&dword_224A2F000, v43, v80, "%{public}s:%{public}s Creating entry", v46, 0x16u);
    v57 = v81;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v57, -1, -1);
    MEMORY[0x22AA5EED0](v46, -1, -1);

    (*(v32 + 8))(v107, v103);
  }

  else
  {

    (*(v106 + 8))(v105, v42);
    (*(v104 + 8))(v37, v39);
    (*(v32 + 8))(v107, v36);
  }

  v58 = v90;
  v106 = v41;
  v59 = sub_224DAC248();
  v60 = [v59 extensionIdentity];

  v61 = v112;
  sub_224A3317C((v112 + 42), v117);
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  v107 = v60;
  v62 = v114;
  sub_224DADBE8();
  v63 = v86;
  if (v62)
  {

    __swift_destroy_boxed_opaque_existential_1(v117);
    v65 = v109;
    v64 = v110;
    (*(v109 + 56))(v58, 1, 1, v110);
    v114 = 0;
    v66 = v99;
    v67 = v87;
    v68 = v98;
    goto LABEL_9;
  }

  v114 = 0;
  v65 = v109;
  v64 = v110;
  (*(v109 + 56))(v58, 0, 1, v110);
  __swift_destroy_boxed_opaque_existential_1(v117);
  v69 = (*(v65 + 48))(v58, 1, v64);
  v66 = v99;
  v67 = v87;
  v68 = v98;
  if (v69 == 1)
  {
LABEL_9:
    (*(v65 + 104))(v67, *MEMORY[0x277CE3D50], v64);
    if ((*(v65 + 48))(v58, 1, v64) != 1)
    {
      sub_224A3311C(v58, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_12;
  }

  (*(v65 + 32))(v87, v58, v64);
LABEL_12:
  v70 = v100;
  (*(v91 + 104))(v94, *MEMORY[0x277CF9B50], v92);
  (*(v95 + 104))(v97, *MEMORY[0x277CF9B40], v96);
  (*(v68 + 104))(v66, *MEMORY[0x277CF9BF0], v70);
  sub_224DACC48();
  sub_224DACC38();
  v71 = v61[18];
  __swift_project_boxed_opaque_existential_1(v61 + 14, v61[17]);
  sub_224DADA58();
  sub_224DABE88();
  v82(v85, v106, v108);
  v72 = v109;
  v73 = v67;
  v74 = v110;
  (*(v109 + 16))(v93, v73, v110);
  sub_224A3317C(v117, &v116);
  sub_224A3317C(v61 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver, v115);
  v75 = sub_224DABE48();
  v76 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v116 = v75;
  sub_224DAD3B8();
  v77 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v78 = v111;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v117);
  (*(v101 + 8))(v78, v102);
  (*(v72 + 8))(v87, v74);

  *v113 = 1;
}

void sub_224D67F90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_224DAC268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = sub_224DAC248();
  v20 = [v19 extensionIdentity];

  v21 = &v20[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v22 = *(v21 + 1);

  if (v22)
  {
    v31 = v2;

    (*(v12 + 16))(v18, a1, v11);
    sub_224DAC218();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v24 = *(v23 - 8);
    v25 = (*(v24 + 48))(v10, 1, v23);
    sub_224A3311C(v10, &qword_27D6F56C0, &unk_224DB3580);
    if (v25 == 1)
    {
      sub_224DAC248();
      sub_224DAC258();
      if (qword_27D6F2C98 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v23, qword_27D6F7198);
      (*(v24 + 16))(v8, v26, v23);
      (*(v24 + 56))(v8, 0, 1, v23);
      sub_224DAC228();
      (*(v12 + 8))(v18, v11);
      (*(v12 + 32))(v18, v16, v11);
    }

    v27 = v31;
    v28 = sub_224D6C2F8();
    if (v28)
    {
      v29 = v28;
      v30 = *__swift_project_boxed_opaque_existential_1((v27 + 152), *(v27 + 176));
      sub_224B55AAC(v18, v29);
    }

    (*(v12 + 8))(v18, v11);
  }
}

uint64_t sub_224D68324()
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v1 = *(*(v81 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v81);
  v80 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v79 = &v64 - v5;
  MEMORY[0x28223BE20](v4);
  v78 = &v64 - v6;
  v75 = sub_224DABE18();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v88 = MEMORY[0x277D84F90];
  v17 = *(v0 + 328);
  result = sub_224DAC148();
  v19 = 0;
  v20 = *(result + 64);
  v66 = result + 64;
  v71 = result;
  v21 = 1 << *(result + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v65 = (v21 + 63) >> 6;
  v68 = v7 + 16;
  v67 = v7 + 32;
  v70 = v7;
  v72 = (v7 + 8);
  v73 = v16;
  v74 = v14;
LABEL_6:
  if (v23)
  {
    v24 = v19;
LABEL_15:
    v77 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v24 << 6);
    v29 = v70;
    v28 = v71;
    v30 = v69;
    v31 = v75;
    (*(v70 + 16))(v69, *(v71 + 48) + *(v70 + 72) * v27, v75);
    v32 = *(*(v28 + 56) + 8 * v27);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v34 = *(v33 + 48);
    v35 = *(v29 + 32);
    v14 = v74;
    v35(v74, v30, v31);
    *&v14[v34] = v32;
    (*(*(v33 - 8) + 56))(v14, 0, 1, v33);

    v26 = v24;
    v16 = v73;
LABEL_16:
    sub_224A44E4C(v14, v16, &qword_27D6F6D30, &qword_224DC2F60);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
    {

      return v88;
    }

    v76 = v26;
    v37 = *&v16[*(v36 + 48)];
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v84 = v37;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    v82 = v42;
    v83 = v38;
    if (!v41)
    {
      goto LABEL_22;
    }

    do
    {
      v87 = v44;
LABEL_26:
      v46 = __clz(__rbit64(v41)) | (v43 << 6);
      v47 = v84;
      v48 = *(v84 + 48);
      v85 = sub_224DAC268();
      v49 = *(v85 - 8);
      v50 = v78;
      (*(v49 + 16))(v78, v48 + *(v49 + 72) * v46, v85);
      v51 = *(*(v47 + 56) + 8 * v46);
      v52 = v81;
      *(v50 + *(v81 + 48)) = v51;
      v53 = v79;
      sub_224A3796C(v50, v79, &qword_27D6F47F8, &unk_224DC2000);
      v54 = *(v53 + *(v52 + 48));
      v55 = v51;

      v86 = sub_224DAC248();
      v56 = *(v49 + 8);
      v57 = v85;
      v56(v53, v85);
      v58 = v80;
      sub_224A3796C(v50, v80, &qword_27D6F47F8, &unk_224DC2000);

      v59 = sub_224DAC258();
      sub_224A3311C(v50, &qword_27D6F47F8, &unk_224DC2000);
      v56(v58, v57);
      v44 = v87;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_224AD9600(0, v44[2] + 1, 1, v44);
        v44 = result;
      }

      v61 = v44[2];
      v60 = v44[3];
      v42 = v82;
      if (v61 >= v60 >> 1)
      {
        result = sub_224AD9600((v60 > 1), v61 + 1, 1, v44);
        v44 = result;
      }

      v41 &= v41 - 1;
      v44[2] = v61 + 1;
      v62 = &v44[2 * v61];
      v62[4] = v86;
      v62[5] = v59;
      v38 = v83;
    }

    while (v41);
LABEL_22:
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v42)
      {

        sub_224B42A30(v44);
        v16 = v73;
        result = (*v72)(v73, v75);
        v19 = v76;
        v23 = v77;
        v14 = v74;
        goto LABEL_6;
      }

      v41 = *(v38 + 8 * v45);
      ++v43;
      if (v41)
      {
        v87 = v44;
        v43 = v45;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    if (v65 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = v65;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v65)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
        (*(*(v63 - 8) + 56))(v14, 1, 1, v63);
        v77 = 0;
        goto LABEL_16;
      }

      v23 = *(v66 + 8 * v24);
      ++v19;
      if (v23)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D68A2C(uint64_t a1)
{
  v3 = *(v1 + 328);
  v4 = sub_224DAC148();
  if (*(v4 + 16) && (v5 = sub_224B0BDA0(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = sub_224D5CF3C(v7);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_224D68AC0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_224DACC88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 16);
  if (v39)
  {
    v14 = 0;
    v15 = *(v33 + 328);
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v36 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v37 = v17;
    v30 = (v4 + 16);
    v31 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters;
    v27 = (v4 + 8);
    v28 = v8;
    v38 = v16;
    v18 = *(v16 + 56);
    v34 = (v16 - 8);
    v35 = v18;
    v29 = v3;
    v26 = v15;
    v17(v13, v36, v8);
    while (!sub_224DAC168())
    {
LABEL_5:
      ++v14;
      result = (*v34)(v13, v8);
      if (v14 == v39)
      {
        return result;
      }

      v37(v13, v36 + v35 * v14, v8);
    }

    (*v30)(v7, v32, v3);
    v19 = *(v33 + v31);
    result = v19 + 32;
    v20 = -*(v19 + 16);
    v21 = -1;
    while (1)
    {
      if (v20 + v21 == -1)
      {
        sub_224DAC138();
LABEL_4:
        v3 = v29;
        (*v27)(v7, v29);
        v8 = v28;
        goto LABEL_5;
      }

      if (++v21 >= *(v19 + 16))
      {
        break;
      }

      v22 = result + 40;
      sub_224A3317C(result, v40);
      v23 = v41;
      v24 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v25 = (*(v24 + 8))(v13, v7, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v40);
      result = v22;
      if ((v25 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224D68DAC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v37 = a1;
  v2 = sub_224DACB98();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DACB08();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_224DACB28();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DACC88();
  v41 = *(v43 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAC268();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DABE18();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v37, v14);
  sub_224DABD88();
  (*(v8 + 104))(v11, *MEMORY[0x277CF9B50], v33);
  (*(v35 + 104))(v34, *MEMORY[0x277CF9B40], v36);
  (*(v39 + 16))(v38, v42, v40);
  sub_224DACC48();
  v25 = v32;
  sub_224DACC38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v26 = *(v20 + 72);
  v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_224DB3100;
  (*(v21 + 16))(v28 + v27, v24, v19);
  sub_224D68AC0(v28, v25);
  swift_setDeallocating();
  v29 = *(v21 + 8);
  v29(v28 + v27, v19);
  swift_deallocClassInstance();
  (*(v41 + 8))(v25, v43);
  return (v29)(v24, v19);
}

uint64_t sub_224D69264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB6B8();
  *a1 = result;
  return result;
}

uint64_t sub_224D692BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_224A3796C(a1, &v6 - v4, &qword_27D6F6D20, &unk_224DC1FE0);
  return sub_224DAB6A8();
}

uint64_t sub_224D69364(void *a1, uint64_t a2)
{
  v5 = sub_224DABE18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_224DAD3C8();
  v25 = a2;
  v12 = sub_224AD8604(sub_224D6E428, v24, v11);

  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v21[0] = v13;
    v21[1] = v2;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v22 = *(v15 + 56);
    v23 = v16;
    v26 = v15;
    v18 = (v15 - 8);
    do
    {
      v23(v9, v17, v5);
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_224DAD3F8();
      (*v18)(v9, v5);
      v17 += v22;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_224D69540@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v6 = sub_224DABDB8();
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = sub_224DAE338();
  v9 = sub_224DAF6A8();

  v10 = sub_224DABE18();
  v11 = *(v10 - 8);
  if (v9)
  {
    (*(*(v10 - 8) + 16))(a3, a1, v10);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

uint64_t sub_224D69678(void *a1, uint64_t a2, uint64_t a3)
{
  v96 = sub_224DACB98();
  v94 = *(v96 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_224DACB08();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_224DACB28();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DACC88();
  v112 = *(v119 - 8);
  v12 = *(v112 + 64);
  v13 = MEMORY[0x28223BE20](v119);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v87 - v16;
  v17 = sub_224DABE18();
  v114 = *(v17 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v87 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v102 = &v87 - v26;
  MEMORY[0x28223BE20](v25);
  v103 = (&v87 - v27);
  v28 = sub_224DAB258();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v117 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v36 = &v87 - v33;
  v100 = a1;
  v120 = v17;
  v125 = v21;
  v110 = a3;
  v118 = v32;
  v97 = v35;
  if (a2)
  {

    v38 = sub_224A3DADC(v37);

    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v107 = *(result + 16);
    if (v107)
    {
      v41 = 0;
      v105 = v114 + 16;
      v104 = (v38 & 0xC000000000000001);
      v42 = v38 & 0xFFFFFFFFFFFFFF8;
      if (v38 < 0)
      {
        v42 = v38;
      }

      *&v99 = v42;
      v116 = (v38 + 56);
      v101 = (v114 + 32);
      v98 = (v114 + 8);
      v43 = MEMORY[0x277D84F90];
      v17 = v120;
      v44 = v38;
      v45 = v103;
      v121 = v44;
      v106 = result;
      while (1)
      {
        if (v41 >= *(result + 16))
        {
          goto LABEL_47;
        }

        v115 = ((*(v114 + 80) + 32) & ~*(v114 + 80));
        v109 = *(v114 + 72);
        (*(v114 + 16))(v45, v115 + result + v109 * v41, v17);
        v46 = sub_224DABDB8();
        if (v104)
        {
          v47 = sub_224DAF888();

          if (v47)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v113 = v43;
          if (*(v44 + 16))
          {
            sub_224DAF538();
            v52 = *(v44 + 40);
            v53 = sub_224DAF698();
            v54 = -1 << *(v44 + 32);
            v55 = v53 & ~v54;
            if ((*&v116[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55))
            {
              v56 = ~v54;
              while (1)
              {
                v57 = *(*(v44 + 48) + 8 * v55);
                v58 = sub_224DAF6A8();

                if (v58)
                {
                  break;
                }

                v55 = (v55 + 1) & v56;
                v44 = v121;
                if (((*&v116[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) == 0)
                {
                  goto LABEL_6;
                }
              }

              v21 = v125;
              v43 = v113;
              v45 = v103;
LABEL_12:
              v48 = *v101;
              (*v101)(v102, v45, v120);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v122 = v43;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA49C(0, *(v43 + 16) + 1, 1);
                v43 = v122;
              }

              v51 = *(v43 + 16);
              v50 = *(v43 + 24);
              if (v51 >= v50 >> 1)
              {
                sub_224ADA49C(v50 > 1, v51 + 1, 1);
                v43 = v122;
              }

              *(v43 + 16) = v51 + 1;
              v17 = v120;
              v48(v115 + v43 + v51 * v109, v102, v120);
              v45 = v103;
              v44 = v121;
              goto LABEL_8;
            }
          }

LABEL_6:

          v21 = v125;
          v43 = v113;
          v45 = v103;
        }

        v17 = v120;
        (*v98)(v45, v120);
LABEL_8:
        ++v41;
        result = v106;
        if (v41 == v107)
        {
          goto LABEL_28;
        }
      }
    }

    v43 = MEMORY[0x277D84F90];
    v17 = v120;
LABEL_28:

    v64 = v43;
    a3 = v110;
  }

  else
  {
    (*(v35 + 16))(&v87 - v33, a3 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v34);
    v59 = sub_224DAB228();
    v60 = sub_224DAF2A8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_224A2F000, v59, v60, "Locale change detected - reloading all snapshots", v61, 2u);
      v62 = v61;
      v17 = v120;
      MEMORY[0x22AA5EED0](v62, -1, -1);
    }

    (*(v97 + 8))(v36, v118);
    v63 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v64 = sub_224DAD3C8();
  }

  (*(v88 + 104))(v90, *MEMORY[0x277CF9B50], v89);
  (*(v91 + 104))(v93, *MEMORY[0x277CF9B40], v92);
  (*(v94 + 104))(v95, *MEMORY[0x277CF9BA8], v96);
  sub_224DACC48();
  result = sub_224DACC38();
  v109 = *(v64 + 16);
  if (!v109)
  {

    v72 = *(v112 + 8);
    return (v72)(v111, v119);
  }

  v66 = 0;
  v67 = *(a3 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters);
  v107 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v68 = *(v67 + 16);
  v69 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v113 = v64;
  v106 = v64 + v69;
  v105 = v114 + 16;
  v104 = (v97 + 16);
  v116 = (v114 + 8);
  v103 = (v97 + 8);
  v102 = (v112 + 16);
  v101 = (v67 + 32);
  v112 += 8;
  v70 = -v68;
  *&v65 = 138543362;
  v99 = v65;
  v108 = v15;
  while (2)
  {
    if (v66 < *(v113 + 16))
    {
      v73 = *(v114 + 72);
      v121 = v66;
      v74 = *(v114 + 16);
      v74(v24, v106 + v73 * v66, v17);
      (*v104)(v117, v110 + v107, v118);
      v74(v21, v24, v17);
      v75 = sub_224DAB228();
      v76 = v17;
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v99;
        v80 = sub_224DABDB8();
        v115 = *v116;
        v115(v125, v76);
        *(v78 + 4) = v80;
        *v79 = v80;
        _os_log_impl(&dword_224A2F000, v75, v77, "Locale change detected - reloading snapshots for  %{public}@", v78, 0xCu);
        sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v79, -1, -1);
        v81 = v78;
        v21 = v125;
        MEMORY[0x22AA5EED0](v81, -1, -1);
      }

      else
      {

        v115 = *v116;
        v115(v21, v76);
      }

      ++v121;
      (*v103)(v117, v118);
      v82 = v108;
      (*v102)(v108, v111, v119);
      v83 = -1;
      result = v101;
      while (v70 + v83 != -1)
      {
        if (++v83 >= *(v67 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        v84 = result + 40;
        sub_224A3317C(result, &v122);
        v85 = v123;
        v86 = v124;
        __swift_project_boxed_opaque_existential_1(&v122, v123);
        LOBYTE(v85) = (*(v86 + 8))(v24, v82, v85, v86);
        __swift_destroy_boxed_opaque_existential_1(&v122);
        result = v84;
        v21 = v125;
        if ((v85 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v71 = v100[4];
      __swift_project_boxed_opaque_existential_1(v100, v100[3]);
      sub_224DAD3E8();
LABEL_32:
      v72 = *v112;
      (*v112)(v82, v119);
      v17 = v120;
      result = (v115)(v24, v120);
      v66 = v121;
      if (v121 != v109)
      {
        continue;
      }

      return (v72)(v111, v119);
    }

    break;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_224D6A368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v204 = a5;
  v239 = a4;
  v242 = sub_224DAB258();
  v262 = *(v242 - 8);
  v7 = v262[8];
  v8 = MEMORY[0x28223BE20](v242);
  v208 = &v200[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v259 = &v200[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v203 = &v200[-v13];
  v238 = sub_224DAB798();
  v14 = *(v238 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v238);
  v237 = &v200[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v236 = &v200[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v218 = &v200[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v210 = &v200[-v23];
  v216 = sub_224DA9688();
  v260 = *(v216 - 8);
  v24 = *(v260 + 8);
  v25 = MEMORY[0x28223BE20](v216);
  v207 = &v200[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v246 = &v200[-v27];
  v261 = sub_224DA9878();
  v28 = *(v261 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v261);
  v231 = &v200[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v230 = &v200[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v200[-v35];
  MEMORY[0x28223BE20](v34);
  v254 = &v200[-v37];
  v38 = sub_224DAC268();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v202 = &v200[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v222 = &v200[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v212 = &v200[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v205 = &v200[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v200[-v50];
  MEMORY[0x28223BE20](v49);
  v227 = &v200[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D40, &qword_224DC2020);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v248 = &v200[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55);
  v240 = &v200[-v57];
  v58 = *a2;
  v59 = *(*a2 + 64);
  v241 = *a2 + 64;
  v265 = a1;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v59;
  v226 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger;
  v214 = (v60 + 63) >> 6;
  v252 = (v39 + 16);
  v253 = (v28 + 16);
  v255 = (v39 + 32);
  v258 = (v28 + 32);
  v225 = v262 + 2;
  v249 = v39;
  v247 = (v39 + 8);
  v224 = v262 + 1;
  v215 = (v260 + 8);
  v223 = (v28 + 56);
  v235 = (v14 + 16);
  v234 = (v14 + 88);
  v233 = *MEMORY[0x277D85188];
  v219 = *MEMORY[0x277D85178];
  v211 = *MEMORY[0x277D85170];
  v206 = *MEMORY[0x277D85168];
  v201 = *MEMORY[0x277D85180];
  v232 = (v14 + 8);
  v244 = v28;
  v251 = (v28 + 8);
  v229 = (v14 + 96);
  v209 = a1;

  v63 = 0;
  v64 = 0;
  *&v65 = 136446466;
  v213 = v65;
  v228 = v58;
  v245 = v58;
  v217 = a2;
  v66 = v51;
  v263 = v38;
  v67 = v259;
  v257 = v36;
  v260 = v51;
  while (v62)
  {
    v68 = v263;
    v262 = v64;
    v69 = v63;
LABEL_16:
    v256 = (v62 - 1) & v62;
    v73 = __clz(__rbit64(v62)) | (v69 << 6);
    v74 = v228;
    v75 = v249;
    v76 = v227;
    (*(v249 + 16))(v227, *(v228 + 48) + *(v249 + 72) * v73, v68);
    v77 = v244;
    v78 = *(v74 + 56) + *(v244 + 72) * v73;
    v79 = v254;
    v80 = v261;
    (*(v244 + 16))(v254, v78, v261);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
    v82 = *(v81 + 48);
    v83 = *(v75 + 32);
    v72 = v248;
    v83(v248, v76, v68);
    (*(v77 + 32))(v72 + v82, v79, v80);
    (*(*(v81 - 8) + 56))(v72, 0, 1, v81);
    v64 = v262;
    v67 = v259;
    v66 = v260;
    v36 = v257;
LABEL_17:
    v84 = v240;
    sub_224A44E4C(v72, v240, &qword_27D6F6D40, &qword_224DC2020);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
    if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
    {
      v262 = v64;

      v149 = v209 + 56;
      v150 = 1 << *(v209 + 32);
      v151 = -1;
      if (v150 < 64)
      {
        v151 = ~(-1 << v150);
      }

      v152 = v151 & *(v209 + 56);
      v153 = (v150 + 63) >> 6;

      v154 = 0;
      v64 = v212;
      v155 = v243;
      v260 = v149;
      v261 = v153;
      while (v152)
      {
LABEL_58:
        v157 = v249;
        v158 = *(v249 + 16);
        v159 = v205;
        v160 = v263;
        v158(v205, *(v209 + 48) + *(v249 + 72) * (__clz(__rbit64(v152)) | (v154 << 6)), v263);
        (*(v157 + 32))(v64, v159, v160);
        v161 = v155[3];
        v162 = v155[4];
        swift_getObjectType();
        v163 = *(v162 + 8);
        v164 = v212;
        v165 = v207;
        v166 = v262;
        sub_224DAC3F8();
        v262 = v166;
        if (v166)
        {
          v167 = v155 + v226;
          v168 = v242;
          (*v225)(v208, v167, v242);
          v169 = v202;
          v158(v202, v164, v263);
          v170 = v166;
          v171 = sub_224DAB228();
          v172 = sub_224DAF288();

          v173 = os_log_type_enabled(v171, v172);
          v174 = v247;
          if (v173)
          {
            v175 = v166;
            v176 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v264 = v259;
            *v176 = v213;
            sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
            v177 = sub_224DAFD28();
            LODWORD(v257) = v172;
            v179 = v178;
            v180 = *v174;
            (*v174)(v169, v263);
            v181 = sub_224A33F74(v177, v179, &v264);

            *(v176 + 4) = v181;
            *(v176 + 12) = 2114;
            v182 = v175;
            v183 = _swift_stdlib_bridgeErrorToNSError();
            *(v176 + 14) = v183;
            v184 = v258;
            *v258 = v183;
            _os_log_impl(&dword_224A2F000, v171, v257, "Failed to get url for %{public}s error: %{public}@, Prefetching snapshots anyway", v176, 0x16u);
            sub_224A3311C(v184, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v184, -1, -1);
            v185 = v259;
            __swift_destroy_boxed_opaque_existential_1(v259);
            MEMORY[0x22AA5EED0](v185, -1, -1);
            v186 = v176;
            v149 = v260;
            MEMORY[0x22AA5EED0](v186, -1, -1);

            v66 = v180;
            (*v224)(v208, v242);
          }

          else
          {

            v66 = *v174;
            (*v174)(v169, v263);
            (*v224)(v208, v168);
          }

          v194 = v217;
          v64 = v212;
          if (*(v245 + 16) == v204)
          {
            goto LABEL_70;
          }

          v195 = v254;
          sub_224DA9868();
          v196 = *v194;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v264 = *v194;
          sub_224B23E3C(v195, v64, isUniquelyReferenced_nonNull_native);
          v245 = v264;
          *v194 = v264;
          v198 = v203;
          sub_224B0331C(v64, v203);

          sub_224A3311C(v198, &qword_27D6F4A18, &qword_224DB9070);
          v262 = 0;
        }

        else
        {
          v187 = v155[9];
          __swift_project_boxed_opaque_existential_1(v155 + 5, v155[8]);
          sub_224DA9648();
          v188 = sub_224DAA378();

          if (v188)
          {
            (*v215)(v165, v216);
            v66 = *v247;
            v64 = v212;
            v149 = v260;
          }

          else
          {
            v189 = v217;
            v64 = v212;
            v149 = v260;
            if (*(v245 + 16) == v204)
            {

              (*v215)(v207, v216);
              (*v247)(v64, v263);
              return v265;
            }

            v190 = v254;
            sub_224DA9868();
            v191 = *v189;
            v192 = swift_isUniquelyReferenced_nonNull_native();
            v264 = *v189;
            sub_224B23E3C(v190, v64, v192);
            v245 = v264;
            *v189 = v264;
            v193 = v203;
            sub_224B0331C(v64, v203);
            sub_224A3311C(v193, &qword_27D6F4A18, &qword_224DB9070);
            (*v215)(v207, v216);
            v66 = *v247;
          }
        }

        v152 &= v152 - 1;
        v66(v64, v263);
        v155 = v243;
        v153 = v261;
      }

      while (1)
      {
        v156 = v154 + 1;
        if (__OFADD__(v154, 1))
        {
          break;
        }

        if (v156 >= v153)
        {

          return v265;
        }

        v152 = *(v149 + 8 * v156);
        ++v154;
        if (v152)
        {
          v154 = v156;
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_73:
      result = sub_224DAFB58();
      __break(1u);
      return result;
    }

    v86 = *(v85 + 48);
    (*v255)(v66, v84, v263);
    v250 = *v258;
    v250(v36, &v84[v86], v261);
    v87 = v243;
    v89 = v243[3];
    v88 = v243[4];
    swift_getObjectType();
    v90 = *(v88 + 8);
    v91 = v246;
    sub_224DAC3F8();
    if (v64)
    {
      v92 = v242;
      (*v225)(v67, v87 + v226, v242);
      v93 = v222;
      v94 = v263;
      (*v252)(v222, v66, v263);
      v95 = v64;
      v96 = v94;
      v97 = v67;
      v98 = sub_224DAB228();
      v99 = sub_224DAF288();

      v100 = os_log_type_enabled(v98, v99);
      v62 = v256;
      if (v100)
      {
        v101 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        v264 = v262;
        *v101 = v213;
        sub_224A6018C(&qword_281350E40, MEMORY[0x277CF9978]);
        v220 = v99;
        v102 = v96;
        v103 = sub_224DAFD28();
        v105 = v104;
        v106 = v247;
        (*v247)(v93, v102);
        v107 = sub_224A33F74(v103, v105, &v264);

        *(v101 + 4) = v107;
        *(v101 + 12) = 2114;
        v108 = v64;
        v109 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 14) = v109;
        v110 = v221;
        *v221 = v109;
        _os_log_impl(&dword_224A2F000, v98, v220, "Failed to get url for %{public}s error: %{public}@", v101, 0x16u);
        sub_224A3311C(v110, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v110, -1, -1);
        v111 = v262;
        __swift_destroy_boxed_opaque_existential_1(v262);
        MEMORY[0x22AA5EED0](v111, -1, -1);
        MEMORY[0x22AA5EED0](v101, -1, -1);

        (*v224)(v259, v242);
        v262 = 0;
        v112 = v106;
      }

      else
      {

        v112 = v247;
        (*v247)(v93, v96);
        (*v224)(v97, v92);
        v262 = 0;
      }

      goto LABEL_29;
    }

    v262 = 0;
    v113 = v87[9];
    __swift_project_boxed_opaque_existential_1(v87 + 5, v87[8]);
    sub_224DA9648();
    v114 = sub_224DAA378();

    v62 = v256;
    if ((v114 & 1) == 0)
    {
      (*v215)(v91, v216);
      v112 = v247;
LABEL_29:
      v126 = v238;
      v116 = v237;
      v127 = v236;
      goto LABEL_30;
    }

    v115 = sub_224A61E5C(v260);
    v112 = v247;
    v116 = v237;
    v117 = v210;
    if (v118)
    {
      v119 = v115;
      v120 = v217;
      v121 = *v217;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v123 = *v120;
      v264 = *v120;
      if (!v122)
      {
        sub_224B2B050();
        v123 = v264;
      }

      (*(v249 + 8))(*(v123 + 48) + *(v249 + 72) * v119, v263);
      v124 = v261;
      v250(v117, (*(v123 + 56) + *(v244 + 72) * v119), v261);
      sub_224B1EC10(v119, v123);
      (*v215)(v246, v216);
      v125 = 0;
      v245 = v123;
      *v120 = v123;
      v126 = v238;
      v127 = v236;
    }

    else
    {
      (*v215)(v246, v216);
      v125 = 1;
      v126 = v238;
      v127 = v236;
      v124 = v261;
    }

    (*v223)(v117, v125, 1, v124);
    sub_224A3311C(v117, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_30:
    v36 = v257;
    v129 = *v235;
    (*v235)(v127, v239, v126);
    v129(v116, v127, v126);
    v130 = (*v234)(v116, v126);
    if (v130 == v233)
    {
      (*v232)(v127, v126);
      (*v229)(v116, v126);
      v131 = *v116;
      v132 = v251;
      goto LABEL_37;
    }

    v132 = v251;
    if (v130 == v219 || v130 == v211 || v130 == v206)
    {
      (*v232)(v127, v126);
      (*v229)(v116, v126);
      v133 = *v116;
LABEL_37:
      v134 = v254;
      sub_224DA9868();
      v135 = v261;
      (*v253)(v231, v36, v261);
      v136 = v230;
      sub_224DA9738();
      v137 = sub_224DA9788();
      v138 = *v132;
      (*v132)(v136, v135);
      v138(v134, v135);
      if (v137)
      {
        v139 = sub_224A61E5C(v260);
        if (v140)
        {
          v141 = v139;
          v142 = v217;
          v143 = *v217;
          v144 = swift_isUniquelyReferenced_nonNull_native();
          v145 = *v142;
          v264 = *v142;
          if (!v144)
          {
            sub_224B2B050();
            v145 = v264;
          }

          (*(v249 + 8))(*(v145 + 48) + *(v249 + 72) * v141, v263);
          v146 = v218;
          v147 = v261;
          v250(v218, (*(v145 + 56) + *(v244 + 72) * v141), v261);
          sub_224B1EC10(v141, v145);
          v148 = 0;
          v245 = v145;
          *v142 = v145;
          v36 = v257;
        }

        else
        {
          v148 = 1;
          v146 = v218;
          v147 = v261;
        }

        (*v223)(v146, v148, 1, v147);
        sub_224A3311C(v146, &qword_27D6F32B0, &qword_224DB3EA0);
        v138(v36, v147);
      }

      else
      {
        v138(v36, v135);
      }

      goto LABEL_5;
    }

    if (v130 != v201)
    {
      goto LABEL_73;
    }

    (*v232)(v127, v126);
    (*v132)(v36, v261);
LABEL_5:
    v66 = v260;
    (*v112)(v260, v263);
    v64 = v262;
    v67 = v259;
  }

  if (v214 <= v63 + 1)
  {
    v70 = v63 + 1;
  }

  else
  {
    v70 = v214;
  }

  v71 = v70 - 1;
  v72 = v248;
  while (1)
  {
    v69 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v69 >= v214)
    {
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D48, &qword_224DC2028);
      (*(*(v128 - 8) + 56))(v72, 1, 1, v128);
      v256 = 0;
      v63 = v71;
      goto LABEL_17;
    }

    v62 = *(v241 + 8 * v69);
    ++v63;
    if (v62)
    {
      v68 = v263;
      v262 = v64;
      v63 = v69;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_70:
  v66(v64, v263);

  return v265;
}

uint64_t sub_224D6BDD4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_224DAC268();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = a1;
  v14 = a2;
  sub_224DAC238();
  sub_224D670B0(v11, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224D6BED4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_224D6BF00()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext);

  v2 = sub_224DADDD8();

  return v2;
}

uint64_t sub_224D6BFB0(uint64_t a1, unint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_224DACC88();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAC268();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DABE18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  (*(v8 + 16))(v11, v23, v7);
  sub_224DABD88();
  sub_224A8571C(v24, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v18 = *(v13 + 72);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_224DB3100;
  (*(v13 + 16))(v20 + v19, v16, v12);
  sub_224D68AC0(v20, v6);
  swift_setDeallocating();
  v21 = *(v13 + 8);
  v21(v20 + v19, v12);
  swift_deallocClassInstance();
  (*(v25 + 8))(v6, v26);
  return (v21)(v16, v12);
}

uint64_t sub_224D6C26C()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D28, &unk_224DC1FF0);
  return sub_224DAEE28();
}

uint64_t sub_224D6C2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D20, &unk_224DC1FE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v52 - v2;
  v66 = sub_224DAE588();
  v59 = *(v66 - 8);
  v3 = *(v59 + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_224DAD158();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DA9908();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA98F8();
  sub_224DA9898();
  (*(v16 + 8))(v19, v15);
  v20 = sub_224DAC248();
  v21 = sub_224DAC258();
  v22 = objc_allocWithZone(MEMORY[0x277CFA288]);
  v23 = sub_224DAEDE8();

  v24 = [v22 initWithUniqueIdentifier:v23 widget:v20 metrics:v21];

  v25 = v60;
  v26 = *(v63 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext);

  sub_224DADDE8();

  if ((*(v25 + 48))(v10, 1, v11) == 1)
  {
    sub_224A3311C(v10, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    v27 = *(v25 + 32);
    v55 = v11;
    v27(v14, v10, v11);
    v28 = sub_224DAD088();
    v53 = v24;
    [v24 setSupportedColorSchemes_];
    v54 = v14;
    v29 = sub_224DAD0B8();
    v56 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    v30 = *(v29 + 56);
    v57 = v29 + 56;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v34 = (v31 + 63) >> 6;
    v35 = v59;
    v61 = v59 + 8;
    v62 = v59 + 16;
    v63 = v29;

    v37 = 0;
    if (!v33)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v38 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v39 = v64;
        v40 = *(v35 + 16);
        v41 = v66;
        v40(v64, *(v63 + 48) + *(v35 + 72) * (v38 | (v37 << 6)), v66);
        sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
        v40(v65, v39, v41);
        v42 = sub_224DAF588();
        result = (*(v35 + 8))(v39, v41);
        if (v42)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_8;
        }
      }

      MEMORY[0x22AA5D350](result);
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      result = sub_224DAF078();
      v56 = v67;
    }

    while (v33);
    while (1)
    {
LABEL_8:
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return result;
      }

      if (v43 >= v34)
      {
        break;
      }

      v33 = *(v57 + 8 * v43);
      ++v37;
      if (v33)
      {
        v37 = v43;
        goto LABEL_6;
      }
    }

    sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
    v44 = sub_224DAEFF8();

    v24 = v53;
    [v53 setSupportedRenderSchemes_];

    v45 = v54;
    v46 = sub_224DAD128();
    v47 = sub_224D5D284(v46);

    if (v47)
    {
      [v24 setDisplayProperties_];
    }

    [v24 setShowsWidgetLabel_];
    [v24 setSupportedProximities_];
    v48 = v58;
    sub_224DAD0D8();
    v49 = sub_224DA9428();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      sub_224A3311C(v48, &qword_27D6F6D20, &unk_224DC1FE0);
      v51 = 0;
    }

    else
    {
      v51 = sub_224DA9418();
      (*(v50 + 8))(v48, v49);
    }

    [v24 setIdealizedDateComponents_];

    (*(v60 + 8))(v45, v55);
  }

  return v24;
}

uint64_t sub_224D6CA20()
{
  v2 = v1;
  v55 = sub_224DA9688();
  v52 = *(v55 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v49 = v48 - v8;
  MEMORY[0x28223BE20](v7);
  v54 = v48 - v9;
  v64 = sub_224DAC268();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v64);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  v17 = sub_224D68324();
  v18 = *(v17 + 16);
  v50 = v16;
  v51 = v6;
  if (v18)
  {
    v62 = v0;
    v56 = v1;
    v65 = MEMORY[0x277D84F90];
    v19 = v17;
    sub_224ADA224(0, v18, 0);
    v20 = v65;
    v63 = (v10 + 32);
    v61 = v19;
    v21 = (v19 + 40);
    do
    {
      v22 = *v21;
      v23 = *(v21 - 1);
      v24 = v22;
      sub_224DAC238();
      v65 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_224ADA224(v25 > 1, v26 + 1, 1);
        v20 = v65;
      }

      *(v20 + 16) = v26 + 1;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v14, v64);
      v21 += 2;
      --v18;
    }

    while (v18);

    v2 = v56;
    v16 = v50;
    v6 = v51;
    v0 = v62;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v27 = *(v20 + 16);
  v28 = v64;
  if (v27)
  {
    v29 = *(v0 + 24);
    v61 = *(v0 + 32);
    v62 = v29;
    ObjectType = swift_getObjectType();
    v32 = *(v10 + 16);
    v31 = v10 + 16;
    v59 = v32;
    v60 = ObjectType;
    v33 = v20 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v34 = *(v31 + 56);
    v57 = (v31 - 8);
    v58 = v34;
    v48[0] = v52 + 8;
    v53 = (v52 + 32);
    v63 = MEMORY[0x277D84F90];
    v48[1] = v31;
    v32(v16, v33, v28);
    while (1)
    {
      v35 = *(v61 + 8);
      sub_224DAC3F8();
      if (v2)
      {

        (*v57)(v16, v28);
        v2 = 0;
      }

      else
      {
        v36 = v28;
        v37 = v49;
        sub_224DA9548();
        v38 = v55;
        (*v48[0])(v6, v55);
        (*v57)(v16, v36);
        v39 = *v53;
        (*v53)(v54, v37, v38);
        v40 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = sub_224AD9420(0, v40[2] + 1, 1, v40);
        }

        v43 = v40[2];
        v42 = v40[3];
        v63 = v40;
        v28 = v64;
        v16 = v50;
        if (v43 >= v42 >> 1)
        {
          v63 = sub_224AD9420(v42 > 1, v43 + 1, 1, v63);
        }

        v44 = v63;
        v63[2] = v43 + 1;
        v39(&v44[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v43], v54, v55);
        v2 = v56;
        v6 = v51;
      }

      v33 += v58;
      if (!--v27)
      {
        break;
      }

      v59(v16, v33, v28);
    }

    v45 = v63;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v46 = sub_224AE9040(v45);

  return v46;
}

uint64_t sub_224D6CF08()
{
  v2 = v1;
  v3 = sub_224DA9688();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  *v46 = *(v0 + 24);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x277D84FA0];
  }

  v36 = v12;
  v37 = v3;
  v38 = v10;
  v39 = v7;
  v13 = v47;
  v47 = MEMORY[0x277D84FA0];
  v14 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
  result = sub_224DAC678();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {

    return MEMORY[0x277D84FA0];
  }

  v18 = 0;
  v19 = result + 32;
  v20 = v40 + 16;
  v21 = (v40 + 8);
  v34 = result;
  v35 = v13;
  v32 = result + 32;
  v33 = v17;
  v45 = v40 + 16;
  while (v18 < *(v16 + 16))
  {
    sub_224A3317C(v19 + 40 * v18, v46);
    v22 = sub_224DAC9A8();
    if (v2)
    {

      result = __swift_destroy_boxed_opaque_existential_1(v46);
      v2 = 0;
    }

    else
    {
      v23 = v20;
      v43 = v22;
      __swift_destroy_boxed_opaque_existential_1(v46);
      v24 = *(v43 + 16);
      if (v24)
      {
        v41 = v18;
        v42 = 0;
        v25 = v39;
        v26 = v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v44 = *(v40 + 72);
        v27 = *(v40 + 16);
        v29 = v37;
        v28 = v38;
        v30 = v36;
        do
        {
          v27(v30, v26, v29);
          sub_224DA9548();
          sub_224ADB390(v28, v25);
          v31 = *v21;
          (*v21)(v28, v29);
          v31(v30, v29);
          v26 += v44;
          --v24;
        }

        while (v24);

        v18 = v41;
        v2 = v42;
        v16 = v34;
        v19 = v32;
        v17 = v33;
        v20 = v45;
      }

      else
      {

        v20 = v23;
      }
    }

    if (++v18 == v17)
    {

      return v47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D6D294()
{
  v0 = sub_224DAA528();
  __swift_allocate_value_buffer(v0, qword_281365180);
  __swift_project_value_buffer(v0, qword_281365180);
  return sub_224DAA518();
}

uint64_t sub_224D6D2F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v68 - v9;
  MEMORY[0x28223BE20](v8);
  v78 = &v68 - v10;
  v92 = sub_224DA9688();
  v11 = *(v92 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v68 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v87 = &v68 - v20;
  v91 = sub_224DA9878();
  v21 = *(v91 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v91);
  v70 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = MEMORY[0x277D84FA0];
  v80 = &v68 - v25;
  sub_224DA9808();
  v26 = *(a1 + 48);
  v29 = *(v26 + 56);
  v28 = v26 + 56;
  v27 = v29;
  v30 = 1 << *(*(a1 + 48) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v90 = v11 + 16;
  v86 = v11 + 32;
  v88 = v11;
  v84 = (v11 + 8);
  v72 = (v21 + 56);
  v81 = (v21 + 48);
  v69 = (v21 + 32);
  v79 = (v21 + 8);
  v34 = v19;

  v36 = 0;
  v85 = 0;
  v83 = v33;
  v75 = v2;
  v82 = v19;
  v77 = result;
  while (v32)
  {
LABEL_10:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = result;
    v41 = v87;
    v40 = v88;
    v42 = *(result + 48) + *(v88 + 72) * (v38 | (v36 << 6));
    v43 = v92;
    v89 = *(v88 + 16);
    v89(v87, v42, v92);
    (*(v40 + 32))(v34, v41, v43);
    v95 = sub_224DA95A8();
    v96 = v44;
    v45 = v2[6];
    v93 = v2[5];
    v94 = v45;
    sub_224AFC154();
    LOBYTE(v40) = sub_224DAF748();

    if (v40)
    {
      v46 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v47 = v78;
      v48 = v85;
      sub_224DAA398();
      if (v48)
      {

        (*v72)(v47, 1, 1, v91);
        v85 = 0;
LABEL_14:
        sub_224A3311C(v47, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_15:
        v50 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        if (qword_281351810 != -1)
        {
          swift_once();
        }

        v51 = sub_224DAA528();
        __swift_project_value_buffer(v51, qword_281365180);
        v52 = MEMORY[0x277CC9578];
        sub_224A6018C(&qword_281351A30, MEMORY[0x277CC9578]);
        sub_224A6018C(&qword_281351A48, v52);
        v53 = v76;
        v54 = v91;
        sub_224DAA3B8();
        v55 = *v81;
        v56 = (*v81)(v53, 1, v54);
        v57 = v92;
        if (v56 == 1)
        {
          goto LABEL_20;
        }

        v58 = v71;
        sub_224A3796C(v53, v71, &qword_27D6F32B0, &qword_224DB3EA0);
        v59 = v91;
        result = v55(v58, 1, v91);
        if (result == 1)
        {
          goto LABEL_27;
        }

        v60 = sub_224DA9788();
        (*v79)(v58, v59);
        if (v60)
        {
LABEL_20:
          v61 = v74;
          v62 = v82;
          v89(v74, v82, v57);
          v63 = v73;
          v64 = v61;
          v34 = v62;
          sub_224ADB390(v73, v64);
          v65 = *v84;
          (*v84)(v63, v57);
          v65(v62, v57);
        }

        else
        {
          v34 = v82;
          (*v84)(v82, v57);
        }

        v33 = v83;
        sub_224A3311C(v53, &qword_27D6F32B0, &qword_224DB3EA0);
        v2 = v75;
        result = v77;
      }

      else
      {
        v85 = 0;
        v49 = v91;
        if ((*v81)(v47, 1, v91) == 1)
        {
          goto LABEL_14;
        }

        v66 = v70;
        (*v69)(v70, v47, v49);
        v67 = sub_224DA9788();
        (*v79)(v66, v49);
        if ((v67 & 1) == 0)
        {
          goto LABEL_15;
        }

        v34 = v82;
        (*v84)(v82, v92);
        result = v77;
        v33 = v83;
      }
    }

    else
    {
      (*v84)(v34, v43);
      result = v39;
      v33 = v83;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v33)
    {

      (*v79)(v80, v91);
      return v97;
    }

    v32 = *(v28 + 8 * v37);
    ++v36;
    if (v32)
    {
      v36 = v37;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t *sub_224D6DB1C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_224D6DE10(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_224D6DBB8(uint64_t result, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_224DAFAE8();
      sub_224DABF48();
      swift_dynamicCast();
      return v9;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 64) >> result))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_224DAFAA8();
  if (result != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_224DAFAB8();
  type metadata accessor for EmptyKey();
  swift_dynamicCast();
  v5 = sub_224B304F8();
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * result);
}

uint64_t sub_224D6DD0C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_224DAC918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_224D6DE10(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v38 = a2;
  v39 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v5 = *(*(v50 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v50);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - v8;
  v47 = sub_224DABE18();
  v9 = *(*(v47 - 8) + 64);
  result = MEMORY[0x28223BE20](v47);
  v54 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v52 = a3;
  v14 = *(a3 + 64);
  v42 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v40 = 0;
  v41 = (v15 + 63) >> 6;
  v45 = v11 + 16;
  v46 = v11;
  v44 = v11 + 8;
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v53 = (v17 - 1) & v17;
LABEL_11:
    v21 = v18 | (v13 << 6);
    v22 = v52;
    v23 = v46;
    v24 = v47;
    v25 = *(v46 + 16);
    v26 = v54;
    v25(v54, v52[6] + *(v46 + 72) * v21, v47);
    v27 = v22[7];
    v43 = v21;
    v28 = *(v27 + 8 * v21);
    v29 = v48;
    v25(v48, v26, v24);
    v31 = v49;
    v30 = v50;
    *(v29 + *(v50 + 48)) = v28;
    sub_224A3796C(v29, v31, &qword_27D6F6D38, &unk_224DC2010);
    v32 = *(v31 + *(v30 + 48));
    swift_bridgeObjectRetain_n();

    v33 = sub_224DABDB8();
    v34 = *(v23 + 8);
    v35 = v34(v31, v24);
    v56 = v33;
    MEMORY[0x28223BE20](v35);
    *(&v38 - 2) = &v56;
    v36 = v55;
    LOBYTE(v31) = sub_224B449EC(sub_224D6E378, (&v38 - 4), v51);
    v55 = v36;
    sub_224A3311C(v29, &qword_27D6F6D38, &unk_224DC2010);

    result = v34(v54, v24);
    v17 = v53;
    if (v31)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v39, v38, v40, v52);
      }
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v41)
    {
      return sub_224B2E0C4(v39, v38, v40, v52);
    }

    v20 = *(v42 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v53 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D6E1B8(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_224D6DB1C(v13, v7, a1, a2);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_224D6DE10((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_224D6E398(uint64_t a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224D63848(a1, v4, v5);
}

uint64_t sub_224D6E444()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);

  return sub_224D5DC80(v4, v5, v0 + v2, v6, (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224D6E4F8(uint64_t a1, int a2)
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

uint64_t sub_224D6E540(uint64_t result, int a2, int a3)
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

void static _ChronodStartupHelper.bootstrap()()
{
  v0 = sub_224DA9878();
  v64 = *(v0 - 8);
  v1 = *(v64 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB798();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_224DAB878();
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v49 - v16;
  v53 = sub_224DAF3C8();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v53);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAF318();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = sub_224DAB848();
  v59 = *(v23 - 8);
  v60 = v23;
  v24 = *(v59 + 64);
  MEMORY[0x28223BE20](v23);
  v50 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224AC319C();
  v51 = ".snapshot-expiration";
  sub_224DAB808();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A47C58(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v17 + 104))(v20, *MEMORY[0x277D85268], v53);
  v26 = v50;
  v53 = sub_224DAF418();
  v27 = swift_allocObject();
  sub_224DAD198();
  *(v27 + 16) = sub_224DAD188();
  v28 = v54;
  sub_224DAB858();
  v30 = v56;
  v29 = v57;
  *v56 = 20;
  v31 = v58;
  (*(v29 + 104))(v30, *MEMORY[0x277D85188], v58);
  v32 = v55;
  MEMORY[0x22AA59C40](v28, v30);
  (*(v29 + 8))(v30, v31);
  v33 = *(v66 + 8);
  v66 += 8;
  v58 = v33;
  v33(v28, v65);
  aBlock[4] = sub_224D6EE58;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_58;
  v34 = _Block_copy(aBlock);

  v35 = v26;
  sub_224DAB7E8();
  v67 = MEMORY[0x277D84F90];
  sub_224A47C58(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v37 = v61;
  v36 = v62;
  v38 = v53;
  sub_224DAF788();
  MEMORY[0x22AA5D6A0](v32, v35, v37, v34);
  _Block_release(v34);
  (*(v63 + 8))(v37, v36);
  (*(v59 + 8))(v35, v60);
  v58(v32, v65);

  CHDRegisterForTemporaryFolder();
  CHDEnterSandbox();
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281364DF0);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_224A2F000, v40, v41, "Elevating inactive jetsam band.", v42, 2u);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  CHDJetsamSetElevatedInactivePriority();
  v43 = *MEMORY[0x277CFA178];
  sub_224DAEEB8();
  v44 = sub_224DAEE48();

  notify_post((v44 + 32));

  sub_224D6F100(v38);
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224C3DE38(sub_224D6EE94, 0);
  v45 = *MEMORY[0x277CBF058];
  v46 = (v64 + 8);
  while (1)
  {
    sub_224DA9748();
    sub_224DA97D8();
    v48 = v47;
    (*v46)(v3, v0);
    CFRunLoopRunInMode(v45, v48, 0);
  }
}

uint64_t sub_224D6EE58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

void sub_224D6EE94()
{
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364DF0);
  oslog = sub_224DAB228();
  v1 = sub_224DAF2A8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_224A2F000, oslog, v1, "Startup completed.", v2, 2u);
    MEMORY[0x22AA5EED0](v2, -1, -1);
  }
}

uint64_t sub_224D6EF7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364DF0);

  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_224A33F74(a2, a3, &v13);
    _os_log_impl(&dword_224A2F000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  result = swift_beginAccess();
  *(a4 + 16) = 0;
  return result;
}

void sub_224D6F100(NSObject *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_224DA9E78();
  sub_224DA9E68();
  v2 = sub_224DA9D08();

  if (v2)
  {
    out_token = -1;
    v3 = swift_allocObject();
    *(v3 + 16) = 60;
    v4 = (v3 + 16);
    v5 = swift_allocObject();
    v5[2] = 0xD000000000000017;
    v5[3] = 0x8000000224DD0110;
    v5[4] = v3;
    aBlock[4] = sub_224D6F5CC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224AC3A24;
    aBlock[3] = &block_descriptor_11_0;
    v6 = _Block_copy(aBlock);

    LODWORD(a1) = notify_register_dispatch("com.apple.chronod.start", &out_token, a1, v6);
    _Block_release(v6);
    if (a1)
    {
      if (qword_281351480 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281364DF0);
      a1 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      if (os_log_type_enabled(a1, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock[0] = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, aBlock);
        _os_log_impl(&dword_224A2F000, a1, v14, "%{public}s: Waiting", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x22AA5EED0](v16, -1, -1);
        MEMORY[0x22AA5EED0](v15, -1, -1);
      }

      swift_beginAccess();
      if (*v4 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v8 = sub_224DAB228();
        v18 = sub_224DAF2A8();
        if (os_log_type_enabled(v8, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v23 = v20;
          *v19 = 136446210;
          *(v19 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, &v23);
          _os_log_impl(&dword_224A2F000, v8, v18, "%{public}s: Done waiting; startup continues", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x22AA5EED0](v20, -1, -1);
          v12 = v19;
          goto LABEL_15;
        }

LABEL_16:

        goto LABEL_17;
      }

      while (1)
      {
        sleep(1u);
        v17 = *v4 - 1;
        if (__OFSUB__(*v4, 1))
        {
          break;
        }

        *v4 = v17;
        if (v17 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364DF0);
    v8 = sub_224DAB228();
    v9 = sub_224DAF288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_224A33F74(0xD000000000000017, 0x8000000224DD0110, aBlock);
      *(v10 + 12) = 1026;
      *(v10 + 14) = a1;
      _os_log_impl(&dword_224A2F000, v8, v9, "%{public}s: %{public}u", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      v12 = v10;
LABEL_15:
      MEMORY[0x22AA5EED0](v12, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

unint64_t sub_224D6F690()
{
  result = qword_27D6F6D70;
  if (!qword_27D6F6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6D70);
  }

  return result;
}

unint64_t sub_224D6F6E8()
{
  result = qword_27D6F6D78;
  if (!qword_27D6F6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6D78);
  }

  return result;
}

id sub_224D6F754()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = [v1 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v7 + 16))(v10, &v11[v12], v6);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v5);
  v14 = sub_224DAF508();

  v15 = [v1 kind];
  if (!v15)
  {
    sub_224DAEE18();
    v15 = sub_224DAEDE8();
  }

  v16 = [v1 intentReference];
  v17 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v14 kind:v15 intentReference:v16];

  return v17;
}

uint64_t sub_224D6F99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = v33 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = v33 - v6;
  v8 = [v0 controlItems];
  v9 = sub_224DAF5D8();
  v10 = sub_224DAF008();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:

    v30 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
    v31 = sub_224DAEFF8();

    v32 = [v30 initWithControlItems_];

    return v32;
  }

  v11 = sub_224DAF838();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v39 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v33[1] = v9;
    v13 = sub_224DAF538();
    v14 = 0;
    v34 = v10 & 0xC000000000000001;
    v35 = v13;
    v15 = (v4 + 16);
    v36 = v11;
    do
    {
      if (v34)
      {
        v18 = MEMORY[0x22AA5DCC0](v14, v10);
      }

      else
      {
        v18 = *(v10 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = v10;
      v21 = [v18 controlIdentity];
      v22 = [v21 extensionIdentity];
      v23 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*v15)(v7, &v22[v23], v38);
      v24 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      sub_224AFD468(&v22[v24], v37);
      v25 = sub_224DAF508();

      v26 = [v21 kind];
      if (!v26)
      {
        sub_224DAEE18();
        v26 = sub_224DAEDE8();
      }

      v27 = [v21 intentReference];
      v28 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v25 kind:v26 intentReference:v27];

      v29 = [v19 uniqueIdentifier];
      if (!v29)
      {
        sub_224DAEE18();
        v29 = sub_224DAEDE8();
      }

      ++v14;
      v16 = [v19 location];
      [objc_allocWithZone(MEMORY[0x277CFA200]) initWithUniqueIdentifier:v29 controlIdentity:v28 location:v16];

      sub_224DAF9B8();
      v17 = *(v39 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v10 = v20;
    }

    while (v36 != v14);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_224D6FDFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v7 + 16))(v10, &v11[v12], v6);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v5);
  sub_224DA9898();
  v14 = sub_224DAF508();

  v15 = [v1 kind];
  if (!v15)
  {
    sub_224DAEE18();
    v15 = sub_224DAEDE8();
  }

  v16 = [v1 intentReference];
  v17 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v14 kind:v15 intentReference:v16];

  return v17;
}

void sub_224D70054(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 controlIdentity];
  v5 = [v4 extensionIdentity];

  v6 = &v5[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 1);

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v8 == sub_224DA9898() && v7 == v9)
  {

    goto LABEL_9;
  }

  v11 = sub_224DAFD88();

  if (v11)
  {
LABEL_9:
    v12 = v3;
    goto LABEL_10;
  }

LABEL_7:
  v3 = 0;
LABEL_10:
  *a2 = v3;
}

uint64_t sub_224D701AC()
{
  v1 = v0;
  v2 = qword_28135C9F0;
  v3 = *(v0 + qword_28135C9F0);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = qword_28135CA40;
  if (*(v1 + qword_28135CA40))
  {
    v6 = *(v1 + qword_28135CA40);

    sub_224DAC5F8();
  }

  os_unfair_lock_unlock(*(v3 + 16));

  v7 = qword_281365438;
  v8 = sub_224DAB258();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + qword_28135CA10);

  v10 = *(v1 + qword_28135CA00);

  v11 = *(v1 + qword_28135C9F8);

  v12 = *(v1 + qword_28135CA08);

  sub_224A3311C(v1 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  if (*(v1 + qword_28135CA30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + qword_28135CA30));
  }

  sub_224A3311C(v1 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v13 = *(v1 + v2);

  v14 = *(v1 + qword_28135CA28);

  v15 = *(v1 + v5);

  return v1;
}

uint64_t sub_224D70358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_224DAA428();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = qword_28135CA28;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_224A683FC(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      (*(v12 + 16))(v15, v20 + qword_281365430, v11);
      v21 = *(*v20 + 104);
      swift_beginAccess();
      v22 = *(v20 + v21);
      v23 = *(*v20 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v10, v20 + v23, v6);
      v24 = v22;

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      (*(v12 + 32))(v28 + qword_281365418, v15, v11);
      *(v28 + *(*v28 + 104)) = v24;
      (*(v7 + 32))(v28 + *(*v28 + 112), v10, v6);
      return v28;
    }
  }

  return 0;
}

uint64_t sub_224D7064C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = *(a2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  LOBYTE(a3) = sub_224A687B0(a1, a3);
  os_unfair_lock_unlock(*(v5 + 16));
  return a3 & 1;
}

uint64_t sub_224D706AC()
{
  v22 = MEMORY[0x277D84F90];
  v1 = [v0 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v4 = 0;
    v21 = v2 & 0xC000000000000001;
    v17 = v2 + 32;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v19 = i;
    v20 = v2;
    while (1)
    {
      if (v21)
      {
        v6 = MEMORY[0x22AA5DCC0](v4, v2);
      }

      else
      {
        if (v4 >= *(v18 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v17 + 8 * v4);
      }

      v7 = v6;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = [v6 widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v10 = sub_224DAF008();

      if (v10 >> 62)
      {
        v11 = sub_224DAF838();
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      if (v11 < 1)
      {
        goto LABEL_24;
      }

      for (j = 0; j != v11; ++j)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AA5DCC0](j, v10);
        }

        else
        {
          v13 = *(v10 + 8 * j + 32);
        }

        v14 = v13;
        v15 = [v13 extensionIdentity];
        MEMORY[0x22AA5D350]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
      }

      v5 = v22;
      i = v19;
      v2 = v20;
LABEL_4:

      if (v4 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_28:

  return v5;
}

uint64_t sub_224D70938()
{
  v1 = v0;
  v2 = &off_27853F000;
  v59 = v1;
  v3 = [v1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  isUniquelyReferenced_nonNull_bridgeObject = v4;
  if (v4 >> 62)
  {
    goto LABEL_49;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v65 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v63 = isUniquelyReferenced_nonNull_bridgeObject;
    v60 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v61 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    v64 = v6;
    while (1)
    {
      if (v65)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v7, v63);
      }

      else
      {
        if (v7 >= *(v61 + 16))
        {
          goto LABEL_47;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v60 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v12 = sub_224DAF008();

      v2 = (v12 >> 62);
      if (v12 >> 62)
      {
        v13 = sub_224DAF838();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v29 = sub_224DAF838();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          v2 = &off_27853F000;
          goto LABEL_51;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v66 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v14)
        {
          goto LABEL_22;
        }

        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v14)
        {
LABEL_22:
          sub_224DAF838();
          goto LABEL_23;
        }

        v17 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v67 = v13;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v67 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v67)
      {
        goto LABEL_45;
      }

      v22 = v17 + 8 * v19 + 32;
      if (v2)
      {
        v2 = &qword_27D6F4040;
        if (v21 < 1)
        {
          goto LABEL_48;
        }

        v62 = v8;
        sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
          v24 = sub_224A6996C(v68, i, v12);
          v26 = *v25;
          (v24)(v68, 0);
          *(v22 + 8 * i) = v26;
        }

        v8 = v62;
        v2 = v67;
        if (v67 <= 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v2 = v67;
        swift_arrayInitWithCopy();

        if (v67 <= 0)
        {
          goto LABEL_5;
        }
      }

      v27 = *(v17 + 16);
      v10 = __OFADD__(v27, v2);
      v28 = v2 + v27;
      if (v10)
      {
        goto LABEL_46;
      }

      *(v17 + 16) = v28;
LABEL_5:
      if (v7 == v64)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_51:
  strcpy(v68, "containers: ");
  BYTE5(v68[1]) = 0;
  HIWORD(v68[1]) = -5120;
  v31 = [v59 v2[323]];
  v32 = sub_224DAF008();

  if (v32 >> 62)
  {
    v33 = sub_224DAF838();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v33;
  v34 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v34);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v36 = v68[0];
  v35 = v68[1];
  strcpy(v68, "widgets: ");
  WORD1(v68[1]) = 0;
  HIDWORD(v68[1]) = -385875968;
  if (v8 >> 62)
  {
    v37 = sub_224DAF838();
  }

  else
  {
    v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v37;
  v38 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v38);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v39 = v68[0];
  v40 = v68[1];
  v68[0] = v36;
  v68[1] = v35;

  MEMORY[0x22AA5D210](v39, v40);

  v42 = v68[0];
  v41 = v68[1];
  strcpy(v68, "metrics: ");
  WORD1(v68[1]) = 0;
  HIDWORD(v68[1]) = -385875968;
  v43 = [v59 metricsSpecification];
  v44 = [v43 description];

  v45 = sub_224DAEE18();
  v47 = v46;

  MEMORY[0x22AA5D210](v45, v47);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v48 = v68[0];
  v49 = v68[1];
  v68[0] = v42;
  v68[1] = v41;

  MEMORY[0x22AA5D210](v48, v49);

  v51 = v68[0];
  v50 = v68[1];
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_224DAF938();

  v68[0] = 0xD000000000000013;
  v68[1] = 0x8000000224DD0210;
  v52 = [v59 rateLimitPolicies];
  if (v52)
  {
    sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
    sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
    sub_224DAF1B8();

    v52 = sub_224DAF1C8();
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v69 = v52;
  v70 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D30, &qword_224DBA9F0);
  v55 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v55);

  v56 = v68[0];
  v57 = v68[1];
  v68[0] = v51;
  v68[1] = v50;

  MEMORY[0x22AA5D210](v56, v57);

  return v68[0];
}

void *sub_224D710CC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = sub_224DAA1C8();
  v6 = v5;
  v7 = [v3 description];
  v8 = sub_224DAEE18();
  v10 = v9;

  a2[3] = &type metadata for _ConfigurationItemForStateCapture;
  a2[4] = sub_224CB3584();
  result = swift_allocObject();
  *a2 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = v10;
  return result;
}

uint64_t sub_224D711DC(uint64_t a1)
{
  v3 = [*v1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  v8[2] = a1;
  sub_224D41B20(sub_224D725AC, v8, v4);
  v6 = v5;

  return v6;
}

double sub_224D7128C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = sub_224D70358(v2, a1, &qword_27D6F4070, &qword_224DB5668);
  os_unfair_lock_unlock(*(v5 + 16));
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v6;
    v8 = qword_28135A7E8;
    swift_beginAccess();
    sub_224A68ED8(v2 + v8, v10);
    sub_224A68F48(inited, v10, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}