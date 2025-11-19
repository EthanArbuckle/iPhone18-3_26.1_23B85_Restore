uint64_t sub_1E639327C()
{
  v58 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 272);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v5 = *(v1 + 72);
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v7 = swift_allocObject();
    *(v0 + 624) = v7;
    *(v7 + 16) = xmmword_1E65EA670;
    sub_1E5E1DA9C(v2, v7 + v6, type metadata accessor for RouteDestination);
    sub_1E611D1C0(v0 + 152);
    v8 = *(v0 + 160);
    *(v0 + 168) = *(v0 + 152);
    *(v0 + 176) = v8;
    sub_1E600F5B0((v0 + 161));
    v9 = swift_task_alloc();
    *(v0 + 632) = v9;
    *v9 = v0;
    v9[1] = sub_1E639383C;

    return RoutingContext.presentDestinations(_:style:priority:)(v7, (v0 + 168), (v0 + 161), v4, v3);
  }

  else
  {
    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v55 = sub_1E65E3B68();
    __swift_project_value_buffer(v55, qword_1EE2EA2A0);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[TrainerTipUpsellMonitorComposer] Failed to get routing context", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v14 = *(v0 + 448);
    v51 = *(v0 + 440);
    v53 = *(v0 + 456);
    v49 = *(v0 + 432);
    v15 = *(v0 + 424);
    v16 = *(v0 + 400);
    v46 = *(v0 + 408);
    v47 = *(v0 + 416);
    v17 = *(v0 + 328);
    v44 = *(v0 + 336);
    v45 = *(v0 + 392);
    v42 = *(v0 + 528);
    v43 = *(v0 + 320);
    v18 = *(v0 + 288);
    v41 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);

    v21 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078]);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E699F068], v21);
    swift_willThrow();

    sub_1E60111F8(v20);
    (*(v18 + 8))(v41, v19);
    (*(v17 + 8))(v44, v43);
    (*(v16 + 8))(v46, v45);
    (*(v15 + 8))(v49, v47);
    (*(v14 + 8))(v53, v51);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v55, qword_1EE2EA2A0);
    v24 = v22;
    v25 = sub_1E65E3B48();
    v26 = sub_1E65E6328();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = *(v0 + 96);
      v30 = MEMORY[0x1E694E6C0](*(v0 + 104), *(v0 + 112));
      v32 = sub_1E5DFD4B0(v30, v31, &v57);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1E5DE9000, v25, v26, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E694F1C0](v28, -1, -1);
      MEMORY[0x1E694F1C0](v27, -1, -1);
    }

    v33 = *(v0 + 456);
    v34 = *(v0 + 432);
    v35 = *(v0 + 408);
    v36 = *(v0 + 384);
    v37 = *(v0 + 360);
    v38 = *(v0 + 336);
    v39 = *(v0 + 312);
    v48 = *(v0 + 304);
    v50 = *(v0 + 296);
    v52 = *(v0 + 272);
    v54 = *(v0 + 248);
    v56 = *(v0 + 232);
    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1E639383C()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v8 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    sub_1E5F94E00(*(v2 + 168), *(v2 + 176));

    v5 = sub_1E6394024;
  }

  else
  {
    v6 = *(v2 + 624);
    sub_1E5F94E00(*(v2 + 168), *(v2 + 176));

    v5 = sub_1E6393980;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6393980()
{
  v1 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 456);
  v16 = *(v0 + 432);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  v19 = *(v0 + 384);
  v20 = *(v0 + 360);
  v4 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 392);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 232);

  sub_1E60111F8(v9);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E6393B48()
{
  v28 = v0;
  v1 = v0[59];

  v2 = v0[61];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[12];
    v10 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
    v12 = sub_1E5DFD4B0(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v13 = v0[57];
  v14 = v0[54];
  v15 = v0[51];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[42];
  v19 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[29];
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E6393DA0()
{
  v30 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  (*(v0[53] + 8))(v0[54], v0[52]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[67];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[12];
    v12 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
    v14 = sub_1E5DFD4B0(v12, v13, &v29);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v19 = v0[45];
  v20 = v0[42];
  v21 = v0[39];
  v24 = v0[38];
  v25 = v0[37];
  v26 = v0[34];
  v27 = v0[31];
  v28 = v0[29];
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E6394024()
{
  v43 = v0;
  v1 = *(v0 + 448);
  v38 = *(v0 + 440);
  v40 = *(v0 + 456);
  v36 = *(v0 + 432);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v32 = *(v0 + 408);
  v34 = *(v0 + 416);
  v4 = *(v0 + 328);
  v30 = *(v0 + 336);
  v31 = *(v0 + 392);
  v5 = *(v0 + 320);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);

  sub_1E60111F8(v8);
  (*(v6 + 8))(v7, v9);
  (*(v4 + 8))(v30, v5);
  (*(v3 + 8))(v32, v31);
  (*(v2 + 8))(v36, v34);
  (*(v1 + 8))(v40, v38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = *(v0 + 640);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  v12 = v10;
  v13 = sub_1E65E3B48();
  v14 = sub_1E65E6328();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 96);
    v18 = MEMORY[0x1E694E6C0](*(v0 + 104), *(v0 + 112));
    v20 = sub_1E5DFD4B0(v18, v19, &v42);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v13, v14, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E694F1C0](v16, -1, -1);
    MEMORY[0x1E694F1C0](v15, -1, -1);
  }

  v21 = *(v0 + 456);
  v22 = *(v0 + 432);
  v23 = *(v0 + 408);
  v24 = *(v0 + 384);
  v25 = *(v0 + 360);
  v26 = *(v0 + 336);
  v27 = *(v0 + 312);
  v33 = *(v0 + 304);
  v35 = *(v0 + 296);
  v37 = *(v0 + 272);
  v39 = *(v0 + 248);
  v41 = *(v0 + 232);
  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E639432C()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63915D0(v0 + v3, v5, v6);
}

uint64_t sub_1E6394458()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E65D7648();
  sub_1E65DDEF8();
  v4 = sub_1E65E5C48();

  [v2 setObject:v3 forKey:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E6394528(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E6394570()
{
  sub_1E65D7338();
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v0 = sub_1E65DFCF8();
  sub_1E63E9F24(v0, v1);
  sub_1E608F990();
  sub_1E65D7358();
  v2 = sub_1E65DFCE8();
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      return;
    }

    v14 = 0;
    v15 = 0;
    v16 = 1 << *(v4 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v4 + 56);
    if (v18)
    {
      while (1)
      {
        v19 = v15;
LABEL_24:
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v21 = dword_1E65FEC98[*(*(v4 + 48) + (v20 | (v19 << 6)))];
        if ((v21 & v14) != 0)
        {
          v21 = 0;
        }

        v14 |= v21;
        if (!v18)
        {
          goto LABEL_20;
        }
      }
    }

    while (1)
    {
LABEL_20:
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v19 >= ((v16 + 63) >> 6))
      {
        break;
      }

      v18 = *(v4 + 56 + 8 * v19);
      ++v15;
      if (v18)
      {
        v15 = v19;
        goto LABEL_24;
      }
    }

    v43 = v2;
    v44 = v3;
    v45 = v4;
    sub_1E6394AE4(v2, v3, v4, 2u);

    v46 = **(&unk_1E8797548 + v44);
    v47 = MEMORY[0x1E69DB8D8];
    if ((v44 & 0x100) == 0)
    {
      v47 = MEMORY[0x1E69DB8C8];
    }

    v48 = *v47;
    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    v49 = sub_1E65E64C8();

    v38 = v49;
    sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = 2;
    goto LABEL_49;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    if (v10)
    {
      while (1)
      {
        v11 = v7;
LABEL_11:
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v13 = dword_1E65FEC98[*(*(v3 + 48) + (v12 | (v11 << 6)))];
        if ((v13 & v6) != 0)
        {
          v13 = 0;
        }

        v6 |= v13;
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v11 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v10 = *(v3 + 56 + 8 * v11);
      ++v7;
      if (v10)
      {
        v7 = v11;
        goto LABEL_11;
      }
    }

    v30 = v2;
    v31 = v3;
    v32 = v4;
    sub_1E6394AE4(v2, v3, v4, 0);

    v33 = sub_1E61358A8(v30);
    v34 = MEMORY[0x1E69DB8C8];
    if ((v30 & 0x100) != 0)
    {
      v34 = MEMORY[0x1E69DB8D8];
    }

    v35 = *v34;
    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    v36 = v33;
    v37 = sub_1E65E64D8();

    v38 = v37;
    sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = 0;
LABEL_49:
    sub_1E6394B18(v39, v40, v41, v42);

    return;
  }

  v22 = 0;
  v23 = 0;
  v24 = 1 << *(v3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  for (i = v25 & *(v3 + 56); i; v22 |= v29)
  {
    v27 = v23;
LABEL_36:
    v28 = __clz(__rbit64(i));
    i &= i - 1;
    v29 = dword_1E65FEC98[*(*(v3 + 48) + (v28 | (v27 << 6)))];
    if ((v29 & v22) != 0)
    {
      v29 = 0;
    }
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= ((v24 + 63) >> 6))
    {
      v50 = v2;
      v51 = v3;
      v52 = v4;
      sub_1E6394AE4(v2, v3, v4, 1u);

      v53 = sub_1E61358A8(v50);
      v54 = MEMORY[0x1E69DB8C8];
      if ((v50 & 0x10000) != 0)
      {
        v54 = MEMORY[0x1E69DB8D8];
      }

      v55 = *v54;
      v56 = **(&unk_1E8797548 + (v50 >> 8));
      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      v57 = v53;
      v58 = sub_1E65E64D8();

      v38 = v58;
      sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      v39 = v50;
      v40 = v51;
      v41 = v52;
      v42 = 1;
      goto LABEL_49;
    }

    i = *(v3 + 56 + 8 * v27);
    ++v23;
    if (i)
    {
      v23 = v27;
      goto LABEL_36;
    }
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1E6394AE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1E6394AF8(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1E6394AF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1E6394B18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1E6394B2C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1E6394B2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1E6394B4C()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 32);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32);
  v9 = *(v0 + 71) >> 6;
  if (v9)
  {
    v10 = v0[7];
    if (v9 == 1)
    {
      v11 = *(v0 + 64);
      v20 = v0[9];
      v23 = *v0;
      v25 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
      sub_1E65D7FB8();
      if (v22 != 14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
        sub_1E65D7FB8();
        if (v22 != 9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
          sub_1E65D7FB8();
          if (v22 != 2)
          {
            v12 = nullsub_1(v22);
            sub_1E63B03C8(v20);
            return v12 | (v22 << 8) | ((v22 & 1) << 16);
          }
        }
      }
    }

    else
    {
      v21 = *v0;
      v15 = *(v0 + 47);
      v16 = *(v0 + 45);
      v17 = *(v0 + 41);
      v19 = *(v0 + 17);
      v18 = v0 + 17;
      v28 = *(v18 + 6);
      v27 = *(v18 + 4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
      sub_1E65D7FB8();
      if (v22 != 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
        sub_1E65D7FB8();
        if (v22 != 2)
        {
          sub_1E63B03C8(v10);
          return v21;
        }
      }
    }
  }

  else
  {
    v24 = *v0;
    v26 = v0[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    if (v22 != 14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      if (v22 != 2)
      {
        v14 = nullsub_1(v22);
        sub_1E63B03C8(v7 | (v8 << 8));
        return v14 | ((v22 & 1) << 8);
      }
    }
  }

  return 0;
}

uint64_t sub_1E6394EA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E6394F44, v4, v3);
}

uint64_t sub_1E6394F44()
{
  v1 = [*(v0 + 16) presentedViewController];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = *(v0 + 88);
    *(v0 + 64) = sub_1E65E6048();
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x1E69E88D0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1E63950BC;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v8 = *(v0 + 32);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E63950BC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E639521C, v6, v5);
}

uint64_t sub_1E639521C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1E6395288(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:a3 & 1 completion:v14];
  _Block_release(v14);
}

void sub_1E63954C0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:a4 & 1 completion:v16];
  _Block_release(v16);
}

void sub_1E6395714(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1E6395950;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:a3 & 1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1E6395954(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 120) = a1;
  *(v2 + 32) = sub_1E65E6058();
  *(v2 + 40) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E63959F4, v4, v3);
}

uint64_t sub_1E63959F4()
{
  v31 = v0;
  if (*(v0 + 120) == 1)
  {
    v1 = [*(v0 + 24) transitionCoordinator];
    *(v0 + 64) = v1;
    if (v1)
    {
      v2 = v1;
      if ([*(v0 + 24) _isCurrentTransitionPreemptable])
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v3 = sub_1E65E3B68();
        __swift_project_value_buffer(v3, qword_1EE2EA2A0);
        v4 = sub_1E65E3B48();
        v5 = sub_1E65E6338();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_1E5DE9000, v4, v5, "Current Transition is Preemptable", v6, 2u);
          MEMORY[0x1E694F1C0](v6, -1, -1);
        }

        v7 = *(v0 + 32);

        *(v0 + 104) = sub_1E65E6048();
        v8 = *(MEMORY[0x1E69E88D0] + 4);
        v9 = swift_task_alloc();
        *(v0 + 112) = v9;
        *v9 = v0;
        v9[1] = sub_1E63960CC;
      }

      else
      {
        *(v0 + 16) = *(v0 + 24);
        v18 = sub_1E65E5CE8();
        v20 = v19;
        *(v0 + 72) = v19;
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v21 = sub_1E65E3B68();
        __swift_project_value_buffer(v21, qword_1EE2EA2A0);

        v22 = sub_1E65E3B48();
        v23 = sub_1E65E6338();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v30 = v25;
          *v24 = 136446210;
          *(v24 + 4) = sub_1E5DFD4B0(v18, v20, &v30);
          _os_log_impl(&dword_1E5DE9000, v22, v23, "AsyncNavigation::waitForTransitionComplete %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1E694F1C0](v25, -1, -1);
          MEMORY[0x1E694F1C0](v24, -1, -1);
        }

        v26 = *(v0 + 32);
        *(v0 + 80) = sub_1E65E6048();
        v27 = swift_task_alloc();
        *(v0 + 88) = v27;
        v27[2] = v2;
        v27[3] = v18;
        v27[4] = v20;
        v28 = *(MEMORY[0x1E69E88D0] + 4);
        v29 = swift_task_alloc();
        *(v0 + 96) = v29;
        *v29 = v0;
        v29[1] = sub_1E6395EDC;
      }

      return MEMORY[0x1EEE6DDE0]();
    }

    v11 = *(v0 + 40);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "No transition coordinator", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }
  }

  else
  {
    v10 = *(v0 + 40);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E6395EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v9 = *v0;

  v6 = *(v1 + 56);
  v7 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E6396060, v7, v6);
}

uint64_t sub_1E6396060()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63960CC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E63969A0, v5, v4);
}

uint64_t sub_1E6396210(uint64_t a1)
{
  v2 = sub_1E65E4F38();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E4F68();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1E61259CC();
  v15 = sub_1E65E63C8();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_21;
  v18 = _Block_copy(aBlock);
  sub_1E65E4F48();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E623B174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v9, v5, v18);
  _Block_release(v18);

  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_1E6396558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_1E639690C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E63968A0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  [a2 animateAlongsideTransition:0 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1E639672C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);

  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1E5DFD4B0(a2, a3, &v11);
    _os_log_impl(&dword_1E5DE9000, v6, v7, "AsyncNavigation::waitForTransitionCompleted %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  return sub_1E65E5FF8();
}

uint64_t sub_1E63968A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E639690C(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_1E639672C(a1, v4, v5);
}

uint64_t sub_1E63969B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for AppState() + 292);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v3, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E6053A2C(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v14 = *v8;
      v15 = sub_1E65D76A8();
      (*(*(v15 - 8) + 8))(&v8[v13], v15);
      return v14;
    }

    sub_1E5DFE50C(v8, &unk_1ED077CC0, &unk_1E65F2610);
  }

  return 0;
}

uint64_t sub_1E6396BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v3, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E6053A2C(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v13 = *v8;
      v14 = sub_1E65D76A8();
      (*(*(v14 - 8) + 8))(&v8[v12], v14);
      return v13;
    }

    sub_1E5DFE50C(v8, &unk_1ED077CC0, &unk_1E65F2610);
  }

  return 0;
}

uint64_t sub_1E6396E04@<X0>(uint64_t *a1@<X8>)
{
  v155 = a1;
  v142 = type metadata accessor for ContentAvailabilityService();
  Description = v142[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v142);
  v139 = v3;
  v140 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for AccountService();
  v137 = v138[-1].Description;
  v4 = v137[8];
  MEMORY[0x1EEE9AC00](v138);
  v135 = v5;
  v136 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for AppStateService();
  v133 = v134[-1].Description;
  v6 = v133[8];
  MEMORY[0x1EEE9AC00](v134);
  v132 = v7;
  v154 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for RemoteBrowsingService();
  v158 = v160[-1].Description;
  v8 = v158[8];
  MEMORY[0x1EEE9AC00](v160);
  v128 = v9;
  v129 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v170 = &v126 - v12;
  v13 = type metadata accessor for ServiceSubscriptionService();
  v14 = v13[-1].Description;
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v151 = v16;
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v153 = *(v161 - 8);
  v18 = *(v153 + 64);
  v19 = MEMORY[0x1EEE9AC00](v161);
  v162 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v126 - v21;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v23 = sub_1E65E3B68();
  __swift_project_value_buffer(v23, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v24 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v167 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v25 = type metadata accessor for AppEnvironment();
  v26 = v25[7];
  v130 = v25[6];
  v152 = v26;
  v131 = v25[14];
  v27 = v25[27];
  v148 = v27;
  v157 = v25[25];
  v28 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v146 = v14[2];
  v147 = (v14 + 2);
  v146(v17, &v27[v24], v13);
  v144 = v13;
  v127 = *(v14 + 80);
  v29 = (v127 + 16) & ~v127;
  v145 = v127 | 7;
  v30 = swift_allocObject();
  v31 = v14[4];
  v149 = (v14 + 4);
  v150 = v31;
  v31(v30 + v29, v17, v13);

  v32 = v22;
  sub_1E65E4E08();
  v33 = v155;
  v34 = v161;
  v155[3] = v161;
  v33[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v36 = v153;
  v37 = v153 + 16;
  v38 = *(v153 + 16);
  v38(boxed_opaque_existential_1, v22, v34);
  v168 = v38;
  v163 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1E65FECC0;
  v143 = v17;
  v159 = sub_1E65E60A8();
  v39 = *(v159 - 8);
  v164 = *(v39 + 56);
  v166 = v39 + 56;
  v164(v170, 1, 1, v159);
  v40 = v158;
  v41 = v129;
  v42 = v160;
  (v158[2])(v129, v167 + v157, v160);
  v43 = v162;
  v38(v162, v32, v34);
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v157 = *(v36 + 80);
  v45 = (v128 + v157 + v44) & ~v157;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (v40[4])(v46 + v44, v41, v42);
  v47 = *(v36 + 32);
  v160 = (v36 + 32);
  v158 = v47;
  (v47)(v46 + v45, v43, v34);
  v48 = v170;
  v49 = sub_1E6059EAC(0, 0, v170, &unk_1E65FED10, v46);
  v50 = v165;
  *(v165 + 32) = v49;
  v51 = v159;
  v164(v48, 1, 1, v159);
  v52 = v143;
  v53 = v144;
  v146(v143, &v148[v167], v144);
  v54 = v43;
  v55 = v43;
  v156 = v32;
  v56 = v34;
  v168(v55, v32, v34);
  v57 = (v127 + 32) & ~v127;
  v129 = v57;
  v58 = (v151 + v57 + v157) & ~v157;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v60 = v59 + v57;
  v61 = v52;
  v150(v60, v52, v53);
  v62 = v158;
  (v158)(v59 + v58, v54, v56);
  v63 = v170;
  *(v50 + 40) = sub_1E6059EAC(0, 0, v170, &unk_1E65FED20, v59);
  v64 = v51;
  v65 = v164;
  v164(v63, 1, 1, v64);
  v66 = v144;
  v146(v61, &v148[v167], v144);
  v67 = v162;
  v68 = v32;
  v69 = v161;
  v168(v162, v68, v161);
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  v150(&v129[v70], v143, v66);
  v71 = v70 + v58;
  v72 = v69;
  v62(v71, v67, v69);
  v73 = v170;
  v74 = sub_1E6059EAC(0, 0, v170, &unk_1E65FED30, v70);
  *(v165 + 48) = v74;
  v65(v73, 1, 1, v159);
  v75 = v133;
  v151 = v133[2];
  v76 = v154;
  v77 = v134;
  v151(v154, v167 + v152, v134);
  v78 = v72;
  v168(v67, v156, v72);
  v79 = *(v75 + 80);
  v80 = (v79 + 32) & ~v79;
  v149 = v80;
  v81 = (v132 + v157 + v80) & ~v157;
  v150 = (v157 | v79);
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  v148 = v75[4];
  v83 = v82 + v80;
  v84 = v76;
  v85 = v76;
  v86 = v77;
  (v148)(v83, v84, v77);
  (v158)(v82 + v81, v67, v78);
  v87 = v170;
  v88 = sub_1E6059EAC(0, 0, v170, &unk_1E65FED40, v82);
  v89 = v165;
  *(v165 + 56) = v88;
  v90 = v159;
  v164(v87, 1, 1, v159);
  v91 = v167;
  v92 = v85;
  v93 = v86;
  v151(v92, v167 + v152, v86);
  v94 = v161;
  v95 = v162;
  v168(v162, v156, v161);
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  (v148)(v96 + v149, v154, v93);
  v97 = v95;
  v98 = v94;
  v99 = v158;
  (v158)(v96 + v81, v97, v94);
  v100 = v170;
  *(v89 + 64) = sub_1E6059EAC(0, 0, v170, &unk_1E65FED50, v96);
  v164(v100, 1, 1, v90);
  v101 = v137;
  v102 = v136;
  v103 = v138;
  (v137[2])(v136, v91 + v130, v138);
  v104 = v162;
  v105 = v156;
  v168(v162, v156, v98);
  v106 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v107 = v157;
  v108 = (v135 + v107 + v106) & ~v107;
  v109 = swift_allocObject();
  *(v109 + 16) = 0;
  *(v109 + 24) = 0;
  (v101[4])(v109 + v106, v102, v103);
  v110 = v109 + v108;
  v111 = v104;
  v112 = v161;
  v99(v110, v104, v161);
  v113 = v170;
  v114 = sub_1E6059EAC(0, 0, v170, &unk_1E65FED60, v109);
  *(v165 + 72) = v114;
  v164(v113, 1, 1, v159);
  v115 = Description;
  v116 = v140;
  v117 = v142;
  (Description[2])(v140, v167 + v131, v142);
  v118 = v111;
  v119 = v112;
  v168(v111, v105, v112);
  v120 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v121 = (v139 + v107 + v120) & ~v107;
  v122 = swift_allocObject();
  *(v122 + 16) = 0;
  *(v122 + 24) = 0;
  (v115[4])(v122 + v120, v116, v117);
  (v158)(v122 + v121, v118, v119);
  v123 = sub_1E6059EAC(0, 0, v170, &unk_1E65FED70, v122);
  v124 = v165;
  *(v165 + 80) = v123;
  result = (*(v153 + 8))(v105, v119);
  v155[5] = v124;
  return result;
}

uint64_t sub_1E6397D1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65D92D8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1E65E3B68();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6397E44, 0, 0);
}

uint64_t sub_1E6397E44()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[8], qword_1EE2EA2A0);
  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Fetching service subscription...", v3, 2u);
    MEMORY[0x1E694F1C0](v3, -1, -1);
  }

  v4 = v0[4];

  v5 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  v0[12] = v6;
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1E6398000;
  v9 = v0[3];

  return v11(v9, 1);
}

uint64_t sub_1E6398000()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E6398334;
  }

  else
  {
    v3 = sub_1E6398114;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6398114()
{
  v31 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[3];

  sub_1E65DE308();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v9)
  {
    v29 = v0[8];
    v16 = swift_slowAlloc();
    v27 = v8;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    sub_1E639C754();
    v18 = sub_1E65E6BC8();
    v28 = v10;
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_1E5DFD4B0(v18, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1E5DE9000, v7, v27, "Fetched %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E694F1C0](v17, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);

    (*(v11 + 8))(v28, v29);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1E6398334()
{
  v28 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  sub_1E65DE308();
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    v0[2] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v14 = sub_1E65E5CE8();
    v16 = sub_1E5DFD4B0(v14, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch subscription: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E694F1C0](v12, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[14];
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[7];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[14];

  return v24();
}

uint64_t sub_1E6398538(uint64_t a1)
{
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6397D1C(a1, v1 + v5);
}

uint64_t sub_1E6398614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6398780, 0, 0);
}

uint64_t sub_1E6398780()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E639887C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E639887C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6398994, 0, 0);
}

uint64_t sub_1E6398994()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6398A70;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6398A70()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6398B6C, 0, 0);
}

uint64_t sub_1E6398B6C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6398CBC, v7, v6);
  }
}

uint64_t sub_1E6398CBC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6398D40, 0, 0);
}

uint64_t sub_1E6398D40()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6398A70;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6398E00(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6398614(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6398F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A40, &qword_1E65FED78) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A48, &qword_1E65FED80);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63990C8, 0, 0);
}

uint64_t sub_1E63990C8()
{
  v1 = v0[2];
  v2 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E63991C4;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E63991C4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63992DC, 0, 0);
}

uint64_t sub_1E63992DC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E63993B8;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E63993B8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63994B4, 0, 0);
}

uint64_t sub_1E63994B4()
{
  v1 = v0[4];
  v2 = sub_1E65D92D8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6399604, v7, v6);
  }
}

uint64_t sub_1E6399604()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6399688, 0, 0);
}

uint64_t sub_1E6399688()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078A40, &qword_1E65FED78);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E63993B8;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6399748(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6398F5C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63998A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D0, &qword_1E65F6EC8);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C8, &qword_1E65F6EC0);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6399A10, 0, 0);
}

uint64_t sub_1E6399A10()
{
  v1 = v0[2];
  v2 = ServiceSubscriptionService.makeServiceSubscriptionPurchasedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6399B0C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6399B0C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6399C24, 0, 0);
}

uint64_t sub_1E6399C24()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6399D00;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6399D00()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6399DFC, 0, 0);
}

uint64_t sub_1E6399DFC()
{
  v1 = v0[4];
  v2 = sub_1E65DB868();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6399F4C, v7, v6);
  }
}

uint64_t sub_1E6399F4C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6399FD0, 0, 0);
}

uint64_t sub_1E6399FD0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0768C0, &qword_1E65F6EB8);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6399D00;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E639A090(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63998A4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639A1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639A320, 0, 0);
}

uint64_t sub_1E639A320()
{
  v1 = v0[2];
  v2 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E639A41C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E639A41C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639A534, 0, 0);
}

uint64_t sub_1E639A534()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E639A610;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E639A610()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639A70C, 0, 0);
}

uint64_t sub_1E639A70C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639A80C, v5, v4);
  }
}

uint64_t sub_1E639A80C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639A610;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E639A8D8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639A1EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639AB68, 0, 0);
}

uint64_t sub_1E639AB68()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E639AC64;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E639AC64()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639AD7C, 0, 0);
}

uint64_t sub_1E639AD7C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E639AE58;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E639AE58()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639AF54, 0, 0);
}

uint64_t sub_1E639AF54()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639B054, v5, v4);
  }
}

uint64_t sub_1E639B054()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639AE58;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E639B120(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639AA34(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639B3B0, 0, 0);
}

uint64_t sub_1E639B3B0()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E639B4AC;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E639B4AC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639B5C4, 0, 0);
}

uint64_t sub_1E639B5C4()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E639B6A0;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E639B6A0()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639B79C, 0, 0);
}

uint64_t sub_1E639B79C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639B89C, v5, v4);
  }
}

uint64_t sub_1E639B89C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639B6A0;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E639B968(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639B27C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639BAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639BC54, 0, 0);
}

uint64_t sub_1E639BC54()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[13] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1E639BD50;
  v6 = v0[9];

  return v8(v6);
}

uint64_t sub_1E639BD50()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639BE68, 0, 0);
}

uint64_t sub_1E639BE68()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1E639BF44;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v8);
}

uint64_t sub_1E639BF44()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E639C040, 0, 0);
}

uint64_t sub_1E639C040()
{
  if (*(v0 + 136) == 3)
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = sub_1E65D8D58();
  v7 = v6;
  if (v5 == sub_1E65D8D58() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E65E6C18();

    if ((v10 & 1) == 0)
    {
      v11 = *(MEMORY[0x1E69E8678] + 4);
      v12 = swift_task_alloc();
      *(v0 + 120) = v12;
      *v12 = v0;
      v12[1] = sub_1E639BF44;
      v13 = *(v0 + 96);
      v14 = *(v0 + 80);

      return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v14);
    }
  }

  v15 = *(v0 + 48);
  sub_1E65DE308();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Network condition changed to available, refreshing subscription state", v18, 2u);
    MEMORY[0x1E694F1C0](v18, -1, -1);
  }

  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 32);

  (*(v20 + 8))(v19, v21);
  sub_1E65E6058();
  *(v0 + 128) = sub_1E65E6048();
  v23 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E639C2DC, v23, v22);
}

uint64_t sub_1E639C2DC()
{
  v1 = v0[16];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1E639BF44;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v6);
}

uint64_t objectdestroy_3Tm_10(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E639C50C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639BAC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639C668@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65D76A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7 & 1;
  return result;
}

unint64_t sub_1E639C754()
{
  result = qword_1ED078A50;
  if (!qword_1ED078A50)
  {
    sub_1E65D92D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078A50);
  }

  return result;
}

uint64_t sub_1E639C7C4(uint64_t *a1, char a2, void *a3)
{
  v73 = a3;
  v5 = sub_1E65E3B68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v64[-v12];
  v14 = sub_1E65D8F28();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for PageMetricsClick();
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v64[-v24];
  v26 = *a1;
  if (*a1)
  {
    v72 = a1[9];
    v27 = *(a1 + 1);
    v71 = a2 & 1;
    v76 = *(a1 + 3);
    v77 = *(a1 + 5);
    v78 = *(a1 + 7);
    v28 = *(a1 + 1);
    v29 = *(a1 + 3);
    v80[2] = *(a1 + 2);
    v80[3] = v29;
    v80[4] = *(a1 + 4);
    v81 = v27;
    v80[0] = *a1;
    v80[1] = v28;
    v70 = v26;
    v67 = v21;
    v68 = v22;
    v69 = v23;
    sub_1E618A994(v80, v79);
    v74 = sub_1E639DE38(v73);
    v31 = v30;
    v32 = sub_1E65D9D78();
    (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    v33 = v18[5];
    v34 = *MEMORY[0x1E69CBAA0];
    v35 = sub_1E65D8C68();
    (*(*(v35 - 8) + 104))(&v25[v33], v34, v35);
    v36 = v18[6];
    v37 = sub_1E65D74E8();
    (*(*(v37 - 8) + 56))(&v25[v36], 1, 1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v38 = *(sub_1E65D86A8() - 8);
    v39 = *(v38 + 72);
    v40 = *(v38 + 80);
    v41 = v75;
    v66 = v14;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E65EA670;

    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v73 = v13;
    v65 = *MEMORY[0x1E69CBCB8];
    v75 = *(v41 + 104);
    (v75)(v17);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v43 = v74;
    sub_1E65D8678();
    v44 = v18[8];
    v45 = sub_1E65DA208();
    (*(*(v45 - 8) + 56))(&v25[v44], 1, 1, v45);
    (v75)(&v25[v18[14]], v65, v66);
    v46 = v18[15];
    v47 = sub_1E65D9908();
    (*(*(v47 - 8) + 56))(&v25[v46], 1, 1, v47);
    v48 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *&v25[v18[7]] = v42;
    v49 = &v25[v18[9]];
    *v49 = 0;
    v49[1] = 0;
    v50 = &v25[v18[10]];
    *v50 = 0;
    v50[1] = 0;
    *&v25[v18[11]] = v48;
    v51 = &v25[v18[12]];
    *v51 = 0;
    v51[1] = 0;
    v52 = &v25[v18[13]];
    *v52 = v43;
    v52[1] = v31;
    v53 = sub_1E65E60A8();
    v54 = v73;
    (*(*(v53 - 8) + 56))(v73, 1, 1, v53);
    v55 = v67;
    sub_1E639ECD8(v25, v67, type metadata accessor for PageMetricsClick);
    v56 = (*(v68 + 80) + 120) & ~*(v68 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    *(v57 + 32) = v71;
    *(v57 + 40) = v70;
    v58 = v76;
    *(v57 + 48) = v81;
    *(v57 + 64) = v58;
    v59 = v78;
    *(v57 + 80) = v77;
    *(v57 + 96) = v59;
    *(v57 + 112) = v72;
    sub_1E639ED40(v55, v57 + v56, type metadata accessor for PageMetricsClick);
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v54, &unk_1E65FEDA0, v57);

    swift_unknownObjectRelease();

    return sub_1E5FC0990(v25);
  }

  else
  {
    sub_1E65DB958();
    v61 = sub_1E65E3B48();
    v62 = sub_1E65E6338();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1E5DE9000, v61, v62, "Page metrics missing for award toasts", v63, 2u);
      MEMORY[0x1E694F1C0](v63, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1E639CFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v70 = a1;
  v76 = a3;
  v7 = type metadata accessor for AppComposer();
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v58 - v12;
  v14 = v13;
  v61 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  v17 = sub_1E65D7A38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v74 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  v24 = *(v18 + 16);
  v69 = v18 + 16;
  v71 = v24;
  v64 = v17;
  v24(&v58 - v22, a1, v17);
  v67 = *(v18 + 80);
  v25 = (v67 + 16) & ~v67;
  v77 = swift_allocObject();
  v26 = *(v18 + 32);
  v72 = v18 + 32;
  v73 = v26;
  v26(v77 + v25, v23, v17);
  v80 = swift_allocObject();
  v66 = a2;
  *(v80 + 16) = a2;
  sub_1E65E5148();

  v27 = sub_1E65E5138();
  v28 = v4;
  v59 = v4;
  v29 = v16;
  v60 = v16;
  sub_1E639ECD8(v4, v16, type metadata accessor for AppComposer);
  v30 = *(v79 + 80);
  v31 = (v30 + 48) & ~v30;
  v32 = v31 + v14;
  v79 = v30 | 7;
  v33 = (v31 + v14) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v63 = v34;
  v78 = &unk_1E65FEDB0;
  v35 = v77;
  v34[2] = &unk_1E65FEDB0;
  v34[3] = v35;
  v36 = MEMORY[0x1E69AB380];
  v62 = v27;
  v34[4] = v27;
  v34[5] = v36;
  sub_1E639ED40(v29, v34 + v31, type metadata accessor for AppComposer);
  *(v34 + v32) = 0;
  v37 = v34 + v33;
  v38 = v80;
  *(v37 + 1) = sub_1E617634C;
  *(v37 + 2) = v38;
  v39 = v28;
  v40 = v65;
  sub_1E639ECD8(v39, v65, type metadata accessor for AppComposer);
  v41 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v42[2] = v78;
  v42[3] = v35;
  v42[4] = v27;
  v42[5] = MEMORY[0x1E69AB380];
  sub_1E639ED40(v40, v42 + v31, type metadata accessor for AppComposer);
  v43 = v42 + v41;
  *v43 = sub_1E617634C;
  *(v43 + 1) = v38;
  v43[16] = 0;
  v44 = v59;
  v45 = v75;
  sub_1E639ECD8(v59, v75, type metadata accessor for AppComposer);
  v46 = v61;
  v47 = swift_allocObject();
  v65 = v47;
  *(v47 + 16) = v78;
  *(v47 + 24) = v35;
  sub_1E639ED40(v45, v47 + ((v30 + 32) & ~v30), type metadata accessor for AppComposer);
  v48 = v60;
  sub_1E639ECD8(v44, v60, type metadata accessor for AppComposer);
  v49 = v74;
  v50 = v64;
  v71(v74, v70, v64);
  v51 = (v30 + 16) & ~v30;
  v52 = (v46 + v67 + v51) & ~v67;
  v53 = (v68 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1E639ED40(v48, v54 + v51, type metadata accessor for AppComposer);
  v73(v54 + v52, v49, v50);
  *(v54 + v53) = v66;
  swift_retain_n();
  v55 = v62;
  swift_retain_n();

  v57 = v76;
  *v76 = v55;
  v57[1] = MEMORY[0x1E69AB380];
  v57[2] = &unk_1E65FEDC0;
  v57[3] = v54;
  v57[4] = &unk_1E65FA770;
  v57[5] = v63;
  v57[6] = &unk_1E65EB920;
  v57[7] = v42;
  v57[8] = &unk_1E65FA780;
  v57[9] = v65;
  return result;
}

uint64_t sub_1E639D544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E639D564, 0, 0);
}

uint64_t sub_1E639D564()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65D7A38();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E639D658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1E65D97D8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_1E65D8C88();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1E65D9F68();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639D918, 0, 0);
}

uint64_t sub_1E639D918()
{
  v1 = v0[2];
  v2 = type metadata accessor for AppComposer();
  v0[20] = v2;
  v3 = (v1 + *(v2 + 32));
  v0[21] = *v3;
  v0[22] = v3[1];
  v0[23] = swift_getObjectType();
  sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E639D9DC, v5, v4);
}

uint64_t sub_1E639D9DC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[3];

  sub_1E65DB6A8();

  return MEMORY[0x1EEE6DFA0](sub_1E639DA78, 0, 0);
}

uint64_t sub_1E639DA78()
{
  v27 = v0[20];
  v28 = v0[19];
  v1 = v0[17];
  v2 = v0[16];
  v29 = v1;
  v30 = v0[15];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v24 = v0[18];
  v25 = v0[6];
  v31 = v0[14];
  v32 = v0[5];
  v11 = v0[3];
  v10 = v0[4];
  v26 = v0[2];
  (*(v24 + 16))(v3);
  (*(v4 + 104))(v3, *MEMORY[0x1E69CC328], v5);
  v12 = sub_1E65D7A38();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = sub_1E65D9208();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = sub_1E65D9218();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_1E65D8CA8();
  v16 = sub_1E65D8CB8();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
  v18 = sub_1E65D9928();
  (*(*(v18 - 8) + 56))(v32, 1, 1, v18);

  sub_1E65D8C78();
  v19 = *(v27 + 20);
  v20 = v26 + *(type metadata accessor for AppEnvironment() + 80) + v19;
  v21 = MetricService.record.getter();
  v21(v2);

  (*(v30 + 8))(v2, v31);
  (*(v24 + 8))(v28, v29);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E639DE38(void *a1)
{
  v23 = sub_1E65D7048();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6 < 2)
  {
    if (!v6)
    {
      return 0;
    }

    v17 = a1[5];
    v25 = a1[4];
    v26 = v17;

    sub_1E65D7038();
    sub_1E5F9AEA8();
    v18 = sub_1E65E6698();
    (*(v2 + 8))(v5, v23);

    v25 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E6379A84();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v6, 0);
    v7 = v24;
    v22 = (v2 + 8);
    v8 = a1 + 5;
    do
    {
      v9 = *v8;
      v25 = *(v8 - 1);
      v26 = v9;

      sub_1E65D7038();
      sub_1E5F9AEA8();
      v10 = sub_1E65E6698();
      (*v22)(v5, v23);
      v25 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
      sub_1E6379A84();
      v11 = sub_1E65E5B68();
      v13 = v12;

      v24 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E601C0B8((v14 > 1), v15 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 2;
      --v6;
    }

    while (v6);
    v25 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  }

  v19 = sub_1E65E5B68();

  return v19;
}

uint64_t sub_1E639E108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v10 = *(a5 + 56);
    v13 = (*(a5 + 48) + **(a5 + 48));
    v11 = *(*(a5 + 48) + 4);
    v12 = swift_task_alloc();
    *(v6 + 16) = v12;
    *v12 = v6;
    v12[1] = sub_1E5DFE6BC;

    return v13(a6);
  }
}

uint64_t sub_1E639E238(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4 == 6)
  {
    v6 = *(a5 + 24);
    v11 = (*(a5 + 16) + **(a5 + 16));
    v7 = *(*(a5 + 16) + 4);
    v8 = swift_task_alloc();
    *(v5 + 16) = v8;
    *v8 = v5;
    v8[1] = sub_1E5DFE6BC;

    return v11();
  }

  else
  {
    v10 = *(v5 + 8);

    return v10();
  }
}

uint64_t sub_1E639E360(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55 - v7;
  v55 = &v55 - v7;
  v9 = sub_1E65D7048();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PageMetricsClick();
  v15 = (v14 - 8);
  v59 = *(v14 - 8);
  v16 = *(v59 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = sub_1E65D9D78();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = v15[7];
  v22 = *MEMORY[0x1E69CBAA0];
  v23 = sub_1E65D8C68();
  (*(*(v23 - 8) + 104))(&v19[v21], v22, v23);
  v24 = v15[8];
  v25 = sub_1E65D74E8();
  (*(*(v25 - 8) + 56))(&v19[v24], 1, 1, v25);
  v26 = v15[10];
  v27 = sub_1E65DA208();
  (*(*(v27 - 8) + 56))(&v19[v26], 1, 1, v27);
  v61 = v56;
  v62 = v57;
  sub_1E65D7038();
  sub_1E5F9AEA8();
  v28 = sub_1E65E6698();
  (*(v10 + 8))(v13, v9);
  v61 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E6379A84();
  v29 = sub_1E65E5B68();
  v31 = v30;

  v32 = v15[16];
  v33 = *MEMORY[0x1E69CBCD8];
  v34 = sub_1E65D8F28();
  (*(*(v34 - 8) + 104))(&v19[v32], v33, v34);
  v35 = v15[17];
  v36 = sub_1E65D9908();
  (*(*(v36 - 8) + 56))(&v19[v35], 1, 1, v36);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *&v19[v15[9]] = v37;
  v39 = &v19[v15[11]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v19[v15[12]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *&v19[v15[13]] = v38;
  v41 = &v19[v15[14]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v19[v15[15]];
  *v42 = v29;
  v42[1] = v31;
  v43 = sub_1E65E60A8();
  (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
  v44 = *a1;
  v45 = a1[3];
  v46 = a1[5];
  v47 = a1[7];
  v57 = a1[9];
  v48 = v58;
  sub_1E639ECD8(v19, v58, type metadata accessor for PageMetricsClick);
  v49 = (*(v59 + 80) + 120) & ~*(v59 + 80);
  v50 = swift_allocObject();
  v51 = *a1;
  *(v50 + 56) = *(a1 + 1);
  v52 = *(a1 + 3);
  *(v50 + 72) = *(a1 + 2);
  *(v50 + 88) = v52;
  *(v50 + 104) = *(a1 + 4);
  v53 = v60 & 1;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v53;
  *(v50 + 40) = v51;
  sub_1E639ED40(v48, v50 + v49, type metadata accessor for PageMetricsClick);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v55, &unk_1E65FED90, v50);

  return sub_1E5FC0990(v19);
}

uint64_t sub_1E639E8D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v10 = *(a5 + 56);
    v13 = (*(a5 + 48) + **(a5 + 48));
    v11 = *(*(a5 + 48) + 4);
    v12 = swift_task_alloc();
    *(v6 + 16) = v12;
    *v12 = v6;
    v12[1] = sub_1E5DFA78C;

    return v13(a6);
  }
}

uint64_t sub_1E639EA04(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E639E8D4(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t sub_1E639EB00(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E639E108(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t sub_1E639EBFC(uint64_t a1)
{
  v4 = *(sub_1E65D7A38() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E639D544(a1, v1 + v5);
}

uint64_t sub_1E639ECD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E639ED40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E639EDA8()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1E65D7A38() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E639D658(v0 + v3, v0 + v6, v7);
}

uint64_t MetricAccountEventDetour.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetricAccountEventDetour.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricAccountEventDetour.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1E65D8C88();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1E65E3B68();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v17 = type metadata accessor for RouteResource();
  v4[19] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v19 = sub_1E65DE3E8();
  v4[21] = v19;
  v20 = *(v19 - 8);
  v4[22] = v20;
  v21 = *(v20 + 64) + 15;
  v4[23] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v23 = sub_1E65D97D8();
  v4[25] = v23;
  v24 = *(v23 - 8);
  v4[26] = v24;
  v25 = *(v24 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639F2FC, 0, 0);
}

uint64_t sub_1E639F2FC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[3];
  sub_1E639FAE4(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E637E638(v0[24]);
    goto LABEL_17;
  }

  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[5];
  (*(v0[26] + 32))(v0[28], v0[24], v0[25]);
  v9 = *(v8 + 32);
  v10 = sub_1E65DAE18();
  (*(v7 + 104))(v5, *MEMORY[0x1E69CAD28], v6);
  v11 = sub_1E637C87C(v5, v10);

  (*(v7 + 8))(v5, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = v0[19];
  sub_1E637E808(v0[3], v0[20], type metadata accessor for RouteResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[20];
  if (EnumCaseMultiPayload != 3)
  {
    sub_1E637E870(v0[20], type metadata accessor for RouteResource);
    goto LABEL_9;
  }

  v15 = *(v14 + 8);

  v16 = *(v14 + 16);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  v18 = sub_1E65D72D8();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  v19 = sub_1E65E03C8();
  v21 = v20;
  if (v19 != sub_1E65E03C8() || v21 != v22)
  {
    v51 = sub_1E65E6C18();

    if (v51)
    {
      goto LABEL_13;
    }

LABEL_9:
    v23 = v0[18];
    sub_1E65DE348();
    v24 = sub_1E65E3B48();
    v25 = sub_1E65E6308();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1E5DE9000, v24, v25, "GDPR consented through interception, sending metric account event.", v26, 2u);
      MEMORY[0x1E694F1C0](v26, -1, -1);
    }

    v27 = v0[27];
    v28 = v0[28];
    v29 = v0[25];
    v30 = v0[26];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];
    v34 = v0[11];
    v67 = v0[10];
    v68 = v0[9];
    v70 = v0[8];
    v72 = v0[7];
    v74 = v0[6];
    v76 = v0[14];

    (*(v33 + 8))(v31, v32);
    (*(v30 + 16))(v27, v28, v29);
    v35 = sub_1E65D7A38();
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    v36 = sub_1E65D9208();
    (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
    v37 = sub_1E65D9218();
    (*(*(v37 - 8) + 56))(v68, 1, 1, v37);
    sub_1E65D8CA8();
    v38 = sub_1E65D8CB8();
    (*(*(v38 - 8) + 56))(v70, 0, 1, v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
    v40 = sub_1E65D9928();
    (*(*(v40 - 8) + 56))(v74, 1, 1, v40);
    sub_1E65D8C78();
    sub_1E65E6158();
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[12];
    v47 = v0[4];
    v48 = v47 + *(type metadata accessor for AppComposer() + 20);
    v49 = v48 + *(type metadata accessor for AppEnvironment() + 80);
    v50 = MetricService.record.getter();
    v50(v44);

    goto LABEL_16;
  }

LABEL_13:
  v52 = v0[17];
  sub_1E65DE348();
  v53 = sub_1E65E3B48();
  v54 = sub_1E65E6338();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1E5DE9000, v53, v54, "[MetricAccountEventInterceptor] dropping account event for trainer tips gallery request", v55, 2u);
    MEMORY[0x1E694F1C0](v55, -1, -1);
  }

  v41 = v0[28];
  v42 = v0[25];
  v43 = v0[26];
  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[15];

LABEL_16:
  (*(v45 + 8))(v44, v46);
  (*(v43 + 8))(v41, v42);
LABEL_17:
  v57 = v0[27];
  v56 = v0[28];
  v59 = v0[23];
  v58 = v0[24];
  v60 = v0[20];
  v61 = v0[17];
  v62 = v0[18];
  v63 = v0[14];
  v64 = v0[11];
  v69 = v0[10];
  v71 = v0[9];
  v73 = v0[8];
  v75 = v0[7];
  v77 = v0[6];
  sub_1E637E808(v0[3], v0[2], type metadata accessor for RouteDestination);

  v65 = v0[1];

  return v65();
}

uint64_t sub_1E639FAE4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RouteSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RouteDestination();
  if (sub_1E637E938(1, *(v1 + *(v11 + 24))))
  {
    sub_1E637E808(v1 + *(v11 + 20), v6, type metadata accessor for RouteSource);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1E639FF20(v6, v10);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A58, &unk_1E65FEE30);
      v13 = *(v12 + 48);
      v14 = *(v12 + 64);
      v15 = sub_1E65D74E8();
      v16 = *(v15 - 8);
      (*(v16 + 32))(a1, v10, v15);
      (*(v16 + 56))(a1, 0, 1, v15);
      sub_1E6009E5C(&v10[*(v7 + 20)], a1 + v13);
      *(a1 + v14) = *&v10[*(v7 + 24)];
    }

    else
    {
      sub_1E637E870(v6, type metadata accessor for RouteSource);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A58, &unk_1E65FEE30);
      v21 = *(v20 + 48);
      v22 = (a1 + *(v20 + 64));
      v23 = sub_1E65D74E8();
      v24 = *(*(v23 - 8) + 56);
      v24(a1, 1, 1, v23);
      v24(a1 + v21, 1, 1, v23);
      *v22 = 0;
      v22[1] = 0;
    }

    v25 = *MEMORY[0x1E69CC350];
    v26 = sub_1E65D97D8();
    v27 = *(v26 - 8);
    (*(v27 + 104))(a1, v25, v26);
    return (*(v27 + 56))(a1, 0, 1, v26);
  }

  else
  {
    v17 = sub_1E65D97D8();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

uint64_t sub_1E639FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return MetricAccountEventDetour.resolveDetour(for:composer:display:)(a1, a2, a3);
}

uint64_t sub_1E639FF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E639FFE0(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v2 = sub_1E65D76F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E5908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A68, &qword_1E65FEF48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_1E65E52E8();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  (*(v8 + 104))(v11, *MEMORY[0x1E69CD980], v7);
  v18 = objc_allocWithZone(sub_1E65E5508());
  v19 = sub_1E65E54E8();
  v20 = v23;
  (*(v3 + 16))(v6, v23, v2);
  v21 = *(v20 + *(v24 + 20));
  sub_1E65E52D8();
  v17(v15, 0, 1, v16);
  sub_1E65E54F8();
  return v19;
}

uint64_t sub_1E63A024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65D76F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A68, &qword_1E65FEF48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  (*(v6 + 16))(v9, v3, v5);
  v14 = *(v3 + *(a3 + 20));
  sub_1E65E52D8();
  v15 = sub_1E65E52E8();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  return sub_1E65E54F8();
}

uint64_t sub_1E63A03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E63A0530(&qword_1ED078A60);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E63A046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E63A0530(&qword_1ED078A60);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E63A04EC()
{
  sub_1E63A0530(&qword_1ED078A60);
  sub_1E65E40F8();
  __break(1u);
}

uint64_t sub_1E63A0530(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanArtworkViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E63A0574@<X0>(uint64_t a1@<X0>, int *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, char *a14, int *a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  v984 = a8;
  v1033 = a7;
  v994 = a6;
  v1038 = a5;
  v1017 = a4;
  v1029 = a3;
  v1037 = a2;
  v1022 = a1;
  v1045 = a9;
  v1016 = a21;
  v939 = a20;
  v996 = a18;
  v1000 = a17;
  v997 = a16;
  v1035 = a14;
  v1036 = a15;
  v1018 = a13;
  v1030 = a12;
  LODWORD(v1040) = a11;
  v1032 = a10;
  v992 = sub_1E65DB268();
  v991 = *(v992 - 8);
  v21 = *(v991 + 64);
  MEMORY[0x1EEE9AC00](v992);
  v990 = &v937 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v989 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v988 = *(v989 - 8);
  v23 = *(v988 + 64);
  MEMORY[0x1EEE9AC00](v989);
  v987 = &v937 - v24;
  v980 = sub_1E65E0968();
  v1014 = *(v980 - 8);
  v25 = *(v1014 + 64);
  MEMORY[0x1EEE9AC00](v980);
  v1013 = &v937 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A70, &qword_1E65FEF58);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v983 = &v937 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v982 = &v937 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v957 = &v937 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v955 = &v937 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v956 = &v937 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v954 = &v937 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A78, &qword_1E65FEF60);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v960 = &v937 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v959 = &v937 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v986 = &v937 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v958 = &v937 - v49;
  v943 = sub_1E65E07B8();
  v942 = *(v943 - 8);
  v50 = *(v942 + 64);
  v51 = MEMORY[0x1EEE9AC00](v943);
  v944 = &v937 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v952 = &v937 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v951 = &v937 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v948 = &v937 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v950 = &v937 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v949 = &v937 - v61;
  v1015 = sub_1E65E0A08();
  v1001 = *(v1015 - 8);
  v62 = *(v1001 + 64);
  MEMORY[0x1EEE9AC00](v1015);
  v966 = &v937 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v993 = &v937 - v66;
  v67 = sub_1E65D7268();
  v68 = *(v67 - 8);
  v1042 = v67;
  v1043 = v68;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v1041 = &v937 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v973 = &v937 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v969 = &v937 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v976 = &v937 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v974 = &v937 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v970 = &v937 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v972 = &v937 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v1012 = &v937 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v1010 = &v937 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v1006 = &v937 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v975 = &v937 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v1009 = &v937 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v1005 = &v937 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v1011 = &v937 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v1008 = &v937 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v968 = &v937 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v1003 = &v937 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v978 = &v937 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v1004 = &v937 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v1007 = &v937 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v113 = &v937 - v112;
  v114 = MEMORY[0x1EEE9AC00](v111);
  v977 = &v937 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v1002 = &v937 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v971 = &v937 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v967 = &v937 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v124 = &v937 - v123;
  v125 = MEMORY[0x1EEE9AC00](v122);
  v127 = &v937 - v126;
  v128 = MEMORY[0x1EEE9AC00](v125);
  v130 = &v937 - v129;
  v131 = MEMORY[0x1EEE9AC00](v128);
  v962 = &v937 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v965 = &v937 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v961 = &v937 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v964 = &v937 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v963 = &v937 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v953 = &v937 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v985 = &v937 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v981 = &v937 - v146;
  MEMORY[0x1EEE9AC00](v145);
  v979 = &v937 - v147;
  v1044 = sub_1E65D7348();
  v1034 = *(v1044 - 8);
  v148 = *(v1034 + 8);
  v149 = MEMORY[0x1EEE9AC00](v1044);
  v151 = &v937 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v149);
  v1031 = &v937 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v947 = &v937 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v946 = &v937 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v995 = &v937 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v999 = &v937 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v998 = &v937 - v163;
  v164 = MEMORY[0x1EEE9AC00](v162);
  v945 = &v937 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v941 = &v937 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v940 = &v937 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v938 = &v937 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v174 = &v937 - v173;
  v175 = MEMORY[0x1EEE9AC00](v172);
  v177 = &v937 - v176;
  v178 = MEMORY[0x1EEE9AC00](v175);
  v1019 = &v937 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v1021 = &v937 - v181;
  MEMORY[0x1EEE9AC00](v180);
  v1020 = &v937 - v182;
  v1028 = sub_1E65E0858();
  v1027 = *(v1028 - 1);
  v183 = *(v1027 + 8);
  v184 = MEMORY[0x1EEE9AC00](v1028);
  v186 = &v937 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v184);
  v1024 = &v937 - v187;
  v1026 = sub_1E65E0908();
  v1025 = *(v1026 - 8);
  v188 = *(v1025 + 64);
  MEMORY[0x1EEE9AC00](v1026);
  v1023 = &v937 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1E65E03F8();
  v191 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v193 = (&v937 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E63A7AF0(v1039, v193);
  v1039 = v193;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v325 = sub_1E65DAE38();
      v326 = sub_1E65DAE38();
      v327 = v1045;
      v328 = v997;
      v1031 = v326;
      v1029 = v325;
      if (v1016 == 7)
      {
        goto LABEL_89;
      }

      v569 = v326;
      v570 = sub_1E65D9B18();
      v572 = v571;
      v573 = sub_1E65D9B18();
      if (v570 == v573 && v572 == v574)
      {
        goto LABEL_215;
      }

      v761 = sub_1E65E6C18();

      if (v761)
      {
        goto LABEL_327;
      }

      v874 = sub_1E65D9B18();
      v876 = v875;
      if (v874 == sub_1E65D9B18() && v876 == v877)
      {
LABEL_215:

LABEL_327:
        if (v325 == v569)
        {
          sub_1E65E0778();
          sub_1E65E0768();
          sub_1E65E0778();
        }

        else
        {
          sub_1E65E0768();
          sub_1E65E0768();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
          v770 = v948;
          sub_1E65E0668();
          sub_1E65E0798();
          (*(v942 + 8))(v770, v943);
          sub_1E65E0768();
        }

        sub_1E65E0778();
        sub_1E65E0778();
        v762 = v966;
        sub_1E65E09E8();
        v771 = v1038;
        v772 = v1036;
        (*(v1001 + 16))(v327, v762, v1015);
        v773 = sub_1E65DAE38();
        v774 = sub_1E65DAE38();
        v775 = sub_1E65E4B48();
        v776 = 4.0;
        if (v775)
        {
          v776 = 8.0;
        }

        v777 = 16.0;
        if (v775)
        {
          v777 = 18.0;
        }

        if (v773 == v774)
        {
          v778 = v777;
        }

        else
        {
          v778 = v776;
        }

        if (v773 == v774)
        {
          v779 = 12.0;
        }

        else
        {
          v779 = 8.0;
        }

        v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
        v781 = v327 + v780[12];
        v782 = v780[16];
        v1038 = v780;
        v783 = v780[20];
        sub_1E64FB75C(v781);
        v784 = type metadata accessor for ArtworkDescriptor();
        *(v781 + v784[5]) = MEMORY[0x1E69E7CD0];
        v785 = v781 + v784[6];
        *v785 = 0;
        *(v785 + 8) = v778;
        *(v785 + 16) = v778;
        *(v785 + 24) = v779;
        *(v781 + v784[7]) = 1;
        v786 = (v781 + v784[8]);
        *v786 = v1035;
        v786[1] = v772;
        v787 = *MEMORY[0x1E699DAA8];
        v788 = sub_1E65E0988();
        (*(*(v788 - 8) + 104))(v327 + v782, v787, v788);
        v789 = v953;
        sub_1E5DFD1CC(v771, v953, &qword_1ED072D90, &qword_1E66040F0);
        v790 = sub_1E65D72D8();
        v791 = *(v790 - 8);
        v792 = *(v791 + 6);
        v793 = (v792)(v789, 1, v790);
        v1037 = v791;
        v1035 = v792;
        v1040 = (v791 + 12);
        if (v793 == 1)
        {

          sub_1E5DFE50C(v789, &qword_1ED072D90, &qword_1E66040F0);
          v794 = 1;
          v795 = v1045;
          v796 = v1033;
        }

        else
        {
          v1028 = v783;
          if (v1029 == v1031)
          {
            v797 = qword_1ED071AE0;

            if (v797 != -1)
            {
              swift_once();
            }

            v798 = qword_1ED096618;
          }

          else
          {
            v879 = qword_1ED071A78;

            if (v879 != -1)
            {
              swift_once();
            }

            v798 = qword_1ED0964E0;
          }

          v880 = v1044;
          v881 = __swift_project_value_buffer(v1044, v798);
          v882 = v1034;
          v883 = v940;
          (*(v1034 + 2))(v940, v881, v880);
          v885 = v1042;
          v884 = v1043;
          v886 = v1041;
          (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
          sub_1E6258850();
          v795 = v1045;
          v783 = v1028;
          sub_1E65D73C8();
          (*(v884 + 8))(v886, v885);
          (*(v882 + 1))(v883, v1044);
          v791 = v1037;
          (*(v1037 + 1))(v789, v790);
          v794 = 0;
          v796 = v1033;
          v792 = v1035;
        }

        v887 = v963;
        v888 = (v791 + 14);
        v889 = *(v791 + 7);
        (v889)(v783 + v795, v794, 1, v790);
        v890 = v1038;
        v891 = v1038[24];
        sub_1E5DFD1CC(v796, v887, &qword_1ED072D90, &qword_1E66040F0);
        v892 = (v792)(v887, 1, v790);
        v893 = v1015;
        v894 = v1031;
        v1036 = v889;
        if (v892 == 1)
        {
          sub_1E5DFE50C(v887, &qword_1ED072D90, &qword_1E66040F0);
          v895 = 1;
          v896 = v1045;
          v897 = v964;
        }

        else
        {
          v1033 = v891;
          if (v1029 == v1031)
          {
            if (qword_1ED071AD8 != -1)
            {
              swift_once();
            }

            v898 = qword_1ED096600;
          }

          else
          {
            if (qword_1ED071A70 != -1)
            {
              swift_once();
            }

            v898 = qword_1ED0964C8;
          }

          v899 = v1044;
          v900 = __swift_project_value_buffer(v1044, v898);
          v901 = v1034;
          v902 = v941;
          (*(v1034 + 2))(v941, v900, v899);
          v904 = v1042;
          v903 = v1043;
          v905 = v1041;
          (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
          sub_1E6258850();
          v896 = v1045;
          v891 = v1033;
          v906 = v963;
          sub_1E65D73C8();
          (*(v903 + 8))(v905, v904);
          (*(v901 + 1))(v902, v1044);
          (*(v1037 + 1))(v906, v790);
          v895 = 0;
          v893 = v1015;
          v894 = v1031;
          v897 = v964;
          v890 = v1038;
          v889 = v1036;
        }

        v1033 = v888;
        (v889)(v896 + v891, v895, 1, v790);
        v907 = v890[28];
        sub_1E5DFD1CC(v1032, v897, &qword_1ED072D90, &qword_1E66040F0);
        if ((v1035)(v897, 1, v790) == 1)
        {
          v908 = *(v1001 + 8);
          v908(v966, v893);
          sub_1E5DFE50C(v897, &qword_1ED072D90, &qword_1E66040F0);
          v909 = 1;
          v910 = v1045;
        }

        else
        {
          if (v1029 == v894)
          {
            v910 = v1045;
            if (qword_1ED071AD0 != -1)
            {
              swift_once();
            }

            v911 = qword_1ED0965E8;
          }

          else
          {
            v910 = v1045;
            if (qword_1ED071A68 != -1)
            {
              swift_once();
            }

            v911 = qword_1ED0964B0;
          }

          v912 = v1044;
          v913 = __swift_project_value_buffer(v1044, v911);
          v914 = v1034;
          v915 = v945;
          (*(v1034 + 2))(v945, v913, v912);
          v917 = v1042;
          v916 = v1043;
          v918 = v1041;
          (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
          sub_1E6258850();
          v919 = v964;
          sub_1E65D73C8();
          (*(v916 + 8))(v918, v917);
          (*(v914 + 1))(v915, v912);
          v908 = *(v1001 + 8);
          v893 = v1015;
          v908(v966, v1015);
          (*(v1037 + 1))(v919, v790);
          v909 = 0;
          v890 = v1038;
          v889 = v1036;
        }

        (v889)(v910 + v907, v909, 1, v790);
        v920 = v890[36];
        v921 = v890[40];
        sub_1E5DFD1CC(v1030, v910 + v890[32], &qword_1ED072638, &qword_1E65EB950);
        sub_1E5DFD1CC(v1018, v910 + v920, &qword_1ED072638, &qword_1E65EB950);
        v922 = type metadata accessor for ViewDescriptor();
        (*(*(v922 - 8) + 56))(v910 + v921, 1, 1, v922);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
        swift_storeEnumTagMultiPayload();
        return (v908)(v1039, v893);
      }

      v878 = sub_1E65E6C18();

      if (v878)
      {
        goto LABEL_327;
      }

LABEL_89:
      v329 = v996;
      if (v996 == 0xFF)
      {
        goto LABEL_258;
      }

      v1048 = v328;
      v1049 = v1000;
      v1050 = v996;
      v1046 = xmmword_1E65FE4F0;
      v1047 = 1;
      sub_1E5F8710C(v328, v1000, v996 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      v330 = sub_1E65D7FD8();
      sub_1E5FEE4CC(v1048, v1049, v1050);
      if ((v330 & 1) == 0)
      {
LABEL_258:
        v331 = v1034;
        if (qword_1ED071A60 != -1)
        {
          swift_once();
        }

        v660 = v1044;
        v661 = __swift_project_value_buffer(v1044, qword_1ED096498);
        v1028 = *(v331 + 2);
        (v1028)(v998, v661, v660);
        v334 = v1036;
        if (v329 == -1)
        {
          goto LABEL_265;
        }
      }

      else
      {
        v331 = v1034;
        if (qword_1ED071A78 != -1)
        {
          swift_once();
        }

        v332 = v1044;
        v333 = __swift_project_value_buffer(v1044, qword_1ED0964E0);
        v1028 = *(v331 + 2);
        (v1028)(v998, v333, v332);
        v334 = v1036;
      }

      v1048 = v328;
      v1049 = v1000;
      v1050 = v329;
      v1046 = xmmword_1E65FE4F0;
      v1047 = 1;
      sub_1E5F8710C(v328, v1000, v329 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      v662 = sub_1E65D7FD8();
      sub_1E5FEE4CC(v1048, v1049, v1050);
      if (v662)
      {
        if (qword_1ED071A70 != -1)
        {
          swift_once();
        }

        v663 = qword_1ED0964C8;
        goto LABEL_268;
      }

LABEL_265:
      if (qword_1ED071A58 != -1)
      {
        swift_once();
      }

      v663 = qword_1ED096480;
LABEL_268:
      v664 = v1031;
      v665 = v1044;
      v666 = __swift_project_value_buffer(v1044, v663);
      v1027 = v331 + 4;
      (v1028)(v999, v666, v665);
      v667 = v1000;
      sub_1E63A7B54(v325 == v664, v328, v1000, v329, v995);
      sub_1E637A270(v1040, v328, v667, v329, v327);
      v668 = sub_1E65DAE38();
      v669 = sub_1E65DAE38();
      v670 = sub_1E65E4B48();
      v671 = 4.0;
      if (v670)
      {
        v671 = 8.0;
      }

      v672 = 16.0;
      if (v670)
      {
        v672 = 18.0;
      }

      if (v668 == v669)
      {
        v673 = v672;
      }

      else
      {
        v673 = v671;
      }

      if (v668 == v669)
      {
        v674 = 12.0;
      }

      else
      {
        v674 = 8.0;
      }

      v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
      v676 = v327 + v675[12];
      v677 = v675[16];
      v678 = v675[20];
      sub_1E64FB75C(v676);
      v679 = type metadata accessor for ArtworkDescriptor();
      *(v676 + v679[5]) = MEMORY[0x1E69E7CD0];
      v680 = v676 + v679[6];
      *v680 = 0;
      *(v680 + 8) = v673;
      *(v680 + 16) = v673;
      *(v680 + 24) = v674;
      *(v676 + v679[7]) = 1;
      v681 = (v676 + v679[8]);
      *v681 = v1035;
      v681[1] = v334;
      v682 = *MEMORY[0x1E699DAA0];
      v683 = sub_1E65E0988();
      (*(*(v683 - 8) + 104))(v327 + v677, v682, v683);
      v684 = v961;
      sub_1E5DFD1CC(v1038, v961, &qword_1ED072D90, &qword_1E66040F0);
      v685 = sub_1E65D72D8();
      v686 = *(v685 - 8);
      v687 = *(v686 + 6);
      v688 = v687(v684, 1, v685);
      v1037 = (v686 + 48);
      v1038 = v675;
      v1035 = v686;
      if (v688 == 1)
      {

        sub_1E5DFE50C(v684, &qword_1ED072D90, &qword_1E66040F0);
        v689 = 1;
        v690 = v1045;
        v691 = v1033;
        v692 = v965;
        v693 = v678;
      }

      else
      {
        v1026 = v687;
        if (v325 == v664)
        {
          v694 = qword_1ED071AC8;

          v695 = v678;
          if (v694 != -1)
          {
            swift_once();
          }

          v696 = v1044;
          v697 = __swift_project_value_buffer(v1044, qword_1ED0965D0);
          v698 = v946;
          (v1028)(v946, v697, v696);
        }

        else
        {
          v698 = v946;
          v696 = v1044;
          (v1028)(v946, v998, v1044);

          v695 = v678;
        }

        v833 = v1042;
        v832 = v1043;
        v834 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v690 = v1045;
        v693 = v695;
        sub_1E65D73C8();
        (*(v832 + 8))(v834, v833);
        (*(v1034 + 1))(v698, v696);
        v686 = v1035;
        (*(v1035 + 1))(v684, v685);
        v689 = 0;
        v691 = v1033;
        v675 = v1038;
        v687 = v1026;
        v692 = v965;
      }

      v1040 = *(v686 + 7);
      (v1040)(v690 + v693, v689, 1, v685);
      v835 = v675[24];
      sub_1E5DFD1CC(v691, v692, &qword_1ED072D90, &qword_1E66040F0);
      v836 = v687(v692, 1, v685);
      v1036 = (v686 + 56);
      if (v836 == 1)
      {
        sub_1E5DFE50C(v692, &qword_1ED072D90, &qword_1E66040F0);
        v837 = 1;
        v838 = v1045;
        v839 = v962;
      }

      else
      {
        v1033 = v835;
        if (v1029 == v1031)
        {
          v840 = v947;
          if (qword_1ED071AC0 != -1)
          {
            swift_once();
          }

          v843 = v1044;
          v842 = __swift_project_value_buffer(v1044, qword_1ED0965B8);
          v841 = v840;
        }

        else
        {
          v840 = v947;
          v841 = v947;
          v842 = v999;
          v843 = v1044;
        }

        (v1028)(v841, v842, v843);
        v844 = v1042;
        v845 = v1043;
        v846 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v838 = v1045;
        v847 = v1033;
        v848 = v840;
        v849 = v965;
        sub_1E65D73C8();
        v850 = v846;
        v835 = v847;
        (*(v845 + 8))(v850, v844);
        (*(v1034 + 1))(v848, v843);
        v686 = v1035;
        (*(v1035 + 1))(v849, v685);
        v837 = 0;
        v839 = v962;
        v675 = v1038;
      }

      (v1040)(v838 + v835, v837, 1, v685);
      v851 = v675[28];
      sub_1E5DFD1CC(v1032, v839, &qword_1ED072D90, &qword_1E66040F0);
      if (v687(v839, 1, v685) == 1)
      {
        v852 = v839;
        v853 = *(v1034 + 1);
        v854 = v851;
        v855 = v1044;
        v853(v995, v1044);
        v853(v999, v855);
        v853(v998, v855);
        sub_1E5DFE50C(v852, &qword_1ED072D90, &qword_1E66040F0);
        v856 = 1;
      }

      else
      {
        v857 = v1043;
        v858 = v1041;
        v859 = v686;
        v860 = v1042;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v861 = v995;
        v862 = v1044;
        v1037 = v851;
        v863 = v839;
        sub_1E65D73C8();
        (*(v857 + 8))(v858, v860);
        v864 = *(v1034 + 1);
        v865 = v861;
        v675 = v1038;
        v864(v865, v862);
        v864(v999, v862);
        v864(v998, v862);
        v859[1](v863, v685);
        v854 = v1037;
        v856 = 0;
      }

      (v1040)(v854 + v838, v856, 1, v685);
      v866 = v675[36];
      v867 = v675[40];
      sub_1E5DFD1CC(v1030, v838 + v675[32], &qword_1ED072638, &qword_1E65EB950);
      sub_1E5DFD1CC(v1018, v838 + v866, &qword_1ED072638, &qword_1E65EB950);
      v868 = type metadata accessor for ViewDescriptor();
      (*(*(v868 - 8) + 56))(v838 + v867, 1, 1, v868);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return (*(v1001 + 8))(v1039, v1015);
    case 2u:
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AA0, &qword_1E65FEF88);
      v282 = v281[12];
      sub_1E5DFD1CC(v1038, v130, &qword_1ED072D90, &qword_1E66040F0);
      v283 = sub_1E65D72D8();
      v284 = *(v283 - 8);
      v1038 = *(v284 + 6);
      v285 = (v1038)(v130, 1, v283);
      v1040 = v281;
      if (v285 == 1)
      {
        sub_1E5DFE50C(v130, &qword_1ED072D90, &qword_1E66040F0);
        v286 = 1;
        v287 = v1045;
      }

      else
      {
        v1036 = v284;
        v1037 = v282;
        if (qword_1ED0719F0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096360);
        v525 = v1042;
        v526 = v1043;
        v527 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v287 = v1045;
        v528 = v1037;
        sub_1E65D73C8();
        v529 = v527;
        v282 = v528;
        (*(v526 + 8))(v529, v525);
        v284 = v1036;
        (*(v1036 + 1))(v130, v283);
        v286 = 0;
        v281 = v1040;
      }

      v530 = *(v284 + 7);
      (v530)(v282 + v287, v286, 1, v283);
      v531 = v281[16];
      sub_1E5DFD1CC(v1033, v127, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1038)(v127, 1, v283) == 1)
      {
        sub_1E5DFE50C(v127, &qword_1ED072D90, &qword_1E66040F0);
        v532 = 1;
        v533 = v1045;
      }

      else
      {
        v1037 = v530;
        v1038 = v531;
        if (qword_1ED0719E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096348);
        v535 = v1042;
        v534 = v1043;
        v536 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v533 = v1045;
        v537 = v1038;
        sub_1E65D73C8();
        v531 = v537;
        (*(v534 + 8))(v536, v535);
        (*(v284 + 1))(v127, v283);
        v532 = 0;
        v281 = v1040;
        v530 = v1037;
      }

      (v530)(v533 + v531, v532, 1, v283);
      sub_1E5DFD1CC(v1030, v533 + v281[20], &qword_1ED072638, &qword_1E65EB950);
      sub_1E65E0A18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0A28();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 3u:
      v288 = sub_1E65DAE38();
      v289 = sub_1E65DAE38();
      v290 = sub_1E65E4B48();
      v291 = 4.0;
      if (v290)
      {
        v291 = 8.0;
      }

      v292 = 16.0;
      if (v290)
      {
        v292 = 18.0;
      }

      if (v288 == v289)
      {
        v293 = v292;
      }

      else
      {
        v293 = v291;
      }

      if (v288 == v289)
      {
        v294 = 12.0;
      }

      else
      {
        v294 = 8.0;
      }

      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v296 = v295[12];
      v297 = v1045;
      sub_1E64FB75C(v1045);
      v298 = type metadata accessor for ArtworkDescriptor();
      *(v297 + v298[5]) = MEMORY[0x1E69E7CD0];
      v299 = v297 + v298[6];
      *v299 = 0;
      *(v299 + 8) = v293;
      *(v299 + 16) = v293;
      *(v299 + 24) = v294;
      *(v297 + v298[7]) = 1;
      v300 = (v297 + v298[8]);
      v301 = v1036;
      *v300 = v1035;
      v300[1] = v301;
      v302 = v1002;
      sub_1E5DFD1CC(v1032, v1002, &qword_1ED072D90, &qword_1E66040F0);
      v303 = sub_1E65D72D8();
      v304 = *(v303 - 8);
      v1037 = *(v304 + 48);
      if ((v1037)(v302, 1, v303) == 1)
      {

        sub_1E5DFE50C(v302, &qword_1ED072D90, &qword_1E66040F0);
        (*(v304 + 56))(&v296[v297], 1, 1, v303);
      }

      else
      {
        v1035 = v296;
        v538 = v954;
        sub_1E5DFD1CC(v984, v954, &qword_1ED074528, &unk_1E660F4D0);
        v539 = sub_1E65D83D8();
        v540 = *(v539 - 8);
        v541 = (*(v540 + 48))(v538, 1, v539);

        if (v541 == 1)
        {
          sub_1E5DFE50C(v538, &qword_1ED074528, &unk_1E660F4D0);
          v542 = 1;
          v543 = v958;
        }

        else
        {
          v543 = v958;
          sub_1E608EC7C(v958);
          (*(v540 + 8))(v538, v539);
          v542 = 0;
        }

        (*(v1034 + 7))(v543, v542, 1, v1044);
        v700 = v1042;
        v699 = v1043;
        v701 = v543;
        v702 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        v703 = v1002;
        sub_1E65D7248();
        (*(v699 + 8))(v702, v700);
        sub_1E5DFE50C(v701, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v304 + 8))(v703, v303);
      }

      v704 = v295[16];
      if (v1017 <= 1u)
      {
        if (v1017)
        {
          v705 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v705 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v1017 == 2)
      {
        v705 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v1017 != 3)
        {
          v799 = sub_1E65E09D8();
          v800 = *(v799 - 8);
          (*(v800 + 56))(v982, 1, 1, v799);
          (*(v800 + 104))(v297 + v704, *MEMORY[0x1E699DAB0], v799);
          goto LABEL_359;
        }

        v705 = MEMORY[0x1E699DAB0];
      }

      v801 = *v705;
      v802 = sub_1E65E09D8();
      v803 = *(v802 - 8);
      v804 = v982;
      (*(v803 + 104))(v982, v801, v802);
      (*(v803 + 56))(v804, 0, 1, v802);
      (*(v803 + 32))(v297 + v704, v804, v802);
LABEL_359:
      v805 = v986;
      v806 = v977;
      v807 = v295[20];
      v808 = sub_1E65DAE38();
      v809 = sub_1E65DAE38();
      v810 = v1038;
      if (v808 != v809)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v811 = v295[24];
      sub_1E5DFD1CC(v810, v806, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1037)(v806, 1, v303) == 1)
      {
        goto LABEL_372;
      }

      v812 = v956;
      sub_1E5DFD1CC(v994, v956, &qword_1ED074528, &unk_1E660F4D0);
      v813 = sub_1E65D83D8();
      v814 = *(v813 - 8);
      if ((*(v814 + 48))(v812, 1, v813) == 1)
      {
        sub_1E5DFE50C(v812, &qword_1ED074528, &unk_1E660F4D0);
        v815 = 1;
      }

      else
      {
        sub_1E608EC7C(v805);
        (*(v814 + 8))(v812, v813);
        v815 = 0;
      }

      goto LABEL_376;
    case 4u:
      v222 = sub_1E65DAE38();
      v223 = sub_1E65DAE38();
      v224 = sub_1E65E4B48();
      v225 = 4.0;
      if (v224)
      {
        v225 = 8.0;
      }

      v226 = 16.0;
      if (v224)
      {
        v226 = 18.0;
      }

      if (v222 == v223)
      {
        v227 = v226;
      }

      else
      {
        v227 = v225;
      }

      if (v222 == v223)
      {
        v228 = 12.0;
      }

      else
      {
        v228 = 8.0;
      }

      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C0, &qword_1E65EDD50);
      v230 = v1045 + v229[12];
      v231 = v229[16];
      sub_1E64FB75C(v230);
      v232 = type metadata accessor for ArtworkDescriptor();
      *(v230 + v232[5]) = MEMORY[0x1E69E7CD0];
      v233 = v230 + v232[6];
      *v233 = 0;
      *(v233 + 8) = v227;
      *(v233 + 16) = v227;
      *(v233 + 24) = v228;
      *(v230 + v232[7]) = 1;
      v234 = (v230 + v232[8]);
      v235 = v1036;
      *v234 = v1035;
      v234[1] = v235;
      sub_1E5DFD1CC(v1038, v113, &qword_1ED072D90, &qword_1E66040F0);
      v236 = sub_1E65D72D8();
      v237 = *(v236 - 8);
      v238 = *(v237 + 48);
      v239 = v238(v113, 1, v236);
      v1040 = v238;
      if (v239 == 1)
      {

        sub_1E5DFE50C(v113, &qword_1ED072D90, &qword_1E66040F0);
        v240 = 1;
        v241 = v1045;
      }

      else
      {
        v1037 = v229;
        v1038 = v231;
        v452 = qword_1ED071A48;

        if (v452 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096450);
        v454 = v1042;
        v453 = v1043;
        v455 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v241 = v1045;
        v456 = v1038;
        sub_1E65D73C8();
        v457 = v455;
        v231 = v456;
        (*(v453 + 8))(v457, v454);
        (*(v237 + 8))(v113, v236);
        v240 = 0;
        v229 = v1037;
      }

      v458 = *(v237 + 56);
      v458(v241 + v231, v240, 1, v236);
      v459 = v229[20];
      v460 = v1007;
      sub_1E5DFD1CC(v1033, v1007, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1040)(v460, 1, v236) == 1)
      {
        sub_1E5DFE50C(v460, &qword_1ED072D90, &qword_1E66040F0);
        v461 = 1;
      }

      else
      {
        if (qword_1ED071A40 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096438);
        v463 = v1042;
        v462 = v1043;
        v464 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v465 = v1007;
        sub_1E65D73C8();
        (*(v462 + 8))(v464, v463);
        (*(v237 + 8))(v465, v236);
        v461 = 0;
      }

      v458(v241 + v459, v461, 1, v236);
      sub_1E65E0A48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0A58();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 5u:
      v335 = sub_1E65DAE38();
      v336 = sub_1E65DAE38();
      v337 = sub_1E65E4B48();
      v338 = 4.0;
      if (v337)
      {
        v338 = 8.0;
      }

      v339 = 16.0;
      if (v337)
      {
        v339 = 18.0;
      }

      if (v335 == v336)
      {
        v340 = v339;
      }

      else
      {
        v340 = v338;
      }

      if (v335 == v336)
      {
        v341 = 12.0;
      }

      else
      {
        v341 = 8.0;
      }

      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v343 = v342[12];
      v297 = v1045;
      sub_1E64FB75C(v1045);
      v344 = type metadata accessor for ArtworkDescriptor();
      *(v297 + v344[5]) = MEMORY[0x1E69E7CD0];
      v345 = v297 + v344[6];
      *v345 = 0;
      *(v345 + 8) = v340;
      *(v345 + 16) = v340;
      *(v345 + 24) = v341;
      *(v297 + v344[7]) = 1;
      v346 = (v297 + v344[8]);
      v347 = v1036;
      *v346 = v1035;
      v346[1] = v347;
      v348 = v1004;
      sub_1E5DFD1CC(v1032, v1004, &qword_1ED072D90, &qword_1E66040F0);
      v303 = sub_1E65D72D8();
      v304 = *(v303 - 8);
      v1037 = *(v304 + 48);
      if ((v1037)(v348, 1, v303) == 1)
      {

        sub_1E5DFE50C(v348, &qword_1ED072D90, &qword_1E66040F0);
        (*(v304 + 56))(&v343[v297], 1, 1, v303);
      }

      else
      {
        v1035 = v343;
        v575 = v955;
        sub_1E5DFD1CC(v984, v955, &qword_1ED074528, &unk_1E660F4D0);
        v576 = sub_1E65D83D8();
        v577 = *(v576 - 8);
        v578 = (*(v577 + 48))(v575, 1, v576);

        if (v578 == 1)
        {
          sub_1E5DFE50C(v575, &qword_1ED074528, &unk_1E660F4D0);
          v579 = 1;
          v580 = v959;
        }

        else
        {
          v580 = v959;
          sub_1E608EC7C(v959);
          (*(v577 + 8))(v575, v576);
          v579 = 0;
        }

        (*(v1034 + 7))(v580, v579, 1, v1044);
        v764 = v1042;
        v763 = v1043;
        v765 = v580;
        v766 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        v767 = v1004;
        sub_1E65D7248();
        (*(v763 + 8))(v766, v764);
        sub_1E5DFE50C(v765, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v304 + 8))(v767, v303);
      }

      v768 = v342[16];
      if (v1017 <= 1u)
      {
        if (v1017)
        {
          v769 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v769 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v1017 == 2)
      {
        v769 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v1017 != 3)
        {
          v816 = sub_1E65E09D8();
          v817 = *(v816 - 8);
          (*(v817 + 56))(v983, 1, 1, v816);
          (*(v817 + 104))(v297 + v768, *MEMORY[0x1E699DAB0], v816);
          goto LABEL_369;
        }

        v769 = MEMORY[0x1E699DAB0];
      }

      v818 = *v769;
      v819 = sub_1E65E09D8();
      v820 = *(v819 - 8);
      v821 = v983;
      (*(v820 + 104))(v983, v818, v819);
      (*(v820 + 56))(v821, 0, 1, v819);
      (*(v820 + 32))(v297 + v768, v821, v819);
LABEL_369:
      v806 = v978;
      v822 = v342[20];
      v823 = sub_1E65DAE38();
      v824 = sub_1E65DAE38();
      v825 = v1038;
      if (v823 != v824)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v811 = v342[24];
      sub_1E5DFD1CC(v825, v806, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1037)(v806, 1, v303) == 1)
      {
LABEL_372:
        sub_1E5DFE50C(v806, &qword_1ED072D90, &qword_1E66040F0);
        (*(v304 + 56))(v297 + v811, 1, 1, v303);
      }

      else
      {
        v826 = v957;
        sub_1E5DFD1CC(v994, v957, &qword_1ED074528, &unk_1E660F4D0);
        v827 = sub_1E65D83D8();
        v828 = *(v827 - 8);
        if ((*(v828 + 48))(v826, 1, v827) == 1)
        {
          sub_1E5DFE50C(v826, &qword_1ED074528, &unk_1E660F4D0);
          v815 = 1;
          v805 = v960;
        }

        else
        {
          v805 = v960;
          sub_1E608EC7C(v960);
          (*(v828 + 8))(v826, v827);
          v815 = 0;
        }

LABEL_376:
        (*(v1034 + 7))(v805, v815, 1, v1044);
        v830 = v1042;
        v829 = v1043;
        v831 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E65D7248();
        (*(v829 + 8))(v831, v830);
        sub_1E5DFE50C(v805, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v304 + 8))(v806, v303);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0948();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 6u:
      v370 = v1014;
      v371 = v1013;
      v372 = v980;
      (*(v1014 + 32))(v1013, v1039, v980);
      v373 = v1045;
      (*(v370 + 16))(v1045, v371, v372);
      v374 = sub_1E65DAE38();
      v375 = sub_1E65DAE38();
      v376 = sub_1E65E4B48();
      v377 = 4.0;
      if (v376)
      {
        v377 = 8.0;
      }

      v378 = 16.0;
      if (v376)
      {
        v378 = 18.0;
      }

      if (v374 == v375)
      {
        v379 = v378;
      }

      else
      {
        v379 = v377;
      }

      if (v374 == v375)
      {
        v380 = 12.0;
      }

      else
      {
        v380 = 8.0;
      }

      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v382 = v373 + v381[12];
      v1040 = v381[16];
      sub_1E64FB75C(v382);
      v383 = type metadata accessor for ArtworkDescriptor();
      *(v382 + v383[5]) = MEMORY[0x1E69E7CD0];
      v384 = v382 + v383[6];
      *v384 = 0;
      *(v384 + 8) = v379;
      *(v384 + 16) = v379;
      *(v384 + 24) = v380;
      *(v382 + v383[7]) = 1;
      v385 = (v382 + v383[8]);
      v386 = v1036;
      *v385 = v1035;
      v385[1] = v386;
      v387 = v1003;
      sub_1E5DFD1CC(v1038, v1003, &qword_1ED072D90, &qword_1E66040F0);
      v388 = sub_1E65D72D8();
      v389 = *(v388 - 8);
      if ((*(v389 + 48))(v387, 1, v388) == 1)
      {
        v390 = *(v370 + 8);

        v390(v371, v372);
        sub_1E5DFE50C(v387, &qword_1ED072D90, &qword_1E66040F0);
        v391 = 1;
        v392 = v1040;
      }

      else
      {
        v596 = qword_1ED071A38;

        if (v596 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096420);
        v598 = v1042;
        v597 = v1043;
        v599 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v392 = v1040;
        v600 = v1003;
        sub_1E65D73C8();
        (*(v597 + 8))(v599, v598);
        (*(v1014 + 8))(v1013, v372);
        (*(v389 + 8))(v600, v388);
        v391 = 0;
      }

      v601 = *(v389 + 56);
      v601(v373 + v392, v391, 1, v388);
      v602 = v381[20];
      v603 = v381[24];
      v601(v373 + v602, 1, 1, v388);
      v601(v373 + v603, 1, 1, v388);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v305 = sub_1E65DAE38();
      v306 = sub_1E65DAE38();
      v307 = sub_1E65E4B48();
      v308 = 4.0;
      if (v307)
      {
        v308 = 8.0;
      }

      v309 = 16.0;
      if (v307)
      {
        v309 = 18.0;
      }

      if (v305 == v306)
      {
        v310 = v309;
      }

      else
      {
        v310 = v308;
      }

      if (v305 == v306)
      {
        v311 = 12.0;
      }

      else
      {
        v311 = 8.0;
      }

      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
      v313 = v1045;
      v314 = v1045 + *(v312 + 48);
      v1040 = v312;
      v315 = *(v312 + 64);
      sub_1E64FB75C(v314);
      v316 = type metadata accessor for ArtworkDescriptor();
      *(v314 + v316[5]) = v1029;
      v317 = v314 + v316[6];
      *v317 = 0;
      *(v317 + 8) = v310;
      *(v317 + 16) = v310;
      *(v317 + 24) = v311;
      *(v314 + v316[7]) = 1;
      v318 = (v314 + v316[8]);
      v319 = v1036;
      *v318 = v1035;
      v318[1] = v319;
      v320 = v968;
      sub_1E5DFD1CC(v1038, v968, &qword_1ED072D90, &qword_1E66040F0);
      v321 = sub_1E65D72D8();
      v322 = *(v321 - 8);
      v1038 = *(v322 + 6);
      v323 = (v1038)(v320, 1, v321);
      v1037 = v322;
      if (v323 == 1)
      {

        sub_1E5DFE50C(v320, &qword_1ED072D90, &qword_1E66040F0);
        v324 = 1;
      }

      else
      {
        v544 = qword_1EE2D7250;

        if (v544 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA220);
        v545 = v1042;
        v546 = v1043;
        v547 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v546 + 8))(v547, v545);
        v322 = v1037;
        (*(v1037 + 1))(v320, v321);
        v324 = 0;
      }

      v548 = *(v322 + 7);
      v548(v313 + v315, v324, 1, v321);
      v549 = *(v1040 + 80);
      v550 = v1008;
      sub_1E5DFD1CC(v1033, v1008, &qword_1ED072D90, &qword_1E66040F0);
      v551 = (v1038)(v550, 1, v321);
      v552 = v1011;
      if (v551 == 1)
      {
        sub_1E5DFE50C(v550, &qword_1ED072D90, &qword_1E66040F0);
        v553 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA208);
        v554 = v1042;
        v555 = v1043;
        v556 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v557 = v1008;
        sub_1E65D73C8();
        (*(v555 + 8))(v556, v554);
        (*(v1037 + 1))(v557, v321);
        v553 = 0;
        v552 = v1011;
      }

      v548(v313 + v549, v553, 1, v321);
      v558 = *(v1040 + 96);
      sub_1E5DFD1CC(v1032, v552, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1038)(v552, 1, v321) == 1)
      {
        sub_1E5DFE50C(v552, &qword_1ED072D90, &qword_1E66040F0);
        v559 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA208);
        v560 = v1042;
        v561 = v1043;
        v562 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v561 + 8))(v562, v560);
        (*(v1037 + 1))(v552, v321);
        v559 = 0;
      }

      v548(v313 + v558, v559, 1, v321);
      v563 = *(v1040 + 128);
      v548(v313 + *(v1040 + 112), 1, 1, v321);
      v564 = type metadata accessor for ActionButtonDescriptor(0);
      (*(*(v564 - 8) + 56))(v313 + v563, 1, 1, v564);
      sub_1E65E0AC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0AD8();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 8u:
      v397 = sub_1E65DAE38();
      v398 = sub_1E65DAE38();
      v399 = sub_1E65E4B48();
      v400 = 4.0;
      if (v399)
      {
        v400 = 8.0;
      }

      v401 = 16.0;
      if (v399)
      {
        v401 = 18.0;
      }

      if (v397 == v398)
      {
        v402 = v401;
      }

      else
      {
        v402 = v400;
      }

      if (v397 == v398)
      {
        v403 = 12.0;
      }

      else
      {
        v403 = 8.0;
      }

      v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v405 = v1045;
      v406 = v1045 + v404[12];
      v407 = v404[16];
      sub_1E64FB75C(v406);
      v408 = type metadata accessor for ArtworkDescriptor();
      *(v406 + v408[5]) = v1029;
      v409 = v406 + v408[6];
      *v409 = 0;
      *(v409 + 8) = v402;
      *(v409 + 16) = v402;
      *(v409 + 24) = v403;
      *(v406 + v408[7]) = 1;
      v410 = (v406 + v408[8]);
      v411 = v1036;
      *v410 = v1035;
      v410[1] = v411;
      v412 = v1005;
      sub_1E5DFD1CC(v1038, v1005, &qword_1ED072D90, &qword_1E66040F0);
      v413 = sub_1E65D72D8();
      v414 = *(v413 - 8);
      v1040 = *(v414 + 48);
      v415 = (v1040)(v412, 1, v413);
      v1034 = v404;
      if (v415 == 1)
      {

        sub_1E5DFE50C(v412, &qword_1ED072D90, &qword_1E66040F0);
        v416 = 1;
      }

      else
      {
        v640 = qword_1EE2D7250;

        if (v640 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA220);
        v641 = v1042;
        v642 = v1043;
        v643 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v644 = v1005;
        sub_1E65D73C8();
        (*(v642 + 8))(v643, v641);
        (*(v414 + 8))(v644, v413);
        v416 = 0;
        v404 = v1034;
      }

      v645 = *(v414 + 56);
      (v645)(v405 + v407, v416, 1, v413);
      v646 = v404[20];
      v647 = v1009;
      sub_1E5DFD1CC(v1033, v1009, &qword_1ED072D90, &qword_1E66040F0);
      v648 = (v1040)(v647, 1, v413);
      v1038 = v645;
      if (v648 == 1)
      {
        sub_1E5DFE50C(v647, &qword_1ED072D90, &qword_1E66040F0);
        v649 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA208);
        v651 = v1042;
        v650 = v1043;
        v652 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v653 = v1009;
        sub_1E65D73C8();
        (*(v650 + 8))(v652, v651);
        (*(v414 + 8))(v653, v413);
        v649 = 0;
        v404 = v1034;
        v645 = v1038;
      }

      (v645)(v405 + v646, v649, 1, v413);
      v654 = v404[24];
      v655 = v975;
      sub_1E5DFD1CC(v1032, v975, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1040)(v655, 1, v413) == 1)
      {
        sub_1E5DFE50C(v655, &qword_1ED072D90, &qword_1E66040F0);
        v656 = 1;
      }

      else
      {
        if (qword_1ED0719F8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096378);
        v658 = v1042;
        v657 = v1043;
        v659 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v657 + 8))(v659, v658);
        (*(v414 + 8))(v655, v413);
        v656 = 0;
        v645 = v1038;
      }

      (v645)(v405 + v654, v656, 1, v413);
      sub_1E65E0A68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0A88();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 9u:
      v261 = sub_1E65DAE38();
      v262 = sub_1E65DAE38();
      v263 = sub_1E65E4B48();
      v264 = 4.0;
      if (v263)
      {
        v264 = 8.0;
      }

      v265 = 16.0;
      if (v263)
      {
        v265 = 18.0;
      }

      if (v261 == v262)
      {
        v266 = v265;
      }

      else
      {
        v266 = v264;
      }

      if (v261 == v262)
      {
        v267 = 12.0;
      }

      else
      {
        v267 = 8.0;
      }

      v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A88, &qword_1E65FEF70);
      v269 = v1045;
      v270 = v1045 + *(v268 + 48);
      v1040 = v268;
      v271 = *(v268 + 64);
      sub_1E64FB75C(v270);
      v272 = type metadata accessor for ArtworkDescriptor();
      *(v270 + v272[5]) = v1029;
      v273 = v270 + v272[6];
      *v273 = 0;
      *(v273 + 8) = v266;
      *(v273 + 16) = v266;
      *(v273 + 24) = v267;
      *(v270 + v272[7]) = 1;
      v274 = (v270 + v272[8]);
      v275 = v1036;
      *v274 = v1035;
      v274[1] = v275;
      v276 = v1006;
      sub_1E5DFD1CC(v1038, v1006, &qword_1ED072D90, &qword_1E66040F0);
      v277 = sub_1E65D72D8();
      v278 = *(v277 - 8);
      v1038 = *(v278 + 48);
      if ((v1038)(v276, 1, v277) == 1)
      {

        sub_1E5DFE50C(v276, &qword_1ED072D90, &qword_1E66040F0);
        v279 = 1;
        v280 = v1012;
      }

      else
      {
        v502 = qword_1EE2D7250;

        v280 = v1012;
        if (v502 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA220);
        v503 = v1042;
        v504 = v1043;
        v505 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v506 = v1006;
        sub_1E65D73C8();
        (*(v504 + 8))(v505, v503);
        (*(v278 + 8))(v506, v277);
        v279 = 0;
      }

      v507 = *(v278 + 56);
      (v507)(v269 + v271, v279, 1, v277);
      v508 = *(v1040 + 80);
      v509 = v1010;
      sub_1E5DFD1CC(v1033, v1010, &qword_1ED072D90, &qword_1E66040F0);
      v510 = (v1038)(v509, 1, v277);
      v1036 = v507;
      if (v510 == 1)
      {
        sub_1E5DFE50C(v509, &qword_1ED072D90, &qword_1E66040F0);
        v511 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1EE2EA208);
        v513 = v1042;
        v512 = v1043;
        v514 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v515 = v1010;
        sub_1E65D73C8();
        (*(v512 + 8))(v514, v513);
        (*(v278 + 8))(v515, v277);
        v511 = 0;
        v280 = v1012;
        v507 = v1036;
      }

      (v507)(v269 + v508, v511, 1, v277);
      v516 = *(v1040 + 96);
      sub_1E5DFD1CC(v1032, v280, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1038)(v280, 1, v277) == 1)
      {
        sub_1E5DFE50C(v280, &qword_1ED072D90, &qword_1E66040F0);
        v517 = 1;
      }

      else
      {
        if (qword_1ED0719F8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1044, qword_1ED096378);
        v519 = v1042;
        v518 = v1043;
        v520 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v518 + 8))(v520, v519);
        (*(v278 + 8))(v280, v277);
        v517 = 0;
        v507 = v1036;
      }

      (v507)(v269 + v516, v517, 1, v277);
      v521 = *(v1040 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
      v522 = v987;
      sub_1E65DC358();
      v523 = v990;
      v524 = v989;
      sub_1E65DC448();
      (*(v988 + 8))(v522, v524);
      sub_1E65DB238();
      (*(v991 + 8))(v523, v992);
      sub_1E65E0918();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v466 = sub_1E65E0928();
      return (*(*(v466 - 8) + 8))(v1039, v466);
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0678();
      if (sub_1E65E07C8())
      {
        v393 = v1044;
        v394 = v1045;
        v395 = v1034;
        if (qword_1ED071AF0 != -1)
        {
          swift_once();
        }

        v396 = qword_1ED096630;
      }

      else
      {
        v393 = v1044;
        v394 = v1045;
        v395 = v1034;
        if (qword_1EE2D7268 != -1)
        {
          swift_once();
        }

        v396 = qword_1EE2EA250;
      }

      v604 = v1038;
      v605 = v1035;
      v606 = v1036;
      v607 = __swift_project_value_buffer(v393, v396);
      (*(v395 + 2))(v151, v607, v393);
      v608 = sub_1E65DAE38();
      v609 = v608 == sub_1E65DAE38();
      sub_1E6168408(v609);
      v610 = sub_1E65DAE38();
      v611 = sub_1E65DAE38();
      v612 = sub_1E65E4B48();
      v613 = 4.0;
      if (v612)
      {
        v613 = 8.0;
      }

      v614 = 16.0;
      if (v612)
      {
        v614 = 18.0;
      }

      if (v610 == v611)
      {
        v615 = v614;
      }

      else
      {
        v615 = v613;
      }

      if (v610 == v611)
      {
        v616 = 12.0;
      }

      else
      {
        v616 = 8.0;
      }

      v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
      v618 = v395;
      v619 = v394 + v617[12];
      v1040 = v617[16];
      sub_1E64FB75C(v619);
      v620 = type metadata accessor for ArtworkDescriptor();
      *(v619 + v620[5]) = MEMORY[0x1E69E7CD0];
      v621 = v619 + v620[6];
      *v621 = 0;
      *(v621 + 8) = v615;
      *(v621 + 16) = v615;
      *(v621 + 24) = v616;
      *(v619 + v620[7]) = 1;
      v622 = (v619 + v620[8]);
      *v622 = v605;
      v622[1] = v606;
      v623 = v972;
      sub_1E5DFD1CC(v604, v972, &qword_1ED072D90, &qword_1E66040F0);
      v624 = sub_1E65D72D8();
      v625 = *(v624 - 8);
      if ((*(v625 + 48))(v623, 1, v624) == 1)
      {
        v626 = *(v618 + 1);

        v626(v151, v393);
        sub_1E5DFE50C(v623, &qword_1ED072D90, &qword_1E66040F0);
        v627 = 1;
      }

      else
      {
        v628 = *MEMORY[0x1E69686E8];
        v630 = v1042;
        v629 = v1043;
        v631 = *(v1043 + 104);
        v1038 = v617;
        v632 = v394;
        v633 = v1041;
        v631(v1041, v628, v1042);
        sub_1E6258850();

        sub_1E65D73C8();
        v634 = v633;
        v394 = v632;
        v617 = v1038;
        (*(v629 + 8))(v634, v630);
        (*(v618 + 1))(v151, v1044);
        (*(v625 + 8))(v623, v624);
        v627 = 0;
      }

      v635 = v1039;
      (*(v625 + 56))(v394 + v1040, v627, 1, v624);
      v636 = v617[20];
      v637 = *MEMORY[0x1E699DB20];
      v638 = sub_1E65E0B08();
      (*(*(v638 - 8) + 104))(v394 + v636, v637, v638);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v639 = sub_1E65E0848();
      return (*(*(v639 - 8) + 8))(v635, v639);
    case 0xBu:
      v202 = v1045;
      MEMORY[0x1E69483B0]();
      v203 = sub_1E65DAE38();
      v204 = sub_1E65DAE38();
      v205 = sub_1E65E4B48();
      v206 = 4.0;
      if (v205)
      {
        v206 = 8.0;
      }

      v207 = 16.0;
      if (v205)
      {
        v207 = 18.0;
      }

      if (v203 == v204)
      {
        v208 = v207;
      }

      else
      {
        v208 = v206;
      }

      if (v203 == v204)
      {
        v209 = 12.0;
      }

      else
      {
        v209 = 8.0;
      }

      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD0, &qword_1E65F7918);
      v211 = v202 + v210[12];
      v212 = v210[16];
      sub_1E64FB75C(v211);
      v213 = type metadata accessor for ArtworkDescriptor();
      *(v211 + v213[5]) = MEMORY[0x1E69E7CD0];
      v214 = v211 + v213[6];
      *v214 = 0;
      *(v214 + 8) = v208;
      *(v214 + 16) = v208;
      *(v214 + 24) = v209;
      *(v211 + v213[7]) = 1;
      v215 = (v211 + v213[8]);
      v216 = v1036;
      *v215 = v1035;
      v215[1] = v216;
      v217 = v970;
      sub_1E5DFD1CC(v1038, v970, &qword_1ED072D90, &qword_1E66040F0);
      v218 = sub_1E65D72D8();
      v219 = *(v218 - 8);
      v1040 = *(v219 + 6);
      v220 = (v1040)(v217, 1, v218);

      v1037 = v219;
      if (v220 == 1)
      {
        sub_1E5DFE50C(v217, &qword_1ED072D90, &qword_1E66040F0);
        v221 = 1;
      }

      else
      {
        v417 = v1031;
        sub_1E65D7338();
        sub_1E65E4528();
        sub_1E65E44D8();
        v418 = sub_1E65E4538();

        v1048 = v418;
        sub_1E608F9E4();
        sub_1E65D7358();
        v420 = v1042;
        v419 = v1043;
        v421 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v419 + 8))(v421, v420);
        v422 = v417;
        v219 = v1037;
        (*(v1034 + 1))(v422, v1044);
        (*(v219 + 1))(v217, v218);
        v221 = 0;
      }

      v423 = v1033;
      v424 = *(v219 + 7);
      (v424)(v1045 + v212, v221, 1, v218);
      v425 = v210[20];
      v426 = v423;
      v427 = v974;
      sub_1E5DFD1CC(v426, v974, &qword_1ED072D90, &qword_1E66040F0);
      v428 = v1040;
      v429 = (v1040)(v427, 1, v218);
      v1038 = v424;
      if (v429 == 1)
      {
        sub_1E5DFE50C(v427, &qword_1ED072D90, &qword_1E66040F0);
        v430 = 1;
      }

      else
      {
        v431 = v1031;
        sub_1E62F8DDC();
        v432 = *MEMORY[0x1E69686E8];
        v1036 = v210;
        v433 = v1042;
        v434 = v1043;
        v435 = v1041;
        (*(v1043 + 104))(v1041, v432, v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        v436 = v435;
        v210 = v1036;
        v219 = v1037;
        v437 = v433;
        v424 = v1038;
        (*(v434 + 8))(v436, v437);
        v438 = v431;
        v428 = v1040;
        (*(v1034 + 1))(v438, v1044);
        (*(v219 + 1))(v427, v218);
        v430 = 0;
      }

      v439 = v1032;
      (v424)(v1045 + v425, v430, 1, v218);
      v440 = v210[24];
      v441 = v439;
      v442 = v976;
      sub_1E5DFD1CC(v441, v976, &qword_1ED072D90, &qword_1E66040F0);
      if (v428(v442, 1, v218) == 1)
      {
        sub_1E5DFE50C(v442, &qword_1ED072D90, &qword_1E66040F0);
        v443 = 1;
      }

      else
      {
        v444 = v1031;
        sub_1E62FBF68();
        v446 = v1042;
        v445 = v1043;
        v447 = v219;
        v448 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v445 + 8))(v448, v446);
        (*(v1034 + 1))(v444, v1044);
        (*(v447 + 1))(v442, v218);
        v443 = 0;
      }

      v449 = v1039;
      (v1038)(v1045 + v440, v443, 1, v218);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v450 = sub_1E65E09C8();
      return (*(*(v450 - 8) + 8))(v449, v450);
    case 0xCu:
      v242 = sub_1E65DAE38();
      v243 = sub_1E65DAE38();
      v244 = sub_1E65E4B48();
      v245 = 4.0;
      if (v244)
      {
        v245 = 8.0;
      }

      v246 = 16.0;
      if (v244)
      {
        v246 = 18.0;
      }

      if (v242 == v243)
      {
        v247 = v246;
      }

      else
      {
        v247 = v245;
      }

      if (v242 == v243)
      {
        v248 = 12.0;
      }

      else
      {
        v248 = 8.0;
      }

      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A98, &qword_1E65FEF80);
      v250 = v249[12];
      v251 = v1045;
      sub_1E64FB75C(v1045);
      v252 = type metadata accessor for ArtworkDescriptor();
      *(v251 + v252[5]) = MEMORY[0x1E69E7CD0];
      v253 = v251 + v252[6];
      *v253 = 0;
      *(v253 + 8) = v247;
      *(v253 + 16) = v247;
      *(v253 + 24) = v248;
      *(v251 + v252[7]) = 1;
      v254 = (v251 + v252[8]);
      v255 = v1036;
      *v254 = v1035;
      v254[1] = v255;
      sub_1E5DFD1CC(v1032, v124, &qword_1ED072D90, &qword_1E66040F0);
      v256 = sub_1E65D72D8();
      v257 = *(v256 - 8);
      v258 = *(v257 + 6);
      v259 = (v258)(v124, 1, v256);

      v1039 = v249;
      v1037 = v258;
      if (v259 == 1)
      {
        sub_1E5DFE50C(v124, &qword_1ED072D90, &qword_1E66040F0);
        v260 = 1;
      }

      else
      {
        v1040 = v250;
        v467 = v1031;
        sub_1E62F9720();
        v468 = v1042;
        v469 = v1043;
        v470 = v257;
        v471 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        v472 = v469;
        v258 = v1037;
        v473 = v471;
        v257 = v470;
        v249 = v1039;
        (*(v472 + 8))(v473, v468);
        v474 = v467;
        v250 = v1040;
        (*(v1034 + 1))(v474, v1044);
        (*(v257 + 1))(v124, v256);
        v260 = 0;
      }

      v475 = v1033;
      v476 = *(v257 + 7);
      v476(v251 + v250, v260, 1, v256);
      v477 = v249[16];
      v478 = v475;
      v479 = v967;
      sub_1E5DFD1CC(v478, v967, &qword_1ED072D90, &qword_1E66040F0);
      v480 = (v258)(v479, 1, v256);
      v1040 = v476;
      if (v480 == 1)
      {
        sub_1E5DFE50C(v479, &qword_1ED072D90, &qword_1E66040F0);
        v481 = 1;
      }

      else
      {
        v482 = v1031;
        sub_1E62F97B8();
        v483 = *MEMORY[0x1E69686E8];
        v484 = v1043;
        v485 = *(v1043 + 104);
        v486 = v1041;
        v1036 = v257;
        v487 = v1042;
        v485(v1041, v483, v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        v488 = v484;
        v476 = v1040;
        v489 = v486;
        v490 = v487;
        v257 = v1036;
        v258 = v1037;
        (*(v488 + 8))(v489, v490);
        v491 = v482;
        v249 = v1039;
        (*(v1034 + 1))(v491, v1044);
        (*(v257 + 1))(v479, v256);
        v481 = 0;
      }

      v492 = v1038;
      v476(v251 + v477, v481, 1, v256);
      v493 = v249[20];
      v494 = v492;
      v495 = v971;
      sub_1E5DFD1CC(v494, v971, &qword_1ED072D90, &qword_1E66040F0);
      if ((v258)(v495, 1, v256) == 1)
      {
        sub_1E5DFE50C(v495, &qword_1ED072D90, &qword_1E66040F0);
        v496 = 1;
      }

      else
      {
        v497 = v1031;
        sub_1E62F97D0();
        v498 = v1043;
        v499 = v1041;
        v500 = v257;
        v501 = v1042;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v498 + 8))(v499, v501);
        (*(v1034 + 1))(v497, v1044);
        (*(v500 + 1))(v495, v256);
        v496 = 0;
      }

      (v1040)(v251 + v493, v496, 1, v256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    case 0xDu:
      v349 = sub_1E65DAE38();
      v350 = sub_1E65DAE38();
      v351 = sub_1E65E4B48();
      v352 = 4.0;
      if (v351)
      {
        v352 = 8.0;
      }

      v353 = 16.0;
      if (v351)
      {
        v353 = 18.0;
      }

      if (v349 == v350)
      {
        v354 = v353;
      }

      else
      {
        v354 = v352;
      }

      if (v349 == v350)
      {
        v355 = 12.0;
      }

      else
      {
        v355 = 8.0;
      }

      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A80, &qword_1E65FEF68);
      v357 = *(v356 + 48);
      v1039 = v356;
      v1040 = v357;
      v358 = v1045;
      sub_1E64FB75C(v1045);
      v359 = type metadata accessor for ArtworkDescriptor();
      *(v358 + v359[5]) = MEMORY[0x1E69E7CD0];
      v360 = v358 + v359[6];
      *v360 = 0;
      *(v360 + 8) = v354;
      *(v360 + 16) = v354;
      *(v360 + 24) = v355;
      *(v358 + v359[7]) = 1;
      v361 = (v358 + v359[8]);
      v362 = v1036;
      *v361 = v1035;
      v361[1] = v362;
      v363 = v969;
      sub_1E5DFD1CC(v1033, v969, &qword_1ED072D90, &qword_1E66040F0);
      v364 = sub_1E65D72D8();
      v365 = *(v364 - 8);
      v366 = *(v365 + 48);
      v367 = v366(v363, 1, v364);

      v368 = MEMORY[0x1E69686E8];
      if (v367 == 1)
      {
        sub_1E5DFE50C(v363, &qword_1ED072D90, &qword_1E66040F0);
        v369 = 1;
      }

      else
      {
        v581 = v363;
        v582 = v1031;
        sub_1E62FC024();
        v583 = *v368;
        v585 = v1042;
        v584 = v1043;
        v586 = v1041;
        (*(v1043 + 104))(v1041, v583, v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v584 + 8))(v586, v585);
        (*(v1034 + 1))(v582, v1044);
        (*(v365 + 8))(v581, v364);
        v369 = 0;
      }

      v587 = v973;
      v588 = *(v365 + 56);
      v588(v358 + v1040, v369, 1, v364);
      v589 = v1039[16];
      sub_1E5DFD1CC(v1038, v587, &qword_1ED072D90, &qword_1E66040F0);
      if (v366(v587, 1, v364) == 1)
      {
        sub_1E5DFE50C(v587, &qword_1ED072D90, &qword_1E66040F0);
        v590 = 1;
      }

      else
      {
        v591 = v1031;
        sub_1E62FC1A8();
        v592 = *MEMORY[0x1E69686E8];
        v1040 = v588;
        v594 = v1042;
        v593 = v1043;
        v595 = v1041;
        (*(v1043 + 104))(v1041, v592, v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v593 + 8))(v595, v594);
        v588 = v1040;
        (*(v1034 + 1))(v591, v1044);
        (*(v365 + 8))(v587, v364);
        v590 = 0;
      }

      v588(v358 + v589, v590, 1, v364);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    default:
      (*(v1025 + 32))(v1023, v1039, v1026);
      v194 = v1044;
      if (v1016 == 7)
      {
        goto LABEL_3;
      }

      v565 = sub_1E65D9B18();
      v567 = v566;
      if (v565 == sub_1E65D9B18() && v567 == v568)
      {
        goto LABEL_212;
      }

      v706 = sub_1E65E6C18();

      if (v706)
      {
        goto LABEL_293;
      }

      v869 = sub_1E65D9B18();
      v871 = v870;
      if (v869 == sub_1E65D9B18() && v871 == v872)
      {
LABEL_212:

LABEL_293:
        (*(v1027 + 13))(v1024, *MEMORY[0x1E699DA38], v1028);
        if (qword_1EE2D7220 != -1)
        {
          swift_once();
        }

        v707 = __swift_project_value_buffer(v194, qword_1EE2EA190);
        v196 = *(v1034 + 2);
        v196(v1020, v707, v194);
        v199 = v1045;
        if (qword_1EE2D71F8 != -1)
        {
          swift_once();
        }

        v708 = __swift_project_value_buffer(v194, qword_1EE2EA130);
        v196(v1021, v708, v194);
        v197 = v1038;
        v198 = v1036;
        if (qword_1EE2D7210 != -1)
        {
          swift_once();
        }

        v201 = qword_1EE2EA160;
        goto LABEL_300;
      }

      v873 = sub_1E65E6C18();

      if (v873)
      {
        goto LABEL_293;
      }

LABEL_3:
      if (v996 == 0xFF || (v996 & 1) == 0 || ((1 << v997) & 0xF7) != 0)
      {
        (*(v1027 + 13))(v1024, *MEMORY[0x1E699DA30], v1028);
        if (qword_1EE2D7240 != -1)
        {
          swift_once();
        }

        v195 = __swift_project_value_buffer(v194, qword_1EE2EA1D8);
        v196 = *(v1034 + 2);
        v196(v1020, v195, v194);
        v197 = v1038;
        v198 = v1036;
        v199 = v1045;
        if (qword_1EE2D7228 != -1)
        {
          swift_once();
        }

        v200 = __swift_project_value_buffer(v194, qword_1EE2EA1A8);
        v196(v1021, v200, v194);
        if (qword_1EE2D7230 != -1)
        {
          swift_once();
        }

        v201 = qword_1EE2EA1C0;
LABEL_300:
        v709 = __swift_project_value_buffer(v194, v201);
        v196(v1019, v709, v194);
        goto LABEL_301;
      }

      v923 = v1027;
      v924 = MEMORY[0x1E699DA40];
      v925 = v939;
      if (v939)
      {
        v924 = MEMORY[0x1E699DA30];
      }

      v926 = v1028;
      (*(v1027 + 13))(v186, *v924, v1028);
      (*(v923 + 4))(v1024, v186, v926);
      if (v925)
      {
        v197 = v1038;
        v198 = v1036;
        if (qword_1EE2D7240 != -1)
        {
          swift_once();
        }

        v927 = qword_1EE2EA1D8;
      }

      else
      {
        v197 = v1038;
        v198 = v1036;
        if (qword_1EE2D7218 != -1)
        {
          swift_once();
        }

        v927 = qword_1EE2EA178;
      }

      v928 = __swift_project_value_buffer(v194, v927);
      v929 = v1034;
      v930 = *(v1034 + 2);
      v930(v177, v928, v194);
      v931 = *(v929 + 4);
      v931(v1020, v177, v194);
      if (v939)
      {
        v199 = v1045;
        if (qword_1EE2D7228 != -1)
        {
          swift_once();
        }

        v932 = __swift_project_value_buffer(v194, qword_1EE2EA1A8);
        v930(v174, v932, v194);
        v931(v1021, v174, v194);
        if (qword_1EE2D7230 != -1)
        {
          swift_once();
        }

        v933 = qword_1EE2EA1C0;
      }

      else
      {
        v199 = v1045;
        if (qword_1EE2D71F0 != -1)
        {
          swift_once();
        }

        v934 = __swift_project_value_buffer(v194, qword_1EE2EA118);
        v930(v174, v934, v194);
        v931(v1021, v174, v194);
        if (qword_1EE2D7208 != -1)
        {
          swift_once();
        }

        v933 = qword_1EE2EA148;
      }

      v935 = v938;
      v936 = __swift_project_value_buffer(v194, v933);
      v930(v935, v936, v194);
      v931(v1019, v935, v194);
LABEL_301:
      (*(v1025 + 16))(v199, v1023, v1026);
      v710 = sub_1E65DAE38();
      v711 = sub_1E65DAE38();
      v712 = sub_1E65E4B48();
      v713 = 4.0;
      if (v712)
      {
        v713 = 8.0;
      }

      v714 = 16.0;
      if (v712)
      {
        v714 = 18.0;
      }

      if (v710 == v711)
      {
        v715 = v714;
      }

      else
      {
        v715 = v713;
      }

      if (v710 == v711)
      {
        v716 = 12.0;
      }

      else
      {
        v716 = 8.0;
      }

      v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AA8, &unk_1E65FEF90);
      v718 = v199 + v717[12];
      v719 = v717[16];
      v1040 = v717[20];
      sub_1E64FB75C(v718);
      v720 = type metadata accessor for ArtworkDescriptor();
      *(v718 + v720[5]) = MEMORY[0x1E69E7CD0];
      v721 = v718 + v720[6];
      *v721 = 0;
      *(v721 + 8) = v715;
      *(v721 + 16) = v715;
      *(v721 + 24) = v716;
      *(v718 + v720[7]) = 1;
      v722 = (v718 + v720[8]);
      *v722 = v1035;
      v722[1] = v198;
      (*(v1027 + 2))(v199 + v719, v1024, v1028);
      v723 = v979;
      sub_1E5DFD1CC(v197, v979, &qword_1ED072D90, &qword_1E66040F0);
      v724 = sub_1E65D72D8();
      v725 = *(v724 - 8);
      v1039 = *(v725 + 48);
      if ((v1039)(v723, 1, v724) == 1)
      {

        sub_1E5DFE50C(v723, &qword_1ED072D90, &qword_1E66040F0);
        v726 = 1;
      }

      else
      {
        v727 = v1043;
        v728 = v1041;
        v729 = v1042;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        v1038 = v725;
        v199 = v1045;

        v725 = v1038;
        sub_1E65D73C8();
        (*(v727 + 8))(v728, v729);
        (*(v725 + 8))(v723, v724);
        v726 = 0;
      }

      v730 = v1033;
      v731 = v981;
      v732 = *(v725 + 56);
      v732(v199 + v1040, v726, 1, v724);
      v1040 = v717;
      v733 = v717[24];
      sub_1E5DFD1CC(v730, v731, &qword_1ED072D90, &qword_1E66040F0);
      v734 = v1039;
      if ((v1039)(v731, 1, v724) == 1)
      {
        sub_1E5DFE50C(v731, &qword_1ED072D90, &qword_1E66040F0);
        v735 = 1;
      }

      else
      {
        v736 = v1042;
        v737 = v1043;
        v738 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        v739 = *(v737 + 8);
        v740 = v738;
        v194 = v1044;
        v199 = v1045;
        v741 = v736;
        v734 = v1039;
        v739(v740, v741);
        (*(v725 + 8))(v731, v724);
        v735 = 0;
      }

      v742 = v985;
      v732(v199 + v733, v735, 1, v724);
      v743 = *(v1040 + 112);
      sub_1E5DFD1CC(v1032, v742, &qword_1ED072D90, &qword_1E66040F0);
      if ((v734)(v742, 1, v724) == 1)
      {
        sub_1E5DFE50C(v742, &qword_1ED072D90, &qword_1E66040F0);
        v744 = 1;
      }

      else
      {
        v745 = v1042;
        v746 = v1043;
        v747 = v1041;
        (*(v1043 + 104))(v1041, *MEMORY[0x1E69686E8], v1042);
        sub_1E6258850();
        sub_1E65D73C8();
        v748 = v747;
        v199 = v1045;
        (*(v746 + 8))(v748, v745);
        (*(v725 + 8))(v742, v724);
        v744 = 0;
      }

      v749 = v1030;
      v732(v199 + v743, v744, 1, v724);
      v750 = v1040;
      v751 = v199 + *(v1040 + 128);
      v752 = v993;
      sub_1E5DFD1CC(v749, v993, &qword_1ED072638, &qword_1E65EB950);
      v753 = type metadata accessor for ActionButtonDescriptor(0);
      v754 = *(*(v753 - 8) + 48);
      if (v754(v752, 1, v753) == 1)
      {
        v755 = (v751 + *(v753 + 20));
        *v755 = 0x323232323232;
        v755[1] = 0xE600000000000000;
        type metadata accessor for ActionButtonDescriptor.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_1E65D76E8();
        v756 = *(v1034 + 1);
        v756(v1019, v194);
        v756(v1021, v194);
        v756(v1020, v194);
        (*(v1027 + 1))(v1024, v1028);
        (*(v1025 + 8))(v1023, v1026);
        v757 = v754(v752, 1, v753) == 1;
        v758 = v1018;
        if (!v757)
        {
          v759 = v1018;
          sub_1E5DFE50C(v752, &qword_1ED072638, &qword_1E65EB950);
          v758 = v759;
        }
      }

      else
      {
        v760 = *(v1034 + 1);
        v760(v1019, v194);
        v760(v1021, v194);
        v760(v1020, v194);
        (*(v1027 + 1))(v1024, v1028);
        (*(v1025 + 8))(v1023, v1026);
        sub_1E63A7DB4(v752, v751);
        v758 = v1018;
      }

      sub_1E5DFD1CC(v758, v1045 + *(v750 + 144), &qword_1ED072638, &qword_1E65EB950);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E63A7AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E03F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A7B54@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    if (a4 == -1 || (sub_1E5F8710C(a2, a3, a4 & 1), sub_1E6018A94(), sub_1E6018AE8(), v6 = sub_1E65D7FD8(), sub_1E5FEE4CC(a2, a3, a4), (v6 & 1) == 0))
    {
      if (qword_1ED071AB8 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED0965A0;
    }

    else
    {
      if (qword_1ED071AB0 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED096588;
    }
  }

  else if (a4 == -1 || (sub_1E5F8710C(a2, a3, a4 & 1), sub_1E6018A94(), sub_1E6018AE8(), v8 = sub_1E65D7FD8(), sub_1E5FEE4CC(a2, a3, a4), (v8 & 1) == 0))
  {
    if (qword_1ED071A50 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED096468;
  }

  else
  {
    if (qword_1ED071A68 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED0964B0;
  }

  v9 = sub_1E65D7348();
  v10 = __swift_project_value_buffer(v9, v7);
  return (*(*(v9 - 8) + 16))(a5, v10, v9);
}

uint64_t sub_1E63A7DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A7E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5DFD1CC(a1, &v6 - v4, &qword_1ED073588, &unk_1E65FEFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  return sub_1E65DE6A8();
}

uint64_t sub_1E63A7ED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v75 = a1;
  v84 = a4;
  v5 = sub_1E65E5128();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5038();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E5058();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v70 - v19;
  v20 = type metadata accessor for PreviewButtonViewMetrics();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v80 = &v70 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AB8, &qword_1E65FF010);
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AC0, &qword_1E65FF018);
  v78 = *(v33 - 8);
  v79 = v33;
  v34 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v70 - v35);
  v38 = a2[3];
  v37 = a2[4];
  v39 = __swift_project_boxed_opaque_existential_1(a2, v38);
  sub_1E63A97C0(v75, v39, v76, v77, v38, v37);
  sub_1E62BC710();

  sub_1E65DE4D8();
  v40 = sub_1E5FED46C(&qword_1ED078AC8, &qword_1ED078AB8, &qword_1E65FF010);
  v41 = sub_1E62F877C();
  v77 = v36;
  v74 = v41;
  v75 = v40;
  sub_1E65E47E8();
  v42 = *(v29 + 8);
  v76 = v28;
  v42(v32, v28);
  swift_getKeyPath();

  sub_1E65E4EC8();

  v87[0] = v88;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v43 = v71;
  sub_1E65DE6B8();
  sub_1E602E924(v24);

  (*(v72 + 8))(v43, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F2010;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v45 = &v24[v21[9]];
  v46 = sub_1E65D8F18();
  v47 = MEMORY[0x1E69E6158];
  *(inited + 48) = v46;
  *(inited + 56) = v48;
  *(inited + 72) = v47;
  *(inited + 80) = 0x6973736572706D69;
  v49 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v49;
  *(inited + 128) = 0x657079546469;
  v51 = *(v24 + 2);
  v50 = *(v24 + 3);
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v51;
  *(inited + 152) = v50;
  *(inited + 168) = v47;
  *(inited + 176) = 0x54746E65746E6F63;
  *(inited + 184) = 0xEB00000000657079;
  v52 = &v24[v21[11]];
  v53 = *(v52 + 1);
  *(inited + 192) = *v52;
  *(inited + 200) = v53;
  *(inited + 216) = v47;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000001E6615500;
  v54 = v21[10];

  v55 = sub_1E65D9F78();
  *(inited + 264) = v47;
  *(inited + 240) = v55;
  *(inited + 248) = v56;
  v57 = sub_1E6215168(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
  swift_arrayDestroy();
  v58 = *(v24 + 5);
  if (v58)
  {
    v59 = *(v24 + 4);
    v90 = v47;
    *&v88 = v59;
    *(&v88 + 1) = v58;
    sub_1E6121EB8(&v88, v87);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v57;
    sub_1E6420DD4(v87, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  v61 = *v24;
  v62 = *(v24 + 1);

  sub_1E65E5048();

  sub_1E65E5028();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1E6215168(MEMORY[0x1E69E7CC0]);
  sub_1E6215168(v63);
  v64 = v80;
  sub_1E65E5068();
  sub_1E63AA058(v24, type metadata accessor for PreviewButtonViewMetrics);

  v65 = sub_1E65E5078();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = v83;
  sub_1E65E5118();
  *&v88 = v76;
  *(&v88 + 1) = &type metadata for WorkoutDetailActionStyle;
  v89 = v75;
  v90 = v74;
  swift_getOpaqueTypeConformance2();
  v67 = v79;
  v68 = v77;
  sub_1E65E4738();

  (*(v85 + 8))(v66, v86);
  sub_1E5DFE50C(v64, &qword_1ED073660, &qword_1E65ED8C0);
  return (*(v78 + 8))(v68, v67);
}

uint64_t sub_1E63A87A0(void *a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B00, &qword_1E65FF220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B08, &qword_1E65FF228);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63AA5CC();
  sub_1E65E6DA8();
  sub_1E63AA620();
  sub_1E65E6B18();
  sub_1E65E6B48();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E63A8998(uint64_t a1)
{
  v2 = sub_1E63AA5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63A89D4(uint64_t a1)
{
  v2 = sub_1E63AA5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63A8A10(uint64_t a1)
{
  v2 = sub_1E63AA620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63A8A4C(uint64_t a1)
{
  v2 = sub_1E63AA620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63A8A88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E63AA258(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E63A8AD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E63A8B30()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E694E740](0);

  return sub_1E65E5D78();
}

uint64_t sub_1E63A8B84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E63A8BE0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E65E6C18();
  }
}

uint64_t sub_1E63A8C10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = a2;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E63A8C38, 0, 0);
}

uint64_t sub_1E63A8C38()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63A8CE4, v3, v2);
}

uint64_t sub_1E63A8CE4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  sub_1E64D7F80(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63A8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for RouteDestination();
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63A8DF4, 0, 0);
}

uint64_t sub_1E63A8DF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v27 = v3[3];
  v28 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v27);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = v5[12];
  v7 = (v1 + v5[16]);
  v8 = v5[20];
  v9 = (v1 + v5[24]);
  v10 = (v1 + v5[28]);
  v11 = v5[32];
  v24 = v5[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  sub_1E65DE488();
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;
  sub_1E63AA004();
  sub_1E65E6848();
  sub_1E65DEC88();
  v13 = sub_1E65DB3E8();
  *v7 = 0;
  v7[1] = 0;
  (*(*(v13 - 8) + 56))(v1 + v8, 1, 1, v13);
  *v9 = sub_1E65DECA8();
  v9[1] = v14;
  *v10 = sub_1E65DECC8();
  v10[1] = v15;
  v16 = *MEMORY[0x1E69CD548];
  v17 = sub_1E65DB5D8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v1 + v11, v16, v17);
  (*(v18 + 56))(v1 + v11, 0, 1, v17);
  v19 = type metadata accessor for AppComposer();
  sub_1E63C08AC(*(v25 + *(v19 + 36)), *(v25 + *(v19 + 36) + 8), v1 + v24);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v20 = *(v26 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v26 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 2;
  *(v0 + 56) = -64;
  sub_1E600F5B0((v0 + 57));
  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  *v21 = v0;
  v21[1] = sub_1E63A90E0;
  v22 = *(v0 + 104);

  return RoutingContext.presentDestination(_:style:priority:)(v22, (v0 + 48), (v0 + 57), v27, v28);
}

uint64_t sub_1E63A90E0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *v1;
  v4[15] = v0;

  sub_1E63AA058(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63497AC, 0, 0);
  }

  else
  {
    v5 = v4[13];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E63A927C(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AB0, &qword_1E65FEFF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - v15;
  v17 = type metadata accessor for PageMetricsClick();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v38 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  LOBYTE(a1) = *a1;
  (*(v9 + 16))(v12, v39, v8);
  sub_1E602EDB0(a1, v12, v16);
  v39 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1E5DFE50C(v16, &qword_1ED078AB0, &qword_1E65FEFF8);
  }

  v37 = type metadata accessor for PageMetricsClick;
  sub_1E5E1E800(v16, v22, type metadata accessor for PageMetricsClick);
  v24 = sub_1E65E60A8();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  v25 = *a3;
  v26 = a3[3];
  v27 = a3[5];
  v28 = a3[7];
  v29 = a3[9];
  v30 = v38;
  sub_1E5E1DB04(v22, v38, type metadata accessor for PageMetricsClick);
  sub_1E65E6058();
  swift_unknownObjectRetain();

  v31 = sub_1E65E6048();
  v32 = (*(v39 + 80) + 112) & ~*(v39 + 80);
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  v35 = *(a3 + 3);
  *(v33 + 64) = *(a3 + 2);
  *(v33 + 80) = v35;
  *(v33 + 96) = *(a3 + 4);
  v36 = *(a3 + 1);
  *(v33 + 32) = *a3;
  *(v33 + 48) = v36;
  sub_1E5E1E800(v30, v33 + v32, v37);
  sub_1E6059EAC(0, 0, v40, &unk_1E65FF008, v33);

  return sub_1E63AA058(v22, type metadata accessor for PageMetricsClick);
}

uint64_t sub_1E63A966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v8 = *(a4 + 56);
  v12 = (*(a4 + 48) + **(a4 + 48));
  v9 = *(*(a4 + 48) + 4);
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_1E5F9D470;

  return v12(a5);
}

uint64_t sub_1E63A97C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v54 = a3;
  v51 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E28, &unk_1E65FABB0);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v53 = *(v14 - 8);
  v50 = *(v53 + 64);
  v15 = v50;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v49 - v16;
  v18 = type metadata accessor for AppComposer();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E30, &unk_1E65FEFA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v52 = &v49 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E38, &qword_1E65FABC0);
  v58 = *(v55 - 8);
  v25 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v49 - v26;
  v63[3] = a5;
  v63[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v56 = *a4;
  sub_1E5E1DB04(a4, v21, type metadata accessor for AppComposer);
  v28 = *(v19 + 80);
  v29 = swift_allocObject();
  sub_1E5E1E800(v21, v29 + ((v28 + 16) & ~v28), type metadata accessor for AppComposer);
  sub_1E5DF650C(v63, v62);
  sub_1E5DFD1CC(a1, v17, &unk_1ED077DD0, &unk_1E65FAB50);
  sub_1E5E1DB04(a4, v21, type metadata accessor for AppComposer);
  v30 = *(v53 + 80);
  v31 = (v30 + 56) & ~v30;
  v32 = swift_allocObject();
  sub_1E5DF599C(v62, v32 + 16);
  sub_1E63A9E20(v17, v32 + v31);
  sub_1E5E1E800(v21, v32 + ((v15 + v28 + v31) & ~v28), type metadata accessor for AppComposer);
  sub_1E62BC710();
  sub_1E65DEAB8();
  sub_1E65DE8B8();
  sub_1E5DFD1CC(v51, v17, &unk_1ED077DD0, &unk_1E65FAB50);
  v33 = swift_allocObject();
  sub_1E63A9E20(v17, v33 + ((v30 + 16) & ~v30));
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  sub_1E5FED46C(&unk_1ED077E60, &qword_1ED077E38, &qword_1E65FABC0);
  v34 = v57;
  v35 = v55;
  sub_1E65E4DE8();
  v36 = *v54;
  v37 = v54[3];
  v38 = v54[5];
  v39 = v54[7];
  v40 = v54[9];
  v41 = v54;
  v42 = swift_allocObject();
  v43 = v41[3];
  v42[3] = v41[2];
  v42[4] = v43;
  v42[5] = v41[4];
  v44 = v41[1];
  v42[1] = *v41;
  v42[2] = v44;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1E62BC768;
  *(v45 + 24) = v42;

  v46 = v61;
  v47 = sub_1E65E4F08();

  (*(v59 + 8))(v34, v60);
  (*(v58 + 8))(v46, v35);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return v47;
}

uint64_t sub_1E63A9E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A9E90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1E64880A4(a1);
}

uint64_t sub_1E63A9F10(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E63A966C(a1, v6, v7, v1 + 32, v1 + v5);
}

unint64_t sub_1E63AA004()
{
  result = qword_1EE2D9BA8[0];
  if (!qword_1EE2D9BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D9BA8);
  }

  return result;
}

uint64_t sub_1E63AA058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63AA0B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E63AA100(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E63AA150()
{
  result = qword_1EE2D9BA0;
  if (!qword_1EE2D9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9BA0);
  }

  return result;
}

unint64_t sub_1E63AA1A8()
{
  result = qword_1ED078AD0;
  if (!qword_1ED078AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AD0);
  }

  return result;
}

unint64_t sub_1E63AA200()
{
  result = qword_1ED078AD8;
  if (!qword_1ED078AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AD8);
  }

  return result;
}

uint64_t sub_1E63AA258(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AE0, &qword_1E65FF208);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AE8, &unk_1E65FF210);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v30 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E63AA5CC();
  sub_1E65E6D98();
  if (v1)
  {
    goto LABEL_6;
  }

  v15 = v8;
  v16 = sub_1E65E6AF8();
  v17 = (2 * *(v16 + 16)) | 1;
  v26 = v16;
  v27 = v16 + 32;
  v28 = 0;
  v29 = v17;
  if ((sub_1E5FBE3F4() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = v7;
    v19 = sub_1E65E68F8();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v21 = &type metadata for PreviewIdentifier;
    v14 = v11;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v11, v18);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v14;
  }

  sub_1E63AA620();
  sub_1E65E6A68();
  v14 = sub_1E65E6AA8();
  (*(v25 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v14;
}

unint64_t sub_1E63AA5CC()
{
  result = qword_1ED078AF0;
  if (!qword_1ED078AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AF0);
  }

  return result;
}

unint64_t sub_1E63AA620()
{
  result = qword_1ED078AF8;
  if (!qword_1ED078AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AF8);
  }

  return result;
}

unint64_t sub_1E63AA698()
{
  result = qword_1ED078B10;
  if (!qword_1ED078B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B10);
  }

  return result;
}

unint64_t sub_1E63AA6F0()
{
  result = qword_1ED078B18;
  if (!qword_1ED078B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B18);
  }

  return result;
}

unint64_t sub_1E63AA748()
{
  result = qword_1ED078B20;
  if (!qword_1ED078B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B20);
  }

  return result;
}

unint64_t sub_1E63AA7A0()
{
  result = qword_1ED078B28;
  if (!qword_1ED078B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B28);
  }

  return result;
}

unint64_t sub_1E63AA7F8()
{
  result = qword_1ED078B30;
  if (!qword_1ED078B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B30);
  }

  return result;
}

unint64_t sub_1E63AA850()
{
  result = qword_1ED078B38;
  if (!qword_1ED078B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B38);
  }

  return result;
}

uint64_t AppComposer.libraryViewBuilder(currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v82 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B40, &qword_1E65FF468);
  v81 = *(v79 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v67 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v6 = *(*(v80 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v67 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v74 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B48, &qword_1E65FF470);
  v72 = *(v83 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v69 = &v67 - v19;
  v20 = sub_1E65DF268();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = sub_1E65DF678();
  v71 = *(v68 - 8);
  v22 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = swift_allocObject();
  *(v92 + 16) = 6;
  sub_1E65E5148();
  v90 = sub_1E65E5138();
  v94 = v2;
  v70 = *v2;
  sub_1E5DF650C(a1, &v102);
  v24 = swift_allocObject();
  sub_1E5DF599C(&v102, v24 + 16);
  sub_1E65DF258();
  sub_1E65DF668();
  v86 = type metadata accessor for AppComposer;
  sub_1E5E1DB6C(v2, v17, type metadata accessor for AppComposer);
  v85 = *(v11 + 80);
  v25 = (v85 + 16) & ~v85;
  v26 = v25 + v12;
  v73 = v25 + v12;
  v27 = swift_allocObject();
  v87 = v25;
  v89 = type metadata accessor for AppComposer;
  sub_1E5E1E868(v17, v27 + v25, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E63B0044(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E63B0044(&qword_1EE2D6798, MEMORY[0x1E699E6C8]);
  v28 = v69;
  v29 = v68;
  sub_1E65E4DE8();
  v30 = v17;
  v91 = v17;
  sub_1E5E1DB6C(v94, v17, type metadata accessor for AppComposer);
  v31 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = v31;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1E5E1E868(v30, v33 + v25, type metadata accessor for AppComposer);
  *(v33 + v31) = v92;
  v34 = v90;
  *(v33 + v32) = v90;

  v35 = v34;

  sub_1E65E4CC8();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1E63AC5A0;
  *(v36 + 24) = v33;

  v37 = v67;
  v70 = sub_1E65E4F08();

  (*(v72 + 8))(v28, v83);
  (*(v71 + 8))(v37, v29);

  v38 = sub_1E65DF558();
  v39 = sub_1E6427300(MEMORY[0x1E69E7CC0]);
  v40 = v94;
  v96 = v94;
  v97 = v35;
  v41 = v93;
  v98 = MEMORY[0x1E69AB380];
  v99 = v93;
  v83 = sub_1E64099A4(v39, sub_1E63AEA7C, v95, v38);

  v42 = v91;
  v43 = v86;
  sub_1E5E1DB6C(v40, v91, v86);
  sub_1E5DF650C(v41, &v102);
  v44 = v32;
  v84 = v32;
  v45 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v87;
  v48 = v89;
  sub_1E5E1E868(v42, v46 + v87, v89);
  v72 = v46;
  v49 = v70;
  *(v46 + v88) = v70;
  v50 = v83;
  *(v46 + v44) = v83;
  sub_1E5DF599C(&v102, v46 + v45);
  v51 = v94;
  v52 = v74;
  sub_1E5E1DB6C(v94, v74, v43);
  sub_1E5DF650C(v93, &v101);
  v53 = swift_allocObject();
  v54 = v53 + v47;
  v55 = v48;
  sub_1E5E1E868(v52, v54, v48);
  v56 = v88;
  v71 = v53;
  *(v53 + v88) = v49;
  *(v53 + v84) = v50;
  sub_1E5DF599C(&v101, v53 + v45);
  v57 = v75;
  sub_1E5E1DB6C(v51, v75, v43);
  sub_1E5DF650C(v93, &v100);
  v58 = swift_allocObject();
  v59 = v87;
  sub_1E5E1E868(v57, v58 + v87, v55);
  *(v58 + v56) = v49;
  *(v58 + v84) = v83;
  sub_1E5DF599C(&v100, v58 + v45);
  *(v58 + ((v45 + 47) & 0xFFFFFFFFFFFFFFF8)) = v90;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B50, &qword_1E65FF488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B58, &qword_1E65FF490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B60, &qword_1E65FF498);
  sub_1E63AF954();
  sub_1E5FED46C(&qword_1ED078B80, &qword_1ED078B58, &qword_1E65FF490);
  sub_1E63AFA0C();
  v60 = v76;
  sub_1E65DF2B8();
  v61 = v91;
  sub_1E5E1DB6C(v94, v91, v86);
  v62 = swift_allocObject();
  sub_1E5E1E868(v61, v62 + v59, v89);
  sub_1E5FED46C(&qword_1ED078BA0, &qword_1ED078B40, &qword_1E65FF468);
  v63 = v77;
  v64 = v79;
  sub_1E6259D5C(sub_1E5FF0278, v62, v79);

  (*(v81 + 8))(v60, v64);
  sub_1E63AFAC4();
  v65 = v78;
  sub_1E5FEE4C8(v63);
  sub_1E5DFE50C(v63, &unk_1ED077800, &qword_1E65F9698);
  sub_1E5FEE4C8(v65);
  sub_1E5DFE50C(v65, &unk_1ED077800, &qword_1E65F9698);
}

uint64_t sub_1E63AB4C0(char a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 74) = a2;
  *(v3 + 73) = a1;
  v4 = type metadata accessor for RouteSource(0);
  *(v3 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  *(v3 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63AB58C, 0, 0);
}

uint64_t sub_1E63AB58C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 73);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E868(v3, &v1[*(v2 + 20)], type metadata accessor for RouteSource);
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  *(v0 + 72) = 2;
  v9 = *(v8 + 32);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_1E63AB750;
  v12 = *(v0 + 48);
  v13 = *(v0 + 74);

  return v15(v12, v13, v0 + 72, v7, v8);
}

uint64_t sub_1E63AB750()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_1E63B0210(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v6 = v4[4];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E63AB8D8(char a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63AB4C0(a1, a2, v2 + 16);
}

uint64_t sub_1E63AB980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v58 = sub_1E65DEEC8();
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - v12;
  v50 = sub_1E65D7848();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DF608();
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v49 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v49 - v26;
  v27 = sub_1E65DF658();
  v52 = *(v27 - 8);
  v53 = v27;
  v28 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AppState();
  v32 = v31[6];
  v33 = *(v57 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E6093FD0();
  v34 = a1 + v31[45];
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v51 = v30;
  sub_1E65DF5C8();
  v36 = v31[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v57 = a1;
  v37 = v50;
  sub_1E65E4C98();
  sub_1E5E1F544(v13);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v38 = *(v14 + 48);
  if (v38(v13, 1, v37) == 1)
  {
    sub_1E65D77C8();
    if (v38(v13, 1, v37) != 1)
    {
      sub_1E5DFE50C(v13, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, v37);
  }

  sub_1E65DF5D8();
  (*(v14 + 8))(v17, v37);
  v39 = *(v55 + 8);
  v40 = v22;
  v41 = v56;
  v39(v40, v56);
  v42 = v57;
  v43 = *(v57 + v31[39]);
  v44 = v54;
  sub_1E65DF5E8();
  v39(v25, v41);
  v45 = v42 + v31[5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  v47 = v59;
  sub_1E5E1DB6C(v45 + *(v46 + 28), v59, MEMORY[0x1E699CE20]);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1E63B0210(v47, MEMORY[0x1E699CE20]);
  }

  sub_1E65DF588();
  v39(v44, v41);
  return (*(v52 + 8))(v51, v53);
}

uint64_t sub_1E63ABEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E63AB980(a1, v6, a2);
}

uint64_t sub_1E63ABF60(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AppState() + 180);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v5 = sub_1E65DF608();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a2, v5);
}

uint64_t sub_1E63ABFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v44 = a4;
  v37 = a3;
  v39 = a1;
  v6 = sub_1E65DF618();
  v40 = *(v6 - 8);
  v7 = *(v40 + 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = v36 - v10;
  v11 = sub_1E65DF658();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65DF6C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v36 - v21;
  v42 = a2;
  sub_1E65DF5F8();
  sub_1E65DF648();
  (*(v12 + 8))(v15, v11);
  (*(v17 + 104))(v20, *MEMORY[0x1E699E6E8], v16);
  sub_1E63B0044(&qword_1ED078BF0, MEMORY[0x1E699E6F8]);
  LOBYTE(v11) = sub_1E65E5B98();
  v23 = *(v17 + 8);
  v23(v20, v16);
  if (v11)
  {
    return (v23)(v22, v16);
  }

  v25 = v44;
  swift_beginAccess();
  sub_1E63AE64C(*(v25 + 16), v38, v37, &v45);
  v26 = sub_1E65E60A8();
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v27 = v41;
  sub_1E5E1DB6C(v39, v41, MEMORY[0x1E699E6B8]);
  (*(v17 + 16))(v20, v22, v16);
  v36[1] = v45;
  v36[2] = *(&v46 + 1);
  v37 = *(&v47 + 1);
  v38 = *(&v48 + 1);
  v39 = *(&v49 + 1);
  v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v29 = (v7 + *(v17 + 80) + v28) & ~*(v17 + 80);
  v30 = swift_allocObject();
  v40 = v23;
  v31 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1E5E1E868(v27, v30 + v28, MEMORY[0x1E699E6B8]);
  (*(v17 + 32))(v31 + v29, v20, v16);
  v32 = (v31 + ((v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v48;
  v32[2] = v47;
  v32[3] = v33;
  v32[4] = v49;
  v34 = v46;
  *v32 = v45;
  v32[1] = v34;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v43, &unk_1E65FF4D0, v31);

  LOBYTE(v31) = sub_1E65DF5A8();

  swift_unknownObjectRelease();
  v40(v22, v16);
  v35 = v44;
  result = swift_beginAccess();
  *(v35 + 16) = v31;
  return result;
}

uint64_t sub_1E63AC5A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63ABFFC(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1E63AC658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v66 = a5;
  v56 = type metadata accessor for AppComposer();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B78, &qword_1E65FF4A0);
  v63 = *(v64 - 8);
  v13 = *(v63 + 64);
  v14 = MEMORY[0x1EEE9AC00](v64);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v51 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B50, &qword_1E65FF488);
  v17 = *(*(v65 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v61 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v51 - v22;
  if (*(a3 + 16) && (v23 = sub_1E6416C34(6), (v24 & 1) != 0))
  {
    v25 = *(a3 + 56) + 88 * v23;
    v26 = *v25;
    v71 = *(v25 + 8);
    v72 = v26;
    v27 = *(v25 + 16);
    v67 = *(v25 + 32);
    v75 = v27;
    v70 = *(v25 + 80);
    v28 = *(v25 + 64);
    v68 = *(v25 + 48);
    v69 = v28;
    sub_1E5E1DB6C(a1, v12, type metadata accessor for AppComposer);
    sub_1E5DF650C(a4, &v74);
    v29 = *(v8 + 80);
    v53 = a4;
    v30 = (v29 + 16) & ~v29;
    v54 = a3;
    v52 = a1;
    v31 = v30 + v9;
    v32 = swift_allocObject();
    sub_1E5E1E868(v12, v32 + v30, type metadata accessor for AppComposer);
    *(v32 + v31) = 6;
    *(v32 + (v31 & 0xFFFFFFFFFFFFFFF8) + 8) = a3;
    sub_1E5DF599C(&v74, v32 + ((((v30 + v9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
    v33 = v52;
    v34 = v55;
    sub_1E5E1DB6C(v52, v55, type metadata accessor for AppComposer);
    sub_1E5DF650C(v53, v73);
    v35 = (v30 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_1E5E1E868(v34, v36 + v30, type metadata accessor for AppComposer);
    v37 = v36 + v35;
    v38 = v71;
    *v37 = v72;
    *(v37 + 8) = v38;
    v39 = v67;
    *(v37 + 16) = v75;
    *(v37 + 32) = v39;
    v40 = v69;
    *(v37 + 48) = v68;
    *(v37 + 64) = v40;
    *(v37 + 80) = v70;
    sub_1E5DF599C(v73, v36 + ((v35 + 95) & 0xFFFFFFFFFFFFFFF8));
    v41 = *(v33 + *(v56 + 20) + 8);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1E65DAE38();
    sub_1E65DAE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E65DF2A8();
    sub_1E63AFB88();
    sub_1E63B0044(&qword_1EE2D67C0, MEMORY[0x1E699E5B8]);
    v42 = v57;
    sub_1E65DF218();
    sub_1E5FED46C(&qword_1ED078B70, &qword_1ED078B78, &qword_1E65FF4A0);
    v43 = v60;
    v44 = v64;
    sub_1E5FEE4C8(v42);
    v45 = *(v63 + 8);
    v45(v42, v44);
    sub_1E5FEE4C8(v43);
    v46 = v59;
    sub_1E62DFC6C(v42, v44);

    swift_unknownObjectRelease();

    v45(v42, v44);
    v45(v43, v44);
    sub_1E63AF954();
    v47 = v61;
    sub_1E5FEE4C8(v46);
    sub_1E5DFE50C(v46, &qword_1ED078B50, &qword_1E65FF488);
    v48 = v62;
    sub_1E5FEE4C8(v47);
    sub_1E5DFE50C(v47, &qword_1ED078B50, &qword_1E65FF488);
    sub_1E5FEE4C8(v48);
    return sub_1E5DFE50C(v48, &qword_1ED078B50, &qword_1E65FF488);
  }

  else
  {
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v74 = 0xD000000000000028;
    *(&v74 + 1) = 0x80000001E6616A20;
    v50 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v50);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63ACE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v35 = a5;
  v8 = type metadata accessor for AppComposer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B58, &qword_1E65FF490);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v33 = &v31 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v34 = &v31 - v23;
  sub_1E5E1DB6C(a1, v11, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v36);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  sub_1E5E1E868(v11, v26 + v24, type metadata accessor for AppComposer);
  *(v26 + v25) = v32;
  sub_1E5DF599C(v36, v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E65DF248();
  sub_1E5FED46C(&qword_1ED078BC8, &qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E63B0044(&qword_1EE2D67C8, MEMORY[0x1E699E5A0]);
  sub_1E65DF578();
  sub_1E5FED46C(&qword_1ED078B80, &qword_1ED078B58, &qword_1E65FF490);
  sub_1E5FEE4C8(v17);
  v27 = *(v13 + 8);
  v27(v17, v12);
  v28 = v33;
  sub_1E5FEE4C8(v20);
  v27(v20, v12);
  v29 = v34;
  sub_1E5FEE4C8(v28);
  v27(v28, v12);
  sub_1E5FEE4C8(v29);
  return (v27)(v29, v12);
}

uint64_t sub_1E63AD254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a2;
  v41 = a5;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B98, &qword_1E65FF4A8);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B60, &qword_1E65FF498);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v35 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v35 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v38 = &v35 - v27;
  sub_1E5E1DB6C(a1, v10, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v42);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1E5E1E868(v10, v30 + v28, type metadata accessor for AppComposer);
  *(v30 + v29) = v36;
  sub_1E5DF599C(v42, v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1E65DF778();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  sub_1E63B0044(&qword_1EE2D6778, MEMORY[0x1E699E748]);
  sub_1E63AFB88();
  sub_1E65DF708();
  v31 = sub_1E5FED46C(&qword_1ED078B90, &qword_1ED078B98, &qword_1E65FF4A8);
  v32 = v39;
  sub_1E614EE6C(v39, v31);
  (*(v40 + 8))(v15, v32);
  sub_1E63AFA0C();
  sub_1E5FEE4C8(v20);
  sub_1E5DFE50C(v20, &qword_1ED078B60, &qword_1E65FF498);
  sub_1E5FEE4C8(v23);
  sub_1E5DFE50C(v23, &qword_1ED078B60, &qword_1E65FF498);
  v33 = v38;
  sub_1E5FEE4C8(v26);
  sub_1E5DFE50C(v26, &qword_1ED078B60, &qword_1E65FF498);
  sub_1E5FEE4C8(v33);
  return sub_1E5DFE50C(v33, &qword_1ED078B60, &qword_1E65FF498);
}

uint64_t sub_1E63AD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v36[3] = a1;
  v43 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v36 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v14 = *(*(v42 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v40 = v36 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v41 = v36 - v20;
  if (*(a3 + 16) && (v21 = sub_1E6416C34(a2), (v22 & 1) != 0))
  {
    v23 = *(a3 + 56) + 88 * v21;
    v24 = *(v23 + 48);
    v47 = *(v23 + 32);
    v48 = v24;
    v49 = *(v23 + 64);
    v50 = *(v23 + 80);
    v25 = *(v23 + 16);
    v46[0] = *v23;
    v46[1] = v25;
    v36[4] = *(&v46[0] + 1);
    v38 = *&v46[0];
    v36[2] = v47;
    v36[1] = v48;

    swift_unknownObjectRetain();

    sub_1E60A2620(a2, v46, v37, v12);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    v28 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
    v44 = v27;
    v45 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v26;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v30 = v39;
    sub_1E5FEE4C8(v12);
    v31 = *(v8 + 8);
    v31(v12, v7);
    sub_1E5FEE4C8(v30);
    sub_1E62DFC6C(v12, v7);

    swift_unknownObjectRelease();

    v31(v12, v7);
    v31(v30, v7);
    sub_1E63AFB88();
    v32 = v40;
    sub_1E5FEE4C8(v17);
    sub_1E5DFE50C(v17, &qword_1ED078BB0, &qword_1E65FF4B0);
    v33 = v41;
    sub_1E5FEE4C8(v32);
    sub_1E5DFE50C(v32, &qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E5FEE4C8(v33);
    return sub_1E5DFE50C(v33, &qword_1ED078BB0, &qword_1E65FF4B0);
  }

  else
  {
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v46[0] = 0xD000000000000020;
    *(&v46[0] + 1) = 0x80000001E66169C0;
    v35 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v35);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63ADBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = type metadata accessor for AppComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BC0, &qword_1E65FF4B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  sub_1E5E1DB6C(a2, v12, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v27);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1E5E1E868(v12, v22 + v20, type metadata accessor for AppComposer);
  *(v22 + v21) = a3;
  sub_1E5DF599C(v27, v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v24 = sub_1E63AFB88();
  sub_1E646280C(sub_1E63AFDC8, a1, sub_1E63B0270, v22, v23, v24, v17);
  sub_1E5FED46C(&qword_1ED078BC8, &qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E5FEE4C8(v17);
  sub_1E5DFE50C(v17, &qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E5FEE4C8(v19);
  return sub_1E5DFE50C(v19, &qword_1ED078BC0, &qword_1E65FF4B8);
}

uint64_t sub_1E63ADE78(uint64_t a1)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BD0, &qword_1E65FF4C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BD8, &qword_1E65FF4C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1E63AFE7C();
  sub_1E65E4DD8();
  sub_1E65DF678();
  sub_1E63B0044(&qword_1EE2D6798, MEMORY[0x1E699E6C8]);
  sub_1E5FED46C(&qword_1ED078BE8, &qword_1ED078BD8, &qword_1E65FF4C8);
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  v11 = sub_1E65E4F08();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_1E63AE0DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E65DF5A8();
  *a1 = result;
  return result;
}

uint64_t sub_1E63AE108(uint64_t a1)
{

  v2 = sub_1E65DF538();

  return MEMORY[0x1EEE07020](sub_1E5FF01C4, a1, v2);
}

uint64_t sub_1E63AE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v36[3] = a2;
  v43 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v36 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v14 = *(*(v42 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v40 = v36 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v41 = v36 - v20;
  if (*(a3 + 16) && (v21 = sub_1E6416C34(a1), (v22 & 1) != 0))
  {
    v23 = *(a3 + 56) + 88 * v21;
    v24 = *(v23 + 48);
    v47 = *(v23 + 32);
    v48 = v24;
    v49 = *(v23 + 64);
    v50 = *(v23 + 80);
    v25 = *(v23 + 16);
    v46[0] = *v23;
    v46[1] = v25;
    v36[4] = *(&v46[0] + 1);
    v38 = *&v46[0];
    v36[2] = v47;
    v36[1] = v48;

    swift_unknownObjectRetain();

    sub_1E60A2620(a1, v46, v37, v12);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    v28 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
    v44 = v27;
    v45 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v26;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v30 = v39;
    sub_1E5FEE4C8(v12);
    v31 = *(v8 + 8);
    v31(v12, v7);
    sub_1E5FEE4C8(v30);
    sub_1E62DFC6C(v12, v7);

    swift_unknownObjectRelease();

    v31(v12, v7);
    v31(v30, v7);
    sub_1E63AFB88();
    v32 = v40;
    sub_1E5FEE4C8(v17);
    sub_1E5DFE50C(v17, &qword_1ED078BB0, &qword_1E65FF4B0);
    v33 = v41;
    sub_1E5FEE4C8(v32);
    sub_1E5DFE50C(v32, &qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E5FEE4C8(v33);
    return sub_1E5DFE50C(v33, &qword_1ED078BB0, &qword_1E65FF4B0);
  }

  else
  {
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v46[0] = 0xD000000000000020;
    *(&v46[0] + 1) = 0x80000001E66169C0;
    v35 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v35);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63AE64C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a2;
  v59 = a4;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v54 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v66 = type metadata accessor for AppComposer;
  sub_1E5E1DB6C(a3, &v54 - v17, type metadata accessor for AppComposer);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  v62 = type metadata accessor for AppComposer;
  sub_1E5E1E868(v18, v21 + v20, type metadata accessor for AppComposer);
  *(v21 + v20 + v8) = a1;
  v64 = a3;
  v65 = v21;
  sub_1E5E1DB6C(a3, v16, type metadata accessor for AppComposer);
  v58 = (v19 + 32) & ~v19;
  v22 = (v58 + v8) & 0xFFFFFFFFFFFFFFF8;
  v56 = v58 + v8;
  v23 = swift_allocObject();
  v55 = v23;
  v63 = &unk_1E65F1EA0;
  *(v23 + 16) = &unk_1E65F1EA0;
  *(v23 + 24) = v21;
  v24 = v16;
  v25 = v62;
  sub_1E5E1E868(v24, v23 + ((v19 + 32) & ~v19), v62);
  *(v23 + ((v19 + 32) & ~v19) + v8) = 0;
  v26 = v23 + v22;
  v54 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v23 + ((v22 + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v66;
  v30 = v67;
  *v27 = v67;
  v27[1] = v28;
  v31 = v28;
  v32 = v57;
  sub_1E5E1DB6C(a3, v57, v29);
  v33 = (v19 + 48) & ~v19;
  v34 = v33 + v8;
  v35 = (v33 + v8) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v63;
  v38 = v65;
  v36[2] = v63;
  v36[3] = v38;
  v36[4] = v30;
  v36[5] = v31;
  sub_1E5E1E868(v32, v36 + v33, v25);
  *(v36 + v34) = 0;
  v39 = v36 + v35;
  v40 = v54;
  *(v39 + 1) = v54;
  *(v39 + 2) = 0;
  v41 = v60;
  v42 = v66;
  sub_1E5E1DB6C(v64, v60, v66);
  v43 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v65;
  v44[2] = v37;
  v44[3] = v45;
  v46 = v67;
  v44[4] = v67;
  v44[5] = MEMORY[0x1E69AB380];
  v47 = v44 + v33;
  v48 = v62;
  sub_1E5E1E868(v41, v47, v62);
  v49 = v44 + v43;
  *v49 = v40;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = v61;
  sub_1E5E1DB6C(v64, v61, v42);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 24) = v45;
  sub_1E5E1E868(v50, v51 + v58, v48);
  swift_retain_n();
  result = swift_retain_n();
  v53 = v59;
  *v59 = v46;
  v53[1] = MEMORY[0x1E69AB380];
  v53[2] = &unk_1E65EB918;
  v53[3] = v55;
  v53[4] = &unk_1E65FA770;
  v53[5] = v36;
  v53[6] = &unk_1E65EB920;
  v53[7] = v44;
  v53[8] = &unk_1E65FA780;
  v53[9] = v51;
  return result;
}

uint64_t objectdestroy_15Tm_1()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v113 = *(*(v117 - 1) + 64);
  v114 = (v115 + 16) & ~v115;
  v116 = v0;
  v110 = v0 + v114;
  v1 = *(v0 + v114);

  v2 = (v0 + v114 + v117[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v5], v112);
  v6 = v4[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v6], v109);
  v7 = v4[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v7], v107);
  v8 = v4[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v8], v105);
  v9 = v4[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v9], v103);
  v10 = v4[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v10], v101);
  v11 = v4[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v11], v99);
  v12 = v4[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v12], v97);
  v13 = v4[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v13], v95);
  v14 = v4[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v14], v93);
  v15 = v4[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v15], v91);
  v16 = v4[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v16], v89);
  v17 = v4[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v17], v87);
  v18 = v4[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v18], v85);
  v19 = v4[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v19], v83);
  v20 = v4[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v20], v81);
  v21 = v4[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v21], v79);
  v22 = v4[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v22], v77);
  v23 = v4[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v23], v75);
  v24 = v4[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v24], v73);
  v25 = v4[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v25], v71);
  v26 = v4[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v26], v69);
  v27 = v4[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v2[v27], v62);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v66 = *(v29[-1].Description + 1);
  v66(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v65 = *(v31[-1].Description + 1);
  v65(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v64 = *(v33[-1].Description + 1);
  v64(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v61 = *(v42[-1].Description + 1);
  v61(&v2[v41], v42);
  v43 = *(v110 + v117[6]);

  v44 = (v110 + v117[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v111(&v47[v4[6]], v112);
  v108(&v47[v4[7]], v109);
  v106(&v47[v4[8]], v107);
  v104(&v47[v4[9]], v105);
  v102(&v47[v4[10]], v103);
  v100(&v47[v4[11]], v101);
  v98(&v47[v4[12]], v99);
  v96(&v47[v4[13]], v97);
  v94(&v47[v4[14]], v95);
  v92(&v47[v4[15]], v93);
  v90(&v47[v4[16]], v91);
  v88(&v47[v4[17]], v89);
  v86(&v47[v4[18]], v87);
  v84(&v47[v4[19]], v85);
  v82(&v47[v4[20]], v83);
  v80(&v47[v4[21]], v81);
  v78(&v47[v4[22]], v79);
  v76(&v47[v4[23]], v77);
  v74(&v47[v4[24]], v75);
  v72(&v47[v4[25]], v73);
  v70(&v47[v4[26]], v71);
  v68(&v47[v4[27]], v69);
  v67(&v47[v4[28]], v62);
  v66(&v47[v4[29]], v29);
  v65(&v47[v4[30]], v31);
  v64(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v63(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v61(&v47[v4[36]], v42);
  v54 = *(v110 + v117[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v117[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v110 + v117[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v113 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v116 + v56);

  v59 = *(v116 + v57);

  __swift_destroy_boxed_opaque_existential_1((v116 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E63AF7CC(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);

  return a1(v1 + v3, v6, v7, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E63AF894@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63AD254(v1 + v4, v8, v9, v1 + v7, a1);
}

unint64_t sub_1E63AF954()
{
  result = qword_1ED078B68;
  if (!qword_1ED078B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078B50, &qword_1E65FF488);
    sub_1E5FED46C(&qword_1ED078B70, &qword_1ED078B78, &qword_1E65FF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B68);
  }

  return result;
}

unint64_t sub_1E63AFA0C()
{
  result = qword_1ED078B88;
  if (!qword_1ED078B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078B60, &qword_1E65FF498);
    sub_1E5FED46C(&qword_1ED078B90, &qword_1ED078B98, &qword_1E65FF4A8);
    sub_1E614F070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B88);
  }

  return result;
}

unint64_t sub_1E63AFAC4()
{
  result = qword_1ED078BA8;
  if (!qword_1ED078BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077800, &qword_1E65F9698);
    sub_1E5FED46C(&qword_1ED078BA0, &qword_1ED078B40, &qword_1E65FF468);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BA8);
  }

  return result;
}

unint64_t sub_1E63AFB88()
{
  result = qword_1ED078BB8;
  if (!qword_1ED078BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078BB0, &qword_1E65FF4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BB8);
  }

  return result;
}

uint64_t sub_1E63AFCC8()
{

  return MEMORY[0x1EEE06D88](sub_1E604FC60, v0);
}

uint64_t sub_1E63AFD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);

  return sub_1E63ADBB4(v7, v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63AFDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63AE164(a1, v2 + v6, *(v2 + v7), v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), a2);
}

unint64_t sub_1E63AFE7C()
{
  result = qword_1ED078BE0;
  if (!qword_1ED078BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BE0);
  }

  return result;
}

uint64_t sub_1E63AFED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1E63AD6CC(v1 + v4, v6, v7, v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63AFF7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 95) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v10[2] = *(v6 + 40);
  v10[3] = v8;
  v10[4] = *(v6 + 72);
  v10[0] = *(v6 + 8);
  v10[1] = v7;
  return sub_1E6137C68(v10, v1 + v5, a1);
}

uint64_t sub_1E63B0044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63B008C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DF618() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65DF6C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E6275E18(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E63B0210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63B0274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E63B032C();
  sub_1E65E0678();
  sub_1E65E07C8();
  return sub_1E65E1908();
}

double sub_1E63B032C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v0 = dbl_1E65FF4D8[v2];
  sub_1E65E0678();
  if (sub_1E65E07C8())
  {
    sub_1E65E0678();
    if (sub_1E65E07C8())
    {
      return 0.33;
    }

    else
    {
      return 0.5;
    }
  }

  return v0;
}

uint64_t sub_1E63B03C8(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = *(a1 + 48) + 24 * (__clz(__rbit64(v5)) | (v8 << 6));
      v5 &= v5 - 1;
      v20 = *v10;
      v21 = *(v10 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
      result = sub_1E65D7FB8();
      if (v19 != 3)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E64F6654(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v18 = v13 + 1;
      v15 = v9;
      v16 = *(v9 + 16);
      result = sub_1E64F6654((v12 > 1), v13 + 1, 1, v15);
      v13 = v16;
      v14 = v18;
      v9 = result;
    }

    *(v9 + 16) = v14;
    *(v9 + v13 + 32) = v19;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v17 = sub_1E600B048(v9);

      return v17;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63B0584()
{
  v14 = MEMORY[0x1E69E7CD0];
  sub_1E65D81D8();
  if (v0)
  {

    if (sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v12, 4);
    }

    sub_1E65D8088();
    if (v1)
    {

      v2 = 1;
LABEL_6:
      sub_1E60F191C(v12, v2);
    }
  }

  else
  {
    sub_1E65D8088();
    if (v3)
    {

      sub_1E60F191C(v12, 1);
    }

    if (sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v12, 0);
    }

    v4 = sub_1E65D80C8();
    v6 = v5;
    v12[0] = v4;
    v12[1] = v5;
    v8 = v7 & 1;
    v13 = v7 & 1;
    sub_1E6018A94();
    sub_1E6018AE8();
    v9 = sub_1E65D7FE8();
    sub_1E5FEE4CC(v4, v6, v8);
    if (v9)
    {
      sub_1E60F191C(v12, 3);
    }

    v10 = sub_1E65D81C8();
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v2 = 2;
      goto LABEL_6;
    }
  }

  return v14;
}

uint64_t sub_1E63B0704(uint64_t a1)
{
  v16 = MEMORY[0x1E69E7CD0];
  sub_1E65D81D8();
  if (v2)
  {

    if (sub_1E637E938(1, a1))
    {
      sub_1E65D8088();
      if (v3)
      {

        sub_1E60F191C(v14, 1);
      }
    }

    if ((sub_1E637E938(0, a1) & 1) != 0 && sub_1E65D80D8() >= 1)
    {
      v4 = 4;
LABEL_8:
      sub_1E60F191C(v14, v4);
    }
  }

  else
  {
    if (sub_1E637E938(1, a1))
    {
      sub_1E65D8088();
      if (v5)
      {

        sub_1E60F191C(v14, 1);
      }
    }

    if (sub_1E637E938(3, a1))
    {
      v6 = sub_1E65D80C8();
      v8 = v7;
      v14[0] = v6;
      v14[1] = v7;
      v10 = v9 & 1;
      v15 = v9 & 1;
      sub_1E6018A94();
      sub_1E6018AE8();
      v11 = sub_1E65D7FE8();
      sub_1E5FEE4CC(v6, v8, v10);
      if (v11)
      {
        sub_1E60F191C(v14, 3);
      }
    }

    if ((sub_1E637E938(0, a1) & 1) != 0 && sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v14, 0);
    }

    if (sub_1E637E938(2, a1))
    {
      v12 = sub_1E65D81C8();
      if (v12 != 2 && (v12 & 1) != 0)
      {
        v4 = 2;
        goto LABEL_8;
      }
    }
  }

  return v16;
}

uint64_t sub_1E63B08E8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E1278();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E699E7D8])
  {
    v10 = MEMORY[0x1E69CD588];
LABEL_5:
    (*(v5 + 96))(v8, v4);
    *a1 = *v8;
    v11 = *v10;
    v12 = sub_1E65DB638();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  if (v9 == *MEMORY[0x1E699E7E0])
  {
    v10 = MEMORY[0x1E69CD590];
    goto LABEL_5;
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000048, 0x80000001E6616A90);
  sub_1E65E69B8();
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63B0B0C(uint64_t a1)
{
  v3 = sub_1E65E3378();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v49 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = v35 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v35[1] = v1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1E601C1F4(0, v9, 0);
  v10 = v55;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  v13 = sub_1E65E6748();
  v14 = 0;
  v48 = v4 + 16;
  v47 = v4 + 88;
  v46 = *MEMORY[0x1E699EBF8];
  v40 = *MEMORY[0x1E699EBF0];
  v38 = *MEMORY[0x1E699EC00];
  v15 = *MEMORY[0x1E699EBE8];
  v36 = *MEMORY[0x1E699EBE0];
  v37 = v15;
  v44 = a1 + 56;
  v45 = (v4 + 8);
  v39 = a1 + 64;
  v42 = v4;
  v43 = v3;
  v41 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_31;
    }

    v52 = 1 << v13;
    v53 = v10;
    v18 = *(a1 + 36);
    v50 = v14;
    v51 = v18;
    v19 = a1;
    v20 = *(v4 + 16);
    v21 = v54;
    v20(v54, *(a1 + 48) + *(v4 + 72) * v13, v3);
    v22 = v49;
    v20(v49, v21, v3);
    v23 = (*(v4 + 88))(v22, v3);
    if (v23 == v46)
    {
      v24 = 0;
      a1 = v19;
      v10 = v53;
    }

    else
    {
      a1 = v19;
      if (v23 == v40)
      {
        v24 = 1;
        v10 = v53;
      }

      else
      {
        v10 = v53;
        if (v23 == v38)
        {
          v24 = 2;
        }

        else if (v23 == v37)
        {
          v24 = 3;
        }

        else
        {
          if (v23 != v36)
          {
            goto LABEL_35;
          }

          v24 = 4;
        }
      }
    }

    (*v45)(v54, v3);
    v55 = v10;
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1E601C1F4((v25 > 1), v26 + 1, 1);
      v10 = v55;
    }

    *(v10 + 16) = v26 + 1;
    *(v10 + v26 + 32) = v24;
    v16 = 1 << *(a1 + 32);
    if (v13 >= v16)
    {
      goto LABEL_32;
    }

    v11 = v44;
    v27 = *(v44 + 8 * v17);
    if ((v27 & v52) == 0)
    {
      goto LABEL_33;
    }

    if (v51 != *(a1 + 36))
    {
      goto LABEL_34;
    }

    v28 = v27 & (-2 << (v13 & 0x3F));
    if (v28)
    {
      v16 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v4 = v42;
    }

    else
    {
      v29 = v17 << 6;
      v30 = v17 + 1;
      v31 = (v39 + 8 * v17);
      v4 = v42;
      while (v30 < (v16 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          sub_1E5F87098(v13, v51, 0);
          v16 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v13, v51, 0);
    }

LABEL_4:
    v14 = v50 + 1;
    v13 = v16;
    v3 = v43;
    if (v50 + 1 == v41)
    {
      return v10;
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
LABEL_35:
  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E63B0F44(uint64_t a1)
{
  v46 = sub_1E65D8EF8();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65D96F8();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E601BF04(0, v9, 0);
  v10 = v50;
  v11 = -1 << *(a1 + 32);
  v49 = a1 + 56;
  result = sub_1E65E6748();
  v13 = result;
  v14 = 0;
  v40 = (v3 + 8);
  v41 = v6 + 16;
  v42 = v6;
  v38 = a1;
  v39 = v6 + 8;
  v36 = a1 + 64;
  v37 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v47 = v14;
    v48 = v17;
    v18 = *(a1 + 48);
    v19 = v42;
    v20 = v10;
    v22 = v43;
    v21 = v44;
    (*(v42 + 16))(v43, v18 + *(v42 + 72) * v13, v44);
    v23 = v45;
    sub_1E65D96B8();
    v24 = sub_1E65D8EB8();
    (*v40)(v23, v46);
    v25 = v22;
    v10 = v20;
    result = (*(v19 + 8))(v25, v21);
    v50 = v20;
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    a1 = v38;
    if (v27 >= v26 >> 1)
    {
      result = sub_1E601BF04((v26 > 1), v27 + 1, 1);
      v10 = v50;
    }

    *(v10 + 16) = v27 + 1;
    *(v10 + 8 * v27 + 32) = v24;
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v28 = *(v49 + 8 * v16);
    if ((v28 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v13 & 0x3F));
    if (v29)
    {
      v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v16 << 6;
      v31 = v16 + 1;
      v32 = (v36 + 8 * v16);
      while (v31 < (v15 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1E5F87098(v13, v48, 0);
          v15 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v13, v48, 0);
    }

LABEL_4:
    v14 = v47 + 1;
    v13 = v15;
    if (v47 + 1 == v37)
    {
      return v10;
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
  return result;
}