uint64_t sub_1908827C8()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_190882F08;
  }

  else
  {

    v2 = sub_1908828E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1908828E4()
{
  v1 = *(v0 + 288);
  *(v0 + 432) = *(v0 + 272);
  *(v0 + 448) = v1;
  v2 = *(v0 + 320);
  *(v0 + 464) = *(v0 + 304);
  *(v0 + 480) = v2;
  v3 = *(v0 + 224);
  *(v0 + 368) = *(v0 + 208);
  *(v0 + 384) = v3;
  v4 = *(v0 + 256);
  *(v0 + 400) = *(v0 + 240);
  *(v0 + 416) = v4;
  v5 = *(v0 + 192);
  *(v0 + 336) = *(v0 + 176);
  *(v0 + 352) = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 648);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_190836008(0, *(v7 + 2) + 1, 1, *(v0 + 648));
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_190836008((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 752);
  v11 = *(v0 + 744);
  v12 = *(v0 + 712);
  v13 = *(v0 + 600);

  sub_1908305F8(v13);
  *(v7 + 2) = v9 + 1;
  v14 = &v7[160 * v9];
  v15 = *(v0 + 352);
  *(v14 + 2) = *(v0 + 336);
  *(v14 + 3) = v15;
  v16 = *(v0 + 416);
  v18 = *(v0 + 368);
  v17 = *(v0 + 384);
  *(v14 + 6) = *(v0 + 400);
  *(v14 + 7) = v16;
  *(v14 + 4) = v18;
  *(v14 + 5) = v17;
  v19 = *(v0 + 480);
  v21 = *(v0 + 432);
  v20 = *(v0 + 448);
  *(v14 + 10) = *(v0 + 464);
  *(v14 + 11) = v19;
  *(v14 + 8) = v21;
  *(v14 + 9) = v20;
  v22 = *(v0 + 640) + 1;
  if (v22 == *(v0 + 624))
  {

    v23 = *(v0 + 8);

    return v23(v7);
  }

  *(v0 + 648) = v7;
  *(v0 + 640) = v22;
  v25 = *(v0 + 560) + 16 * v22;
  v26 = *(v25 + 32);
  *(v0 + 656) = v26;
  v27 = *(v25 + 40);
  *(v0 + 664) = v27;
  v28 = objc_allocWithZone(MEMORY[0x1E69A8148]);
  sub_190D52690();
  v29 = sub_190D56ED0();
  v30 = [v28 initWithEncodedMessagePartGUID_];

  if (v30)
  {
    v31 = [v30 messageGUID];
    v26 = sub_190D56F10();
    v27 = v32;

    v33 = [v30 partNumber];
    if (v33 != sub_190D50E40())
    {
      v34 = [v30 partNumber];

      v35 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_190D52690();
  }

  v34 = 0;
  v35 = 1;
LABEL_15:
  *(v0 + 688) = v27;
  *(v0 + 680) = v26;
  *(v0 + 545) = v35;
  *(v0 + 672) = v34;
  v36 = *(v0 + 616);
  v37 = *(v0 + 608);
  v38 = sub_190D572E0();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v36, 1, 1, v38);
  sub_190D52690();
  v40 = sub_190D57290();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E85E0];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v26;
  v41[5] = v27;
  sub_19022FD14(v36, v37, &qword_1EAD5BAF0);
  v43 = (*(v39 + 48))(v37, 1, v38);
  sub_190D50920();
  v44 = *(v0 + 608);
  if (v43 == 1)
  {
    sub_19022EEA4(*(v0 + 608), &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v39 + 8))(v44, v38);
  }

  v45 = v41[2];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = sub_190D57240();
    v48 = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_19022EEA4(*(v0 + 616), &qword_1EAD5BAF0);
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_190DD93D0;
  *(v49 + 24) = v41;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
  if (v48 | v46)
  {
    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    *(v0 + 512) = v46;
    *(v0 + 520) = v48;
  }

  v51 = swift_task_create();
  *(v0 + 696) = v51;
  v52 = swift_task_alloc();
  *(v0 + 704) = v52;
  *v52 = v0;
  v52[1] = sub_19088130C;
  v53 = MEMORY[0x1E69E73E0];
  v54 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 528, v51, v50, v53, v54);
}

uint64_t sub_190882E50()
{
  v1 = *(v0 + 712);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190882F08()
{
  v62 = v0;
  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 768);
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E840);
  sub_190D52690();
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 768);
  v8 = *(v0 + 752);
  v9 = *(v0 + 744);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);
  v12 = *(v0 + 664);
  if (v6)
  {
    v59 = *(v0 + 720);
    v13 = *(v0 + 656);
    v60 = *(v0 + 600);
    v14 = *(v0 + 768);
    v15 = swift_slowAlloc();
    v58 = v9;
    v16 = swift_slowAlloc();
    v57 = v8;
    v17 = swift_slowAlloc();
    v61 = v17;
    *v15 = 136315394;
    v18 = sub_19021D9F8(v13, v12, &v61);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    v19 = v14;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_19020E000, v4, v5, "Failed to construct MessageEntity: %s with error: %@", v15, 0x16u);
    sub_19022EEA4(v16, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v15, -1, -1);

    v21 = v60;
  }

  else
  {
    v22 = *(v0 + 600);

    v21 = v22;
  }

  sub_1908305F8(v21);
  v23 = *(v0 + 640) + 1;
  if (v23 == *(v0 + 624))
  {
    v24 = *(v0 + 648);

    v25 = *(v0 + 8);

    return v25(v24);
  }

  *(v0 + 640) = v23;
  v27 = *(v0 + 560) + 16 * v23;
  v28 = *(v27 + 32);
  *(v0 + 656) = v28;
  v29 = *(v27 + 40);
  *(v0 + 664) = v29;
  v30 = objc_allocWithZone(MEMORY[0x1E69A8148]);
  sub_190D52690();
  v31 = sub_190D56ED0();
  v32 = [v30 initWithEncodedMessagePartGUID_];

  if (v32)
  {
    v33 = [v32 messageGUID];
    v28 = sub_190D56F10();
    v29 = v34;

    v35 = [v32 partNumber];
    if (v35 != sub_190D50E40())
    {
      v36 = [v32 partNumber];

      v37 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_190D52690();
  }

  v36 = 0;
  v37 = 1;
LABEL_16:
  *(v0 + 688) = v29;
  *(v0 + 680) = v28;
  *(v0 + 545) = v37;
  *(v0 + 672) = v36;
  v38 = *(v0 + 616);
  v39 = *(v0 + 608);
  v40 = sub_190D572E0();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v38, 1, 1, v40);
  sub_190D52690();
  v42 = sub_190D57290();
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E85E0];
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v28;
  v43[5] = v29;
  sub_19022FD14(v38, v39, &qword_1EAD5BAF0);
  v45 = (*(v41 + 48))(v39, 1, v40);
  sub_190D50920();
  v46 = *(v0 + 608);
  if (v45 == 1)
  {
    sub_19022EEA4(*(v0 + 608), &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v41 + 8))(v46, v40);
  }

  v47 = v43[2];
  swift_unknownObjectRetain();

  if (v47)
  {
    swift_getObjectType();
    v48 = sub_190D57240();
    v50 = v49;
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  sub_19022EEA4(*(v0 + 616), &qword_1EAD5BAF0);
  v51 = swift_allocObject();
  *(v51 + 16) = &unk_190DD93D0;
  *(v51 + 24) = v43;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
  if (v50 | v48)
  {
    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    *(v0 + 512) = v48;
    *(v0 + 520) = v50;
  }

  v53 = swift_task_create();
  *(v0 + 696) = v53;
  v54 = swift_task_alloc();
  *(v0 + 704) = v54;
  *v54 = v0;
  v54[1] = sub_19088130C;
  v55 = MEMORY[0x1E69E73E0];
  v56 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 528, v53, v52, v55, v56);
}

uint64_t sub_1908835B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  sub_190D572A0();
  v5[23] = sub_190D57290();
  v7 = sub_190D57240();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190883650, v7, v6);
}

uint64_t sub_190883650()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_190D56ED0();
    v0[27] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1908837B0;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55098);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_190888620;
    v0[13] = &block_descriptor_39_0;
    v0[14] = v4;
    [v2 loadMessageItemWithGUID:v3 completionBlock:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1908837B0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_190889DB8, v2, v1);
}

uint64_t sub_1908838B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F40);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for ConversationEntity();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1908839C0, 0, 0);
}

uint64_t sub_1908839C0()
{
  *(v0 + 80) = sub_190D572A0();
  *(v0 + 88) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190883A58, v2, v1);
}

uint64_t sub_190883A58()
{
  v1 = *(v0 + 24);

  *(v0 + 96) = [v1 guid];

  return MEMORY[0x1EEE6DFA0](sub_190883AE0, 0, 0);
}

uint64_t sub_190883AE0()
{
  v25 = v0;
  v1 = v0[12];
  v2 = v0[4];
  v3 = sub_190D56F10();
  v5 = v4;

  v0[13] = v3;
  v0[14] = v5;
  v6 = *v2;
  if (*(*v2 + 16) && (v7 = sub_19022DCEC(v3, v5), (v8 & 1) != 0))
  {
    sub_190830594(*(v6 + 56) + *(v0[7] + 72) * v7, v0[9]);
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9E840);
    sub_190D52690();
    v10 = sub_190D53020();
    v11 = sub_190D57690();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = sub_19021D9F8(v3, v5, &v24);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_19020E000, v10, v11, "Returning cached conversation result for chat '%s'", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x193AF7A40](v13, -1, -1);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    else
    {
    }

    v21 = v0[7];
    sub_19082FC20(v0[9], v0[2]);
    (*(v21 + 56))(v0[2], 0, 1, v0[6]);

    v22 = v0[1];

    return v22();
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9E840);
    v16 = sub_190D53020();
    v17 = sub_190D57690();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_19020E000, v16, v17, "Creating ConversationEntity for chat", v18, 2u);
      MEMORY[0x193AF7A40](v18, -1, -1);
    }

    v0[15] = sub_190D57290();
    v20 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190883E40, v20, v19);
  }
}

uint64_t sub_190883E40()
{
  v1 = *(v0 + 24);

  *(v0 + 128) = [objc_allocWithZone(CKConversation) initWithChat_];

  return MEMORY[0x1EEE6DFA0](sub_190883ECC, 0, 0);
}

uint64_t sub_190883ECC()
{
  *(v0 + 136) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190883F58, v2, v1);
}

uint64_t sub_190883F58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);

  sub_190B9C530(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_190883FD0, 0, 0);
}

uint64_t sub_190883FD0()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];
  sub_190830594(v3, v6);
  v8 = *(v4 + 56);
  v8(v6, 0, 1, v5);
  sub_190C3BA00(v6, v1, v2);
  sub_19082FC20(v3, v7);
  v8(v0[2], 0, 1, v0[6]);

  v9 = v0[1];

  return v9();
}

void *sub_1908840E0(unint64_t a1, id a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (a1 >> 62)
    {
      v11 = sub_190D581C0();
      if (v11)
      {
LABEL_10:
        v12 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x193AF3B90](v12, a1);
          }

          else
          {
            if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v13 = *(a1 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          if ([v13 messagePartIndex] == a2)
          {
            break;
          }

          ++v12;
          if (v15 == v11)
          {
            goto LABEL_42;
          }
        }

        if (qword_1EAD521B0 != -1)
        {
          swift_once();
        }

        v16 = sub_190D53040();
        __swift_project_value_buffer(v16, qword_1EAD9E840);
        v17 = sub_190D53020();
        v18 = sub_190D57690();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = a2;
          _os_log_impl(&dword_19020E000, v17, v18, "Found part matching index %ld", v19, 0xCu);
          v20 = v19;
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_10;
      }
    }

LABEL_42:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v27 = sub_190D53040();
    __swift_project_value_buffer(v27, qword_1EAD9E840);
    v6 = sub_190D53020();
    v28 = sub_190D576A0();
    if (!os_log_type_enabled(v6, v28))
    {
      goto LABEL_47;
    }

    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = a2;
    _os_log_impl(&dword_19020E000, v6, v28, "No message part matching index %ld found", v29, 0xCu);
    v26 = v29;
    goto LABEL_46;
  }

  if (a1 >> 62)
  {
LABEL_25:
    if (sub_190D581C0() > 1)
    {
      goto LABEL_4;
    }

    v4 = sub_190D581C0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 > 1)
    {
LABEL_4:
      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v5 = sub_190D53040();
      __swift_project_value_buffer(v5, qword_1EAD9E840);
      v6 = sub_190D53020();
      v7 = sub_190D576A0();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_47;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "No part number prefix provided for a multi-part message";
LABEL_40:
      _os_log_impl(&dword_19020E000, v6, v7, v9, v8, 2u);
      v26 = v8;
LABEL_46:
      MEMORY[0x193AF7A40](v26, -1, -1);
      goto LABEL_47;
    }
  }

  if (!v4)
  {
    if (qword_1EAD521B0 == -1)
    {
LABEL_38:
      v25 = sub_190D53040();
      __swift_project_value_buffer(v25, qword_1EAD9E840);
      v6 = sub_190D53020();
      v7 = sub_190D576A0();
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_47:

        return 0;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Provided message has zero message parts";
      goto LABEL_40;
    }

LABEL_51:
    swift_once();
    goto LABEL_38;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(a1 + 32);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_51;
  }

  v21 = MEMORY[0x193AF3B90](0, a1);
LABEL_31:
  v14 = v21;
  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v22 = sub_190D53040();
  __swift_project_value_buffer(v22, qword_1EAD9E840);
  v17 = sub_190D53020();
  v23 = sub_190D57690();
  if (os_log_type_enabled(v17, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_19020E000, v17, v23, "Provided message identifier has no part number prefix, defaulting to first part", v24, 2u);
    v20 = v24;
LABEL_35:
    MEMORY[0x193AF7A40](v20, -1, -1);
  }

LABEL_36:

  return v14;
}

uint64_t sub_1908845AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[240] = a7;
  v7[239] = a6;
  v7[238] = a5;
  v7[237] = a4;
  v7[236] = a3;
  v7[235] = a2;
  v7[234] = a1;
  type metadata accessor for ConversationEntity();
  v7[241] = swift_task_alloc();
  v7[242] = swift_task_alloc();
  v8 = sub_190D50680();
  v7[243] = v8;
  v7[244] = *(v8 - 8);
  v7[245] = swift_task_alloc();
  v7[246] = swift_task_alloc();
  v9 = sub_190D515F0();
  v7[247] = v9;
  v7[248] = *(v9 - 8);
  v7[249] = swift_task_alloc();
  v7[250] = swift_task_alloc();
  v7[251] = swift_task_alloc();
  sub_190D51290();
  v7[252] = swift_task_alloc();
  v10 = sub_190D51840();
  v7[253] = v10;
  v7[254] = *(v10 - 8);
  v7[255] = swift_task_alloc();
  v7[256] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  v7[257] = swift_task_alloc();
  v7[258] = swift_task_alloc();
  v7[259] = swift_task_alloc();
  v11 = sub_190D51440();
  v7[260] = v11;
  v7[261] = *(v11 - 8);
  v7[262] = swift_task_alloc();
  sub_190D519C0();
  v7[263] = swift_task_alloc();
  sub_190D56EC0();
  v7[264] = swift_task_alloc();
  sub_190D51460();
  v7[265] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190884900, 0, 0);
}

id sub_190884900()
{
  v1 = v0[238];
  v101 = v1;
  if (v1)
  {
    v2 = [v1 mapLocations];
    sub_1902188FC(0, &qword_1EAD55078);
    v112 = sub_190D57180();

    v3 = [v1 links];
    v100 = sub_190D57180();
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
  }

  v4 = v0[262];
  v5 = v0[261];
  v82 = v0[260];
  v106 = v0[236];
  v108 = v0[235];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB0);
  sub_190D52690();
  sub_190D56E50();
  sub_190D51980();
  v6 = *(v5 + 104);
  v7 = *MEMORY[0x1E6968DF0];
  v111 = *MEMORY[0x1E6968DF0];
  v6(v4);
  sub_190D51470();
  v104 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v7, v82);
  sub_190D51470();
  v102 = sub_190D507C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB8);
  sub_190D56E50();
  sub_190D51980();
  v110 = v0;
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889A8C();
  v97 = sub_190D50720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FC8);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v96 = sub_190D507D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FD0);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889AE0();
  v95 = sub_190D50720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FE0);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v94 = sub_190D50780();
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v93 = sub_190D50780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FE8);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v92 = sub_190D50750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FF0);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v91 = sub_190D507A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54FF8);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889C40(&qword_1EAD45D90, type metadata accessor for ConversationEntity);
  v90 = sub_190D50740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55008);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889B34();
  v89 = sub_190D50760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55020);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_1908789F4();
  v88 = sub_190D50740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55030);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v87 = sub_190D507E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55038);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889B98();
  v86 = sub_190D50740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55048);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889BEC();
  v85 = sub_190D50720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55058);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190889C40(&qword_1EAD55060, type metadata accessor for Reaction);
  v84 = sub_190D50770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55068);
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  sub_190888A1C();
  v83 = sub_190D50740();
  sub_190D56E50();
  sub_190D51980();
  (v6)(v4, v111, v82);
  sub_190D51470();
  v8 = sub_190D507C0();
  v0[2] = v108;
  v0[3] = v106;
  v0[4] = v104;
  v0[5] = v102;
  v0[6] = v97;
  v0[7] = v96;
  v0[8] = v95;
  v0[9] = v94;
  v0[10] = v93;
  v0[11] = v92;
  v0[12] = v91;
  v0[13] = v90;
  v0[14] = v89;
  v0[15] = v88;
  v0[16] = v87;
  v0[17] = v86;
  v0[18] = v85;
  v0[19] = v84;
  v0[20] = v83;
  v0[21] = v8;
  if (v1)
  {
    v9 = v0[238];
    sub_190889C88((v0 + 2), (v0 + 202));
    v10 = v112;
    if ([v9 messagePartBody])
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_190889C88((v0 + 2), (v0 + 22));
    v10 = v112;
  }

  [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
LABEL_9:
  v11 = v0[259];
  v12 = v0[258];
  sub_190D51200();
  v13 = sub_190D511C0();
  v98 = *(*(v13 - 8) + 56);
  v99 = v13;
  v98(v11, 0, 1);
  sub_19022FD14(v11, v12, &qword_1EAD54E68);
  sub_190D50700();
  sub_19022EEA4(v11, &qword_1EAD54E68);
  sub_190889CE4((v0 + 2));
  if (v10 >> 62)
  {
    v14 = sub_190D581C0();
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_190889C88((v0 + 2), (v0 + 182));
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_11:
  v115 = MEMORY[0x1E69E7CC0];
  sub_190889C88((v0 + 2), (v0 + 42));
  result = sub_190D58390();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v16 = objc_opt_self();
  v17 = 0;
  v18 = v10;
  v19 = v10 & 0xC000000000000001;
  do
  {
    if (v19)
    {
      v20 = MEMORY[0x193AF3B90](v17);
    }

    else
    {
      v20 = *(v18 + 8 * v17 + 32);
    }

    v21 = v20;
    ++v17;
    v22 = [v20 location];
    v23 = [v21 description];
    sub_190D56F10();

    v24 = sub_190D56ED0();

    v25 = [v16 placemarkWithLocation:v22 name:v24 postalAddress:0];

    sub_190D58360();
    sub_190D583B0();
    sub_190D583C0();
    sub_190D58370();
    v18 = v112;
  }

  while (v14 != v17);
  v26 = v115;
LABEL_20:
  v27 = v0[237];
  v0[231] = v26;
  sub_190D50700();
  result = [v27 time];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = v0[256];
  v30 = v0[255];
  v31 = v0[254];
  v32 = v110[253];
  v33 = v110[237];

  sub_190D517E0();

  (*(v31 + 16))(v30, v29, v32);
  sub_190D50700();
  (*(v31 + 8))(v29, v32);
  v34 = v110;
  sub_190889CE4((v110 + 2));
  v35 = [v33 subject];
  if (v35)
  {
    v36 = v110[258];
    v37 = v110[257];
    v38 = v35;
    sub_190D56F10();

    sub_190889C88((v110 + 2), (v110 + 162));
    sub_190D51280();
    sub_190D511D0();
    (v98)(v36, 0, 1, v99);
    sub_19022FD14(v36, v37, &qword_1EAD54E68);
    sub_190D50700();
    sub_19022EEA4(v36, &qword_1EAD54E68);
    sub_190889CE4((v110 + 2));
  }

  v39 = v110[237];
  sub_190889C88((v110 + 2), (v110 + 62));
  *(v110 + 2144) = sub_190888BB4(v39);
  sub_190D50700();
  v40 = *(v100 + 16);
  if (v40)
  {
    v41 = v110 + 222;
    v42 = v110[248];
    v116 = MEMORY[0x1E69E7CC0];
    sub_19082DDF8(0, v40, 0);
    v43 = v116;
    v44 = *(v42 + 16);
    v42 += 16;
    v45 = v100 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v105 = *(v42 + 56);
    v107 = v44;
    v103 = (v42 - 8);
    do
    {
      v113 = v40;
      v46 = v110[251];
      v47 = v110[250];
      v48 = v110[249];
      v49 = v110[247];
      v107(v46, v45, v49);
      sub_190934680(v41);
      sub_190D514B0();
      v107(v48, v47, v49);
      sub_190D50700();
      v50 = *v103;
      (*v103)(v47, v49);
      v50(v46, v49);
      v52 = *(v116 + 16);
      v51 = *(v116 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_19082DDF8((v51 > 1), v52 + 1, 1);
      }

      *(v116 + 16) = v52 + 1;
      v53 = v116 + 40 * v52;
      v54 = *v41;
      v55 = *(v110 + 112);
      *(v53 + 64) = v110[226];
      *(v53 + 32) = v54;
      *(v53 + 48) = v55;
      v45 += v105;
      --v40;
    }

    while (v113 != 1);

    v34 = v110;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  v56 = v34[237];
  v34[232] = v43;
  sub_190D50700();
  sub_190889CE4((v34 + 2));
  v57 = [v56 guid];
  if (v57)
  {
    v58 = v57;
    v59 = sub_190D56F10();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v34[227] = v59;
  v34[228] = v61;
  sub_190889C88((v34 + 2), (v34 + 82));
  sub_190D50700();
  if (v101 && (v62 = [v34[238] transferGUID]) != 0)
  {
    v63 = v62;
    v64 = sub_190D56F10();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = v34;
  v68 = v34[239];
  v67[229] = v64;
  v67[230] = v66;
  sub_190D50700();
  sub_190889CE4((v67 + 2));
  if (!v68)
  {
    goto LABEL_44;
  }

  v69 = v67[239];
  v70 = [v69 pluginBundleID];
  v71 = v67;
  if (!v70)
  {
    goto LABEL_42;
  }

  v72 = v70;
  sub_190D56F10();

  v73 = [v69 breadcrumbText];
  if (!v73)
  {

LABEL_42:

    goto LABEL_43;
  }

  v74 = v71[258];
  v75 = v71[257];
  v76 = v73;
  sub_190D56F10();

  v109 = sub_190879A40();
  v114 = v77;
  sub_190D51280();
  sub_190D511D0();
  (v98)(v74, 0, 1, v99);
  sub_19022FD14(v74, v75, &qword_1EAD54E68);
  sub_190D50700();
  sub_19022EEA4(v74, &qword_1EAD54E68);
  sub_190D51280();
  sub_190D511D0();
  (v98)(v74, 0, 1, v99);
  sub_19022FD14(v74, v75, &qword_1EAD54E68);
  sub_190D50700();
  sub_19022EEA4(v74, &qword_1EAD54E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55070);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_190DD1D90;
  *(v78 + 32) = v109;
  *(v78 + 40) = v114;
  v71[233] = v78;
  sub_190889C88((v71 + 2), (v71 + 142));
  sub_190D50920();
  sub_190D50920();
  sub_190D50700();

  sub_190889CE4((v71 + 2));
LABEL_43:
  v67 = v71;
LABEL_44:
  sub_190889C88((v67 + 2), (v67 + 102));
  v79 = swift_task_alloc();
  v67[266] = v79;
  *v79 = v67;
  v79[1] = sub_190885F50;
  v80 = v67[246];
  v81 = v67[237];

  return sub_190886E4C(v80, v81);
}

uint64_t sub_190885F50()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    sub_190889CE4(v2 + 16);
    v3 = sub_190886294;
  }

  else
  {
    v3 = sub_19088606C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19088606C()
{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1936);
  v5 = *(v0 + 1928);
  v6 = *(v0 + 1920);
  v7 = *(v0 + 1872);
  (*(v2 + 16))(*(v0 + 1960), v1, v3);
  sub_190D50700();
  (*(v2 + 8))(v1, v3);
  sub_190889CE4(v0 + 16);
  sub_190830594(v6, v4);
  sub_190830594(v4, v5);
  sub_190889C88(v0 + 16, v0 + 976);
  sub_190D50700();
  sub_1908305F8(v4);
  sub_190889CE4(v0 + 16);
  v8 = *(v0 + 32);
  *v7 = *(v0 + 16);
  v7[1] = v8;
  v9 = *(v0 + 96);
  v11 = *(v0 + 48);
  v10 = *(v0 + 64);
  v7[4] = *(v0 + 80);
  v7[5] = v9;
  v7[2] = v11;
  v7[3] = v10;
  v12 = *(v0 + 160);
  v14 = *(v0 + 112);
  v13 = *(v0 + 128);
  v7[8] = *(v0 + 144);
  v7[9] = v12;
  v7[6] = v14;
  v7[7] = v13;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_190886294()
{
  sub_190889CE4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1908863F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55088);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v4 = sub_190D515F0();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190886508, 0, 0);
}

uint64_t sub_190886508()
{
  *(v0 + 272) = objc_opt_self();
  sub_190D572A0();
  *(v0 + 280) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908865AC, v2, v1);
}

uint64_t sub_1908865AC()
{
  v1 = *(v0 + 272);

  *(v0 + 288) = [v1 sharedInstance];

  return MEMORY[0x1EEE6DFA0](sub_190886630, 0, 0);
}

uint64_t sub_190886630(void *a1)
{
  v2 = v1[36];
  if (v2)
  {
    v3 = sub_190D56ED0();
    v1[37] = v3;
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_190886770;
    v4 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55090);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_190886CDC;
    v1[13] = &block_descriptor_34;
    v1[14] = v4;
    [v2 retrieveLocalFileURLForFileTransferWithGUID:v3 options:1 completion:v1 + 10];
    a1 = v1 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](a1);
}

uint64_t sub_190886770()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_190886C2C;
  }

  else
  {
    v2 = sub_190886880;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_190886880()
{
  v27 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 176);

  if (v2)
  {
    v3 = *(v0 + 232);
    sub_190D51550();

    v4 = sub_190D52E90();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_190D514D0();
    v5 = sub_190D56ED0();

    v6 = IMUTITypeForExtension();

    if (v6)
    {
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      sub_190D56F10();

      sub_190D52EA0();
      sub_19022EEA4(v7, &qword_1EAD55088);
      sub_190889D38(v8, v7);
    }

    v9 = *(v0 + 264);
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    (*(v11 + 16))(*(v0 + 256), v9, v10);
    sub_19022FD14(v12, v13, &qword_1EAD55088);
    sub_190D50530();
    sub_19022EEA4(v12, &qword_1EAD55088);
    (*(v11 + 8))(v9, v10);
    v14 = 0;
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9E840);
    sub_190D52690();
    v16 = sub_190D53020();
    v17 = sub_190D576A0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_19021D9F8(v19, v18, &v26);
      _os_log_impl(&dword_19020E000, v16, v17, "Failed to download file attachment for transferGUID '%s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x193AF7A40](v21, -1, -1);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }

    v14 = 1;
  }

  v22 = *(v0 + 200);
  v23 = sub_190D50540();
  (*(*(v23 - 8) + 56))(v22, v14, 1, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_190886C2C()
{
  v1 = v0[37];
  v2 = v0[36];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_190886CDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    v12 = swift_allocError();
    *v13 = a6;
    v14 = a6;

    return MEMORY[0x1EEE6DEE8](v11, v12);
  }

  if (a3)
  {
    v15 = sub_190D56F10();
    a3 = v16;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = 0;
    v19 = a5;
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = 0;
    v23 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_7:
  a4 = sub_190D56F10();
  v18 = v17;
  v19 = a5;
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v19;
  v21 = sub_190D56F10();
  v23 = v22;

LABEL_12:
  v24 = *(*(v11 + 64) + 40);
  *v24 = a2;
  *(v24 + 8) = v15;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = v18;
  *(v24 + 40) = v21;
  *(v24 + 48) = v23;

  return MEMORY[0x1EEE6DEE0](v11);
}

uint64_t sub_190886E4C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  v2[5] = swift_task_alloc();
  v3 = sub_190D505E0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_190D505B0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0);
  v2[12] = swift_task_alloc();
  v5 = sub_190D50650();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19088706C, 0, 0);
}

uint64_t sub_19088706C()
{
  v1 = [*(v0 + 32) sender];
  *(v0 + 136) = v1;
  if (v1)
  {
    *(v0 + 144) = sub_190D56F10();
    *(v0 + 152) = v2;
    sub_190D52690();
    sub_190A0D278();
    *(v0 + 160) = objc_opt_self();
    *(v0 + 168) = sub_190D572A0();
    *(v0 + 176) = sub_190D57290();
    v4 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_1908877D8, v4, v3);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E840);
    v6 = sub_190D53020();
    v7 = sub_190D57690();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Message is outgoing, fetching me card", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v9 = *(v0 + 32);

    v10 = [v9 destinationCallerID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_190D56F10();
      v14 = v13;

      sub_190D52690();
      sub_190A0D278();
      v15 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
      if (qword_1EAD51B50 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
      v16 = sub_190D57160();
      *(v0 + 16) = 0;
      v17 = [v15 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

      v18 = *(v0 + 16);
      if (v17)
      {
        v19 = v18;

        v20 = sub_190D53020();
        v21 = sub_190D57690();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_19020E000, v20, v21, "Me card found, creating IntentPerson from card", v22, 2u);
          MEMORY[0x193AF7A40](v22, -1, -1);
        }

        v24 = *(v0 + 112);
        v23 = *(v0 + 120);
        v26 = *(v0 + 96);
        v25 = *(v0 + 104);
        v27 = *(v0 + 24);

        (*(v24 + 16))(v26, v23, v25);
        (*(v24 + 56))(v26, 0, 1, v25);
        sub_190A0C4A4(v17, v26, 1, v27);
        (*(v24 + 8))(v23, v25);
      }

      else
      {
        v51 = v12;
        v33 = v18;
        v34 = sub_190D51420();

        swift_willThrow();
        v35 = sub_190D53020();
        v36 = sub_190D57690();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_19020E000, v35, v36, "Me card is null, creating IntentPerson from handle", v37, 2u);
          MEMORY[0x193AF7A40](v37, -1, -1);
        }

        v38 = *(v0 + 112);
        v48 = *(v0 + 104);
        v49 = *(v0 + 120);
        v47 = *(v0 + 96);
        v39 = *(v0 + 80);
        v40 = *(v0 + 88);
        v42 = *(v0 + 64);
        v41 = *(v0 + 72);
        v44 = *(v0 + 48);
        v43 = *(v0 + 56);
        v50 = *(v0 + 40);

        *v40 = v51;
        v40[1] = v14;
        (*(v39 + 104))(v40, *MEMORY[0x1E6959F78], v41);
        *v42 = v51;
        v42[1] = v14;
        (*(v43 + 104))(v42, *MEMORY[0x1E6959FA0], v44);
        (*(v38 + 16))(v47, v49, v48);
        (*(v38 + 56))(v47, 0, 1, v48);
        v45 = sub_190D50B50();
        (*(*(v45 - 8) + 56))(v50, 1, 1, v45);
        sub_190D52690();
        sub_190D505C0();
        (*(v38 + 8))(v49, v48);
      }

      v32 = *(v0 + 8);
    }

    else
    {
      v28 = sub_190D53020();
      v29 = sub_190D576A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_19020E000, v28, v29, "destinationCallerID is nil, unable to construct sender", v30, 2u);
        MEMORY[0x193AF7A40](v30, -1, -1);
      }

      sub_1908899E4();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();

      v32 = *(v0 + 8);
    }

    return v32();
  }
}

uint64_t sub_1908877D8()
{
  v1 = v0[20];
  v2 = v0[17];

  v0[23] = [v1 copyEntityForAddressString_];

  return MEMORY[0x1EEE6DFA0](sub_190887898, 0, 0);
}

uint64_t sub_190887898()
{
  v27 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  if (v0[23])
  {
    if (qword_1EAD51B50 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v0[24] = sub_190D57160();
    v0[25] = sub_190D57290();
    v2 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190887CC4, v2, v1);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9E840);
    sub_190D52690();
    v4 = sub_190D53020();
    v5 = sub_190D57690();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[18];
      v6 = v0[19];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_19021D9F8(v7, v6, v26);
      _os_log_impl(&dword_19020E000, v4, v5, "Failed to find CNContact matching handle '%s', creating IntentPerson from handle", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x193AF7A40](v9, -1, -1);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[6];
    v24 = v0[16];
    v25 = v0[5];
    *v15 = v10;
    v15[1] = v11;
    (*(v17 + 104))(v15, *MEMORY[0x1E6959F78], v16);
    *v19 = v10;
    v19[1] = v11;
    (*(v18 + 104))(v19, *MEMORY[0x1E6959FA0], v20);
    (*(v13 + 16))(v14, v24, v12);
    (*(v13 + 56))(v14, 0, 1, v12);
    v21 = sub_190D50B50();
    (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
    sub_190D52690();
    sub_190D505C0();
    (*(v13 + 8))(v24, v12);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_190887CC4()
{
  v1 = v0[24];
  v2 = v0[23];

  v0[26] = [v2 cnContactWithKeys:v1 shouldFetchSuggestedContact:1];

  return MEMORY[0x1EEE6DFA0](sub_190887D8C, 0, 0);
}

uint64_t sub_190887D8C()
{
  v41 = v0;
  v40[1] = *MEMORY[0x1E69E9840];
  if (*(v0 + 208))
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD9E840);
    sub_190D52690();
    v2 = sub_190D53020();
    v3 = sub_190D57690();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 152);
    if (v4)
    {
      v6 = *(v0 + 144);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40[0] = v8;
      *v7 = 136315138;
      v9 = sub_19021D9F8(v6, v5, v40);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_19020E000, v2, v3, "Found a CNContact matching handle '%s'", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v31 = *(v0 + 128);
    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);
    v35 = *(v0 + 24);
    (*(v33 + 16))(v34, v31, v32);
    (*(v33 + 56))(v34, 0, 1, v32);
    sub_190A0C4A4(v29, v34, 0, v35);

    (*(v33 + 8))(v31, v32);
  }

  else
  {

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9E840);
    sub_190D52690();
    v11 = sub_190D53020();
    v12 = sub_190D57690();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19021D9F8(v14, v13, v40);
      _os_log_impl(&dword_19020E000, v11, v12, "Failed to find CNContact matching handle '%s', creating IntentPerson from handle", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 48);
    v38 = *(v0 + 128);
    v39 = *(v0 + 40);
    *v22 = v17;
    v22[1] = v18;
    (*(v24 + 104))(v22, *MEMORY[0x1E6959F78], v23);
    *v26 = v17;
    v26[1] = v18;
    (*(v25 + 104))(v26, *MEMORY[0x1E6959FA0], v27);
    (*(v20 + 16))(v21, v38, v19);
    (*(v20 + 56))(v21, 0, 1, v19);
    v28 = sub_190D50B50();
    (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
    sub_190D52690();
    sub_190D505C0();
    (*(v20 + 8))(v38, v19);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_19088829C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  sub_190D572A0();
  v5[23] = sub_190D57290();
  v7 = sub_190D57240();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190888338, v7, v6);
}

uint64_t sub_190888338()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_190D56ED0();
    v0[27] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_190888498;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FA0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_190888620;
    v0[13] = &block_descriptor_13;
    v0[14] = v4;
    [v2 loadItemWithGUID:v3 completionBlock:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_190888498()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1908885A0, v2, v1);
}

uint64_t sub_1908885A0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);

  *v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_190888620(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = sub_190D57180();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v5 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;
  v8 = a2;

  return MEMORY[0x1EEE6DED8](v5);
}

uint64_t sub_1908886B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190830DC8;

  return MessageQuery.entities(for:)(a1);
}

uint64_t sub_190888744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_190221DA4;

  return MEMORY[0x1EEDB2EB0](a1, a2, a3);
}

uint64_t sub_1908887F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_190889A38();
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1908888AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_1908835B4(a1, v4, v5, v7, v6);
}

unint64_t sub_190888970()
{
  result = qword_1EAD46118;
  if (!qword_1EAD46118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46118);
  }

  return result;
}

unint64_t sub_1908889C8()
{
  result = qword_1EAD46110;
  if (!qword_1EAD46110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46110);
  }

  return result;
}

unint64_t sub_190888A1C()
{
  result = qword_1EAD46058;
  if (!qword_1EAD46058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46058);
  }

  return result;
}

unint64_t sub_190888A74()
{
  result = qword_1EAD46120;
  if (!qword_1EAD46120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46120);
  }

  return result;
}

unint64_t sub_190888AC8()
{
  result = qword_1EAD46048;
  if (!qword_1EAD46048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46048);
  }

  return result;
}

unint64_t sub_190888B20()
{
  result = qword_1EAD54F70;
  if (!qword_1EAD54F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54F78);
    sub_190888AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54F70);
  }

  return result;
}

uint64_t sub_190888BB4(void *a1)
{
  if ([a1 isSticker] & 1) != 0 || (objc_msgSend(a1, sel_isEmojiSticker))
  {
    return 1;
  }

  v3 = [a1 tapback];
  if (v3)
  {

    return 1;
  }

  else if ([a1 scheduleState] == 2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190888C44(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69A8148]);
  v3 = sub_190D56ED0();
  v4 = [v2 initWithEncodedMessagePartGUID_];

  if (v4)
  {
    v5 = [v4 messageGUID];
    a1 = sub_190D56F10();

    v6 = [v4 partNumber];
    if (v6 != sub_190D50E40())
    {
      [v4 partNumber];
    }
  }

  else
  {
    sub_190D52690();
  }

  return a1;
}

void *sub_190888D44(unint64_t a1, id a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AF3B90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && [v9 index] == a2)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t sub_190888E50(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190888EEC, 0, 0);
}

uint64_t sub_190888EEC()
{
  v1 = *(v0 + 56);
  v2 = sub_190888C44(*(v0 + 40));
  v4 = v3;
  *(v0 + 64) = v3;
  *(v0 + 72) = v5;
  *(v0 + 33) = v6;
  v7 = sub_190D572E0();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  *(v0 + 80) = sub_190D572A0();
  sub_190D52690();
  v8 = sub_190D57290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v4;
  v11 = sub_1908583FC(0, 0, v1, &unk_190DD9538, v9);
  *(v0 + 88) = v11;
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54870);
  *v12 = v0;
  v12[1] = sub_190889088;
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v0 + 16, v11, v13, v14, v15);
}

uint64_t sub_190889088()
{

  return MEMORY[0x1EEE6DFA0](sub_1908891A0, 0, 0);
}

uint64_t sub_1908891A0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v1 + 104) = v3;
  *(v1 + 112) = v2;
  if (*(v1 + 32))
  {
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6C240](a1, v4, v5);
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  v6 = sub_190D52690();
  v7 = sub_190880C0C(v6, &qword_1EAD44EE0);
  *(v1 + 120) = v7;

  if (!v7)
  {
LABEL_21:

LABEL_22:

    sub_1908899E4();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    v12 = v3;
    goto LABEL_23;
  }

  if (v7 >> 62)
  {
    v10 = sub_190D581C0();
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_9:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x193AF3B90](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v10, v8, v9);
    }

    v11 = *(v7 + 32);
  }

  v12 = v11;
  *(v1 + 128) = v11;
  if (v3)
  {
    v13 = v3;
    *(v1 + 136) = sub_190D57290();
    v14 = sub_190D57240();
    v16 = v15;
    v10 = sub_190889404;
    v8 = v14;
    v9 = v16;

    return MEMORY[0x1EEE6DFA0](v10, v8, v9);
  }

  sub_1908899E4();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();
LABEL_23:

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_190889404()
{

  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 128);

    v6 = [v4 defaultConversationLoadMoreCount];

    v1 = sub_190889500;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_190889500()
{
  v1 = v0[13];
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD55F0;
  *(v2 + 32) = v1;
  sub_1902188FC(0, &unk_1EAD54F90);
  v3 = v1;
  v0[19] = sub_190D57160();

  v0[20] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190889608, v5, v4);
}

uint64_t sub_190889608()
{
  v1 = v0[19];
  v2 = v0[16];

  v0[21] = [v2 chatItemsForItems_];

  return MEMORY[0x1EEE6DFA0](sub_190889698, 0, 0);
}

uint64_t sub_190889698()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 33);
  sub_1902188FC(0, &unk_1EAD450C0);
  v3 = sub_190D57180();

  if (v2)
  {
LABEL_4:
    v5 = *(v0 + 104);

    v6 = *(v0 + 8);
    v7 = *(v0 + 128);

    return v6(v3, v7);
  }

  v4 = sub_190888D44(v3, *(v0 + 72));

  if (v4)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_190DD55F0;
    *(v3 + 32) = v4;
    goto LABEL_4;
  }

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9E840);
  v10 = sub_190D53020();
  v11 = sub_190D576A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&dword_19020E000, v10, v11, "Failed to find an IMChatItem matching part index %ld", v13, 0xCu);
    MEMORY[0x193AF7A40](v13, -1, -1);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 104);

  sub_1908899E4();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190889924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_19088829C(a1, v4, v5, v7, v6);
}

unint64_t sub_1908899E4()
{
  result = qword_1EAD54F80;
  if (!qword_1EAD54F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54F80);
  }

  return result;
}

unint64_t sub_190889A38()
{
  result = qword_1EAD54FA8;
  if (!qword_1EAD54FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54FA8);
  }

  return result;
}

unint64_t sub_190889A8C()
{
  result = qword_1EAD54FC0;
  if (!qword_1EAD54FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54FC0);
  }

  return result;
}

unint64_t sub_190889AE0()
{
  result = qword_1EAD54FD8;
  if (!qword_1EAD54FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54FD8);
  }

  return result;
}

unint64_t sub_190889B34()
{
  result = qword_1EAD55010;
  if (!qword_1EAD55010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55010);
  }

  return result;
}

unint64_t sub_190889B98()
{
  result = qword_1EAD55040;
  if (!qword_1EAD55040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55040);
  }

  return result;
}

unint64_t sub_190889BEC()
{
  result = qword_1EAD55050;
  if (!qword_1EAD55050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55050);
  }

  return result;
}

uint64_t sub_190889C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190889D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190889DBC()
{

  v1 = OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_minimumDelay;
  v2 = sub_190D56760();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_startTime;
  v4 = sub_190D567F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _s16ManagedAnimationCMa()
{
  result = qword_1EAD550A8;
  if (!qword_1EAD550A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190889F14()
{
  result = sub_190D56760();
  if (v1 <= 0x3F)
  {
    result = sub_190D567F0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_19088A008(unsigned __int8 a1)
{
  v1 = 0xD00000000000002ELL;
  v2 = 0xD000000000000035;
  v3 = 0xD000000000000036;
  if (a1 != 3)
  {
    v3 = 0xD00000000000002ELL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000030;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19088A098(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == 0xD00000000000002ELL && 0x8000000190E60700 == a2)
  {

    goto LABEL_5;
  }

  v6 = sub_190D58760();

  if (v6)
  {
LABEL_5:
    if (a3)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (a1 == 0xD000000000000030 && 0x8000000190E606C0 == a2)
  {

    return 1;
  }

  else
  {
    v8 = sub_190D58760();

    if (v8)
    {
      return 1;
    }

    else if (a1 == 0xD000000000000035 && 0x8000000190E60680 == a2)
    {

      return 2;
    }

    else
    {
      v9 = sub_190D58760();

      if (v9)
      {
        return 2;
      }

      else if (a1 == 0xD000000000000036 && 0x8000000190E60640 == a2)
      {

        return 3;
      }

      else
      {
        v10 = sub_190D58760();

        if (v10)
        {
          return 3;
        }

        else
        {
          return 5;
        }
      }
    }
  }
}

unint64_t sub_19088A278()
{
  result = qword_1EAD55120;
  if (!qword_1EAD55120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55120);
  }

  return result;
}

unint64_t sub_19088A2E0()
{
  result = qword_1EAD55130;
  if (!qword_1EAD55130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55130);
  }

  return result;
}

id sub_19088A344()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isExpressiveTextEnabled];
  v2 = type metadata accessor for BalloonTextViewConfiguration();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___CKBalloonTextViewConfiguration_expressiveTextEnabled] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id BalloonTextViewConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalloonTextViewConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalloonTextViewConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19088A590()
{
  v2.receiver = v0;
  v2.super_class = _s14ActionHandlersCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19088A664(void *a1, void *a2)
{
  v3 = v2;
  v5 = [v2 desiredTranscriptScrollIntentForCurrentContentOffset];
  if (qword_1EAD46270 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D7A8);
  swift_unknownObjectRetain();
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v77 = v10;
    *v9 = 136315394;
    v11 = CKDebugNameForCKTranscriptScrollIntent(v5);
    swift_unknownObjectRelease();
    if (!v11)
    {
      __break(1u);
      goto LABEL_34;
    }

    v12 = sub_190D56F10();
    v14 = v13;

    v15 = sub_19021D9F8(v12, v14, &v77);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55160);
    v16 = sub_190D56F70();
    v18 = sub_19021D9F8(v16, v17, &v77);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_19020E000, v7, v8, "Calculated base desired scrollIntent %s, calling into trigger: %s to update intent. ", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);

    v3 = v2;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v19 = [v3 collectionView];
  v20 = [v19 transcriptScrollIntent];

  v21 = [objc_allocWithZone(CKTranscriptScrollIntentTriggerUpdateContext) initWithContentOffsetScrollIntent:v5 currentScrollIntent:v20];
  v22 = [a1 updateRequestWithUpdateContext_];
  if (!v22)
  {
    swift_unknownObjectRetain();
    v39 = sub_190D53020();
    v40 = sub_190D576C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v77 = v42;
      *v41 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55160);
      v43 = sub_190D56F70();
      v45 = sub_19021D9F8(v43, v44, &v77);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_19020E000, v39, v40, "Trigger: %s returned back nil. Bailing.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x193AF7A40](v42, -1, -1);
      MEMORY[0x193AF7A40](v41, -1, -1);
    }

    goto LABEL_30;
  }

  v23 = v22;
  v76 = v3;
  if ([v22 intent] == v5)
  {
LABEL_17:
    swift_unknownObjectRetain();
    v46 = v23;
    v47 = sub_190D53020();
    v48 = sub_190D576C0();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v21;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v77 = v52;
      *v49 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55160);
      v53 = sub_190D56F70();
      v55 = sub_19021D9F8(v53, v54, &v77);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      *v51 = v23;
      v56 = v46;
      _os_log_impl(&dword_19020E000, v47, v48, "Trigger: %s calculated scroll request: %@", v49, 0x16u);
      sub_190830D58(v51);
      v57 = v51;
      v21 = v50;
      MEMORY[0x193AF7A40](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v52;
      v3 = v76;
      MEMORY[0x193AF7A40](v58, -1, -1);
      MEMORY[0x193AF7A40](v49, -1, -1);
    }

    v59 = [v3 collectionView];
    v60 = [v59 transcriptScrollIntent];

    if (v60 == [v46 intent])
    {
      v61 = v46;
      v62 = sub_190D53020();
      v63 = sub_190D57690();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v77 = v65;
        *v64 = 136315138;
        v66 = CKDebugNameForCKTranscriptScrollIntent([v61 intent]);

        if (v66)
        {
          v67 = sub_190D56F10();
          v69 = v68;

          v70 = sub_19021D9F8(v67, v69, &v77);

          *(v64 + 4) = v70;
          _os_log_impl(&dword_19020E000, v62, v63, "Already at intent: %s, ignoring request.", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x193AF7A40](v65, -1, -1);
          MEMORY[0x193AF7A40](v64, -1, -1);

          return;
        }

        goto LABEL_35;
      }

LABEL_30:
      return;
    }

    v71 = [v3 collectionView];
    [v71 setTranscriptScrollIntent_];

    v72 = [v46 animationProperties];
    if (!v72)
    {
      if (!a2)
      {
        if (![v46 wantsDeferredScrollIntentEnforcement])
        {
          goto LABEL_28;
        }

        v73 = [v3 collectionView];
        [v73 setNeedsScrollIntentEnforced];
LABEL_27:

LABEL_28:
        return;
      }

      v72 = a2;
    }

    v73 = v72;
    [v3 enforceTranscriptScrollIntentWithAnimationProperties_];
    goto LABEL_27;
  }

  v24 = v23;
  swift_unknownObjectRetain();
  v11 = v24;
  v25 = sub_190D53020();
  v26 = sub_190D576C0();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v25, v26))
  {

    goto LABEL_16;
  }

  v74 = v21;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v77 = v28;
  *v27 = 136315650;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55160);
  v29 = sub_190D56F70();
  v31 = sub_19021D9F8(v29, v30, &v77);

  *(v27 + 4) = v31;
  *(v27 + 12) = 2080;
  v32 = CKDebugNameForCKTranscriptScrollIntent(v5);
  if (v32)
  {
    v33 = v32;
    v34 = sub_190D56F10();
    v36 = v35;

    v37 = sub_19021D9F8(v34, v36, &v77);

    *(v27 + 14) = v37;
    *(v27 + 22) = 2048;
    v38 = [(__CFString *)v11 intent];

    *(v27 + 24) = v38;
    _os_log_impl(&dword_19020E000, v25, v26, "Trigger: %s overrode intent: %s with %ld", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v28, -1, -1);
    MEMORY[0x193AF7A40](v27, -1, -1);

    v21 = v74;
LABEL_16:
    v3 = v76;
    goto LABEL_17;
  }

LABEL_34:

  __break(1u);
LABEL_35:
  __break(1u);
}

__CFString *CKTranscriptScrollIntent.description.getter(unint64_t a1)
{
  result = CKDebugNameForCKTranscriptScrollIntent(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56F10();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_19088B028()
{
  result = CKDebugNameForCKTranscriptScrollIntent(*v0);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56F10();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19088B080()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D7A8);
  __swift_project_value_buffer(v0, qword_1EAD9D7A8);
  sub_190D53010();
  return sub_190D53030();
}

id CKMessageDisplayViewLayoutAttributes.__allocating_init(messageDisplayViewSize:wantsFrameClamping:)(char a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize];
  *v8 = a2;
  v8[1] = a3;
  v7[OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping] = a1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CKMessageDisplayViewLayoutAttributes.init(messageDisplayViewSize:wantsFrameClamping:)(char a1, double a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize];
  *v4 = a2;
  v4[1] = a3;
  v3[OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping] = a1;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CKMessageDisplayViewLayoutAttributes();
  return objc_msgSendSuper2(&v6, sel_init);
}

double sub_19088B27C()
{
  v1 = v0 + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_19088B31C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_19088B41C()
{
  v1 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19088B4B4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CKMessageDisplayViewLayoutAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKMessageDisplayViewLayoutAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKMessageDisplayViewLayoutAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19088B7F8()
{

  return swift_deallocClassInstance();
}

void *CKAppCardPresentationOverseer.browserViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  v3 = v2;
  return v2;
}

void *CKAppCardPresentationOverseer.containerViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  v2 = v1;
  return v1;
}

uint64_t CKAppCardPresentationOverseer.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

double CKAppCardPresentationOverseer.appCardDismissPadding.getter()
{
  v1 = OBJC_IVAR___CKAppCardPresentationOverseer_appCardDismissPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

void CKAppCardPresentationOverseer.appCardDismissPadding.setter(double a1)
{
  v3 = OBJC_IVAR___CKAppCardPresentationOverseer_appCardDismissPadding;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 sheetPresentationController];
    if (v6)
    {
      v7 = *(v1 + v3);
      v8 = v6;
      [v6 _ck_setExteriorDismissPadding_];

      v5 = v8;
    }
  }
}

void sub_19088BC04()
{
  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DA28);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_12;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v31[0] = v6;
  *v5 = 136315138;
  v7 = *&v2[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (!v7)
  {

LABEL_10:
    v10 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v8 = [*(v7 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController) balloonPlugin];

  if (!v8)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v9 = [v8 identifier];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = sub_190D56F10();
  v12 = v11;

LABEL_11:
  v32[0] = v10;
  v32[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
  v13 = sub_190D56F50();
  v15 = sub_19021D9F8(v13, v14, v31);

  *(v5 + 4) = v15;
  _os_log_impl(&dword_19020E000, v3, v4, "Requested to update currentBrowser's pluginContext, browser: %s", v5, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v6);
  MEMORY[0x193AF7A40](v6, -1, -1);
  MEMORY[0x193AF7A40](v5, -1, -1);
LABEL_12:

  v16 = *&v2[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  v18 = [v17 balloonPlugin];
  if (!v18)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18;
  v20 = [v18 identifier];

  if (!v20)
  {
    sub_190D56F10();
    goto LABEL_23;
  }

  v21 = sub_190D56F10();
  v23 = v22;

  v24 = sub_190D56F10();
  if (!v23)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (v21 == v24 && v23 == v25)
  {

    goto LABEL_27;
  }

  v27 = sub_190D58760();

  if (v27)
  {
LABEL_27:
    if ([v17 respondsToSelector_])
    {
      v28 = OBJC_IVAR___CKAppCardPresentationOverseer_pluginContext;
      swift_beginAccess();
      sub_19023C414(&v2[v28], v32);
      if (!v32[3])
      {

        sub_19021E7D8(v32);
        return;
      }

      type metadata accessor for CKSendLaterPluginInfo(0);
      if (swift_dynamicCast())
      {
        [v17 performSelector:sel_setPluginContext_ withObject:v30];

        v29 = v17;
        return;
      }
    }
  }

LABEL_24:
}

uint64_t CKAppCardPresentationOverseer.presentationBegan.getter()
{
  v1 = OBJC_IVAR___CKAppCardPresentationOverseer_presentationBegan;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CKAppCardPresentationOverseer.presentationBegan.setter(char a1)
{
  v3 = OBJC_IVAR___CKAppCardPresentationOverseer_presentationBegan;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CKAppCardPresentationOverseer.init(presenting:sendDelegate:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPresentingViewController:a1 sendDelegate:a2];

  swift_unknownObjectRelease();
  return v3;
}

char *CKAppCardPresentationOverseer.init(presenting:sendDelegate:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___CKAppCardPresentationOverseer_pluginContext];
  *v3 = 0u;
  v3[1] = 0u;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CKAppCardPresentationOverseer_appCardDismissPadding] = 0;
  *&v1[OBJC_IVAR___CKAppCardPresentationOverseer_container] = 0;
  v1[OBJC_IVAR___CKAppCardPresentationOverseer_presentationBegan] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CKAppCardPresentationOverseer_tracker] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v10.receiver = v1;
  v10.super_class = CKAppCardPresentationOverseer;
  v4 = objc_msgSendSuper2(&v10, sel_init);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AppCardRemoteViewTracker();
  v6 = swift_allocObject();
  *(v6 + 32) = 1;
  *(v6 + 16) = sub_19088C3C0;
  *(v6 + 24) = v5;
  *&v4[OBJC_IVAR___CKAppCardPresentationOverseer_tracker] = v6;
  v7 = v4;

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v7 selector:sel_extensionRemoteConnectionWasInterruptedWithNotification_ name:*MEMORY[0x1E69A6F28] object:0];

  swift_unknownObjectRelease();
  return v7;
}

void sub_19088C328(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong delegate];

    if (v4)
    {
      [v4 appCardOverseerViewStateDidChange_];
      swift_unknownObjectRelease();
    }
  }
}

id CKAppCardPresentationOverseer.updateCurrentBrowser(for:dataSource:pluginContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = a1;
  v10 = v9;
  if (([v9 presentationContexts] & 2) != 0)
  {
    v11 = [objc_opt_self() sharedInstance];
    v10 = [v11 pluginForExtensionIdentifier_];

    if (!v10)
    {
      v10 = v9;
    }

    *(v8 + 16) = v10;
  }

  v12 = v10;
  v13 = sub_1908955D0(v12, a2);

  if (v13)
  {
    v14 = OBJC_IVAR___CKAppCardPresentationOverseer_pluginContext;
    swift_beginAccess();
    sub_190895794(a3, &v4[v14]);
    swift_endAccess();
    v15 = [objc_opt_self() sharedFeatureFlags];
    LODWORD(v14) = [v15 isPopoverSendMenuEnabled];

    if (v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v17 = objc_allocWithZone(type metadata accessor for AppCardContainerViewController());
      v18 = v4;
      v19 = sub_1909E668C(v13, v4, &off_1F0407338, Strong);
      v20 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
      v21 = *&v18[OBJC_IVAR___CKAppCardPresentationOverseer_container];
      *&v18[OBJC_IVAR___CKAppCardPresentationOverseer_container] = v19;
      v22 = v19;

      if (!*&v18[v20])
      {
        [v18 setPresentationBegan_];
      }

      sub_19088BC04();
      goto LABEL_17;
    }

    v23 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
    v24 = *&v4[OBJC_IVAR___CKAppCardPresentationOverseer_container];
    if (v24)
    {
      v25 = v24;
      if ([v4 isPresentingInSendMenuPopover])
      {
        v22 = v13;
        sub_1909E9514(v22);

LABEL_17:
        if ([v13 respondsToSelector_])
        {
          v31 = *&v4[OBJC_IVAR___CKAppCardPresentationOverseer_tracker];
          if (v31)
          {
            *(v31 + 32) = 1;
            v32 = *(v31 + 16);
            v33 = v13;
            sub_190D50920();
            sub_190D50920();
            v32(1);
          }

          else
          {
            v34 = v13;
          }

          v35 = [*(v8 + 16) shouldDelayViewControllerPresentation];
          [*(v8 + 16) presentationDelay];
          if (v35)
          {
            v37 = *&v4[OBJC_IVAR___CKAppCardPresentationOverseer_container];
            if (v37)
            {
              v51 = sub_190895814;
              v52 = v8;
              v47 = MEMORY[0x1E69E9820];
              v48 = 1107296256;
              v49 = sub_19088CC1C;
              v50 = &block_descriptor_9_0;
              v38 = v36;
              v39 = _Block_copy(&v47);
              v40 = v37;
              sub_190D50920();

              [v40 _beginDelayingPresentation_cancellationHandler_];
              _Block_release(v39);
            }
          }

          v41 = swift_allocObject();
          *(v41 + 16) = v35;
          *(v41 + 24) = v4;
          *(v41 + 32) = v8;
          *(v41 + 40) = v9;
          *(v41 + 48) = v13;
          v51 = sub_190895804;
          v52 = v41;
          v47 = MEMORY[0x1E69E9820];
          v48 = 1107296256;
          v49 = sub_190896518;
          v50 = &block_descriptor_14;
          v42 = _Block_copy(&v47);
          v43 = v9;
          v44 = v4;
          v45 = v13;
          sub_190D50920();
          sub_190D50920();

          [v45 loadRemoteViewWithCompletion_];
          _Block_release(v42);
        }

        goto LABEL_26;
      }
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    v27 = objc_allocWithZone(type metadata accessor for AppCardContainerViewController());
    v28 = v4;
    v29 = sub_1909E668C(v13, v4, &off_1F0407338, v26);
    v30 = *&v4[v23];
    *&v4[v23] = v29;
    v22 = v29;

    if (!*&v4[v23])
    {
      [v28 setPresentationBegan_];
    }

    sub_19088BC04();

    goto LABEL_17;
  }

LABEL_26:

  return v13;
}

void sub_19088C948(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_190896518;
    v5[3] = &block_descriptor_219;
    v4 = _Block_copy(v5);
    sub_190D50920();
  }

  else
  {
    v4 = 0;
  }

  a3(v4);
  _Block_release(v4);
}

uint64_t sub_19088CA10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v3(a2);
}

uint64_t sub_19088CA64(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 1;
  }

  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DA28);
  sub_190D50920();
  v4 = sub_190D53020();
  v5 = sub_190D576A0();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_8;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v14 = v7;
  *v6 = 136315138;
  swift_beginAccess();
  v8 = [*(a2 + 16) identifier];

  if (v8)
  {
    v10 = sub_190D56F10();
    v12 = v11;

    v13 = sub_19021D9F8(v10, v12, &v14);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_19020E000, v4, v5, "Remote app card controller %s timed out during delayed presentation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
LABEL_8:

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_19088CC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_19088CC6C(char a1, char a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = &unk_1EAD55000;
  if (a2)
  {
    v11 = objc_opt_self();
    if ([v11 ck_canDismissAndPresentSimultaneously])
    {
      v10 = swift_allocObject();
      v10[2] = a3;
      v12 = swift_allocObject();
      v13 = sub_190896458;
      *(v12 + 16) = sub_190896458;
      *(v12 + 24) = v10;
      v49 = sub_1908964D8;
      v50 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_19088B7B8;
      v48 = &block_descriptor_232;
      v14 = _Block_copy(&aBlock);
      v15 = a3;
      sub_190D50920();

      [v11 ck:v14 performWithSimultaneousPresentationTransitionsEnabled:?];
      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v17 = *&a3[v10[48]];
    if (v17)
    {
      [v17 _endDelayingPresentation];
    }
  }

  v13 = 0;
LABEL_8:
  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v18 = sub_190D53040();
  __swift_project_value_buffer(v18, qword_1EAD9DA28);
  v19 = sub_190D53020();
  v20 = sub_190D57680();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = a1 & 1;
    _os_log_impl(&dword_19020E000, v19, v20, "Loaded remote view. Success=%{BOOL}d", v21, 8u);
    MEMORY[0x193AF7A40](v21, -1, -1);
  }

  swift_beginAccess();
  v22 = [*(a4 + 16) identifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_190D56F10();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [a5 identifier];
  if (!v27)
  {
    if (!v26)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v28 = v27;
  v29 = sub_190D56F10();
  v31 = v30;

  if (!v26)
  {
    if (!v31)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (!v31)
  {
LABEL_24:

LABEL_25:
    if ([v44 respondsToSelector_])
    {
      v32 = [a5 identifier];
      if (v32)
      {
        v33 = v32;
        sub_190D56F10();

        v34 = sub_190D56ED0();
      }

      else
      {
        v34 = 0;
      }

      v49 = nullsub_10;
      v50 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_190840E6C;
      v48 = &block_descriptor_222;
      v36 = _Block_copy(&aBlock);

      [v44 _setPluginIdentifierToShow_completion_];
      _Block_release(v36);
    }

    goto LABEL_32;
  }

  if (v24 == v29 && v26 == v31)
  {

    goto LABEL_32;
  }

  v35 = sub_190D58760();

  if ((v35 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_32:
  v37 = *&a3[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1909E87E4();
    sub_1909E8C48(v39);
    sub_1909E8D7C(v39);
  }

  v40 = *&a3[OBJC_IVAR___CKAppCardPresentationOverseer_tracker];
  if (v40)
  {
    *(v40 + 32) = 0;
    v41 = *(v40 + 16);
    sub_190D50920();
    sub_190D50920();
    v41(0);
  }

  return sub_19022123C(v13);
}

Swift::Bool __swiftcall CKAppCardPresentationOverseer.updateCurrentBrowser(with:)(IMBalloonPluginDataSource *with)
{
  v2 = v1;
  v4 = [v2 browserViewController];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (([v4 respondsToSelector_] & 1) != 0 && !objc_msgSend(v5, sel_canReplaceDataSource))
  {
    v6 = 0;
  }

  else
  {
    [v5 setBalloonPluginDataSource_];
    v6 = 1;
  }

  return v6;
}

uint64_t CKAppCardPresentationOverseer.isPresentingInSendMenuPopover.getter()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activeSendMenuPresentationForAppCardOverseer];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 presentationStyle];
  if (!v3)
  {
    v4 = 0;
LABEL_8:

    return v4;
  }

  if (v3 == 1)
  {
    v4 = 1;
    goto LABEL_8;
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

uint64_t sub_19088D490()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activeSendMenuPresentationForAppCardOverseer];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return v2;
  }

  v3 = [v2 presentationStyle];
  if (v3 == 1)
  {
    return v2;
  }

  if (!v3)
  {

    return 0;
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

void *CKAppCardPresentationOverseer.isPresentingInSheetController.getter()
{
  if ([v0 isPresentingInSendMenuPopover])
  {
    return 0;
  }

  result = *&v0[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (result)
  {
    return ([result modalPresentationStyle] == 1);
  }

  return result;
}

id sub_19088D630()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = *&v0[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = [*(v5 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController) balloonPlugin];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result identifier];

  if (v8)
  {
    v9 = sub_190D56F10();
    v11 = v10;

    v12 = sub_190D50FA0();
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
    v11 = 0;
    v12 = sub_190D50FA0();
    if (!v12)
    {
LABEL_19:
      v26 = 0u;
      v27 = 0u;
      goto LABEL_20;
    }
  }

  v13 = v12;
  v24[1] = sub_190D56F10();
  v24[2] = v14;
  sub_190D58230();
  if (!*(v13 + 16) || (v15 = sub_190875C84(v25), (v16 & 1) == 0))
  {

    sub_19084CFD0(v25);
    goto LABEL_19;
  }

  sub_19021834C(*(v13 + 56) + 32 * v15, &v26);
  sub_19084CFD0(v25);

  if (!*(&v27 + 1))
  {
LABEL_20:
    sub_19021E7D8(&v26);
  }

  v17 = swift_dynamicCast();
  v18 = v25[0];
  if (v17)
  {
    v19 = v25[1];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (!v11 || !v19)
  {
  }

  if (v18 == v9 && v19 == v11)
  {

LABEL_24:
    v21 = sub_190D572E0();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v1;
    v23 = v1;
    sub_190857E08(0, 0, v4, &unk_190DD99B8, v22);
  }

  v20 = sub_190D58760();

  if (v20)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_19088D930()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_19088DA48;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19088DB28;
  v0[13] = &block_descriptor_170;
  v0[14] = v2;
  [v1 dismissCardAnimated:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19088DA48()
{

  return MEMORY[0x1EEE6DFA0](sub_1908964DC, 0, 0);
}

uint64_t sub_19088DB28(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_19088DC44(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 320) = a2;
  *(v5 + 144) = a1;
  *(v5 + 152) = a3;
  *(v5 + 176) = sub_190D572A0();
  *(v5 + 184) = sub_190D57290();
  v7 = sub_190D57240();
  *(v5 + 192) = v7;
  *(v5 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_19088DCE8, v7, v6);
}

uint64_t sub_19088DCE8()
{
  v46 = v0;
  v1 = *(v0 + 160);
  *(*(v0 + 152) + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle) = *(v0 + 144);
  sub_1909E6318();
  v2 = [v1 traitCollection];
  sub_1909E72DC(v2);

  v3 = sub_19088D490();
  *(v0 + 208) = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 152);
    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9DA28);
    v7 = v5;
    v8 = sub_190D53020();
    v9 = sub_190D576A0();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315650;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v13 = 0xEF6C61646F4D6E65;
        v14 = 0x657263536C6C7566;
        goto LABEL_46;
      }

      if (v10 == 3)
      {
        v13 = 0xE900000000000077;
        v14 = 0x6569567972746E65;
        goto LABEL_46;
      }
    }

    else
    {
      if (!v10)
      {
        v13 = 0xE700000000000000;
        v14 = 0x746361706D6F63;
        goto LABEL_46;
      }

      if (v10 == 1)
      {
        v13 = 0xE800000000000000;
        v14 = 0x6465646E61707865;
LABEL_46:
        v36 = *(v0 + 320);
        v37 = sub_19021D9F8(v14, v13, &v45);

        *(v11 + 4) = v37;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v36;
        *(v11 + 18) = 2080;
        swift_getObjectType();
        v38 = sub_190D58980();
        v40 = sub_19021D9F8(v38, v39, &v45);

        *(v11 + 20) = v40;
        _os_log_impl(&dword_19020E000, v8, v9, "Overseer asked to present card with style=%s – animated=%{BOOL}d – container=%s while a send menu presentation is already active. Presenting card…", v11, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v12, -1, -1);
        MEMORY[0x193AF7A40](v11, -1, -1);
LABEL_47:

        v41 = [*(v0 + 168) delegate];
        if (v41)
        {
          [v41 appCardOverseerWillPresentAppCard];
          swift_unknownObjectRelease();
        }

        v43 = *(v0 + 144);
        v42 = *(v0 + 152);
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_19088E3F4;
        v44 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_19088DB28;
        *(v0 + 104) = &block_descriptor_188;
        *(v0 + 112) = v44;
        [v4 presentCardWithContentViewController:v42 style:v43 completion:v0 + 80];
        v31 = (v0 + 16);

        return MEMORY[0x1EEE6DEC8](v31);
      }
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    goto LABEL_46;
  }

  if (sub_19088EE70())
  {
    v15 = *(v0 + 168);

    v16 = [v15 delegate];
    if (v16)
    {
      [v16 appCardOverseerWillPresentAppCard];
      swift_unknownObjectRelease();
    }

    v17 = [*(v0 + 168) delegate];
    if (v17)
    {
      [v17 presentSendMenuForAppCardOverseerWithAppCardViewController:*(v0 + 152) presentationStyle:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    v18 = [*(v0 + 168) delegate];
    if (v18)
    {
      [v18 appCardOverseerDidPresentAppCard];
      swift_unknownObjectRelease();
    }

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = [*(v0 + 160) presentedViewController];
  *(v0 + 216) = v21;
  objc_opt_self();
  v22 = 0;
  if (swift_dynamicCastObjCClass() && v21)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass() != 0;
  }

  v23 = [*(v0 + 168) isPresentingInSendMenuPopover];
  if (v22 || (v23 & 1) != 0 || !v21)
  {
    if (([*(v0 + 168) isPresentingInSendMenuPopover] & 1) == 0)
    {
      v28 = [*(v0 + 152) sheetPresentationController];
      if (v28)
      {
        v29 = v28;
        [v28 setDelegate_];
      }
    }

    v30 = [*(v0 + 168) delegate];
    if (v30)
    {
      [v30 appCardOverseerWillPresentAppCard];
      swift_unknownObjectRelease();
    }

    if (!IMIsRunningIniMessageAppsViewService())
    {
      goto LABEL_39;
    }

    v31 = [*(v0 + 160) view];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 window];

      if (!v33)
      {
LABEL_39:
        [*(v0 + 168) setPresentationBegan_];
        *(v0 + 272) = sub_190D57290();
        v24 = sub_190D57240();
        v26 = v35;
        *(v0 + 280) = v24;
        *(v0 + 288) = v35;
        v27 = sub_19088EA0C;
        goto LABEL_40;
      }

      v34 = [v33 _rootSheetPresentationController];

      if (v34)
      {
        [v34 _setShouldScaleDownBehindDescendantSheets_];

        goto LABEL_39;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v31);
  }

  *(v0 + 224) = sub_190D57290();
  v24 = sub_190D57240();
  v26 = v25;
  *(v0 + 232) = v24;
  *(v0 + 240) = v25;
  v27 = sub_19088E59C;
LABEL_40:

  return MEMORY[0x1EEE6DFA0](v27, v24, v26);
}

uint64_t sub_19088E3F4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19088E4FC, v2, v1);
}

uint64_t sub_19088E4FC()
{
  v1 = v0[21];

  v2 = [v1 delegate];
  v3 = v0[26];
  if (v2)
  {
    [v2 appCardOverseerDidPresentAppCard];
    swift_unknownObjectRelease();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_19088E59C()
{
  v1 = v0[27];
  v0[31] = sub_190D57290();
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_19088E6A4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_19088E6A4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_19088E804, v3, v2);
}

uint64_t sub_19088E804()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_19088E868, v1, v2);
}

uint64_t sub_19088E868()
{
  if (([*(v0 + 168) isPresentingInSendMenuPopover] & 1) == 0)
  {
    v1 = [*(v0 + 152) sheetPresentationController];
    if (v1)
    {
      v2 = v1;
      [v1 setDelegate_];
    }
  }

  v3 = [*(v0 + 168) delegate];
  if (v3)
  {
    [v3 appCardOverseerWillPresentAppCard];
    swift_unknownObjectRelease();
  }

  if (!IMIsRunningIniMessageAppsViewService())
  {
    goto LABEL_11;
  }

  v4 = [*(v0 + 160) view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v4;
  v8 = [v4 window];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v8 _rootSheetPresentationController];

  if (!v9)
  {
LABEL_15:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  [v9 _setShouldScaleDownBehindDescendantSheets_];

LABEL_11:
  [*(v0 + 168) setPresentationBegan_];
  *(v0 + 272) = sub_190D57290();
  v10 = sub_190D57240();
  v6 = v11;
  *(v0 + 280) = v10;
  *(v0 + 288) = v11;
  v4 = sub_19088EA0C;
  v5 = v10;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19088EA0C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 320);
  v6 = *(v0 + 152);
  *(v0 + 296) = sub_190D57290();
  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v3[2].i8[0] = v2;
  v3[2].i64[1] = v1;
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_19088EB34;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_19088EB34()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x1EEE6DFA0](sub_19088EC94, v3, v2);
}

uint64_t sub_19088EC94()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_19088ECF8, v1, v2);
}

uint64_t sub_19088ECF8()
{

  if ([objc_opt_self() ck_canDismissAndPresentSimultaneously])
  {
    v1 = [*(v0 + 168) delegate];
    v2 = *(v0 + 216);
    if (v1)
    {
      [v1 appCardOverseerDidPresentAppCard];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t CKBrowserAppPresentationStyle.debugDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6569567972746E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x657263536C6C7566;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6465646E61707865;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x746361706D6F63;
  }
}

id sub_19088EE70()
{
  v1 = *&v0[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (!v1)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = v1;
    if ([v0 isPresentingInSendMenuPopover])
    {
      goto LABEL_9;
    }

    v5 = v0;
    result = [*&v4[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController] balloonPlugin];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = sub_1909E5EB0();

    if ((v7 & 1) != 0 || (v8 = [v5 delegate]) == 0)
    {
LABEL_9:
      v11 = 0;
    }

    else
    {
      v9 = v8;
      v10 = [v3 traitCollection];
      v11 = [v9 shouldPresentAppCardInSendMenuWithTraitCollection_];
      swift_unknownObjectRelease();
    }

    return v11;
  }

  return result;
}

void sub_19088EFA0(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock - v12;
  v14 = [objc_opt_self() ck_canDismissAndPresentSimultaneously];
  (*(v11 + 16))(v13, a1, v10);
  v15 = *(v11 + 80);
  v16 = ~v15;
  if (v14)
  {
    v17 = (v15 + 16) & v16;
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v17, v13, v10);
    v28 = sub_1908963E8;
    v29 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_190840E6C;
    v27 = &block_descriptor_216;
    v19 = _Block_copy(&aBlock);

    v20 = &selRef_ck_presentAppCardContainerViewControllerSimultaniously_animated_presentCompletionHandler_;
  }

  else
  {
    v21 = (v15 + 24) & v16;
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    (*(v11 + 32))(v22 + v21, v13, v10);
    v28 = sub_1908962B8;
    v29 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_190840E6C;
    v27 = &block_descriptor_210;
    v19 = _Block_copy(&aBlock);
    v23 = a5;

    v20 = &selRef_presentViewController_animated_completion_;
  }

  [a2 *v20];
  _Block_release(v19);
}

uint64_t sub_19088F254(void *a1)
{
  v1 = [a1 delegate];
  if (v1)
  {
    [v1 appCardOverseerDidPresentAppCard];
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  return sub_190D57250();
}

void sub_19088F2C0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  if (a2)
  {
    v8 = objc_opt_self();
    v17 = a2;
    if ([v8 ck_canDismissAndPresentSimultaneously])
    {
      [v17 ck_dismissViewControllerAllowingSimultaneousPresentation];
      sub_190D57250();
      v9 = v17;
    }

    else
    {
      (*(v5 + 16))(v7, a1, v4);
      v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = v17;
      (*(v5 + 32))(v11 + v10, v7, v4);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1908961D0;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1908964D8;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19088B7B8;
      aBlock[3] = &block_descriptor_198;
      v13 = _Block_copy(aBlock);
      v14 = v17;
      sub_190D50920();

      [v8 _performWithoutDeferringTransitions_];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_190D57250();
  }
}

void sub_19088F580(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1908964D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_204;
  v10 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

uint64_t CKAppCardPresentationOverseer.presentCard(with:animated:)(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_190D572A0();
  *(v3 + 32) = sub_190D57290();
  v5 = sub_190D57240();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19088F7D0, v5, v4);
}

uint64_t sub_19088F7D0()
{
  v34 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  *(v0 + 56) = v1;
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 64) = Strong;
    v3 = v1;
    if (Strong)
    {
      v4 = sub_1909E8BAC(*(v0 + 16));
      v5 = swift_task_alloc();
      *(v0 + 72) = v5;
      *v5 = v0;
      v5[1] = sub_19088FD04;
      v6 = *(v0 + 80);

      return sub_19088DC44(v4, v6, v3, Strong);
    }

    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9DA28);
    v17 = v3;
    v18 = sub_190D53020();
    v19 = sub_190D576A0();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_35;
    }

    v20 = *(v0 + 16);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315650;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v24 = 0x657263536C6C7566;
        v23 = 0xEF6C61646F4D6E65;
        goto LABEL_34;
      }

      if (v20 == 3)
      {
        v24 = 0x6569567972746E65;
        v23 = 0xE900000000000077;
        goto LABEL_34;
      }
    }

    else
    {
      if (!v20)
      {
        v24 = 0x746361706D6F63;
        v23 = 0xE700000000000000;
        goto LABEL_34;
      }

      if (v20 == 1)
      {
        v23 = 0xE800000000000000;
        v24 = 0x6465646E61707865;
LABEL_34:
        v27 = *(v0 + 80);
        v28 = sub_19021D9F8(v24, v23, &v33);

        *(v21 + 4) = v28;
        *(v21 + 12) = 1024;
        *(v21 + 14) = v27;
        *(v21 + 18) = 2080;
        swift_getObjectType();
        v29 = sub_190D58980();
        v31 = sub_19021D9F8(v29, v30, &v33);

        *(v21 + 20) = v31;
        _os_log_impl(&dword_19020E000, v18, v19, "Overseer asked to present card with style=%s – animated=%{BOOL}d – container=%s but we have no presentingViewController. Aborting.", v21, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v22, -1, -1);
        MEMORY[0x193AF7A40](v21, -1, -1);
LABEL_35:

        goto LABEL_36;
      }
    }

    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
    goto LABEL_34;
  }

  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9DA28);
  v9 = sub_190D53020();
  v10 = sub_190D576A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 16);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v15 = 0x657263536C6C7566;
        v14 = 0xEF6C61646F4D6E65;
        goto LABEL_29;
      }

      if (v11 == 3)
      {
        v15 = 0x6569567972746E65;
        v14 = 0xE900000000000077;
        goto LABEL_29;
      }
    }

    else
    {
      if (!v11)
      {
        v15 = 0x746361706D6F63;
        v14 = 0xE700000000000000;
        goto LABEL_29;
      }

      if (v11 == 1)
      {
        v14 = 0xE800000000000000;
        v15 = 0x6465646E61707865;
LABEL_29:
        v25 = *(v0 + 80);
        v26 = sub_19021D9F8(v15, v14, &v33);

        *(v12 + 4) = v26;
        *(v12 + 12) = 1024;
        *(v12 + 14) = v25;
        _os_log_impl(&dword_19020E000, v9, v10, "Overseer asked to present card with style=%s – animated=%{BOOL}d but we have no container. Aborting.", v12, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x193AF7A40](v13, -1, -1);
        MEMORY[0x193AF7A40](v12, -1, -1);
        goto LABEL_30;
      }
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    goto LABEL_29;
  }

LABEL_30:

LABEL_36:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_19088FD04()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_19088FE24, v3, v2);
}

uint64_t sub_19088FE24()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19089001C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_190D572A0();
  *(v4 + 40) = sub_190D57290();
  v6 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908900BC, v6, v5);
}

uint64_t sub_1908900BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_190890178;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return CKAppCardPresentationOverseer.presentCard(with:animated:)(v6, v5);
}

uint64_t sub_190890178()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 48);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t CKAppCardPresentationOverseer.presentPopover(from:sourceRect:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 56) = v5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 64) = sub_190D572A0();
  *(v6 + 72) = sub_190D57290();
  v8 = sub_190D57240();
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](sub_190890368, v8, v7);
}

uint64_t sub_190890368()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  *(v0 + 96) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  v3 = [v2 presentingViewController];
  if (v3)
  {
    v4 = v3;

LABEL_4:

LABEL_5:
    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 16);
  v22 = *(v0 + 40);
  v23 = *(v0 + 24);
  *&v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_initialPresentationStyle] = 1;
  sub_1909E6318();
  v8 = &v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation];
  v9 = *&v2[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_popoverPresentationLocation + 32];
  *v8 = v23;
  *(v8 + 1) = v22;
  *(v8 + 4) = v7;
  v10 = v7;

  [v2 setModalPresentationStyle_];
  v11 = [v2 popoverPresentationController];
  *(v0 + 104) = v11;

  if (!v11)
  {

    goto LABEL_5;
  }

  v12 = *(v0 + 56);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 16);
  [v11 setPermittedArrowDirections_];
  [v11 _setShouldHideArrow_];
  [v11 setSourceRect_];
  [v11 setSourceView_];
  [v11 setDelegate_];
  v18 = [v12 delegate];
  if (v18)
  {
    [v18 appCardOverseerWillPresentAppCard];
    swift_unknownObjectRelease();
  }

  v19 = *(v0 + 56);
  *(v0 + 112) = sub_190D57290();
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v2;
  v21 = swift_task_alloc();
  *(v0 + 128) = v21;
  *v21 = v0;
  v21[1] = sub_190890678;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_190890678()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1908907D8, v3, v2);
}

uint64_t sub_1908907D8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_190890848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v6 + 16))(v8, a1, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v6 + 32))(v13 + v12, v8, v5);
    aBlock[4] = sub_1908961A0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_183;
    v14 = _Block_copy(aBlock);

    [v10 presentViewController:a3 animated:1 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_190890A50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];

    if (v2)
    {
      [v2 appCardOverseerDidPresentAppCard];
      swift_unknownObjectRelease();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  return sub_190D57250();
}

uint64_t sub_190890CAC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  sub_190D572A0();
  *(v7 + 72) = sub_190D57290();
  v9 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190890D50, v9, v8);
}

uint64_t sub_190890D50()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 7);
  v3 = *(v0 + 2);

  *(v0 + 10) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 11) = v6;
  *v6 = v0;
  v6[1] = sub_190890E20;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + 2);

  return CKAppCardPresentationOverseer.presentPopover(from:sourceRect:)(v11, v9, v10, v7, v8);
}

uint64_t sub_190890E20()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 80);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t CKAppCardPresentationOverseer.updatePopoverLocation(_:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_190D572A0();
  *(v5 + 56) = sub_190D57290();
  v7 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190891020, v7, v6);
}

uint64_t sub_190891020()
{
  v1 = *(v0 + 6);

  v2 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = v2;
    v8 = [v7 popoverPresentationController];
    [v8 setSourceRect_];
  }

  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_190891288(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 64) = sub_190D572A0();
  *(v6 + 72) = sub_190D57290();
  v8 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19089132C, v8, v7);
}

uint64_t sub_19089132C()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[10] = _Block_copy(v1);
  v3 = v2;
  v0[11] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908913D8, v5, v4);
}

uint64_t sub_1908913D8()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = v2;
    v10 = [v9 popoverPresentationController];
    [v10 setSourceRect_];

    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = *(v0 + 80);

  if (v14)
  {
LABEL_3:
    v11 = *(v0 + 80);
    v11[2](v11);
    _Block_release(v11);
  }

LABEL_4:
  v12 = *(v0 + 8);

  return v12();
}

void CKAppCardPresentationOverseer.fadeOutCard(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v15 = sub_190895824;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_190840E6C;
  v14 = &block_descriptor_17;
  v7 = _Block_copy(&v11);
  v8 = v2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_19089582C;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_190896518;
  v14 = &block_descriptor_23;
  v10 = _Block_copy(&v11);
  sub_190D50920();

  [v5 animateWithDuration:v7 animations:v10 completion:0.4];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_190891688(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t CKAppCardPresentationOverseer.dismissCard(animated:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 152) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1908917B4, 0, 0);
}

uint64_t sub_1908917B4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1908918DC;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19088DB28;
  *(v0 + 104) = &block_descriptor_26;
  *(v0 + 112) = v3;
  [v1 dismissCardAnimated:v2 overrideExceptions:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1908918DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1908919BC, 0, 0);
}

uint64_t sub_190891B54(char a1, void *aBlock, void *a3)
{
  *(v3 + 144) = a3;
  *(v3 + 160) = a1;
  *(v3 + 152) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_190891BD4, 0, 0);
}

uint64_t sub_190891BD4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_190891CFC;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19088DB28;
  *(v0 + 104) = &block_descriptor_116;
  *(v0 + 112) = v3;
  [v1 dismissCardAnimated:v2 overrideExceptions:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_190891CFC()
{

  return MEMORY[0x1EEE6DFA0](sub_190891DDC, 0, 0);
}

uint64_t sub_190891DDC()
{
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    v2[2](v2);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t CKAppCardPresentationOverseer.dismissCard(animated:overrideExceptions:)(char a1, char a2)
{
  *(v3 + 144) = v2;
  *(v3 + 218) = a2;
  *(v3 + 217) = a1;
  *(v3 + 152) = sub_190D572A0();
  *(v3 + 160) = sub_190D57290();
  v5 = sub_190D57240();
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;

  return MEMORY[0x1EEE6DFA0](sub_190891F00, v5, v4);
}

uint64_t sub_190891F00()
{
  v1 = sub_19088D490();
  *(v0 + 184) = v1;
  v2 = *(v0 + 144);
  if (v1)
  {
    v3 = v1;
    v4 = [*(v0 + 144) delegate];
    if (v4)
    {
      [v4 appCardOverseerWillDismissAppCard];
      swift_unknownObjectRelease();
    }

    v5 = *(v0 + 217);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 216;
    *(v0 + 24) = sub_1908922A4;
    v6 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_190892610;
    *(v0 + 104) = &block_descriptor_30;
    *(v0 + 112) = v6;
    [v3 dismissAnimated:v5 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v7 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
    v8 = *(v2 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
    if (v8 && (v9 = [v8 presentingViewController]) != 0)
    {
      v10 = *(v0 + 144);

      v11 = [v10 delegate];
      if (v11)
      {
        [v11 appCardOverseerWillDismissAppCard];
        swift_unknownObjectRelease();
      }

      v12 = *(v2 + v7);
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal) = *(v0 + 218);
      }

      v13 = *(v0 + 144);
      v14 = *(v0 + 217);
      *(v0 + 192) = sub_190D57290();
      v15 = swift_task_alloc();
      *(v0 + 200) = v15;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      v16 = swift_task_alloc();
      *(v0 + 208) = v16;
      *v16 = v0;
      v16[1] = sub_190892450;

      return MEMORY[0x1EEE6DDE0]();
    }

    else
    {

      v17 = *(v2 + v7);
      if (v17)
      {
        type metadata accessor for AppCardContainerViewController();
        v18 = v17;
        if (sub_190D57D90())
        {
          v19 = [*(v0 + 144) delegate];
          if (v19)
          {
            [v19 appCardOverseerDidDismissAppCard];
            swift_unknownObjectRelease();
          }

          v20 = *(v2 + v7);
          *(v2 + v7) = 0;

          if (!*(v2 + v7))
          {
            [*(v0 + 144) setPresentationBegan_];
          }

          sub_19088BC04();
        }
      }

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_1908922A4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1908923AC, v2, v1);
}

uint64_t sub_1908923AC()
{
  v1 = *(v0 + 144);

  v2 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v3 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container) = 0;

  if (!*(v1 + v2))
  {
    [*(v0 + 144) setPresentationBegan_];
  }

  v4 = *(v0 + 184);
  sub_19088BC04();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_190892450()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1908925B0, v3, v2);
}

uint64_t sub_1908925B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190892610(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

void sub_19089266C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v4 = *&v1[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (v4)
  {
    type metadata accessor for AppCardContainerViewController();
    v6 = v4;
    v7 = a1;
    LOBYTE(a1) = sub_190D57D90();

    if (a1)
    {
      v8 = [v2 delegate];
      if (v8)
      {
        [v8 appCardOverseerDidDismissAppCard];
        swift_unknownObjectRelease();
      }

      v9 = *&v2[v3];
      *&v2[v3] = 0;

      if (!*&v2[v3])
      {
        [v2 setPresentationBegan_];
      }

      sub_19088BC04();
    }
  }
}

void sub_19089276C(uint64_t a1, char *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = *&a2[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (v10)
  {
    (*(v7 + 16))(v9, a1, v6);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    (*(v7 + 32))(v12 + v11, v9, v6);
    aBlock[4] = sub_190896188;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_176;
    v13 = _Block_copy(aBlock);
    v14 = v10;
    v15 = a2;

    [v14 dismissViewControllerAnimated:a3 & 1 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_190892954(char *a1)
{
  v2 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v3 = *&a1[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  *&a1[OBJC_IVAR___CKAppCardPresentationOverseer_container] = 0;

  if (!*&a1[v2])
  {
    [a1 setPresentationBegan_];
  }

  sub_19088BC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  return sub_190D57250();
}

uint64_t sub_190892B60(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  sub_190D572A0();
  *(v4 + 32) = sub_190D57290();
  v6 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190892C00, v6, v5);
}

uint64_t sub_190892C00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_190892CBC;
  v5 = *(v0 + 57);
  v6 = *(v0 + 56);

  return CKAppCardPresentationOverseer.dismissCard(animated:overrideExceptions:)(v6, v5);
}

uint64_t sub_190892CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 40);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t CKAppCardPresentationOverseer.isPresentingCard.getter()
{
  result = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (result)
  {
    result = [result presentingViewController];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

id CKAppCardPresentationOverseer.presentedAppBypassesSendMenu.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController];
  v3 = v1;
  result = [v2 balloonPlugin];
  if (result)
  {
    v5 = result;

    v6 = sub_1909E5EB0();
    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL CKAppCardPresentationOverseer.isExpanded.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1909E87E4();

  return v3 == 1;
}

void CKAppCardPresentationOverseer.request(_:animated:)(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v5 = *&v2[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (!v5)
  {
    return;
  }

  v7 = [v5 sheetPresentationController];
  if (!v7)
  {
    return;
  }

  v44 = v7;
  v8 = [v7 selectedDetentIdentifier];
  if (qword_1EAD51B18 != -1)
  {
    swift_once();
  }

  v9 = qword_1EAD9DD10;
  if (v8)
  {
    v10 = sub_190D56F10();
    v12 = v11;
    if (v10 == sub_190D56F10() && v12 == v13)
    {

      if (!a1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = sub_190D58760();

      if ((v15 & 1) != 0 && !a1)
      {
        goto LABEL_21;
      }
    }
  }

  v16 = [v44 selectedDetentIdentifier];
  v17 = *MEMORY[0x1E69DE3B0];
  if (!v16)
  {
    goto LABEL_26;
  }

  v18 = v16;
  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {

    if (a1 != 1)
    {
      goto LABEL_26;
    }

LABEL_21:
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v25 = sub_190D53040();
    __swift_project_value_buffer(v25, qword_1EAD9DA28);
    v26 = sub_190D53020();
    v27 = sub_190D57680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_19020E000, v26, v27, "App requested a presentation style change but is already in that state. Doing nothing.", v28, 2u);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }

    goto LABEL_43;
  }

  v24 = sub_190D58760();

  if ((v24 & 1) != 0 && a1 == 1)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (a2)
  {
    v29 = swift_allocObject();
    v29[2] = a1;
    v29[3] = v44;
    v29[4] = v2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_190895860;
    *(v30 + 24) = v29;
    v49 = sub_19089582C;
    v50 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_19088B7B8;
    v48 = &block_descriptor_39_1;
    v31 = _Block_copy(&aBlock);
    v17 = v50;
    v32 = v44;
    v33 = v2;
    sub_190D50920();

    v49 = nullsub_10;
    v50 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_190893958;
    v48 = &block_descriptor_42;
    v34 = _Block_copy(&aBlock);
    [v32 _animateChanges_completion_];

    _Block_release(v34);
    _Block_release(v31);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if ((v34 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (a1 == 1)
  {
    v31 = v2;
    if (qword_1EAD51958 == -1)
    {
LABEL_31:
      v35 = sub_190D53040();
      __swift_project_value_buffer(v35, qword_1EAD9DA28);
      v36 = sub_190D53020();
      v37 = sub_190D57680();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_19020E000, v36, v37, "Selected detent large in request/unanimated", v38, 2u);
        v39 = v31;
LABEL_38:
        MEMORY[0x193AF7A40](v38, -1, -1);
        goto LABEL_41;
      }

      v39 = v31;
      goto LABEL_41;
    }

LABEL_48:
    swift_once();
    goto LABEL_31;
  }

  if (a1)
  {
    sub_190D58510();
    __break(1u);
    return;
  }

  v39 = v2;
  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v40 = sub_190D53040();
  __swift_project_value_buffer(v40, qword_1EAD9DA28);
  v36 = sub_190D53020();
  v41 = sub_190D57680();
  if (os_log_type_enabled(v36, v41))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_19020E000, v36, v41, "Selected detent keyboard in request/unanimated", v38, 2u);
    v17 = v9;
    goto LABEL_38;
  }

  v17 = v9;
LABEL_41:

  [v44 setSelectedDetentIdentifier_];
  v42 = *&v39[v4];
  if (v42)
  {
    v26 = v42;
    v43 = sub_1909E87E4();
    sub_1909E8C48(v43);
    sub_1909E8D7C(v43);
LABEL_43:
  }
}

void sub_1908936A0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 == 1)
  {
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9DA28);
    v6 = sub_190D53020();
    v7 = sub_190D57680();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Selected detent large in request/animated", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v9 = MEMORY[0x1E69DE3B0];
  }

  else
  {
    if (a1)
    {
      sub_190D58510();
      __break(1u);
      return;
    }

    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9DA28);
    v11 = sub_190D53020();
    v12 = sub_190D57680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v11, v12, "Selected detent keyboard in request/animated", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

    if (qword_1EAD51B18 != -1)
    {
      swift_once();
    }

    v9 = &qword_1EAD9DD10;
  }

  [a2 setSelectedDetentIdentifier_];
  v14 = *(a3 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v14)
  {
    v16 = v14;
    v15 = sub_1909E87E4();
    sub_1909E8C48(v15);
    sub_1909E8D7C(v15);
  }
}

uint64_t sub_190893958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v3(a2);
}

uint64_t sub_190893A50()
{
  v1 = [*(v0 + 40) browserViewController];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_19089586C;
      *(v4 + 24) = v3;
      v5 = swift_allocObject();
      *(v0 + 56) = v5;
      *(v5 + 16) = sub_190895880;
      *(v5 + 24) = v4;
      v6 = swift_allocObject();
      *(v0 + 64) = v6;
      *(v6 + 16) = 0;
      v7 = swift_task_alloc();
      *(v0 + 72) = v7;
      v7[2] = sub_190895888;
      v7[3] = v5;
      v7[4] = v6;
      v8 = v2;
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_190893C78;

      return MEMORY[0x1EEE6DDE0]();
    }
  }

  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_190893C78()
{

  return MEMORY[0x1EEE6DFA0](sub_190893D90, 0, 0);
}

uint64_t sub_190893D90()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_beginAccess();
  v3 = *(v1 + 16);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_190893E1C(uint64_t a1, void (*a2)(uint64_t (*)(char a1), uint64_t), uint64_t a3, uint64_t a4)
{
  sub_190D50920();
  a2(sub_190896148, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  return sub_190D57250();
}

uint64_t sub_190894014(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1908940BC;

  return CKAppCardPresentationOverseer.checkForTouchInExtension()();
}

uint64_t sub_1908940BC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

BOOL CKAppCardPresentationOverseer.shouldAnimatePresentation(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1909E8A34();

    if (v5 == 2)
    {
      return 1;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong traitCollection], v7, v9 = objc_msgSend(v8, sel_verticalSizeClass), v8, v9 == 1))
  {
    return 1;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t CKAppCardPresentationOverseer.shouldAnimateDismissal.getter()
{
  if ([v0 isExpanded])
  {
    return 1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    v4 = [v3 verticalSizeClass];
    return v4 == 1;
  }

  return result;
}

id CKAppCardPresentationOverseer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1908944F4()
{
  result = [v0 delegate];
  if (result)
  {
    [result appCardOverseerCompactHeightExcludingSafeArea];
    v3 = v2;
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

id sub_19089458C(uint64_t a1, uint64_t a2)
{
  result = [v2 delegate];
  if (result)
  {
    [result appCardDidMoveToWindow_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1908945FC()
{
  if ([v0 isPresentingInSendMenuPopover])
  {
    v1 = [objc_opt_self() sharedBehaviors];
    if (v1)
    {
      v2 = v1;
      [v1 appCardContainerViewControllerChildEdgeInsetsIfPresentedBySendMenuPopover];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CKAppCardPresentationOverseer.presentationControllerDidDismiss(_:)(UIPresentationController *a1)
{
  v2 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v3 = *&v1[OBJC_IVAR___CKAppCardPresentationOverseer_container];
  if (v3)
  {
    type metadata accessor for AppCardContainerViewController();
    v6 = v3;
    if (sub_190D57D90())
    {
      v4 = [v1 delegate];
      if (v4)
      {
        [v4 appCardOverseerDidDismissAppCard];
        swift_unknownObjectRelease();
      }

      v5 = *&v1[v2];
      *&v1[v2] = 0;

      if (!*&v1[v2])
      {
        [v1 setPresentationBegan_];
      }

      sub_19088BC04();
    }
  }
}

Swift::Void __swiftcall CKAppCardPresentationOverseer.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController *a1)
{
  v2 = v1;
  v3 = [(UISheetPresentationController *)a1 selectedDetentIdentifier];
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = sub_190D56F10();
  v7 = v6;
  if (v5 == sub_190D56F10() && v7 == v8)
  {

    goto LABEL_13;
  }

  v10 = sub_190D58760();

  if (v10)
  {
LABEL_13:
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9DA28);
    v16 = sub_190D53020();
    v17 = sub_190D57680();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Selected detent changed to large";
    goto LABEL_17;
  }

  if (qword_1EAD51B18 != -1)
  {
    swift_once();
  }

  v11 = sub_190D56F10();
  v13 = v12;
  if (v11 == sub_190D56F10() && v13 == v14)
  {

LABEL_20:
    if (qword_1EAD51958 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9DA28);
    v16 = sub_190D53020();
    v17 = sub_190D57680();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Selected detent changed to keyboard";
LABEL_17:
    _os_log_impl(&dword_19020E000, v16, v17, v19, v18, 2u);
    MEMORY[0x193AF7A40](v18, -1, -1);
LABEL_18:

    goto LABEL_29;
  }

  v20 = sub_190D58760();

  if (v20)
  {
    goto LABEL_20;
  }

LABEL_25:
  if (qword_1EAD51958 != -1)
  {
    swift_once();
  }

  v22 = sub_190D53040();
  __swift_project_value_buffer(v22, qword_1EAD9DA28);
  v16 = sub_190D53020();
  v23 = sub_190D576A0();
  if (os_log_type_enabled(v16, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_19020E000, v16, v23, "Selected detent changed to an unknown detent!", v24, 2u);
    MEMORY[0x193AF7A40](v24, -1, -1);
  }

LABEL_29:

  v25 = OBJC_IVAR___CKAppCardPresentationOverseer_container;
  v26 = *(v2 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v26)
  {
    return;
  }

  v27 = *&v26[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController];
  v28 = v26;
  v29 = [v27 balloonPlugin];
  if (!v29)
  {
    __break(1u);
    return;
  }

  v30 = v29;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v32 = *(v2 + v25);
    if (!v32)
    {
      return;
    }

    goto LABEL_34;
  }

  v34 = [v28 _containedRemoteViewController];
  v31 = v34;
  if (!v34)
  {
    v32 = *(v2 + v25);
    if (!v32)
    {
      return;
    }

LABEL_34:
    v35 = v32;
    v33 = sub_1909E87E4();
    sub_1909E8C48(v33);
    sub_1909E8D7C(v33);
    v31 = v35;
  }
}

id sub_190894CF0()
{
  v1 = *(v0 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v1)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(swift_unknownObjectWeakLoadStrong());
  if (*&result == 0.0)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  result = [v4 view];
  if (*&result == 0.0)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result window];

  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = [v3 traitCollection];
  v8 = [v7 verticalSizeClass];

  if (v8 == 1)
  {

LABEL_8:
LABEL_9:
    *&result = 0.0;
    return result;
  }

  v9 = [v4 sheetPresentationController];

  if (!v9)
  {

    goto LABEL_9;
  }

  sub_1909E84F8();
  [v9 _currentPresentedViewFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v9 containerView];
  if (v18)
  {
    v19 = v18;
    [v18 safeAreaInsets];
  }

  [v6 bounds];
  v21 = v20;
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  MinY = CGRectGetMinY(v23);

  *&result = v21 - MinY;
  return result;
}

Swift::Void __swiftcall CKAppCardPresentationOverseer._sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame(_:)(UISheetPresentationController *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v4 = [Strong traitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 == 1)
    {
      goto LABEL_10;
    }

    v6 = [(UISheetPresentationController *)a1 _isDragging];
    v7 = [(UISheetPresentationController *)a1 _isGeneratingAnimations];
    v8 = [objc_opt_self() sharedFeatureFlags];
    v9 = [v8 isEntryViewRefreshEnabled];

    if ((v9 & 1) == 0)
    {
      CKAppCardPresentationOverseer.updateCornerRadiusWithPresentedViewFrame(for:)(a1);
    }

    v10 = sub_190894CF0();
    if ((v13 & 1) != 0 || (v14 = *&v10, v15 = v11, v16 = v12, (v17 = [v1 delegate]) == 0))
    {
LABEL_10:
    }

    else
    {
      [v17 appCardOverseerCardDidChangeHeight:v16 <= v15 isBelowKeyboardDetent:v6 isDragging:v7 isGeneratingEndOfDragAnimations:v14];

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall CKAppCardPresentationOverseer.updateCornerRadiusWithPresentedViewFrame(for:)(UISheetPresentationController *a1)
{
  v2 = *(v1 + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v2)
  {
    return;
  }

  v22 = v2;
  v4 = [v22 view];
  if (!v4)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v5 = v4;
  v23 = [v4 window];

  if (v23)
  {
    if (IMIsRunningIniMessageAppsViewService())
    {
LABEL_21:

      v8 = v23;
      goto LABEL_22;
    }

    v6 = [(UISheetPresentationController *)a1 _detentValues];
    sub_1902188FC(0, &qword_1EAD46510);
    v7 = sub_190D57180();

    if (v7 >> 62)
    {
      if (sub_190D581C0() < 2)
      {
        goto LABEL_7;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_7:

      return;
    }

    [v23 bounds];
    v10 = v9;
    [(UISheetPresentationController *)a1 _currentPresentedViewFrame];
    MinY = CGRectGetMinY(v25);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AF3B90](1, v7);
    }

    else
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v7 + 40);
    }

    v13 = v12;
    [v12 doubleValue];
    v15 = v14;

    if ((v7 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x193AF3B90](0, v7);
LABEL_20:
      v17 = v16;
      v18 = v10 - MinY;

      [v17 doubleValue];
      v20 = v19;

      v21 = _UIUnlerp(v18, v15, v20);
      _UILerp_0(fmax(fmin(v21, 1.0), 0.0), *MEMORY[0x1E69DEA60]);
      sub_190D57C00();
      goto LABEL_21;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v7 + 32);
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v8 = v22;
LABEL_22:
}

uint64_t sub_1908954B8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DA28);
  __swift_project_value_buffer(v0, qword_1EAD9DA28);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190895520()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6569567972746E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x657263536C6C7566;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6465646E61707865;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x746361706D6F63;
  }
}

id sub_1908955D0(void *a1, uint64_t a2)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_190D56F10();
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_190D56F10();
  v8 = v7;

  v9 = sub_190D56F10();
  if (!v8)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (v6 == v9 && v8 == v10)
  {

    v12 = 1;
  }

  else
  {
    v12 = sub_190D58760();
  }

LABEL_11:

  v13 = sub_190D57160();

  v14 = [a1 shouldShowForRecipients_];

  if (!v14)
  {
    return 0;
  }

  v15 = [objc_opt_self() sharedInstance];
  v16 = v15;
  if (v12)
  {
    v17 = [v15 digitalTouchViewControllerWithDataSource_];
LABEL_17:

    return v17;
  }

  result = [a1 identifier];
  if (result)
  {
    v19 = result;
    v17 = [v16 viewControllerForPluginIdentifier:result dataSource:a2];

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_190895794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppCardRemoteViewTracker.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppCardRemoteViewTracker.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_190895A84()
{
  result = qword_1EAD552A0;
  if (!qword_1EAD552A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD552A0);
  }

  return result;
}

uint64_t sub_190895AD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA0;

  return sub_190894014(v2, v3);
}

uint64_t sub_190895B84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_190221DA0;

  return sub_190892B60(v2, v3, v5, v4);
}

uint64_t objectdestroy_86Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190895C88()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190891B54(v2, v4, v3);
}

uint64_t sub_190895D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_19021F11C(a1, v4, v5, v6);
}

uint64_t sub_190895E20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_190221DA0;

  return sub_190891288(v6, v7, v2, v3, v4, v5);
}

uint64_t sub_190895EF4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v8 = *(v0 + 7);
  v7 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_190221DA0;

  return sub_190890CAC(v2, v8, v7, v3, v4, v5, v6);
}

uint64_t sub_190895FD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_190221DA0;

  return sub_19089001C(v2, v3, v5, v4);
}

uint64_t sub_190896094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_19088D910(a1, v4, v5, v6);
}

uint64_t sub_190896148(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t objectdestroy_172Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1908962D0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_200Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_190896458()
{
  result = *(*(v0 + 16) + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (result)
  {
    return [result _endDelayingPresentation];
  }

  return result;
}

unint64_t sub_19089653C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_190896890(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void static CKTranscriptBackgroundAnalytics.trackTranscriptBackgroundChanged(in:withOutboundBackground:)(void *a1, _BYTE *a2)
{
  v4 = [a1 transcriptBackground];
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(a2, v4, a1, 2);
}

id CKTranscriptBackgroundAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptBackgroundAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackgroundAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKTranscriptBackgroundAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackgroundAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190896890(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 3)
  {
    return v1;
  }

  return result;
}

uint64_t sub_1908968B0(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground])
  {
    return 5;
  }

  v3 = *&a1[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier];
  v2 = *&a1[OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier + 8];
  v4 = a1;
  sub_190D52690();
  if (sub_19088A008(0) == v3 && v5 == v2)
  {

    goto LABEL_12;
  }

  v7 = sub_190D58760();

  if (v7)
  {

LABEL_12:

    return 2;
  }

  if (sub_19088A008(3u) == v3 && v8 == v2)
  {
    goto LABEL_27;
  }

  v10 = sub_190D58760();

  if (v10)
  {
LABEL_18:

LABEL_28:

    return 3;
  }

  if (sub_19088A008(1u) == v3 && v11 == v2)
  {
LABEL_27:

    goto LABEL_28;
  }

  v13 = sub_190D58760();

  if (v13)
  {
    goto LABEL_18;
  }

  if (sub_19088A008(4u) == v3 && v14 == v2)
  {

    return 5;
  }

  v15 = sub_190D58760();

  if (v15)
  {

    return 5;
  }

  if (sub_19088A008(2u) == v3 && v16 == v2)
  {
  }

  else
  {
    v17 = sub_190D58760();

    if ((v17 & 1) == 0 && (v3 != 0x6E776F6E6B6E75 || v2 != 0xE700000000000000))
    {
      sub_190D58760();
    }
  }

  return 6;
}

uint64_t sub_190896B34(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  sub_19023C414(a1, v27);
  if (!v27[3])
  {
    sub_19021E7D8(v27);
    return 6;
  }

  sub_190897A34(v1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 6;
  }

  v2 = v28[0];
  v3 = [v28[0] providerBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v27[0] = 0;
  v9 = [v2 loadUserInfoWithError_];
  v10 = v27[0];
  if (!v9)
  {
    v16 = v27[0];
    v17 = sub_190D51420();

    swift_willThrow();
    goto LABEL_18;
  }

  v11 = v9;
  v12 = sub_190D56D90();
  v13 = v10;

  if (!v12)
  {
LABEL_18:
    *v28 = 0u;
    v29 = 0u;
    goto LABEL_19;
  }

  sub_190D56F10();
  sub_190D58230();
  if (!*(v12 + 16) || (v14 = sub_190875C84(v27), (v15 & 1) == 0))
  {

    sub_19084CFD0(v27);
    goto LABEL_18;
  }

  sub_19021834C(*(v12 + 56) + 32 * v14, v28);
  sub_19084CFD0(v27);

  if (!*(&v29 + 1))
  {
LABEL_19:
    sub_19021E7D8(v28);
    goto LABEL_20;
  }

  if (swift_dynamicCast() && (v27[0] & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  if (sub_19088A008(0) == v5 && v18 == v7)
  {

LABEL_25:

    return 2;
  }

  v19 = sub_190D58760();

  if (v19)
  {

    goto LABEL_25;
  }

  if (sub_19088A008(3u) == v5 && v20 == v7)
  {
    goto LABEL_28;
  }

  v21 = sub_190D58760();

  if (v21)
  {
LABEL_30:

    goto LABEL_31;
  }

  if (sub_19088A008(1u) != v5 || v22 != v7)
  {
    v23 = sub_190D58760();

    if (v23)
    {
      goto LABEL_30;
    }

    if (sub_19088A008(4u) == v5 && v24 == v7)
    {

      goto LABEL_39;
    }

    v25 = sub_190D58760();

    if (v25)
    {
LABEL_15:

LABEL_39:

      return 5;
    }

    if (sub_19088A008(2u) != v5 || v26 != v7)
    {
      sub_190D58760();
    }

    return 6;
  }

LABEL_28:

LABEL_31:

  return 3;
}

void _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(_BYTE *a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v7 = sub_1908968B0(a1);
  v8 = sub_1908968B0(a2);
  v9 = v8;
  if (qword_190DD9AC0[v7] != qword_190DD9AC0[v8])
  {
    v10 = 0x4040404040504uLL >> (8 * v8);
    v11 = sub_190977CF0(a3);
    v12 = [objc_opt_self() generativePlaygroundModelsAvailable];
    v13 = [a3 chat];
    if (v13)
    {
      v14 = v13;
      if ([v13 isGroupChat])
      {

        v15 = 2;
      }

      else
      {
        v16 = [v14 isChatBot];

        if (v16)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    LOWORD(v39) = 1;
    BYTE2(v39) = v11 & 1;
    BYTE3(v39) = v12;
    BYTE4(v39) = v9;
    BYTE5(v39) = 1;
    BYTE6(v39) = v10;
    BYTE7(v39) = v15;
    *(&v39 + 1) = a4;
    v40 = 0uLL;
    v41 = 0;
    sub_190977A30();

    v38[3] = &_s24GalleryEngagementPayloadVN;
    v38[4] = &off_1F040EAA0;
    v17 = swift_allocObject();
    v38[0] = v17;
    *(v17 + 16) = v39;
    *(v17 + 32) = 0uLL;
    *(v17 + 48) = v41;
    v18 = sub_190D56ED0();
    sub_19083B854(v38, v37);
    v19 = swift_allocObject();
    sub_19029058C(v37, v19 + 16);
    aBlock[4] = sub_190897A84;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190A928AC;
    aBlock[3] = &block_descriptor_12_1;
    v20 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v20);

    __swift_destroy_boxed_opaque_existential_0(v38);
    if (qword_1EAD51AD0 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9DCD0);
    v22 = sub_190D53020();
    v23 = sub_190D57680();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_41;
    }

    v24 = 0x6E776F6E6B6E75;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    v27 = v7;
    if (v7 <= 2u)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v28 = 0xE400000000000000;
          v30 = 1701736302;
        }

        else
        {
          v28 = 0xE600000000000000;
          v30 = 0x736F746F6870;
        }
      }

      else
      {
        v28 = 0xE700000000000000;
        v30 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (v7 > 4u)
      {
        if (v7 == 5)
        {
          v30 = 0x616C506567616D69;
          v28 = 0xEF646E756F726779;
          goto LABEL_26;
        }

        v28 = 0xE500000000000000;
        v29 = 1701344367;
      }

      else
      {
        v28 = 0xE500000000000000;
        if (v27 != 3)
        {
          v30 = 0x696A6F6D65;
          goto LABEL_26;
        }

        v29 = 1869377379;
      }

      v30 = v29 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    }

LABEL_26:
    v31 = sub_19021D9F8(v30, v28, aBlock);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = v9;
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v33 = 0xE400000000000000;
          v24 = 1701736302;
        }

        else
        {
          v33 = 0xE600000000000000;
          v24 = 0x736F746F6870;
        }
      }

      else
      {
        v33 = 0xE700000000000000;
      }

      goto LABEL_40;
    }

    if (v9 > 4u)
    {
      if (v9 != 5)
      {
        v33 = 0xE500000000000000;
        v34 = 1701344367;
        goto LABEL_39;
      }

      v24 = 0x616C506567616D69;
      v33 = 0xEF646E756F726779;
    }

    else
    {
      v33 = 0xE500000000000000;
      if (v32 == 3)
      {
        v34 = 1869377379;
LABEL_39:
        v24 = v34 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
        goto LABEL_40;
      }

      v24 = 0x696A6F6D65;
    }

LABEL_40:
    v35 = sub_19021D9F8(v24, v33, aBlock);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_19020E000, v22, v23, "Background changed in transcript context: %s -> %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v26, -1, -1);
    MEMORY[0x193AF7A40](v25, -1, -1);
LABEL_41:
  }
}

void _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to26withNewPosterConfiguration14inConversation7contextyAA0cD0CSg_ALypSgSo14CKConversationCAC13ChangeContextOtFZ_0(_BYTE *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1908968B0(a1);
  if (a2 && *(a3 + 24))
  {
    v10 = sub_190896B34(a3);
  }

  else
  {
    v10 = sub_1908968B0(a2);
  }

  v11 = v10;
  if (qword_190DD9AC0[v9] != qword_190DD9AC0[v10])
  {
    v12 = 0x4040404040504uLL >> (8 * v10);
    v13 = sub_190977CF0(a4);
    v14 = [objc_opt_self() generativePlaygroundModelsAvailable];
    v15 = [a4 chat];
    if (v15)
    {
      v16 = v15;
      if ([v15 isGroupChat])
      {

        v17 = 2;
      }

      else
      {
        v18 = [v16 isChatBot];

        if (v18)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    LOWORD(v41) = 1;
    BYTE2(v41) = v13 & 1;
    BYTE3(v41) = v14;
    BYTE4(v41) = v11;
    BYTE5(v41) = 1;
    BYTE6(v41) = v12;
    BYTE7(v41) = v17;
    *(&v41 + 1) = a5;
    v42 = 0uLL;
    v43 = 0;
    sub_190977A30();

    v40[3] = &_s24GalleryEngagementPayloadVN;
    v40[4] = &off_1F040EAA0;
    v19 = swift_allocObject();
    v40[0] = v19;
    *(v19 + 16) = v41;
    *(v19 + 32) = 0uLL;
    *(v19 + 48) = v43;
    v20 = sub_190D56ED0();
    sub_19083B854(v40, v39);
    v21 = swift_allocObject();
    sub_19029058C(v39, v21 + 16);
    aBlock[4] = sub_190897A2C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190A928AC;
    aBlock[3] = &block_descriptor_15;
    v22 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v22);

    __swift_destroy_boxed_opaque_existential_0(v40);
    if (qword_1EAD51AD0 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD9DCD0);
    v24 = sub_190D53020();
    v25 = sub_190D57680();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_45;
    }

    v26 = 0x6E776F6E6B6E75;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    v29 = v9;
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v30 = 0xE400000000000000;
          v32 = 1701736302;
        }

        else
        {
          v30 = 0xE600000000000000;
          v32 = 0x736F746F6870;
        }
      }

      else
      {
        v30 = 0xE700000000000000;
        v32 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (v9 > 4u)
      {
        if (v9 == 5)
        {
          v32 = 0x616C506567616D69;
          v30 = 0xEF646E756F726779;
          goto LABEL_30;
        }

        v30 = 0xE500000000000000;
        v31 = 1701344367;
      }

      else
      {
        v30 = 0xE500000000000000;
        if (v29 != 3)
        {
          v32 = 0x696A6F6D65;
          goto LABEL_30;
        }

        v31 = 1869377379;
      }

      v32 = v31 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    }

LABEL_30:
    v33 = sub_19021D9F8(v32, v30, aBlock);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v34 = v11;
    if (v11 <= 2u)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v35 = 0xE400000000000000;
          v26 = 1701736302;
        }

        else
        {
          v35 = 0xE600000000000000;
          v26 = 0x736F746F6870;
        }
      }

      else
      {
        v35 = 0xE700000000000000;
      }

      goto LABEL_44;
    }

    if (v11 > 4u)
    {
      if (v11 != 5)
      {
        v35 = 0xE500000000000000;
        v36 = 1701344367;
        goto LABEL_43;
      }

      v26 = 0x616C506567616D69;
      v35 = 0xEF646E756F726779;
    }

    else
    {
      v35 = 0xE500000000000000;
      if (v34 == 3)
      {
        v36 = 1869377379;
LABEL_43:
        v26 = v36 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
        goto LABEL_44;
      }

      v26 = 0x696A6F6D65;
    }

LABEL_44:
    v37 = sub_19021D9F8(v26, v35, aBlock);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_19020E000, v24, v25, "Background changed in transcript context: %s -> %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v28, -1, -1);
    MEMORY[0x193AF7A40](v27, -1, -1);
LABEL_45:
  }
}

unint64_t sub_1908979C8()
{
  result = qword_1EAD55320;
  if (!qword_1EAD55320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55320);
  }

  return result;
}

unint64_t sub_190897A34(double a1)
{
  result = qword_1EAD55328;
  if (!qword_1EAD55328)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRSPosterConfiguration(a1);
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD55328);
  }

  return result;
}

id sub_190897A98(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 whiteColor];
  *&v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime] = 0;
  v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_playing] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_duration] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_waveform] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedWidth] = 0;
  v11 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedColor;
  *&v4[v11] = [v10 whiteColor];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AudioMessageWaveform();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setContentMode_];
  return v12;
}

uint64_t sub_190897C50(void *a1, double a2, double a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_190898314;
  *(v7 + 24) = v6;
  v13[4] = sub_1908986D0;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_190233A24;
  v13[3] = &block_descriptor_36_0;
  v8 = _Block_copy(v13);
  v9 = a1;
  v10 = v3;
  sub_190D50920();

  v11 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

id sub_190897DF8(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  [a2 drawAtPoint_];
  [*(a3 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color) set];

  return [a1 fillRect:18 blendMode:{0.0, 0.0, v8, v10}];
}

uint64_t sub_190897EC0(void *a1, double a2, double a3)
{
  [objc_opt_self() progressForTime:*&v3[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime] duration:*&v3[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_duration]];
  v8 = CGFloatPxFloor((1.0 - v7) * a2);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v10 = swift_allocObject();
  *(v10 + 2) = v3;
  v10[3] = v8;
  *(v10 + 4) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_190898304;
  *(v11 + 24) = v10;
  v18[4] = sub_190233AFC;
  v18[5] = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_190233A24;
  v18[3] = &block_descriptor_16;
  v12 = _Block_copy(v18);
  v13 = v3;
  v14 = a1;
  sub_190D50920();

  v15 = [v9 imageWithActions_];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

id sub_1908980C0(void *a1, uint64_t a2, void *a3, double a4)
{
  v8 = [a1 format];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  [*(a2 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color) set];
  [a1 fillRect_];
  [a3 drawAtPoint:18 blendMode:0.0 alpha:{0.0, 1.0}];

  return [a3 drawAtPoint:0 blendMode:0.0 alpha:{0.0, 0.33}];
}

id sub_1908981B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioMessageWaveform();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double CGFloatPxFloor(double a1)
{
  v2 = CKMainScreenScale_once_108;
  v3 = &__block_literal_global_302;
  if (v2 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_108, &__block_literal_global_302);
  }

  v4 = *&CKMainScreenScale_sMainScreenScale_108;
  if (*&CKMainScreenScale_sMainScreenScale_108 == 0.0)
  {
    v4 = 1.0;
  }

  return floor(v4 * a1) / v4;
}

void sub_19089831C()
{
  v1 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 whiteColor];
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_playing) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_duration) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_waveform) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedWidth) = 0;
  v3 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedColor;
  *(v0 + v3) = [v2 whiteColor];
  sub_190D58510();
  __break(1u);
}

void sub_190898418()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
  if (!v1)
  {
    return;
  }

  v28 = v1;
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  v3 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedWidth;
  if (vabdd_f64(Width, *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedWidth]) > 5.0 || (v4 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color], v5 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedColor], sub_1902495E8(), v6 = v4, v7 = v5, v8 = sub_190D57D90(), v6, v7, (v8 & 1) == 0))
  {
    v9 = [v28 temporaryWaveformWithWidth:0 orientation:Width];
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_color;
    v11 = v9;
    v12 = [v9 _flatImageWithColor_];

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_waveform];
    *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_waveform] = v12;

    *&v0[v3] = Width;
    v14 = *&v0[v10];
    v15 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedColor];
    *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_cachedColor] = v14;
    v16 = v14;
  }

  v17 = *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_waveform];
  if (v17)
  {
    v18 = v17;
    [v18 size];
    v20 = v19;
    v22 = v21;
    if (CKFloatApproximatelyEqualToFloat(v21, 0.0) || CKFloatApproximatelyEqualToFloat(v20, 0.0))
    {
      goto LABEL_17;
    }

    v23 = OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime;
    v24 = CKFloatApproximatelyEqualToFloat(*&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_currentTime], *&v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_duration]);
    if (CKFloatApproximatelyEqualToFloat(*&v0[v23], 0.0))
    {
      if (!v24 && (v0[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_playing] & 1) != 0)
      {
LABEL_12:
        v25 = v0;
        v26 = sub_190897EC0(v18, v20, v22);
LABEL_16:
        v27 = v26;
        [v25 bounds];
        [v27 drawAtPoint_];

LABEL_17:
        goto LABEL_18;
      }
    }

    else if (!v24)
    {
      goto LABEL_12;
    }

    v25 = v0;
    v26 = sub_190897C50(v18, v20, v22);
    goto LABEL_16;
  }

LABEL_18:
}

unint64_t TapbackPickerDisplayMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1908986FC()
{
  result = qword_1EAD55370;
  if (!qword_1EAD55370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55370);
  }

  return result;
}

uint64_t *sub_190898750@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t type metadata accessor for Reaction()
{
  result = qword_1EAD55378;
  if (!qword_1EAD55378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190898818()
{
  result = sub_190D511C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1908988A8@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD553A0);
  v12 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = &v11 - v1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD553A8);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Reaction();
  v7 = sub_190899194();
  MEMORY[0x193AEC5F0](v7, v6, &type metadata for Reaction.TapbackResolver, v7);
  v8 = sub_1908991E8();
  MEMORY[0x193AEC5F0](v8, v6, &type metadata for Reaction.AttributedStringResolver, v8);
  v9 = sub_19089923C();
  MEMORY[0x193AEC5F0](v9, v6, &type metadata for Reaction.StringResolver, v9);
  sub_1908990F8(&qword_1EAD55388, type metadata accessor for Reaction);
  sub_190D50D80();
  v19 = v7;
  v20 = &type metadata for Reaction.TapbackResolver;
  sub_190D50D70();
  v17 = &type metadata for Reaction.TapbackResolver;
  v18 = &type metadata for Reaction.AttributedStringResolver;
  v15 = v7;
  v16 = v8;
  sub_190D50D70();
  (*(v12 + 8))(v2, v14);
  return (*(v3 + 8))(v5, v11);
}

uint64_t sub_190898B44(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_190898B6C, 0, 0);
}

uint64_t sub_190898B6C()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 24);
  v2 = type metadata accessor for Reaction();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190898C28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190898C48, 0, 0);
}

uint64_t sub_190898C48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_190D511C0();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for Reaction();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_190898D38(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_190898D60, 0, 0);
}

uint64_t sub_190898D60()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = type metadata accessor for Reaction();
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[1];
  sub_190D52690();

  return v5();
}

uint64_t sub_190898E34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55398);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD9C20;
  v1 = sub_190899140();
  *(v0 + 32) = &type metadata for Tapback;
  *(v0 + 40) = v1;
  v2 = sub_190D511C0();
  v3 = sub_1908990F8(&unk_1EAD46310, MEMORY[0x1E6968848]);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = sub_1908990A4();
  *(v0 + 64) = MEMORY[0x1E69E6158];
  *(v0 + 72) = v4;
  return v0;
}

unint64_t sub_190898EE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190899040(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_190D511C0();
      a1[3] = v7;
      a1[4] = sub_1908990F8(&unk_1EAD46310, MEMORY[0x1E6968848]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v5, v7);
    }

    else
    {
      v12 = *v5;
      v11 = v5[1];
      a1[3] = MEMORY[0x1E69E6158];
      result = sub_1908990A4();
      a1[4] = result;
      *a1 = v12;
      a1[1] = v11;
    }
  }

  else
  {
    v10 = *v5;
    a1[3] = &type metadata for Tapback;
    result = sub_190899140();
    a1[4] = result;
    *a1 = v10;
  }

  return result;
}

uint64_t sub_190899040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1908990A4()
{
  result = qword_1EAD45198;
  if (!qword_1EAD45198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45198);
  }

  return result;
}

uint64_t sub_1908990F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190899140()
{
  result = qword_1EAD55390;
  if (!qword_1EAD55390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55390);
  }

  return result;
}

unint64_t sub_190899194()
{
  result = qword_1EAD553B0;
  if (!qword_1EAD553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553B0);
  }

  return result;
}

unint64_t sub_1908991E8()
{
  result = qword_1EAD553B8;
  if (!qword_1EAD553B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553B8);
  }

  return result;
}

unint64_t sub_19089923C()
{
  result = qword_1EAD553C0;
  if (!qword_1EAD553C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553C0);
  }

  return result;
}

unint64_t sub_1908992C0()
{
  result = qword_1EAD553C8;
  if (!qword_1EAD553C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD553D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553C8);
  }

  return result;
}

unint64_t sub_190899328()
{
  result = qword_1EAD553D8;
  if (!qword_1EAD553D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553D8);
  }

  return result;
}

unint64_t sub_190899380()
{
  result = qword_1EAD553E0;
  if (!qword_1EAD553E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553E0);
  }

  return result;
}

unint64_t sub_1908993D8()
{
  result = qword_1EAD553E8;
  if (!qword_1EAD553E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553E8);
  }

  return result;
}

unint64_t sub_190899430()
{
  result = qword_1EAD553F0;
  if (!qword_1EAD553F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553F0);
  }

  return result;
}

unint64_t sub_19089948C()
{
  result = qword_1EAD553F8;
  if (!qword_1EAD553F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD553F8);
  }

  return result;
}

unint64_t sub_19089952C()
{
  result = qword_1EAD55400;
  if (!qword_1EAD55400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55400);
  }

  return result;
}

id sub_19089958C()
{
  sub_190D53390();
  v1 = objc_opt_self();
  v2 = sub_190D56ED0();
  v3 = [v1 __systemImageNamedSwift_];

  sub_190D533A0();
  result = CKFrameworkBundle();
  if (!result)
  {
    goto LABEL_44;
  }

  v5 = result;
  v6 = sub_190D56ED0();
  v7 = sub_190D56ED0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_190D56F10();
  sub_190D53380();
  v9 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v6) = [v9 isModernFilteringEnabled];

  if (v6)
  {
    sub_190B6BD08([v0 activePrimaryFilterMode]);
    if (!v10)
    {
      return sub_190D53320();
    }

    result = CKFrameworkBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_190D56ED0();

      v13 = sub_190D56ED0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      sub_190D56F10();
      return sub_190D53320();
    }

    goto LABEL_45;
  }

  v15 = [v0 filterMode];
  if (sub_190D57BC0())
  {
    result = objc_opt_self();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = [result smsFilterParamForFilterMode_];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 folderName];

        if (v18)
        {
          v19 = sub_190D56F10();
          v21 = v20;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_190DD1D90;
          *(v22 + 56) = MEMORY[0x1E69E6158];
          *(v22 + 64) = sub_19081EA10();
          *(v22 + 32) = v19;
          *(v22 + 40) = v21;
          result = CKFrameworkBundle();
          if (result)
          {
            v23 = result;
            v24 = sub_190D56ED0();
            v25 = sub_190D56ED0();
            v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

            sub_190D56F10();
            sub_190D56EE0();

            return sub_190D53320();
          }

          goto LABEL_46;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_12:
  if (v15 <= 4)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        result = CKFrameworkBundle();
        if (!result)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v27 = result;
      }

      else
      {
        result = CKFrameworkBundle();
        if (!result)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v27 = result;
      }

      goto LABEL_41;
    }

    if (v15 != 1)
    {
      if (v15 == 2)
      {
        result = CKFrameworkBundle();
        if (!result)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v27 = result;
LABEL_41:
        v29 = sub_190D56ED0();
        v30 = sub_190D56ED0();
        v31 = [v27 localizedStringForKey:v29 value:0 table:v30];

        sub_190D56F10();
        return sub_190D53320();
      }

      goto LABEL_38;
    }

    result = CKFrameworkBundle();
    if (result)
    {
LABEL_39:
      v27 = result;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v15 > 6)
  {
    if (v15 == 7)
    {
      return sub_190D53320();
    }

    if (v15 == 8)
    {
      result = CKFrameworkBundle();
      if (!result)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v27 = result;
      goto LABEL_41;
    }

LABEL_38:
    result = CKFrameworkBundle();
    if (!result)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    goto LABEL_39;
  }

  if (v15 == 5)
  {
LABEL_33:
    result = CKFrameworkBundle();
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v27 = result;
    goto LABEL_41;
  }

  v28 = CKIsBlackholeEnabled();
  result = CKFrameworkBundle();
  v27 = result;
  if (v28)
  {
    if (!result)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_41;
  }

  if (result)
  {
    goto LABEL_41;
  }

LABEL_54:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CKTranscriptCollectionViewController.pointIntersectsRepositionEnabledSticker(_:chatItem:)(CGPoint _, CKChatItem *chatItem)
{
  y = _.y;
  x = _.x;
  v6 = [objc_opt_self() sharedFeatureFlags];
  v7 = [v6 isStickerRepositioningEnabled];

  if (v7)
  {
    v8 = [(CKChatItem *)chatItem visibleRepositionEnabledStickers];
    sub_1902188FC(0, &unk_1EAD55410);
    v9 = sub_190D57180();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x193AF3B90](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v17 = v12;
        v15 = sub_190899D78(&v17, v2, x, y);

        if (v15)
        {

          return 1;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

BOOL sub_190899D78(void *a1, id a2, CGFloat a3, CGFloat a4)
{
  v7 = [a2 cellForAssociatedChatItem_];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_6:
    if (qword_1EAD51CC8 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9E088);
    v8 = sub_190D53020();
    v32 = sub_190D576A0();
    if (os_log_type_enabled(v8, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_19020E000, v8, v32, "unexpected: cell for stickerChatItem is not CKStickerTranscriptCell", v33, 2u);
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

    goto LABEL_15;
  }

  v10 = [v9 associatedItemView];
  if (!v10)
  {
    if (qword_1EAD51CC8 != -1)
    {
      swift_once();
    }

    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD9E088);
    v35 = sub_190D53020();
    v36 = sub_190D576A0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_19020E000, v35, v36, "unexpected: stickerCell for stickerChatItem contained nil associatedItemView", v37, 2u);
      MEMORY[0x193AF7A40](v37, -1, -1);
    }

LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [a2 collectionView];
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v11 superview];
  [v12 convertRect:v21 fromView:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v40.origin.x = v23;
  v40.origin.y = v25;
  v40.size.width = v27;
  v40.size.height = v29;
  v39.x = a3;
  v39.y = a4;
  v30 = CGRectContainsPoint(v40, v39);

  v8 = v11;
LABEL_16:

  return v30;
}

Swift::Void __swiftcall CKTranscriptCollectionViewController.toggleTimeStamp()()
{
  v1 = [v0 isShowingTranscriptTimestamps];
  v2 = &selRef_hideTranscriptTimestampsIfNeeded;
  if (!v1)
  {
    v2 = &selRef_showTranscriptTimestamps;
  }

  v3 = *v2;

  [v0 v3];
}

void __swiftcall CKTranscriptCollectionViewController.toggleTimeStampAction()(UIAction *__return_ptr retstr)
{
  v2 = [v1 isShowingTranscriptTimestamps];
  v3 = CKFrameworkBundle();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v3)
  {
LABEL_5:
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_1902188FC(0, &qword_1EAD464F0);
    v8 = sub_190D56ED0();
    v9 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_190D57DC0();
    return;
  }

  __break(1u);
}

void sub_19089A34C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong toggleTimeStamp];
  }
}

UIContextMenuConfiguration __swiftcall CKTranscriptCollectionViewController.toggleTimeStampOnlyContextMenuConfiguration()()
{
  sub_1902188FC(0, &unk_1EAD44ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD55F0;
  *(v1 + 32) = [v0 toggleTimeStampAction];
  v8 = v1;
  v2 = sub_190D57C90();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = objc_opt_self();
  aBlock[4] = sub_19089A598;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19089B160;
  aBlock[3] = &block_descriptor_17;
  v5 = _Block_copy(aBlock);
  sub_190D50920();

  v6 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:{v5, v8}];

  _Block_release(v5);
  return v6;
}

void *sub_19089A598()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

UIContextMenuConfiguration_optional __swiftcall CKTranscriptCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  v4 = v3;
  y = point.y;
  x = point.x;
  v9 = sub_190D51C00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51CD8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v13 = sub_190D53040();
  v53 = __swift_project_value_buffer(v13, qword_1EAD9E0B8);
  v14 = sub_190D53020();
  v15 = sub_190D576C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_19020E000, v14, v15, "contextMenuConfigurationForItemsAt", v16, 2u);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
LABEL_19:
    v25 = sub_190D53020();
    v26 = sub_190D576A0();
    if (os_log_type_enabled(&v25->super.super.super.super, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_19020E000, &v25->super.super.super.super, v26, "unexpected: collectionView is not a CKTranscriptCollectionView. No contextMenuConfiguration available", v27, 2u);
      MEMORY[0x193AF7A40](v27, -1, -1);
    }

LABEL_24:

    goto LABEL_40;
  }

  if (!*(contextMenuConfigurationForItemsAt._rawValue + 2))
  {
    v25 = _;
    v28 = sub_190D53020();
    v29 = sub_190D576A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_19020E000, v28, v29, "unexpected: No indexPaths for contextMenuConfiguration. No contextMenuConfiguration available", v30, 2u);
      MEMORY[0x193AF7A40](v30, -1, -1);
    }

    goto LABEL_24;
  }

  v18 = v17;
  (*(v10 + 16))(v12, contextMenuConfigurationForItemsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
  v19 = _;
  v20 = [(UICollectionView *)v19 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55480);
  v21 = sub_190D57180();

  v50 = v9;
  v51 = v12;
  v52 = v10;
  v48 = v4;
  v49 = v19;
  if (!(v21 >> 62))
  {
    v12 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_35:

LABEL_36:
    v42 = v50;
    v43 = v51;
    v44 = v52;
    v45 = sub_190D53020();
    v46 = sub_190D576A0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_19020E000, v45, v46, "unexpected: No contextMenuIneraction available. No contextMenuConfiguration available", v47, 2u);
      MEMORY[0x193AF7A40](v47, -1, -1);
    }

    else
    {
    }

    (*(v44 + 8))(v43, v42);
    goto LABEL_40;
  }

  v12 = sub_190D581C0();
  if (!v12)
  {
    goto LABEL_35;
  }

LABEL_8:
  v4 = 0;
  _ = (v21 & 0xC000000000000001);
  v9 = v21 & 0xFFFFFFFFFFFFFF8;
  v10 = 0x1E69DC000uLL;
  while (1)
  {
    if (_)
    {
      contextMenuConfigurationForItemsAt._rawValue = MEMORY[0x193AF3B90](v4, v21);
      v22 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v4 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      contextMenuConfigurationForItemsAt._rawValue = *(v21 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v22 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      swift_unknownObjectRetain();
      [v24 locationInView_];
      v56.x = x;
      v56.y = y;
      LOBYTE(v24) = CGPointEqualToPoint(v55, v56);
      swift_unknownObjectRelease();
      if (v24)
      {
        break;
      }
    }

    swift_unknownObjectRelease();
    ++v4;
    if (v22 == v12)
    {
      goto LABEL_35;
    }
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v33 = v32;
  v34 = v48;
  v35 = [v48 delegate];
  v37 = v51;
  v36 = v52;
  if (v35)
  {
    v38 = v35;
    if ([v35 respondsToSelector_])
    {
      v39 = sub_190D51BB0();
      v40 = [v38 transcriptCollectionViewController:v34 contextMenuConfigurationForItemAtIndexPath:v39 point:v33 interaction:{x, y}];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v36 + 8))(v37, v50);
      v41 = v40;
      goto LABEL_41;
    }

    (*(v36 + 8))(v37, v50);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v36 + 8))(v37, v50);
  }

LABEL_40:
  v41 = 0;
LABEL_41:
  result.value.super.isa = v41;
  result.is_nil = v31;
  return result;
}

id sub_19089ACF4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, char *))
{
  v10 = sub_190D51C00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a6(v15, v13);

  (*(v11 + 8))(v13, v10);

  return v17;
}

void sub_19089AE58(void *a1)
{
  v2 = sub_190D56ED0();
  [a1 setTextEffectCoordinatorPaused:0 reason:v2];
}

void sub_19089AEE4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v11, a5);

  swift_unknownObjectRelease();
}

id sub_19089B160(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1902188FC(0, &unk_1EAD45090);
  v2 = sub_190D57180();
  sub_190D50920();
  v3 = v1(v2);

  return v3;
}

id sub_19089B1F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E0B8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "highlightPreviewForItemAt", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = [objc_opt_self() sharedFeatureFlags];
  v9 = [v8 isExpressiveTextEnabled];

  if (v9)
  {
    [v2 prepareTextEffectsForModalPresentation];
  }

  result = [v2 delegate];
  if (result)
  {
    v11 = result;
    if ([result respondsToSelector_])
    {
      v12 = [v11 transcriptCollectionViewController:v2 previewForHighlightingContextMenuWithConfiguration:a1];
      swift_unknownObjectRelease();
      return v12;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_19089B398(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E0B8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "dismissalPreviewForItemAt", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  result = [v2 delegate];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      v10 = [v9 transcriptCollectionViewController:v2 previewForDismissingContextMenuWithConfiguration:a1];
      swift_unknownObjectRelease();
      return v10;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_19089B4F4(void *a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v72 - v4;
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v16 = sub_190D53040();
  v75 = __swift_project_value_buffer(v16, qword_1EAD9E0B8);
  v17 = sub_190D53020();
  v18 = sub_190D576C0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v10;
    v20 = v6;
    v21 = v7;
    v22 = v13;
    v23 = v15;
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_19020E000, v17, v18, "willDisplayContextMenu", v25, 2u);
    v26 = v25;
    a1 = v24;
    v15 = v23;
    v13 = v22;
    v7 = v21;
    v6 = v20;
    v10 = v19;
    MEMORY[0x193AF7A40](v26, -1, -1);
  }

  v78 = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55498);
  v27 = swift_dynamicCast();
  v28 = *(v7 + 56);
  v29 = &selRef_conversationListSummaryBodyLeading;
  if ((v27 & 1) == 0)
  {
    v28(v5, 1, 1, v6);
    sub_19022EEA4(v5, &qword_1EAD55490);
    v33 = v77;
    goto LABEL_24;
  }

  v74 = a1;
  v28(v5, 0, 1, v6);
  (*(v7 + 32))(v15, v5, v6);
  v30 = [objc_opt_self() sharedBehaviors];
  if (!v30)
  {
    __break(1u);
    goto LABEL_36;
  }

  v31 = v30;
  v32 = [v30 enableBalloonTextSelection];

  v33 = v77;
  if (!v32)
  {
    (*(v7 + 8))(v15, v6);
    goto LABEL_18;
  }

  v34 = [v77 delegate];
  if (v34)
  {
    v35 = v34;
    if ([v34 respondsToSelector_])
    {
      v36 = [v35 transcriptCollectionViewController:v33 chatItemForContextMenuWithConfiguration:v74];
      swift_unknownObjectRelease();
      if (v36)
      {
        v73 = v36;
        v37 = [v36 IMChatItem];
        if (!v37 || (v38 = v37, v17 = [v37 guid], v38, !v17))
        {
          (*(v7 + 16))(v13, v15, v6);
          v57 = sub_190D53020();
          v58 = sub_190D576A0();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v78 = v75;
            *v59 = 136315138;
            sub_19089C534();
            v60 = sub_190D58720();
            v62 = v61;
            v63 = *(v7 + 8);
            v63(v13, v6);
            v64 = sub_19021D9F8(v60, v62, &v78);

            *(v59 + 4) = v64;
            _os_log_impl(&dword_19020E000, v57, v58, "Unexpected: could not determine imChatItem.guid for indexPath: %s", v59, 0xCu);
            v65 = v75;
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x193AF7A40](v65, -1, -1);
            v66 = v59;
            v29 = &selRef_conversationListSummaryBodyLeading;
            MEMORY[0x193AF7A40](v66, -1, -1);

            v63(v15, v6);
          }

          else
          {

            v67 = *(v7 + 8);
            v67(v13, v6);
            v67(v15, v6);
          }

          v33 = v77;
          goto LABEL_18;
        }

        v39 = sub_190D56F10();
        v41 = v40;
        v42 = [v77 selectionManager];
        if (v42)
        {
          v43 = v42;
          v44 = [v42 isMessageGuidSelected_];

          if (v44)
          {
            (*(v7 + 8))(v15, v6);

            v33 = v77;
LABEL_18:
            a1 = v74;
            goto LABEL_24;
          }

          v68 = [v77 selectionManager];
          if (v68)
          {
            v69 = v68;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD554A8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_190DD1D90;
            *(inited + 32) = v39;
            *(inited + 40) = v41;
            *(inited + 48) = [objc_opt_self() balloonSelectionState_];
            sub_190821BFC(inited);
            swift_setDeallocating();
            sub_19022EEA4(inited + 32, &qword_1EAD554B0);
            sub_1902188FC(0, &qword_1EAD554B8);
            v71 = sub_190D56D60();

            [v69 setSelectedGuids_];

            (*(v7 + 8))(v15, v6);
            v33 = v77;
            goto LABEL_18;
          }

LABEL_37:
          __break(1u);
          return;
        }

LABEL_36:

        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  (*(v7 + 16))(v10, v15, v6);
  v45 = sub_190D53020();
  v46 = sub_190D576A0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78 = v75;
    *v47 = 136315138;
    sub_19089C534();
    v48 = sub_190D58720();
    v50 = v49;
    v51 = *(v7 + 8);
    v51(v10, v6);
    v52 = sub_19021D9F8(v48, v50, &v78);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_19020E000, v45, v46, "Unexpected: could not determine chatItem for indexPath: %s", v47, 0xCu);
    v53 = v75;
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x193AF7A40](v53, -1, -1);
    v54 = v47;
    v33 = v77;
    MEMORY[0x193AF7A40](v54, -1, -1);
  }

  else
  {

    v51 = *(v7 + 8);
    v51(v10, v6);
  }

  v51(v15, v6);
  a1 = v74;
  v29 = &selRef_conversationListSummaryBodyLeading;
LABEL_24:
  v55 = [v33 v29[460]];
  if (v55)
  {
    v56 = v55;
    if ([v55 respondsToSelector_])
    {
      [v56 transcriptCollectionViewController:v33 willDisplayContextMenuWithConfiguration:a1 animator:v76];
    }

    swift_unknownObjectRelease();
  }
}

void sub_19089BE04(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9E0B8);
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "willEndContextMenuInteraction", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isExpressiveTextEnabled];

  if (v11)
  {
    if (a2)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v3;
      v20[4] = sub_19089C52C;
      v20[5] = v12;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = sub_190840E6C;
      v20[3] = &block_descriptor_9_1;
      v13 = _Block_copy(v20);
      swift_unknownObjectRetain();
      v14 = v3;

      [a2 addCompletion_];
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = sub_190D56ED0();
      [v3 setTextEffectCoordinatorPaused:0 reason:v15];
    }
  }

  v16 = [v3 delegate];
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      [v17 transcriptCollectionViewController:v3 willEndContextMenuInteractionWithConfiguration:a1 animator:a2];
    }

    swift_unknownObjectRelease();
  }

  if (CKIsRunningInMacCatalyst())
  {
    v18 = [v3 selectionManager];
    if (v18)
    {
      v19 = v18;
      [v18 removeAllSelectedMessageGuids];
    }

    else
    {
      __break(1u);
    }
  }
}