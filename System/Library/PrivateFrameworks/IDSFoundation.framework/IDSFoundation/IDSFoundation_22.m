uint64_t (*sub_1A7DF1740(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = LinkEngineLink.subscript.modify(v6, a2, a3);
  return sub_1A7D93198;
}

uint64_t sub_1A7DF17CC()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1A7DF1800(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  *(v3 + 40) = 0;
  *(v3 + 48) = v7;
  if (qword_1EB2B32D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B32E0);

  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A7B0CB38(a2, a3, &v14);
    _os_log_impl(&dword_1A7AD9000, v9, v10, "LinkEngineLink.init: %s", v11, 0xCu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  swift_weakInit();
  sub_1A7DF1AC0(&v14, v4 + 32);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

void sub_1A7DF198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 10);
  sub_1A7DF11F0(&v3[12], a2, a1, a3);

  os_unfair_lock_unlock(v3 + 10);
}

uint64_t sub_1A7DF19F8(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7DF1AFC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7E50);
  sub_1A7B0CB00(v0, qword_1EB2B7E50);
  return sub_1A7E22050();
}

void *sub_1A7DF1B84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v5;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_1A7AD9000, v8, v9, "  ... creating quality monitor plugin with allowedOverheadPerExistingPacket: %ld, allowedAdditionalPacketsPerSecond: %f", v10, 0x16u);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  type metadata accessor for IDSLinkQualityMonitorPlugin();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000018;
  v11[3] = 0x80000001A7EB09B0;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = 0x3FB1111111111111;
  v11[7] = a1;
  v11[8] = a2;

  return v11;
}

void *sub_1A7DF1CEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    v16 = 0;
    *v10 = 136315138;
    v17 = 0xE000000000000000;
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
    v12 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v12);

    MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
    sub_1A7E227A0();
    v13 = sub_1A7B0CB38(v16, 0xE000000000000000, &v15);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_1A7AD9000, v8, v9, "  allowing overhead: %s", v10, 0xCu);
    sub_1A7B0CD6C(v11);
    MEMORY[0x1AC5654B0](v11, -1, -1);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  v16 = v5;
  v17 = v6;
  return sub_1A7DF1B84(a1, a2);
}

void *sub_1A7DF1F14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  sub_1A7B0CB00(v7, qword_1EB2B7E50);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    v15 = 0;
    *v10 = 136315138;
    v16 = 0xE000000000000000;
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
    sub_1A7DAB778();
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    v12 = sub_1A7B0CB38(v15, 0xE000000000000000, &v14);

    *(v10 + 4) = v12;
    sub_1A7B0CD6C(v11);
    MEMORY[0x1AC5654B0](v11, -1, -1);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }

  v15 = v5;
  v16 = v6;
  return sub_1A7DF1CEC(a1, a2);
}

void *sub_1A7DF20EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  if (*(v2 + 16) == 1)
  {
    if (v3 | v4)
    {
      return 0;
    }

    else
    {
      return sub_1A7DF1B84(a1, a2);
    }
  }

  else
  {
    if (qword_1EB2B48B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B7E50);
    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      v17 = v3;
      *v11 = 136315138;
      v18 = v4;
      v13 = LinkSelectionStrategy.QualityThreshold.description.getter();
      v15 = sub_1A7B0CB38(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "  Using primary secondary duplication strategy: when primary is unhealthy with threshold=%s", v11, 0xCu);
      sub_1A7B0CD6C(v12);
      MEMORY[0x1AC5654B0](v12, -1, -1);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    v17 = v3;
    v18 = v4;
    return sub_1A7DF1F14(a1, a2);
  }
}

void *sub_1A7DF2294(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B7E50);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v7)
    {
      if (v5 | v6)
      {
        v13 = 0x726576656ELL;
      }

      else
      {
        v13 = 0x737961776C61;
      }

      if (v5 | v6)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xE600000000000000;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1A7E22B70();
      MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
      sub_1A7DAB658();
      MEMORY[0x1AC561C90](41, 0xE100000000000000);
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = sub_1A7B0CB38(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "  PrimarySecondary duplication strategy: %s", v11, 0xCu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);

    a2 = v17;
  }

  else
  {
  }

  v19 = v5;
  v20 = v6;
  v21 = v7;
  return sub_1A7DF20EC(a1, a2);
}

void *sub_1A7DF24B8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2B48B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B7E50);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "  Using primary secondary strategy", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  return sub_1A7DF2294(a1, a2);
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 40));
  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  *(v3 + 48) = a1 != 1;

  os_unfair_lock_unlock((v3 + 40));
}

void (*IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 48);
  os_unfair_lock_unlock((v3 + 40));
  v5 = 3;
  if (!v4)
  {
    v5 = 1;
  }

  *a1 = v5;
  return sub_1A7DF26CC;
}

void sub_1A7DF26CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 32);
  os_unfair_lock_lock((v2 + 40));
  *(v2 + 48) = v1 != 1;

  os_unfair_lock_unlock((v2 + 40));
}

void IDSGLLinkEngineTwoWayConnectionStrategy.toolState()(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 48);
  v5 = *(v3 + 200);

  v7 = sub_1A7DF29D0(v6);

  v9 = sub_1A7DF2D00(v8, v3, v3 + 48);

  v10 = *(v3 + 88);
  v11 = 256;
  if (!v5)
  {
    v11 = 0;
  }

  v12 = *(v3 + 80) | 0x8000000000000000;
  *a1 = v11 | v4;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v12;
  a1[4] = v10;

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.deinit()
{

  return v0;
}

uint64_t IDSGLLinkEngineTwoWayConnectionStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DF28B8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 40));
  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void (*sub_1A7DF28FC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IDSGLLinkEngineTwoWayConnectionStrategy.connectionBehavior.modify(v2);
  return sub_1A7D918AC;
}

void sub_1A7DF296C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 40));
  sub_1A7D20568((v3 + 48), v3, a1);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_1A7DF29D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEC8C(0, v1, 0);
    v4 = v43;
    v5 = v3 + 64;
    result = sub_1A7E22AD0();
    v7 = 0;
    v31 = v3 + 72;
    v32 = v3 + 64;
    v33 = v1;
    v34 = v3;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_31;
      }

      v36 = 1 << result;
      v37 = result >> 6;
      v35 = v7;
      v40 = result;
      v41 = *(v3 + 36);
      v9 = *(v3 + 56) + 32 * result;
      v39 = *v9;
      v38 = *(v9 + 16);
      v10 = *(*(v9 + 24) + 16);
      v42 = *(v9 + 8);
      if (v10)
      {
        swift_bridgeObjectRetain_n();

        sub_1A7CCE918(0, v10, 0);
        v11 = v2;
        v12 = 32;
        do
        {
          v13 = LinkEndpoint.uniqueID.getter();
          v15 = v14;
          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1A7CCE918((v16 > 1), v17 + 1, 1);
          }

          *(v11 + 16) = v17 + 1;
          v18 = v11 + 16 * v17;
          *(v18 + 32) = v13;
          *(v18 + 40) = v15;
          v12 += 8;
          --v10;
        }

        while (v10);

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v33;
        v3 = v34;
        v5 = v32;
      }

      else
      {

        v11 = v2;
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      result = v40;
      v21 = v41;
      if (v20 >= v19 >> 1)
      {
        sub_1A7CCEC8C((v19 > 1), v20 + 1, 1);
        v21 = v41;
        result = v40;
      }

      *(v4 + 16) = v20 + 1;
      v22 = v4 + 32 * v20;
      *(v22 + 32) = v39;
      *(v22 + 40) = v42;
      *(v22 + 48) = v38;
      *(v22 + 56) = v11;
      v8 = 1 << *(v3 + 32);
      if (result >= v8)
      {
        goto LABEL_32;
      }

      v23 = *(v5 + 8 * v37);
      if ((v23 & v36) == 0)
      {
        goto LABEL_33;
      }

      if (v21 != *(v3 + 36))
      {
        goto LABEL_34;
      }

      v24 = v23 & (-2 << (result & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v4;
        v26 = v37 << 6;
        v27 = v37 + 1;
        v28 = (v31 + 8 * v37);
        while (v27 < (v8 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1A7CD29F0(result, v21, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_26;
          }
        }

        sub_1A7CD29F0(result, v21, 0);
LABEL_26:
        v4 = v25;
      }

      v7 = v35 + 1;
      result = v8;
      if (v35 + 1 == v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A7DF2D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEC6C(0, v3, 0);
    v4 = v38;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      *v27 = *(v6 - 4);
      v28 = v7;
      v29 = v8;
      v30 = v9;
      v31 = v10;
      v32 = v11;
      v12 = *(a3 + 8);

      sub_1A7D1FD88(v27, v12, v33);

      v13 = v33[0];
      v14 = v33[1];
      v15 = v34;
      v16 = v35;
      v17 = v36;
      v18 = v37;
      v38 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        v25 = v37;
        v22 = v33[0];
        v24 = v36;
        sub_1A7CCEC6C((v19 > 1), v20 + 1, 1);
        v17 = v24;
        v13 = v22;
        v18 = v25;
        v4 = v38;
      }

      *(v4 + 16) = v20 + 1;
      v21 = v4 + 48 * v20;
      *(v21 + 32) = v13;
      *(v21 + 33) = v14;
      *(v21 + 40) = v15;
      *(v21 + 48) = v16;
      *(v21 + 56) = v17;
      *(v21 + 64) = v18;
      v6 += 6;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1A7DF2EE0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (*(result + 8))
  {
    v5 = 0;
  }

  else
  {
    if (*result >= v4)
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = *result;
    }

    if ((*result & 0x8000000000000000) != 0)
    {
LABEL_30:
      __break(1u);
      return result;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 != v4)
  {
    v22 = v3 + 32;
    v23 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v24 = v5;
    do
    {
      v25 = (v22 + (v24 << 6));
      v26 = v24;
      while (1)
      {
        if (v24 < v5 || v26 >= v4)
        {
          __break(1u);
          goto LABEL_30;
        }

        v28 = v25[1];
        v27 = v25[2];
        v29 = *v25;
        *&v44[10] = *(v25 + 42);
        v43 = v28;
        *v44 = v27;
        v42 = v29;
        v30 = v26 + 1;
        if (!*(&v29 + 1))
        {
          break;
        }

        v25 += 4;
        ++v26;
        if (v4 == v30)
        {
          goto LABEL_8;
        }
      }

      v39 = v22;
      sub_1A7DF5FF8(&v42, v41);
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v7;
      v31 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1A7CCEC4C(0, *(v7 + 16) + 1, 1);
        v7 = v45;
      }

      v33 = *(v7 + 16);
      v32 = *(v7 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1A7CCEC4C((v32 > 1), v33 + 1, 1);
        v7 = v45;
      }

      *(v7 + 16) = v33 + 1;
      v34 = (v7 + (v33 << 6));
      v35 = v42;
      v36 = v43;
      v37 = *v44;
      *(v34 + 74) = *&v44[10];
      v34[3] = v36;
      v34[4] = v37;
      v34[2] = v35;
      v24 = v26 + 1;
      v23 = v31;
      v22 = v39;
    }

    while (v31 != v26);
  }

LABEL_8:

  v8 = *(v7 + 16);
  if (v8)
  {
    v38 = v3;
    *&v42 = v6;
    v9 = v7;
    sub_1A7CCEC14(0, v8, 0);
    v10 = v42;
    v11 = (v9 + 88);
    do
    {
      v12 = *(v11 - 5);
      v13 = *(v11 - 4);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
      v16 = *(v11 - 1);
      v17 = *v11;
      sub_1A7D52320(v12, v13, v14, v15, v16, *v11);
      *&v42 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1A7CCEC14((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v10 = v42;
      }

      v11 += 32;
      *(v10 + 16) = v20;
      v21 = v10 + 48 * v19;
      *(v21 + 32) = v12;
      *(v21 + 40) = v13;
      *(v21 + 48) = v14;
      *(v21 + 56) = v15;
      *(v21 + 64) = v16;
      *(v21 + 72) = v17;
      --v8;
    }

    while (v8);

    v3 = v38;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *a2 = *(v3 + 16);
  a2[1] = v10;
  return result;
}

uint64_t sub_1A7DF31C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB1D90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DF325C(uint64_t a1)
{
  v2 = sub_1A7DF340C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF3298(uint64_t a1)
{
  v2 = sub_1A7DF340C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.SyncToken.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7E68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A7DF340C()
{
  result = qword_1EB2B7E70;
  if (!qword_1EB2B7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7E70);
  }

  return result;
}

uint64_t IDSLinkQualityReport.SyncToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7E78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23250();
  if (!v2)
  {
    v10 = sub_1A7E22F20();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DF35CC(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7E68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF340C();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v6, v2);
}

uint64_t IDSLinkQualityReport.Delta.measurements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinkQualityReport.Delta.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0x6B6F7420636E7953, 0xEC000000203A6E65);
  sub_1A7E22D30();
  MEMORY[0x1AC561C90](8251, 0xE200000000000000);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0x6572757361656D20, 0xED000073746E656DLL);
  return 0;
}

uint64_t sub_1A7DF3898()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x656B6F54636E7973;
  }
}

uint64_t sub_1A7DF38E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F54636E7973 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEC00000073746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DF39C8(uint64_t a1)
{
  v2 = sub_1A7DF3C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF3A04(uint64_t a1)
{
  v2 = sub_1A7DF3C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.Delta.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7E80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF3C20();
  sub_1A7E23260();
  v13 = v9;
  v12 = 0;
  sub_1A7D519C8();
  sub_1A7E23030();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1A7CC7FFC(&qword_1EB2B6280);
    sub_1A7D52254(&qword_1EB2B6278, sub_1A7D52110);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7DF3C20()
{
  result = qword_1EB2B7E88;
  if (!qword_1EB2B7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7E88);
  }

  return result;
}

uint64_t IDSLinkQualityReport.Delta.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7E90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF3C20();
  sub_1A7E23250();
  if (!v2)
  {
    v14 = 0;
    sub_1A7D51ADC();
    sub_1A7E22F30();
    v10 = v15;
    sub_1A7CC7FFC(&qword_1EB2B6280);
    v14 = 1;
    sub_1A7D52254(&qword_1EB2B62A8, sub_1A7D522CC);
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v10;
    a2[1] = v11;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DF3E8C(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7F78);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7F80);
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B7F88);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v19 - v15;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF6060();
  v17 = v23;
  sub_1A7E23260();
  if (v17)
  {
    v25 = 1;
    sub_1A7DF60B4();
    sub_1A7E22F80();
    sub_1A7E22FF0();
    (*(v21 + 8))(v7, v4);
  }

  else
  {
    v24 = 0;
    sub_1A7DF6108();
    sub_1A7E22F80();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1A7DF4180(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7F20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v10;
  v11 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v11;
  v14 = *(v1 + 48);
  v26 = *(v1 + 56);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5EFC();

  sub_1A7E23260();
  v20 = v8;
  v21 = v9;
  v27 = 0;
  sub_1A7DF5F50();
  v12 = v19;
  sub_1A7E23030();

  if (!v12)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = v26;
    v27 = 1;
    sub_1A7D52320(v18, v17, v16, v15, v14, v26);
    sub_1A7D52110();
    sub_1A7E23030();
    sub_1A7D52368(v20, v21, v22, v23, v24, v25);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A7DF437C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7F38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5EFC();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  LOBYTE(v19[0]) = 0;
  sub_1A7DF5FA4();
  sub_1A7E22F30();
  v11 = v21;
  v10 = v22;
  v32 = 1;
  sub_1A7D522CC();
  sub_1A7E22F30();
  (*(v6 + 8))(v9, v5);
  v12 = v27;
  v13 = v28;
  v18 = v29;
  v31 = v30;
  *&v19[0] = v11;
  *(&v19[0] + 1) = v10;
  v19[1] = v27;
  *v20 = v28;
  *&v20[16] = v29;
  *&v20[24] = v30;
  v14 = v19[0];
  v15 = v27;
  v16 = v28;
  *(a2 + 42) = *&v20[10];
  a2[1] = v15;
  a2[2] = v16;
  *a2 = v14;
  sub_1A7DF5FF8(v19, &v21);
  sub_1A7B0CD6C(a1);
  v21 = v11;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v25 = v18;
  v26 = v31;
  return sub_1A7DF6030(&v21);
}

uint64_t sub_1A7DF463C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1A7DF4670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DF4744(uint64_t a1)
{
  v2 = sub_1A7DF6060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4780(uint64_t a1)
{
  v2 = sub_1A7DF6060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF47BC(uint64_t a1)
{
  v2 = sub_1A7DF6108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF47F8(uint64_t a1)
{
  v2 = sub_1A7DF6108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF4844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DF48CC(uint64_t a1)
{
  v2 = sub_1A7DF60B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4908(uint64_t a1)
{
  v2 = sub_1A7DF60B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF4944@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A7DF58D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A7DF498C()
{
  v1 = *(v0 + 8);
  sub_1A7E23200();
  if (v1)
  {
    MEMORY[0x1AC562AF0](1);
    sub_1A7E22350();
  }

  else
  {
    MEMORY[0x1AC562AF0](0);
  }

  return sub_1A7E23240();
}

uint64_t sub_1A7DF49FC()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1AC562AF0](0);
  }

  MEMORY[0x1AC562AF0](1);

  return sub_1A7E22350();
}

uint64_t sub_1A7DF4A74()
{
  v1 = *(v0 + 8);
  sub_1A7E23200();
  if (v1)
  {
    MEMORY[0x1AC562AF0](1);
    sub_1A7E22350();
  }

  else
  {
    MEMORY[0x1AC562AF0](0);
  }

  return sub_1A7E23240();
}

uint64_t sub_1A7DF4AE0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1A7E230D0();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1A7DF4B24()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1A7DF4B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DF4C40(uint64_t a1)
{
  v2 = sub_1A7DF5EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4C7C(uint64_t a1)
{
  v2 = sub_1A7DF5EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DF4CE8()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x6D6572757361656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A7DF4D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DF5DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DF4D68(uint64_t a1)
{
  v2 = sub_1A7DF5014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DF4DA4(uint64_t a1)
{
  v2 = sub_1A7DF5014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReport.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7E98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5014();
  sub_1A7E23260();
  v14 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v13 = 1;
    sub_1A7E23010();
    v11[1] = v9;
    v12 = 2;
    sub_1A7CC7FFC(&qword_1EB2B7EA8);
    sub_1A7DF5068(&qword_1EB2B7EB0, sub_1A7DF50E0);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7DF5014()
{
  result = qword_1EB2B7EA0;
  if (!qword_1EB2B7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EA0);
  }

  return result;
}

uint64_t sub_1A7DF5068(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7EA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7DF50E0()
{
  result = qword_1EB2B7EB8;
  if (!qword_1EB2B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EB8);
  }

  return result;
}

uint64_t IDSLinkQualityReport.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7EC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DF5014();
  sub_1A7E23250();
  if (!v2)
  {
    v19 = 0;
    sub_1A7E22F10();
    v11 = v10;
    v18 = 1;
    sub_1A7E22F10();
    v14 = v13;
    sub_1A7CC7FFC(&qword_1EB2B7EA8);
    v17 = 2;
    sub_1A7DF5068(&qword_1EB2B7EC8, sub_1A7DF5388);
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v15 = v16[1];
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v15;
  }

  sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7DF5388()
{
  result = qword_1EB2B7ED0;
  if (!qword_1EB2B7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7ED0);
  }

  return result;
}

__n128 sub_1A7DF543C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A7DF5458(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
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

uint64_t sub_1A7DF54B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A7DF556C()
{
  result = qword_1EB2B2BD8;
  if (!qword_1EB2B2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2BD8);
  }

  return result;
}

unint64_t sub_1A7DF55C4()
{
  result = qword_1EB2B7ED8;
  if (!qword_1EB2B7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7ED8);
  }

  return result;
}

unint64_t sub_1A7DF561C()
{
  result = qword_1EB2B7EE0;
  if (!qword_1EB2B7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EE0);
  }

  return result;
}

unint64_t sub_1A7DF5674()
{
  result = qword_1EB2B7EE8;
  if (!qword_1EB2B7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EE8);
  }

  return result;
}

unint64_t sub_1A7DF56CC()
{
  result = qword_1EB2B7EF0;
  if (!qword_1EB2B7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EF0);
  }

  return result;
}

unint64_t sub_1A7DF5724()
{
  result = qword_1EB2B7EF8;
  if (!qword_1EB2B7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7EF8);
  }

  return result;
}

unint64_t sub_1A7DF577C()
{
  result = qword_1EB2B7F00;
  if (!qword_1EB2B7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F00);
  }

  return result;
}

unint64_t sub_1A7DF57D4()
{
  result = qword_1EB2B7F08;
  if (!qword_1EB2B7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F08);
  }

  return result;
}

unint64_t sub_1A7DF582C()
{
  result = qword_1EB2B7F10;
  if (!qword_1EB2B7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F10);
  }

  return result;
}

unint64_t sub_1A7DF5884()
{
  result = qword_1EB2B7F18;
  if (!qword_1EB2B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F18);
  }

  return result;
}

uint64_t sub_1A7DF58D8(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7F48);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7F50);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7F58);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - v13;
  v15 = a1[3];
  v34 = a1;
  v16 = sub_1A7CC9878(a1, v15);
  sub_1A7DF6060();
  v17 = v33;
  sub_1A7E23250();
  if (!v17)
  {
    v29 = v6;
    v18 = v32;
    v33 = v11;
    v19 = sub_1A7E22F70();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1A7CDB538();
    v22 = v10;
    v16 = v14;
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v24 = sub_1A7E22BD0();
      swift_allocError();
      v26 = v25;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v26 = &type metadata for IDSLinkQualityReport.Source;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else if (v21)
    {
      v39 = 1;
      sub_1A7DF60B4();
      sub_1A7E22E70();
      v23 = v33;
      v30 = v14;
      v16 = sub_1A7E22EF0();
      (*(v31 + 8))(v5, v18);
      (*(v23 + 8))(v30, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0;
      sub_1A7DF6108();
      sub_1A7E22E70();
      v28 = v33;
      (*(v30 + 1))(v9, v29);
      (*(v28 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v16 = 0;
    }
  }

  sub_1A7B0CD6C(v34);
  return v16;
}

uint64_t sub_1A7DF5DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEC00000073746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

unint64_t sub_1A7DF5EFC()
{
  result = qword_1EB2B7F28;
  if (!qword_1EB2B7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F28);
  }

  return result;
}

unint64_t sub_1A7DF5F50()
{
  result = qword_1EB2B7F30;
  if (!qword_1EB2B7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F30);
  }

  return result;
}

unint64_t sub_1A7DF5FA4()
{
  result = qword_1EB2B7F40;
  if (!qword_1EB2B7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F40);
  }

  return result;
}

unint64_t sub_1A7DF6060()
{
  result = qword_1EB2B7F60;
  if (!qword_1EB2B7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F60);
  }

  return result;
}

unint64_t sub_1A7DF60B4()
{
  result = qword_1EB2B7F68;
  if (!qword_1EB2B7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F68);
  }

  return result;
}

unint64_t sub_1A7DF6108()
{
  result = qword_1EB2B7F70;
  if (!qword_1EB2B7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F70);
  }

  return result;
}

unint64_t sub_1A7DF61A0()
{
  result = qword_1EB2B7F90;
  if (!qword_1EB2B7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F90);
  }

  return result;
}

unint64_t sub_1A7DF61F8()
{
  result = qword_1EB2B7F98;
  if (!qword_1EB2B7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7F98);
  }

  return result;
}

unint64_t sub_1A7DF6250()
{
  result = qword_1EB2B7FA0;
  if (!qword_1EB2B7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FA0);
  }

  return result;
}

unint64_t sub_1A7DF62A8()
{
  result = qword_1EB2B7FA8;
  if (!qword_1EB2B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FA8);
  }

  return result;
}

unint64_t sub_1A7DF6300()
{
  result = qword_1EB2B7FB0;
  if (!qword_1EB2B7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FB0);
  }

  return result;
}

unint64_t sub_1A7DF6358()
{
  result = qword_1EB2B7FB8;
  if (!qword_1EB2B7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FB8);
  }

  return result;
}

unint64_t sub_1A7DF63B0()
{
  result = qword_1EB2B7FC0;
  if (!qword_1EB2B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FC0);
  }

  return result;
}

unint64_t sub_1A7DF6408()
{
  result = qword_1EB2B7FC8;
  if (!qword_1EB2B7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FC8);
  }

  return result;
}

unint64_t sub_1A7DF6460()
{
  result = qword_1EB2B7FD0;
  if (!qword_1EB2B7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FD0);
  }

  return result;
}

unint64_t sub_1A7DF64B8()
{
  result = qword_1EB2B7FD8;
  if (!qword_1EB2B7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FD8);
  }

  return result;
}

unint64_t sub_1A7DF6510()
{
  result = qword_1EB2B7FE0;
  if (!qword_1EB2B7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7FE0);
  }

  return result;
}

uint64_t LinkEngine.linkConnector.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC9510((v0 + 208), &v4);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if (swift_dynamicCast())
  {
    v1 = v5;
    if (v5 == 1)
    {
      v2 = 0;
    }

    else
    {
      v1 = swift_unknownObjectRetain();
      v2 = v1;
    }
  }

  else
  {
    v2 = 0;
    v5 = xmmword_1A7E43F70;
    v1 = 1;
  }

  sub_1A7CEB438(v1);
  return v2;
}

uint64_t LinkEngine.linkConnector.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3 + 50);
  v7[3] = &type metadata for LinkConnectorComponent;
  v7[0] = a1;
  v7[1] = a2;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v7, &type metadata for LinkConnectorComponent);
  os_unfair_lock_unlock(v3 + 50);
  return swift_unknownObjectRelease_n();
}

uint64_t LinkConnectorComponent.connector.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LinkConnectorComponent.init(connector:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1A7DF6760(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v4 + 50);
  v6[3] = &type metadata for LinkConnectorComponent;
  v6[0] = v2;
  v6[1] = v3;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v6, &type metadata for LinkConnectorComponent);
  os_unfair_lock_unlock(v4 + 50);
  return swift_unknownObjectRelease_n();
}

uint64_t (*LinkEngine.linkConnector.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkEngine.linkConnector.getter();
  a1[1] = v3;
  return sub_1A7DF682C;
}

uint64_t sub_1A7DF682C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 50);
    v9 = &type metadata for LinkConnectorComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkConnectorComponent);
    os_unfair_lock_unlock(v3 + 50);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 50);
    v9 = &type metadata for LinkConnectorComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkConnectorComponent);
    os_unfair_lock_unlock(v3 + 50);
  }

  return swift_unknownObjectRelease_n();
}

_OWORD *LinkEndpoint.isSliced.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsSliced;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsSliced);
}

uint64_t LinkEndpoint.isSliced.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsSliced);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  return swift_dynamicCast() & v7;
}

_OWORD *(*LinkEndpoint.isSliced.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE0928(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7DF6AA0;
}

_OWORD *sub_1A7DF6AA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsSliced;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsSliced);
}

_OWORD *LinkEndpoint.nat64Prefix.setter(uint64_t a1, uint64_t a2, char a3)
{
  v6 = &type metadata for IDSLinkEndpointNAT64Prefix;
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3 & 1;
  return sub_1A7CC8D74(v4, &type metadata for IDSLinkEndpointNAT64Prefix);
}

uint64_t LinkEndpoint.nat64Prefix.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointNAT64Prefix), (v3 & 1) != 0) && (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_nat64_prefix_t.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = nw_nat64_prefix_t.asData.getter(a1, a2);
  if (v3 >> 60 == 15)
  {
    return 7104878;
  }

  v5 = v2;
  v6 = v3;
  v7 = sub_1A7D0E774(v2, v3);
  sub_1A7B1516C(v5, v6);
  return v7;
}

unint64_t nw_nat64_prefix_t.asData.getter(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = HIDWORD(a1);
  v6 = a2;
  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0xEuLL)
  {
    return sub_1A7DF6EAC(&v5, &v5 + a1);
  }

  v3 = a1;
  sub_1A7E21680();
  swift_allocObject();
  sub_1A7E21620();
  if (v2 >= 0x7FFFFFFF)
  {
    sub_1A7E219A0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
    }

    return v2 << 32;
  }

  return result;
}

uint64_t sub_1A7DF6D60()
{
  v1 = nw_nat64_prefix_t.asData.getter(*v0, v0[1]);
  if (v2 >> 60 == 15)
  {
    return 7104878;
  }

  v4 = v1;
  v5 = v2;
  v6 = sub_1A7D0E774(v1, v2);
  sub_1A7B1516C(v4, v5);
  return v6;
}

_OWORD *(*LinkEndpoint.nat64Prefix.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE0874(*v1, v8);
  v3 = v8[0];
  v4 = v8[1];
  v5 = v9;
  v6 = v10;
  if (v10)
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = (v6 | v5) & 1;
  return sub_1A7DF6E5C;
}

_OWORD *sub_1A7DF6E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v7 = &type metadata for IDSLinkEndpointNAT64Prefix;
  v5[0] = v3;
  v5[1] = v1;
  v6 = v2;
  return sub_1A7CC8D74(v5, &type metadata for IDSLinkEndpointNAT64Prefix);
}

unint64_t sub_1A7DF6EAC(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1A7E077DC(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t _sSo17nw_nat64_prefix_ta13IDSFoundationE2eeoiySbAB_ABtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = nw_nat64_prefix_t.asData.getter(a1, a2);
  v8 = v7;
  v10 = nw_nat64_prefix_t.asData.getter(a3, a4);
  v11 = v9;
  if (v8 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_1A7B1516C(v6, v8);
      return 1;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_1A7B1516C(v6, v8);
    sub_1A7B1516C(v10, v11);
    return 0;
  }

  sub_1A7DF70A0(v6, v8);
  sub_1A7DF70A0(v10, v11);
  v13 = sub_1A7E07674(v6, v8, v10, v11);
  sub_1A7B1516C(v10, v11);
  sub_1A7B1516C(v10, v11);
  sub_1A7B1516C(v6, v8);
  sub_1A7B1516C(v6, v8);
  return v13 & 1;
}

__n128 initializeBufferWithCopyOfBuffer for IDSLinkEndpointNAT64Prefix(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A7DF70A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A7D5164C(a1, a2);
  }

  return a1;
}

uint64_t sub_1A7DF70B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  sub_1A7DF7298(a4 + 32, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v9[1];
  result = sub_1A7DF72D0(v9);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(v4, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A7DF713C()
{

  sub_1A7DF72D0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DF71A0(uint64_t a1, int a2)
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

uint64_t sub_1A7DF71EC(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7DF723C(uint64_t a1)
{
  v2 = *(a1 + 64);

  sub_1A7DA0388(v3, sub_1A7D9B1E0, v1, v2);
}

uint64_t sub_1A7DF7300(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CD2A2C;

  return v6(a1);
}

uint64_t sub_1A7DF73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = sub_1A7E22D10();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v7[16] = *(v9 + 64);
  v7[17] = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B61C0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DF7504, 0, 0);
}

uint64_t sub_1A7DF7504()
{
  v1 = v0[18];
  v2 = v0[15];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[12];
  v19 = v0[13];
  v14 = v0[11];
  v15 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  v5 = sub_1A7E226D0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  sub_1A7DF7DF0(v1, &unk_1A7E55B48, v7);
  sub_1A7CC9970(v1, &unk_1EB2B61C0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  v10 = (v9 + ((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v18;
  v10[1] = v19;
  sub_1A7DF7DF0(v1, &unk_1A7E55B58, v9);
  sub_1A7CC9970(v1, &unk_1EB2B61C0);
  v11 = swift_task_alloc();
  v0[19] = v11;
  v12 = sub_1A7CC7FFC(&qword_1EB2B8008);
  v0[20] = v12;
  *v11 = v0;
  v11[1] = sub_1A7DF7784;

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v12);
}

uint64_t sub_1A7DF7784()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1A7DF7958;
  }

  else
  {
    v2 = sub_1A7DF7898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DF7898()
{
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[7];
    *v3 = v0[2];
    v3[1] = v2;
    sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E22780();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_1A7DF7958()
{
  v1 = *(v0 + 168);
  *(v0 + 48) = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8);
  if (swift_dynamicCast())
  {
    sub_1A7E22780();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1A7DF7AC0;
    v4 = *(v0 + 160);

    return MEMORY[0x1EEE6DAC8](v0 + 32, 0, 0, v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A7DF7AC0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_1A7DF7C78;
  }

  else
  {
    v3 = sub_1A7DF7BDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DF7BDC()
{
  if (*(v0 + 40) >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);

    *v2 = *(v0 + 32);

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_1A7DF7C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DF7CF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A7CD22FC;

  return v8(a1);
}

uint64_t sub_1A7DF7DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  sub_1A7CD1F00(a1, v19 - v9, &unk_1EB2B61C0);
  v11 = sub_1A7E226D0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A7CC9970(v10, &unk_1EB2B61C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1A7E225F0();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A7E226C0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1A7DF7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1A7DF80A8;

  return sub_1A7B05728(a5, a6, 0, 0, 1);
}

uint64_t sub_1A7DF80A8()
{

  if (v0)
  {

    v1 = sub_1A7DFF700;
  }

  else
  {
    v1 = sub_1A7DF81C0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A7DF81C0()
{
  sub_1A7DFF49C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DF8248(uint64_t a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  os_unfair_lock_lock((v1 + 16));
  sub_1A7DF865C((v1 + 24), a1, v10);
  os_unfair_lock_unlock((v1 + 16));
  sub_1A7CD1F00(v10, v6, &qword_1EB2B4A50);
  v11 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_1A7CC9970(v10, &qword_1EB2B4A50);
    return sub_1A7CC9970(v6, &qword_1EB2B4A50);
  }

  else
  {
    sub_1A7E22640();
    sub_1A7B05A00(&qword_1EB2B2950, MEMORY[0x1E69E8550]);
    v14 = swift_allocError();
    sub_1A7E22140();
    v15[1] = v14;
    sub_1A7E22610();
    sub_1A7CC9970(v10, &qword_1EB2B4A50);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t sub_1A7DF8474(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v18 - v13;
  os_unfair_lock_lock((v3 + 16));
  sub_1A7DF865C((v3 + 24), a1, v14);
  os_unfair_lock_unlock((v3 + 16));
  sub_1A7CD1F00(v14, v10, &qword_1EB2B4A50);
  v15 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1A7CC9970(v14, &qword_1EB2B4A50);
    return sub_1A7CC9970(v10, &qword_1EB2B4A50);
  }

  else
  {
    v18[0] = a2;
    v18[1] = a3;
    sub_1A7D5164C(a2, a3);
    sub_1A7E22620();
    sub_1A7CC9970(v14, &qword_1EB2B4A50);
    return (*(v16 + 8))(v10, v15);
  }
}

uint64_t sub_1A7DF865C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1A7CD15C0(a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a3, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(a3, 0, 1, v15);
  }

  else
  {
    v17 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  v18 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  return sub_1A7CC9170(v9, a2);
}

uint64_t sub_1A7DF8864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  sub_1A7CD1F00(a1, v19 - v9, &unk_1EB2B61C0);
  v11 = sub_1A7E226D0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A7CC9970(v10, &unk_1EB2B61C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1A7E225F0();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A7E226C0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1A7DF8A54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
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

  v11 = sub_1A7DFD31C(v10, v9, a2, a3);
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

  v12 = sub_1A7DFD2B8(v10, v6, a2, a3);
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
    v13 = sub_1A7E219D0();
    v15 = v14;
    result = sub_1A7CC7E50(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t LinkEngine.burstsQualityMeasurementTask.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC9630((v0 + 208), &v2);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t IDSLinksQualityBurstsOngoingTask.didReceiveStatsTestPacket(withPayload:link:testableLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A7CD22FC;

  return sub_1A7DFDEDC(a1, a2, a4, a5);
}

uint64_t sub_1A7DF8D20()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2CA0);
  sub_1A7B0CB00(v0, qword_1EB2B2CA0);
  return sub_1A7E22050();
}

uint64_t sub_1A7DF8DAC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2998);
  sub_1A7B0CB00(v0, qword_1EB2B2998);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualityBurstsOngoingTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7DF8E64(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF8E84, 0, 0);
}

uint64_t sub_1A7DF8E84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return sub_1A7DF8F7C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7DF8F7C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF8F9C, 0, 0);
}

uint64_t sub_1A7DF8F9C()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &qword_1EB2B66D0;
  v40 = v2;
LABEL_4:
  *(v0 + 80) = v10;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v13 = *(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

      os_unfair_lock_lock((v13 + 40));
      v14 = *(v13 + 48);
      if (*(v14 + 16) && (v15 = sub_1A7CD0DFC(&type metadata for LinkEngineLinkIDSTestableLinkComponent), (v16 & 1) != 0))
      {
        sub_1A7B0CD10(*(v14 + 56) + 32 * v15, v0 + 16);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      v6 &= v6 - 1;
      os_unfair_lock_unlock((v13 + 40));
      sub_1A7CC7FFC(v11);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v0 + 48) = xmmword_1A7E43F70;
LABEL_7:
      sub_1A7CEB438(1);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v17 = v11;
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    if (v19 == 1)
    {
      v11 = v17;
      v2 = v40;
      goto LABEL_7;
    }

    v20 = swift_unknownObjectRetain();
    sub_1A7CEB438(v20);
    if (v19)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A7CCCE58(0, v10[2] + 1, 1, v10);
        v10 = result;
      }

      v22 = v10[2];
      v21 = v10[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v39 = v22 + 1;
        v25 = v10;
        v26 = v10[2];
        result = sub_1A7CCCE58((v21 > 1), v22 + 1, 1, v25);
        v22 = v26;
        v23 = v39;
        v10 = result;
      }

      v10[2] = v23;
      v24 = &v10[3 * v22];
      v24[4] = v13;
      v24[5] = v19;
      v24[6] = v18;
      v11 = v17;
      v2 = v40;
      goto LABEL_4;
    }

    v11 = v17;
    v2 = v40;
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_12;
    }
  }

  v27 = v10[2];
  *(v0 + 88) = v27;
  if (v27)
  {
    *(v0 + 96) = 0;
    v28 = *(v0 + 80);
    if (v28[2])
    {
      v29 = *(v0 + 72);
      v30 = v28[4];
      *(v0 + 104) = v30;
      v31 = v28[5];
      *(v0 + 112) = v31;
      v32 = v28[6];
      v33 = *(v29 + 88);

      swift_unknownObjectRetain();
      v34 = swift_task_alloc();
      *(v0 + 120) = v34;
      *v34 = v0;
      v34[1] = sub_1A7DF9374;

      return sub_1A7DF96C4(v30, v31, v32, v33, 1000000000000000000, 0, 5000000000000000000, 0);
    }

LABEL_36:
    __break(1u);
    return result;
  }

  v35 = *(v0 + 72);

  v36 = *(v35 + 72);
  v37 = *(v35 + 80);
  v38 = *(v0 + 8);

  return v38(v36, v37);
}

uint64_t sub_1A7DF9374()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1A7DF9620;
  }

  else
  {
    v2 = sub_1A7DF9490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DF9490()
{
  v2 = v0[11];
  v1 = v0[12];
  swift_unknownObjectRelease();

  if (v1 + 1 == v2)
  {
    v4 = v0[9];

    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = v0[1];

    return v7(v5, v6);
  }

  else
  {
    v8 = v0[12] + 1;
    v0[12] = v8;
    v9 = v0[10];
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = v0[9];
      v11 = (v9 + 24 * v8);
      v12 = v11[4];
      v0[13] = v12;
      v13 = v11[5];
      v0[14] = v13;
      v14 = v11[6];
      v15 = *(v10 + 88);

      swift_unknownObjectRetain();
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_1A7DF9374;

      return sub_1A7DF96C4(v12, v13, v14, v15, 1000000000000000000, 0, 5000000000000000000, 0);
    }
  }

  return result;
}

uint64_t sub_1A7DF9620()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LinkEngine.burstsQualityMeasurementTask.setter(uint64_t a1)
{
  sub_1A7DFEDD8(a1);
}

uint64_t sub_1A7DF96C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[68] = v8;
  v9[67] = a8;
  v9[66] = a7;
  v9[65] = a6;
  v9[63] = a4;
  v9[64] = a5;
  v9[61] = a2;
  v9[62] = a3;
  v9[60] = a1;
  sub_1A7CC7FFC(&unk_1EB2B7BF0);
  v9[69] = swift_task_alloc();
  v10 = type metadata accessor for IDSLinksQualityReportBuilder();
  v9[70] = v10;
  v9[71] = *(v10 - 8);
  v9[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DF97D4, 0, 0);
}

uint64_t sub_1A7DF97D4()
{
  v23 = v0;
  if (qword_1EB2B2990 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  *(v0 + 584) = sub_1A7B0CB00(v1, qword_1EB2B2998);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 480);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A7B0CB38(*(v4 + 16), *(v4 + 24), &v22);
    _os_log_impl(&dword_1A7AD9000, v2, v3, "  sending burst for %s...", v5, 0xCu);
    sub_1A7B0CD6C(v6);
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v12 = *(v0 + 504);
  v11 = *(v0 + 512);
  v13 = *(v0 + 496);
  v14 = *(v7 + 56);
  *(v0 + 592) = v14;
  *(v0 + 600) = *(v7 + 64);
  v21 = *(v0 + 480);
  *(v0 + 608) = v14();
  type metadata accessor for IDSLinksQualityBurstsOngoingTask.PendingBurst();
  v15 = swift_allocObject();
  *(v0 + 616) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = MEMORY[0x1E69E7CC0];
  v16 = swift_task_alloc();
  *(v0 + 624) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v7;
  *(v16 + 32) = v21;
  *(v16 + 48) = v13;
  *(v16 + 56) = v9;
  *(v16 + 64) = v8;
  *(v16 + 72) = v15;
  *(v16 + 80) = v11;
  *(v16 + 88) = v10;
  v17 = swift_task_alloc();
  *(v0 + 632) = v17;
  *v17 = v0;
  v17[1] = sub_1A7DF9A5C;
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v19 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE40](v17, v18, 0, 0, &unk_1A7E55AE0, v16, v19);
}

uint64_t sub_1A7DF9A5C()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_1A7DFA39C;
  }

  else
  {

    v2 = sub_1A7DF9B78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A7DF9B78()
{
  v81 = v0;
  v2 = (*(v0 + 592))();

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 480);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A7B0CB38(*(v5 + 16), *(v5 + 24), v80);
    _os_log_impl(&dword_1A7AD9000, v3, v4, "  sent burst for %s", v6, 0xCu);
    sub_1A7B0CD6C(v7);
    MEMORY[0x1AC5654B0](v7, -1, -1);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  v8 = *(v0 + 544);
  os_unfair_lock_lock((v8 + 32));
  v9 = *(v8 + 40);

  os_unfair_lock_unlock((v8 + 32));
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = (v9 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
  os_unfair_lock_lock((v9 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v10);

  if (!Strong)
  {
    goto LABEL_9;
  }

  v12 = *(v0 + 480);
  sub_1A7CE8644(v80);
  v13 = v80[0];
  if (!*(v80[0] + 16) || (v15 = *(v12 + 16), v14 = *(v12 + 24), v16 = sub_1A7CD1248(v15, v14), (v17 & 1) == 0))
  {

    goto LABEL_11;
  }

  v18 = *(v0 + 640);
  v19 = *(*(v13 + 56) + 8 * v16);

  os_unfair_lock_lock((Strong + 200));
  sub_1A7CC9600((Strong + 208), (v0 + 432));
  os_unfair_lock_unlock((Strong + 200));
  if (v18)
  {
    return;
  }

  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityReportBuilderComponent();
  if ((swift_dynamicCast() & 1) != 0 && (v21 = *(v0 + 464)) != 0)
  {
    v78 = *(v0 + 576);
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v25 = (v21 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
    os_unfair_lock_lock((v21 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
    v26 = sub_1A7CC7FFC(&qword_1EB2B53D8);
    sub_1A7CEB564(v25 + *(v26 + 28), v24);
    os_unfair_lock_unlock(v25);

    v28 = *(v22 + 56);
    v27 = (v22 + 56);
    v28(v24, 0, 1, v23);
    sub_1A7CEB4A4(v24, v78);
  }

  else
  {
    v29 = *(v0 + 576);
    v30 = *(v0 + 568);
    v27 = *(v0 + 560);
    v31 = *(v0 + 552);
    (*(v30 + 56))(v31, 1, 1, v27);
    sub_1A7E22050();
    v32 = *(v27 + 5);
    *(v29 + v32) = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v30 + 48))(v31, 1, v27) != 1)
    {
      sub_1A7CC9970(*(v0 + 552), &unk_1EB2B7BF0);
    }
  }

  v33 = *(v0 + 576);
  v34 = *(*(v0 + 560) + 20);
  if (!*(*(v33 + v34) + 16) || (sub_1A7CD12D4(v15, v14, v19), (v35 & 1) == 0))
  {
    *(v0 + 16) = v15;
    *(v0 + 24) = v14;
    *(v0 + 32) = v19;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    *(v0 + 72) = 4;
    *(v0 + 80) = 0xA0000000ALL;
    *(v0 + 88) = 0;
    *(v0 + 90) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 112) = MEMORY[0x1E69E7CC0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = *(v33 + v34);
    sub_1A7DC4018(v0 + 16, v15, v14, v19, isUniquelyReferenced_nonNull_native);
    *(v33 + v34) = v80[0];
  }

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = *(v33 + v34);
  v38 = v80[0];
  v79 = sub_1A7CD12D4(v15, v14, v19);
  v40 = *(v38 + 16);
  v41 = (v39 & 1) == 0;
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
    __break(1u);
    goto LABEL_46;
  }

  v43 = v39;
  if (*(v38 + 24) >= v42)
  {
    if ((v37 & 1) == 0)
    {
      sub_1A7DC6F18();
      if ((v43 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_1A7DBFAA0(v42, v37);
    v79 = sub_1A7CD12D4(v15, v14, v19);
    if ((v43 & 1) != (v44 & 1))
    {

      sub_1A7E23140();
      return;
    }
  }

  if ((v43 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

LABEL_30:
  v45 = (*(v80[0] + 56) + 104 * v79);
  v38 = v45[1];
  if (!v38)
  {
    goto LABEL_48;
  }

  v74 = *v45;
  v70 = v45[3];
  v71 = v45[2];
  v68 = v45[5];
  v69 = v45[4];
  v66 = v45[7];
  v67 = v45[6];
  v64 = v45[8];
  v77 = v45[9];
  v75 = v45[11];
  v76 = v45[10];
  v27 = v45[12];
  v46 = *(v0 + 616);
  os_unfair_lock_lock((v46 + 16));
  v47 = *(v46 + 40);
  v48 = *(v47 + 16);
  v72 = v34;
  v73 = v33;
  if (!v48)
  {
    v1 = 0.0;
    goto LABEL_41;
  }

  if (v48 >= 4)
  {
    v49 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    v51 = (v47 + 48);
    v50 = 0.0;
    v52 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v50 = v50 + *(v51 - 2) + *(v51 - 1) + *v51 + v51[1];
      v51 += 4;
      v52 -= 4;
    }

    while (v52);
    if (v48 == v49)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0.0;
  }

  v53 = v48 - v49;
  v54 = (v47 + 8 * v49 + 32);
  do
  {
    v55 = *v54++;
    v50 = v50 + v55;
    --v53;
  }

  while (v53);
LABEL_40:
  v1 = v50 / v48;
LABEL_41:
  v56 = *(v0 + 616);
  v34 = *(v56 + 24);
  v33 = *(v56 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    v27 = sub_1A7CCCFA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v58 = *(v27 + 2);
  v57 = *(v27 + 3);
  if (v58 >= v57 >> 1)
  {
    v27 = sub_1A7CCCFA0((v57 > 1), v58 + 1, 1, v27);
  }

  v60 = *(v0 + 608);
  v59 = *(v0 + 616);
  v63 = *(v0 + 576);
  *(v27 + 2) = v58 + 1;
  v61 = &v27[64 * v58];
  *(v61 + 4) = 0;
  *(v61 + 5) = 0;
  *(v61 + 6) = v60;
  *(v61 + 7) = v2;
  *(v61 + 8) = v1;
  *(v61 + 9) = v34;
  *(v61 + 10) = v33;
  *(v61 + 44) = 0x8000;
  os_unfair_lock_unlock(v59 + 4);
  *(v0 + 224) = v74;
  *(v0 + 232) = v38;
  *(v0 + 240) = v71;
  *(v0 + 248) = v70;
  *(v0 + 256) = v69;
  *(v0 + 264) = v68;
  *(v0 + 272) = v67;
  *(v0 + 280) = v66;
  *(v0 + 288) = v64;
  *(v0 + 296) = v77;
  *(v0 + 304) = v76;
  *(v0 + 312) = v75;
  *(v0 + 320) = v27;
  sub_1A7DC980C(v0 + 224, v0 + 328);

  v65 = v80[0];
  v62 = (*(v80[0] + 56) + 104 * v79);
  *v62 = v74;
  v62[1] = v38;
  v62[2] = v71;
  v62[3] = v70;
  v62[4] = v69;
  v62[5] = v68;
  v62[6] = v67;
  v62[7] = v66;
  v62[8] = v64;
  v62[9] = v77;
  v62[10] = v76;
  v62[11] = v75;
  v62[12] = v27;
  *(v0 + 120) = v74;
  *(v0 + 128) = v38;
  *(v0 + 136) = v71;
  *(v0 + 144) = v70;
  *(v0 + 152) = v69;
  *(v0 + 160) = v68;
  *(v0 + 168) = v67;
  *(v0 + 176) = v66;
  *(v0 + 184) = v64;
  *(v0 + 192) = v77;
  *(v0 + 200) = v76;
  *(v0 + 208) = v75;
  *(v0 + 216) = v27;
  sub_1A7CC9970(v0 + 120, &qword_1EB2B8000);
  *(v73 + v72) = v65;
  sub_1A7DA1520(v63);

LABEL_9:

LABEL_11:

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_1A7DFA39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFA42C()
{
  sub_1A7DFF6D0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DFA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = v14;
  *(v8 + 224) = v15;
  *(v8 + 200) = v13;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a3;
  *(v8 + 160) = a4;
  *(v8 + 144) = a2;
  v9 = sub_1A7E22CF0();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v10 = sub_1A7E22D10();
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 - 8);
  *(v8 + 280) = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B61C0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DFA5F0, 0, 0);
}

uint64_t sub_1A7DFA5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 152);
  if (v5 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE58](a1, a2, a3, a4);
  }

  if (v5)
  {
    *(v4 + 304) = **(v4 + 144);
    *(v4 + 312) = 0;
    v6 = *(v4 + 288);
    v7 = *(v4 + 296);
    v8 = *(v4 + 208);
    v32 = *(v4 + 192);
    v33 = *(v4 + 200);
    v10 = *(v4 + 160);
    v9 = *(v4 + 168);
    v11 = sub_1A7E226D0();
    v12 = *(v11 - 8);
    v35 = *(v4 + 176);
    (*(v12 + 56))(v7, 1, 1, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = 0u;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    *(v13 + 48) = v35;
    *(v13 + 64) = v32;
    *(v13 + 72) = v33;
    *(v13 + 80) = v8;
    sub_1A7CD1F00(v7, v6, &unk_1EB2B61C0);
    LODWORD(v6) = (*(v12 + 48))(v6, 1, v11);

    swift_unknownObjectRetain();

    v14 = *(v4 + 288);
    if (v6 == 1)
    {
      sub_1A7CC9970(*(v4 + 288), &unk_1EB2B61C0);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v12 + 8))(v14, v11);
      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1A7E225F0();
        v16 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }

    if (v16 | v15)
    {
      v20 = v4 + 16;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v15;
      *(v4 + 40) = v16;
    }

    else
    {
      v20 = 0;
    }

    v22 = *(v4 + 296);
    v21 = *(v4 + 304);
    v24 = *(v4 + 240);
    v23 = *(v4 + 248);
    v25 = *(v4 + 224);
    v34 = *(v4 + 232);
    v26 = *(v4 + 216);
    *(v4 + 48) = 1;
    *(v4 + 56) = v20;
    *(v4 + 64) = v21;
    swift_task_create();

    sub_1A7CC9970(v22, &unk_1EB2B61C0);
    *(v4 + 112) = v26;
    *(v4 + 120) = v25;
    sub_1A7E22D40();
    v28 = *(v4 + 96);
    v27 = *(v4 + 104);
    sub_1A7E23170();
    *(v4 + 128) = v28;
    *(v4 + 136) = v27;
    *(v4 + 80) = 0;
    *(v4 + 72) = 0;
    *(v4 + 88) = 1;
    v29 = sub_1A7B05A00(&qword_1EB2B2880, MEMORY[0x1E69E8820]);
    sub_1A7E23150();
    sub_1A7B05A00(&qword_1EB2B2888, MEMORY[0x1E69E87E8]);
    sub_1A7E22D20();
    v30 = *(v24 + 8);
    *(v4 + 320) = v30;
    *(v4 + 328) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v23, v34);
    v31 = swift_task_alloc();
    *(v4 + 336) = v31;
    *v31 = v4;
    v31[1] = sub_1A7DFAAC4;
    a3 = *(v4 + 264);
    a1 = *(v4 + 256);
    a2 = v4 + 72;
    a4 = v29;

    return MEMORY[0x1EEE6DE58](a1, a2, a3, a4);
  }

  v17 = *(v4 + 8);

  return v17();
}

uint64_t sub_1A7DFAAC4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    (*(v2 + 320))(*(v2 + 256), *(v2 + 232));
    v3 = sub_1A7DFB0EC;
  }

  else
  {
    v5 = *(v2 + 272);
    v4 = *(v2 + 280);
    v6 = *(v2 + 264);
    (*(v2 + 320))(*(v2 + 256), *(v2 + 232));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A7DFAC1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DFAC1C()
{
  v1 = *(v0 + 312) + 1;
  if (v1 == *(v0 + 152))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 312) = v1;
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);
    v6 = *(v0 + 208);
    v30 = *(v0 + 192);
    v31 = *(v0 + 200);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = sub_1A7E226D0();
    v10 = *(v9 - 8);
    v33 = *(v0 + 176);
    (*(v10 + 56))(v5, 1, 1, v9);
    v11 = swift_allocObject();
    *(v11 + 16) = 0u;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
    *(v11 + 48) = v33;
    *(v11 + 64) = v30;
    *(v11 + 72) = v31;
    *(v11 + 80) = v6;
    sub_1A7CD1F00(v5, v4, &unk_1EB2B61C0);
    LODWORD(v4) = (*(v10 + 48))(v4, 1, v9);

    swift_unknownObjectRetain();

    v12 = *(v0 + 288);
    if (v4 == 1)
    {
      sub_1A7CC9970(*(v0 + 288), &unk_1EB2B61C0);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v10 + 8))(v12, v9);
      if (*(v11 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1A7E225F0();
        v14 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    if (v14 | v13)
    {
      v16 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v13;
      *(v0 + 40) = v14;
    }

    else
    {
      v16 = 0;
    }

    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 224);
    v32 = *(v0 + 232);
    v22 = *(v0 + 216);
    *(v0 + 48) = 1;
    *(v0 + 56) = v16;
    *(v0 + 64) = v17;
    swift_task_create();

    sub_1A7CC9970(v18, &unk_1EB2B61C0);
    *(v0 + 112) = v22;
    *(v0 + 120) = v21;
    sub_1A7E22D40();
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    sub_1A7E23170();
    *(v0 + 128) = v24;
    *(v0 + 136) = v23;
    *(v0 + 80) = 0;
    *(v0 + 72) = 0;
    *(v0 + 88) = 1;
    v25 = sub_1A7B05A00(&qword_1EB2B2880, MEMORY[0x1E69E8820]);
    sub_1A7E23150();
    sub_1A7B05A00(&qword_1EB2B2888, MEMORY[0x1E69E87E8]);
    sub_1A7E22D20();
    v26 = *(v20 + 8);
    *(v0 + 320) = v26;
    *(v0 + 328) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v19, v32);
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    v27[1] = sub_1A7DFAAC4;
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);

    return MEMORY[0x1EEE6DE58](v29, v0 + 72, v28, v25);
  }
}

uint64_t sub_1A7DFB0EC()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DFB1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1A7CD2A2C;

  return sub_1A7DFB284(a4, a5, a6, a7, a8, v17);
}

uint64_t sub_1A7DFB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = sub_1A7E22D10();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DFB37C, 0, 0);
}

uint64_t sub_1A7DFB37C()
{
  v32 = v1;
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 112);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 48);
  v5 = v4 + 1;
  *(v1 + 144) = v4 + 1;
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 112);
    *(v3 + 48) = v5;
    os_unfair_lock_unlock((v3 + 32));
    *(v1 + 232) = 1;
    *(v1 + 16) = sub_1A7DF6EAC((v1 + 232), (v1 + 233));
    *(v1 + 24) = v7 & 0xFFFFFFFFFFFFFFLL;
    *(v1 + 48) = bswap64(v5);
    v0 = v1 + 56;
    sub_1A7DF6EAC((v1 + 48), (v1 + 56));
    v8 = sub_1A7E21A30();
    v2 = *(v1 + 24);
    v30 = *(v1 + 16);
    v9 = *(v6 + 56);
    *(v1 + 152) = v9;
    *(v1 + 160) = *(v6 + 64);
    *(v1 + 168) = v9(v8);
    if (qword_1EB2B2990 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = sub_1A7E22060();
  *(v1 + 176) = sub_1A7B0CB00(v10, qword_1EB2B2998);

  v11 = sub_1A7E22040();
  v12 = sub_1A7E228F0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v1 + 64);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = v5;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A7B0CB38(*(v13 + 16), *(v13 + 24), v31);
    _os_log_impl(&dword_1A7AD9000, v11, v12, "    send burst packet %llu on link %s", v14, 0x16u);
    sub_1A7B0CD6C(v15);
    MEMORY[0x1AC5654B0](v15, -1, -1);
    MEMORY[0x1AC5654B0](v14, -1, -1);
  }

  v16 = *(v1 + 136);
  v17 = *(v1 + 104);
  v19 = *(v1 + 88);
  v18 = *(v1 + 96);
  v20 = *(*(v1 + 112) + 96);
  v21 = swift_task_alloc();
  *(v1 + 184) = v21;
  *(v21 + 16) = *(v1 + 72);
  *(v21 + 32) = v30;
  *(v21 + 40) = v2;
  *(v21 + 48) = v17;
  *(v1 + 56) = v5;
  v22 = swift_task_alloc();
  *(v1 + 192) = v22;
  v22[2] = v20;
  v22[3] = v0;
  v22[4] = sub_1A7DFF1D0;
  v22[5] = v21;
  sub_1A7E22D00();
  v23 = swift_allocObject();
  *(v1 + 200) = v23;
  *(v23 + 16) = &unk_1A7E55B18;
  *(v23 + 24) = v22;
  v24 = swift_task_alloc();
  *(v1 + 208) = v24;
  v24[2] = &unk_1A7E49C88;
  v24[3] = v23;
  v24[4] = v16;
  v24[5] = v19;
  v24[6] = v18;
  v25 = swift_task_alloc();
  *(v1 + 216) = v25;
  *v25 = v1;
  v25[1] = sub_1A7DFB714;
  v26 = MEMORY[0x1E6969080];
  v34 = MEMORY[0x1E6969080];
  v27 = MEMORY[0x1E6969080];
  v28 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DD58](v1 + 32, v26, v27, 0, 0, &unk_1A7E49C90, v24, v28);
}

uint64_t sub_1A7DFB714()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1A7DFBB28;
  }

  else
  {
    sub_1A7CC7E50(*(v2 + 32), *(v2 + 40));

    v3 = sub_1A7DFB870;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DFB870()
{
  v25 = v1;
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 200);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v1 + 192);
    v4 = *(v1 + 168);
    v7 = *(v1 + 152);
    v5 = *(v1 + 160);
    v2 = *(v1 + 104);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    v3 = v7(v8);
    os_unfair_lock_lock((v2 + 16));
    v9 = *(v2 + 32);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v5 = *(v1 + 104);
      *(v2 + 32) = v11;
      v0 = *(v5 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 40) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  v0 = sub_1A7CCD7F8(0, *(v0 + 2) + 1, 1, v0);
  *(v5 + 40) = v0;
LABEL_4:
  v13 = v3 - v4;
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_1A7CCD7F8((v14 > 1), v15 + 1, 1, v0);
    *(v5 + 40) = v0;
  }

  *(v0 + 2) = v15 + 1;
  *&v0[8 * v15 + 32] = v13;
  os_unfair_lock_unlock((v2 + 16));

  v16 = sub_1A7E22040();
  v17 = sub_1A7E228F0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v1 + 144);
    v19 = *(v1 + 64);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 134218242;
    *(v20 + 4) = v18;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1A7B0CB38(*(v19 + 16), *(v19 + 24), v24);
    _os_log_impl(&dword_1A7AD9000, v16, v17, "    received ack for packet %llu on link %s", v20, 0x16u);
    sub_1A7B0CD6C(v21);
    MEMORY[0x1AC5654B0](v21, -1, -1);
    MEMORY[0x1AC5654B0](v20, -1, -1);
  }

  sub_1A7CC7E50(*(v1 + 16), *(v1 + 24));

  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_1A7DFBB28()
{
  v13 = v0;
  v12[1] = *MEMORY[0x1E69E9840];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = v0[18];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 134218242;
    *(v8 + 4) = v6;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1A7B0CB38(*(v7 + 16), *(v7 + 24), v12);
    _os_log_impl(&dword_1A7AD9000, v2, v3, "    never received burst packet ack for %llu on link %s", v8, 0x16u);
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  sub_1A7CC7E50(v0[2], v0[3]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A7DFBD2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  swift_unknownObjectRetain();
  sub_1A7D5164C(a3, a4);

  sub_1A7D94654(0, 0, v13, &unk_1A7E55B98, v15);
}

uint64_t sub_1A7DFBE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  ObjectType = swift_getObjectType();
  v15 = (*(a5 + 32) + **(a5 + 32));
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1A7DFBFB8;

  return v15(a6, a7, ObjectType, a5);
}

uint64_t sub_1A7DFBFB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFC0B4, 0, 0);
}

void sub_1A7DFC0B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    os_unfair_lock_unlock((v1 + 16));
    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t IDSLinksQualityBurstsOngoingTask.stop()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1A7CEA284, 0, 0);
}

uint64_t IDSLinksQualityBurstsOngoingTask.deinit()
{

  sub_1A7DFEE70(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualityBurstsOngoingTask.__deallocating_deinit()
{

  sub_1A7DFEE70(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DFC204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return IDSLinksQualityBurstsOngoingTask.stop()();
}

void (*LinkEngine.burstsQualityMeasurementTask.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC9630((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  *(v4 + 64) = type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v5 = swift_dynamicCast();
  v6 = *(v4 + 40);
  if (!v5)
  {
    v6 = 0;
  }

  *(v4 + 32) = v6;
  return sub_1A7CEA880;
}

uint64_t sub_1A7DFC374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v10);
      result = sub_1A7E23240();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A7DFC508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      sub_1A7E23200();

      sub_1A7E22350();
      v9 = sub_1A7E23240();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1A7DFC6B8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6 + 16);
      sub_1A7E23200();

      sub_1A7E22350();
      MEMORY[0x1AC562AF0](v9);
      v10 = sub_1A7E23240();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        result = (v16 + 104 * v3);
        v17 = (v16 + 104 * v6);
        if (v3 != v6 || result >= v17 + 104)
        {
          result = memmove(result, v17, 0x68uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A7DFC88C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + v6);
      result = MEMORY[0x1AC562AC0](*(a2 + 40), *(v9 + v6), 1);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A7DFCA00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1A7E231F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1A7CC7FFC(&qword_1EB2B61D0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A7DFCBC4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1A7E23200();
      MEMORY[0x1AC562B10](v9);
      result = sub_1A7E23240();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1A7CC7FFC(&qword_1EB2B61D0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A7DFCDAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A7E22AE0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1A7E22960();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void (*sub_1A7DFCF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1, char a2)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x2A0uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[81] = v5;
  v12[80] = a4;
  v12[79] = a3;
  v12[78] = a2;
  v14 = *v5;
  v15 = sub_1A7CD12D4(a2, a3, a4);
  *(v13 + 664) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_1A7DC6F18();
      v15 = v23;
      goto LABEL_11;
    }

    sub_1A7DBFAA0(v20, a5 & 1);
    v15 = sub_1A7CD12D4(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[82] = v15;
  if (v21)
  {
    memmove(v13 + 26, (*(*v6 + 56) + 104 * v15), 0x68uLL);
  }

  else
  {
    v13[38] = 0;
    *(v13 + 17) = 0u;
    *(v13 + 18) = 0u;
    *(v13 + 15) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 13) = 0u;
    *(v13 + 14) = 0u;
  }

  return sub_1A7DFD0C8;
}

void sub_1A7DFD0C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 312);
  v4 = *(*a1 + 288);
  v3[4] = *(*a1 + 272);
  v3[5] = v4;
  *(v2 + 408) = *(v2 + 304);
  v5 = *(v2 + 224);
  *v3 = *(v2 + 208);
  v3[1] = v5;
  v6 = *(v2 + 256);
  v3[2] = *(v2 + 240);
  v3[3] = v6;
  v7 = *(v2 + 320);
  if (a2)
  {
    if (v7)
    {
      v8 = *(v2 + 656);
      v9 = *(v2 + 648);
      if ((*(v2 + 664) & 1) == 0)
      {
        v10 = *(v2 + 640);
        v11 = *(v2 + 632);
        v12 = *(v2 + 624);
        v13 = *v9;
        v14 = *(v2 + 288);
        *(v2 + 64) = *(v2 + 272);
        *(v2 + 80) = v14;
        *(v2 + 96) = *(v2 + 304);
        v15 = *(v2 + 224);
        *v2 = *(v2 + 208);
        *(v2 + 16) = v15;
        v16 = *(v2 + 256);
        *(v2 + 32) = *(v2 + 240);
        *(v2 + 48) = v16;
        v17 = v11;
        v18 = v2;
LABEL_11:
        sub_1A7DC62B0(v8, v12, v17, v10, v18, v13);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = *(v2 + 656);
    v9 = *(v2 + 648);
    if ((*(v2 + 664) & 1) == 0)
    {
      v13 = *v9;
      v21 = *(v2 + 240);
      *(v2 + 152) = *(v2 + 256);
      v22 = *(v2 + 288);
      *(v2 + 168) = *(v2 + 272);
      *(v2 + 184) = v22;
      v23 = *(v2 + 224);
      *(v2 + 104) = *(v2 + 208);
      *(v2 + 120) = v23;
      v10 = *(v2 + 640);
      v24 = *(v2 + 632);
      v12 = *(v2 + 624);
      *(v2 + 200) = *(v2 + 304);
      *(v2 + 136) = v21;
      v18 = v2 + 104;
      v17 = v24;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v9 + 56) + 104 * v8), (v2 + 208), 0x68uLL);
    goto LABEL_12;
  }

  if (*(v2 + 664))
  {
    v19 = *(v2 + 656);
    v20 = **(v2 + 648);
    sub_1A7DFF094(*(v20 + 48) + 24 * v19);
    sub_1A7DFC6B8(v19, v20);
  }

LABEL_12:
  v25 = *(v2 + 288);
  *(v2 + 480) = *(v2 + 272);
  *(v2 + 496) = v25;
  *(v2 + 512) = *(v2 + 304);
  v26 = *(v2 + 224);
  *(v2 + 416) = *(v2 + 208);
  *(v2 + 432) = v26;
  v27 = *(v2 + 256);
  *(v2 + 448) = *(v2 + 240);
  *(v2 + 464) = v27;
  sub_1A7CD1F00(v3, v2 + 520, &qword_1EB2B8000);
  sub_1A7CC9970(v2 + 416, &qword_1EB2B8000);

  free(v2);
}

uint64_t (*sub_1A7DFD284(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A7DFD2AC;
}

uint64_t sub_1A7DFD2B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

uint64_t sub_1A7DFD31C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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

uint64_t sub_1A7DFD3D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFD3FC, 0, 0);
}

uint64_t sub_1A7DFD3FC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1A7DFD514;
  v6 = *(v0 + 24);
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE18](v6, &unk_1A7E55B78, v2, sub_1A7DFF5BC, v4, 0, 0, v7);
}

uint64_t sub_1A7DFD514()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7DFD65C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7DFD65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFD6C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFD6F4, 0, 0);
}

uint64_t sub_1A7DFD6F4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1A7DFD7F8;
  v5 = *(v0 + 24);
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000022, 0x80000001A7EB1F00, sub_1A7DFF5E8, v2, v6);
}

uint64_t sub_1A7DFD7F8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7DFD934, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7DFD934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DFD998(uint64_t a1, os_unfair_lock_s *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = *a3;
  os_unfair_lock_lock(a2 + 4);
  v13 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_1A7CC9170(v11, v12);
  os_unfair_lock_unlock(a2 + 4);
  return a4();
}

uint64_t sub_1A7DFDAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A7DFDB74, 0, 0);
}

uint64_t sub_1A7DFDB74()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 48);
  *(v0 + 88) = 2;
  *(v0 + 16) = sub_1A7DF6EAC((v0 + 88), (v0 + 89));
  *(v0 + 24) = v2 & 0xFFFFFFFFFFFFFFLL;
  *(v0 + 32) = bswap64(v1);
  sub_1A7DF6EAC((v0 + 32), (v0 + 40));
  sub_1A7E21A30();
  ObjectType = swift_getObjectType();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v9 = (*(v10 + 32) + **(v10 + 32));
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1A7DFDD28;
  v7 = *(v0 + 48);

  return v9(v4, v5, ObjectType, v7);
}

uint64_t sub_1A7DFDD28()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFDE50, 0, 0);
}

uint64_t sub_1A7DFDE50()
{
  sub_1A7CC7E50(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DFDEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DFDF04, 0, 0);
}

uint64_t sub_1A7DFDF04()
{
  v1 = sub_1A7D5149C(*(v0 + 136), *(v0 + 144));
  *(v0 + 68) = v1;
  if ((v1 & 0x100) != 0)
  {
    if (qword_1EB2B2990 != -1)
    {
      swift_once();
    }

    v6 = sub_1A7E22060();
    sub_1A7B0CB00(v6, qword_1EB2B2998);
    v7 = sub_1A7E22040();
    v8 = sub_1A7E228F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v7, v8, "no type", v9, 2u);
      MEMORY[0x1AC5654B0](v9, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    v11 = (*(v12 + 40) + **(v12 + 40));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1A7DFE128;
    v4 = *(v0 + 160);

    return v11(v0 + 72, ObjectType, v4);
  }
}

uint64_t sub_1A7DFE128()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7DFE224, 0, 0);
}

uint64_t sub_1A7DFE224()
{
  v48 = v0;
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  sub_1A7CEB5C8(v0 + 16);
  v2 = *(v0 + 68);
  if (*(v0 + 24) == 1)
  {
    if ((v2 - 1) > 1)
    {
LABEL_20:
      if (qword_1EB2B2990 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 136);
      v25 = *(v0 + 144);
      v26 = sub_1A7E22060();
      sub_1A7B0CB00(v26, qword_1EB2B2998);
      sub_1A7D5164C(v24, v25);
      v27 = sub_1A7E22040();
      v28 = sub_1A7E228F0();
      if (!os_log_type_enabled(v27, v28))
      {
        sub_1A7CC7E50(*(v0 + 136), *(v0 + 144));
LABEL_35:

LABEL_36:
        v46 = *(v0 + 8);

        return v46();
      }

      v29 = *(v0 + 68);
      v30 = *(v0 + 144);
      v31 = swift_slowAlloc();
      result = swift_slowAlloc();
      v32 = result;
      v47 = result;
      *v31 = 16777986;
      *(v31 + 4) = v29;
      *(v31 + 5) = 2048;
      v33 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v33 != 2)
        {
          v34 = 0;
          goto LABEL_34;
        }

        v35 = *(*(v0 + 136) + 16);
        v36 = *(*(v0 + 136) + 24);
        v37 = __OFSUB__(v36, v35);
        v34 = v36 - v35;
        if (!v37)
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else if (!v33)
      {
        v34 = *(v0 + 150);
LABEL_34:
        v41 = *(v0 + 136);
        v40 = *(v0 + 144);
        *(v31 + 7) = v34;
        sub_1A7CC7E50(v41, v40);
        *(v31 + 15) = 2080;
        *(v0 + 128) = sub_1A7D0E3F8(v41, v40);
        sub_1A7CC7FFC(&qword_1EB2B4AA0);
        sub_1A7CD0F8C();
        v42 = sub_1A7E221F0();
        v44 = v43;

        v45 = sub_1A7B0CB38(v42, v44, &v47);

        *(v31 + 17) = v45;
        _os_log_impl(&dword_1A7AD9000, v27, v28, "unrecognized burst packet type: %hhu %ld %s", v31, 0x19u);
        sub_1A7B0CD6C(v32);
        MEMORY[0x1AC5654B0](v32, -1, -1);
        MEMORY[0x1AC5654B0](v31, -1, -1);
        goto LABEL_35;
      }

      v38 = *(v0 + 136);
      v39 = *(v0 + 140);
      v37 = __OFSUB__(v39, v38);
      LODWORD(v34) = v39 - v38;
      if (v37)
      {
        __break(1u);
        return result;
      }

      v34 = v34;
      goto LABEL_34;
    }

LABEL_14:
    if (qword_1EB2B2990 != -1)
    {
      swift_once();
    }

    v16 = sub_1A7E22060();
    sub_1A7B0CB00(v16, qword_1EB2B2998);
    v17 = sub_1A7E22040();
    v18 = sub_1A7E228F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v17, v18, "is burst ack packet", v19, 2u);
      MEMORY[0x1AC5654B0](v19, -1, -1);
    }

    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    v22 = sub_1A7D516A0(v21, v20);
    if ((v23 & 1) == 0)
    {
      sub_1A7DF8474(v22, *(v0 + 136), *(v0 + 144));
    }

    goto LABEL_36;
  }

  if (v2 == 2)
  {
    goto LABEL_14;
  }

  if (v2 != 1)
  {
    goto LABEL_20;
  }

  if (qword_1EB2B2990 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E22060();
  sub_1A7B0CB00(v3, qword_1EB2B2998);
  v4 = sub_1A7E22040();
  v5 = sub_1A7E228F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A7AD9000, v4, v5, "is burst packet", v6, 2u);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  v8 = *(v0 + 136);
  v7 = *(v0 + 144);

  v9 = sub_1A7D516A0(v8, v7);
  if (v10)
  {
    goto LABEL_36;
  }

  v11 = v9;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_1A7DFE718;
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);

  return sub_1A7DFDAE0(v14, v13, v11);
}

uint64_t sub_1A7DFE718()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7DFE80C(os_unfair_lock_s *a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v58 = a4;
  v59 = a5;
  v66 = a1;
  v10 = *v7;
  v62 = a3;
  v63 = v10;
  v11 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v64 = &v52 - v13;
  v65 = sub_1A7E226D0();
  v56 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A7E22060();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v60 = v20;
  v61 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v52 - v23;
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000001A7EB1ED0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  sub_1A7CC7FFC(&qword_1EB2B7FF8);
  v25 = swift_allocObject();
  v26 = sub_1A7CE48F4(MEMORY[0x1E69E7CC0]);
  *(v25 + 16) = 0;
  *(v25 + 24) = v26;
  v27 = v59;
  *(v7 + 88) = v58;
  *(v7 + 96) = v25;
  *(v7 + 56) = v27;
  *(v7 + 64) = a6;
  v28 = v62;
  *(v7 + 72) = a2;
  *(v7 + 80) = v28;

  v62 = (v7 + 32);
  os_unfair_lock_lock((v7 + 32));
  v29 = *(v7 + 24);
  v58 = *(v7 + 16);
  v30 = qword_1EB2B2C98;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1A7B0CB00(v17, qword_1EB2B2CA0);
  v57 = v18;
  v32 = *(v18 + 16);
  v32(v24, v31, v17);
  v53 = v32;
  v59 = swift_allocObject();
  swift_weakInit();

  sub_1A7E226B0();
  type metadata accessor for IDSLinksQualityRepeatingAsyncTask();
  v33 = swift_allocObject();
  v55 = v16;
  v34 = v17;
  v52 = v17;
  v35 = v33 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  v36 = swift_weakInit();
  v67[1] = 0;
  *v35 = 0;
  *(v35 + 16) = 0;
  *(v35 + 8) = 0;
  sub_1A7CEB2D0(v36, v35 + 8);
  v37 = v24;
  v54 = v24;
  v32((v33 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v24, v34);
  v38 = (v33 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
  *v38 = v58;
  v38[1] = v29;
  v39 = v33 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock((v33 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  swift_weakAssign();
  v40 = v56;
  v42 = v64;
  v41 = v65;
  (*(v56 + 16))(v64, v16, v65);
  (*(v40 + 56))(v42, 0, 1, v41);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v61;
  v45 = v52;
  v53(v61, v37, v52);
  v46 = v57;
  v47 = (*(v57 + 80) + 56) & ~*(v57 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 4) = v43;
  *(v48 + 5) = &unk_1A7E55AB0;
  *(v48 + 6) = v59;
  (*(v46 + 32))(&v48[v47], v44, v45);

  *(v39 + 16) = sub_1A7D3F5DC(0, 0, v64, &unk_1A7E44050, v48);

  os_unfair_lock_unlock(v39);

  (*(v40 + 8))(v55, v65);
  (*(v46 + 8))(v54, v45);

  *(v7 + 40) = v33;

  os_unfair_lock_unlock(v62);

  v49 = v66;
  os_unfair_lock_lock(v66 + 50);
  v50 = v63;
  v67[3] = v63;
  v67[0] = v7;

  sub_1A7CC8D74(v67, v50);
  os_unfair_lock_unlock(v49 + 50);

  return v7;
}

uint64_t sub_1A7DFEDD8(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 50);
  v3 = type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v4 = v3;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, v3);
  os_unfair_lock_unlock(v1 + 50);
}

uint64_t sub_1A7DFEEFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7DF8E64(a1, v1);
}

uint64_t sub_1A7DFEF94(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7DFA464(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A7DFF0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A7CD2A2C;

  return sub_1A7DFB1A4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1A7DFF1E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD2A2C;

  return sub_1A7DFD3D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7DFF2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7DF7CF8(a1, v4, v5, v6);
}

uint64_t sub_1A7DFF36C(uint64_t a1)
{
  v4 = *(sub_1A7E22D10() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7DF7FDC(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1A7DFF49C()
{
  result = qword_1EB2B29B0;
  if (!qword_1EB2B29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B29B0);
  }

  return result;
}

uint64_t sub_1A7DFF4F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD22FC;

  return sub_1A7DFD6C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7DFF5F4(uint64_t a1)
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
  v11[1] = sub_1A7CD22FC;

  return sub_1A7DFBE74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t LEToolLinkEndpoint.ip.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LEToolLinkEndpoint.ip.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t LEToolLinkEndpoint.port.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 26) = BYTE2(result) & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRAT.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRelayLinkID.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t LEToolLinkEndpoint.idsRelaySessionID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t LEToolLinkEndpoint.idsRelaySessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LEToolLinkEndpoint.interfaceAllowList.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t LEToolLinkEndpoint.nat64Prefix.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t LEToolLinkEndpoint.nat64Prefix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

unint64_t sub_1A7DFFA5C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x657250343674616ELL;
    v6 = 0x343654414E7369;
    if (a1 != 8)
    {
      v6 = 0x646563696C537369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x796C696D61467069;
    v2 = 1953656688;
    v3 = 0x544152736469;
    if (a1 != 3)
    {
      v3 = 0x79616C6552736469;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 28777;
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
}

uint64_t sub_1A7DFFB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7E02E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DFFBD0(uint64_t a1)
{
  v2 = sub_1A7E0001C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DFFC0C(uint64_t a1)
{
  v2 = sub_1A7E0001C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinkEndpoint.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = *v1;
  v7 = *(v1 + 1);
  v28 = *(v1 + 2);
  v29 = v7;
  v32 = *(v1 + 12);
  LODWORD(v7) = v1[26];
  v26 = *(v1 + 7);
  v27 = v7;
  LODWORD(v7) = v1[32];
  v8 = *(v1 + 5);
  v24 = v1[48];
  v25 = v7;
  v9 = *(v1 + 7);
  v22 = *(v1 + 8);
  v23 = v8;
  v10 = *(v1 + 10);
  v20 = *(v1 + 9);
  v21 = v9;
  v19[0] = v10;
  v19[1] = *(v1 + 11);
  v11 = v1[96];
  v12 = a1[3];
  v13 = a1;
  v15 = v19 - v14;
  sub_1A7CC9878(v13, v12);
  sub_1A7E0001C();
  sub_1A7E23260();
  LOBYTE(v31) = v6;
  v33 = 0;
  sub_1A7E00070();
  v16 = v30;
  sub_1A7E22FD0();
  if (!v16)
  {
    v17 = v26;
    LODWORD(v30) = v11;
    LOBYTE(v31) = 1;
    sub_1A7E22FA0();
    LOBYTE(v31) = 2;
    sub_1A7E22FE0();
    LODWORD(v31) = v17;
    BYTE4(v31) = v25;
    v33 = 3;
    type metadata accessor for IDSRadioAccessTechnology(0);
    sub_1A7E02660(&qword_1EB2B60C0, type metadata accessor for IDSRadioAccessTechnology);
    sub_1A7E22FD0();
    LOBYTE(v31) = 4;
    sub_1A7E22FC0();
    LOBYTE(v31) = 5;
    sub_1A7E22FA0();
    v31 = v20;
    v33 = 6;
    sub_1A7CC7FFC(&qword_1EB2B8028);
    sub_1A7E00AFC(&qword_1EB2B8030);
    sub_1A7E22FD0();
    LOBYTE(v31) = 7;
    sub_1A7E22FA0();
    LOBYTE(v31) = 8;
    sub_1A7E22FB0();
    LOBYTE(v31) = 9;
    sub_1A7E22FB0();
  }

  return (*(v4 + 8))(v15, v3);
}

unint64_t sub_1A7E0001C()
{
  result = qword_1EB2B8018;
  if (!qword_1EB2B8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8018);
  }

  return result;
}

unint64_t sub_1A7E00070()
{
  result = qword_1EB2B8020;
  if (!qword_1EB2B8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8020);
  }

  return result;
}

uint64_t LEToolLinkEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8038);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - v8;
  v76 = 1;
  v75 = 1;
  v73 = 1;
  v10 = a1[3];
  v46 = a1;
  sub_1A7CC9878(a1, v10);
  sub_1A7E0001C();
  sub_1A7E23250();
  if (v2)
  {
    v78 = v2;
    v45 = 0uLL;
    v44 = 0;
    sub_1A7B0CD6C(v46);
    LOBYTE(v55) = 3;
    *(&v55 + 1) = *v77;
    HIDWORD(v55) = *&v77[3];
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = v76;
    v60 = 0;
    v61 = v75;
    *v62 = *v74;
    *&v62[3] = *&v74[3];
    v63 = 0;
    v64 = v73;
    *v65 = *v72;
    *&v65[3] = *&v72[3];
    v66 = 0;
    v67 = 0;
    v68 = v44;
    v69 = v45;
    v70 = 2;
    v71 = 2;
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_1A7E00AA8();
    sub_1A7E22ED0();
    v43 = v55;
    LOBYTE(v55) = 1;
    v41 = sub_1A7E22EA0();
    v42 = v12;
    LOBYTE(v55) = 2;
    v40 = sub_1A7E22EE0();
    v76 = BYTE2(v40) & 1;
    type metadata accessor for IDSRadioAccessTechnology(0);
    LOBYTE(v47) = 3;
    sub_1A7E02660(&unk_1EB2B60E0, type metadata accessor for IDSRadioAccessTechnology);
    sub_1A7E22ED0();
    v13 = v55;
    v75 = BYTE4(v55);
    LOBYTE(v55) = 4;
    v39 = sub_1A7E22EC0();
    v73 = v14 & 1;
    LOBYTE(v55) = 5;
    v37 = sub_1A7E22EA0();
    v38 = v15;
    sub_1A7CC7FFC(&qword_1EB2B8028);
    LOBYTE(v47) = 6;
    sub_1A7E00AFC(&qword_1EB2B8048);
    sub_1A7E22ED0();
    v16 = v55;
    LOBYTE(v55) = 7;
    v17 = sub_1A7E22EA0();
    v44 = v16;
    *&v45 = v17;
    *(&v45 + 1) = v18;
    LOBYTE(v55) = 8;
    v19 = sub_1A7E22EB0();
    v78 = 0;
    v20 = v19;
    v54 = 9;
    v21 = sub_1A7E22EB0();
    v78 = 0;
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    LOBYTE(v47) = v43;
    *(&v47 + 1) = *v77;
    DWORD1(v47) = *&v77[3];
    *(&v47 + 1) = v41;
    *&v48 = v42;
    WORD4(v48) = v40;
    v36 = v76;
    BYTE10(v48) = v76;
    v35 = v13;
    HIDWORD(v48) = v13;
    v34 = v75;
    LOBYTE(v49) = v75;
    *(&v49 + 1) = *v74;
    DWORD1(v49) = *&v74[3];
    *(&v49 + 1) = v39;
    v33 = v73;
    LOBYTE(v50) = v73;
    *(&v50 + 1) = *v72;
    DWORD1(v50) = *&v72[3];
    v23 = v37;
    *(&v50 + 1) = v37;
    v24 = v38;
    *&v51 = v38;
    v25 = v44;
    v26 = v45;
    *(&v51 + 1) = v44;
    v52 = v45;
    v27 = *(&v45 + 1);
    LOBYTE(v53) = v20;
    HIBYTE(v53) = v22;
    v28 = v48;
    *a2 = v47;
    *(a2 + 16) = v28;
    v29 = v49;
    v30 = v50;
    v31 = v51;
    v32 = v52;
    *(a2 + 96) = v53;
    *(a2 + 64) = v31;
    *(a2 + 80) = v32;
    *(a2 + 32) = v29;
    *(a2 + 48) = v30;
    sub_1A7E00B68(&v47, &v55);
    sub_1A7B0CD6C(v46);
    LOBYTE(v55) = v43;
    *(&v55 + 1) = *v77;
    HIDWORD(v55) = *&v77[3];
    v56 = v41;
    v57 = v42;
    v58 = v40;
    v59 = v36;
    v60 = v35;
    v61 = v34;
    *v62 = *v74;
    *&v62[3] = *&v74[3];
    v63 = v39;
    v64 = v33;
    *&v65[3] = *&v72[3];
    *v65 = *v72;
    v66 = v23;
    v67 = v24;
    v68 = v25;
    *&v69 = v26;
    *(&v69 + 1) = v27;
    v70 = v20;
    v71 = v22;
  }

  return sub_1A7E00A78(&v55);
}

unint64_t sub_1A7E00AA8()
{
  result = qword_1EB2B8040;
  if (!qword_1EB2B8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8040);
  }

  return result;
}

uint64_t sub_1A7E00AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B8028);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LEToolLinkDefinition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1A7E00B68(v10, v9);
}

__n128 LEToolLinkDefinition.from.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_1A7E00A78(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t LEToolLinkDefinition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 184);
  v13 = *(v1 + 168);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 200);
  v5 = v15;
  v6 = *(v1 + 120);
  v10[0] = *(v1 + 104);
  v10[1] = v6;
  v11 = *(v1 + 136);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return sub_1A7E00B68(v10, v9);
}

__n128 LEToolLinkDefinition.to.setter(uint64_t a1)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v10[4] = *(v1 + 168);
  v10[5] = v4;
  v11 = *(v1 + 200);
  v5 = *(v1 + 120);
  v10[0] = *(v1 + 104);
  v10[1] = v5;
  v10[2] = *(v1 + 136);
  v10[3] = v3;
  sub_1A7E00A78(v10);
  v6 = *(a1 + 32);
  *(v1 + 152) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 168) = *(a1 + 64);
  *(v1 + 184) = v7;
  *(v1 + 200) = *(a1 + 96);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v9;
  *(v1 + 136) = v6;
  return result;
}

uint64_t LEToolLinkDefinition.protocolStack.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_1A7E00E20()
{
  v1 = 28532;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1A7E00E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7E03168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7E00E9C(uint64_t a1)
{
  v2 = sub_1A7E01288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E00ED8(uint64_t a1)
{
  v2 = sub_1A7E01288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinkDefinition.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B8050);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = v1[5];
  v52 = v1[4];
  v53 = v8;
  v54 = *(v1 + 48);
  v9 = v1[1];
  v48 = *v1;
  v49 = v9;
  v10 = v1[3];
  v50 = v1[2];
  v51 = v10;
  v11 = *(v1 + 120);
  v55 = *(v1 + 104);
  v56 = v11;
  v12 = *(v1 + 136);
  v13 = *(v1 + 152);
  v14 = *(v1 + 168);
  v15 = *(v1 + 184);
  v61 = *(v1 + 100);
  v59 = v14;
  v60 = v15;
  v57 = v12;
  v58 = v13;
  v20 = *(v1 + 26);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E00B68(&v48, &v41);
  sub_1A7E01288();
  sub_1A7E23260();
  v45 = v52;
  v46 = v53;
  v47 = v54;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v40 = 0;
  sub_1A7E012DC();
  v16 = v62;
  sub_1A7E23030();
  if (v16)
  {
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    sub_1A7E00A78(&v33);
  }

  else
  {
    v17 = v20;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    sub_1A7E00A78(&v33);
    v29 = v58;
    v30 = v59;
    v31 = v60;
    v26 = v55;
    v32 = v61;
    v27 = v56;
    v28 = v57;
    v25 = 1;
    sub_1A7E00B68(&v55, v23);
    sub_1A7E23030();
    v23[4] = v30;
    v23[5] = v31;
    v24 = v32;
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v23[3] = v29;
    sub_1A7E00A78(v23);
    v22 = v17;
    v21 = 2;
    sub_1A7CC7FFC(&qword_1EB2B5E08);
    sub_1A7D3094C(&qword_1EB2B5EC8, sub_1A7D30A18);
    sub_1A7E22FD0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7E01288()
{
  result = qword_1EB2B8058;
  if (!qword_1EB2B8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8058);
  }

  return result;
}

unint64_t sub_1A7E012DC()
{
  result = qword_1EB2B8060;
  if (!qword_1EB2B8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8060);
  }

  return result;
}

uint64_t LEToolLinkDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B8068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - v8;
  v10 = a1[3];
  v60 = a1;
  sub_1A7CC9878(a1, v10);
  sub_1A7E01288();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(v60);
  }

  v45 = 0;
  sub_1A7E01754();
  sub_1A7E22F30();
  v57 = v50;
  v58 = v51;
  LOWORD(v59[0]) = v52;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v37 = 1;
  sub_1A7E22F30();
  *(&v59[3] + 8) = v41;
  *(&v59[4] + 8) = v42;
  *(&v59[5] + 8) = v43;
  WORD4(v59[6]) = v44;
  *(v59 + 8) = v38;
  *(&v59[1] + 8) = v39;
  *(&v59[2] + 8) = v40;
  sub_1A7CC7FFC(&qword_1EB2B5E08);
  v35 = 2;
  sub_1A7D3094C(&qword_1EB2B5EB8, sub_1A7D309C4);
  sub_1A7E22ED0();
  (*(v6 + 8))(v9, v5);
  v11 = v36;
  v29 = v59[4];
  v30 = v59[5];
  v31 = v59[6];
  v25 = v59[0];
  v26 = v59[1];
  v27 = v59[2];
  v28 = v59[3];
  v21 = v55;
  v22 = v56;
  v23 = v57;
  v24 = v58;
  v19 = v53;
  v20 = v54;
  v32 = v36;
  *(a2 + 208) = v36;
  v12 = v30;
  *(a2 + 160) = v29;
  *(a2 + 176) = v12;
  *(a2 + 192) = v31;
  v13 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v13;
  v14 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v14;
  v15 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v15;
  v16 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v16;
  v17 = v20;
  *a2 = v19;
  *(a2 + 16) = v17;
  sub_1A7E017A8(&v19, v33);
  sub_1A7B0CD6C(v60);
  v33[10] = v59[4];
  v33[11] = v59[5];
  v33[12] = v59[6];
  v33[6] = v59[0];
  v33[7] = v59[1];
  v33[8] = v59[2];
  v33[9] = v59[3];
  v33[2] = v55;
  v33[3] = v56;
  v33[4] = v57;
  v33[5] = v58;
  v33[0] = v53;
  v33[1] = v54;
  v34 = v11;
  return sub_1A7E017E0(v33);
}

unint64_t sub_1A7E01754()
{
  result = qword_1EB2B8070;
  if (!qword_1EB2B8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8070);
  }

  return result;
}

uint64_t LEToolLink.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LEToolLink.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LEToolLink.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v30 = *(v1 + 176);
  v31 = v2;
  v4 = *(v1 + 192);
  v32 = *(v1 + 208);
  v5 = *(v1 + 128);
  v7 = *(v1 + 96);
  v26 = *(v1 + 112);
  v6 = v26;
  v27 = v5;
  v8 = *(v1 + 128);
  v9 = *(v1 + 160);
  v28 = *(v1 + 144);
  v10 = v28;
  v29 = v9;
  v11 = *(v1 + 64);
  v13 = *(v1 + 32);
  v22 = *(v1 + 48);
  v12 = v22;
  v23 = v11;
  v14 = *(v1 + 64);
  v15 = *(v1 + 96);
  v24 = *(v1 + 80);
  v16 = v24;
  v25 = v15;
  v17 = *(v1 + 32);
  v21[0] = *(v1 + 16);
  v18 = v21[0];
  v21[1] = v17;
  *(a1 + 160) = v30;
  *(a1 + 176) = v4;
  *(a1 + 192) = *(v1 + 208);
  *(a1 + 96) = v6;
  *(a1 + 112) = v8;
  *(a1 + 128) = v10;
  *(a1 + 144) = v3;
  *(a1 + 32) = v12;
  *(a1 + 48) = v14;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  v33 = *(v1 + 224);
  *(a1 + 208) = *(v1 + 224);
  *a1 = v18;
  *(a1 + 16) = v13;
  return sub_1A7E0197C(v21, v20);
}

uint64_t sub_1A7E0197C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B8078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 LEToolLink.definition.setter(uint64_t a1)
{
  v3 = *(v1 + 192);
  v16[10] = *(v1 + 176);
  v16[11] = v3;
  v16[12] = *(v1 + 208);
  v17 = *(v1 + 224);
  v4 = *(v1 + 128);
  v16[6] = *(v1 + 112);
  v16[7] = v4;
  v5 = *(v1 + 160);
  v16[8] = *(v1 + 144);
  v16[9] = v5;
  v6 = *(v1 + 64);
  v16[2] = *(v1 + 48);
  v16[3] = v6;
  v7 = *(v1 + 96);
  v16[4] = *(v1 + 80);
  v16[5] = v7;
  v8 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v8;
  sub_1A7E01A9C(v16);
  v9 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v9;
  *(v1 + 208) = *(a1 + 192);
  *(v1 + 224) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v10;
  v11 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v11;
  v12 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v12;
  v13 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v15;
  return result;
}

uint64_t sub_1A7E01A9C(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B8078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LEToolLink()
{
  result = qword_1EB2B80B8;
  if (!qword_1EB2B80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LEToolLink.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LEToolLink() + 24);

  return sub_1A7E01C00(a1, v3);
}

uint64_t sub_1A7E01C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7E01CAC()
{
  v1 = 0x6974696E69666564;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A7E01D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7E03280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7E01D28(uint64_t a1)
{
  v2 = sub_1A7E020C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7E01D64(uint64_t a1)
{
  v2 = sub_1A7E020C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A7CC7FFC(&qword_1EB2B8080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23[-v8];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E020C0();
  sub_1A7E23260();
  v54 = 0;
  sub_1A7E22FF0();
  if (!v2)
  {
    v10 = *(v3 + 192);
    v11 = *(v3 + 160);
    v50 = *(v3 + 176);
    v51 = v10;
    v12 = *(v3 + 192);
    v52 = *(v3 + 208);
    v13 = *(v3 + 128);
    v14 = *(v3 + 96);
    v46 = *(v3 + 112);
    v47 = v13;
    v15 = *(v3 + 128);
    v16 = *(v3 + 160);
    v48 = *(v3 + 144);
    v49 = v16;
    v17 = *(v3 + 64);
    v18 = *(v3 + 32);
    v42 = *(v3 + 48);
    v43 = v17;
    v19 = *(v3 + 64);
    v20 = *(v3 + 96);
    v44 = *(v3 + 80);
    v45 = v20;
    v21 = *(v3 + 32);
    v41[0] = *(v3 + 16);
    v41[1] = v21;
    v37 = v50;
    v38 = v12;
    v39 = *(v3 + 208);
    v33 = v46;
    v34 = v15;
    v35 = v48;
    v36 = v11;
    v29 = v42;
    v30 = v19;
    v31 = v44;
    v32 = v14;
    v53 = *(v3 + 224);
    v40 = *(v3 + 224);
    v27 = v41[0];
    v28 = v18;
    v26 = 1;
    sub_1A7E0197C(v41, v24);
    sub_1A7E02114();
    sub_1A7E22FD0();
    v24[10] = v37;
    v24[11] = v38;
    v24[12] = v39;
    v25 = v40;
    v24[6] = v33;
    v24[7] = v34;
    v24[8] = v35;
    v24[9] = v36;
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v24[5] = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_1A7E01A9C(v24);
    type metadata accessor for LEToolLink();
    v23[15] = 2;
    type metadata accessor for LinkState(0);
    sub_1A7E02660(&qword_1EB2B8098, type metadata accessor for LinkState);
    sub_1A7E23030();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A7E020C0()
{
  result = qword_1EB2B8088;
  if (!qword_1EB2B8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8088);
  }

  return result;
}

unint64_t sub_1A7E02114()
{
  result = qword_1EB2B8090;
  if (!qword_1EB2B8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8090);
  }

  return result;
}

uint64_t LEToolLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v45, v3);
  v47 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A7CC7FFC(&qword_1EB2B80A0);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v5);
  v7 = v42 - v6;
  v8 = type metadata accessor for LEToolLink();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7D21964(v82);
  v12 = v82[11];
  *(v11 + 11) = v82[10];
  *(v11 + 12) = v12;
  *(v11 + 13) = v82[12];
  *(v11 + 28) = v83;
  v13 = v82[7];
  *(v11 + 7) = v82[6];
  *(v11 + 8) = v13;
  v14 = v82[9];
  *(v11 + 9) = v82[8];
  *(v11 + 10) = v14;
  v15 = v82[3];
  *(v11 + 3) = v82[2];
  *(v11 + 4) = v15;
  v16 = v82[5];
  *(v11 + 5) = v82[4];
  *(v11 + 6) = v16;
  v17 = v82[1];
  *(v11 + 1) = v82[0];
  *(v11 + 2) = v17;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7E020C0();
  v49 = v7;
  v18 = v84;
  sub_1A7E23250();
  if (v18)
  {
    sub_1A7B0CD6C(a1);
    v22 = *(v11 + 12);
    v78 = *(v11 + 11);
    v79 = v22;
    v80 = *(v11 + 13);
    v81 = *(v11 + 28);
    v23 = *(v11 + 8);
    v74 = *(v11 + 7);
    v75 = v23;
    v24 = *(v11 + 10);
    v76 = *(v11 + 9);
    v77 = v24;
    v25 = *(v11 + 4);
    v70 = *(v11 + 3);
    v71 = v25;
    v26 = *(v11 + 6);
    v72 = *(v11 + 5);
    v73 = v26;
    v27 = *(v11 + 2);
    v68 = *(v11 + 1);
    v69 = v27;
    return sub_1A7E01A9C(&v68);
  }

  else
  {
    v43 = v8;
    v19 = v46;
    v84 = a1;
    v20 = v47;
    v21 = v48;
    LOBYTE(v68) = 0;
    *v11 = sub_1A7E22EF0();
    *(v11 + 1) = v28;
    v42[1] = v28;
    v67 = 1;
    sub_1A7E0260C();
    sub_1A7E22ED0();
    v61 = v78;
    v62 = v79;
    v63 = v80;
    v64 = v81;
    v57 = v74;
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v53 = v70;
    v54 = v71;
    v55 = v72;
    v56 = v73;
    v51 = v68;
    v52 = v69;
    v29 = *(v11 + 12);
    v65[10] = *(v11 + 11);
    v65[11] = v29;
    v65[12] = *(v11 + 13);
    v66 = *(v11 + 28);
    v30 = *(v11 + 8);
    v65[6] = *(v11 + 7);
    v65[7] = v30;
    v31 = *(v11 + 10);
    v65[8] = *(v11 + 9);
    v65[9] = v31;
    v32 = *(v11 + 4);
    v65[2] = *(v11 + 3);
    v65[3] = v32;
    v33 = *(v11 + 6);
    v65[4] = *(v11 + 5);
    v65[5] = v33;
    v34 = *(v11 + 2);
    v65[0] = *(v11 + 1);
    v65[1] = v34;
    sub_1A7E01A9C(v65);
    v35 = v62;
    *(v11 + 11) = v61;
    *(v11 + 12) = v35;
    *(v11 + 13) = v63;
    *(v11 + 28) = v64;
    v36 = v58;
    *(v11 + 7) = v57;
    *(v11 + 8) = v36;
    v37 = v60;
    *(v11 + 9) = v59;
    *(v11 + 10) = v37;
    v38 = v54;
    *(v11 + 3) = v53;
    *(v11 + 4) = v38;
    v39 = v56;
    *(v11 + 5) = v55;
    *(v11 + 6) = v39;
    v40 = v52;
    *(v11 + 1) = v51;
    *(v11 + 2) = v40;
    v50 = 2;
    sub_1A7E02660(&qword_1EB2B80B0, type metadata accessor for LinkState);
    sub_1A7E22F30();
    (*(v19 + 8))(v49, v21);
    sub_1A7CD0F28(v20, &v11[*(v43 + 24)]);
    sub_1A7E026A8(v11, v44, type metadata accessor for LEToolLink);
    sub_1A7B0CD6C(v84);
    return sub_1A7E02710(v11);
  }
}

unint64_t sub_1A7E0260C()
{
  result = qword_1EB2B80A8;
  if (!qword_1EB2B80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80A8);
  }

  return result;
}

uint64_t sub_1A7E02660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A7E026A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7E02710(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1A7E0279C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A7E027C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A7E02824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1A7E028A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1A7E028E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A7E02944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1A7E02A04()
{
  sub_1A7E02A98();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LinkState(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7E02A98()
{
  if (!qword_1EB2B80C8)
  {
    v0 = sub_1A7E229A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B80C8);
    }
  }
}

unint64_t sub_1A7E02B1C()
{
  result = qword_1EB2B80D0;
  if (!qword_1EB2B80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80D0);
  }

  return result;
}

unint64_t sub_1A7E02B74()
{
  result = qword_1EB2B80D8;
  if (!qword_1EB2B80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80D8);
  }

  return result;
}

unint64_t sub_1A7E02BCC()
{
  result = qword_1EB2B80E0;
  if (!qword_1EB2B80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80E0);
  }

  return result;
}

unint64_t sub_1A7E02C24()
{
  result = qword_1EB2B80E8;
  if (!qword_1EB2B80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80E8);
  }

  return result;
}

unint64_t sub_1A7E02C7C()
{
  result = qword_1EB2B80F0;
  if (!qword_1EB2B80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80F0);
  }

  return result;
}

unint64_t sub_1A7E02CD4()
{
  result = qword_1EB2B80F8;
  if (!qword_1EB2B80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B80F8);
  }

  return result;
}

unint64_t sub_1A7E02D2C()
{
  result = qword_1EB2B8100;
  if (!qword_1EB2B8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8100);
  }

  return result;
}

unint64_t sub_1A7E02D84()
{
  result = qword_1EB2B8108;
  if (!qword_1EB2B8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8108);
  }

  return result;
}

unint64_t sub_1A7E02DDC()
{
  result = qword_1EB2B8110;
  if (!qword_1EB2B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B8110);
  }

  return result;
}

uint64_t sub_1A7E02E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696D61467069 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28777 && a2 == 0xE200000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x544152736469 && a2 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C6552736469 && a2 == 0xEE0044496B6E694CLL || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EB1F50 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EB1F70 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657250343674616ELL && a2 == 0xEB00000000786966 || (sub_1A7E230D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x343654414E7369 && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646563696C537369 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A7E03168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xED00006B63617453)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7E03280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t LEToolP2PEngineResponseMessage.print(to:style:)(void *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = a1[3];
  v11 = a1[4];
  sub_1A7CC9878(a1, v10);
  v18 = 0x69676E4520503250;
  v19 = 0xEA0000000000656ELL;
  LOWORD(v20) = 513;
  v21 = 0;
  v22 = 0;
  v23 = 2;
  sub_1A7E0351C(v5, v6, v7, v8);
  CLIPrinter.print(_:)(&v18, v10, v11);

  v12 = a1[3];
  v13 = a1[4];
  sub_1A7CC9878(a1, v12);
  v21 = &type metadata for CLIRule;
  v22 = sub_1A7CE5D50();
  LOBYTE(v18) = 9;
  CLIPrinter.print(_:)(&v18, v12, v13);
  sub_1A7B0CD6C(&v18);
  sub_1A7CC9878(a1, a1[3]);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v14);
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v16 = *a2;
  v17 = *(a2 + 8);
  LEToolResponse.print(to:style:)(a1, &v16);
  return sub_1A7CE5E00(v18, v19, v20, v21);
}

uint64_t sub_1A7E0351C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 60) & 7;
  switch(v4)
  {
    case 2:
      return sub_1A7E035A0(result, a2, a3, a4 & 0x8FFFFFFFFFFFFFFFLL);
    case 1:
      return sub_1A7E03548(result, a2, a3);
    case 0:
  }

  return result;
}

uint64_t sub_1A7E03548(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1A7E035A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }
}

uint64_t sub_1A7E03600(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a1 + 8;
  if (__OFADD__(a1, 8))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (v4 <= 0)
      {
        memset(v25, 0, 14);
        goto LABEL_27;
      }

LABEL_20:
      sub_1A7D17E10();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 < v4)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (!v6)
  {
    if (BYTE6(a4) < v4)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (HIDWORD(a3) - a3 < v4)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v6 == 2)
  {
    v12 = a1;
    v19 = *(a3 + 16);
    v20 = sub_1A7E21630();
    if (!v20)
    {
      sub_1A7E21650();
      __break(1u);
      goto LABEL_38;
    }

    v21 = v20;
    v22 = sub_1A7E21660();
    if (!__OFSUB__(v19, v22))
    {
      v16 = v19 - v22 + v21;
      result = sub_1A7E21650();
      if (!v16)
      {
LABEL_40:
        __break(1u);
        return result;
      }

LABEL_24:
      v23 = *(v16 + v12);
      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 == 1)
  {
    v11 = a3;
    if (a3 <= a3 >> 32)
    {
      v12 = a1;
      v13 = sub_1A7E21630();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A7E21660();
        if (!__OFSUB__(v11, v15))
        {
          v16 = v11 - v15 + v14;
          result = sub_1A7E21650();
          if (!v16)
          {
            goto LABEL_39;
          }

          goto LABEL_24;
        }

LABEL_36:
        __break(1u);
      }

LABEL_38:
      result = sub_1A7E21650();
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v25[0] = a3;
  LOWORD(v25[1]) = a4;
  BYTE2(v25[1]) = BYTE2(a4);
  BYTE3(v25[1]) = BYTE3(a4);
  BYTE4(v25[1]) = BYTE4(a4);
  BYTE5(v25[1]) = BYTE5(a4);
LABEL_27:
  v23 = *(v25 + a1);
LABEL_28:
  v24 = bswap64(v23);
  if (a2)
  {
    return v23;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_1A7E03860(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1A7CC7FFC(&qword_1EB2B8140);
  if (swift_dynamicCast())
  {
    sub_1A7B14FF0(v38, &v41);
    sub_1A7CC9878(&v41, v42);
    sub_1A7E216B0();
    v38[0] = v40;
    sub_1A7B0CD6C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_1A7CC9970(v38, &qword_1EB2B8148);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1A7E22BE0();
  }

  sub_1A7E06F4C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_1A7E084F8(v8);
  *(&v38[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v38[0], v9);
  v10 = sub_1A7E07014(sub_1A7E0B70C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1A7E219B0();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1A7E06ED0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1A7E223D0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1A7E22410();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1A7E22BE0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1A7E06ED0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1A7E223E0();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1A7E219C0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1A7E219C0();
    sub_1A7B1516C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1A7B1516C(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_1A7D5164C(*&v38[0], *(&v38[0] + 1));

  sub_1A7CC7E50(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1A7E03D98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A7E22060();
  sub_1A7CC7A10(v3, a2);
  sub_1A7B0CB00(v3, a2);
  return sub_1A7E22050();
}

uint64_t IDSPacketLogPacketKind.description.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 4144959;
  }

  else
  {
    return qword_1A7E56440[a1];
  }
}

uint64_t sub_1A7E03E48()
{
  if (*v0 > 3uLL)
  {
    return 4144959;
  }

  else
  {
    return qword_1A7E56440[*v0];
  }
}

uint64_t sub_1A7E03E78()
{
  v1 = *(v0 + 24);
  sub_1A7E23200();
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  MEMORY[0x1AC562B10](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7E03F04()
{
  v1 = *(v0 + 24);
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  return MEMORY[0x1AC562B10](v1);
}

uint64_t sub_1A7E03F6C()
{
  v1 = *(v0 + 24);
  sub_1A7E23200();
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  MEMORY[0x1AC562B10](v1);
  return sub_1A7E23240();
}

BOOL sub_1A7E03FF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a1 + 3);
  v5 = *(a2 + 3);
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return (v6 || (sub_1A7E230D0() & 1) != 0) && v4 == v5;
}

uint64_t sub_1A7E04078()
{

  sub_1A7E0B794(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7E040B8(uint64_t **a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = *a1;
  v13 = a3 >> 8;
  type metadata accessor for IDSPacketLog.SimpleBatch();
  v14 = swift_allocObject();
  sub_1A7E08218(v28);
  v15 = v28[0];
  *(v14 + 88) = v28[1];
  v16 = v28[3];
  *(v14 + 104) = v28[2];
  *(v14 + 120) = v16;
  *(v14 + 136) = v28[4];
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 25) = v13;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *v12 = v14;

  v17 = swift_allocObject();
  sub_1A7E08218(v29);
  v18 = v29[0];
  *(v17 + 88) = v29[1];
  v19 = v29[3];
  *(v17 + 104) = v29[2];
  *(v17 + 120) = v19;
  *(v17 + 136) = v29[4];
  *(v17 + 64) = 0;
  *(v17 + 72) = v18;
  *(v17 + 16) = 1;
  *(v17 + 24) = v11;
  *(v17 + 25) = v13;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  v12[1] = v17;

  v20 = swift_allocObject();
  sub_1A7E08218(v30);
  v21 = v30[0];
  *(v20 + 88) = v30[1];
  v22 = v30[3];
  *(v20 + 104) = v30[2];
  *(v20 + 120) = v22;
  *(v20 + 136) = v30[4];
  *(v20 + 64) = 0;
  *(v20 + 72) = v21;
  *(v20 + 16) = 2;
  *(v20 + 24) = v11;
  *(v20 + 25) = v13;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v12[2] = v20;

  v23 = swift_allocObject();
  sub_1A7E08218(v31);
  v24 = v31[0];
  *(v23 + 88) = v31[1];
  v25 = v31[3];
  *(v23 + 104) = v31[2];
  *(v23 + 120) = v25;
  *(v23 + 136) = v31[4];
  *(v23 + 64) = 0;
  *(v23 + 72) = v24;
  *(v23 + 16) = 3;
  *(v23 + 24) = v11;
  *(v23 + 25) = v13;
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
  *(v23 + 48) = a6;
  *(v23 + 56) = a7;
  v12[3] = v23;

  *a2 = 4;
  return result;
}

uint64_t sub_1A7E04314()
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = xmmword_1A7E56160;
  v1 = sub_1A7E03860(1735355504, 0xE400000000000000);
  v3 = v2;
  sub_1A7E21A30();
  sub_1A7CC7E50(v1, v3);
  v13 = sub_1A7CC7FFC(&qword_1EB2B5A10);
  v14 = sub_1A7D16A78();
  LOBYTE(v12[0]) = 2;
  sub_1A7CC9878(v12, v13);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v12);
  sub_1A7D17B2C(*(v0 + 16), *(v0 + 24));
  v12[0] = bswap64(*(v0 + 32));
  v4 = sub_1A7DD6CD8(v12, 8);
  v6 = v5;
  sub_1A7E21A30();
  sub_1A7CC7E50(v4, v6);
  v12[0] = bswap64(*(v0 + 40));
  v7 = sub_1A7DD6CD8(v12, 8);
  v9 = v8;
  sub_1A7E21A30();
  sub_1A7CC7E50(v7, v9);
  v10 = v15;
  (*(v0 + 96))(v15, *(&v15 + 1));
  return sub_1A7CC7E50(v10, *(&v10 + 1));
}

id sub_1A7E044F0(void *a1, unint64_t a2, id a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    v12[0] = 0;
    v4 = [a3 synchronizeAndReturnError_];
    v5 = v12[0];
    if ((v4 & 1) != 0 && (v12[0] = 0, v6 = v5, v7 = [a3 closeAndReturnError_], v5 = v12[0], v7))
    {
      return v12[0];
    }

    else
    {
      v11 = v5;
      sub_1A7E217F0();

      return swift_willThrow();
    }
  }

  else
  {
    v12[0] = a1;
    v12[1] = a2;
    sub_1A7D5164C(a1, a2);
    sub_1A7E0B84C();
    sub_1A7E228B0();
    return sub_1A7B1516C(a1, a2);
  }
}

void sub_1A7E0460C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 4);
  sub_1A7E0B84C();
  sub_1A7E21BF0();
  os_unfair_lock_unlock(a3 + 4);
}

uint64_t sub_1A7E0468C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_18:
    v14 = a3;
    v15 = sub_1A7E22DA0();
    a3 = v14;
    v5 = v15;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
  }

LABEL_3:
  v22 = a3;
  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1AC562480](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    os_unfair_lock_lock((v7 + 64));
    v9 = *(v7 + 88);
    v10 = *(v7 + 120);
    v19 = *(v7 + 104);
    v20 = v10;
    v21 = *(v7 + 136);
    v17 = *(v7 + 72);
    v18 = v9;
    sub_1A7E08218(v16);
    v11 = v16[0];
    *(v7 + 88) = v16[1];
    v12 = v16[3];
    *(v7 + 104) = v16[2];
    *(v7 + 120) = v12;
    *(v7 + 136) = v16[4];
    *(v7 + 72) = v11;
    os_unfair_lock_unlock((v7 + 64));
    sub_1A7E04854(v7, &v17);
    if (v3)
    {
      goto LABEL_14;
    }

    if (v18)
    {
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

    ++v6;
    if (v8 == v5)
    {
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v4 + 8 * v6 + 32);

  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  if (v18)
  {
    MEMORY[0x1AC5654B0](v18, -1, -1);
  }

  *v22 = v3;
  return result;
}

void sub_1A7E04854(uint64_t a1, void *a2)
{
  v5 = v3;
  v8 = sub_1A7E21980();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_slowAlloc();
  if (!v13)
  {
    goto LABEL_51;
  }

  *v13 = 1;
  v14 = *(a1 + 16);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v14 > 0xFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13[1] = v14;
  v15 = *(a1 + 56);
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = v13 + 2;
  v68 = v12;
  v69 = v8;
  if (v15 < 0x80)
  {
    LOBYTE(v17) = v15;
  }

  else
  {
    do
    {
      *v16++ = v15 | 0x80;
      v17 = v15 >> 7;
      v18 = v15 >> 14;
      v15 >>= 7;
    }

    while (v18);
  }

  *v16 = v17;
  v4 = v16 + 1;
  v19 = a2[8];
  v67 = v2;
  v20 = *(v2 + 32);
  v8 = v19 - v20;
  if (v19 < v20)
  {
    goto LABEL_44;
  }

  v66 = v3;
  v5 = (v4 - v13);
  if (!__OFADD__(v4 - v13, 10))
  {
    v21 = v13;
    v70 = v9;
    if (v4 - v13 + 10 < 1025)
    {
      v5 = v13;
      v12 = v13 + 1024;
      if (v8 < 0x80)
      {
LABEL_17:
        LOBYTE(v24) = v8;
        goto LABEL_18;
      }
    }

    else
    {
      v22 = swift_slowAlloc();
      v23 = v21;
      memcpy(v22, v21, 0x400uLL);
      v12 = v22 + 2048;
      MEMORY[0x1AC5654B0](v23, -1, -1);
      v4 = &v5[v22];
      v5 = v22;
      if (v8 < 0x80)
      {
        goto LABEL_17;
      }
    }

    do
    {
      *v4++ = v8 | 0x80;
      v24 = v8 >> 7;
      v25 = v8 >> 14;
      v8 >>= 7;
    }

    while (v25);
LABEL_18:
    *v4++ = v24;
    v8 = a2[7];
    v64 = a2[6];
    if (qword_1EB2B3328 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_19:
  v26 = sub_1A7E22060();
  sub_1A7B0CB00(v26, qword_1EB2B3330);
  swift_retain_n();
  v27 = sub_1A7E22040();
  v28 = sub_1A7E228F0();
  v29 = os_log_type_enabled(v27, v28);
  v65 = a2;
  if (v29)
  {
    v63 = v12;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v71 = v31;
    *v30 = 136316674;
    v62 = v5;
    if (v14 > 3)
    {
      v32 = 4144959;
    }

    else
    {
      v32 = qword_1A7E56440[v14];
    }

    v33 = sub_1A7B0CB38(v32, 0xE300000000000000, &v71);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v8;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v64;
    *(v30 + 32) = 256;
    v34 = *(a1 + 24);

    *(v30 + 34) = v34;

    *(v30 + 35) = 256;
    v35 = *(a1 + 25);

    *(v30 + 37) = v35;

    *(v30 + 38) = 2080;
    *(v30 + 40) = sub_1A7B0CB38(*(a1 + 32), *(a1 + 40), &v71);
    *(v30 + 48) = 2048;
    v36 = *(a1 + 48);

    *(v30 + 50) = v36;

    _os_log_impl(&dword_1A7AD9000, v27, v28, "%s %ld packets, %ld bytes (%hhd/%hhd — %s [C%llu])", v30, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v31, -1, -1);
    MEMORY[0x1AC5654B0](v30, -1, -1);

    a2 = v65;
    v5 = v62;
    v12 = v63;
  }

  else
  {
  }

  v37 = a2[5];
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(v37))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v38 = v4 - v5;
  if (__OFADD__(v4 - v5, 10))
  {
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

  v39 = v12 - v5;
  if (v12 - v5 >= v4 - v5 + 10)
  {
    goto LABEL_31;
  }

  if ((v39 + 0x4000000000000000) < 0)
  {
    goto LABEL_50;
  }

  v40 = v5;
  v5 = swift_slowAlloc();
  memmove(v5, v40, v39);
  MEMORY[0x1AC5654B0](v40, -1, -1);
  v4 = &v5[v38];
LABEL_31:
  v41 = v70;
  if (v37 < 0x80)
  {
    LOBYTE(v42) = v37;
  }

  else
  {
    do
    {
      *v4++ = v37 | 0x80;
      v42 = v37 >> 7;
      v43 = v37 >> 14;
      v37 >>= 7;
    }

    while (v43);
  }

  *v4 = v42;
  if (!v5)
  {
    goto LABEL_52;
  }

  v44 = *MEMORY[0x1E6969010];
  v45 = *(v41 + 104);
  v70 = v41 + 104;
  v46 = v68;
  v45(v68, v44, v69);
  v47 = sub_1A7E08A4C(v5, v4 - v5 + 1, v46);
  v49 = v48;
  v50 = v66;
  v51 = *(v67 + 96);
  v51();
  sub_1A7CC7E50(v47, v49);
  if (v50)
  {
    v52 = v5;
LABEL_40:
    MEMORY[0x1AC5654B0](v52, -1, -1);
    return;
  }

  v53 = v65[2];
  if (v53)
  {
    v54 = v51;
    v55 = v44;
    v56 = v5;
    v57 = v65[4] - v53;
    v45(v46, v55, v69);
    v58 = sub_1A7E08A4C(v53, v57, v46);
    v60 = v59;
    v54();
    sub_1A7CC7E50(v58, v60);
    v52 = v56;
    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1A7E04DEC(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v25 = xmmword_1A7E56160;
  v8 = a1 >> 8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5A10);
  v23 = v9;
  v10 = sub_1A7D16A78();
  v24 = v10;
  LOBYTE(v22[0]) = 2;
  sub_1A7CC9878(v22, v9);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v22);
  LOBYTE(v22[0]) = v7;
  v11 = sub_1A7DD6CD8(v22, 1);
  v13 = v12;
  sub_1A7E21A30();
  sub_1A7CC7E50(v11, v13);
  LOBYTE(v22[0]) = v8;
  v14 = sub_1A7DD6CD8(v22, 1);
  v16 = v15;
  sub_1A7E21A30();
  sub_1A7CC7E50(v14, v16);
  sub_1A7D17B2C(a2, a3);
  if (a4 >= 0x80)
  {
    do
    {
      v23 = v9;
      v24 = v10;
      LOBYTE(v22[0]) = a4 | 0x80;
      sub_1A7CC9878(v22, v9);
      sub_1A7E219B0();
      sub_1A7B0CD6C(v22);
      v17 = a4 >> 7;
      v18 = a4 >> 14;
      a4 >>= 7;
    }

    while (v18);
  }

  else
  {
    LOBYTE(v17) = a4;
  }

  v23 = v9;
  v24 = v10;
  LOBYTE(v22[0]) = v17;
  sub_1A7CC9878(v22, v9);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v22);
  v19 = v25;
  (*(v21 + 96))(v25, *(&v25 + 1));
  return sub_1A7CC7E50(v19, *(&v19 + 1));
}

uint64_t sub_1A7E05084(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  os_unfair_lock_lock((v4 + 48));
  v11 = *(v4 + 56);
  if (*(v11 + 16))
  {
    v12 = sub_1A7CD0D3C(a1, a2, a3, a4);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      goto LABEL_8;
    }

    v14 = *(*(v6 + 56) + 16);
  }

  else
  {
    v14 = 0;
  }

  sub_1A7E04DEC(a1, a2, a3, a4);
  if (!v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + 56);
    *(v6 + 56) = 0x8000000000000000;
    sub_1A7DC367C(v14, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *(v6 + 56) = v17;
  }

LABEL_8:
  os_unfair_lock_unlock((v6 + 48));
  return v14;
}

uint64_t sub_1A7E051A0(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = v6;
  v15 = *a5;
  if (*(*a5 + 16))
  {
    v16 = sub_1A7CD0D3C(a1, a2, a3, a4);
    if (v17)
    {
      return *(*(v15 + 56) + 16 * v16);
    }
  }

  v31 = a5;
  v18 = *a6;
  v19 = *(*a6 + 16);
  v20 = sub_1A7E05084(a1, a2, a3, a4);
  if (!v7)
  {
    v21 = v20;
    v30 = v19;

    v22 = sub_1A7E08450(4, a1, a2, a3, a4, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A7CCE8B8(0, *(v18 + 16) + 1, 1);
      v18 = *a6;
    }

    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_1A7CCE8B8((v24 > 1), v25 + 1, 1);
      v26 = v25 + 1;
      v18 = *a6;
    }

    *(v18 + 16) = v26;
    v27 = v18 + 16 * v25;
    v8 = v30;
    *(v27 + 32) = v30;
    *(v27 + 40) = v22;
    *a6 = v18;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v31;
    sub_1A7DC3814(v30, v22, a1, a2, a3, a4, v28);

    *v31 = v32;
  }

  return v8;
}

uint64_t sub_1A7E0538C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *result;
  if (!*result)
  {
    goto LABEL_25;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = v6 - v4;
  if (__OFADD__(v6 - v4, 30))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(result + 8) - v4;
  if (v11 < v6 - v4 + 30)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v12 = swift_slowAlloc();
    memmove(v12, v4, v11);
    result = MEMORY[0x1AC5654B0](v4, -1, -1);
    *v5 = v12;
    v5[1] = &v12[2 * v11];
    v6 = &v12[v7];
  }

  v13 = (2 * a2) ^ (a2 >> 63);
  if (v13 < 0x80)
  {
    v14 = (2 * a2) ^ (a2 >> 63);
  }

  else
  {
    do
    {
      *v6++ = v13 | 0x80;
      v14 = v13 >> 7;
      v15 = v13 >> 14;
      v13 >>= 7;
    }

    while (v15);
  }

  *v6 = v14;
  v16 = v6 + 1;
  v5[2] = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (a3 < 0x80)
  {
    LOBYTE(v17) = a3;
  }

  else
  {
    do
    {
      *v16++ = a3 | 0x80;
      v17 = a3 >> 7;
      v18 = a3 >> 14;
      a3 >>= 7;
    }

    while (v18);
  }

  *v16 = v17;
  v19 = v16 + 1;
  v5[2] = v19;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (a4 < 0x80)
  {
    LOBYTE(v20) = a4;
  }

  else
  {
    do
    {
      *v19++ = a4 | 0x80;
      v20 = a4 >> 7;
      v21 = a4 >> 14;
      a4 >>= 7;
    }

    while (v21);
  }

  *v19 = v20;
  v5[2] = v19 + 1;
  return result;
}

uint64_t sub_1A7E05504()
{

  sub_1A7CC9970(v0 + 56, &qword_1EB2B8150);
  sub_1A7E0B7C4(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7E05564(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1A7E21C30();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7E21C20();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A7E21940();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  v17 = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = 0xC000000000000000;
  *(v3 + 80) = v17;
  sub_1A7CC79C8(0, &qword_1EB2B2900);
  (*(v13 + 16))(v16, a1, v12);
  v18 = sub_1A7E05908(v16, &selRef_fileHandleForReadingFromURL_error_);
  if (v2)
  {
    (*(v13 + 8))(a1, v12);

    sub_1A7CC7E50(*(v3 + 64), *(v3 + 72));

    type metadata accessor for IDSPacketLogReader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v18;
    (*(v21 + 104))(v11, *MEMORY[0x1E69E5BC0], v8);
    (*(v22 + 104))(v24, *MEMORY[0x1E69E5BD0], v23);
    sub_1A7CC7FFC(&qword_1EB2B8160);
    swift_allocObject();

    *(v3 + 24) = sub_1A7E21BE0();

    sub_1A7E05BFC();
    (*(v13 + 8))(a1, v12);
  }

  return v3;
}

id sub_1A7E05908(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7E218E0();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1A7E21940();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1A7E217F0();

    swift_willThrow();
    v11 = sub_1A7E21940();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1A7E05A60(uint64_t a1)
{
  v3 = v1;
  result = swift_beginAccess();
  v6 = v3[8];
  v7 = v3[9];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= a1)
      {
        return result;
      }
    }

    else if (a1 <= 0)
    {
      return result;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (HIDWORD(v6) - v6 >= a1)
    {
      return result;
    }
  }

  else if (BYTE6(v7) >= a1)
  {
    return result;
  }

  if (!v3[3])
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      v6 = BYTE6(v7);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v15 = v6 + 16;
  v13 = *(v6 + 16);
  v14 = *(v15 + 8);
  v11 = __OFSUB__(v14, v13);
  v6 = v14 - v13;
  if (v11)
  {
    __break(1u);
LABEL_21:
    v11 = __OFSUB__(HIDWORD(v6), v6);
    LODWORD(v6) = HIDWORD(v6) - v6;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v6 = v6;
  }

LABEL_24:
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
    goto LABEL_30;
  }

  v16 = sub_1A7E21BD0();
  v18 = v17;

  if (!v2 && v18 >> 60 != 15)
  {
    swift_beginAccess();
    sub_1A7E21A30();
    swift_endAccess();
    return sub_1A7B1516C(v16, v18);
  }

  return result;
}

uint64_t sub_1A7E05BFC()
{
  result = sub_1A7E05A60(1024);
  if (v1)
  {
    return result;
  }

  result = swift_beginAccess();
  v3 = v0[8];
  v4 = v0[9];
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      if (BYTE6(v4) > 5uLL)
      {
        goto LABEL_12;
      }

LABEL_9:
      sub_1A7E0B6B8();
      swift_allocError();
      *v10 = 512;
      return swift_willThrow();
    }

    if (!__OFSUB__(HIDWORD(v3), v3))
    {
      if (HIDWORD(v3) - v3 <= 5)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_9;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= 5)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_1A7D5164C(v0[8], v0[9]);
  v11 = sub_1A7E219D0();
  v13 = v12;
  sub_1A7CC7E50(v3, v4);
  v14 = sub_1A7E03860(1735355504, 0xE400000000000000);
  v16 = v15;
  v17 = sub_1A7E07674(v11, v13, v14, v15);
  sub_1A7CC7E50(v14, v16);
  if (v17)
  {
    v18 = v0[8];
    v19 = v0[9];
    sub_1A7D5164C(v18, v19);
    v20 = sub_1A7E219E0();
    sub_1A7CC7E50(v18, v19);
    if (v20 == 2)
    {
      v21 = v0[8];
      v22 = v0[9];
      sub_1A7D5164C(v21, v22);
      v23 = sub_1A7E21A60();
      v25 = v24;
      sub_1A7CC7E50(v21, v22);
      v26 = v0[8];
      v27 = v0[9];
      v0[8] = v23;
      v0[9] = v25;
      sub_1A7CC7E50(v26, v27);
      v28 = v0[8];
      v29 = v0[9];
      sub_1A7D5164C(v28, v29);
      v32 = sub_1A7D17BF8(0, v28, v29);
      v34 = v33;
      sub_1A7CC7E50(v28, v29);
      v0[4] = v32;
      v0[5] = v34;

      v35 = v0[8];
      v36 = v0[9];
      sub_1A7D5164C(v35, v36);
      v37 = sub_1A7E21A60();
      v39 = v38;
      sub_1A7CC7E50(v35, v36);
      v40 = v0[8];
      v41 = v0[9];
      v0[8] = v37;
      v0[9] = v39;
      sub_1A7CC7E50(v40, v41);
      v42 = v0[8];
      v43 = v0[9];
      sub_1A7D5164C(v42, v43);
      v44 = sub_1A7E03600(0, 0, v42, v43);
      sub_1A7CC7E50(v42, v43);
      v0[6] = v44;
      v45 = v0[8];
      v46 = v0[9];
      sub_1A7D5164C(v45, v46);
      v47 = sub_1A7E21A60();
      v49 = v48;
      sub_1A7CC7E50(v45, v46);
      v50 = v0[8];
      v51 = v0[9];
      v0[8] = v47;
      v0[9] = v49;
      sub_1A7CC7E50(v50, v51);
      v52 = v0[8];
      v53 = v0[9];
      sub_1A7D5164C(v52, v53);
      v54 = sub_1A7E03600(0, 0, v52, v53);
      sub_1A7CC7E50(v52, v53);
      v0[7] = v54;
      v55 = v0[8];
      v56 = v0[9];
      sub_1A7D5164C(v55, v56);
      v57 = sub_1A7E21A60();
      v59 = v58;
      sub_1A7CC7E50(v11, v13);
      sub_1A7CC7E50(v55, v56);
      v60 = v0[8];
      v61 = v0[9];
      v0[8] = v57;
      v0[9] = v59;
      return sub_1A7CC7E50(v60, v61);
    }

    sub_1A7E0B6B8();
    swift_allocError();
    v31 = 514;
  }

  else
  {
    sub_1A7E0B6B8();
    swift_allocError();
    v31 = 513;
  }

  *v30 = v31;
  swift_willThrow();
  return sub_1A7CC7E50(v11, v13);
}

uint64_t sub_1A7E0604C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v74 = a2;
  v5 = sub_1A7E21BA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v82 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A7CC7FFC(&qword_1EB2B5798);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v80 = &v71 - v11;
  v85 = sub_1A7E216A0();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v12);
  v91 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1A7E21BB0();
  v90 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A7E21B00();
  v18 = *(v17 - 8);
  v88 = v17;
  v89 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v84 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71 - v23;
  v78 = a1;
  sub_1A7E21A70();
  sub_1A7E21B90();
  sub_1A7CC7FFC(&qword_1EB2B8158);
  v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v77 = xmmword_1A7E418C0;
  *(v26 + 16) = xmmword_1A7E418C0;
  v27 = *MEMORY[0x1E6969A00];
  v81 = *(v6 + 104);
  v81(v26 + v25, v27, v5);
  sub_1A7D0C1F0(v26);
  swift_setDeallocating();
  v28 = v26 + v25;
  v29 = v91;
  v30 = v5;
  v31 = *(v6 + 8);
  v83 = v30;
  v79 = v6 + 8;
  v31(v28);
  swift_deallocClassInstance();
  sub_1A7E21B70();

  v32 = sub_1A7E21690();
  if (v33)
  {
    (*(v87 + 8))(v29, v85);
    (*(v90 + 8))(v16, v86);
    return (*(v89 + 8))(v24, v88);
  }

  v35 = v32;
  v72 = v24;
  v73 = v16;
  v36 = v88;
  v37 = v90;
  v38 = v82;
  v39 = v83;
  result = (v81)(v82, v27, v83);
  if (__OFSUB__(0, v35))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v40 = v80;
  v41 = v72;
  v42 = v73;
  sub_1A7E21B80();
  (v31)(v38, v39);
  v43 = v89;
  if ((*(v89 + 48))(v40, 1, v36) == 1)
  {
    (*(v87 + 8))(v91, v85);
    (*(v37 + 8))(v42, v86);
    (*(v43 + 8))(v41, v36);
    return sub_1A7CC9970(v40, &qword_1EB2B5798);
  }

  (*(v43 + 32))(v84, v40, v36);
  sub_1A7CC7FFC(&qword_1EB2B57B0);
  result = swift_allocObject();
  *(result + 16) = v77;
  v44 = round(v35 / 1000.0);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v45 = MEMORY[0x1E69E65A8];
  *(result + 56) = MEMORY[0x1E69E6530];
  *(result + 64) = v45;
  *(result + 32) = v44;
  v46 = sub_1A7E222C0();
  v48 = v47;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1A7E22B70();
  v49 = sub_1A7E21AA0();
  v50 = [v74 stringFromDate_];

  v51 = sub_1A7E22290();
  v53 = v52;

  v92 = v51;
  v93 = v53;
  MEMORY[0x1AC561C90](v46, v48);

  v54 = sub_1A7E21AA0();
  v55 = [v75 stringFromDate_];

  v56 = sub_1A7E22290();
  v58 = v57;

  MEMORY[0x1AC561C90](v56, v58);

  MEMORY[0x1AC561C90](32, 0xE100000000000000);
  v59 = *(v78 + 8);
  if (v59 > 3)
  {
    v60 = 4144959;
  }

  else
  {
    v60 = qword_1A7E56440[v59];
  }

  v61 = v86;
  v62 = v85;
  MEMORY[0x1AC561C90](v60, 0xE300000000000000);

  MEMORY[0x1AC561C90](8224, 0xE200000000000000);
  v63 = v78;
  v94 = *(v78 + 48);
  v64 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v64);

  MEMORY[0x1AC561C90](12098, 0xE200000000000000);
  v94 = *(v63 + 56);
  v65 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v65);

  MEMORY[0x1AC561C90](10272, 0xE200000000000000);
  LOBYTE(v94) = *(v63 + 16);
  v66 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v66);

  MEMORY[0x1AC561C90](47, 0xE100000000000000);
  LOBYTE(v94) = *(v63 + 17);
  v67 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v67);

  MEMORY[0x1AC561C90](0x209480E220, 0xA500000000000000);
  MEMORY[0x1AC561C90](*(v63 + 24), *(v63 + 32));
  MEMORY[0x1AC561C90](4414240, 0xE300000000000000);
  v94 = *(v63 + 40);
  v68 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v68);

  MEMORY[0x1AC561C90](665949, 0xE300000000000000);
  v92 = sub_1A7E03860(v92, v93);
  v93 = v69;
  sub_1A7E0B84C();
  sub_1A7E228B0();
  sub_1A7CC7E50(v92, v93);
  v70 = *(v89 + 8);
  v70(v84, v36);
  (*(v87 + 8))(v91, v62);
  (*(v90 + 8))(v73, v61);
  return (v70)(v72, v36);
}