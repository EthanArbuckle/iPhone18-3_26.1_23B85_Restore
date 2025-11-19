void sub_243683944(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_2436CAEC8();
  v4 = v3;
  v5 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2436C1184(0, *(v5 + 2) + 1, 1, v5);
    *v4 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2436C1184((v7 > 1), v8 + 1, 1, v5);
    *v4 = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  sub_243675744();
  v2(v17, 0);

  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v9 = sub_2436CADE8();
  __swift_project_value_buffer(v9, qword_27ED7FD78);
  sub_243675744();
  v10 = sub_2436CADC8();
  v11 = sub_2436CBED8();
  sub_2436755D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    sub_243675744();
    v14 = sub_2436CBD68();
    v16 = sub_2436AFA70(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24366A000, v10, v11, "Pushing %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D3CD90](v13, -1, -1);
    MEMORY[0x245D3CD90](v12, -1, -1);
  }
}

void sub_243683B98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_2436CAEC8();
  v2 = *v1;
  *v1 = MEMORY[0x277D84F90];

  v0(&v7, 0);

  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v3 = sub_2436CADE8();
  __swift_project_value_buffer(v3, qword_27ED7FD78);
  v4 = sub_2436CADC8();
  v5 = sub_2436CBED8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24366A000, v4, v5, "Popping to root", v6, 2u);
    MEMORY[0x245D3CD90](v6, -1, -1);
  }
}

void sub_243683CEC(uint64_t a1)
{
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v2 = sub_2436CADE8();
  __swift_project_value_buffer(v2, qword_27ED7FD78);
  sub_243675744();
  v3 = sub_2436CADC8();
  v4 = sub_2436CBED8();
  sub_2436755D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    sub_243675744();
    v7 = sub_2436CBD68();
    v9 = sub_2436AFA70(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24366A000, v3, v4, "Resetting navigation stack with root %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D3CD90](v6, -1, -1);
    MEMORY[0x245D3CD90](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  sub_243675744();

  sub_2436CAEE8();
  sub_243683B98();
}

uint64_t sub_243683EAC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__root;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF0, &qword_2436CEEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__path;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF8, &qword_2436CEEE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel_pathSubscription);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for EMSNavigationStackViewModel()
{
  result = qword_27ED7ECC8;
  if (!qword_27ED7ECC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243684004()
{
  sub_2436803FC(319, &qword_27ED7ECD8, &qword_27ED7ECE0, &unk_2436CEDF0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2436803FC(319, &qword_27ED7ECE8, &qword_27ED7E640, &qword_2436CDF98);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_243684104@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSNavigationStackViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_243684154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4)
  {
  }

  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_24368419C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v2;
  return sub_2436841B4(v3, v2);
}

uint64_t sub_2436841B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_243684204(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = MEMORY[0x277D84F98];
  *(v3 + 80) = 0;
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 88) = 0;
  *(v3 + 96) = v7;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v3 + 128) = sub_2436CAE78();
  sub_2436854AC(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_2436842BC()
{
  v1 = *(v0 + 88);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v0;
    *(v0 + 88) = v3;
    sub_243684504();
    v5 = *(v0 + 104);
    *(v0 + 104) = 0;
    swift_unknownObjectRelease();
    *(v0 + 80) = 0;
    v6 = sub_243671510(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v7 = v4[9];
    v4[9] = v6;

    v8 = v4[15];
    v9 = v4[14] & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    v10 = v4[16];
    if (v9)
    {
      sub_2436CAE68();
      v11 = v4[5];
      v12 = v4[6];
      __swift_project_boxed_opaque_existential_0(v4 + 2, v11);
      (*(v12 + 8))(v11, v12);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
      sub_243685448();
      sub_2436CAF68();

      swift_beginAccess();
      sub_2436CAE08();
      swift_endAccess();
    }

    else
    {
      sub_2436CAE68();
    }
  }
}

uint64_t sub_243684474(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 128);
    sub_2436CAE68();
    if (v1 != 1)
    {
      sub_2436846F8();
    }
  }

  return result;
}

uint64_t sub_243684504()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 96);
    }

    sub_2436CBFF8();
    sub_2436CAE28();
    sub_2436853E0();
    result = sub_2436CBEB8();
    v2 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
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

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 96);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
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

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_243685438();
      v18 = *(v1 + 96);
      *(v1 + 96) = MEMORY[0x277D84FA0];
    }

    while (1)
    {
      sub_2436CAE18();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_2436CC018())
      {
        sub_2436CAE28();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2436846F8()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = v1[14];
  v6 = v1[15];

  v7 = sub_2436CBD08();

  v8 = [v4 iteratorForSearchString:v7 sortingGivenNameFirst:1 pageSize:v1[7]];

  swift_unknownObjectRelease();
  v9 = v1[13];
  v1[13] = v8;
  swift_unknownObjectRelease();

  sub_2436847C8();
}

void sub_2436847C8()
{
  if (*(v0 + 80))
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v1 = sub_2436CADE8();
    __swift_project_value_buffer(v1, qword_27ED7FD78);
    oslog = sub_2436CADC8();
    v2 = sub_2436CBEC8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24366A000, oslog, v2, "EMSStudentResultProvider trying to load more while still loading previous request", v3, 2u);
      MEMORY[0x245D3CD90](v3, -1, -1);
    }
  }

  else
  {
    v4 = v0;
    *(v0 + 80) = 1;
    v5 = sub_243671510(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v6 = *(v0 + 72);
    *(v0 + 72) = v5;

    v7 = *(v0 + 88);
    v8 = *(v0 + 128);
    sub_2436CAE58();
    if (aBlock)
    {
      LOBYTE(v15) = 1;
      sub_2436CAE68();
    }

    v9 = *(v4 + 104);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v7;
      v18 = sub_243685358;
      v19 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_243684F74;
      v17 = &block_descriptor_0;
      v12 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v9 fetchNextUsersWithCompletion_];
      swift_unknownObjectRelease();
      _Block_release(v12);
    }
  }
}

uint64_t sub_243684A24(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (*(result + 88) == a4)
    {
      v60 = result;
      if (a2)
      {
        v9 = a2;
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v10 = sub_2436CADE8();
        __swift_project_value_buffer(v10, qword_27ED7FD78);
        v11 = a2;

        v12 = sub_2436CADC8();
        v13 = sub_2436CBEC8();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v62 = v16;
          *v14 = 136446466;
          v17 = *(v8 + 112);
          v18 = *(v60 + 120);

          v19 = sub_2436AFA70(v17, v18, &v62);
          v8 = v60;

          *(v14 + 4) = v19;
          *(v14 + 12) = 2114;
          v20 = a2;
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 14) = v21;
          *v15 = v21;
          _os_log_impl(&dword_24366A000, v12, v13, "Error searching for students matching query '%{public}s': %{public}@", v14, 0x16u);
          sub_243685378(v15);
          MEMORY[0x245D3CD90](v15, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x245D3CD90](v16, -1, -1);
          MEMORY[0x245D3CD90](v14, -1, -1);
        }

        else
        {
        }
      }

      v22 = *(v8 + 128);
      sub_2436CAE58();
      if (v62)
      {
        v23 = v62;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      if (a1)
      {
        v24 = a1;
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v25 = v24;
      if (v24 >> 62)
      {
        goto LABEL_44;
      }

      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        do
        {
          v59 = v24 & 0xC000000000000001;
          v56 = v24 & 0xFFFFFFFFFFFFFF8;

          v27 = v25;
          v28 = 0;
          v57 = v26;
          v58 = v25;
          while (v59)
          {
            v31 = MEMORY[0x245D3C2F0](v28, v27);
            v32 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_40;
            }

LABEL_26:
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_2436C1394(0, *(v23 + 2) + 1, 1, v23);
            }

            v34 = *(v23 + 2);
            v33 = *(v23 + 3);
            if (v34 >= v33 >> 1)
            {
              v23 = sub_2436C1394((v33 > 1), v34 + 1, 1, v23);
            }

            *(v23 + 2) = v34 + 1;
            v35 = &v23[16 * v34];
            *(v35 + 4) = v31;
            v35[40] = 1;
            v36 = [v31 identifier];
            v37 = sub_2436CBD38();
            v39 = v38;

            v25 = *(v23 + 2);
            swift_beginAccess();
            v40 = *(v8 + 72);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = *(v8 + 72);
            v61 = v42;
            *(v8 + 72) = 0x8000000000000000;
            v43 = sub_24366FE3C(v37, v39);
            v45 = v42[2];
            v46 = (v44 & 1) == 0;
            v47 = __OFADD__(v45, v46);
            v48 = v45 + v46;
            if (v47)
            {
              goto LABEL_41;
            }

            v8 = v44;
            if (v42[3] < v48)
            {
              sub_2436B8318(v48, isUniquelyReferenced_nonNull_native);
              v43 = sub_24366FE3C(v37, v39);
              if ((v8 & 1) != (v49 & 1))
              {
                result = sub_2436CC318();
                __break(1u);
                return result;
              }

LABEL_35:
              --v25;
              if (v8)
              {
                goto LABEL_18;
              }

              goto LABEL_36;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_35;
            }

            v53 = v43;
            sub_2436B8B70();
            v43 = v53;
            --v25;
            if (v8)
            {
LABEL_18:
              v29 = v43;

              v30 = v61;
              *(v61[7] + 8 * v29) = v25;
              goto LABEL_19;
            }

LABEL_36:
            v30 = v42;
            v42[(v43 >> 6) + 8] |= 1 << v43;
            v50 = (v42[6] + 16 * v43);
            *v50 = v37;
            v50[1] = v39;
            *(v42[7] + 8 * v43) = v25;
            v51 = v42[2];
            v47 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v47)
            {
              goto LABEL_42;
            }

            v42[2] = v52;
LABEL_19:
            v8 = v60;
            *(v60 + 72) = v30;
            swift_endAccess();
            swift_unknownObjectRelease();
            ++v28;
            v26 = v57;
            v27 = v58;
            if (v32 == v57)
            {
              goto LABEL_46;
            }
          }

          if (v28 >= *(v56 + 16))
          {
            goto LABEL_43;
          }

          v31 = *(v27 + 8 * v28 + 32);
          swift_unknownObjectRetain();
          v32 = v28 + 1;
          if (!__OFADD__(v28, 1))
          {
            goto LABEL_26;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v54 = sub_2436CC008();
          v24 = v25;
          v26 = v54;
        }

        while (v54);
      }

LABEL_46:

      *(v8 + 81) = v26 == *(v8 + 56);
      v55 = *(v8 + 128);
      v62 = v23;
      v63 = 0;
      sub_2436CAE68();
      *(v8 + 80) = 0;
    }
  }

  return result;
}

uint64_t sub_243684F74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
    v4 = sub_2436CBE08();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_243685014(uint64_t a1, char a2)
{
  if (*(v2 + 81) == 1 && (*(v2 + 80) & 1) == 0 && (a2 & 1) != 0)
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_2436CBD38();
    v6 = v5;

    swift_beginAccess();
    v7 = *(v2 + 72);
    if (*(v7 + 16) && (v8 = v2, v9 = *(v2 + 72), , v10 = sub_24366FE3C(v4, v6), v12 = v11, , (v12 & 1) != 0))
    {
      v13 = *(*(v7 + 56) + 8 * v10);

      v14 = *(v8 + 128);
      sub_2436CAE58();
      if (v23)
      {
        v15 = *(v23 + 16);

        v16 = *(v8 + 64);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          __break(1u);
          goto LABEL_17;
        }

        if (v13 >= v18)
        {
          if (qword_27ED7DF10 == -1)
          {
LABEL_10:
            v19 = sub_2436CADE8();
            __swift_project_value_buffer(v19, qword_27ED7FD78);
            v20 = sub_2436CADC8();
            v21 = sub_2436CBED8();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&dword_24366A000, v20, v21, "Wants to load more", v22, 2u);
              MEMORY[0x245D3CD90](v22, -1, -1);
            }

            sub_2436847C8();
            goto LABEL_14;
          }

LABEL_17:
          swift_once();
          goto LABEL_10;
        }
      }
    }

    else
    {
    }

LABEL_14:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2436851FC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[9];

  v2 = v0[12];

  v3 = v0[13];
  swift_unknownObjectRelease();
  v4 = v0[15];

  v5 = v0[16];

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

void sub_243685280(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  sub_2436842BC();
}

uint64_t sub_2436852E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243685320()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243685378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ECA0, &unk_2436CEDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2436853E0()
{
  result = qword_27ED7ED68;
  if (!qword_27ED7ED68)
  {
    sub_2436CAE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7ED68);
  }

  return result;
}

unint64_t sub_243685448()
{
  result = qword_27ED7EC60;
  if (!qword_27ED7EC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7ED70, &qword_2436CEDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EC60);
  }

  return result;
}

uint64_t sub_2436854AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2436854C4(void *a1)
{
  v2 = v1;
  v4 = sub_2436CAC08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 userGivenName];
  if (v9)
  {
    v10 = v9;
    sub_2436CBD38();

    v11 = [v2 userFamilyName];
    if (v11)
    {
      v12 = v11;
      sub_2436CBD38();

      sub_2436CABF8();
      sub_2436CABD8();
      sub_2436CABC8();
      v13 = sub_2436CABE8();
      v14 = [a1 annotatedStringFromPersonNameComponents_];

      v15 = [v14 string];
      v16 = sub_2436CBD38();

      [v14 crk_familyNameRange];
      (*(v5 + 8))(v8, v4);
      return v16;
    }
  }

  v17 = [v2 userFullName];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v16 = sub_2436CBD38();

  return v16;
}

uint64_t sub_2436856F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243685764()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436857DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster;
  v9 = *(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster);
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v10 = (v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  v11 = *(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;

  if ((*(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) & 1) == 0)
  {
    v13 = *(v4 + v8);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    v14 = *v10;
    v15 = v10[1];
    v16 = v10[2];
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_2436CAEE8();
  }

  return result;
}

void sub_243685918(double a1)
{
  *(v1 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2436CAEE8();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;
  v11 = 0;
  v9 = 1;

  sub_2436CAEE8();
  v3 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer;
  [*(v1 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v13 = sub_243686148;
  v14 = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_243689660;
  v12 = &block_descriptor_1;
  v6 = _Block_copy(&v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
  _Block_release(v6);
  v8 = *(v1 + v3);
  *(v1 + v3) = v7;
}

uint64_t sub_243685AE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243685B38();
  }

  return result;
}

uint64_t sub_243685B38()
{
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 0;
  v1 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer;
  [*(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  sub_2436CAEE8();
  v4 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory + 8);
  v6 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_243685C50()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__roster;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__history;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for EMSMockValues()
{
  result = qword_27ED7EDB8;
  if (!qword_27ED7EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243685DC8()
{
  sub_2436803FC(319, &qword_27ED7EDC8, &qword_27ED7EDD0, &qword_2436CF090);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2436803FC(319, &qword_27ED7EDD8, &unk_27ED7EDE0, &qword_2436CF098);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_243685EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__roster;
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EDD0, &qword_2436CF090);
  sub_2436CAE98();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__history;
  v17 = 0;
  v18 = 0;
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDE0, &qword_2436CF098);
  sub_2436CAE98();
  (*(v2 + 32))(v0 + v12, v5, v1);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster) = 0;
  v13 = (v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) = 0;
  return v0;
}

uint64_t sub_243686110()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243686168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

BOOL sub_2436861DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v3 == 7)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_243686218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368628C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v9 == a1 && v10 == a2)
  {
  }

  else
  {
    v7 = sub_2436CC2E8();

    if ((v7 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v9) = a1;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v9 != 7)
  {
    if (v9 == a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a3 != 7)
  {
LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_243686440()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit22EMSFacePortalViewModel__monogram;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit22EMSFacePortalViewModel__appearance;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE28, &qword_2436CF2A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSFacePortalViewModel()
{
  result = qword_27ED7EE10;
  if (!qword_27ED7EE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243686588()
{
  sub_243686670(319, &qword_27ED80310);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243686670(319, &qword_27ED7EE20);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_243686670(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2436CAEF8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EMSFacePortalViewModel.Appearance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 7;
  v9 = v7 - 7;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EMSFacePortalViewModel.Appearance(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_243686810(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_243686824(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

uint64_t sub_243686844@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSFacePortalViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_243686884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_243686908(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_243686990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243686A14(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_243686AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE30, &qword_2436CF308);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  sub_2436CB4C8();
  v7 = sub_2436CBB48();
  v9 = v8;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE38, &qword_2436CF310) + 36);
  if (sub_2436CB4D8())
  {
    sub_2436CB938();
    v22 = sub_2436CB958();

    v21 = sub_2436CBB48();
    v12 = v11;
    v13 = (v6 + *(v2 + 36));
    v14 = v9;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE48, &unk_2436CF320) + 36);
    v16 = sub_2436CB4B8();
    v17 = v13 + v15;
    v9 = v14;
    (*(*(v16 - 8) + 16))(v17, a1, v16);
    v18 = v22;
    *v13 = v21;
    v13[1] = v12;
    *v6 = v18;
    sub_243686CB4(v6, v10);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE40, &qword_2436CF318);
  v20 = (v10 + *(result + 36));
  *v20 = v7;
  v20[1] = v9;
  return result;
}

uint64_t sub_243686CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE30, &qword_2436CF308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243686D28()
{
  result = qword_27ED7EE50;
  if (!qword_27ED7EE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EE38, &qword_2436CF310);
    sub_243686DB4();
    sub_243686E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE50);
  }

  return result;
}

unint64_t sub_243686DB4()
{
  result = qword_27ED7EE58;
  if (!qword_27ED7EE58)
  {
    sub_2436CB4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE58);
  }

  return result;
}

unint64_t sub_243686E0C()
{
  result = qword_27ED7EE60;
  if (!qword_27ED7EE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EE40, &qword_2436CF318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE60);
  }

  return result;
}

uint64_t sub_243686E70(uint64_t a1)
{
  v3 = *(v1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v5 = v11;
  if (v11 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v6 = v11;
    if (!v11)
    {
      return sub_2436887F0(0);
    }

    v8 = v12;
    v7 = v13;

    sub_243688CAC(v11);
    v9 = sub_2436889B8(&v11, a1);

    if (v11 >> 62)
    {
      result = sub_2436CC008();
      v10 = result;
      if (result >= v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v9)
      {
LABEL_6:
        sub_243688DBC(v9, v10);
        sub_243688E94(v6);
        sub_2436857DC(v5, v11, v8 & 1, v7);
        sub_2436887F0(v5);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243687024()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v3 != 1)
  {
    sub_2436857DC(v3, MEMORY[0x277D84F90], 0, *(v0 + 48));
    return sub_2436887F0(v3);
  }

  return result;
}

double sub_2436870C8()
{
  *&result = 8;
  xmmword_27ED7EE70 = xmmword_2436CF330;
  qword_27ED7EE80 = 30;
  word_27ED7EE88 = 0;
  byte_27ED7EE8A = 0;
  qword_27ED7EE90 = 500;
  return result;
}

uint64_t sub_2436870F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  v4 = objc_allocWithZone(_s10MockRosterCMa());
  v5 = sub_243694C78(a1);
  v6 = sub_24368801C(a1);
  v7 = *(a1 + 26);
  v8 = *(v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_mockDirectory);
  v9 = *(a1 + 32);
  v10 = *(v8 + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster);
  *(v8 + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster) = v5;
  v11 = v5;
  swift_unknownObjectRelease();
  v12 = *(v1 + 56);
  v13 = v11;
  sub_2436857DC(v5, v6, v7, v9);
}

uint64_t sub_2436871E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_2436CC078();

  v4 = sub_2436CC2B8();
  MEMORY[0x245D3C000](v4);

  *a2 = 0xD000000000000015;
  a2[1] = 0x80000002436E55C0;
  return result;
}

uint64_t sub_24368728C()
{
  v1 = v0[7];

  sub_243688F64(v0 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState);
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for EMSMockDataSource()
{
  result = qword_27ED7EEA8;
  if (!qword_27ED7EEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243687370()
{
  sub_243687430();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243687430()
{
  if (!qword_27ED7EEB8)
  {
    type metadata accessor for EMSUserInterfaceRecord();
    v0 = sub_2436CBF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7EEB8);
    }
  }
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

uint64_t sub_24368749C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2436874F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24368754C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EEE0, &unk_2436CF420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *(*v0 + 56);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  sub_2436CAEA8();
  swift_endAccess();
  sub_243687FC8(&qword_27ED7EEF0, &unk_27ED7EEE0, &unk_2436CF420);
  v7 = sub_2436CAF08();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_2436876A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEC8, &qword_2436CF408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *(*v0 + 56);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  sub_2436CAEA8();
  swift_endAccess();
  sub_243687FC8(&qword_27ED7EED8, &qword_27ED7EEC8, &qword_2436CF408);
  v7 = sub_2436CAF08();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_243687808@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  swift_beginAccess();
  return sub_243687F58(v3 + v4, a1);
}

uint64_t sub_243687864@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp;
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
}

uint64_t sub_243687914(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  swift_beginAccess();
  sub_243687EE8(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_243687978(uint64_t a1)
{
  v2 = (*v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp);
  v3 = v2[1];
  *v2 = *a1;
  *(v2 + 1) = *(a1 + 8);
}

uint64_t sub_2436879D0(void (*a1)(uint64_t, unint64_t, void))
{
  v2 = sub_2436712BC(MEMORY[0x277D84F90]);
  a1(1, v2, 0);
}

uint64_t sub_243687A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243687AB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243688800(v2);
  return sub_2436CAEE8();
}

double sub_243687B30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_243687BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243688CAC(v2);

  return sub_2436CAEE8();
}

uint64_t sub_243687C4C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2436CC008();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2436CC0A8();
  *v1 = result;
  return result;
}

uint64_t sub_243687CEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_243687D98()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0.0)
  {
    if (v1 <= v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = *(v0 + 24);
    if (*(v0 + 32))
    {
      v6 = v1 + v2;
    }

    else
    {
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return result;
      }

      v6 = *v0 + v5 * v2;
    }

    *(v0 + 24) = v5;
    *(v0 + 40) = v6;
    return *&v1;
  }

  if (v3 > v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v1 != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return *&v1;
}

uint64_t sub_243687E48()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_243687EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_243687F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243687FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24368801C(uint64_t a1)
{
  v50 = sub_2436CAD38();
  v2 = *(*(v50 - 8) + 64);
  result = MEMORY[0x28223BE20]();
  v68 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = xmmword_2436CF340;
  v82 = xmmword_2436CF350;
  v83 = 0;
  v84 = 1;
  v85 = 0;
  v86 = sub_2436871E0;
  v87 = 0;
  v73 = xmmword_2436CF360;
  v74 = 0xC072C00000000000;
  v75 = 0;
  v76 = 0;
  v77 = 0x41D8CDC824000000;
  v78 = 0;
  v79 = sub_243687284;
  v80 = 0;
  v72 = MEMORY[0x277D84F90];
  v51 = a1;
  v6 = *(a1 + 16);
  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v48 = 0x80000002436E55C0;
    v47 = 0x80000002436E55E0;
    v45 = (v4 + 8);
    v49 = _s18MockNameComponentsCMa();
    v7 = 0;
    v8 = &unk_2856748E0;
    v9 = &unk_285674CC0;
    v46 = v6;
    while (1)
    {
      v65 = v8;
      v10 = &v8[-960 * (v7 / 0x1E)];
      v11 = *(v10 + 4);
      v12 = *(v10 + 5);
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      v64 = v9;
      v15 = &v9[-960 * (v7 / 0x1E)];
      v17 = *(v15 + 4);
      v16 = *(v15 + 5);
      v18 = *(v15 + 7);
      v67 = *(v15 + 6);
      objc_allocWithZone(v49);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v63 = v12;
      v66 = v7;
      v19 = sub_2436951D8(v11, v12, v13, v14, v7);
      result = sub_243687E48();
      if (v20)
      {
        goto LABEL_22;
      }

      v21 = result;
      v70 = 0;
      v22 = 0xE000000000000000;
      v71 = 0xE000000000000000;
      sub_2436CC078();

      v70 = 0xD000000000000015;
      v71 = v48;
      v69 = v21;
      v23 = sub_2436CC2B8();
      MEMORY[0x245D3C000](v23);

      v61 = v70;
      v62 = v71;
      v24 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID];
      v25 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID + 8];
      result = sub_243687D98();
      if (v26)
      {
        goto LABEL_23;
      }

      v59 = v25;
      v60 = v24;
      sub_2436CAD08();
      if (*(v51 + 25))
      {
        v27 = 0xD0000000000001BDLL;
      }

      else
      {
        v27 = 0;
      }

      if (*(v51 + 25))
      {
        v22 = v47;
      }

      v70 = v17;
      v71 = v16;

      MEMORY[0x245D3C000](v27, v22);

      v58 = v70;
      v70 = v67;
      v71 = v18;

      MEMORY[0x245D3C000](v27, v22);

      result = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName + 8];
      if (!result)
      {
        goto LABEL_20;
      }

      v67 = v70;
      v70 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName];
      v71 = result;

      MEMORY[0x245D3C000](v27, v22);

      v28 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName + 8];
      if (!v28)
      {
        goto LABEL_21;
      }

      v57 = v70;
      v56 = v71;
      v29 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName];

      v70 = v29;
      v71 = v28;

      MEMORY[0x245D3C000](v27, v22);

      v55 = v70;
      v30 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName + 8];
      v70 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName];
      v71 = v30;

      MEMORY[0x245D3C000](v27, v22);

      v31 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram + 8];
      v53 = *&v19[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram];
      v52 = v31;
      v54 = objc_allocWithZone(MEMORY[0x277CFA640]);
      v32 = sub_2436CBD08();

      v33 = sub_2436CBD08();
      v34 = sub_2436CACD8();
      v35 = sub_2436CBD08();
      v63 = v19;
      v36 = v35;

      v37 = sub_2436CBD08();

      v38 = sub_2436CBD08();

      v39 = sub_2436CBD08();

      v40 = sub_2436CBD08();

      v41 = sub_2436CBD08();
      [v54 initWithIdentifier:v32 appleID:v33 date:v34 deviceName:v36 deviceSerialNumber:v37 userGivenName:v38 userFamilyName:v39 userFullName:v40 userMonogram:v41];

      v42 = (*v45)(v68, v50);
      MEMORY[0x245D3C040](v42);
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2436CBE18();
      }

      v7 = v66 + 1;
      sub_2436CBE38();

      v8 = v65 + 32;
      v9 = v64 + 32;
      if (v46 == v7)
      {
        v44 = v72;
        goto LABEL_18;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_18:

  return v44;
}

uint64_t sub_2436887F0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243688800(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_243688818(unint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_2436CC008();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v18 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D3C2F0](v3, a1);
    }

    else
    {
      if (v3 >= *(v16 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_2436CBD38();
      v11 = v10;

      v17[0] = v9;
      v17[1] = v11;
      MEMORY[0x28223BE20](v12);
      v14[2] = v17;
      LOBYTE(v8) = sub_243687CEC(sub_243688FCC, v14, v15);

      if (v8)
      {
        return v3;
      }
    }

    else
    {
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_2436889B8(unint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v7 = *a1;
  v8 = sub_243688818(*a1, a2);
  v10 = v3;
  if (v3)
  {
    return v2;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2436CC008();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v8;
  v33 = v6;
  v34 = a2;
  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v12 == sub_2436CC008())
      {
        return v2;
      }
    }

    else if (v12 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    v16 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x245D3C2F0](v12, v7);
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v17 = *(v7 + 8 * v12 + 32);
    }

    v18 = v17;
    v19 = [v17 identifier];
    if (!v19)
    {

      if (v2 != v12)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    v20 = v19;
    v21 = v10;
    v22 = sub_2436CBD38();
    v24 = v23;

    v36 = v2;
    v35[0] = v22;
    v35[1] = v24;
    MEMORY[0x28223BE20](v25);
    v32[2] = v35;
    LOBYTE(v20) = sub_243687CEC(sub_243688EF0, v32, v34);
    v10 = v21;

    v16 = v7 & 0xC000000000000001;
    v2 = v36;
    if ((v20 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      goto LABEL_46;
    }
  }

  if (v36 == v12)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (v16)
  {
    v4 = MEMORY[0x245D3C2F0](v2, v7);
    v26 = MEMORY[0x245D3C2F0](v12, v7);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v27)
    {
      goto LABEL_50;
    }

    if (v12 >= v27)
    {
      goto LABEL_51;
    }

    v28 = *(v7 + 32 + 8 * v12);
    v4 = *(v7 + 32 + 8 * v2);
    v26 = v28;
  }

  v29 = v26;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = sub_2436BAC5C(v7);
    v30 = (v7 >> 62) & 1;
  }

  else
  {
    LODWORD(v30) = 0;
  }

  v6 = v7 & 0xFFFFFFFFFFFFFF8;
  v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v29;

  if ((v7 & 0x8000000000000000) == 0 && !v30)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

LABEL_37:
    if (v12 >= *(v6 + 16))
    {
      goto LABEL_48;
    }

LABEL_9:
    v13 = v6 + 8 * v12;
    v14 = *(v13 + 32);
    *(v13 + 32) = v4;

    *v33 = v7;
LABEL_10:
    v15 = __OFADD__(v2++, 1);
    if (v15)
    {
      goto LABEL_47;
    }

    goto LABEL_11;
  }

  v7 = sub_2436BAC5C(v7);
  v6 = v7 & 0xFFFFFFFFFFFFFF8;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
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
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return sub_2436CC008();
}

uint64_t sub_243688CAC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_243688CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_243688EA4();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2436CC008();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2436CC008();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_243688DBC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2436CC008();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2436CC008();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_243687C4C(result);

  return sub_243688CBC(v4, v2, 0);
}

uint64_t sub_243688E94(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_243688EA4()
{
  result = qword_27ED7E4C0;
  if (!qword_27ED7E4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7E4C0);
  }

  return result;
}

uint64_t sub_243688F0C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2436CC2E8() & 1;
  }
}

uint64_t sub_243688F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243688FE8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2436CABB8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (sub_2436CAAE8() == a4)
  {

    sub_2436CABA8();
    return sub_2436CAB88();
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v12 = sub_2436CBD08();
    v13 = [v11 initWithString_];

    v14 = *MEMORY[0x277D740A8];
    v15 = [objc_opt_self() boldSystemFontOfSize_];
    [v13 addAttribute:v14 value:v15 range:{a4, a5}];

    return MEMORY[0x28211C2C8](v13);
  }
}

id sub_243689174(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        sub_24367BEEC();
        v1 = 1.0;
        v2 = 31;
        v3 = 172;
        v4 = 183;
        return sub_24367BC54(v2, v3, v4, v1);
      case 2:
        v5 = [objc_opt_self() systemBlueColor];
        goto LABEL_18;
      case 3:
        v5 = [objc_opt_self() systemGreenColor];
        goto LABEL_18;
    }

LABEL_13:
    sub_24367BEEC();
    v1 = 1.0;
    v2 = 142;
    v3 = 142;
    v4 = 147;
    return sub_24367BC54(v2, v3, v4, v1);
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = [objc_opt_self() systemPurpleColor];
      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v5 = [objc_opt_self() systemRedColor];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (a1 != 4)
  {
    sub_24367BEEC();
    v1 = 1.0;
    v2 = 255;
    v3 = 34;
    v4 = 94;
    return sub_24367BC54(v2, v3, v4, v1);
  }

  v5 = [objc_opt_self() systemOrangeColor];
LABEL_18:

  return v5;
}

uint64_t sub_2436892F0(uint64_t a1)
{
  v2 = sub_2436CB908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if (a1 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2436CF4C0;
      v16 = *MEMORY[0x277CE0EE0];
      v17 = *(v3 + 104);
      v17(v6, v16, v2);
      *(v7 + 32) = sub_2436CB988();
      v17(v6, v16, v2);
      goto LABEL_10;
    }

    if (a1 != 8)
    {
LABEL_8:
      v12 = sub_243689174(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2436CF4C0;
      sub_24367BD6C(0.85);
      *(v13 + 32) = sub_2436CB8E8();
      sub_24367BD6C(1.6);
      *(v13 + 40) = sub_2436CB8E8();
      v14 = MEMORY[0x245D3BD50](v13);

      return v14;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2436CF4C0;
    v10 = *MEMORY[0x277CE0EE0];
    v11 = *(v3 + 104);
    v11(v6, v10, v2);
    *(v7 + 32) = sub_2436CB988();
    v11(v6, v10, v2);
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2436CF4C0;
  v8 = *MEMORY[0x277CE0EE0];
  v9 = *(v3 + 104);
  v9(v6, v8, v2);
  *(v7 + 32) = sub_2436CB988();
  v9(v6, v8, v2);
LABEL_10:
  *(v7 + 40) = sub_2436CB988();
  return MEMORY[0x245D3BD50](v7);
}

void sub_243689660(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2436896DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243689750()
{
  v1 = sub_2436CAB68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2436CAED8();

  sub_2436CAB58();
  sub_2436732AC();
  v7 = sub_2436CBF48();
  v9 = v8;
  (*(v2 + 8))(v5, v1);

  v10 = (v6 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  v11 = *(v6 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query + 8);
  *v10 = v7;
  v10[1] = v9;

  v12 = v6 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider;
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v15 = *(v14 + 16);

  v15(v7, v9, v13, v14);
  swift_endAccess();
}

uint64_t sub_24368994C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243689A30((v1 != 0) & v2);
  }

  return result;
}

uint64_t sub_2436899C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243689CF0(v1, v2);
  }

  return result;
}

void sub_243689A30(char a1)
{
  v2 = *(v1 + 32);
  if (a1)
  {
    if (!v2)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      swift_weakInit();
      v8[4] = sub_24368ACD0;
      v8[5] = v4;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_243689660;
      v8[3] = &block_descriptor_2;
      v5 = _Block_copy(v8);

      v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
      _Block_release(v5);
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;
    }
  }

  else
  {
    *(v1 + 32) = 0;

    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAEE8();
  }
}

void sub_243689B90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAED8();

    if (v4)
    {

      if (v5)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_2436CAED8();

        if ((v4 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          sub_2436CAEE8();
        }
      }
    }

    v3 = *(v1 + 32);
    *(v1 + 32) = 0;
  }
}

uint64_t sub_243689CF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 56) & 1) == 0)
  {
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v22 != v13 || v14 != v23)
    {
      v15 = sub_2436CC2E8();

      if (v15)
      {
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v13;
      v23 = v14;

      sub_24366C090(v13, v14, 0);
      return sub_2436CAEE8();
    }
  }

  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v22 != a1 || v23 != a2)
    {
      v11 = sub_2436CC2E8();

      if (v11)
      {
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v22 = a1;
      v23 = a2;

      return sub_2436CAEE8();
    }
  }

  v16 = v8;
  if (qword_27ED7DED8 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v10, qword_27ED83B48 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings13SearchStrings_barPlaceholderEmptyText, v16);
  v17 = sub_2436CBD58();
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v22 == v17 && v23 == v19)
  {
  }

  v21 = sub_2436CC2E8();

  if (v21)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v17;
  v23 = v19;

  return sub_2436CAEE8();
}

uint64_t sub_24368A06C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_243679F68(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__barPlaceholderText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__isLoadingResults;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__searchQuery, v4);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for EMSSearchBarViewModel()
{
  result = qword_27ED7EF18;
  if (!qword_27ED7EF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368A208()
{
  sub_243686670(319, &qword_27ED80310);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_243686670(319, &qword_27ED7EB70);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24368A340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24368A388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24368A3E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSSearchBarViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_24368A43C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24368A4C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24368A540(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24368A5C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2436CAEE8();
  return sub_243689750();
}

uint64_t sub_24368A650(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v43 = a4;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EF28, &unk_2436CF680);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  *(v4 + 24) = MEMORY[0x277D84FA0];
  *(v4 + 32) = 0;
  v23 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__barPlaceholderText;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_2436CAE98();
  v24 = *(v19 + 32);
  v24(v5 + v23, v22, v18);
  v25 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__isLoadingResults;
  LOBYTE(v46) = 0;
  sub_2436CAE98();
  (*(v14 + 32))(v5 + v25, v17, v13);
  v26 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__searchQuery;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_2436CAE98();
  v27 = v5;
  v24(v5 + v26, v22, v18);
  v28 = v41;
  *(v5 + 16) = v40;
  v29 = v42;
  *(v5 + 40) = v28;
  *(v5 + 48) = v29;
  LOBYTE(v26) = v43;
  *(v5 + 56) = v43 & 1;
  swift_beginAccess();

  sub_24366C090(v28, v29, v26 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v30 = v39;
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90);

  v31 = v44;
  sub_2436CAF68();

  (*(v45 + 8))(v30, v31);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  if (v26)
  {
  }

  else
  {
    v46 = 0;
    v47 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
    v32 = v36;
    sub_2436CAE88();
    sub_243671838(&qword_27ED7EF40, &qword_27ED7EF28, &unk_2436CF680);
    v33 = v38;
    v28 = sub_2436CAF08();
    (*(v37 + 8))(v32, v33);
  }

  v46 = v28;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EF30, &qword_2436CF6A8);
  sub_243671838(&qword_27ED7EF38, &qword_27ED7EF30, &qword_2436CF6A8);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v27;
}

uint64_t sub_24368AC54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_24368AD74(uint64_t *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v1[7] = 0;
  v1[8] = v4;
  v19[1] = 0;
  v20 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v1[9] = sub_2436CAE78();
  sub_2436744F8(a1, (v1 + 2));
  swift_beginAccess();
  v8 = v1[5];
  v9 = v1[6];
  v10 = __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14);
  v15 = (*(v9 + 32))(v8, v9);
  (*(v11 + 8))(v14, v8);
  v19[0] = v15;
  swift_allocObject();
  swift_weakInit();
  sub_24368B2B8();
  v16 = sub_2436CAF68();

  __swift_destroy_boxed_opaque_existential_0(a1);

  v17 = v2[7];
  v2[7] = v16;

  return v2;
}

uint64_t sub_24368AF74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24368AFE8(v1, v2);
  }

  return result;
}

uint64_t sub_24368AFE8(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = *(v2 + 64);
    *(v2 + 64) = MEMORY[0x277D84F90];

    v5 = *(v2 + 72);
LABEL_7:

    sub_2436CAE68();
  }

  if (*(a1 + 16) || (a2 & 1) == 0)
  {
    v6 = *(v2 + 64);
    *(v2 + 64) = a1;

    v7 = *(v2 + 72);

    goto LABEL_7;
  }

  v3 = *(v2 + 72);
  v9 = *(v2 + 64);

  sub_2436CAE68();
}

uint64_t sub_24368B0C4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_24368B138(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v5 + 16, v6);
  (*(v7 + 16))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_24368B1D8(uint64_t a1, char a2)
{
  v5 = *v2;
  swift_beginAccess();
  sub_2436744F8(v5 + 16, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  (*(v7 + 40))(a1, a2 & 1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_24368B278()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24368B2B8()
{
  result = qword_27ED7EF48;
  if (!qword_27ED7EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7ED80, &qword_2436CF070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EF48);
  }

  return result;
}

uint64_t sub_24368B31C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368B390()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  v19 = sub_2436CAD38();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__facePortal;
  v21 = type metadata accessor for EMSFacePortalViewModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  LOBYTE(v42) = 7;
  sub_2436CAE98();
  *&v42 = v24;
  sub_2436CAE98();
  (*(v14 + 32))(v4 + v20, v17, v13);
  v25 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__name;
  v42 = 0u;
  v43 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F730, &qword_2436CF880);
  sub_2436CAE98();
  (*(v35 + 32))(v4 + v25, v12, v36);
  v26 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__deviceInfo;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v27 = *(v5 + 32);
  v28 = v37;
  v27(v4 + v26, v8, v37);
  v29 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestamp;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v27(v4 + v29, v8, v28);
  v30 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestampAccessibilityLabel;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v27(v4 + v30, v8, v28);
  v31 = v39;
  *(v4 + 16) = v38;
  *(v4 + 24) = v31;
  v32 = v41;
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_nameFormatter) = v40;
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_dateFormatter) = v32;
  return v4;
}

void sub_24368B818(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - v6;
  v8 = sub_2436854C4(*(v1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_nameFormatter));
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [a1 userMonogram];
  if (v15)
  {
    v16 = v15;
    v34 = sub_2436CBD38();
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v18 = [a1 userFullName];
  if (v18)
  {
    v19 = v18;
    sub_2436CBD38();
  }

  v20 = objc_opt_self();
  v21 = sub_2436CBD08();

  v22 = [v20 asmHashForString:v21 maximumExclusive:7];

  if (v22 > 6)
  {
    __break(1u);
  }

  else
  {
    v33[1] = v2;
    v23 = byte_2856750A0[v22 + 32];
    v24 = [a1 appleID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2436CBD38();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = [a1 date];
    if (v29)
    {
      v30 = v29;
      sub_2436CAD18();

      v31 = sub_2436CAD38();
      (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    }

    else
    {
      v32 = sub_2436CAD38();
      (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    }

    sub_24368BAE8(v8, v10, v12, v14, v34, v35, v23, v26, v28, v7);

    sub_243671AC8(v7, &qword_27ED7E4F0, &qword_2436CF910);
  }
}

uint64_t sub_24368BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v67 = a7;
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v68 = a3;
  v69 = a10;
  v15 = sub_2436CAD38();
  v16 = *(v15 - 8);
  v70 = v15;
  v71 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v63 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v62 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFB0, &qword_2436CF918);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v60 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (!v75)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:

    goto LABEL_8;
  }

  v31 = v76;
  v30 = v77;
  if (v74 != a1 || v75 != a2)
  {
    v32 = sub_2436CC2E8();

    if (v32)
    {
      goto LABEL_10;
    }

LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    v74 = a1;
    v75 = a2;
    v76 = v68;
    v77 = v64;

    sub_2436CAEE8();
    goto LABEL_12;
  }

LABEL_10:
  if (v31 != v68 || v30 != v64)
  {
    goto LABEL_8;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_24368628C(v65, v66, v67);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v74 == a8 && v75 == a9)
  {

    v33 = v70;
    v34 = v71;
    v35 = v69;
  }

  else
  {
    v36 = sub_2436CC2E8();

    v33 = v70;
    v34 = v71;
    v35 = v69;
    if ((v36 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = a8;
      v75 = a9;

      sub_2436CAEE8();
    }
  }

  v37 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  v38 = *(v26 + 48);
  sub_24368CAC4(v11 + v37, v29);
  sub_24368CAC4(v35, &v29[v38]);
  v39 = *(v34 + 48);
  if (v39(v29, 1, v33) == 1)
  {
    if (v39(&v29[v38], 1, v33) == 1)
    {
      return sub_243671AC8(v29, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    v41 = v62;
    sub_24368CAC4(v29, v62);
    if (v39(&v29[v38], 1, v33) != 1)
    {
      v56 = v71;
      v57 = v60;
      (*(v71 + 32))(v60, &v29[v38], v33);
      sub_24368CC94();
      v58 = sub_2436CBC78();
      v59 = *(v56 + 8);
      v59(v57, v70);
      v59(v41, v70);
      v35 = v69;
      v33 = v70;
      result = sub_243671AC8(v29, &qword_27ED7E4F0, &qword_2436CF910);
      if (v58)
      {
        return result;
      }

      goto LABEL_23;
    }

    (*(v71 + 8))(v41, v33);
  }

  sub_243671AC8(v29, &qword_27ED7EFB0, &qword_2436CF918);
LABEL_23:
  swift_beginAccess();
  sub_24368CB34(v35, v11 + v37);
  swift_endAccess();
  v42 = v63;
  sub_24368CAC4(v35, v63);
  if (v39(v42, 1, v33) == 1)
  {
    sub_243671AC8(v42, &qword_27ED7E4F0, &qword_2436CF910);
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = 0;
    v73 = 0xE000000000000000;

    sub_2436CAEE8();
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = 0;
    v73 = 0xE000000000000000;

    return sub_2436CAEE8();
  }

  else
  {
    v43 = v71;
    v44 = v61;
    (*(v71 + 32))(v61, v42, v33);
    v45 = *(v11 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_dateFormatter);
    [v45 setDateStyle_];
    v46 = sub_2436CACD8();
    v47 = [v45 stringFromDate_];

    v48 = sub_2436CBD38();
    v50 = v49;

    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v48;
    v73 = v50;

    sub_2436CAEE8();
    [v45 setDateStyle_];
    v51 = sub_2436CACD8();
    v52 = [v45 stringFromDate_];

    v53 = sub_2436CBD38();
    v55 = v54;

    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v53;
    v73 = v55;

    sub_2436CAEE8();
    return (*(v43 + 8))(v44, v33);
  }
}

uint64_t sub_24368C318()
{
  v1 = *(v0 + 24);

  sub_243671AC8(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate, &qword_27ED7E4F0, &qword_2436CF910);
  v2 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__facePortal;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__name;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__deviceInfo;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestamp, v7);
  v8(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestampAccessibilityLabel, v7);

  return v0;
}

uint64_t sub_24368C4B0()
{
  sub_24368C318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSHistoryItemViewModel()
{
  result = qword_27ED7EF88;
  if (!qword_27ED7EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368C55C()
{
  sub_24368C71C(319, &qword_27ED7EF98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_24368C71C(319, &qword_27ED7F720, type metadata accessor for EMSFacePortalViewModel, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24368C780();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_24367BAD8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24368C71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24368C780()
{
  if (!qword_27ED7EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7F730, &qword_2436CF880);
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7EFA0);
    }
  }
}

uint64_t sub_24368C7F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSHistoryItemViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_24368C830@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_24368C840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24368C8C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

double sub_24368C93C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24368C9C0(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v6 = a1[1];

  return sub_2436CAEE8();
}

uint64_t sub_24368CAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24368CB34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24368CC94()
{
  result = qword_27ED7EFB8;
  if (!qword_27ED7EFB8)
  {
    sub_2436CAD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EFB8);
  }

  return result;
}

uint64_t sub_24368CCEC(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        type metadata accessor for Dummy();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        v3 = 0xD00000000000001FLL;
        v4 = 0x80000002436E5A10;
        goto LABEL_14;
      }

      if (a1 == 2)
      {
        type metadata accessor for Dummy();
        v5 = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        v3 = 0x65642E65626F6C67;
        v4 = 0xEF6C6C69662E6B73;
        goto LABEL_14;
      }
    }
  }

  else if (a1 <= 6)
  {
    if (a1 != 5)
    {
      type metadata accessor for Dummy();
      v6 = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      v3 = 0x74616C75636C6163;
      v4 = 0xEF6C6C69662E726FLL;
      goto LABEL_14;
    }
  }

  else if (a1 == 9)
  {
    type metadata accessor for Dummy();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = 0x6C2E6C69636E6570;
    v4 = 0xEB00000000656E69;
LABEL_14:

    return MEMORY[0x2821336E0](v3, v4, v2);
  }

  return sub_2436CB9B8();
}

uint64_t sub_24368CFD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368D064()
{
  v0 = type metadata accessor for EMSMockDataSource();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v101 = v0;
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 39) = 0;
  *(v3 + 48) = 500;
  v4 = type metadata accessor for EMSMockValues();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 56) = sub_243685EE0();
  v7 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  v8 = type metadata accessor for EMSUserInterfaceRecord();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v10 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_mockDirectory;
  *(v3 + v10) = [objc_allocWithZone(_s20MockStudentDirectoryCMa()) init];
  if (qword_27ED7DEB0 != -1)
  {
    swift_once();
  }

  v11 = qword_27ED7EE80;
  v12 = word_27ED7EE88;
  v13 = HIBYTE(word_27ED7EE88);
  v14 = byte_27ED7EE8A;
  v15 = qword_27ED7EE90;
  v16 = *&qword_27ED7EE80;
  *(v3 + 16) = xmmword_27ED7EE70;
  *(v3 + 32) = v11;
  *(v3 + 40) = v12;
  *(v3 + 41) = v13;
  *(v3 + 42) = v14;
  *(v3 + 48) = v15;
  v105[0] = xmmword_27ED7EE70;
  v105[1] = v16;
  v106 = v15;
  sub_2436870F8(v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2436CFA90;
  v18 = type metadata accessor for EMSConfigurationViewModel.Action(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();

  sub_2436CAD88();
  v22 = (v21 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v22 = 0x7465736552;
  v22[1] = 0xE500000000000000;
  v23 = (v21 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v23 = sub_24368E4D4;
  v23[1] = v3;
  *(v17 + 32) = v21;
  v24 = *(v18 + 48);
  v25 = *(v18 + 52);
  v26 = swift_allocObject();

  sub_2436CAD88();
  v27 = v26 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title;
  strcpy((v26 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title), "Slow Loading");
  *(v27 + 13) = 0;
  *(v27 + 14) = -5120;
  v28 = (v26 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v28 = sub_24368E4DC;
  v28[1] = v3;
  *(v17 + 40) = v26;
  v29 = *(v18 + 48);
  v30 = *(v18 + 52);
  v31 = swift_allocObject();

  sub_2436CAD88();
  v32 = (v31 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v32 = 0x7373616C43206F4ELL;
  v32[1] = 0xEA00000000007365;
  v33 = (v31 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v33 = sub_24368E504;
  v33[1] = v3;
  *(v17 + 48) = v31;
  v34 = *(v18 + 48);
  v35 = *(v18 + 52);
  v36 = swift_allocObject();

  sub_2436CAD88();
  v37 = (v36 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v37 = 0x7373616C432031;
  v37[1] = 0xE700000000000000;
  v38 = (v36 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v38 = sub_24368E524;
  v38[1] = v3;
  *(v17 + 56) = v36;
  v39 = *(v18 + 48);
  v40 = *(v18 + 52);
  v41 = swift_allocObject();

  sub_2436CAD88();
  v42 = (v41 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v42 = 0x657373616C432033;
  v42[1] = 0xE900000000000073;
  v43 = (v41 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v43 = sub_24368E544;
  v43[1] = v3;
  *(v17 + 64) = v41;
  v44 = *(v18 + 48);
  v45 = *(v18 + 52);
  v46 = swift_allocObject();

  sub_2436CAD88();
  v47 = (v46 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v47 = 0x73616C4320303035;
  v47[1] = 0xEB00000000736573;
  v48 = (v46 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v48 = sub_24368E564;
  v48[1] = v3;
  *(v17 + 72) = v46;
  v49 = *(v18 + 48);
  v50 = *(v18 + 52);
  v51 = swift_allocObject();

  sub_2436CAD88();
  v52 = (v51 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v52 = 0x6564757453206F4ELL;
  v52[1] = 0xEB0000000073746ELL;
  v53 = (v51 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v53 = sub_24368E584;
  v53[1] = v3;
  *(v17 + 80) = v51;
  v54 = *(v18 + 48);
  v55 = *(v18 + 52);
  v56 = swift_allocObject();

  sub_2436CAD88();
  v57 = (v56 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v57 = 0x6E65647574532031;
  v57[1] = 0xE900000000000074;
  v58 = (v56 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v58 = sub_24368E5A4;
  v58[1] = v3;
  *(v17 + 88) = v56;
  v59 = *(v18 + 48);
  v60 = *(v18 + 52);
  v61 = swift_allocObject();

  sub_2436CAD88();
  v62 = (v61 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v62 = 0x6E65647574532033;
  v62[1] = 0xEA00000000007374;
  v63 = (v61 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v63 = sub_24368E5C4;
  v63[1] = v3;
  *(v17 + 96) = v61;
  v64 = *(v18 + 48);
  v65 = *(v18 + 52);
  v66 = swift_allocObject();

  sub_2436CAD88();
  v67 = (v66 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v67 = 0x6F74736948206F4ELL;
  v67[1] = 0xEA00000000007972;
  v68 = (v66 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v68 = sub_24368E5E4;
  v68[1] = v3;
  *(v17 + 104) = v66;
  v69 = *(v18 + 48);
  v70 = *(v18 + 52);
  v71 = swift_allocObject();

  sub_2436CAD88();
  v72 = v71 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title;
  strcpy((v71 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title), "1 Item History");
  *(v72 + 15) = -18;
  v73 = (v71 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v73 = sub_24368E604;
  v73[1] = v3;
  *(v17 + 112) = v71;
  v74 = *(v18 + 48);
  v75 = *(v18 + 52);
  v76 = swift_allocObject();

  sub_2436CAD88();
  v77 = (v76 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v77 = 0xD00000000000001ALL;
  v77[1] = 0x80000002436E5B40;
  v78 = (v76 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v78 = sub_24368E624;
  v78[1] = v3;
  *(v17 + 120) = v76;
  v79 = *(v18 + 48);
  v80 = *(v18 + 52);
  v81 = swift_allocObject();

  sub_2436CAD88();
  v82 = (v81 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v82 = 0xD000000000000014;
  v82[1] = 0x80000002436E5B60;
  v83 = (v81 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v83 = sub_24368E62C;
  v83[1] = v3;
  *(v17 + 128) = v81;
  v84 = *(v18 + 48);
  v85 = *(v18 + 52);
  v86 = swift_allocObject();

  sub_2436CAD88();
  v87 = (v86 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v87 = 0xD000000000000019;
  v87[1] = 0x80000002436E5B80;
  v88 = (v86 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v88 = sub_24368E634;
  v88[1] = v3;
  *(v17 + 136) = v86;
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = *(v18 + 48);
  v91 = *(v18 + 52);
  v92 = swift_allocObject();
  sub_2436CAD88();
  v93 = (v92 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v93 = 0x206E6920776F6853;
  v93[1] = 0xEF7265766F706F50;
  v94 = (v92 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v94 = sub_24368E674;
  v94[1] = v89;
  *(v17 + 144) = v92;
  v103 = v101;
  v104 = &off_285675DE0;
  *&v102 = v3;
  v95 = type metadata accessor for EMSConfigurationViewModel(0);
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  v98 = swift_allocObject();
  sub_2436CAD88();
  v99 = (v98 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title);
  *v99 = 0x746144206B636F4DLL;
  v99[1] = 0xE900000000000061;
  sub_2436854AC(&v102, v98 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource);
  *(v98 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions) = v17;
  return v98;
}

uint64_t sub_24368D960()
{
  if (qword_27ED7DEB0 != -1)
  {
    swift_once();
  }

  v1[0] = xmmword_27ED7EE70;
  v1[1] = *&qword_27ED7EE80;
  v2 = qword_27ED7EE90;
  return sub_2436870F8(v1);
}

uint64_t sub_24368D9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v7 = a2;
  v8 = *(a1 + 24);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DA34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
  v8[0] = *(a1 + 16);
  v8[1] = a2;
  v8[2] = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_2436870F8(v8);
}

uint64_t sub_24368DA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v7 = *(a1 + 16);
  v8 = a2;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DAF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 42) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v5;
  v12 = v4;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 41);
  v3 = *(a1 + 42);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 40) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v5;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 41) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v5;
  v11 = v3;
  v12 = v4;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DC48(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_24368DCB0()
{
  v0 = type metadata accessor for EMSProductionDataSource();
  v1 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2436CFAA0;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = type metadata accessor for EMSConfigurationViewModel.Action(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_2436CAD88();
  v8 = (v7 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v8 = 0x206E6920776F6853;
  v8[1] = 0xEF7265766F706F50;
  v9 = (v7 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v9 = sub_24368E6A8;
  v9[1] = v3;
  *(v2 + 32) = v7;
  v17 = v0;
  v18 = &off_2856753F0;
  *&v16 = v1;
  v10 = type metadata accessor for EMSConfigurationViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_2436CAD88();
  v14 = v13 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title;
  strcpy((v13 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title), "ClassKit Data");
  *(v14 + 14) = -4864;
  sub_2436854AC(&v16, v13 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource);
  *(v13 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions) = v2;
  return v13;
}

uint64_t sub_24368DE80()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_24368DF04()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2436CFAB0;
    *(v2 + 32) = sub_24368D044();
    *(v2 + 40) = sub_24368DC28();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24368DFA4()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__navigationTitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__instructions, v2);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__isShowingPopover;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___mockConfiguration);

  v7 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___productionConfiguration);

  v8 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t type metadata accessor for EMSConfigurationPickerViewModel()
{
  result = qword_27ED7EFF0;
  if (!qword_27ED7EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368E14C()
{
  sub_243686670(319, &qword_27ED80310);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243686670(319, &qword_27ED7EB70);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24368E240()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__navigationTitle;
  strcpy(v16, "Configurations");
  HIBYTE(v16[1]) = -18;
  sub_2436CAE98();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__instructions;
  v16[0] = 0xD000000000000017;
  v16[1] = 0x80000002436E5BA0;
  sub_2436CAE98();
  v12(v0 + v13, v10, v6);
  v14 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__isShowingPopover;
  LOBYTE(v16[0]) = 0;
  sub_2436CAE98();
  (*(v2 + 32))(v0 + v14, v5, v1);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___mockConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___productionConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels) = 0;
  return v0;
}

uint64_t sub_24368E494@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSConfigurationPickerViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_24368E63C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24368E6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = sub_2436CB2E8();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CAC58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F000, &qword_2436CFCD8);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F008, &qword_2436CFCE0);
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F010, &qword_2436CFCE8);
  v19 = *(v18 - 8);
  v67 = v18;
  v68 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F018, &qword_2436CFCF0);
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v62 = &v59 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F020, &qword_2436CFCF8);
  v27 = *(v26 - 8);
  v63 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v66 = &v59 - v29;
  sub_24368ED80(a1, a2, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = a2;
  sub_2436CAED8();

  v30 = sub_2436CB688();
  v32 = v31;
  v34 = v33;
  v35 = sub_243691E24();
  v36 = v61;
  sub_2436CB738();
  sub_243679F68(v30, v32, v34 & 1);

  sub_243671AC8(v12, &qword_27ED7F000, &qword_2436CFCD8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v37 = v75;
  if (v76)
  {
    v38 = v76;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v75 = v37;
  v76 = v38;
  v79 = v36;
  v80 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_2436732AC();
  v41 = MEMORY[0x277D837D0];
  v42 = v64;
  sub_2436CB788();

  (*(v65 + 8))(v17, v42);
  v43 = v71;
  v44 = v72;
  v45 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277CDDDC0], v73);
  v75 = v42;
  v76 = v41;
  v77 = OpaqueTypeConformance2;
  v78 = v40;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v67;
  sub_2436CB808();
  (*(v44 + 8))(v43, v45);
  (*(v68 + 8))(v22, v47);
  v48 = [objc_opt_self() systemBackgroundColor];
  v49 = sub_2436CB8E8();
  LOBYTE(v45) = sub_2436CB538();
  v50 = v66;
  (*(v69 + 32))(v66, v46, v70);
  v51 = v50 + *(v63 + 44);
  *v51 = v49;
  *(v51 + 8) = v45;
  v52 = *(v60 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert);
  type metadata accessor for EMSAlertViewModel();
  sub_243692F0C(&qword_27ED7F0F0, type metadata accessor for EMSAlertViewModel);

  v53 = sub_2436CB098();
  v55 = v54;
  v56 = v74;
  sub_24367A8C0(v50, v74, &qword_27ED7F020, &qword_2436CFCF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0F8, &qword_2436CFDF8);
  v58 = (v56 + *(result + 36));
  *v58 = v53;
  v58[1] = v55;
  return result;
}

uint64_t sub_24368ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v64 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F100, &qword_2436CFE00);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0E8, &qword_2436CFDA8);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v57 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F108, &unk_2436D1470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F068, &qword_2436CFD60);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v48 = &v47 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F118, &qword_2436CFE10);
  v17 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v62 = &v47 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F120, &qword_2436CFE18);
  v19 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v47 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F048, &qword_2436CFD50);
  v22 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v49 = &v47 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F058, &qword_2436CFD58);
  v24 = *(v53 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v53);
  v27 = &v47 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v47 - v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v48;
      sub_2436924D8(v31, v48);
      sub_2436714A8(v33, v11, &qword_27ED7F110, &qword_2436CFE08);
      (*(v51 + 56))(v11, 0, 1, v52);
      v34 = v58;
      sub_24368F6A4(MEMORY[0x277D84F90], v11, v54, a2, v58);
      sub_243671AC8(v11, &qword_27ED7F108, &unk_2436D1470);
      sub_2436714A8(v34, v21, &qword_27ED7F068, &qword_2436CFD60);
      swift_storeEnumTagMultiPayload();
      sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58);
      sub_243691FEC();
      v35 = v49;
      sub_2436CB398();
      sub_2436714A8(v35, v62, &qword_27ED7F048, &qword_2436CFD50);
      swift_storeEnumTagMultiPayload();
      sub_243691F34();
      sub_24369243C();
      sub_2436CB398();
      sub_243671AC8(v35, &qword_27ED7F048, &qword_2436CFD50);
      sub_243671AC8(v34, &qword_27ED7F068, &qword_2436CFD60);
      return sub_243671AC8(v33, &qword_27ED7F110, &qword_2436CFE08);
    }

    v41 = *v31;
    (*(v51 + 56))(v11, 1, 1, v52);
    v42 = v58;
    sub_24368F6A4(v41, v11, v54, a2, v58);

    sub_243671AC8(v11, &qword_27ED7F108, &unk_2436D1470);
    v38 = &qword_27ED7F068;
    v39 = &qword_2436CFD60;
    sub_2436714A8(v42, v56, &qword_27ED7F068, &qword_2436CFD60);
    swift_storeEnumTagMultiPayload();
    sub_243691FEC();
    v43 = v57;
    sub_2436CB398();
    sub_2436714A8(v43, v62, &qword_27ED7F0E8, &qword_2436CFDA8);
    swift_storeEnumTagMultiPayload();
    sub_243691F34();
    sub_24369243C();
    sub_2436CB398();
    sub_243671AC8(v43, &qword_27ED7F0E8, &qword_2436CFDA8);
    v40 = v42;
    return sub_243671AC8(v40, v38, v39);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_243671AC8(v31, &qword_27ED7F128, &qword_2436D1EF0);
    swift_storeEnumTagMultiPayload();
    sub_243691FEC();
    v37 = v57;
    sub_2436CB398();
    v38 = &qword_27ED7F0E8;
    v39 = &qword_2436CFDA8;
    sub_2436714A8(v37, v62, &qword_27ED7F0E8, &qword_2436CFDA8);
    swift_storeEnumTagMultiPayload();
    sub_243691F34();
    sub_24369243C();
    sub_2436CB398();
    v40 = v37;
    return sub_243671AC8(v40, v38, v39);
  }

  sub_2436CB008();
  v44 = v24;
  v45 = v53;
  (*(v24 + 16))(v21, v27, v53);
  swift_storeEnumTagMultiPayload();
  sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58);
  sub_243691FEC();
  v46 = v49;
  sub_2436CB398();
  sub_2436714A8(v46, v62, &qword_27ED7F048, &qword_2436CFD50);
  swift_storeEnumTagMultiPayload();
  sub_243691F34();
  sub_24369243C();
  sub_2436CB398();
  sub_243671AC8(v46, &qword_27ED7F048, &qword_2436CFD50);
  return (*(v44 + 8))(v27, v45);
}

uint64_t sub_24368F6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a2;
  v87 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F070, &qword_2436CFD68);
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v71 - v11;
  v75 = sub_2436CB0E8();
  v76 = *(v75 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F098, &qword_2436CFD88);
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v71 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F088, &qword_2436CFD80);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v20 = &v71 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F078, &qword_2436CFD70);
  v82 = *(v78 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x28223BE20](v78);
  KeyPath = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F130, &qword_2436CFE68);
  v85 = *(v23 - 8);
  v86 = v23;
  v24 = *(v85 + 64);
  MEMORY[0x28223BE20](v23);
  v79 = &v71 - v25;
  type metadata accessor for EMSHistoryViewModel();
  sub_243692F0C(&qword_27ED7F138, type metadata accessor for EMSHistoryViewModel);
  v80 = a3;
  sub_2436CB0A8();
  swift_getKeyPath();
  sub_2436CB0B8();

  v90 = a1;
  v91 = a3;
  v92 = a4;
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F140, &qword_2436CFE98);
  sub_243671838(&qword_27ED7F148, &qword_27ED7F140, &qword_2436CFE98);
  sub_2436CB608();
  v27 = sub_2436CBB58();
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v26;
  sub_2436CAED8();

  v28 = v93;
  v29 = &v17[*(v73 + 36)];
  *v29 = v27;
  v29[1] = v28;
  sub_2436CB0D8();
  sub_243692358();
  v30 = v75;
  sub_2436CB878();
  (*(v76 + 8))(v14, v30);
  sub_243671AC8(v17, &qword_27ED7F098, &qword_2436CFD88);
  v31 = sub_2436CBB48();
  v33 = v32;
  v34 = v74;
  v35 = &v20[*(v74 + 36)];
  sub_2436A2ADC(v77, v35);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
  *v36 = v31;
  v36[1] = v33;
  v37 = sub_2436CAFA8();
  v38 = sub_243692244();
  v39 = sub_243692F0C(&qword_27ED7F0C8, MEMORY[0x277CDD680]);
  v40 = v34;
  sub_2436CB848();
  sub_243671AC8(v20, &qword_27ED7F088, &qword_2436CFD80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v41 = v93;
  v89 = v93;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F080, &qword_2436CFD78);
  v93 = v40;
  v94 = v37;
  v95 = v38;
  v96 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA48, &qword_2436CE5F0);
  v45 = sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0);
  v93 = v44;
  v94 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v81;
  v48 = v78;
  v49 = KeyPath;
  sub_2436CB838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F150, &qword_2436CFF30);
  v50 = *(sub_2436CB1A8() - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2436CFC20;
  sub_2436CB198();
  v93 = v48;
  v94 = v42;
  v95 = OpaqueTypeConformance2;
  v96 = v46;
  v54 = swift_getOpaqueTypeConformance2();
  if (v41)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

  v56 = v79;
  v57 = v83;
  MEMORY[0x245D3BAB0](v55, v53, v83, v54);

  (*(v84 + 8))(v47, v57);
  (*(v82 + 8))(v49, v48);
  KeyPath = swift_getKeyPath();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F068, &qword_2436CFD60);
  v59 = v87;
  v60 = (v87 + *(v58 + 36));
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0D8, &qword_2436CFDA0) + 28);
  sub_2436CBE68();
  v62 = v72;

  v63 = sub_2436CBE58();
  v64 = swift_allocObject();
  v65 = MEMORY[0x277D85700];
  v64[2] = v63;
  v64[3] = v65;
  v66 = v80;
  v64[4] = v80;
  v64[5] = v62;

  v67 = sub_2436CBE58();
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = v65;
  v68[4] = v66;
  v68[5] = v62;
  sub_2436CBAE8();
  sub_2436CBAA8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F158, &qword_2436CFF68);
  (*(*(v69 - 8) + 56))(&v60[v61], 0, 1, v69);
  *v60 = KeyPath;
  return (*(v85 + 32))(v59, v56, v86);
}

uint64_t sub_2436900B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a2;
  v140 = a4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F168, &qword_2436CFFC0);
  v6 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v108 = &v106 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F170, &qword_2436CFFC8);
  v8 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v124 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F178, &qword_2436CFFD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v106 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F180, &qword_2436CFFD8);
  v133 = *(v15 - 8);
  v134 = v15;
  v16 = *(v133 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F188, &qword_2436CFFE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v139 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v106 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F190, &qword_2436CFFE8);
  v137 = *(v26 - 8);
  v138 = v26;
  v27 = *(v137 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v135 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v143 = &v106 - v30;
  v31 = sub_2436CB338();
  v119 = *(v31 - 8);
  v120 = v31;
  v32 = *(v119 + 64);
  MEMORY[0x28223BE20](v31);
  v118 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2436CAC58();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F198, &qword_2436CFFF0);
  v116 = *(v39 - 8);
  v117 = v39;
  v40 = *(v116 + 64);
  MEMORY[0x28223BE20](v39);
  v115 = &v106 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1A0, &qword_2436CFFF8);
  v113 = *(v42 - 8);
  v114 = v42;
  v43 = *(v113 + 64);
  MEMORY[0x28223BE20](v42);
  v110 = &v106 - v44;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1A8, &qword_2436D0000);
  v45 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v106 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1B0, &qword_2436D0008);
  v129 = *(v47 - 8);
  v130 = v47;
  v48 = *(v129 + 64);
  MEMORY[0x28223BE20](v47);
  v109 = &v106 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1B8, &qword_2436D0010);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v141 = &v106 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v142 = &v106 - v54;
  if (a1 >> 62)
  {
    v55 = sub_2436CC008();
  }

  else
  {
    v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = v14;
  v126 = v11;
  v127 = v10;
  v136 = v25;
  v131 = v55;
  if (v55)
  {
    (*(v35 + 16))(v38, a3 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle, v34);
    v56 = sub_2436CB688();
    v106 = a1;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_2436CB598();
    v62 = sub_2436CB658();
    v64 = v63;
    v66 = v65;
    v107 = a3;
    v68 = v67;

    sub_243679F68(v57, v59, v61 & 1);

    sub_2436CBB48();
    sub_2436CB1B8();
    LOBYTE(v169) = v66 & 1;
    v69 = sub_2436CB538();
    LOBYTE(v149) = 0;
    *&v144[0] = v62;
    *(&v144[0] + 1) = v64;
    LOBYTE(v144[1]) = v66 & 1;
    *(&v144[1] + 1) = v68;
    v144[6] = v163;
    v144[7] = v164;
    v144[8] = v165;
    v144[2] = v159;
    v144[3] = v160;
    v144[4] = v161;
    v144[5] = v162;
    LOBYTE(v144[9]) = v69;
    *(&v144[9] + 8) = xmmword_2436CFC30;
    *(&v144[10] + 8) = xmmword_2436CFC40;
    BYTE8(v144[11]) = 0;
    sub_2436CB028();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1C0, &qword_2436D0018);
    v71 = sub_243692600();
    v72 = v115;
    sub_2436CB7B8();
    v145[8] = v144[8];
    v145[9] = v144[9];
    v145[10] = v144[10];
    *(&v145[10] + 9) = *(&v144[10] + 9);
    v145[4] = v144[4];
    v145[5] = v144[5];
    v145[6] = v144[6];
    v145[7] = v144[7];
    v145[0] = v144[0];
    v145[1] = v144[1];
    v145[2] = v144[2];
    v145[3] = v144[3];
    a3 = v107;
    sub_243671AC8(v145, &qword_27ED7F1C0, &qword_2436D0018);
    sub_2436CB028();
    *&v144[0] = v70;
    *(&v144[0] + 1) = v71;
    a1 = v106;
    swift_getOpaqueTypeConformance2();
    v73 = v110;
    v74 = v117;
    sub_2436CB758();
    (*(v116 + 8))(v72, v74);
    v75 = v112;
    (*(v113 + 32))(v112, v73, v114);
    *(v75 + *(v111 + 36)) = 0;
    v76 = v118;
    sub_2436CB328();
    sub_243692710();
    v77 = v109;
    sub_2436CB7D8();
    (*(v119 + 8))(v76, v120);
    sub_243671AC8(v75, &qword_27ED7F1A8, &qword_2436D0000);
    v78 = v142;
    sub_24367A8C0(v77, v142, &qword_27ED7F1B0, &qword_2436D0008);
    (*(v129 + 56))(v78, 0, 1, v130);
  }

  else
  {
    (*(v129 + 56))(v142, 1, 1, v130);
  }

  *&v145[0] = a1;
  v79 = swift_allocObject();
  *(v79 + 16) = v132;
  *(v79 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1E8, &qword_2436D2C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1F0, &qword_2436D0028);
  sub_243671838(&qword_27ED7F1F8, &qword_27ED7F1E8, &qword_2436D2C80);
  sub_243692888();
  sub_243692F0C(&qword_27ED7F268, type metadata accessor for EMSHistoryItemViewModel);
  sub_2436CBAC8();
  if (v131)
  {
    v131 = sub_2436CB358();
    v147 = 1;
    sub_24369182C(v145);
    v157 = v145[8];
    v158[0] = v145[9];
    *(v158 + 9) = *(&v145[9] + 9);
    v153 = v145[4];
    v154 = v145[5];
    v156 = v145[7];
    v155 = v145[6];
    v149 = v145[0];
    v150 = v145[1];
    v152 = v145[3];
    v151 = v145[2];
    v167 = v145[8];
    v168[0] = v145[9];
    *(v168 + 9) = *(&v145[9] + 9);
    v163 = v145[4];
    v164 = v145[5];
    v166 = v145[7];
    v165 = v145[6];
    v159 = v145[0];
    v160 = v145[1];
    v162 = v145[3];
    v161 = v145[2];
    sub_2436714A8(&v149, v144, &qword_27ED7F270, &qword_2436D0058);
    sub_243671AC8(&v159, &qword_27ED7F270, &qword_2436D0058);
    *(&v146[7] + 7) = v156;
    *(&v146[8] + 7) = v157;
    *(&v146[9] + 7) = v158[0];
    v146[10] = *(v158 + 9);
    *(&v146[3] + 7) = v152;
    *(&v146[4] + 7) = v153;
    *(&v146[5] + 7) = v154;
    *(&v146[6] + 7) = v155;
    *(v146 + 7) = v149;
    *(&v146[1] + 7) = v150;
    *(&v146[2] + 7) = v151;
    v80 = v147;
    sub_2436CBB48();
    sub_2436CB1B8();
    *&v148[55] = v172;
    *&v148[71] = v173;
    *&v148[87] = v174;
    *&v148[103] = v175;
    *&v148[7] = v169;
    *&v148[23] = v170;
    *&v148[39] = v171;
    *(&v144[8] + 1) = v146[7];
    *(&v144[9] + 1) = v146[8];
    *(&v144[10] + 1) = v146[9];
    *(&v144[11] + 1) = v146[10];
    *(&v144[4] + 1) = v146[3];
    *(&v144[5] + 1) = v146[4];
    *(&v144[6] + 1) = v146[5];
    *(&v144[7] + 1) = v146[6];
    *(&v144[1] + 1) = v146[0];
    *(&v144[2] + 1) = v146[1];
    *(&v144[3] + 1) = v146[2];
    *(&v144[16] + 1) = *&v148[64];
    *(&v144[17] + 1) = *&v148[80];
    *(&v144[18] + 1) = *&v148[96];
    *(&v144[12] + 1) = *v148;
    *(&v144[13] + 1) = *&v148[16];
    *(&v144[14] + 1) = *&v148[32];
    v144[0] = v131;
    LOBYTE(v144[1]) = v80;
    *&v144[19] = *(&v175 + 1);
    *(&v144[15] + 1) = *&v148[48];
    BYTE8(v144[19]) = 0;
    sub_2436CB028();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F278, &qword_2436D0060);
    v82 = sub_243692BB0();
    v83 = v125;
    sub_2436CB7B8();
    memcpy(v145, v144, 0x139uLL);
    sub_243671AC8(v145, &qword_27ED7F278, &qword_2436D0060);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v84 = v126;
    v85 = *(v126 + 16);
    if (LOBYTE(v144[0]) == 1)
    {
      v86 = v127;
      v85(v124, v83, v127);
      swift_storeEnumTagMultiPayload();
      *&v144[0] = v81;
      *(&v144[0] + 1) = v82;
      swift_getOpaqueTypeConformance2();
      sub_243692D28();
      v87 = v122;
      sub_2436CB398();
    }

    else
    {
      v89 = v108;
      v86 = v127;
      v85(v108, v83, v127);
      v90 = sub_2436CBB48();
      v91 = (v89 + *(v128 + 36));
      *v91 = v90;
      v91[1] = v92;
      sub_2436714A8(v89, v124, &qword_27ED7F168, &qword_2436CFFC0);
      swift_storeEnumTagMultiPayload();
      *&v144[0] = v81;
      *(&v144[0] + 1) = v82;
      swift_getOpaqueTypeConformance2();
      sub_243692D28();
      v87 = v122;
      sub_2436CB398();
      sub_243671AC8(v89, &qword_27ED7F168, &qword_2436CFFC0);
    }

    v88 = v136;
    v93 = v87;
    v94 = v123;
    sub_24367A8C0(v93, v123, &qword_27ED7F180, &qword_2436CFFD8);
    (*(v84 + 8))(v83, v86);
    sub_24367A8C0(v94, v88, &qword_27ED7F180, &qword_2436CFFD8);
    (*(v133 + 56))(v88, 0, 1, v134);
  }

  else
  {
    v88 = v136;
    (*(v133 + 56))(v136, 1, 1, v134);
  }

  v95 = v141;
  sub_2436714A8(v142, v141, &qword_27ED7F1B8, &qword_2436D0010);
  v97 = v137;
  v96 = v138;
  v98 = *(v137 + 16);
  v99 = v135;
  v98(v135, v143, v138);
  v100 = v139;
  sub_2436714A8(v88, v139, &qword_27ED7F188, &qword_2436CFFE0);
  v101 = v140;
  sub_2436714A8(v95, v140, &qword_27ED7F1B8, &qword_2436D0010);
  v102 = v88;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F2D8, &qword_2436D00D0);
  v98((v101 + *(v103 + 48)), v99, v96);
  sub_2436714A8(v100, v101 + *(v103 + 64), &qword_27ED7F188, &qword_2436CFFE0);
  sub_243671AC8(v102, &qword_27ED7F188, &qword_2436CFFE0);
  v104 = *(v97 + 8);
  v104(v143, v96);
  sub_243671AC8(v142, &qword_27ED7F1B8, &qword_2436D0010);
  sub_243671AC8(v100, &qword_27ED7F188, &qword_2436CFFE0);
  v104(v99, v96);
  return sub_243671AC8(v141, &qword_27ED7F1B8, &qword_2436D0010);
}

uint64_t sub_24369124C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v31 = sub_2436CB4A8();
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F208, &qword_2436D0030);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *a1;
  type metadata accessor for EMSHistoryItemViewModel();
  sub_243692F0C(&qword_27ED7F2F0, type metadata accessor for EMSHistoryItemViewModel);

  v16 = sub_2436CB098();
  v18 = v17;
  v19 = sub_2436CB348();
  v35 = v16;
  v36 = v18;
  v37 = v19;
  v38 = sub_2436915AC;
  v39 = 0;
  v32 = v15;
  v33 = a2;
  v34 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F210, &qword_2436D0038);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F218, &qword_2436D0040);
  v22 = sub_2436929EC();
  v23 = sub_243692ACC();
  sub_2436CB708();

  sub_2436CB498();
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_2436CB7E8();
  (*(v29 + 8))(v9, v31);
  (*(v11 + 8))(v14, v10);
  v25 = [objc_opt_self() systemBackgroundColor];
  v35 = sub_2436CB8E8();
  sub_243692F60();
  v35 = sub_2436CB9A8();
  v26 = sub_2436CBA98();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1F0, &qword_2436D0028);
  *(v24 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_2436915D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_2436CBA38();

  v8 = sub_2436CB918();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F218, &qword_2436D0040);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_2436916EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_2436744F8(*(a3 + 16) + 16, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2436CFC20;
    v9 = *(v5 + 24);
    *(v8 + 32) = *(v5 + 16);
    *(v8 + 40) = v9;
    v10 = *(v7 + 56);

    v10(v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

uint64_t sub_2436917EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB9B8();
  *a1 = result;
  return result;
}

uint64_t sub_24369182C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v2 = sub_2436CB698();
  v4 = v3;
  v6 = v5;
  sub_2436CB5B8();
  v7 = sub_2436CB628();
  v45 = v8;
  v46 = v7;
  v10 = v9;
  v47 = v11;
  sub_243679F68(v2, v4, v6 & 1);

  v44 = sub_2436CB548();
  sub_2436CAF88();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v43 = v10 & 1;
  LOBYTE(v64) = v10 & 1;
  LOBYTE(v62[0]) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v20 = v65;
  if (v65)
  {
    v21 = sub_2436CB698();
    v23 = v22;
    v25 = v24;
    sub_2436CB5E8();
    v26 = sub_2436CB658();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_243679F68(v21, v23, v25 & 1);

    LOBYTE(v21) = sub_2436CB548();
    sub_2436CAF88();
    v37 = v32;
    v38 = v28;
    v39 = v26;
    LOBYTE(v64) = v30 & 1;
    LOBYTE(v62[0]) = 0;
    v20 = v30 & 1;
    v40 = v21;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v40 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  *&v54 = v46;
  *(&v54 + 1) = v45;
  LOBYTE(v55) = v43;
  *(&v55 + 1) = v77[0];
  DWORD1(v55) = *(v77 + 3);
  *(&v55 + 1) = v47;
  LOBYTE(v56) = v44;
  *(&v56 + 1) = *v76;
  DWORD1(v56) = *&v76[3];
  *(&v56 + 1) = v13;
  *v57 = v15;
  *&v57[8] = v17;
  *&v57[16] = v19;
  v57[24] = 0;
  *&v49[9] = *&v57[9];
  v48 = v56;
  *v49 = *v57;
  *&v58 = v39;
  *(&v58 + 1) = v38;
  *&v59 = v20;
  *(&v59 + 1) = v37;
  *&v60 = v40;
  *(&v60 + 1) = v33;
  *v61 = v34;
  *&v61[8] = v35;
  *&v61[16] = v36;
  v61[24] = 0;
  *&v53[9] = *&v61[9];
  v52 = v60;
  *v53 = *v61;
  v50 = v58;
  v51 = v59;
  v41 = v55;
  *a1 = v54;
  *(a1 + 16) = v41;
  *(a1 + 64) = *&v49[16];
  *(a1 + 80) = v50;
  *(a1 + 32) = v48;
  *(a1 + 48) = *v49;
  *(a1 + 128) = *v53;
  *(a1 + 144) = *&v53[16];
  *(a1 + 96) = v51;
  *(a1 + 112) = v52;
  *(a1 + 160) = 0x4024000000000000;
  *(a1 + 168) = 0;
  v62[0] = v39;
  v62[1] = v38;
  v62[2] = v20;
  v62[3] = v37;
  v62[4] = v40;
  v62[5] = v33;
  v62[6] = v34;
  v62[7] = v35;
  v62[8] = v36;
  v63 = 0;
  sub_2436714A8(&v54, &v64, &qword_27ED7F2E0, &qword_2436D0168);
  sub_2436714A8(&v58, &v64, &qword_27ED7F2E8, &qword_2436D0170);
  sub_243671AC8(v62, &qword_27ED7F2E8, &qword_2436D0170);
  v64 = v46;
  v65 = v45;
  v66 = v43;
  *v67 = v77[0];
  *&v67[3] = *(v77 + 3);
  v68 = v47;
  v69 = v44;
  *v70 = *v76;
  *&v70[3] = *&v76[3];
  v71 = v13;
  v72 = v15;
  v73 = v17;
  v74 = v19;
  v75 = 0;
  return sub_243671AC8(&v64, &qword_27ED7F2E0, &qword_2436D0168);
}

uint64_t sub_243691C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F160, &qword_2436CFFB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2436714A8(a1, &v6 - v4, &qword_27ED7F160, &qword_2436CFFB8);
  return sub_2436CB278();
}

uint64_t sub_243691CC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v2 = sub_2436CBAE8();
  v3 = MEMORY[0x277CDF0D0];
  if (!v5)
  {
    v3 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v2 - 8) + 104))(a1, *v3, v2);
}

uint64_t sub_243691D98()
{

  sub_2436CBAD8();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_2436CAEE8();
}

unint64_t sub_243691E24()
{
  result = qword_27ED7F028;
  if (!qword_27ED7F028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F000, &qword_2436CFCD8);
    sub_243691EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F028);
  }

  return result;
}

unint64_t sub_243691EA8()
{
  result = qword_27ED7F030;
  if (!qword_27ED7F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F038, &qword_2436CFD48);
    sub_243691F34();
    sub_24369243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F030);
  }

  return result;
}

unint64_t sub_243691F34()
{
  result = qword_27ED7F040;
  if (!qword_27ED7F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F048, &qword_2436CFD50);
    sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58);
    sub_243691FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F040);
  }

  return result;
}

unint64_t sub_243691FEC()
{
  result = qword_27ED7F060;
  if (!qword_27ED7F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F068, &qword_2436CFD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F070, &qword_2436CFD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F078, &qword_2436CFD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F080, &qword_2436CFD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F088, &qword_2436CFD80);
    sub_2436CAFA8();
    sub_243692244();
    sub_243692F0C(&qword_27ED7F0C8, MEMORY[0x277CDD680]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA48, &qword_2436CE5F0);
    sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7F0D0, &qword_27ED7F0D8, &qword_2436CFDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F060);
  }

  return result;
}

unint64_t sub_243692244()
{
  result = qword_27ED7F090;
  if (!qword_27ED7F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F088, &qword_2436CFD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F098, &qword_2436CFD88);
    sub_2436CB0E8();
    sub_243692358();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E758, &qword_27ED7E760, &unk_2436CE270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F090);
  }

  return result;
}

unint64_t sub_243692358()
{
  result = qword_27ED7F0A0;
  if (!qword_27ED7F0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F098, &qword_2436CFD88);
    sub_243671838(&qword_27ED7F0A8, &qword_27ED7F0B0, &qword_2436CFD90);
    sub_243671838(&qword_27ED7F0B8, &qword_27ED7F0C0, &qword_2436CFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0A0);
  }

  return result;
}

unint64_t sub_24369243C()
{
  result = qword_27ED7F0E0;
  if (!qword_27ED7F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F0E8, &qword_2436CFDA8);
    sub_243691FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0E0);
  }

  return result;
}

uint64_t sub_2436924D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436925A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_243691CC8(a1);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2436925EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_243691D98();
}

unint64_t sub_243692600()
{
  result = qword_27ED7F1C8;
  if (!qword_27ED7F1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1C0, &qword_2436D0018);
    sub_24369268C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1C8);
  }

  return result;
}

unint64_t sub_24369268C()
{
  result = qword_27ED7F1D0;
  if (!qword_27ED7F1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1D8, &qword_2436D0020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1D0);
  }

  return result;
}

unint64_t sub_243692710()
{
  result = qword_27ED7F1E0;
  if (!qword_27ED7F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1A8, &qword_2436D0000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F198, &qword_2436CFFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1C0, &qword_2436D0018);
    sub_243692600();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1E0);
  }

  return result;
}

uint64_t sub_243692848()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_243692888()
{
  result = qword_27ED7F200;
  if (!qword_27ED7F200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1F0, &qword_2436D0028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F208, &qword_2436D0030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F210, &qword_2436D0038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F218, &qword_2436D0040);
    sub_2436929EC();
    sub_243692ACC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7F258, &qword_27ED7F260, &qword_2436D0050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F200);
  }

  return result;
}

unint64_t sub_2436929EC()
{
  result = qword_27ED7F220;
  if (!qword_27ED7F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F210, &qword_2436D0038);
    sub_243692A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F220);
  }

  return result;
}

unint64_t sub_243692A78()
{
  result = qword_27ED7F228;
  if (!qword_27ED7F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F228);
  }

  return result;
}

unint64_t sub_243692ACC()
{
  result = qword_27ED7F230;
  if (!qword_27ED7F230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F218, &qword_2436D0040);
    sub_243671838(&qword_27ED7F238, &qword_27ED7F240, &qword_2436D0048);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F230);
  }

  return result;
}

unint64_t sub_243692BB0()
{
  result = qword_27ED7F280;
  if (!qword_27ED7F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F278, &qword_2436D0060);
    sub_243692C68();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F280);
  }

  return result;
}

unint64_t sub_243692C68()
{
  result = qword_27ED7F288;
  if (!qword_27ED7F288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F290, &qword_2436D0068);
    sub_243671838(&qword_27ED7F298, &qword_27ED7F2A0, &qword_2436D0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F288);
  }

  return result;
}

unint64_t sub_243692D28()
{
  result = qword_27ED7F2A8;
  if (!qword_27ED7F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F168, &qword_2436CFFC0);
    sub_243692DE0();
    sub_243671838(&qword_27ED7F2C8, &qword_27ED7F2D0, &qword_2436D00C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2A8);
  }

  return result;
}

unint64_t sub_243692DE0()
{
  result = qword_27ED7F2B0;
  if (!qword_27ED7F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F2B8, &qword_2436D00C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F278, &qword_2436D0060);
    sub_243692BB0();
    swift_getOpaqueTypeConformance2();
    sub_243692EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2B0);
  }

  return result;
}

unint64_t sub_243692EA8()
{
  result = qword_27ED7F2C0;
  if (!qword_27ED7F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2C0);
  }

  return result;
}

uint64_t sub_243692F0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243692F60()
{
  result = qword_27ED7F2F8;
  if (!qword_27ED7F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2F8);
  }

  return result;
}

uint64_t sub_243692FB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243692FEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243693038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB2C8();
  *a1 = result;
  return result;
}

uint64_t sub_243693064(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB2D8();
}

unint64_t sub_243693094()
{
  result = qword_27ED7F300;
  if (!qword_27ED7F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F0F8, &qword_2436CFDF8);
    sub_243693120();
    sub_2436932A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F300);
  }

  return result;
}

unint64_t sub_243693120()
{
  result = qword_27ED7F308;
  if (!qword_27ED7F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F020, &qword_2436CFCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F010, &qword_2436CFCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F008, &qword_2436CFCE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F000, &qword_2436CFCD8);
    sub_243691E24();
    swift_getOpaqueTypeConformance2();
    sub_2436732AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F308);
  }

  return result;
}

unint64_t sub_2436932A8()
{
  result = qword_27ED7F310;
  if (!qword_27ED7F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F310);
  }

  return result;
}

uint64_t sub_243693318(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243693374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2436933F8(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  if (!(a2 >> 62))
  {
    v2 = a2;
  }

  if ((a2 >> 62) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  return MEMORY[0x245D3C5D0](v3);
}

uint64_t sub_24369343C()
{
  v1 = *v0;
  sub_2436CC368();
  sub_2436933F8(v3, v1);
  return sub_2436CC398();
}

uint64_t sub_24369348C()
{
  v1 = *v0;
  sub_2436CC368();
  sub_2436933F8(v3, v1);
  return sub_2436CC398();
}

unint64_t sub_2436934E0()
{
  result = qword_27ED7F318;
  if (!qword_27ED7F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F318);
  }

  return result;
}

uint64_t sub_243693534(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  v3 = a2 >> 62;
  v4 = a2 ^ a1;
  v5 = ((a2 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0;
  if (a2 >> 62 != 2)
  {
    v5 = 0;
  }

  v6 = (v4 & 0x3FFFFFFFFFFFFFFFLL) == 0;
  if (a2 >> 62 != 3)
  {
    v6 = 0;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 == a2;
  }

  v8 = v7;
  v9 = (v4 & 0x3FFFFFFFFFFFFFFFLL) == 0;
  v10 = v3 == 1 && v9;
  if (!v2)
  {
    v10 = v8;
  }

  if (v2 <= 1)
  {
    return v10;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_243693598@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F320, &qword_2436D02D0);
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v44 = (v41 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F328, &qword_2436D02D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E690, &qword_2436CDFC0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v41 - v18;
  v20 = type metadata accessor for EMSStudentPickerView();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v24 == 2)
    {
      type metadata accessor for EMSHistoryViewModel();
      sub_243693E2C(&qword_27ED7F138, type metadata accessor for EMSHistoryViewModel);

      *&v52 = sub_2436CB098();
      *(&v52 + 1) = v29;
      v53 = 0;
      sub_2436753C4();
      sub_243675418();

      sub_2436CB398();
      v30 = v47;
      v31 = v44;
      *v44 = v46;
      *(v31 + 16) = v30;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
    }

    else
    {
      *&v52 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      *(&v52 + 1) = 0;
      v53 = 1;
      sub_2436753C4();
      sub_243675418();

      sub_2436CB398();
      v39 = v47;
      v40 = v44;
      *v44 = v46;
      *(v40 + 16) = v39;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      return sub_2436CB398();
    }
  }

  else
  {
    v41[0] = v12;
    v41[1] = a2;
    if (v24)
    {
      type metadata accessor for EMSStudentPickerViewModel();
      sub_243693E2C(&qword_27ED7F330, type metadata accessor for EMSStudentPickerViewModel);

      *v23 = sub_2436CB098();
      v23[1] = v32;
      v33 = *(v20 + 20);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
      (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
      sub_2436714A8(v19, v17, &unk_27ED7FEC0, &unk_2436D02E0);
      sub_2436CB9E8();
      sub_243671AC8(v19, &unk_27ED7FEC0, &unk_2436D02E0);
      v35 = v23 + *(v20 + 24);
      v52 = 0uLL;
      v53 = -1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
      sub_2436CB9E8();
      v36 = v47;
      v37 = *(&v47 + 1);
      *v35 = v46;
      v35[16] = v36;
      *(v35 + 3) = v37;
      sub_243693E74(v23, v9);
      swift_storeEnumTagMultiPayload();
      sub_243693E2C(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView);
      sub_2436752E4();
      v38 = v41[0];
      sub_2436CB398();
      sub_2436714A8(v38, v44, &qword_27ED7E690, &qword_2436CDFC0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
      sub_243671AC8(v38, &qword_27ED7E690, &qword_2436CDFC0);
      return sub_243693ED8(v23);
    }

    else
    {
      sub_243675744();
      sub_24367954C(&v46);
      v25 = v47;
      v54[0] = v46;
      v52 = v47;
      v53 = v48;
      v26 = v49;
      v50 = v49;
      v51 = *(&v48 + 1);
      *v9 = v46;
      *(v9 + 1) = v25;
      *(v9 + 2) = v48;
      *(v9 + 6) = v26;
      swift_storeEnumTagMultiPayload();
      sub_2436714A8(v54, v45, &qword_27ED7E810, &qword_2436CE310);
      sub_2436714A8(&v52, v45, &qword_27ED7E6F0, &qword_2436CE0C0);
      sub_2436714A8(&v51, v45, &qword_27ED7E818, &qword_2436CE318);
      sub_2436714A8(&v50, v45, &qword_27ED7E820, &unk_2436CE320);
      sub_243693E2C(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView);
      sub_2436752E4();
      v27 = v41[0];
      sub_2436CB398();
      sub_2436714A8(v27, v44, &qword_27ED7E690, &qword_2436CDFC0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
      sub_243671AC8(v54, &qword_27ED7E810, &qword_2436CE310);
      sub_243671AC8(&v52, &qword_27ED7E6F0, &qword_2436CE0C0);
      sub_243671AC8(&v51, &qword_27ED7E818, &qword_2436CE318);
      sub_243671AC8(&v50, &qword_27ED7E820, &unk_2436CE320);
      return sub_243671AC8(v27, &qword_27ED7E690, &qword_2436CDFC0);
    }
  }
}

uint64_t sub_243693E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243693E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSStudentPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243693ED8(uint64_t a1)
{
  v2 = type metadata accessor for EMSStudentPickerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243693F58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243693FCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243694044()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel__isDisabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel__type;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F368, &unk_2436D04A0);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action + 8];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for CRKUIButtonViewModel()
{
  result = qword_27ED7F350;
  if (!qword_27ED7F350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436941A8()
{
  sub_243686670(319, &qword_27ED7EB70);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243686670(319, &qword_27ED7F360);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2436942B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243694304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_24369438C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRKUIButtonViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436943DC()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_id;
  v2 = sub_2436CAD98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2436944AC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_id;
  v2 = sub_2436CAD98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource));
  v4 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2436945A4()
{
  result = sub_2436CAD98();
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

uint64_t sub_24369467C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2436946B4()
{
  result = sub_2436CAD98();
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

uint64_t sub_2436947A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSConfigurationViewModel(0);
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436947F0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_2436CAD98();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_243694868()
{
  v1 = *v0;
  sub_2436CC368();
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0]);
  sub_2436CBC58();
  return sub_2436CC398();
}

uint64_t sub_243694908()
{
  v1 = *v0;
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0]);
  return sub_2436CBC58();
}

uint64_t sub_243694990()
{
  sub_2436CC368();
  v1 = *v0;
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0]);
  sub_2436CBC58();
  return sub_2436CC398();
}

uint64_t sub_243694A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243694ADC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2436CBDD8();
  }

  else
  {
    return 0;
  }
}

id sub_243694C78(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_user;
  if (qword_27ED7DEC8 != -1)
  {
    swift_once();
  }

  v5 = qword_27ED83B08;
  v6 = _s8MockUserCMa();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v5;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = 0;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = 0;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = 0;
  v27.receiver = v7;
  v27.super_class = v6;
  v8 = v5;
  *&v2[v4] = objc_msgSendSuper2(&v27, sel_init);
  v9 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_courses;
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_courses] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_allTrustedUserCertificates] = MEMORY[0x277D84FA0];
  v10 = &v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_specification];
  v11 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v11;
  *(v10 + 4) = *(a1 + 32);
  v12 = _s16MockOrganizationCMa(0);
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource16MockOrganization_uuid;
  if (qword_27ED7DEB8 != -1)
  {
    swift_once();
  }

  v15 = sub_2436CAD98();
  v16 = __swift_project_value_buffer(v15, qword_27ED83AD0);
  (*(*(v15 - 8) + 16))(&v13[v14], v16, v15);
  if (*(a1 + 25))
  {
    v17 = 0xD0000000000001BDLL;
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 25))
  {
    v18 = 0x80000002436E55E0;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v25 = 0xD000000000000021;
  v26 = 0x80000002436E6680;
  MEMORY[0x245D3C000](v17, v18);

  v19 = &v13[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource16MockOrganization_name];
  *v19 = 0xD000000000000021;
  *(v19 + 1) = 0x80000002436E6680;
  v24.receiver = v13;
  v24.super_class = v12;
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_organization] = objc_msgSendSuper2(&v24, sel_init);
  sub_2436989FC(a1);
  v20 = *&v2[v9];
  *&v2[v9] = v21;

  v23.receiver = v2;
  v23.super_class = _s10MockRosterCMa();
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_243695060(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243695140()
{
  result = sub_2436CAD98();
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

id sub_2436951D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticGivenName];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticFamilyName];
  *v15 = a3;
  v15[1] = a4;
  v53 = a1;
  v54 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  MEMORY[0x245D3C000](32, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);
  v16 = v53;
  v17 = v54;
  v18 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName];
  *v18 = v53;
  v18[1] = v17;
  v19 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticFullName];
  *v19 = v16;
  v19[1] = v17;
  v53 = 0;
  v54 = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  result = sub_243694ADC(a1, a2);
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2436CBC68();

  result = sub_243694ADC(a3, a4);
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v50 = a5;
  sub_2436CBC68();

  v23 = v54;
  v24 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram];
  *v24 = v53;
  v24[1] = v23;
  v53 = a1;
  v54 = a2;

  MEMORY[0x245D3C000](32, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);
  v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v26 = sub_2436CBD08();

  v27 = [v25 initWithString_];

  v28 = v27;
  result = [v28 string];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v29 = result;

  v30 = sub_2436CBD08();
  v49 = [v29 rangeOfString_];
  v32 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F610, &unk_2436D0788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CFC20;
  v34 = *MEMORY[0x277CCA5D8];
  *(inited + 32) = *MEMORY[0x277CCA5D8];
  v35 = *MEMORY[0x277CCA5D0];
  v36 = sub_2436CBD38();
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v36;
  *(inited + 48) = v37;
  v38 = v34;
  sub_24367109C(inited);
  swift_setDeallocating();
  sub_243699424(inited + 32);
  type metadata accessor for Key(0);
  sub_24369948C(&qword_27ED7F620, type metadata accessor for Key);
  v39 = sub_2436CBC28();

  [v28 addAttributes:v39 range:{v49, v32}];

  [v28 copy];
  sub_2436CBFB8();
  swift_unknownObjectRelease();
  sub_243671B28(0, &qword_27ED7F628, 0x277CCA898);
  v40 = swift_dynamicCast();
  v41 = v52;
  if (!v40)
  {
    v41 = 0;
  }

  *&v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_attributedFullName] = v41;
  MEMORY[0x245D3C000](46, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);

  MEMORY[0x245D3C000](46, 0xE100000000000000);
  v52 = v50;
  v42 = sub_2436CC2B8();
  MEMORY[0x245D3C000](v42);

  v43 = sub_2436CBD78();
  v45 = v44;

  v46 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_username];
  *v46 = v43;
  v46[1] = v45;

  sub_2436CC078();

  MEMORY[0x245D3C000](0xD000000000000013, 0x80000002436E66B0);
  v47 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID];
  *v47 = v43;
  v47[1] = v45;
  v53 = v43;
  v54 = v45;
  MEMORY[0x245D3C000](0x6669746E6564695FLL, 0xEB00000000726569);

  v48 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_identifier];
  *v48 = v43;
  v48[1] = v45;
  v51.receiver = v6;
  v51.super_class = _s18MockNameComponentsCMa();
  return objc_msgSendSuper2(&v51, sel_init);
}

uint64_t sub_2436959F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_243695AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *a4;
  swift_beginAccess();
  v14 = (*(v9 + 16))(v12, a1 + v13, v8);
  v15 = a5(v14);
  (*(v9 + 8))(v12, v8);

  return v15;
}

void sub_243695C50(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t *a6)
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  a5(a3);
  v15 = *a6;
  swift_beginAccess();
  v16 = *(v11 + 40);
  v17 = a1;
  v16(&a1[v15], v14, v10);
  swift_endAccess();
}

id sub_243695DC0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(a1 + *a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = sub_2436CBDF8();

  return v8;
}

uint64_t sub_243695E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = sub_2436CBE08();
  v9 = *(a1 + *a6);
  *(a1 + *a6) = v8;
}

uint64_t sub_243695ED0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2436CBE98();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;
}

uint64_t sub_243696074()
{
  result = sub_2436CAD38();
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

id sub_24369615C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2436CBD08();

  return v6;
}

uint64_t sub_2436961C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2436CBD38();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id sub_243696220(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_2436CBD08();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_243696450(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (*(a1 + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents) + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2436CBD08();

  return v6;
}

id sub_2436965B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_2436CBE88();

  return v4;
}

unint64_t sub_24369666C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &unk_27ED7F5F8;
    v30 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D3C2F0](v2, v29);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v2++, 1);
        if (v7)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_43;
        }

        v6 = *(v31 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v7 = __OFADD__(v2++, 1);
        if (v7)
        {
          goto LABEL_42;
        }
      }

      v8 = [v6 trustedUsers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
      v9 = sub_2436CBE08();
      swift_unknownObjectRelease();

      v10 = v9 >> 62;
      v11 = v9 >> 62 ? sub_2436CC008() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_20;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v12)
        {
LABEL_20:
          sub_2436CC008();
          goto LABEL_21;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC0A8();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC008();
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v36)
          {
            goto LABEL_45;
          }

          v19 = v14 + 8 * v16 + 32;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_47;
            }

            sub_243671838(&unk_27ED7F600, v4, &qword_2436D2CB0);
            v20 = v4;
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_2436D2CB0);
              v22 = sub_2436C4170(v35, i, v9);
              v24 = *v23;
              swift_unknownObjectRetain();
              (v22)(v35, 0);
              *(v19 + 8 * i) = v24;
              v20 = v4;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
            v20 = v4;
          }

          v4 = v20;

          v5 = v30;
          v3 = v34;
          if (v36 >= 1)
          {
            v25 = *(v14 + 16);
            v7 = __OFADD__(v25, v36);
            v26 = v25 + v36;
            if (v7)
            {
              goto LABEL_46;
            }

            *(v14 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      v5 = v30;
      v3 = v34;
      if (v36 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v5)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC008();
    v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2436CC008();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_243696A14(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_msgSend(*a1 nameComponents)];
  swift_unknownObjectRelease();
  sub_2436CBD38();

  v4 = [objc_msgSend(v2 nameComponents)];
  swift_unknownObjectRelease();
  sub_2436CBD38();

  sub_2436732AC();
  v5 = sub_2436CBF68();

  return v5 == -1;
}

uint64_t sub_243696BC4(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = sub_2436CBBC8();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CBBE8();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2436CBC08();
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_243671B28(0, &qword_27ED7F5B8, 0x277D85C78);
  v28 = sub_2436CBEF8();
  sub_2436CBBF8();
  sub_2436CBC18();
  v29 = *(v13 + 8);
  v29(v17, v12);
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = v2;
  v20[3] = v21;
  v20[4] = a2;
  aBlock[4] = sub_2436976B0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24366F258;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  sub_2436CBBD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24369948C(&qword_27ED7F5C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5C8, &qword_2436D0778);
  sub_243671838(&unk_27ED7F5D0, &qword_27ED7F5C8, &qword_2436D0778);
  sub_2436CBFC8();
  v24 = v28;
  MEMORY[0x245D3C140](v19, v11, v7, v22);
  _Block_release(v22);

  (*(v33 + 8))(v7, v4);
  (*(v31 + 8))(v11, v32);
  return (v29)(v19, v30);
}

uint64_t sub_243696FB0(uint64_t a1, void (*a2)(unint64_t, void))
{
  v24 = MEMORY[0x277D84F90];
  v3 = *(a1 + OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_pageSize);
  if (v3 < 0)
  {
    goto LABEL_34;
  }

  v2 = a2;
  if (v3)
  {
    v5 = OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_currentIndex;
    v6 = OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_hits;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(a1 + v5);
      v9 = *(a1 + v6);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v16 = *(a1 + v6);
        }

        if (v8 >= sub_2436CC008())
        {
          goto LABEL_21;
        }
      }

      else if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(a1 + v5);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x245D3C2F0](v10, v9);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
          v23 = sub_2436CC1E8();
          swift_bridgeObjectRelease_n();
          v7 = v23;
          goto LABEL_24;
        }

        if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v11 = *(v9 + 8 * v10 + 32);
        v12 = swift_unknownObjectRetain();
      }

      MEMORY[0x245D3C040](v12);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2436CBE18();
      }

      sub_2436CBE38();
      v13 = *(a1 + v5);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_32;
      }

      v7 = v24;
      *(a1 + v5) = v15;
      if (!--v3)
      {
        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:
  if (v7 >> 62)
  {
    goto LABEL_35;
  }

  v18 = v7 & 0xFFFFFFFFFFFFFF8;

  sub_2436CC2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
  if (swift_dynamicCastMetatype() || (v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_23:
  }

  else
  {
    v21 = (v18 + 32);
    while (1)
    {
      v22 = *v21;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_23;
      }
    }

    v7 = v18 | 1;
  }

LABEL_24:
  v2(v7, 0);
}

void sub_2436972C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
    v5 = sub_2436CBDF8();
  }

  if (a2)
  {
    v6 = sub_2436CAC18();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_243697484()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F630, &unk_2436D0798) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v7 - v1;
  v3 = sub_2436CAD98();
  __swift_allocate_value_buffer(v3, qword_27ED83AD0);
  v4 = __swift_project_value_buffer(v3, qword_27ED83AD0);
  sub_2436CAD48();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_2436975B4()
{
  qword_27ED83AE8 = 0xD000000000000018;
  unk_27ED83AF0 = 0x80000002436E6580;
  qword_27ED83AF8 = 0xD000000000000023;
  unk_27ED83B00 = 0x80000002436E65A0;
}

id sub_2436975F4()
{
  v0 = objc_allocWithZone(_s18MockNameComponentsCMa());
  result = sub_2436951D8(0x6172696F4DLL, 0xE500000000000000, 0x6E6F73776144, 0xE600000000000000, 0);
  qword_27ED83B08 = result;
  return result;
}

uint64_t sub_243697670()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2436976D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243697714(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243697790(v6);
  return sub_2436CC0D8();
}

uint64_t sub_243697790(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2436CC2A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_243697A5C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_2436978A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2436978A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v17 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v16 = a3;
    v6 = *(v17 + 8 * a3);
    v14 = v5;
    v15 = v4;
    while (1)
    {
      v7 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v8 = [objc_msgSend(v6 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      v9 = [objc_msgSend(v7 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      sub_2436732AC();
      v10 = sub_2436CBF68();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v10 != -1)
      {
LABEL_4:
        a3 = v16 + 1;
        v4 = v15 + 8;
        v5 = v14 - 1;
        if (v16 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      v11 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v11;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243697A5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_92;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v102 = result;
  while (1)
  {
    v11 = v9;
    v103 = v9;
    if ((v9 + 1) >= v8)
    {
      v8 = (v9 + 1);
    }

    else
    {
      v12 = v9;
      v13 = *v6;
      v9 = *(*v6 + 8 * (v9 + 1));
      v113 = v9;
      v111 = *(v13 + 8 * v11);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v107 = sub_243696A14(&v113, &v111);
      if (v5)
      {

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v100 = v10;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v14 = v12 + 2;
      v109 = 8 * v12;
      v15 = (v13 + 8 * v12 + 16);
      while (v8 != v14)
      {
        v16 = *(v15 - 1);
        v10 = *v15;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = [objc_msgSend(v10 nameComponents)];
        swift_unknownObjectRelease();
        v18 = sub_2436CBD38();
        v9 = v19;

        v113 = v18;
        v114 = v9;
        v20 = [objc_msgSend(v16 nameComponents)];
        swift_unknownObjectRelease();
        v21 = sub_2436CBD38();
        v23 = v22;

        v111 = v21;
        v112 = v23;
        sub_2436732AC();
        v24 = sub_2436CBF68();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        ++v14;
        ++v15;
        if (((v107 ^ (v24 != -1)) & 1) == 0)
        {
          v8 = (v14 - 1);
          break;
        }
      }

      v5 = 0;
      v7 = v102;
      v6 = a3;
      v11 = v103;
      if (!v107)
      {
        goto LABEL_19;
      }

      if (v8 < v103)
      {
        goto LABEL_123;
      }

      if (v103 < v8)
      {
        v25 = 8 * v8 - 8;
        v26 = v8;
        v27 = v103;
        v10 = v100;
        do
        {
          if (v27 != --v26)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_127;
            }

            v29 = *(v28 + v109);
            *(v28 + v109) = *(v28 + v25);
            *(v28 + v25) = v29;
          }

          ++v27;
          v25 -= 8;
          v109 += 8;
        }

        while (v27 < v26);
      }

      else
      {
LABEL_19:
        v10 = v100;
      }
    }

    v30 = v6[1];
    if (v8 < v30)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_120;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_121;
        }

        if (v11 + a4 >= v30)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = (v11 + a4);
        }

        if (v9 < v11)
        {
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          result = sub_2436C3A7C(v10);
          v10 = result;
LABEL_92:
          v115 = v10;
          v93 = *(v10 + 2);
          if (v93 >= 2)
          {
            while (*v6)
            {
              v94 = v10;
              v10 = (v93 - 1);
              v95 = *&v94[16 * v93];
              v96 = *&v94[16 * v93 + 24];
              sub_243698280((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
              if (v5)
              {
              }

              if (v96 < v95)
              {
                goto LABEL_117;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_2436C3A7C(v94);
              }

              if (v93 - 2 >= *(v94 + 2))
              {
                goto LABEL_118;
              }

              v97 = &v94[16 * v93];
              *v97 = v95;
              *(v97 + 1) = v96;
              v115 = v94;
              result = sub_2436C39F0(v93 - 1);
              v10 = v115;
              v93 = *(v115 + 2);
              if (v93 <= 1)
              {
              }
            }

            goto LABEL_128;
          }
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_119;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2436C1290(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v32 = *(v10 + 2);
    v31 = *(v10 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_2436C1290((v31 > 1), v32 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v32];
    *(v34 + 4) = v103;
    *(v34 + 5) = v9;
    v35 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_49:
          if (v40)
          {
            goto LABEL_108;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_111;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_115;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_63:
        if (v58)
        {
          goto LABEL_110;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_70:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v75 = *&v10[16 * v74 + 32];
        v76 = *&v10[16 * v36 + 40];
        sub_243698280((*v6 + 8 * v75), (*v6 + 8 * *&v10[16 * v36 + 32]), (*v6 + 8 * v76), v35);
        if (v5)
        {
        }

        if (v76 < v75)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2436C3A7C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v77 = &v10[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        v115 = v10;
        result = sub_2436C39F0(v36);
        v10 = v115;
        v33 = *(v115 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_116;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v102;
    if (v9 >= v8)
    {
      goto LABEL_90;
    }
  }

  v101 = v5;
  v110 = *v6;
  v78 = *v6 + 8 * v8 - 8;
  v79 = v11 - v8;
  v104 = v9;
LABEL_81:
  v106 = v78;
  v108 = v8;
  v80 = *(v110 + 8 * v8);
  v105 = v79;
  while (1)
  {
    v81 = *v78;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [objc_msgSend(v80 nameComponents)];
    swift_unknownObjectRelease();
    v83 = sub_2436CBD38();
    v85 = v84;

    v113 = v83;
    v114 = v85;
    v86 = [objc_msgSend(v81 nameComponents)];
    swift_unknownObjectRelease();
    v87 = sub_2436CBD38();
    v89 = v88;

    v111 = v87;
    v112 = v89;
    sub_2436732AC();
    v90 = sub_2436CBF68();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v90 != -1)
    {
LABEL_80:
      v8 = v108 + 1;
      v78 = v106 + 8;
      v9 = v104;
      v79 = v105 - 1;
      if ((v108 + 1) != v104)
      {
        goto LABEL_81;
      }

      v5 = v101;
      v6 = a3;
      v7 = v102;
      if (v104 < v103)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    if (!v110)
    {
      break;
    }

    v91 = *v78;
    v80 = *(v78 + 8);
    *v78 = v80;
    *(v78 + 8) = v91;
    v78 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_243698280(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      v5 = a2;
      a4 = v13;
    }

    v40 = &a4[v9];
    v15 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v16 = v6;
      goto LABEL_38;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v37 = v6;
      __dst = v5;
      v19 = *v5;
      v20 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [objc_msgSend(v19 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      v22 = [objc_msgSend(v20 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      sub_2436732AC();
      v23 = sub_2436CBF68();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v23 != -1)
      {
        break;
      }

      v17 = v37;
      v18 = __dst;
      v5 = __dst + 1;
      if (v37 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 = v17 + 1;
      if (v15 >= v40)
      {
        goto LABEL_10;
      }
    }

    v18 = v15;
    v17 = v37;
    v24 = v37 == v15++;
    v5 = __dst;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v17 = *v18;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != a2 || &a2[v12] <= a4)
  {
    memmove(a4, a2, 8 * v12);
    v5 = a2;
  }

  v40 = &v15[v12];
  if (v10 < 8 || v5 <= v6)
  {
    v16 = v5;
  }

  else
  {
    v36 = v15;
    do
    {
      __dsta = v5;
      v26 = v5 - 1;
      --v4;
      v27 = v40;
      v35 = v5 - 1;
      while (1)
      {
        v28 = (v4 + 1);
        v29 = *--v27;
        v30 = *v26;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v31 = [objc_msgSend(v29 nameComponents)];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        v32 = [objc_msgSend(v30 nameComponents)];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        sub_2436732AC();
        v33 = sub_2436CBF68();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v33 == -1)
        {
          break;
        }

        if (v28 != v40)
        {
          *v4 = *v27;
        }

        --v4;
        v40 = v27;
        v26 = v35;
        if (v27 <= v36)
        {
          v40 = v27;
          v15 = v36;
          v16 = __dsta;
          goto LABEL_38;
        }
      }

      v16 = v35;
      if (v28 != __dsta)
      {
        *v4 = *v35;
      }

      v15 = v36;
      if (v40 <= v36)
      {
        break;
      }

      v5 = v35;
    }

    while (v35 > v6);
  }

LABEL_38:
  if (v16 != v15 || v16 >= (v15 + ((v40 - v15 + (v40 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v16, v15, 8 * (v40 - v15));
  }

  return 1;
}

uint64_t sub_2436986F8(uint64_t result)
{
  v31 = MEMORY[0x277D84F90];
  v1 = *(result + 8);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = 0;
    v3 = 0;
    v26 = *(result + 24);
    v4 = 0x80000002436E55E0;
    if (*(result + 25))
    {
      v5 = 0xD0000000000001BDLL;
    }

    else
    {
      v5 = 0;
    }

    if ((*(result + 25) & 1) == 0)
    {
      v4 = 0xE000000000000000;
    }

    v25 = v5;
    v24 = *(result + 8);
    v6 = v4;
    do
    {
      v7 = v2;
      v8 = (&unk_2856748E0 + v2 - 960 * (v3 / 0x1E));
      v9 = v8[5];
      v11 = v8[6];
      v10 = v8[7];
      v29 = v8[4];
      v30 = v9;
      swift_bridgeObjectRetain_n();

      MEMORY[0x245D3C000](v25, v6);

      v12 = v29;
      v13 = v30;
      v29 = v11;
      v30 = v10;

      MEMORY[0x245D3C000](v25, v6);

      v14 = v29;
      v15 = v30;
      v16 = objc_allocWithZone(_s18MockNameComponentsCMa());
      v17 = sub_2436951D8(v12, v13, v14, v15, v3);
      v18 = (v26 & 1) != 0 || 5 * (v3 / 5) == v3;
      v19.i64[0] = 0x6DB6DB6DB6DB6DB7 * v3;
      v19.i64[1] = 0xAAAAAAAAAAAAAAABLL * v3;
      v27 = vmovn_s64(vcgeq_u64(xmmword_2436D0640, vorrq_s8(vshlq_u64(v19, xmmword_2436D0630), vshlq_u64(v19, xmmword_2436D0620))));
      v20 = objc_allocWithZone(_s15MockTrustedUserCMa());
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource15MockTrustedUser_certificates] = MEMORY[0x277D84FA0];
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v17;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = v18;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = v27.i8[4] & 1;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = v27.i8[0] & 1;
      v21 = _s8MockUserCMa();
      v28.receiver = v20;
      v28.super_class = v21;
      v22 = objc_msgSendSuper2(&v28, sel_init);
      MEMORY[0x245D3C040]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2436CBE18();
      }

      ++v3;
      sub_2436CBE38();

      v2 = v7 + 32;
    }

    while (v24 != v3);
    return v31;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2436989FC(uint64_t a1)
{
  v40 = sub_2436CAD38();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436986F8(a1);
  v48 = MEMORY[0x277D84F90];
  v6 = *a1;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    if (!v6)
    {
LABEL_17:

      return;
    }

    v8 = 0;
    if (*(a1 + 25))
    {
      v9 = 0xD0000000000001BDLL;
    }

    else
    {
      v9 = 0;
    }

    v10 = 0xE000000000000000;
    if (*(a1 + 25))
    {
      v10 = 0x80000002436E55E0;
    }

    v36 = v10;
    v37 = v9;
    v35 = (v2 + 32);
    v34 = xmmword_2436CFAA0;
    v38 = v6;
    while (v8 != 0x10000)
    {
      v11 = (&unk_2856747C0 + 32 * (v8 & 7));
      v12 = v11[7];
      v42 = v11[6];
      v43 = v12;
      v13 = v11[5];
      v46 = v11[4];
      v47 = v13;
      swift_bridgeObjectRetain_n();
      MEMORY[0x245D3C000](v37, v36);

      v14 = v46;
      v15 = v47;
      if (qword_27ED7DEC8 != -1)
      {
        swift_once();
      }

      v16 = qword_27ED83B08;
      v17 = _s8MockUserCMa();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v16;
      v18[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = 0;
      v18[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = 0;
      v18[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = 0;
      v45.receiver = v18;
      v45.super_class = v17;
      v19 = v16;
      v41 = objc_msgSendSuper2(&v45, sel_init);
      v20 = _s10MockCourseCMa(0);
      v21 = objc_allocWithZone(v20);
      v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_isEditable] = 0;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_allTrustedUserCertificates] = MEMORY[0x277D84FA0];
      v22 = qword_27ED7DEB8;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_2436CAD98();
      __swift_project_value_buffer(v23, qword_27ED83AD0);
      v24 = objc_allocWithZone(MEMORY[0x277D04C00]);
      v25 = sub_2436CAD68();
      v26 = [v24 initWithOrganizationUUID:v25 groupID:v8];

      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_identifier] = v26;
      v27 = &v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_name];
      *v27 = v14;
      v27[1] = v15;
      v28 = v43;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_mascot] = v42;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_color] = v28;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_location] = [objc_allocWithZone(_s12MockLocationCMa()) init];
      v29 = v39;
      sub_2436CAD28();
      (*v35)(&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_creationDate], v29, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
      v30 = swift_allocObject();
      *(v30 + 16) = v34;
      *(v30 + 32) = v41;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_users] = v30;
      *&v21[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_trustedUsers] = v7;
      v44.receiver = v21;
      v44.super_class = v20;
      v31 = objc_msgSendSuper2(&v44, sel_init);

      v32 = v31;
      MEMORY[0x245D3C040]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2436CBE18();
      }

      ++v8;
      sub_2436CBE38();

      if (v38 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_243698E50(unint64_t a1, uint64_t *a2)
{
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_25:
    v24 = a1;
    v2 = sub_2436CC008();
    a1 = v24;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v25 = a1;
      v3 = 0;
      v27 = a1 & 0xFFFFFFFFFFFFFF8;
      v28 = a1 & 0xC000000000000001;
      v26 = a1 + 32;
      while (1)
      {
        if (v28)
        {
          v9 = MEMORY[0x245D3C2F0](v3, v25);
          v10 = __OFADD__(v3++, 1);
          if (v10)
          {
LABEL_22:
            __break(1u);
            return v31;
          }
        }

        else
        {
          if (v3 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v26 + 8 * v3);
          swift_unknownObjectRetain();
          v10 = __OFADD__(v3++, 1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        v11 = *a2;

        v12 = [v9 appleID];
        v13 = sub_2436CBD38();
        v15 = v14;

        if (*(v11 + 16) && (v16 = *(v11 + 40), sub_2436CC368(), sub_2436CBD88(), v17 = sub_2436CC398(), v18 = -1 << *(v11 + 32), v19 = v17 & ~v18, ((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(v11 + 48) + 16 * v19);
            v22 = *v21 == v13 && v21[1] == v15;
            if (v22 || (sub_2436CC2E8() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          a1 = swift_unknownObjectRelease();
        }

        else
        {
LABEL_4:

          v4 = [v9 appleID];
          v5 = sub_2436CBD38();
          v7 = v6;

          sub_2436B8FCC(&v30, v5, v7);

          sub_2436CC0C8();
          v8 = *(v31 + 16);
          sub_2436CC0F8();
          sub_2436CC108();
          a1 = sub_2436CC0D8();
        }

        if (v3 == v2)
        {
          return v31;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2436990E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v42 = MEMORY[0x277D84FA0];
  v5 = *(v3 + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_27;
  }

  v7 = [v5 courses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
  v8 = sub_2436CBE08();

  v9 = 0;
  v10 = sub_24369666C(v8);

  v41 = v6;
  if (v10 >> 62)
  {
    goto LABEL_29;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v32 = v9;
      v33 = a3;
      v12 = 0;
      v13 = v10 & 0xC000000000000001;
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
      v15 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v15 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v16 = !a2 || v15 == 0;
      v9 = v16;
      v34 = v9;
      while (v13)
      {
        v18 = MEMORY[0x245D3C2F0](v12, v10);
        a3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v9 = v32;
          a3 = v33;
          goto LABEL_25;
        }

LABEL_18:
        if (v9)
        {
          goto LABEL_13;
        }

        v19 = [objc_msgSend(v18 nameComponents)];
        swift_unknownObjectRelease();
        v20 = sub_2436CBD38();
        v21 = v14;
        v22 = v11;
        v23 = v10;
        v24 = v13;
        v26 = v25;

        v40[0] = v20;
        v40[1] = v26;
        v38 = a1;
        v39 = a2;
        sub_2436732AC();
        LOBYTE(v19) = sub_2436CBF78();
        v13 = v24;
        v10 = v23;
        v11 = v22;
        v14 = v21;
        v9 = v34;

        if (v19)
        {
LABEL_13:
          sub_2436CC0C8();
          v17 = *(v41 + 16);
          sub_2436CC0F8();
          sub_2436CC108();
          sub_2436CC0D8();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v12;
        if (a3 == v11)
        {
          goto LABEL_24;
        }
      }

      if (v12 < *(v14 + 16))
      {
        break;
      }

      __break(1u);
LABEL_29:
      v11 = sub_2436CC008();
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v18 = *(v10 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    a3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

LABEL_25:

  v40[0] = sub_2436C3AA8(v27);
  sub_243697714(v40);
  if (!v9)
  {

    v6 = sub_243698E50(v40[0], &v42);

LABEL_27:
    v28 = _s20MockStudentDirectoryC12UserIteratorCMa();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_currentIndex] = 0;
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_hits] = v6;
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_pageSize] = a3;
    v37.receiver = v29;
    v37.super_class = v28;
    v30 = objc_msgSendSuper2(&v37, sel_init);

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_243699424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E438, &qword_2436CDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24369948C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24369956C()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for EMSStrings.SearchStrings(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v13, v2);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B48 = v12;
  return result;
}

uint64_t sub_2436997AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = a3();
  *a4 = v9;
  return result;
}

uint64_t sub_243699834()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  done = type metadata accessor for EMSStrings.DoneStrings(0);
  v10 = *(done + 48);
  v11 = *(done + 52);
  v12 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v13, v2);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B60 = v12;
  return result;
}

uint64_t sub_243699A50()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for EMSStrings.SuccessScreen(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v13, v2);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B68 = v12;
  return result;
}

void sub_243699C60()
{
  v0 = sub_2436CBD08();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27ED7F640 = v1;
}

uint64_t sub_243699CD0()
{
  v0 = sub_2436CAC48();
  __swift_allocate_value_buffer(v0, qword_27ED7F648);
  v1 = __swift_project_value_buffer(v0, qword_27ED7F648);
  *v1 = type metadata accessor for EMSStrings();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_243699D74()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_title;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_subtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_signInHistoryAccessibilityLabel, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_cancelButtonLabel, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_243699EB0()
{
  v1 = sub_2436CADB8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CBCF8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27ED7F648);
  v11 = *(v4 + 16);
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}

uint64_t sub_24369A300()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_title;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_populatedDescription, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deselectAllHistoryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectItemsTitle, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24369A4AC()
{
  v1 = sub_2436CADB8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CBCF8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27ED7F648);
  v11 = *(v4 + 16);
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}

uint64_t sub_24369AAC8()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2436CBCD8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v11, v2);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369AD3C()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_subtitle;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_noLongerAvailable, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_federatedAccountSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitlePasswordReset, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitleContactAdministrator, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_notAvailableForThisClassTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_allStudentAccountsAreFederatedSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_learnMoreButtonTitle, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24369AEE8()
{
  v1 = sub_2436CADB8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CBCF8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27ED7F648);
  v11 = *(v4 + 16);
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v11(v7, v10, v3);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}