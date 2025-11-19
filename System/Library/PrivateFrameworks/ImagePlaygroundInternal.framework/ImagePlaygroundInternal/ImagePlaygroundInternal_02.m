uint64_t sub_1D22B4BA8()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_1D22B70F4;
  }

  else
  {
    v5 = sub_1D22B4CFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D22B4CFC()
{

  v1 = sub_1D262AD28();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 216);
    v4 = *(v0 + 160);
    v5 = *(v0 + 112);
    v6 = objc_allocWithZone(sub_1D2871D88());
    v7 = v2;
    v8 = sub_1D2871D68();
    v5(v8, 0);

    sub_1D22BCF70(v4, type metadata accessor for PlaygroundImage);
    sub_1D22BCF70(v3, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_3;
  }

  sub_1D2872718();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A18();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "Generated image is not a pixel buffer", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  v14 = *(v0 + 216);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);

  (*(v18 + 8))(v15, v17);
  sub_1D22BCEB8();
  v19 = swift_allocError();
  *v20 = 1;
  swift_willThrow();
  sub_1D22BCF70(v16, type metadata accessor for PlaygroundImage);
  sub_1D22BCF70(v14, type metadata accessor for ImageGeneration.PreviewImage);
  *(v0 + 48) = v19;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v22 = *(v0 + 112);

    sub_1D22BCE64();
    v23 = swift_allocError();
    *v24 = xmmword_1D287CB60;
    *(v24 + 16) = -96;
    v22(0, v23);

    goto LABEL_3;
  }

  sub_1D2872718();
  v25 = v19;
  v26 = sub_1D2873CA8();
  v27 = sub_1D2878A18();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v19;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_1D226E000, v26, v27, "Failed to generate image with error: %@", v28, 0xCu);
    sub_1D22BD238(v29, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v29, -1, -1);
    MEMORY[0x1D38A3520](v28, -1, -1);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v34 = *(v0 + 128);

  (*(v33 + 8))(v32, v34);
  *(v0 + 56) = v19;
  v35 = v19;
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 16);
    v37 = *(v0 + 24);
    v38 = *(v0 + 32);
    v39 = sub_1D2871D98();
    sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
    v40 = swift_allocError();
    v42 = v41;
    if (sub_1D22B7FC4(v36, v37, v38))
    {
      v43 = MEMORY[0x1E696E260];
LABEL_42:
      v47 = *(v0 + 112);
      (*(*(v39 - 8) + 104))(v42, *v43, v39);
      v47(0, v40);

      sub_1D22BCDC4(v36, v37, v38);
      goto LABEL_3;
    }

    if ((v38 & 0xF0) == 0xA0)
    {
      if (!(v37 | v36) && v38 == 160)
      {
        v43 = MEMORY[0x1E696E248];
        goto LABEL_42;
      }

      if (v36 == 2 && !v37 && v38 == 160)
      {
        v43 = MEMORY[0x1E696E238];
        goto LABEL_42;
      }

      if (v36 == 5 && !v37 && v38 == 160)
      {
        v43 = MEMORY[0x1E696E268];
        goto LABEL_42;
      }

      if (v36 == 6 && !v37 && v38 == 160)
      {
        v43 = MEMORY[0x1E696E258];
        goto LABEL_42;
      }

      if (v36 == 10 && !v37 && v38 == 160)
      {
        v43 = MEMORY[0x1E696E240];
        goto LABEL_42;
      }
    }

    v43 = MEMORY[0x1E696E250];
    goto LABEL_42;
  }

  *(v0 + 64) = v19;
  v44 = v19;
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
  {
    (*(v0 + 112))(0, 0);
  }

  else
  {
    v45 = *(v0 + 112);
    v46 = v19;
    v45(0, v19);
  }

LABEL_3:
  sub_1D22B7698(*(v0 + 72));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D22B5408()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);

  (*(v4 + 8))(v2, v3);
  sub_1D22BD238(v1, &unk_1EC6D94A0);
  v5 = *(v0 + 464);
  *(v0 + 48) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v7 = *(v0 + 112);

    sub_1D22BCE64();
    v8 = swift_allocError();
    *v9 = xmmword_1D287CB60;
    *(v9 + 16) = -96;
    v7(0, v8);

    v10 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v11 = v5;
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v5;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D226E000, v12, v13, "Failed to generate image with error: %@", v14, 0xCu);
    sub_1D22BD238(v15, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);

  (*(v19 + 8))(v18, v20);
  *(v0 + 56) = v5;
  v21 = v5;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v5;
    v30 = v5;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v10 = v5;
    }

    else
    {
      v31 = *(v0 + 112);
      v32 = v5;
      v31(0, v5);

      v10 = v5;
    }

    goto LABEL_35;
  }

  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v26 = swift_allocError();
  v28 = v27;
  if ((sub_1D22B7FC4(v22, v23, v24) & 1) == 0)
  {
    if ((v24 & 0xF0) == 0xA0)
    {
      if (!(v23 | v22) && v24 == 160)
      {
        v29 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v22 == 2 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v22 == 5 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v22 == 6 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v22 == 10 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v29 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v29 = MEMORY[0x1E696E260];
LABEL_34:
  v33 = *(v0 + 112);
  (*(*(v25 - 8) + 104))(v28, *v29, v25);
  v33(0, v26);

  sub_1D22BCDC4(v22, v23, v24);
  v10 = v26;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D22B59E4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);

  (*(v4 + 8))(v2, v3);
  sub_1D22BD238(v1, &unk_1EC6D94A0);
  v5 = *(v0 + 480);
  *(v0 + 48) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v7 = *(v0 + 112);

    sub_1D22BCE64();
    v8 = swift_allocError();
    *v9 = xmmword_1D287CB60;
    *(v9 + 16) = -96;
    v7(0, v8);

    v10 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v11 = v5;
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v5;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D226E000, v12, v13, "Failed to generate image with error: %@", v14, 0xCu);
    sub_1D22BD238(v15, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);

  (*(v19 + 8))(v18, v20);
  *(v0 + 56) = v5;
  v21 = v5;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v5;
    v30 = v5;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v10 = v5;
    }

    else
    {
      v31 = *(v0 + 112);
      v32 = v5;
      v31(0, v5);

      v10 = v5;
    }

    goto LABEL_35;
  }

  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v26 = swift_allocError();
  v28 = v27;
  if ((sub_1D22B7FC4(v22, v23, v24) & 1) == 0)
  {
    if ((v24 & 0xF0) == 0xA0)
    {
      if (!(v23 | v22) && v24 == 160)
      {
        v29 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v22 == 2 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v22 == 5 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v22 == 6 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v22 == 10 && !v23 && v24 == 160)
      {
        v29 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v29 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v29 = MEMORY[0x1E696E260];
LABEL_34:
  v33 = *(v0 + 112);
  (*(*(v25 - 8) + 104))(v28, *v29, v25);
  v33(0, v26);

  sub_1D22BCDC4(v22, v23, v24);
  v10 = v26;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D22B5FCC()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);

  (*(v4 + 8))(v2, v3);
  sub_1D22BD238(v1, &unk_1EC6D94A0);
  sub_1D22BCF70(v5, type metadata accessor for ImageGeneration.GenerationParameters);
  v6 = *(v0 + 504);
  *(v0 + 48) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v8 = *(v0 + 112);

    sub_1D22BCE64();
    v9 = swift_allocError();
    *v10 = xmmword_1D287CB60;
    *(v10 + 16) = -96;
    v8(0, v9);

    v11 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v12 = v6;
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A18();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v6;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D226E000, v13, v14, "Failed to generate image with error: %@", v15, 0xCu);
    sub_1D22BD238(v16, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v16, -1, -1);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);

  (*(v20 + 8))(v19, v21);
  *(v0 + 56) = v6;
  v22 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v6;
    v31 = v6;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v11 = v6;
    }

    else
    {
      v32 = *(v0 + 112);
      v33 = v6;
      v32(0, v6);

      v11 = v6;
    }

    goto LABEL_35;
  }

  v23 = *(v0 + 16);
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  v26 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v27 = swift_allocError();
  v29 = v28;
  if ((sub_1D22B7FC4(v23, v24, v25) & 1) == 0)
  {
    if ((v25 & 0xF0) == 0xA0)
    {
      if (!(v24 | v23) && v25 == 160)
      {
        v30 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v23 == 2 && !v24 && v25 == 160)
      {
        v30 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v23 == 5 && !v24 && v25 == 160)
      {
        v30 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v23 == 6 && !v24 && v25 == 160)
      {
        v30 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v23 == 10 && !v24 && v25 == 160)
      {
        v30 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v30 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v30 = MEMORY[0x1E696E260];
LABEL_34:
  v34 = *(v0 + 112);
  (*(*(v26 - 8) + 104))(v29, *v30, v26);
  v34(0, v27);

  sub_1D22BCDC4(v23, v24, v25);
  v11 = v27;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1D22B65D4()
{

  v1 = *(v0 + 528);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v3 = *(v0 + 112);

    sub_1D22BCE64();
    v4 = swift_allocError();
    *v5 = xmmword_1D287CB60;
    *(v5 + 16) = -96;
    v3(0, v4);

    v6 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v7 = v1;
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A18();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D226E000, v8, v9, "Failed to generate image with error: %@", v10, 0xCu);
    sub_1D22BD238(v11, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 128);

  (*(v15 + 8))(v14, v16);
  *(v0 + 56) = v1;
  v17 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v1;
    v26 = v1;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v6 = v1;
    }

    else
    {
      v27 = *(v0 + 112);
      v28 = v1;
      v27(0, v1);

      v6 = v1;
    }

    goto LABEL_35;
  }

  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v22 = swift_allocError();
  v24 = v23;
  if ((sub_1D22B7FC4(v18, v19, v20) & 1) == 0)
  {
    if ((v20 & 0xF0) == 0xA0)
    {
      if (!(v19 | v18) && v20 == 160)
      {
        v25 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v18 == 2 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v18 == 5 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v18 == 6 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v18 == 10 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v25 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v25 = MEMORY[0x1E696E260];
LABEL_34:
  v29 = *(v0 + 112);
  (*(*(v21 - 8) + 104))(v24, *v25, v21);
  v29(0, v22);

  sub_1D22BCDC4(v18, v19, v20);
  v6 = v22;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D22B6B64()
{

  v1 = *(v0 + 560);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v3 = *(v0 + 112);

    sub_1D22BCE64();
    v4 = swift_allocError();
    *v5 = xmmword_1D287CB60;
    *(v5 + 16) = -96;
    v3(0, v4);

    v6 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v7 = v1;
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A18();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D226E000, v8, v9, "Failed to generate image with error: %@", v10, 0xCu);
    sub_1D22BD238(v11, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 128);

  (*(v15 + 8))(v14, v16);
  *(v0 + 56) = v1;
  v17 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v1;
    v26 = v1;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v6 = v1;
    }

    else
    {
      v27 = *(v0 + 112);
      v28 = v1;
      v27(0, v1);

      v6 = v1;
    }

    goto LABEL_35;
  }

  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v22 = swift_allocError();
  v24 = v23;
  if ((sub_1D22B7FC4(v18, v19, v20) & 1) == 0)
  {
    if ((v20 & 0xF0) == 0xA0)
    {
      if (!(v19 | v18) && v20 == 160)
      {
        v25 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v18 == 2 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v18 == 5 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v18 == 6 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v18 == 10 && !v19 && v20 == 160)
      {
        v25 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v25 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v25 = MEMORY[0x1E696E260];
LABEL_34:
  v29 = *(v0 + 112);
  (*(*(v21 - 8) + 104))(v24, *v25, v21);
  v29(0, v22);

  sub_1D22BCDC4(v18, v19, v20);
  v6 = v22;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D22B70F4()
{
  v1 = *(v0 + 216);

  sub_1D22BCF70(v1, type metadata accessor for ImageGeneration.PreviewImage);
  v2 = *(v0 + 584);
  *(v0 + 48) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 33) == 1)
  {
    v4 = *(v0 + 112);

    sub_1D22BCE64();
    v5 = swift_allocError();
    *v6 = xmmword_1D287CB60;
    *(v6 + 16) = -96;
    v4(0, v5);

    v7 = *(v0 + 48);
    goto LABEL_35;
  }

  sub_1D2872718();
  v8 = v2;
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A18();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D226E000, v9, v10, "Failed to generate image with error: %@", v11, 0xCu);
    sub_1D22BD238(v12, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);

  (*(v16 + 8))(v15, v17);
  *(v0 + 56) = v2;
  v18 = v2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 64) = v2;
    v27 = v2;
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 34) == 3)
    {
      (*(v0 + 112))(0, 0);
      v7 = v2;
    }

    else
    {
      v28 = *(v0 + 112);
      v29 = v2;
      v28(0, v2);

      v7 = v2;
    }

    goto LABEL_35;
  }

  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v22 = sub_1D2871D98();
  sub_1D22BA450(&qword_1EC6D94B8, MEMORY[0x1E696E270]);
  v23 = swift_allocError();
  v25 = v24;
  if ((sub_1D22B7FC4(v19, v20, v21) & 1) == 0)
  {
    if ((v21 & 0xF0) == 0xA0)
    {
      if (!(v20 | v19) && v21 == 160)
      {
        v26 = MEMORY[0x1E696E248];
        goto LABEL_34;
      }

      if (v19 == 2 && !v20 && v21 == 160)
      {
        v26 = MEMORY[0x1E696E238];
        goto LABEL_34;
      }

      if (v19 == 5 && !v20 && v21 == 160)
      {
        v26 = MEMORY[0x1E696E268];
        goto LABEL_34;
      }

      if (v19 == 6 && !v20 && v21 == 160)
      {
        v26 = MEMORY[0x1E696E258];
        goto LABEL_34;
      }

      if (v19 == 10 && !v20 && v21 == 160)
      {
        v26 = MEMORY[0x1E696E240];
        goto LABEL_34;
      }
    }

    v26 = MEMORY[0x1E696E250];
    goto LABEL_34;
  }

  v26 = MEMORY[0x1E696E260];
LABEL_34:
  v30 = *(v0 + 112);
  (*(*(v22 - 8) + 104))(v25, *v26, v22);
  v30(0, v23);

  sub_1D22BCDC4(v19, v20, v21);
  v7 = v23;
LABEL_35:

  sub_1D22B7698(*(v0 + 72));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D22B7698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_nextGenerations;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    sub_1D22BD1D0(v13 + v14, v11, &qword_1EC6D94D8);
    sub_1D22BD1D0(v13 + v14, v8, &qword_1EC6D94D8);
    sub_1D278CF98(0, 1);
    v15 = *(v5 + 48);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
    (*(*(v16 - 8) + 8))(&v8[v15], v16);
    v17 = sub_1D2871818();
    (*(*(v17 - 8) + 8))(v8, v17);
    sub_1D2878518();
    return sub_1D22BD238(v11, &qword_1EC6D94D8);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E30);
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration;
    swift_beginAccess();
    sub_1D22BD298(v4, a1 + v20, &qword_1EC6D8E68);
    return swift_endAccess();
  }
}

void sub_1D22B7B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D28714A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1D22B7C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v11 = *(v10 + 56);
  v12 = sub_1D2871818();
  (*(*(v12 - 8) + 16))(v9, a3, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  (*(*(v13 - 8) + 16))(&v9[v11], a1, v13);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_nextGenerations;
  swift_beginAccess();
  v15 = *(a2 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D27CC7CC(0, v15[2] + 1, 1, v15);
    *(a2 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D27CC7CC(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  result = sub_1D22BD0C8(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
  *(a2 + v14) = v15;
  return result;
}

uint64_t sub_1D22B7DFC()
{
  v1 = OBJC_IVAR____TtCC23ImagePlaygroundInternal14NonUIGeneratorP33_A4A6B2279B4943086706F677B8B22A2211RateLimiter_clock;
  v2 = sub_1D2879328();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t NonUIGenerator.deinit()
{

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration, &qword_1EC6D8E68);

  return v0;
}

uint64_t NonUIGenerator.__deallocating_deinit()
{

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14NonUIGenerator_currentGeneration, &qword_1EC6D8E68);

  return swift_deallocClassInstance();
}

uint64_t sub_1D22B7FC4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D2873968();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[5] = a1;
  v15[6] = a2;
  v16 = a3;
  v10 = sub_1D2400188(&unk_1F4DBD3C8);
  sub_1D22BD018(&unk_1F4DBD3E8);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B25A0], v6);
  sub_1D22BCE64();
  v15[3] = sub_1D2879748();
  v15[4] = v11;
  v15[1] = sub_1D2873958();
  v15[2] = v12;
  sub_1D22BD06C();
  v13 = sub_1D2878FF8();
  (*(v7 + 8))(v9, v6);

  return v13 & 1;
}

uint64_t sub_1D22B8150@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a4;
  v35 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a7;
    v37 = a2;
    v38 = a6;
    v39 = a8;
    v40 = a9;
    v41 = a10;
    v17 = sub_1D2874E28();
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v33 = v10;
      sub_1D2879168();

      strcpy(v43, "View.task @ ");
      BYTE5(v43[1]) = 0;
      HIWORD(v43[1]) = -5120;
      MEMORY[0x1D38A0C50](a3, v34);
      MEMORY[0x1D38A0C50](58, 0xE100000000000000);
      v42 = v35;
      v28 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v28);
    }

    v29 = sub_1D28785F8();
    v30 = MEMORY[0x1EEE9AC00](v29);
    (*(v32 + 16))(&v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v30);
    sub_1D2870F68();
    sub_1D2870F78();
    sub_1D2874E18();
    MEMORY[0x1D389F9A0](v20, v40, v17, v41);

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v21 = sub_1D2874BC8();
    MEMORY[0x1EEE9AC00](v21);
    v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v24 + 20);
    v26 = sub_1D28785F8();
    (*(*(v26 - 8) + 16))(&v23[v25], a2, v26);
    *v23 = a6;
    *(v23 + 1) = a7;
    MEMORY[0x1D389F9A0](v23, a9, v21, a10);
    return sub_1D22BCF70(v23, MEMORY[0x1E697C028]);
  }
}

uint64_t sub_1D22B84CC()
{
  swift_getWitnessTable();

  return sub_1D2871C48();
}

_DWORD *sub_1D22B8538@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D22B8568(uint64_t a1, id *a2)
{
  result = sub_1D2878088();
  *a2 = 0;
  return result;
}

uint64_t sub_1D22B85E0(uint64_t a1, id *a2)
{
  v3 = sub_1D2878098();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D22B8660@<X0>(uint64_t *a1@<X8>)
{
  sub_1D28780A8();
  v2 = sub_1D2878068();

  *a1 = v2;
  return result;
}

uint64_t sub_1D22B8770(uint64_t a1)
{
  v2 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D22B87DC(uint64_t a1)
{
  v2 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D22B8848(void *a1, uint64_t a2)
{
  v4 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D22B88D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D22B8954()
{
  swift_getWitnessTable();

  return sub_1D2871C48();
}

uint64_t sub_1D22B89D0(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D22B8A3C(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D22B8AA8(void *a1, uint64_t a2)
{
  v4 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D22B8B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D22B8BB4()
{
  sub_1D28797D8();
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D22B8C14(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D7520, type metadata accessor for Key);
  v3 = sub_1D22BA450(&unk_1EC6D96E8, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B8D8C()
{
  sub_1D28797D8();
  swift_getWitnessTable();
  sub_1D2871C58();
  return sub_1D2879828();
}

uint64_t sub_1D22B8DF0(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D96D0, type metadata accessor for NLTagScheme);
  v3 = sub_1D22BA450(&unk_1EC6D96D8, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B8EAC(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9670, type metadata accessor for URLResourceKey);
  v3 = sub_1D22BA450(&unk_1EC6D9678, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B8F68(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9610, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D22B8FD4(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9610, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D22B9040(uint64_t a1)
{
  v2 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D22B90AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D22BA450(&unk_1EC6D9640, type metadata accessor for PHPhotosError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D22B9130(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D96B0, type metadata accessor for PHAssetExportRequestFileURLKey);
  v3 = sub_1D22BA450(&qword_1EC6D96B8, type metadata accessor for PHAssetExportRequestFileURLKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B91EC(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
  v3 = sub_1D22BA450(&qword_1EC6D96F8, type metadata accessor for IAPayloadKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B92A8(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D96A0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1D22BA450(&qword_1EC6D96A8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B9364(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D96C0, type metadata accessor for AXMFeatureDescriptionOption);
  v3 = sub_1D22BA450(&qword_1EC6D96C8, type metadata accessor for AXMFeatureDescriptionOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B9420(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9690, type metadata accessor for InfoKey);
  v3 = sub_1D22BA450(&qword_1EC6D9698, type metadata accessor for InfoKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B94DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2878068();

  *a1 = v2;
  return result;
}

uint64_t sub_1D22B9524(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1ED89CD10, type metadata accessor for VFXWorldLoaderOption);
  v3 = sub_1D22BA450(&qword_1EC6D9688, type metadata accessor for VFXWorldLoaderOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D22B95E0(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9368, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D22B964C(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D9368, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D22B96B8(uint64_t a1)
{
  v2 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D22B9724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D22BA450(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D22B97A8()
{
  v0 = sub_1D28780A8();
  v1 = MEMORY[0x1D38A0D20](v0);

  return v1;
}

uint64_t sub_1D22B97E4()
{
  sub_1D28780A8();
  sub_1D2877F38();
}

uint64_t sub_1D22B9838()
{
  sub_1D28780A8();
  sub_1D28797D8();
  sub_1D2877F38();
  v0 = sub_1D2879828();

  return v0;
}

uint64_t sub_1D22B98AC()
{
  v0 = sub_1D28780A8();
  v2 = v1;
  if (v0 == sub_1D28780A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2879618();
  }

  return v5 & 1;
}

uint64_t sub_1D22B9934(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D22B9A28;

  return v5(v2 + 32);
}

uint64_t sub_1D22B9A28()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D22B9B3C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D22B9C30;

  return v5(v2 + 16);
}

uint64_t sub_1D22B9C30()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D22B9DC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D22ADD2C(a1, v4, v5, v6);
}

uint64_t sub_1D22B9E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D22AEACC(a1, v4, v5, v6);
}

uint64_t sub_1D22B9F48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D22AF048(a1, v4, v5, v7, v6);
}

uint64_t sub_1D22BA008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D22AF994(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D22BA0D0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D22AFFCC(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1D22BA1C4()
{
  result = qword_1ED89D270;
  if (!qword_1ED89D270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8E88);
    sub_1D22BA2E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D270);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D22BA2E0()
{
  result = qword_1ED89D250;
  if (!qword_1ED89D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8E88);
    sub_1D22BA364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D250);
  }

  return result;
}

unint64_t sub_1D22BA364()
{
  result = qword_1ED89D628;
  if (!qword_1ED89D628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8E90);
    sub_1D22BA450(qword_1ED89F558, type metadata accessor for ComposingCompactFooterButton);
    sub_1D22BA450(qword_1ED89F4B0, type metadata accessor for ComposingRegularFooterButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D628);
  }

  return result;
}

uint64_t sub_1D22BA450(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D22BA498()
{
  result = qword_1ED89D578;
  if (!qword_1ED89D578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8EA8);
    sub_1D22BA5D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8);
    sub_1D22BA874();
    sub_1D22BA820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D578);
  }

  return result;
}

unint64_t sub_1D22BA5D0()
{
  result = qword_1ED89D580;
  if (!qword_1ED89D580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EC0);
    sub_1D22BA73C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE0);
    sub_1D22BB9D8(qword_1ED8A03A8, &qword_1EC6D8EE0);
    sub_1D22BA820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D580);
  }

  return result;
}

unint64_t sub_1D22BA73C()
{
  result = qword_1ED89DE58;
  if (!qword_1ED89DE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EB8);
    sub_1D22BB9D8(&qword_1ED8A03A0, &unk_1EC6D8EC8);
    sub_1D22BB9D8(&qword_1ED89D330, &qword_1EC6D8ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE58);
  }

  return result;
}

unint64_t sub_1D22BA820()
{
  result = qword_1ED8A4E40[0];
  if (!qword_1ED8A4E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4E40);
  }

  return result;
}

unint64_t sub_1D22BA874()
{
  result = qword_1ED89D210;
  if (!qword_1ED89D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EE8);
    sub_1D22BA8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D210);
  }

  return result;
}

unint64_t sub_1D22BA8F8()
{
  result = qword_1ED89D278;
  if (!qword_1ED89D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8F00);
    sub_1D22BAA10();
    swift_getOpaqueTypeConformance2();
    sub_1D22BAAF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D278);
  }

  return result;
}

unint64_t sub_1D22BAA10()
{
  result = qword_1ED89DE18;
  if (!qword_1ED89DE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D8F00);
    sub_1D22BAA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE18);
  }

  return result;
}

unint64_t sub_1D22BAA9C()
{
  result = qword_1ED8A4680[0];
  if (!qword_1ED8A4680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4680);
  }

  return result;
}

unint64_t sub_1D22BAAF0()
{
  result = qword_1ED8A0768;
  if (!qword_1ED8A0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0768);
  }

  return result;
}

unint64_t sub_1D22BAB44()
{
  result = qword_1EC6D8F28;
  if (!qword_1EC6D8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F50);
    sub_1D2872008();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F88);
    sub_1D22BAECC();
    sub_1D22BAFB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB064();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BA450(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB118();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FD0);
    sub_1D22BB194();
    sub_1D22BB3B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8F28);
  }

  return result;
}

unint64_t sub_1D22BAECC()
{
  result = qword_1EC6D8F90;
  if (!qword_1EC6D8F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F88);
    sub_1D22BB9D8(&qword_1EC6D8F98, &qword_1EC6D8FA0);
    sub_1D22BB9D8(&qword_1ED89D330, &qword_1EC6D8ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8F90);
  }

  return result;
}

unint64_t sub_1D22BAFB0()
{
  result = qword_1EC6D8FA8;
  if (!qword_1EC6D8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F80);
    sub_1D22BA450(&unk_1EC6D8FB0, type metadata accessor for ImageGenerationPerson);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8FA8);
  }

  return result;
}

unint64_t sub_1D22BB064()
{
  result = qword_1EC6D8BC8;
  if (!qword_1EC6D8BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F70);
    sub_1D22BA450(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8BC8);
  }

  return result;
}

unint64_t sub_1D22BB118()
{
  result = qword_1EC6D8FC0;
  if (!qword_1EC6D8FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8FC0);
  }

  return result;
}

unint64_t sub_1D22BB194()
{
  result = qword_1EC6D8FD8;
  if (!qword_1EC6D8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FC8);
    sub_1D22BB220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8FD8);
  }

  return result;
}

unint64_t sub_1D22BB220()
{
  result = qword_1EC6D8FE0;
  if (!qword_1EC6D8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FE8);
    sub_1D22BB2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8FE0);
  }

  return result;
}

unint64_t sub_1D22BB2AC()
{
  result = qword_1EC6D8FF0;
  if (!qword_1EC6D8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FF8);
    sub_1D22BB330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8FF0);
  }

  return result;
}

unint64_t sub_1D22BB330()
{
  result = qword_1EC6D9000;
  if (!qword_1EC6D9000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9008);
    sub_1D22BAA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9000);
  }

  return result;
}

unint64_t sub_1D22BB3B4()
{
  result = qword_1EC6D9010;
  if (!qword_1EC6D9010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FD0);
    sub_1D22BB440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9010);
  }

  return result;
}

unint64_t sub_1D22BB440()
{
  result = qword_1EC6D9018;
  if (!qword_1EC6D9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9020);
    sub_1D22BA820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9018);
  }

  return result;
}

unint64_t sub_1D22BB4CC()
{
  result = qword_1EC6D7D08;
  if (!qword_1EC6D7D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9040);
    sub_1D22BB5E0();
    sub_1D22BB708();
    swift_getOpaqueTypeConformance2();
    sub_1D22BA450(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D08);
  }

  return result;
}

unint64_t sub_1D22BB5E0()
{
  result = qword_1EC6D7CD8;
  if (!qword_1EC6D7CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9050);
    sub_1D22BB9D8(&qword_1EC6D76F8, &qword_1EC6D9050);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CD8);
  }

  return result;
}

unint64_t sub_1D22BB708()
{
  result = qword_1EC6D8B20;
  if (!qword_1EC6D8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8B20);
  }

  return result;
}

unint64_t sub_1D22BB75C()
{
  result = qword_1EC6D7CE8;
  if (!qword_1EC6D7CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D90A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9078);
    sub_1D22BB9D8(&qword_1ED89D148, &qword_1EC6D9078);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CE8);
  }

  return result;
}

unint64_t sub_1D22BB920()
{
  result = qword_1EC6D7D50;
  if (!qword_1EC6D7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90B8);
    sub_1D22BB9D8(&qword_1EC6D7788, &qword_1EC6D90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D50);
  }

  return result;
}

uint64_t sub_1D22BB9D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D22BBA20(uint64_t a1)
{
  v3 = sub_1D2871818();
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v12[1] = v1;
  v8 = 0;
  v9 = (v4 + 8);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
    sub_1D28717F8();
    v10 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    (*v9)(v6, v3);
    if (v10)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D22BBBCC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *a1;
  v18 = v49;
  result = sub_1D22BBA20(*a1);
  if (!v18)
  {
    v49 = v16;
    v39 = v10;
    v40 = v13;
    v37 = 0;
    if (v20)
    {
      return v17[2];
    }

    v43 = v8;
    v44 = v6;
    v45 = v4;
    v38 = a1;
    v48 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v23 = v17 + 2;
      v22 = v17[2];
      v24 = v49;
      if (v21 == v22)
      {
        return v48;
      }

      v41 = a2;
      v42 = (v47 + 8);
      while (v21 < v22)
      {
        v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v25 = v17 + v46;
        v26 = *(v43 + 72);
        v47 = v26 * v21;
        sub_1D22BD1D0(v17 + v46 + v26 * v21, v24, &qword_1EC6D94D8);
        v27 = v44;
        sub_1D28717F8();
        v28 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        v29 = v27;
        v24 = v49;
        (*v42)(v29, v45);
        result = sub_1D22BD238(v24, &qword_1EC6D94D8);
        if ((v28 & 1) == 0)
        {
          v30 = v48;
          if (v21 != v48)
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            v31 = *v23;
            if (v48 >= v31)
            {
              goto LABEL_23;
            }

            v32 = v26 * v48;
            result = sub_1D22BD1D0(&v25[v26 * v48], v40, &qword_1EC6D94D8);
            if (v21 >= v31)
            {
              goto LABEL_24;
            }

            v33 = v47;
            v34 = v39;
            sub_1D22BD1D0(&v25[v47], v39, &qword_1EC6D94D8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1D278BC90(v17);
            }

            v35 = v40;
            v36 = v17 + v46;
            result = sub_1D22BD298(v34, v17 + v46 + v32, &qword_1EC6D94D8);
            if (v21 >= v17[2])
            {
              goto LABEL_25;
            }

            result = sub_1D22BD298(v35, &v36[v33], &qword_1EC6D94D8);
            *v38 = v17;
            v30 = v48;
            v24 = v49;
          }

          v48 = v30 + 1;
        }

        ++v21;
        v23 = v17 + 2;
        v22 = v17[2];
        if (v21 == v22)
        {
          return v48;
        }
      }

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

    __break(1u);
  }

  return result;
}

uint64_t sub_1D22BBFAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D2870F78();
  }

  else
  {
    return sub_1D2870F68();
  }
}

unint64_t sub_1D22BBFBC()
{
  result = qword_1EC6D90C8;
  if (!qword_1EC6D90C8)
  {
    sub_1D2874E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D90C8);
  }

  return result;
}

uint64_t sub_1D22BC030(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D22BC068()
{
  sub_1D22BC150();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D22BC150()
{
  if (!qword_1EC6D9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8E30);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6D9120);
    }
  }
}

uint64_t sub_1D22BC1BC()
{
  result = sub_1D2879328();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D22BC2CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NonUIGenerator.RateLimiter.Metrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NonUIGenerator.RateLimiter.Metrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D22BC39C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D22BC3BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D22BC618()
{
  result = qword_1EC6D9390;
  if (!qword_1EC6D9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9390);
  }

  return result;
}

uint64_t sub_1D22BC78C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D22B9B3C(a1, v4);
}

uint64_t sub_1D22BC844(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D22B9B3C(a1, v4);
}

uint64_t sub_1D22BC8FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D22BC9F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D22B9934(a1, v4);
}

uint64_t objectdestroy_83Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_79Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_75Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22BCBB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D22AF048(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22BCCB0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D22B1E58(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1D22BCDC4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 <= 4)
  {
    if ((a3 >> 4) <= 1u || v3 == 2 || v3 == 3 || v3 == 4)
    {
    }

    return;
  }

  if ((a3 >> 4) > 6u)
  {
    if (v3 != 7 && v3 != 8 && v3 != 9)
    {
      return;
    }

LABEL_16:

    return;
  }

  if (v3 == 5)
  {
    goto LABEL_16;
  }

  if (v3 == 6)
  {
    sub_1D22BCE4C(a1, a2, a3 & 0xF);
  }
}

uint64_t sub_1D22BCE4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1D22BCE64()
{
  result = qword_1ED8A5DE0;
  if (!qword_1ED8A5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5DE0);
  }

  return result;
}

unint64_t sub_1D22BCEB8()
{
  result = qword_1ED8A5DC8;
  if (!qword_1ED8A5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5DC8);
  }

  return result;
}

uint64_t sub_1D22BCF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGeneration.PreviewImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D22BCF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D22BCFD0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D22BD06C()
{
  result = qword_1ED89CFD0;
  if (!qword_1ED89CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFD0);
  }

  return result;
}

uint64_t sub_1D22BD0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D22BD1D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22BD238(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D22BD298(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D22BD300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D233BEF0(a1, v4);
}

void sub_1D22BDF88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1D22BE038(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D2878068();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v6;
}

id sub_1D22BE114(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1D2870F68();
  v10 = sub_1D22BE038(a1, a2, 0);
  sub_1D2872548();
  sub_1D2870F68();
  v11 = v10;
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A08();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1D23D7C84(a1, a2, v23);
    *(v14 + 12) = 2080;
    v16 = [v11 localizedName];
    v17 = sub_1D28780A8();
    v22 = v4;
    v19 = v18;

    v20 = sub_1D23D7C84(v17, v19, v23);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1D226E000, v12, v13, "Fetched application record for bundleID: %s Localized name: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return v11;
}

id sub_1D22BE518(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v9 = sub_1D2878068();
  v10 = [v8 initWithBundleIdentifier_];

  v11 = [objc_opt_self() imageDescriptorNamed_];
  v12 = [v10 prepareImageForDescriptor_];
  v13 = v12;
  if (v12 && (v14 = v12, v15 = [v14 CGImage], v14, v15))
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    return v16;
  }

  else
  {
    sub_1D2872548();
    sub_1D2870F68();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v25 = v4;
      v23 = v22;
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D23D7C84(a1, a2, &v27);
      _os_log_impl(&dword_1D226E000, v18, v19, "Unable to fetch app icon for bundleID: %s. Returning generic icon.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1D38A3520](v23, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);

      (*(v26 + 8))(v7, v25);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }
}

uint64_t AppProtectionBundleIDs.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D2879488();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1D22BE878()
{
  result = qword_1EC6D9950;
  if (!qword_1EC6D9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9950);
  }

  return result;
}

uint64_t sub_1D22BE8CC()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D22BE940()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D22BE994@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D2879488();

  *a1 = v2 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AppProtectionBundleIDs(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppProtectionBundleIDs(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1D22BEAF4(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = sub_1D2878068();
  v7 = [v5 applicationWithBundleIdentifier_];

  v8 = [objc_opt_self() sharedGuard];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  v11[4] = sub_1D22BF5D4;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D24936B8;
  v11[3] = &block_descriptor;
  v10 = _Block_copy(v11);
  sub_1D2870F78();
  sub_1D2870F78();

  [v8 authenticateForSubject:v7 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1D22BEC6C(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  LODWORD(v8) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1D2873CB8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872548();
  v16 = a2;
  v17 = sub_1D2873CA8();
  v18 = sub_1D2878A08();

  if (os_log_type_enabled(v17, v18))
  {
    v29 = a4;
    v31 = a5;
    v19 = v8;
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 67109378;
    v30 = v19;
    *(v8 + 4) = v19 & 1;
    *(v8 + 8) = 2112;
    if (a2)
    {
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v8 + 10) = v22;
    *v20 = v23;
    _os_log_impl(&dword_1D226E000, v17, v18, "Authentication success: %{BOOL}d error: %@", v8, 0x12u);
    sub_1D22BF6D0(v20);
    MEMORY[0x1D38A3520](v20, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);
    a5 = v31;
    LOBYTE(v8) = v30;
    a4 = v29;
  }

  (*(v13 + 8))(v15, v12);
  v24 = sub_1D28785F8();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v25 = sub_1D2878558();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = v32;
  *(v26 + 40) = a4;
  *(v26 + 48) = v8 & 1;
  *(v26 + 56) = a5;
  sub_1D22AE01C(0, 0, v11, &unk_1D287E868, v26);
}

uint64_t sub_1D22BEF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 48) = a6;
  *(v7 + 16) = a4;
  sub_1D2878568();
  *(v7 + 40) = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22BF010, v9, v8);
}

uint64_t sub_1D22BF010()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v2(v1);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = sub_1D2870F78();
  }

  v5 = *(v0 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1D22A576C(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D22BF0B8()
{
  sub_1D22A576C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D22BF114@<X0>(uint64_t *a1@<X8>)
{

  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D22BF150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D2873CB8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1D2878568();
  v5[7] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22BF244, v8, v7);
}

uint64_t sub_1D22BF244()
{
  v26 = v0;
  v1 = v0[2];

  sub_1D2872548();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v24 = v0[6];
    v9 = v0[2];
    v23 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D23D7C84(0xD000000000000021, 0x80000001D28AF4D0, &v25);
    *(v10 + 12) = 2080;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_1D28780A8();
    v16 = v15;

    v17 = sub_1D23D7C84(v14, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "%s shieldView: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);

    (*(v7 + 8))(v24, v23);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[3];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v18 + 24);
    sub_1D2870F78();
    sub_1D22BEAF4(v19, v20);
    sub_1D22A576C(v19);
  }

  v21 = v0[1];

  return v21();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D22BF5F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D22BEF70(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D22BF6D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DA930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D22BF738()
{
  v0 = [objc_opt_self() lockedApplications];
  sub_1D28789C8();
  v1 = sub_1D28783E8();

  if (v1 >> 62)
  {
LABEL_21:
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
LABEL_16:

      return v2 != v4;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D38A1C30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v7 = [v5 bundleIdentifier];
    v8 = sub_1D28780A8();
    v10 = v9;

    if (v8 == 0xD000000000000019 && 0x80000001D28AEBE0 == v10)
    {
      break;
    }

    v12 = sub_1D2879618();

    v3 = v4 + 1;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  return v2 != v4;
}

uint64_t sub_1D22BF8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D22BF150(a1, v4, v5, v7, v6);
}

void sub_1D22BF9A4()
{
  sub_1D22BFAB4();
  if (v0 <= 0x3F)
  {
    sub_1D22BFB04();
    if (v1 <= 0x3F)
    {
      sub_1D22BFB5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D22BFAB4()
{
  result = qword_1ED89CBD0;
  if (!qword_1ED89CBD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED89CBD0);
  }

  return result;
}

void sub_1D22BFB04()
{
  if (!qword_1ED89D3C8)
  {
    sub_1D2875E18();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D3C8);
    }
  }
}

void sub_1D22BFB5C()
{
  if (!qword_1ED89DF38)
  {
    sub_1D22BFBB8();
    v0 = sub_1D2874778();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DF38);
    }
  }
}

unint64_t sub_1D22BFBB8()
{
  result = qword_1ED8A6C40;
  if (!qword_1ED8A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C40);
  }

  return result;
}

uint64_t sub_1D22BFC50@<X0>(uint64_t a1@<X8>)
{
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();
  v3 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v3 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_1D22C04E0;
  v7[2] = v5;
  return result;
}

uint64_t sub_1D22BFD8C()
{
  sub_1D2875798();
  sub_1D2875798();

  return sub_1D2877268();
}

uint64_t sub_1D22BFE64@<X0>(uint64_t a1@<X8>)
{
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();
  v3 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v3 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_1D22C03D8;
  v7[2] = v5;
  return result;
}

uint64_t sub_1D22BFFA0()
{
  sub_1D2875798();
  sub_1D2875798();

  return sub_1D2877268();
}

uint64_t sub_1D22C006C()
{
  sub_1D2870F68();
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C8);
  sub_1D22BB9D8(&qword_1EC6D99D0, &qword_1EC6D99C8);
  return sub_1D28775C8();
}

uint64_t sub_1D22C015C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for ComposingFooterImageInputMenu();
  sub_1D22BFC50(v13);
  sub_1D22BFE64(v10);
  sub_1D22C02F4(v13, v7);
  sub_1D22C02F4(v10, v4);
  sub_1D22C02F4(v7, a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E0);
  sub_1D22C02F4(v4, a1 + *(v14 + 48));
  sub_1D22C0364(v10);
  sub_1D22C0364(v13);
  sub_1D22C0364(v4);
  return sub_1D22C0364(v7);
}

uint64_t sub_1D22C02F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D22C0364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D22C041C()
{
  result = qword_1EC6D99F0;
  if (!qword_1EC6D99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99F8);
    sub_1D22BB9D8(&qword_1EC6D99D0, &qword_1EC6D99C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D99F0);
  }

  return result;
}

uint64_t sub_1D22C04E4(uint64_t result)
{
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C05F4(uint64_t result)
{
  if (*(v1 + 121) == (result & 1))
  {
    *(v1 + 121) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C0704(char a1)
{
  v2 = *(v1 + 122);
  if (v2 == (a1 & 1))
  {
    *(v1 + 122) = a1 & 1;
    swift_getKeyPath();
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();

    v5 = *(v1 + 122);
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(v2, v5, (*(v1 + 127) & 1) == 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C08E0(char a1)
{
  if (*(v1 + 123) == (a1 & 1))
  {
    *(v1 + 123) = a1 & 1;

    return sub_1D22C2EAC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C0A14(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 124);
  if (v3 == v2)
  {
    *(v1 + 124) = v2;

    return sub_1D22C3158(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C0B48(uint64_t result)
{
  if (*(v1 + 125) == (result & 1))
  {
    *(v1 + 125) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C0C58(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 126);
  if (v3 == v2)
  {
    *(v1 + 126) = v2;

    return sub_1D22C3594(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C0D8C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 127);
  if (v3 == v2)
  {
    *(v1 + 127) = v2;

    return sub_1D22C38B4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C0EC0(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C0FD0(char a1)
{
  v2 = *(v1 + 129);
  if (v2 == (a1 & 1))
  {
    *(v1 + 129) = a1 & 1;
    swift_getKeyPath();
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();

    v5 = *(v1 + 129);
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(v2, v5, (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C11B4(char a1)
{
  v2 = *(v1 + 130);
  if (v2 == (a1 & 1))
  {
    *(v1 + 130) = a1 & 1;
    swift_getKeyPath();
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();

    v5 = *(v1 + 130);
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(v2, v5, (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C1398(uint64_t result)
{
  if (*(v1 + 131) == (result & 1))
  {
    *(v1 + 131) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C14A8(char a1)
{
  v2 = *(v1 + 132);
  if (v2 == (a1 & 1))
  {
    *(v1 + 132) = a1 & 1;
    swift_getKeyPath();
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();

    v5 = *(v1 + 132);
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(v2, v5, (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C168C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D22C1808(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C190C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C1A60(unsigned __int8 *a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle) == *a1)
  {

    return sub_1D22CFDEC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C1B98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D22D7678(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  LOBYTE(v8) = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v9(v7, a1, v4);
    sub_1D22CF944(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[2] = v2;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D22C1E00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D22BD1D0(v1 + 80, a1, &qword_1EC6D9A58);
}

uint64_t sub_1D22C1ED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D22BD1D0(v3 + 80, a2, &qword_1EC6D9A58);
}

uint64_t sub_1D22C1FA0(uint64_t a1)
{
  sub_1D22BD1D0(a1, v2, &qword_1EC6D9A58);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v2, &qword_1EC6D9A58);
}

uint64_t sub_1D22C20A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + 80, &qword_1EC6D9A58);
  return swift_endAccess();
}

uint64_t sub_1D22C211C()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (v0[127])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[124])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[122])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[129])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[132])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  return v0[131];
}

uint64_t sub_1D22C22E8()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 127);
}

uint64_t sub_1D22C2388()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 124);
}

uint64_t sub_1D22C2428()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 122);
}

uint64_t sub_1D22C24C8()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 129);
}

uint64_t sub_1D22C2568()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 132);
}

uint64_t sub_1D22C2608()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 131);
}

uint64_t sub_1D22C26A8()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (v0[127])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[124])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[122])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[126])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[129])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (v0[132])
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  return v0[131];
}

uint64_t sub_1D22C28AC()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 126);
}

uint64_t sub_1D22C294C()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 120);
}

uint64_t sub_1D22C29EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1D22C2AC4()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 121);
}

uint64_t sub_1D22C2B6C(uint64_t result, char a2, char a3)
{
  if ((result & 1) != (a2 & 1))
  {
    swift_getKeyPath();
    if (a2)
    {
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719E8();

      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_1D23322C0();
    }

    else
    {
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719E8();

      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_1D2332050(a3 & 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D22C2CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 122);
  return result;
}

uint64_t sub_1D22C2D9C(uint64_t a1, char a2)
{
  v3 = *(a1 + 122);
  *(a1 + 122) = a2;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = *(a1 + 122);
  swift_getKeyPath();
  sub_1D28719E8();

  return sub_1D22C2B6C(v3, v4, (*(a1 + 127) & 1) == 0);
}

uint64_t sub_1D22C2EAC()
{
  v1 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v2 = *(v0 + 123);
  if (v2 == *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22C3088()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 123);
}

uint64_t sub_1D22C3158(char a1)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (v1[124] != v3)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = sub_1D22C26A8();
      swift_getKeyPath();
      sub_1D28719E8();

      sub_1D2460FE8(v5 & 1, v1[120]);
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    sub_1D28719E8();

    v6 = v1[122];
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(a1 & 1, v6, (v1[127] & 1) == 0);
  }

  return result;
}

uint64_t sub_1D22C334C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 124);
  return result;
}

uint64_t sub_1D22C341C()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 125);
}

uint64_t sub_1D22C34BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 125);
  return result;
}

uint64_t sub_1D22C3594(char a1)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v3 = v1[126];
  swift_getKeyPath();
  sub_1D28719E8();

  if (v1[129] & 1) != 0 || (swift_getKeyPath(), sub_1D28719E8(), , (v1[130]))
  {
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v4 = v1[132] ^ 1;
  }

  return sub_1D22C2B6C(a1 & 1, v3, v4 & 1);
}

uint64_t sub_1D22C3710()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 130);
}

uint64_t sub_1D22C37B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 126);
  return result;
}

uint64_t sub_1D22C3880(uint64_t a1, char a2)
{
  v3 = *(a1 + 126);
  *(a1 + 126) = a2;
  return sub_1D22C3594(v3);
}

uint64_t sub_1D22C38B4(char a1)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (*(v1 + 127) != v3)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = sub_1D22C26A8();
      swift_getKeyPath();
      sub_1D28719E8();

      sub_1D2460FE8(v5 & 1, *(v1 + 120));
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D22C2B6C(a1 & 1, *(v1 + 127), 1);
  }

  return result;
}

uint64_t sub_1D22C3A58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 127);
  return result;
}

uint64_t sub_1D22C3B28()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v0 + 128);
}

uint64_t sub_1D22C3BC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1D22C3C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1D22C3D54(uint64_t a1, char a2)
{
  v3 = *(a1 + 129);
  *(a1 + 129) = a2;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = *(a1 + 129);
  swift_getKeyPath();
  sub_1D28719E8();

  return sub_1D22C2B6C(v3, v4, (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
}

uint64_t sub_1D22C3E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D22C3F04, v6, v5);
}

uint64_t sub_1D22C3F04()
{
  *(v0 + 48) = sub_1D22C4240();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D22C3FB0;

  return sub_1D27C3D80();
}

uint64_t sub_1D22C3FB0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1D22C416C;
  }

  else
  {
    v6 = sub_1D22C4104;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D22C4104()
{

  sub_1D22C0FD0(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22C416C()
{

  sub_1D22D76CC();
  v1 = swift_allocError();
  v2 = v1;
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v1);

  v3 = *(v0 + 8);

  return v3();
}

id sub_1D22C4240()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___cameraAuthViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___cameraAuthViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___cameraAuthViewModel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CameraAuthViewModel()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D22C42B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 130);
  return result;
}

uint64_t sub_1D22C4384(uint64_t a1, char a2)
{
  v3 = *(a1 + 130);
  *(a1 + 130) = a2;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = *(a1 + 130);
  swift_getKeyPath();
  sub_1D28719E8();

  return sub_1D22C2B6C(v3, v4, (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
}

uint64_t sub_1D22C449C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 131);
  return result;
}

uint64_t sub_1D22C4574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 132);
  return result;
}

uint64_t sub_1D22C4644(uint64_t a1, char a2)
{
  v3 = *(a1 + 132);
  *(a1 + 132) = a2;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = *(a1 + 132);
  swift_getKeyPath();
  sub_1D28719E8();

  return sub_1D22C2B6C(v3, v4, (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) & 1) == 0);
}

uint64_t sub_1D22C475C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v33 - v3;
  v4 = sub_1D2871818();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = v5;
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PlaygroundImage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel___observationRegistrar;
  v45 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  v36 = v18;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v19, v11, &unk_1EC6DE5A0);
  v37 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1D22BD238(v11, &unk_1EC6DE5A0);
  }

  sub_1D22D7158(v11, v17, type metadata accessor for PlaygroundImage);
  sub_1D2871808();
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v33 - 2) = v1;
    *(&v33 - 8) = 1;
    v44 = v1;
    sub_1D28719D8();
  }

  v34 = v17;
  v35 = v8;
  v22 = sub_1D28785F8();
  (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  v24 = v40;
  v23 = v41;
  v25 = v42;
  (*(v41 + 16))(v40, v8, v42);
  v26 = v17;
  v27 = v38;
  sub_1D22D71C0(v26, v38, type metadata accessor for PlaygroundImage);
  sub_1D2878568();
  sub_1D2870F78();
  v28 = sub_1D2878558();
  v29 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v30 = (v39 + *(v37 + 80) + v29) & ~*(v37 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  *(v31 + 2) = v28;
  *(v31 + 3) = v32;
  *(v31 + 4) = v1;
  (*(v23 + 32))(&v31[v29], v24, v25);
  sub_1D22D7158(v27, &v31[v30], type metadata accessor for PlaygroundImage);
  sub_1D22AE31C(0, 0, v43, &unk_1D287F4C8, v31);

  (*(v23 + 8))(v35, v25);
  return sub_1D22D7228(v34, type metadata accessor for PlaygroundImage);
}

uint64_t sub_1D22C4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v7 = *(type metadata accessor for PlaygroundImage() - 8);
  v6[9] = v7;
  v6[10] = *(v7 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = sub_1D2878568();
  v6[13] = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22C4E00, v9, v8);
}

uint64_t sub_1D22C4E00()
{
  v1 = *(v0 + 48);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    sub_1D22D71C0(*(v0 + 64), v3, type metadata accessor for PlaygroundImage);
    sub_1D2870F78();
    v6 = sub_1D2878558();
    v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v6;
    v8[3] = v9;
    v8[4] = v5;
    sub_1D22D7158(v3, v8 + v7, type metadata accessor for PlaygroundImage);
    v15 = sub_1D28717B8();
    v11 = v10;
    swift_getKeyPath();
    *(v0 + 24) = Strong;
    sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
    {
      swift_getKeyPath();
      v12 = swift_task_alloc();
      v12[2] = Strong;
      v12[3] = v15;
      v12[4] = v11;
      v12[5] = &unk_1D287F4D8;
      v12[6] = v8;
      *(v0 + 32) = Strong;
      sub_1D2870F78();
      sub_1D2870F68();
      sub_1D2870F78();
      sub_1D28719D8();

      sub_1D28786B8();
    }

    else
    {
      sub_1D230EA90(v15, v11, &unk_1D287F4D8, v8);
    }

    swift_unknownObjectRelease();
  }

  **(v0 + 40) = Strong == 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D22C5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D22C520C, v6, v5);
}

uint64_t sub_1D22C520C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel___observationRegistrar;
  v0[2] = v1;
  v0[9] = v2;
  v0[10] = sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D230F430(v0[5]);
    swift_unknownObjectRelease();
  }

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1D22C5358;
  v4 = v0[5];

  return sub_1D22C5588(v4, 1, 0, 0);
}

uint64_t sub_1D22C5358()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D22C5478, v3, v2);
}

uint64_t sub_1D22C5478()
{
  v1 = v0[4];

  sub_1D22C759C();
  sub_1D22C7B30();
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage))
  {
    v2 = v0[4];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[3] = v2;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D22C5588(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = v4;
  *(v5 + 65) = a2;
  *(v5 + 280) = a1;
  *(v5 + 288) = a3;
  v6 = type metadata accessor for PhotosPersonAsset();
  *(v5 + 312) = v6;
  *(v5 + 320) = *(v6 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = type metadata accessor for PlaygroundImage();
  *(v5 + 376) = swift_task_alloc();
  v7 = sub_1D2872008();
  *(v5 + 384) = v7;
  *(v5 + 392) = *(v7 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = sub_1D2878568();
  *(v5 + 416) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v5 + 424) = v9;
  *(v5 + 432) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D22C5770, v9, v8);
}

uint64_t sub_1D22C5770()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[38];
  v0[55] = *(v4 + 16);
  v0[56] = sub_1D23C7314();
  swift_getKeyPath();
  v0[57] = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel___observationRegistrar;
  v0[27] = v4;
  v0[58] = sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  v0[59] = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v0[60] = v6;
  v0[61] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  v7 = sub_1D2871F78();
  v8 = *(v2 + 8);
  v0[62] = v8;
  v0[63] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = swift_task_alloc();
  v0[64] = v9;
  *v9 = v0;
  v9[1] = sub_1D22C5940;
  v10 = v0[35];

  return sub_1D28421E4((v0 + 2), v10, (v7 & 1) == 0);
}

uint64_t sub_1D22C5940()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 65) = *(v2 + 1);
  *(v2 + 67) = v3;
  *(v2 + 66) = *(v2 + 48);
  v2[69] = v1[7];
  *(v2 + 67) = *(v2 + 64);

  v4 = v1[54];
  v5 = v1[53];

  return MEMORY[0x1EEE6DFA0](sub_1D22C5ABC, v5, v4);
}

uint64_t sub_1D22C5ABC()
{
  if (sub_1D28786D8())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else if (*(v0 + 552) <= 1)
  {
    v13 = sub_1D23C7314();
    v12 = *(v0 + 496);
    v4 = *(v0 + 480);
    v5 = *(v0 + 472);
    v6 = *(v0 + 400);
    v7 = *(v0 + 384);
    v8 = *(v0 + 304);
    swift_getKeyPath();
    *(v0 + 224) = v8;
    sub_1D28719E8();

    v4(v6, v8 + v5, v7);
    v9 = sub_1D2871F78();
    v12(v6, v7);
    *(v0 + 70) = (v9 & 1) == 0;
    *(v0 + 69) = 0;
    *(v0 + 568) = v13;
    *(v0 + 576) = sub_1D2878558();
    v11 = sub_1D28784F8();
    *(v0 + 584) = v11;
    *(v0 + 592) = v10;

    return MEMORY[0x1EEE6DFA0](sub_1D22C5FB4, v11, v10);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 560) = v3;
    *v3 = v0;
    v3[1] = sub_1D22C5D28;

    return sub_1D22CEECC();
  }
}

uint64_t sub_1D22C5D28(char a1)
{
  v2 = *v1;
  *(*v1 + 68) = a1;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D22C5E50, v4, v3);
}

uint64_t sub_1D22C5E50()
{
  v1 = *(v0 + 68);
  v2 = sub_1D23C7314();
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v13 = *(v0 + 496);
    v12 = *(v0 + 480);
    v4 = *(v0 + 472);
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    v7 = *(v0 + 304);
    swift_getKeyPath();
    *(v0 + 224) = v7;
    sub_1D28719E8();

    v12(v5, v7 + v4, v6);
    v8 = sub_1D2871F78();
    v13(v5, v6);
    v3 = v8 ^ 1;
  }

  *(v0 + 70) = v3 & 1;
  *(v0 + 69) = v1;
  *(v0 + 568) = v2;
  *(v0 + 576) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v0 + 584) = v10;
  *(v0 + 592) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D22C5FB4, v10, v9);
}

uint64_t sub_1D22C5FB4()
{
  v1 = *(v0 + 66);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v8 = *(v0 + 67);
    v9 = *(v0 + 66);
    v10 = *(v0 + 280);

    sub_1D23C7044();
    v11 = sub_1D27ED8C8();

    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if ((v11 | (v9 & ~v8)))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for SceneConditioningImage();
    *(v0 + 96) = v14;
    *(v0 + 104) = sub_1D22D7678(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    sub_1D22D71C0(v10, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);

    *(boxed_opaque_existential_1 + *(v14 + 20)) = v13;
    goto LABEL_12;
  }

  v3 = *(v0 + 70);
  sub_1D22D71C0(*(v0 + 280), *(v0 + 376), type metadata accessor for PlaygroundImage);
  if (v3 != 1)
  {
    if (*(v0 + 552) == 1)
    {
      goto LABEL_14;
    }

    v21 = *(v0 + 360);
    v22 = *(v0 + 312);
    v23 = *(v0 + 320);

    (*(v23 + 56))(v21, 1, 1, v22);
    v24 = *(v0 + 376);
    v25 = *(v0 + 360);
    v26 = type metadata accessor for PersonConditioningImage();
    *(v0 + 96) = v26;
    *(v0 + 104) = sub_1D22D7678(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    sub_1D22D7158(v24, v27 + *(v26 + 20), type metadata accessor for PlaygroundImage);
    sub_1D22D6E50(v25, v27);

LABEL_12:
    v16 = *(v0 + 424);
    v17 = *(v0 + 432);
    v18 = sub_1D22C6690;
    goto LABEL_15;
  }

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v30.origin.x = *(v0 + 520) - v5 * 0.5;
  v30.origin.y = *(v0 + 528) - v4 * 0.5;
  v30.size.width = v5 + v5;
  v30.size.height = v4 + v4;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 1.0;
  v31.size.height = 1.0;
  *(v7 + *(v6 + 36)) = CGRectIntersection(v30, v31);
LABEL_14:
  *(v0 + 600) = sub_1D2878558();
  v19 = sub_1D28784F8();
  v17 = v20;
  *(v0 + 608) = v19;
  *(v0 + 616) = v20;
  v18 = sub_1D22C62C8;
  v16 = v19;
LABEL_15:

  return MEMORY[0x1EEE6DFA0](v18, v16, v17);
}

uint64_t sub_1D22C62C8()
{
  v1 = v0[37];
  if (v1)
  {
    v0[78] = sub_1D23C6DDC();
    v2 = swift_task_alloc();
    v0[79] = v2;
    *v2 = v0;
    v2[1] = sub_1D22C63F4;
    v3 = v0[45];
    v4 = v0[36];

    return sub_1D255EF14(v3, v4, v1);
  }

  else
  {
    v6 = v0[45];
    v7 = v0[39];
    v8 = v0[40];

    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = v0[74];
    v10 = v0[73];

    return MEMORY[0x1EEE6DFA0](sub_1D22C6584, v10, v9);
  }
}

uint64_t sub_1D22C63F4()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1D22C6514, v3, v2);
}

uint64_t sub_1D22C6514()
{
  v1 = v0[78];

  v2 = v0[74];
  v3 = v0[73];

  return MEMORY[0x1EEE6DFA0](sub_1D22C6584, v3, v2);
}

uint64_t sub_1D22C6584()
{

  v1 = v0[47];
  v2 = v0[45];
  v3 = type metadata accessor for PersonConditioningImage();
  v0[12] = v3;
  v0[13] = sub_1D22D7678(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 9);
  sub_1D22D7158(v1, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for PlaygroundImage);
  sub_1D22D6E50(v2, boxed_opaque_existential_1);

  v5 = v0[53];
  v6 = v0[54];

  return MEMORY[0x1EEE6DFA0](sub_1D22C6690, v5, v6);
}

uint64_t sub_1D22C6690()
{
  if (sub_1D28786D8())
  {
    goto LABEL_8;
  }

  if ((*(v0 + 69) & 1) == 0)
  {
    v47 = *(v0 + 496);
    v1 = *(v0 + 480);
    v2 = *(v0 + 472);
    v3 = *(v0 + 400);
    v4 = *(v0 + 384);
    v5 = *(v0 + 304);
    swift_getKeyPath();
    *(v0 + 232) = v5;
    sub_1D28719E8();

    v1(v3, v5 + v2, v4);
    v6 = sub_1D2871F78();
    v47(v3, v4);
    if (v6)
    {
      if ((*(v0 + 65) & 1) == 0)
      {
        v7 = *(v0 + 352);
        v8 = *(v0 + 312);
        v9 = *(v0 + 320);
        v10 = *(v0 + 96);
        v11 = *(v0 + 104);
        __swift_project_boxed_opaque_existential_1((v0 + 72), v10);
        (*(v11 + 16))(v10, v11);
        v12 = (*(v9 + 48))(v7, 1, v8);
        v13 = *(v0 + 352);
        if (v12 == 1)
        {
          sub_1D22BD238(v13, &unk_1EC6DDDC0);
        }

        else
        {
          v34 = *(v0 + 336);
          sub_1D22D7158(v13, v34, type metadata accessor for PhotosPersonAsset);
          v35 = *(v0 + 336);
          if (*(v34 + 8))
          {
            v36 = *v35;
            v37 = *(v34 + 8);
          }

          else
          {
            v36 = 0;
            v37 = 0xE000000000000000;
          }

          sub_1D2870F68();
          sub_1D22C168C(v36, v37);
          sub_1D22D7228(v35, type metadata accessor for PhotosPersonAsset);
        }
      }

      v38 = *(v0 + 304);
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      __swift_project_boxed_opaque_existential_1((v0 + 72), v39);
      v41 = (*(v40 + 32))(v39, v40) & 1;
      if (v41 == *(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson))
      {
        *(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson) = v41;
      }

      else
      {
        v42 = *(v0 + 304);
        swift_getKeyPath();
        v43 = swift_task_alloc();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
        *(v0 + 248) = v42;
        sub_1D28719D8();
      }

      v44 = *(v0 + 304);
      if (*(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation) == 1)
      {
        *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation) = 1;
        sub_1D22C854C(1);
      }

      else
      {
        swift_getKeyPath();
        v45 = swift_task_alloc();
        *(v45 + 16) = v44;
        *(v45 + 24) = 1;
        *(v0 + 256) = v44;
        sub_1D28719D8();
      }

      *(v0 + 640) = 0;
      *(v0 + 648) = sub_1D2878558();
      v46 = swift_task_alloc();
      *(v0 + 656) = v46;
      *v46 = v0;
      v46[1] = sub_1D22C6DDC;

      return MEMORY[0x1EEE6DDE0]();
    }
  }

  if (sub_1D28786D8())
  {
    goto LABEL_8;
  }

  if ((*(v0 + 65) & 1) == 0)
  {
    v16 = *(v0 + 344);
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v19);
    (*(v20 + 16))(v19, v20);
    v21 = (*(v18 + 48))(v16, 1, v17);
    v22 = *(v0 + 344);
    if (v21 != 1)
    {
      v23 = v0 + 152;
      v28 = *(v0 + 328);
      v29 = *(v0 + 312);
      sub_1D22D7158(v22, v28, type metadata accessor for PhotosPersonAsset);
      *(v0 + 176) = v29;
      *(v0 + 184) = sub_1D22D7678(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
      sub_1D22D71C0(v28, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
      sub_1D22CE0DC(v0 + 152);
      sub_1D22D7228(v28, type metadata accessor for PhotosPersonAsset);
      goto LABEL_16;
    }

    sub_1D22BD238(v22, &unk_1EC6DDDC0);
  }

  v23 = v0 + 112;
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = __swift_project_boxed_opaque_existential_1((v0 + 72), v24);
  *(v0 + 136) = v24;
  *(v0 + 144) = *(v25 + 8);
  v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_1D22CE0DC(v0 + 112);
LABEL_16:
  sub_1D22BD238(v23, &unk_1EC6E1D30);
  if (*(v0 + 69) != 1 || (v31 = *(v0 + 304), swift_getKeyPath(), *(v0 + 240) = v31, sub_1D28719E8(), , Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 664) = Strong) == 0))
  {

    sub_1D22C9C60();
    sub_1D24A3810(0, 0);
LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(v0 + 72);

    v14 = *(v0 + 8);

    return v14();
  }

  v33 = swift_task_alloc();
  *(v0 + 672) = v33;
  *v33 = v0;
  v33[1] = sub_1D22C7378;

  return sub_1D2313638();
}

uint64_t sub_1D22C6DDC()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D22C6F20, v3, v2);
}

uint64_t sub_1D22C6F20()
{
  v1 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 264) = v1;
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport) = 1;
    sub_1D28786D8();
LABEL_4:

    __swift_destroy_boxed_opaque_existential_0(v0 + 72);

    v4 = *(v0 + 8);

    return v4();
  }

  v2 = *(v0 + 304);
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = 1;
  *(v0 + 272) = v2;
  sub_1D28719D8();

  if (sub_1D28786D8())
  {
    goto LABEL_4;
  }

  if ((*(v0 + 65) & 1) == 0)
  {
    v6 = *(v0 + 344);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v9);
    (*(v10 + 16))(v9, v10);
    v11 = (*(v8 + 48))(v6, 1, v7);
    v12 = *(v0 + 344);
    if (v11 != 1)
    {
      v13 = v0 + 152;
      v18 = *(v0 + 328);
      v19 = *(v0 + 312);
      sub_1D22D7158(v12, v18, type metadata accessor for PhotosPersonAsset);
      *(v0 + 176) = v19;
      *(v0 + 184) = sub_1D22D7678(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
      sub_1D22D71C0(v18, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
      sub_1D22CE0DC(v0 + 152);
      sub_1D22D7228(v18, type metadata accessor for PhotosPersonAsset);
      goto LABEL_12;
    }

    sub_1D22BD238(v12, &unk_1EC6DDDC0);
  }

  v13 = v0 + 112;
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v16 = __swift_project_boxed_opaque_existential_1((v0 + 72), v14);
  *(v0 + 136) = v14;
  *(v0 + 144) = *(v15 + 8);
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  sub_1D22CE0DC(v0 + 112);
LABEL_12:
  sub_1D22BD238(v13, &unk_1EC6E1D30);
  if (*(v0 + 69) != 1 || (v21 = *(v0 + 304), swift_getKeyPath(), *(v0 + 240) = v21, sub_1D28719E8(), , Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 664) = Strong) == 0))
  {

    sub_1D22C9C60();
    sub_1D24A3810(0, 0);
    goto LABEL_4;
  }

  v23 = swift_task_alloc();
  *(v0 + 672) = v23;
  *v23 = v0;
  v23[1] = sub_1D22C7378;

  return sub_1D2313638();
}

uint64_t sub_1D22C7378()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D22C74BC, v3, v2);
}

uint64_t sub_1D22C74BC()
{

  sub_1D22C9C60();
  sub_1D24A3810(0, 0);

  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22C759C()
{
  v1 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = &v0[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName];
  if (*&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName + 8])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 3) = 0;
    *(&v19 - 2) = 0;
    *(&v19 - 4) = v0;
    v23 = v0;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  if (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson])
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    *(&v19 - 2) = v0;
    *(&v19 - 8) = 0;
    v23 = v0;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    v0[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson] = 0;
  }

  swift_getKeyPath();
  v23 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForConfirmationContinuation;
  swift_beginAccess();
  sub_1D22BD1D0(&v1[v12], v8, &qword_1EC6D9A80);
  v13 = v20;
  if ((*(v2 + 48))(v8, 1, v20))
  {
    sub_1D22BD238(v8, &qword_1EC6D9A80);
  }

  else
  {
    v14 = v19;
    (*(v2 + 16))(v19, v8, v13);
    sub_1D22BD238(v8, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v2 + 8))(v14, v13);
  }

  v15 = v21;
  (*(v2 + 56))(v21, 1, 1, v13);
  v16 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v16);
  *(&v19 - 2) = v1;
  *(&v19 - 1) = v15;
  v22 = v1;
  sub_1D28719D8();

  result = sub_1D22BD238(v15, &qword_1EC6D9A80);
  if (v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport] == 1)
  {
    v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport] = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    *(&v19 - 2) = v1;
    *(&v19 - 8) = 1;
    v22 = v1;
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22C7B30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  swift_getKeyPath();
  v18 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForStyleSuggestionContinuation;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v12, v11, &qword_1EC6D9A80);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1D22BD238(v11, &qword_1EC6D9A80);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1D22BD238(v11, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v8, 1, 1, v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v16[-16] = v1;
  *&v16[-8] = v8;
  v17 = v1;
  sub_1D28719D8();

  result = sub_1D22BD238(v8, &qword_1EC6D9A80);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    *&v16[-16] = v1;
    v16[-8] = 0;
    v17 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle) = 0;
  }

  return result;
}

uint64_t sub_1D22C7EF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0);
  v7 = sub_1D22D29D4(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DE5A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v5, &unk_1EC6DE5A0);
    swift_beginAccess();
    sub_1D22D7384(v5, v1 + v6, &unk_1EC6DE5A0);
    swift_endAccess();
    sub_1D22C475C();
    sub_1D22BD238(v5, &unk_1EC6DE5A0);
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D22C8114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D22BD1D0(a2, &v9 - v5, &unk_1EC6DE5A0);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage;
  swift_beginAccess();
  sub_1D22D7384(v6, a1 + v7, &unk_1EC6DE5A0);
  swift_endAccess();
  sub_1D22C475C();
  return sub_1D22BD238(v6, &unk_1EC6DE5A0);
}

uint64_t sub_1D22C8210()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D22C82CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D22C83B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D22C8450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson);
  return result;
}

uint64_t sub_1D22C854C(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  swift_getKeyPath();
  v21 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation) & 1) == 0 && (a1)
  {
    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation;
    v19 = a1;
    swift_getKeyPath();
    v21 = v1;
    sub_1D28719E8();

    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForConfirmationContinuation;
    swift_beginAccess();
    sub_1D22BD1D0(v2 + v14, v12, &qword_1EC6D9A80);
    if ((*(v5 + 48))(v12, 1, v4))
    {
      sub_1D22BD238(v12, &qword_1EC6D9A80);
    }

    else
    {
      v15 = v20;
      (*(v5 + 16))(v20, v12, v4);
      sub_1D22BD238(v12, &qword_1EC6D9A80);
      sub_1D2878518();
      (*(v5 + 8))(v15, v4);
    }

    (*(v5 + 56))(v10, 1, 1, v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v10;
    v22 = v2;
    sub_1D28719D8();

    sub_1D22BD238(v10, &qword_1EC6D9A80);
    LOBYTE(a1) = v19;
    v13 = v18;
  }

  swift_getKeyPath();
  v22 = v2;
  sub_1D28719E8();

  return sub_1D22C2B6C(a1 & 1, *(v2 + v13), 1);
}

uint64_t sub_1D22C895C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v9 + v7, a3, a2);
}

uint64_t sub_1D22C8A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation);
  return result;
}

uint64_t sub_1D22C8B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport);
  return result;
}

uint64_t sub_1D22C8C6C(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  swift_getKeyPath();
  v21 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation) & 1) == 0 && (a1)
  {
    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation;
    v19 = a1;
    swift_getKeyPath();
    v21 = v1;
    sub_1D28719E8();

    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForStyleSuggestionContinuation;
    swift_beginAccess();
    sub_1D22BD1D0(v2 + v14, v12, &qword_1EC6D9A80);
    if ((*(v5 + 48))(v12, 1, v4))
    {
      sub_1D22BD238(v12, &qword_1EC6D9A80);
    }

    else
    {
      v15 = v20;
      (*(v5 + 16))(v20, v12, v4);
      sub_1D22BD238(v12, &qword_1EC6D9A80);
      sub_1D2878518();
      (*(v5 + 8))(v15, v4);
    }

    (*(v5 + 56))(v10, 1, 1, v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v10;
    v22 = v2;
    sub_1D28719D8();

    sub_1D22BD238(v10, &qword_1EC6D9A80);
    LOBYTE(a1) = v19;
    v13 = v18;
  }

  swift_getKeyPath();
  v22 = v2;
  sub_1D28719E8();

  return sub_1D22C2B6C(a1 & 1, *(v2 + v13), 1);
}

uint64_t sub_1D22C907C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation);
  return result;
}

uint64_t sub_1D22C918C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v6, a3, &qword_1EC6D9A80);
}

uint64_t sub_1D22C9268(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1D22BD1D0(a1, &v9[-v5], &qword_1EC6D9A80);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v6, &qword_1EC6D9A80);
}

uint64_t sub_1D22C93B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v5, &qword_1EC6D9A80);
  return swift_endAccess();
}

uint64_t sub_1D22C9440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle);
  return result;
}

uint64_t sub_1D22C952C()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D22C95D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__genmojiDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D22C9694()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D22C978C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v5 = *(a1 + 16);
  v6 = *(a1 + 64);
  swift_getKeyPath();
  v17 = a1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28719E8();

  v18 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle);
  swift_getKeyPath();
  v17 = a1;
  sub_1D28719E8();

  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v4, a1 + v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_getKeyPath();
  v16 = a1;
  sub_1D28719E8();

  LODWORD(v8) = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isFromEmojiPicker);
  type metadata accessor for PromptViewModel(0);
  swift_allocObject();
  v10 = sub_1D27B0E18(v5, v6, &v18, v4, v8);

  swift_getKeyPath();
  v13 = v10;
  v14 = a1;
  v15 = &off_1F4DBF8A8;
  v16 = v10;
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  return v10;
}

uint64_t sub_1D22C9AA4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle);
  return result;
}

uint64_t sub_1D22C9B54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v4 = sub_1D2872008();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D22C9C60()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D2872008();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___effectsPickerViewModel))
  {
    v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___effectsPickerViewModel);
  }

  else
  {
    v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___effectsPickerViewModel;
    v37 = v4;
    v8 = v0[2];
    v10 = v0[8];
    v9 = v0[9];
    v38 = v8;
    v39 = v10;
    v40 = v9;
    swift_getKeyPath();
    v43[0] = v1;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D28719E8();

    LODWORD(v35) = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle);
    swift_getKeyPath();
    v43[0] = v1;
    sub_1D28719E8();

    v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
    swift_beginAccess();
    v12 = *(v37 + 16);
    v12(v6, v1 + v11, v3);
    v43[3] = v2;
    v43[4] = &off_1F4DBF8D8;
    v43[0] = v1;
    v13 = type metadata accessor for ImageConditioningPickerViewModel();
    v7 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v43, v2);
    v34 = &v32;
    MEMORY[0x1EEE9AC00](v14);
    v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v42[3] = v2;
    v42[4] = &off_1F4DBF8D8;
    v42[0] = v18;
    *(v7 + 24) = 256;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 72) = MEMORY[0x1E69E7CC0];
    v41 = v13;
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A98);
    *(v7 + 80) = sub_1D2878118();
    *(v7 + 88) = v19;
    *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel_maxNumberOfSuggestedBubbles) = 7;
    *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) = 0;
    sub_1D2871A18();
    v20 = v39;
    *(v7 + 96) = v38;
    *(v7 + 104) = v20;
    *(v7 + 176) = v35;
    v35 = v6;
    v12((v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__currentStyle), v6, v3);
    *(v7 + 112) = v40;
    sub_1D22D7044(v42, v7 + 136);
    *(v7 + 16) = *(v20 + 32);
    v21 = qword_1ED8A5A28;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F68();
    v33 = v3;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = qword_1ED8B0260;
    v22 = *algn_1ED8B0268;
    v24 = qword_1ED8B0270;
    v25 = unk_1ED8B0278;
    v27 = *(v7 + 32);
    v26 = *(v7 + 40);
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D22D70A8(v27, v26);
    *(v7 + 32) = v23;
    *(v7 + 40) = v22;
    *(v7 + 48) = v24;
    *(v7 + 56) = v25;
    v28 = sub_1D23C7858();
    *(v7 + 120) = v28;
    sub_1D2870F78();
    v29 = sub_1D23C7044();
    *(v7 + 128) = v29;
    sub_1D2870F78();
    *(v7 + 64) = sub_1D24AE004(v28, v29);
    v30 = sub_1D2870F78();
    sub_1D23501EC(v30, v39);
    sub_1D22D28F4(v7, v28);

    sub_1D28719C8();
    sub_1D28719C8();

    (*(v37 + 8))(v35, v33);
    __swift_destroy_boxed_opaque_existential_0(v42);

    __swift_destroy_boxed_opaque_existential_0(v43);
    *(v1 + v36) = v7;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v7;
}

uint64_t sub_1D22CA230(uint64_t *a1, uint64_t (*a2)(uint64_t))
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
    *(v2 + v3) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D22CA298(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ImageGenerationPerson();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = *(a1 + 2);
  v18 = *(a1 + 9);
  v49 = *(a1 + 8);
  v19 = sub_1D27D8C8C();
  v50 = v16;
  v47 = v14;
  v45 = v6;
  if (v19)
  {
    v52[3] = &type metadata for NotesFeatures;
    v52[4] = sub_1D22D7288();
    LOBYTE(v52[0]) = 0;
    v20 = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v20 = sub_1D23CCDF0();
  }

  swift_getKeyPath();
  v52[0] = a1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v21 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle) - 5;
  v48 = v7;
  v22 = *(v7 + 56);
  v23 = v51;
  v22(v50, 1, 1, v51);
  type metadata accessor for PeoplePickerViewModel();
  v24 = swift_allocObject();
  *(v24 + 64) = 1;
  *(v24 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 120) = 0;
  *(v24 + 104) = 0u;
  *(v24 + 88) = 0u;
  v42 = v22;
  v22((v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson), 1, 1, v23);
  v25 = (v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel____lazy_storage___appProtectionShieldViewModel) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems) = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people) = v26;
  sub_1D2871A18();
  v27 = v49;
  *(v24 + 24) = v18;
  *(v24 + 32) = v27;
  *(v24 + 16) = v17;
  *(v24 + 41) = v20 & 1;
  *(v24 + 40) = v21 < 2;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2877FE8();
  sub_1D28718C8();
  *(v24 + 48) = sub_1D28780E8();
  *(v24 + 56) = v28;
  sub_1D25484FC();
  v30 = sub_1D26795F4(v29);

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v42 - 2) = v24;
  *(&v42 - 1) = v30;
  v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  v52[0] = v24;
  sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  v46 = v32;
  sub_1D28719D8();

  sub_1D28719C8();
  v33 = sub_1D2870F78();
  sub_1D23501B0(v33, v49);

  sub_1D254932C();
  v34 = v50;
  v35 = v47;
  sub_1D22BD1D0(v50, v47, &qword_1EC6D8F80);
  v36 = v51;
  if ((*(v48 + 48))(v35, 1, v51) == 1)
  {
    sub_1D22BD238(v34, &qword_1EC6D8F80);
    v34 = v35;
  }

  else
  {
    v37 = v35;
    v38 = v44;
    sub_1D22D7158(v37, v44, type metadata accessor for ImageGenerationPerson);
    v39 = v43;
    sub_1D22D71C0(v38, v43, type metadata accessor for ImageGenerationPerson);
    v42(v39, 0, 1, v36);
    sub_1D2547CB8(v39);
    sub_1D22BD238(v39, &qword_1EC6D8F80);
    sub_1D22D7228(v38, type metadata accessor for ImageGenerationPerson);
  }

  sub_1D22BD238(v34, &qword_1EC6D8F80);
  v40 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v40);
  *(&v42 - 4) = v24;
  *(&v42 - 3) = a1;
  *(&v42 - 2) = &off_1F4DBF868;
  v52[0] = v24;
  sub_1D28719D8();

  return v24;
}

uint64_t sub_1D22CAA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D71C0(a1, v12, type metadata accessor for PhotosPersonAsset);
  (*(v7 + 16))(v9, a2, v6);
  type metadata accessor for FacePickerCarouselViewModel();
  swift_allocObject();
  v13 = sub_1D2870F78();
  sub_1D2482A10(v13, v12, v9, 0, 0);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_facePickerCarouselViewModel;
  *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_facePickerCarouselViewModel) = v15;

  v17 = *(v3 + v14);
  if (v17)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v19[-4] = v17;
    v19[-3] = v3;
    v19[-2] = &off_1F4DBF830;
    v19[1] = v17;
    sub_1D22D7678(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22CACAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = *(v2 + 16);
  sub_1D22BD1D0(a1, v22 - v12, &unk_1EC6DDDA0);
  swift_getKeyPath();
  v22[3] = v2;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v15, v4);
  sub_1D2871FC8();
  LOBYTE(v15) = MEMORY[0x1D389AA00](v10, v7);
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  type metadata accessor for CharacterEditingViewModel();
  swift_allocObject();
  v17 = sub_1D2653EAC(v14, v13, v15 & 1, 1);

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_characterEditingViewModel;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_characterEditingViewModel) = v17;

  v20 = *(v2 + v18);
  if (v20)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v22[-4] = v20;
    v22[-3] = v2;
    v22[-2] = &off_1F4DBF810;
    v22[2] = v20;
    sub_1D22D7678(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D2870F78();
    sub_1D28719D8();
  }

  return result;
}

void *sub_1D22CB02C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___descriptionEditorViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___descriptionEditorViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___descriptionEditorViewModel);
  }

  else
  {
    type metadata accessor for AccessibilityDescriptionEditorViewModel();
    v2 = swift_allocObject();
    v2[4] = 0;
    v2[7] = 0;
    v2[5] = 0;
    swift_unknownObjectWeakInit();
    sub_1D2870F78();
    sub_1D2871A18();
    v2[2] = 0;
    v2[3] = 0xE000000000000000;
    if (v2[5])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
      sub_1D28719D8();
    }

    else
    {
      v2[4] = 0;
      v2[5] = 0;
    }

    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
    sub_1D28719D8();

    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D22CB294(int a1, void (*a2)(uint64_t (*)(), uint64_t *), uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v7 = sub_1D2873CB8();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - v10;
  v11 = *(v3 + 16);
  sub_1D23C7B7C();
  v12 = sub_1D22BF738();

  v13 = *(v4 + 128);
  v40 = a1;
  if (v12 == v13)
  {
    *(v4 + 128) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v33 - 2) = v4;
    *(&v33 - 8) = v12;
    v41 = v4;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  v15 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___peoplePickerViewModel, sub_1D22CA298);
  sub_1D23C7B7C();
  v16 = sub_1D22BF738();

  v17 = *(v15 + 65);
  v38 = v11;
  if (v16 == v17)
  {
    *(v15 + 65) = v16;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    *(&v33 - 2) = v15;
    *(&v33 - 8) = v16;
    v41 = v15;
    sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = v4;
  v21 = v40;
  *(v19 + 24) = v40 & 1;
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v33 - 2) = sub_1D22D6B10;
    *(&v33 - 1) = v20;
    sub_1D2870F78();
    sub_1D22A58B8(a2);
    a2(sub_1D22D6B24, &v33 - 4);
    sub_1D22A576C(a2);
    if ((v21 & 1) == 0)
    {
    }
  }

  else
  {
    v22 = sub_1D2870F78();
    sub_1D22CB94C(v22, v21 & 1);
    if ((v21 & 1) == 0)
    {
    }
  }

  v23 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  swift_getKeyPath();
  v41 = v23;
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v24 = *(v23 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v24)
  {
    sub_1D2870F78();
    v24(0);

    sub_1D22A576C(v24);
  }

  else
  {
  }

  swift_getKeyPath();
  v41 = v4;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (*(v4 + 128))
  {
    sub_1D2872548();
    v25 = sub_1D2873CA8();
    v26 = sub_1D2878A18();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "Photos app is locked. Updating sheet presentation to show sheild UI", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v35 + 8))(v37, v36);
    sub_1D23C7B7C();
    sub_1D2870F78();
    sub_1D22BEAF4(sub_1D22D6B1C, v4);
  }

  v29 = v34;
  sub_1D2872548();
  v30 = sub_1D2873CA8();
  v31 = sub_1D2878A08();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D226E000, v30, v31, "Photos app is not locked. No need to show shield UI", v32, 2u);
    MEMORY[0x1D38A3520](v32, -1, -1);
  }

  return (*(v35 + 8))(v29, v36);
}

uint64_t sub_1D22CB94C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle) == 6)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v4 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__genmojiDelegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return 1;
    }

    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a2 & 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(a1 + 127);
    if (v7 == (a2 & 1))
    {
      *(a1 + 127) = a2 & 1;
      sub_1D22C38B4(v7);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }
  }

  return 0;
}

uint64_t sub_1D22CBB44(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872548();
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A18();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_1D226E000, v8, v9, "App Protection authentication success: %{BOOL}d. Changing sheet presentation to not show sheild UI", v10, 8u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___peoplePickerViewModel, sub_1D22CA298);
  v12 = a1 ^ 1;
  v13 = (a1 ^ 1) & 1;
  if (v13 == *(v11 + 65))
  {
    *(v11 + 65) = v13;
  }

  else
  {
    v15 = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v18 - 2) = v15;
    *(&v18 - 8) = v13;
    v19 = v15;
    sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  if (*(a2 + 128) == (a1 & 1))
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    *(&v18 - 2) = a2;
    *(&v18 - 8) = v12 & 1;
    v19 = a2;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(a2 + 128) = v12 & 1;
  }

  return result;
}

uint64_t sub_1D22CBE98()
{
  sub_1D22CC218();
  v0 = sub_1D22C9C60();
  if (qword_1ED8A5A28 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B0260;
  v2 = *algn_1ED8B0268;
  v3 = qword_1ED8B0270;
  v4 = unk_1ED8B0278;
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D24A7798(v1, v2, v3, v4);
  if (*(v0 + 24) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v0 + 24) = 0;
  }

  v6 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  sub_1D27A11B4(1);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v7 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v7)
  {
    sub_1D2870F78();
    v7(0);

    sub_1D22A576C(v7);
  }

  else
  {
  }

  v8 = sub_1D22CB02C();
  sub_1D27F8D80(0, 0xE000000000000000);
  if (v8[5])
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
    sub_1D28719D8();
  }

  else
  {
    v8[4] = 0;
    v8[5] = 0;
  }
}

uint64_t sub_1D22CC218()
{
  if (v0[126])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    v0[126] = 0;
    sub_1D22C3594(0);
  }

  sub_1D22C0FD0(0);
  sub_1D22C14A8(0);
  if (v0[124])
  {
    v2 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v2);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    v0[124] = 0;
    sub_1D22C3158(0);
  }

  sub_1D22C0704(0);
  if (v0[131])
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    v0[131] = 0;
  }

  return sub_1D22CB294(0, 0, 0);
}

uint64_t sub_1D22CC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D22CB02C();
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    a1 = 0;
    v9 = 0xE000000000000000;
  }

  sub_1D2870F68();
  sub_1D27F8D80(a1, v9);
  sub_1D2870F68();
  sub_1D27F9314(a3, a4);

  if (*(v4 + 131) == 1)
  {
    *(v4 + 131) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22CC674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  sub_1D2871808();
  v12 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage);
  v31 = v11;
  if (v12 == 1)
  {
    v29 = 0;
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v28 = &v28;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v28 - 2) = v2;
    *(&v28 - 8) = 1;
    v32 = v2;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
    v29 = 0;

    v11 = v31;
  }

  swift_getKeyPath();
  v32 = v2;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v6 + 16))(v8, v11, v5);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v16 = sub_1D2878558();
    v17 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    v20 = v30;
    *(v18 + 4) = v3;
    *(v18 + 5) = v20;
    *(v18 + 6) = a2;
    v21 = *(v6 + 32);
    v30 = v5;
    v21(&v18[v17], v8, v5);
    v22 = sub_1D28717B8();
    v24 = v23;
    swift_getKeyPath();
    v32 = v15;
    sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
    {
      v25 = swift_getKeyPath();
      v28 = &v28;
      MEMORY[0x1EEE9AC00](v25);
      *(&v28 - 6) = v15;
      *(&v28 - 5) = v26;
      *(&v28 - 4) = v24;
      *(&v28 - 3) = &unk_1D287F1E8;
      *(&v28 - 2) = v18;
      v32 = v15;
      sub_1D2870F78();
      sub_1D2870F68();
      sub_1D2870F78();
      sub_1D28719D8();

      sub_1D28786B8();
    }

    else
    {
      sub_1D230EA90(v22, v24, &unk_1D287F1E8, v18);
    }

    swift_unknownObjectRelease();
    v5 = v30;
    v11 = v31;
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1D22CCB98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a3;
  v6[6] = a6;
  v8 = sub_1D2871818();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v6[10] = swift_task_alloc();
  v9 = sub_1D2873CB8();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = sub_1D2878568();
  v6[16] = sub_1D2878558();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1D22CCD9C;

  return v12();
}

uint64_t sub_1D22CCD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = a3;
  v6[21] = a4;
  v6[22] = v4;

  v7 = sub_1D28784F8();
  if (v4)
  {
    v9 = sub_1D22CD8E8;
  }

  else
  {
    v6[23] = v7;
    v6[24] = v8;
    v9 = sub_1D22CCF10;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D22CCF10()
{
  v1 = v0[19];
  sub_1D22D6CE4(v0[18], v1);
  if (v1 >> 60 == 15)
  {

    sub_1D28724F8();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A18();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[18];
    v5 = v0[19];
    if (v4)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "Could not retrieve data for picked photo library item", v7, 2u);
      MEMORY[0x1D38A3520](v7, -1, -1);

      sub_1D22D6D4C(v6, v5);
    }

    else
    {
      sub_1D22D6D4C(v0[18], v0[19]);
    }

    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    v19 = v0[5];

    (*(v18 + 8))(v16, v17);
    sub_1D22C759C();
    sub_1D22C7B30();
    if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) == 1)
    {
      v20 = v0[5];
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      v0[3] = v20;
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
    }

    v22 = v0[1];

    return v22();
  }

  else
  {
    v8 = v0[18];
    v9 = v0[19];
    (*(v0[8] + 16))(v0[9], v0[6], v0[7]);
    sub_1D22D6CF8(v8, v9);
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_1D22CD210;
    v11 = v0[18];
    v12 = v0[19];
    v14 = v0[9];
    v13 = v0[10];

    return sub_1D262ADFC(v13, v11, v12, v14, 0);
  }
}

uint64_t sub_1D22CD210()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1D22CDBA0;
  }

  else
  {
    v5 = sub_1D22CD34C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D22CD34C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[4] = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D230F430(v0[10]);
    swift_unknownObjectRelease();
  }

  if (sub_1D28786D8())
  {
    v3 = v0[18];
    v2 = v0[19];
    sub_1D22D7228(v0[10], type metadata accessor for PlaygroundImage);
    sub_1D22D6D4C(v3, v2);

    sub_1D22D6D4C(v3, v2);

    v4 = v0[5];
    sub_1D22C759C();
    sub_1D22C7B30();
    if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) == 1)
    {
      v5 = v0[5];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      v0[2] = v5;
      sub_1D28719D8();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_1D22CD604;
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[10];

    return sub_1D22C5588(v10, 0, v8, v9);
  }
}

uint64_t sub_1D22CD604()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D22CD724, v3, v2);
}

uint64_t sub_1D22CD724()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[10];

  sub_1D22D6D4C(v2, v1);
  sub_1D22D6D4C(v2, v1);

  sub_1D22D7228(v3, type metadata accessor for PlaygroundImage);
  v4 = v0[5];
  sub_1D22C759C();
  sub_1D22C7B30();
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) == 1)
  {
    v5 = v0[5];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[2] = v5;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D22CD8E8()
{

  v1 = v0[22];
  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to import image with error: %@", v5, 0xCu);
    sub_1D22BD238(v6, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v6, -1, -1);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];

  (*(v10 + 8))(v9, v11);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v1);

  v12 = v0[5];
  sub_1D22C759C();
  sub_1D22C7B30();
  if (*(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage))
  {
    v13 = v0[5];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[2] = v13;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D22CDBA0()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1D22D6D4C(v2, v1);
  sub_1D22D6D4C(v2, v1);

  v3 = v0[26];
  sub_1D2872658();
  v4 = v3;
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A18();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v5, v6, "Failed to import image with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];

  (*(v12 + 8))(v11, v13);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v3);

  v14 = v0[5];
  sub_1D22C759C();
  sub_1D22C7B30();
  if (*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage))
  {
    v15 = v0[5];
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    v0[2] = v15;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D22CDE80(uint64_t a1)
{
  v21[3] = type metadata accessor for CuratedPrompt();
  v21[4] = sub_1D22D7678(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D22D71C0(a1, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  sub_1D22BD1D0(v21, &v17, &unk_1EC6E1D30);
  if (v18)
  {
    sub_1D227268C(&v17, v20);
    v4 = type metadata accessor for AddImageConditioningRepresentationOperation();
    sub_1D22D7044(v20, &v17);
    v5 = *(v1 + 64);
    v6 = v18;
    v7 = v19;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(&v17, v18);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11, v9);
    sub_1D2870F78();
    v13 = sub_1D27FDCE0(v11, v5, 0, v4, v6, v7);
    __swift_destroy_boxed_opaque_existential_0(&v17);
    v14 = *(v1 + 72);
    sub_1D2870F78();
    sub_1D27FDB14();
    sub_1D27DF058(v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_1D22BD238(&v17, &unk_1EC6E1D30);
  }

  return sub_1D22BD238(v21, &unk_1EC6E1D30);
}

uint64_t sub_1D22CE0DC(uint64_t a1)
{
  sub_1D22BD1D0(a1, &v15, &unk_1EC6E1D30);
  if (!v16)
  {
    return sub_1D22BD238(&v15, &unk_1EC6E1D30);
  }

  sub_1D227268C(&v15, v18);
  v2 = type metadata accessor for AddImageConditioningRepresentationOperation();
  sub_1D22D7044(v18, &v15);
  v3 = *(v1 + 64);
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  sub_1D2870F78();
  v11 = sub_1D27FDCE0(v9, v3, 0, v2, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v12 = *(v1 + 72);
  sub_1D2870F78();
  sub_1D27FDB14();
  sub_1D27DF058(v11, v12);

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t (*sub_1D22CE2AC())()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v6 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v16 = *(v6 + 8);
    v17 = v1;
    swift_getKeyPath();
    v18 = v8;
    sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v9 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
    v10 = *(v9 + 16);
    result = sub_1D2870F68();
    v11 = 0;
    while (1)
    {
      if (v10 == v11)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      if (v11 >= *(v9 + 16))
      {
        break;
      }

      (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v2);
      v12 = sub_1D2871F78();
      result = (*(v3 + 8))(v5, v2);
      if ((v12 & 1) == 0)
      {

        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = v8;
        v14[4] = v16;
        return sub_1D22D76C0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D22CE580()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1D22F8384();
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport) = 0;
    }
  }

  return result;
}

void sub_1D22CE6D0()
{
  v1 = v0;
  v2 = sub_1D23C7CA8();
  v3 = sub_1D2878068();
  v4 = sub_1D2878068();
  v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 48))
  {
    sub_1D2870F68();
    v6 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v6, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v8 = sub_1D2878068();
  v9 = sub_1D2418030(v5);

  if (v9)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D22D7678(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v10 = sub_1D2877E78();
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() asyncSendSignal:v4 toChannel:v3 withNullableUniqueStringID:v8 withPayload:v10];

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22CE9A0(uint64_t a1)
{
  v2 = v1;
  sub_1D22BD1D0(a1, &v19, &qword_1EC6D9A58);
  if (!v20)
  {
    return sub_1D22BD238(&v19, &qword_1EC6D9A58);
  }

  sub_1D227268C(&v19, v22);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v1 + 80, &v16, &qword_1EC6D9A58);
  if (v17)
  {
    sub_1D227268C(&v16, &v19);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v5 = v23;
    v6 = v24;
    v7 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = v5;
    v18 = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    v9 = (*(*(v4 + 8) + 56))(&v16, v3);
    __swift_destroy_boxed_opaque_existential_0(&v16);
    __swift_destroy_boxed_opaque_existential_0(&v19);
    if (v9)
    {
      return __swift_destroy_boxed_opaque_existential_0(v22);
    }
  }

  else
  {
    sub_1D22BD238(&v16, &qword_1EC6D9A58);
  }

  sub_1D22D7044(v22, &v19);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v16 = v2;
  sub_1D28719D8();

  sub_1D22BD238(&v19, &qword_1EC6D9A58);
  v12 = v23;
  v13 = v24;
  v14 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v20 = v12;
  v21 = *(v13 + 8);
  v15 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  sub_1D22CE0DC(&v19);
  sub_1D22BD238(&v19, &unk_1EC6E1D30);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

void sub_1D22CECD0(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D22CEECC()
{
  v1[11] = v0;
  v2 = sub_1D2872008();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_1D2872068();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = sub_1D2878568();
  v1[19] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v1[20] = v5;
  v1[21] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D22CF020, v5, v4);
}

uint64_t sub_1D22CF020()
{
  v1 = v0[11];
  swift_getKeyPath();
  v0[5] = v1;
  v0[22] = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel___observationRegistrar;
  v0[23] = sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v3 = Strong;
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  (*(v5 + 104))(v4, *MEMORY[0x1E696E3A0], v6);
  v7 = sub_1D2872058();
  (*(v5 + 8))(v4, v6);
  if ((v7 & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v9 = v0[13];
  v8 = v0[14];
  v27 = v0[12];
  swift_getKeyPath();
  v0[6] = v3;
  sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
  sub_1D2870F68();
  sub_1D2871EC8();
  v11 = sub_1D22D1A48(v8, v10, MEMORY[0x1E696E310], &qword_1ED8A6C08, MEMORY[0x1E696E310]);

  swift_unknownObjectRelease();
  v12 = *(v9 + 8);
  v12(v8, v27);
  if (!v11 || (v26 = v0[14], v13 = v0[13], v25 = v0[12], v14 = v0[11], swift_getKeyPath(), v0[7] = v14, sub_1D28719E8(), , v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle, swift_beginAccess(), (*(v13 + 16))(v26, v14 + v15, v25), LOBYTE(v15) = sub_1D2871F78(), v12(v26, v25), (v15 & 1) != 0))
  {
LABEL_5:

LABEL_7:

    v16 = v0[1];

    return v16(0);
  }

  v18 = v0[11];
  v19 = MEMORY[0x1E69E7CA8];
  if (*(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation) == 1)
  {
    *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation) = 1;
    sub_1D22C8C6C(1);
  }

  else
  {
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = 1;
    v0[8] = v18;
    sub_1D28719D8();
  }

  v0[24] = 0;
  v21 = sub_1D2878558();
  v0[25] = v21;
  v22 = swift_task_alloc();
  v0[26] = v22;
  *v22 = v0;
  v22[1] = sub_1D22CF4E8;
  v23 = v0[11];
  v24 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v22, v21, v24, 0xD000000000000027, 0x80000001D28AFBC0, sub_1D22D6F38, v23, v19 + 8);
}

uint64_t sub_1D22CF4E8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D22CF62C, v3, v2);
}

uint64_t sub_1D22CF62C()
{
  v1 = v0[11];

  swift_getKeyPath();
  v0[9] = v1;
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle);
  if (v2)
  {
    v3 = v0[11];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[10] = v3;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle) = 0;
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1D22CF788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  v11 = a2;
  v12 = v6;
  v13 = a2;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v6, &qword_1EC6D9A80);
}

uint64_t sub_1D22CF944(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v7 = sub_1D2872008();
  v8 = *(v7 - 8);
  (*(v8 + 24))(v1 + v6, a1, v7);
  swift_endAccess();
  sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  swift_getKeyPath();
  v11 = v1;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  (*(v8 + 16))(v5, v1 + v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_1D27A0DA8(v5);

  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1D22CFB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D22CFC4C(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D22C1B98(v5);
}

uint64_t sub_1D22CFD18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2872008();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  return sub_1D22CF944(v5);
}

uint64_t sub_1D22CFDEC()
{
  v1 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  if (*(v1 + 32) != *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22CFFDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isFromEmojiPicker);
  return result;
}

uint64_t sub_1D22D009C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  sub_1D22BD238(v0 + 80, &qword_1EC6D9A58);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage, &unk_1EC6DE5A0);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForConfirmationContinuation, &qword_1EC6D9A80);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForStyleSuggestionContinuation, &qword_1EC6D9A80);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__delegate);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__genmojiDelegate);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D22D0290()
{
  sub_1D22D009C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ComposingFooterViewModel()
{
  result = qword_1ED8A0220;
  if (!qword_1ED8A0220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D22D033C()
{
  sub_1D22D0510();
  if (v0 <= 0x3F)
  {
    sub_1D22D0568();
    if (v1 <= 0x3F)
    {
      sub_1D2872008();
      if (v2 <= 0x3F)
      {
        sub_1D2871A28();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D22D0510()
{
  if (!qword_1ED8A52A0)
  {
    type metadata accessor for PlaygroundImage();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A52A0);
    }
  }
}

void sub_1D22D0568()
{
  if (!qword_1ED89CE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDE70);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CE48);
    }
  }
}

uint64_t sub_1D22D05CC()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    v14 = v6;
    sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v13 = v6;
    v7 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
    v8 = *(v7 + 16);
    result = sub_1D2870F68();
    v10 = 0;
    while (1)
    {
      v11 = v8 != v10;
      if (v8 == v10)
      {
LABEL_6:

        swift_unknownObjectRelease();
        return v11;
      }

      if (v10 >= *(v7 + 16))
      {
        break;
      }

      (*(v2 + 16))(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10++, v1);
      v12 = sub_1D2871F78();
      result = (*(v2 + 8))(v4, v1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D22D0838()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) == 1)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) & 1) == 0)
      {
        sub_1D232F828();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1D22D09C8()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2872068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  (*(v6 + 104))(v8, *MEMORY[0x1E696E3A0], v5);
  v11 = sub_1D2872058();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  swift_getKeyPath();
  v16 = v10;
  sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v12 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
  sub_1D2870F68();
  sub_1D2871EC8();
  v13 = sub_1D22D1A48(v4, v12, MEMORY[0x1E696E310], &qword_1ED8A6C08, MEMORY[0x1E696E310]);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v13;
}

uint64_t sub_1D22D0CFC()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D230B27C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D22D0DDC(uint64_t a1)
{
  if (*(a1 + 124) == 1)
  {
    *(a1 + 124) = 1;
    return sub_1D22C3158(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22D0EFC()
{
  sub_1D22C0704(0);
  sub_1D22CB294(1, 0, 0);
  v1 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___peoplePickerViewModel, sub_1D22CA298);
  swift_getKeyPath();
  *&v11 = v0;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v0 + 80, v8, &qword_1EC6D9A58);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
    *(&v12 + 1) = v2;
    v13 = *(*(v3 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1D22BD238(v8, &qword_1EC6D9A58);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v8[0] = v1;
  sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(&v11, &qword_1EC6D9A70);
}

uint64_t sub_1D22D1184()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    sub_1D2461528(*(v0 + 122));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D22D12C4()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D22F8384();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D22D13C0()
{
  v1 = *(*(v0 + 64) + 32);
  v2 = *(v1 + 16);
  result = sub_1D2870F68();
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D22D7044(v5, &v30);
      sub_1D22D7044(&v30, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v4;
      result = __swift_destroy_boxed_opaque_existential_0(&v30);
      v5 += 40;
      if (v2 == v4)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1D227268C(&v30, v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }
  }

  else
  {
LABEL_6:

    v30 = 0u;
    v31 = 0u;
    v32 = 0;
  }

  sub_1D22BD1D0(&v30, v27, &qword_1EC6D9A58);
  v6 = v28;
  if (v28)
  {
    v7 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v8 = (*(*(*(v7 + 8) + 8) + 16))(v6);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    sub_1D22BD238(v27, &qword_1EC6D9A58);
    v8 = 0;
    v10 = 0;
  }

  swift_getKeyPath();
  v26[0] = v24;
  sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v24 + 80, v27, &qword_1EC6D9A58);
  v11 = v28;
  if (!v28)
  {
    sub_1D22BD238(v27, &qword_1EC6D9A58);
    if (!v10)
    {
      return sub_1D22BD238(&v30, &qword_1EC6D9A58);
    }

    goto LABEL_21;
  }

  v23 = v8;
  v12 = v29;
  v13 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  sub_1D22BD238(v27, &qword_1EC6D9A58);
  v18 = (*(*(*(v12 + 8) + 8) + 16))(v11);
  v20 = v19;
  (*(v14 + 8))(v17, v11);
  if (!v10)
  {
    if (!v20)
    {
      return sub_1D22BD238(&v30, &qword_1EC6D9A58);
    }

    goto LABEL_21;
  }

  if (!v20)
  {
LABEL_21:

LABEL_22:
    sub_1D22BD1D0(&v30, v27, &qword_1EC6D9A58);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v25[0] = v24;
    sub_1D28719D8();

    sub_1D22BD238(v27, &qword_1EC6D9A58);
    return sub_1D22BD238(&v30, &qword_1EC6D9A58);
  }

  if (v23 != v18 || v10 != v20)
  {
    v22 = sub_1D2879618();

    if (v22)
    {
      return sub_1D22BD238(&v30, &qword_1EC6D9A58);
    }

    goto LABEL_22;
  }

  return sub_1D22BD238(&v30, &qword_1EC6D9A58);
}

uint64_t sub_1D22D18D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
  return sub_1D2870F68();
}

BOOL sub_1D22D1A48(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1D22D7678(a4, a5);
  }

  while ((sub_1D2877F98() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1D22D1B50@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D22D1C00()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D22D1CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D22D1DA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D22BD1D0(v3 + 88, a2, &qword_1EC6D9A70);
}

uint64_t sub_1D22D1E70(uint64_t a1)
{
  sub_1D22BD1D0(a1, v2, &qword_1EC6D9A70);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v2, &qword_1EC6D9A70);
}

uint64_t sub_1D22D1F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D22D2058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode);
  return result;
}

uint64_t sub_1D22D2130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet);
  return result;
}

uint64_t sub_1D22D2208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation);
  return result;
}

uint64_t sub_1D22D22E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed);
  return result;
}

uint64_t sub_1D22D23B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D22D2488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__representableToCommitAfterConfirmation;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6E1D30);
}

uint64_t sub_1D22D2560(uint64_t a1)
{
  sub_1D22BD1D0(a1, v2, &unk_1EC6E1D30);
  swift_getKeyPath();
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v2, &unk_1EC6E1D30);
}

uint64_t sub_1D22D2668@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D22D272C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1D2870F68();
  return a5(v7, v6);
}

uint64_t sub_1D22D2774@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D22D2824()
{
  swift_getKeyPath();
  sub_1D22D7678(&qword_1EC6D8008, type metadata accessor for AccessibilityDescriptionEditorViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D22D28F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakCuratedPromptsManagerSubscriber();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_1F4DC6788;
  swift_unknownObjectWeakAssign();
  v4 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v4);
  if (*((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return swift_endAccess();
}

uint64_t sub_1D22D29D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v20 - v12, &unk_1EC6DE5A0);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6DE5A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &unk_1EC6DE5A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D22D7158(&v13[v15], v7, type metadata accessor for PlaygroundImage);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D22D7228(v7, type metadata accessor for PlaygroundImage);
      sub_1D22D7228(v10, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v13, &unk_1EC6DE5A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D22D7228(v10, type metadata accessor for PlaygroundImage);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D9AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6DE5A0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D22D2CBC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v6);
  v70 = (&v66 - v7);
  v8 = sub_1D2872008();
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CuratedPrompt();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v66 - v14;
  v16 = type metadata accessor for Prompt(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, &v78);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  v69 = v6;
  v76 = v8;
  if (v20)
  {
    v21(v15, 0, 1, v16);
    sub_1D22D7158(v15, v19, type metadata accessor for Prompt);
    if (v19[32] == 1)
    {
      v72 = a1;
      v73 = v2;
      v66 = v19;
      v22 = *(v19 + 3);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v25 = *(v67 + 72);
        v26 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D22D71C0(v24, v12, type metadata accessor for CuratedPrompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1D27CCA74(0, v26[2] + 1, 1, v26);
          }

          v28 = v26[2];
          v27 = v26[3];
          if (v28 >= v27 >> 1)
          {
            v26 = sub_1D27CCA74((v27 > 1), v28 + 1, 1, v26);
          }

          *(&v79 + 1) = v10;
          v80 = sub_1D22D7678(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
          sub_1D22D71C0(v12, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
          v26[2] = v28 + 1;
          sub_1D227268C(&v78, &v26[5 * v28 + 4]);
          sub_1D22D7228(v12, type metadata accessor for CuratedPrompt);
          v24 += v25;
          --v23;
        }

        while (v23);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      sub_1D22D7228(v66, type metadata accessor for Prompt);
      v2 = v73;
      a1 = v72;
      v30 = v26[2];
      if (!v30)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    sub_1D22D7228(v19, type metadata accessor for Prompt);
  }

  else
  {
    v21(v15, 1, 1, v16);
    sub_1D22BD238(v15, &unk_1EC6E1D20);
  }

  sub_1D22D7044(a1, &v78);
  v26 = sub_1D27CCA74(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v83[5] = v26;
  sub_1D278C214(0, 0, 1, &v78);
  v30 = v26[2];
  if (v30)
  {
LABEL_14:
    v72 = a1;
    v31 = type metadata accessor for AddImageConditioningRepresentationOperation();
    v32 = *(v2 + 64);
    v33 = *(v2 + 72);
    v73 = v2;
    v34 = (v26 + 4);
    while (1)
    {
      sub_1D22D7044(v34, v83);
      sub_1D22D7044(v83, &v78);
      v36 = *(&v79 + 1);
      v37 = v80;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
      v39 = MEMORY[0x1EEE9AC00](v38);
      v41 = &v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v41, v39);
      sub_1D2870F78();
      v43 = sub_1D27FDCE0(v41, v32, 0, v31, v36, v37);
      __swift_destroy_boxed_opaque_existential_0(&v78);
      swift_beginAccess();
      sub_1D22BD1D0(v43 + 16, &v78, &qword_1EC6D9A18);
      if (*(&v79 + 1))
      {
        v44 = v81;
        sub_1D227268C(&v78, v82);
        v45 = *(v43 + 113);
        sub_1D2870F78();
        sub_1D267A600(v82, (v45 & 1) == 0, &v78);
        __swift_destroy_boxed_opaque_existential_0(v82);
        if (*(&v79 + 1))
        {
          sub_1D227268C(&v78, v77);
          sub_1D227268C(v77, &v78);
          v81 = v44;
          swift_beginAccess();
          sub_1D22D3E98(&v78, v43 + 64);
          swift_endAccess();
          goto LABEL_17;
        }

        v35 = &unk_1EC6E1D30;
      }

      else
      {
        sub_1D2870F78();
        v35 = &qword_1EC6D9A18;
      }

      sub_1D22BD238(&v78, v35);
LABEL_17:
      sub_1D27DF058(v43, v33);

      __swift_destroy_boxed_opaque_existential_0(v83);
      v34 += 40;
      if (!--v30)
      {

        a1 = v72;
        goto LABEL_26;
      }
    }
  }

LABEL_25:

LABEL_26:
  sub_1D22D7044(a1, &v78);
  v46 = v75;
  v47 = v76;
  if (swift_dynamicCast())
  {
    return (*(v68 + 8))(v46, v47);
  }

  v49 = MEMORY[0x1E69E7CC0];
  v50 = sub_1D22CA230(&OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel, sub_1D22C978C);
  v51 = v70;
  *v70 = 0;
  *(v51 + 8) = 0xE000000000000000;
  v52 = v69;
  v53 = *(v69 + 28);
  v54 = sub_1D2871318();
  (*(*(v54 - 8) + 56))(v51 + v53, 1, 1, v54);
  *(v51 + *(v52 + 32)) = v49;
  v55 = v51 + *(v52 + 36);
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = 1;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v66 - 2) = v50;
  *(&v66 - 1) = v51;
  *&v78 = v50;
  sub_1D22D7678(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v51, &qword_1EC6E1D50);
  sub_1D27A2444(v49);
  v57 = sub_1D2871798();
  v58 = v71;
  (*(*(v57 - 8) + 56))(v71, 1, 1, v57);
  sub_1D27A25E0(v58);
  if (*(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet))
  {
    v59 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v59);
    *(&v66 - 2) = v50;
    *(&v66 - 8) = 0;
    *&v78 = v50;
    sub_1D28719D8();
  }

  else
  {
    *(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 0;
  }

  if (*(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed))
  {
    v60 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v60);
    *(&v66 - 2) = v50;
    *(&v66 - 8) = 0;
    *&v78 = v50;
    sub_1D28719D8();
  }

  else
  {
    *(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 0;
  }

  if (*(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation))
  {
    v61 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v61);
    *(&v66 - 2) = v50;
    *(&v66 - 8) = 0;
    *&v78 = v50;
    sub_1D28719D8();
  }

  else
  {
    *(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 0;
  }

  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v62 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v62);
  *(&v66 - 2) = v50;
  *(&v66 - 1) = &v78;
  v83[0] = v50;
  sub_1D28719D8();

  sub_1D22BD238(&v78, &unk_1EC6E1D30);
  v63 = (v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  if (*(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8))
  {
    v64 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v64);
    *(&v66 - 3) = 0;
    *(&v66 - 2) = 0;
    *(&v66 - 4) = v50;
    *&v78 = v50;
    sub_1D28719D8();
  }

  else
  {
    *v63 = 0;
    v63[1] = 0;
  }

  swift_getKeyPath();
  *&v78 = v50;
  sub_1D28719E8();

  v65 = *(v50 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (!v65)
  {
  }

  sub_1D2870F78();
  v65(0);

  return sub_1D22A576C(v65);
}

uint64_t sub_1D22D3A68(char a1)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  if (a1)
  {
    v5 = *v4;
    v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
    swift_beginAccess();
    sub_1D22BD1D0(v5 + v6, &v15, &qword_1EC6D9A08);
    if (v16)
    {
      sub_1D227268C(&v15, v17);
LABEL_8:
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v11 + 144))(v10, v11);
      return __swift_destroy_boxed_opaque_existential_0(v17);
    }

    sub_1D22BD238(&v15, &qword_1EC6D9A08);
    result = sub_1D23B7984();
    if (*(result + 16))
    {
      sub_1D22D7044(result + 32, v17);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

  v7 = *v4;
  v8 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v7 + v8, &v15, &qword_1EC6D9A08);
  if (v16)
  {
    sub_1D227268C(&v15, v17);
  }

  else
  {
    sub_1D22BD238(&v15, &qword_1EC6D9A08);
    result = sub_1D23B7984();
    if (!*(result + 16))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    sub_1D22D7044(result + 32, v17);
  }

  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v13 + 152))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v17);
  if (*(v2 + 123))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[0] = v2;
    sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + 123) = 0;
    return sub_1D22C2EAC();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_1D22D3E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D22D3F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v90 = (&v78 - v3);
  v89 = type metadata accessor for PersonConditioningImage();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v78 - v6;
  v104 = type metadata accessor for PhotosPersonAsset();
  v95 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v96 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CharacterAsset();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v78 - v13;
  v87 = sub_1D2877B48();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D2877B68();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D2877BA8();
  v81 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A20);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v23 = sub_1D2877B38();
  v97 = *(v23 - 8);
  v98 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D28720D8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
  MEMORY[0x1EEE9AC00](CharacterPickerItem);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  sub_1D22D7044(a1, aBlock);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  if (swift_dynamicCast())
  {
    sub_1D22D7228(v34, type metadata accessor for CreateCharacterPickerItem);
    sub_1D28720C8();
    (*(v26 + 104))(v28, *MEMORY[0x1E696E3E8], v25);
    sub_1D22D7678(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8]);
    v35 = sub_1D2877F98();
    v36 = *(v26 + 8);
    v36(v28, v25);
    v36(v31, v25);
    if (v35)
    {
      v37 = v106;
      v38 = v101;
    }

    else
    {
      v37 = v106;
      v38 = v101;
      if (*(v106 + 127))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v78 - 2) = v37;
        *(&v78 - 8) = 0;
        aBlock[0] = v37;
        sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v106 + 127) = 0;
        sub_1D22C38B4(0);
      }
    }

    v44 = v97;
    if (qword_1EC6D8930 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v20, qword_1EC6E3B78);
    sub_1D22BD1D0(v45, v22, &qword_1EC6D9A20);
    v46 = v98;
    if ((*(v44 + 48))(v22, 1, v98) == 1)
    {
      sub_1D2870F78();
      sub_1D22BD238(v22, &qword_1EC6D9A20);
      if (*(v37 + 124) == 1)
      {
        *(v37 + 124) = 1;
        sub_1D22C3158(1);
      }

      else
      {
        v55 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v55);
        *(&v78 - 2) = v37;
        *(&v78 - 8) = 1;
        aBlock[0] = v37;
        sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
        sub_1D28719D8();
      }
    }

    else
    {
      v47 = v91;
      (*(v44 + 32))(v91, v22, v46);
      sub_1D22BCFD0(0, &qword_1ED89CD50);
      sub_1D2870F78();
      v101 = sub_1D2878AB8();
      sub_1D2877B88();
      v48 = v80;
      MEMORY[0x1D38A0630](v17, v47);
      v106 = *(v81 + 8);
      (v106)(v17, v92);
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1D22D5E50;
      *(v49 + 24) = v37;
      v110 = sub_1D22D79AC;
      v111 = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23DFBA8;
      v109 = &block_descriptor_121;
      v50 = _Block_copy(aBlock);
      sub_1D2870F78();
      v51 = v82;
      sub_1D2877B58();
      v107 = MEMORY[0x1E69E7CC0];
      sub_1D22D7678(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
      sub_1D22D5EFC();
      v52 = v84;
      v53 = v87;
      sub_1D2879088();
      v54 = v101;
      MEMORY[0x1D38A1510](v48, v51, v52, v50);
      _Block_release(v50);

      (*(v86 + 8))(v52, v53);
      (*(v83 + 8))(v51, v85);
      (v106)(v48, v92);
      (*(v97 + 8))(v91, v98);
    }

    v39 = v105;
    v41 = v102;
    v42 = v100;
    v56 = v93;
    (*(v38 + 56))(v93, 1, 1, v102);
    sub_1D22CACAC(v56);
    sub_1D22BD238(v56, &unk_1EC6DDDA0);
    v40 = v103;
  }

  else
  {
    v39 = v105;
    v41 = v102;
    v40 = v103;
    v42 = v100;
    v38 = v101;
  }

  sub_1D22D7044(v39, aBlock);
  v57 = swift_dynamicCast();
  v58 = *(v38 + 56);
  v59 = v104;
  if (v57)
  {
    v58(v42, 0, 1, v41);
    v60 = v94;
    sub_1D22D7158(v42, v94, type metadata accessor for CharacterAsset);
    v109 = v41;
    v110 = sub_1D22D7678(&qword_1EC6D9A68, type metadata accessor for CharacterAsset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
    sub_1D22D71C0(v60, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
    sub_1D22CE9A0(aBlock);
    v62 = type metadata accessor for CharacterAsset;
    goto LABEL_19;
  }

  v58(v42, 1, 1, v41);
  sub_1D22BD238(v42, &unk_1EC6DDDA0);
  sub_1D22D7044(v39, aBlock);
  v66 = swift_dynamicCast();
  v67 = *(v95 + 56);
  if (!v66)
  {
    v67(v40, 1, 1, v59);
    sub_1D22BD238(v40, &unk_1EC6DDDC0);
    sub_1D22D7044(v39, aBlock);
    v72 = v90;
    v73 = v89;
    v74 = swift_dynamicCast();
    v75 = *(v88 + 56);
    if ((v74 & 1) == 0)
    {
      v75(v72, 1, 1, v73);
      v63 = &qword_1EC6D9A40;
      v64 = v72;
      return sub_1D22BD238(v64, v63);
    }

    v75(v72, 0, 1, v73);
    v76 = v72;
    v60 = v79;
    sub_1D22D7158(v76, v79, type metadata accessor for PersonConditioningImage);
    v109 = v73;
    v110 = sub_1D22D7678(&qword_1EC6D9A50, type metadata accessor for PersonConditioningImage);
    v77 = __swift_allocate_boxed_opaque_existential_1(aBlock);
    sub_1D22D71C0(v60, v77, type metadata accessor for PersonConditioningImage);
    sub_1D22CE9A0(aBlock);
    v62 = type metadata accessor for PersonConditioningImage;
LABEL_19:
    sub_1D22D7228(v60, v62);
    v63 = &qword_1EC6D9A58;
    v64 = aBlock;
    return sub_1D22BD238(v64, v63);
  }

  v67(v40, 0, 1, v59);
  v68 = v96;
  sub_1D22D7158(v40, v96, type metadata accessor for PhotosPersonAsset);
  v69 = sub_1D2613014(*(v68 + 16), *(v68 + 24));
  if (v69)
  {
    v70 = *(v69 + 16);

    if (v70)
    {
      v109 = v59;
      v110 = sub_1D22D7678(&qword_1EC6D9A60, type metadata accessor for PhotosPersonAsset);
      v71 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      v60 = v96;
      sub_1D22D71C0(v96, v71, type metadata accessor for PhotosPersonAsset);
      sub_1D22CE9A0(aBlock);
      v62 = type metadata accessor for PhotosPersonAsset;
      goto LABEL_19;
    }
  }

  return sub_1D22D7228(v96, type metadata accessor for PhotosPersonAsset);
}

uint64_t sub_1D22D5048(void (*a1)(void, void))
{
  v2 = v1;
  v83 = a1;
  v81 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v62 - v4;
  v5 = type metadata accessor for PhotosPersonAsset();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D2877B48();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D2877B68();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D2877BA8();
  v65 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v62 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A20);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v62 - v12;
  v82 = sub_1D2877B38();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for CharacterAsset();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D28720D8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  sub_1D28720C8();
  (*(v23 + 104))(v25, *MEMORY[0x1E696E3E8], v22);
  sub_1D22D7678(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8]);
  v29 = sub_1D2877F98();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  if (v29)
  {
    v31 = v2;
  }

  else
  {
    v31 = v2;
    if (v2[127])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v62 - 2) = v2;
      *(&v62 - 8) = 0;
      aBlock[0] = v2;
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      v33 = v81;
      sub_1D28719D8();
      v81 = v33;
    }

    else
    {
      v2[127] = 0;
      sub_1D22C38B4(0);
    }
  }

  v34 = v83;
  sub_1D22D7044(v83, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v35 = swift_dynamicCast();
  v36 = *(v20 + 56);
  if (v35)
  {
    v36(v18, 0, 1, v19);
    v37 = v84;
    sub_1D22D7158(v18, v84, type metadata accessor for CharacterAsset);
    v38 = v72;
    sub_1D22D71C0(v37, v72, type metadata accessor for CharacterAsset);
    v36(v38, 0, 1, v19);
    sub_1D22CACAC(v38);
    sub_1D22BD238(v38, &unk_1EC6DDDA0);
    if (qword_1EC6D8930 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v73, qword_1EC6E3B78);
    v40 = v74;
    sub_1D22BD1D0(v39, v74, &qword_1EC6D9A20);
    v41 = v79;
    v42 = v82;
    if ((*(v79 + 48))(v40, 1, v82) == 1)
    {
      sub_1D2870F78();
      sub_1D22BD238(v40, &qword_1EC6D9A20);
      if (*(v31 + 124) == 1)
      {
        *(v31 + 124) = 1;
        sub_1D22C3158(1);

        v43 = type metadata accessor for CharacterAsset;
        v44 = v84;
        return sub_1D22D7228(v44, v43);
      }

      v61 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v61);
      *(&v62 - 2) = v31;
      *(&v62 - 8) = 1;
      aBlock[0] = v31;
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719D8();

      return sub_1D22D7228(v84, type metadata accessor for CharacterAsset);
    }

    else
    {
      v51 = v78;
      (*(v41 + 32))(v78, v40, v42);
      sub_1D22BCFD0(0, &qword_1ED89CD50);
      v52 = v41;
      sub_1D2870F78();
      v81 = sub_1D2878AB8();
      v53 = v62;
      sub_1D2877B88();
      v54 = v64;
      MEMORY[0x1D38A0630](v53, v51);
      v83 = *(v65 + 8);
      v83(v53, v80);
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1D22D5E50;
      *(v55 + 24) = v31;
      aBlock[4] = sub_1D22D5EBC;
      aBlock[5] = v55;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23DFBA8;
      aBlock[3] = &block_descriptor_0;
      v56 = _Block_copy(aBlock);
      sub_1D2870F78();
      v57 = v66;
      sub_1D2877B58();
      v85 = MEMORY[0x1E69E7CC0];
      sub_1D22D7678(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
      sub_1D22D5EFC();
      v58 = v68;
      v59 = v71;
      sub_1D2879088();
      v60 = v81;
      MEMORY[0x1D38A1510](v54, v57, v58, v56);
      _Block_release(v56);

      (*(v70 + 8))(v58, v59);
      (*(v67 + 8))(v57, v69);
      v83(v54, v80);
      (*(v52 + 8))(v78, v82);
      sub_1D22D7228(v84, type metadata accessor for CharacterAsset);
    }
  }

  else
  {
    v36(v18, 1, 1, v19);
    sub_1D22BD238(v18, &unk_1EC6DDDA0);
    sub_1D22D7044(v34, aBlock);
    v45 = v77;
    v46 = v76;
    v47 = swift_dynamicCast();
    v48 = *(v75 + 56);
    if (v47)
    {
      v48(v45, 0, 1, v46);
      v49 = v63;
      sub_1D22D7158(v45, v63, type metadata accessor for PhotosPersonAsset);
      swift_getKeyPath();
      aBlock[0] = v31;
      sub_1D22D7678(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2460484(v31, v49);
        swift_unknownObjectRelease();
      }

      v43 = type metadata accessor for PhotosPersonAsset;
      v44 = v49;
      return sub_1D22D7228(v44, v43);
    }

    v48(v45, 1, 1, v46);
    return sub_1D22BD238(v45, &unk_1EC6DDDC0);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D22D5E80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 124);
  *(v1 + 124) = *(v0 + 24);
  return sub_1D22C3158(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D22D5EFC()
{
  result = qword_1ED89CEB0;
  if (!qword_1ED89CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DAE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CEB0);
  }

  return result;
}

uint64_t sub_1D22D5F60()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 127);
  *(v1 + 127) = *(v0 + 24);
  return sub_1D22C38B4(v2);
}

uint64_t sub_1D22D601C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 126);
  *(v1 + 126) = *(v0 + 24);
  return sub_1D22C3594(v2);
}

uint64_t sub_1D22D60F0(_OWORD *a1)
{
  v2 = sub_1D23C6DDC();
  v3 = a1[1];
  v28 = *a1;
  v29 = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v30 = a1[2];
  v31 = v4;
  v7 = v28;
  *v25 = v6;
  *&v25[16] = v5;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  sub_1D22D63B0(&v28, v32);
  sub_1D2870F68();
  sub_1D255EA98(a1, v25);

  v32[0] = *v25;
  v32[1] = *&v25[16];
  v32[2] = v26;
  v32[3] = v27;
  sub_1D22D640C(v32);
  v9 = sub_1D23C6DDC();
  v10 = 0xE000000000000000;
  *v25 = 0;
  *&v25[8] = 0xE000000000000000;
  sub_1D2879168();
  v24 = *v25;
  MEMORY[0x1D38A0C50](0xD000000000000046, 0x80000001D28AFAE0);
  if (*(&v7 + 1))
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (*(&v7 + 1))
  {
    v12 = *(&v7 + 1);
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = *(&v29 + 1);
  v14 = v29;
  MEMORY[0x1D38A0C50](v11, v12);

  MEMORY[0x1D38A0C50](0x614679656B202D20, 0xEF203A64692E6563);
  if (*(a1 + 4))
  {
    *v25 = *(a1 + 4);
    *&v25[8] = *(a1 + 40);
    v15 = sub_1D24FBD9C();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v10 = v16;
    }

    *v25 = v14;
    *&v25[8] = v13;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v17, v10);

    v13 = *&v25[8];
    v14 = *v25;
  }

  else
  {
    sub_1D2870F68();
  }

  v18 = type metadata accessor for PhotosPersonAsset();
  v19 = (a1 + *(v18 + 20));
  v20 = *v19;
  v21 = v19[1];
  *v25 = v14;
  *&v25[8] = v13;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v20, v21);

  MEMORY[0x1D38A0C50](*v25, *&v25[8]);

  sub_1D255B4E8(0, v24, *(&v24 + 1));

  *&v25[24] = v18;
  *&v26 = sub_1D22D7678(&qword_1EC6D9A60, type metadata accessor for PhotosPersonAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1D22D71C0(a1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  sub_1D22CE9A0(v25);
  sub_1D22BD238(v25, &qword_1EC6D9A58);
  return sub_1D22C0704(0);
}